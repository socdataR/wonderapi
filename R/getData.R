#' Request data from the CDC Wonder API
#'
#' calls the \href{https://wonder.cdc.gov}{CDC Wonder API} and returns a tidy data frame (tibble)
#'
#' @param db Indicate the database, either by label, name, or code.  To see the complete list of what's available, use `show_databases()`
#'
#' @param querylist The query list supplied must be a list of lists of names and values. By default it is combined with the default query list for that database. To supply a full list and bypass the default query list, set \code{add} to \code{TRUE}. See here for instructions on how to create this list.
#'
#' @param add If \code{TRUE} (default) \code{querylist} is combined with the default query list. Set to \code{FALSE} to use \code{querylist} as a standalone list of query parameters.
#'
#' @param save If \code{TRUE} the query list will be saved, defaults to \code{FALSE}
#'
#' @param fn filename for saved query list, defaults to \code{query.xml}.
#'
#' @param agree Must be set to TRUE to agree to the CDC terms (default is TRUE). To see the terms for the particular dataset click on that dataset here: \url{https://wonder.cdc.gov}. \href{https://wonder.cdc.gov/ucd-icd10.html}{sample}
#'
#' @details
#'
#' Queries for mortality and births statistics from the National Vital Statistics System cannot limit or group results by any location field, such as Region, Division, State or County, or Urbanization (urbanization categories map to specific geographic counties).
#'
#' For example, in the D76 online database for Detailed Mortality 1999-2013, the location fields are D76.V9, D76.V10 and D76.V27, and the urbanization fields are D76.V11 and D76.V19. These 'sub-national" data fields cannot be grouped by or limited via the API, although these fields are available in the web application.
#'
#' See \url{https://wonder.cdc.gov/wonder/help/WONDER-API.html} for more information.
#'
#' @examples
#' mylist <- list(
#'   list("Group Results By", "Race"),
#'   list("Tobacco Use", "1")    # yes
#' )
#'
#' mydata <- getData("D66", mylist)
#' mydata
#'
#' @section References
#' Inspired by this script from the \code{wondr} package, but provides more user-friendly options and better table display: /url{https://github.com/hrbrmstr/wondr/blob/master/README.md}
#'

#' @export

getData <- function(db = "D66", querylist = NULL, add = TRUE, save = FALSE, fn = "query.xml", agree = TRUE) {
    # PREPARE QUERY
    index <- purrr::map(dbnamelookup, ~which(.x == db)) %>% unlist()
    if (length(index) == 0) stop ("Database not recognized.")
    dbcode <- dbnamelookup$dbcode[index]
    if (!agree) stop("You must agree to CDC terms")
    if (add == TRUE) {
        default_list_name <- paste0(dbcode, "querydefaults")
        index <- which(names(query_defaults) == default_list_name)
        default_list <- query_defaults[[index]]
        if(is.null(querylist)) {
            querylist <- default_list
        } else {
            queryparams <- querylist %>%
                purrr::map(~.x[[1]]) %>%
                unlist() %>%
                unique()
            queryargs <- querylist %>%
                purrr::map(~.x[[2]]) %>%
                unlist() %>%
                unique()
            if(any(is.element(
                queryparams,
                c("O_location", "VM_D76.M6_D76.V10", "V_D76.V9", "F_D76.V9", "V_D76.V10", "F_D76.V10", "V_D76.V27", "F_D76.V27", "O_urban", "V_D76.V19", "V_D76.V11")))) {
                stop("It is not possible to limit results by a location field or urbanization via the WONDER API, although it is in the web application.\nSee https://wonder.cdc.gov/wonder/help/WONDER-API.html for more information.")
            }

            if(any(is.element(
                queryargs,
                c("Census Region", "Census Division", "HHS Region", "State", "County", "2013 Urbanization", "2006 Urbanization", "D76.V10-level1", "D76.V10-level2", "D76.V27-level1", "D76.V9-level1", "D76.V9-level2", "D76.V19", "D76.V11")))) {
                stop("It is not possible to limit results by a location field or urbanization via the WONDER API, although it is in the web application.\nSee https://wonder.cdc.gov/wonder/help/WONDER-API.html for more information.")
                }
            if(any(is.element(
                queryargs,
                "D176.V24"
            ))) {
                stop ("It is no longer possible to limit results by Weekday for database D176 via the WONDER API, although it is in the web application. \nSee https://wonder.cdc.gov/wonder/help/WONDER-API.html for more information.")
            }
            querylist <- label_to_code(querylist, dbcode)
            querylist <- combine_lists(default_list,
                                       querylist)
        }
    } else {
        if (is.null(querylist)) stop("if add == F provide a query list")
    }

    # SEND QUERY

 # This section copied from https://github.com/hrbrmstr/wondr/blob/master/R/wondr.r
    query <- XML::saveXML(list_to_xml(querylist, "request-parameters"),
                          indent=FALSE,
                          prefix='<?xml version="1.0" encoding="utf-8"?>\n')
    if (save) writeLines(query, fn)
    res <- httr::POST(sprintf("https://wonder.cdc.gov/controller/datarequest/%s", dbcode), body=list(request_xml=query), encode = "form")
    out <- httr::content(res, as="text", encoding = "utf-8")
    if (httr::status_code(res) != 200) {
        cat("Message from query:\n")
        xml2::read_xml(out) %>%
            rvest::html_elements("message") %>%
            rvest::html_text() %>%
            cat()
        cat("\n")
        httr::stop_for_status(res)
    } else{
        xml2::read_xml(out) %>% make_query_table()
    }
}

# PARSE RESPONSE

# RESPONSE
getrows <- function(thisrow, numcol) {
    cells <- thisrow %>% rvest::html_elements("c")
    # assuming all the labels ("l") are to the left of all
    # the values ("v")
    l <- cells %>% xml2::xml_attr("l") %>% stats::na.omit()
    v <- vector()
    for (i in seq_along(cells)) {
        v <- c(v, cells[i] %>% xml2::xml_attr("v"))
        if (xml2::xml_length(cells[i]) > 0) {
            v <- c(v, cells[i] %>% xml2::xml_child() %>%
                       xml2::xml_attr("v"))
        }
    }

    v <- v %>% stats::na.omit()
    if (length(v) == 0) stop("length(v) = 0")
    # deal with percents -- need to take out % and divide by 100
    v[grepl("\\%", v)] <- as.numeric(gsub("\\%", "", v[grepl("\\%", v)]))/100
    len <- length(c(l, v))
    return(c(rep(NA, numcol - len), l, v))
}

# RESPONSE
# tidyr::fill might do the same thing
replaceNAs <- function (x) {
    for (i in seq_along(rownames(x))) {
        for (j in seq_along(colnames(x))) {
            if (is.na(x[i,j])) x[i,j] <- x[i-1, j]
        }
    }
    return(x)
}

# RESPONSE
conditional_as.numeric <- function(.x) {
    if(sum(nchar(stringr::str_replace_all(.x, "[0-9|.|,]", ""))) == 0) {
        readr::parse_number(.x)
    } else {
        .x
    }
}

# RESPONSE
make_query_table <- function(query_result) {
    allrows <- query_result %>%
        xml2::xml_find_all("//r")

    # remove total rows
    dt <- vector()
    for (i in seq_along(allrows)) {
        ifelse (allrows[i] %>% rvest::html_elements("c") %>%
                    xml2::xml_has_attr("dt") %>% sum() > 0, dt[i] <- TRUE,
                dt[i] <- FALSE)
    }
    allrows <- allrows[!dt]

    firstrow <- allrows[1] %>% rvest::html_elements("c")
    numcol <-  length(firstrow) +
        length(firstrow %>% xml2::xml_children()) # standard deviation
    # measures are children
    numl <- firstrow %>% xml2::xml_attr("l") %>%
        stats::na.omit() %>% length()

    querytable <- do.call(rbind, purrr::map(allrows, getrows,
                                     numcol)) %>%
        as.data.frame(stringsAsFactors = FALSE) %>%
        replaceNAs() %>%
        purrr::map_df(conditional_as.numeric)

    dbcode <- query_result %>% rvest::html_element("dataset") %>%
        xml2::xml_attr("code")

# create lookup table from query request (needed for column names)
    variablecodes <- query_result %>% rvest::html_element("dataset") %>%
        xml2::xml_find_all("variable[@code] | variable/hier-level[@code]") %>%
        xml2::xml_attr("code")

    variablelabels <- query_result %>% rvest::html_element("dataset") %>%
        xml2::xml_find_all("variable[@code] | variable/hier-level[@code]") %>%
        xml2::xml_attr("label")

    measurecodes <- query_result %>% rvest::html_element("dataset") %>%
        rvest::html_elements("measure") %>% xml2::xml_attr("code")

    measurelabels <- query_result %>% rvest::html_element("dataset") %>%
        rvest::html_elements("measure") %>% xml2::xml_attr("label")

    lookup <- data.frame(code = c(variablecodes, measurecodes),
                         label = c(variablelabels, measurelabels),
                         stringsAsFactors = FALSE)

# get column names (byvariables, then measures)

    byvariables <- query_result %>%
        rvest::html_element("byvariables") %>%
        rvest::html_elements("variable") %>%
        xml2::xml_attr("code")

    measures <- query_result %>%
        rvest::html_element("measure-selections") %>%
        rvest::html_elements("measure") %>%
        xml2::xml_attr("code")

    index <- c(byvariables, measures) %>%
        purrr::map_int(~which(.x == lookup$code)[1])
    table_col <- lookup$label[index]
    colnames(querytable) <- table_col
    return(querytable)
}


# list_2_tib is helpful for testing, not used by getData()
list_2_tib <- function(listof2) {
    name <- listof2 %>% purrr::map(~.x[[1]]) %>% unlist()
    value <- listof2 %>% purrr::map(~.x[[2]]) %>% unlist()
    tibble::tibble(name, value)
}

# PREPARE
# converts human readable names and (some) values to CDC variable names before sending query
label_to_code <- function(list_with_labels, dbcode) {
    list_with_codes <- list_with_labels
    label_list_name <- paste0(dbcode, "labellookup")
    index <- which(names(label_list) == label_list_name)
    lookup <- label_list[[index]]
    # Remove stuff in parentheses
    lookup$label <- gsub("\\s*\\([^\\)]+\\)", "", lookup$label)
    # Remove weird stuff with some O_ fields (can't remove in the version used by make_codebook_vignette or everything gets screwed up)
    lookup$code <- stringr::str_remove_all(lookup$code, "(?<=[a-z])D.*$")

    for (i in seq_along(list_with_labels)) {
        # taking first one in case there are multiple matches
        # (if no matches, [1] has the effect of turning nameindex to NA)
        nameindex <- which(lookup$label == list_with_labels[[i]][[1]])[1]
        if (!is.na(nameindex)) {   # label found for parameter name
                code <- lookup$code[nameindex]
                precode <- substring(code, 1, 1)
                switch(precode,
                       D = code <- paste0("V_", code),
                       M = list_with_codes[[i]][[2]] <-
                           paste0(dbcode, ".", gsub("_", "", code))
                )
            list_with_codes[[i]][[1]] <- code
        } else {  # label not found
            # Starting V_ listed in codebook removed (not sure why there's an inconsistency between label_list and codebook)
            if (substr(list_with_labels[[i]][[1]], 1, 2) == "V_") list_with_labels[[i]][[1]] <- stringr::str_remove(list_with_labels[[i]][[1]], "V_")
            if (!list_with_labels[[i]][[1]] %in% lookup$code) {
                # ... and code not found --> potential problem
                mymessage <- paste0("Couldn't find: \"",
                                    list_with_labels[[i]][[1]],"\"",
                                    " but including anyway.")
               message(mymessage)
            } else { # code found
                code <- list_with_labels[[i]][[1]]
                precode <- substring(code, 1, 1)
                if (precode == "M") list_with_codes[[i]][[2]] <-
                    paste0(dbcode, ".", gsub("_", "", code))
            } # 2nd else
        } # 1st else

        valueindex <- which(lookup$label ==
                                list_with_labels[[i]][[2]])
        if (length(valueindex > 0)) {
            valueindex <- valueindex[which.min(nchar(lookup$code[valueindex]))]
            list_with_codes[[i]][[2]] <- lookup$code[valueindex]
        }
    } # for loop
    list_with_codes
} # end of function


combine_lists <- function(list1, list2) {

    combined_list <- list1
    param_names1 <- list1 %>% purrr::map(~.x[[1]]) %>%
        unlist()
    param_names2 <- list2 %>% purrr::map(~.x[[1]]) %>%
        unlist()
    for (i in seq_along(param_names2)) {
        index <- which(param_names1 == param_names2[i])[1]
        if (!is.na(index)) {
            combined_list[[index]][[2]] <- list2[[i]][[2]]
        } else {
            new_element <- list(parameter = list(name = list2[[i]][[1]],
                                                 value = list2[[i]][[2]]))
            combined_list <- c(combined_list, new_element)
        } # if
    } # for loop
    combined_list
} # end of function
