#' Request data from the CDC Wonder API
#'
#' calls the \href{https://wonder.cdc.gov}{CDC Wonder API} and returns a tidy data frame (tibble)
#'
#' @param agree Must be set to TRUE to actively agree to the CDC terms (default is FALSE). To see the terms for the particular dataset click on that dataset here: \url{https://wonder.cdc.gov}. \href{https://wonder.cdc.gov/ucd-icd10.html}{sample}
#' @param db Indicate the database, either by label, name, or code.  To see the complete list of what's available, use \code{View(dbnamelookup)}
#'
#' @param querylist The query list supplied must be a list of lists of names and values. By default it is combined with the default query list for that database. To supply a full list and bypass the default query list, set \code{add} to \code{TRUE}. See here for instructions on how to create this list.
#'
#' @param add If \code{TRUE} (default) \code{querylist} is combined with the default query list. Set to \code{FALSE} to use \code{querylist} as a standalone list of query parameters.
#'
#' @examples
#' mylist <- list(
#'   list("Group Results By", "Race"),
#'   list("Tobacco Use", "1")    # yes
#' )
#'
#' mydata <- getData(TRUE, "D66", mylist)
#' mydata
#'
#' @section References
#' Inspired by this script from the \code{wondr} package, but provides more user-friendly options and better table display: /url{https://github.com/hrbrmstr/wondr/blob/master/README.md}
#'

#' @export

getData <- function(agree = FALSE, db = "D66", querylist = NULL,
                    add = TRUE) {
    index <- purrr::map(dbnamelookup, ~which(.x == db)) %>% unlist()
    if (length(index) == 0) stop ("Database not recognized.")
    dbcode <- dbnamelookup$dbcode[index]
    if (!agree) {
        stop("You must agree to CDC terms")
    } else {
        agreelist <- list(parameter = list(
            name = "accept_datause_restrictions",
            value = "true"
        ))
    }
    if (add == TRUE) {
        default_list_name <- paste0(dbcode, "querydefaults")
        default_list <- get(default_list_name)
        if(is.null(querylist)) {
            querylist <- default_list
        } else {
            querylist <- label_to_code(querylist, dbcode)
            querylist <- combine_lists(default_list,
                                       querylist)
        }
    } else {
        if (is.null(querylist)) stop("if add == F provide a query list")
    }
    querylist <- c(agreelist, querylist)
    wondr::make_query(querylist, dbcode) %>%
        make_query_table()
}

getrows <- function(thisrow, numcol) {
    cells <- thisrow %>% rvest::xml_nodes("c")
    # assuming all the labels ("l") are to the left of all
    # the values ("v")
    l <- cells %>% xml2::xml_attr("l") %>% na.omit()
    v <- vector()
    for (i in seq_along(cells)) {
        v <- c(v, cells[i] %>% xml2::xml_attr("v"))
        if (xml2::xml_length(cells[i]) > 0) {
            v <- c(v, cells[i] %>% xml2::xml_child() %>%
                       xml2::xml_attr("v"))
        }
    }

    v <- v %>% na.omit()
    if (length(v) == 0) stop()

    # divide % by 100
#    v <- as.character(round(((grepl("\\%", v)*-.99 + 1) *
#                                 readr::parse_number(v)), 3))

    v[grepl("\\%", v)] <- as.numeric(gsub("\\%", "", v[grepl("\\%", v)]))/100
    len <- length(c(l, v))
    return(c(rep(NA, numcol - len), l, v))
}

# tidyr::fill might do the same thing
replaceNAs <- function (x) {
    for (i in seq_along(rownames(x))) {
        for (j in seq_along(colnames(x))) {
            if (is.na(x[i,j])) x[i,j] <- x[i-1, j]
        }
    }
    return(x)
}

conditional_as.numeric <- function(.x) {
    if(sum(nchar(stringr::str_replace_all(.x, "[0-9|.]", ""))) == 0) {
        as.numeric(.x)
    } else {
        .x
    }
}

make_query_table <- function(query_result) {
    allrows <- query_result %>%
        xml2::xml_find_all("//r")

    # remove total rows
    dt <- vector()
    for (i in seq_along(allrows)) {
        ifelse (allrows[i] %>% rvest::xml_nodes("c") %>%
                    xml2::xml_has_attr("dt") %>% sum() > 0, dt[i] <- TRUE,
                dt[i] <- FALSE)
    }
    allrows <- allrows[!dt]

    firstrow <- allrows[1] %>% rvest::xml_nodes("c")
    numcol <-  length(firstrow) +
        length(firstrow %>% xml2::xml_children()) # standard deviation
    # measures are children
    numl <- firstrow %>% xml2::xml_attr("l") %>%
        na.omit() %>% length()

    querytable <- do.call(rbind, purrr::map(allrows, getrows,
                                     numcol)) %>%
        as.data.frame(stringsAsFactors = FALSE) %>%
        replaceNAs() %>%
        purrr::map_df(conditional_as.numeric)

    # get column names (byvariables, then measures)

    dbcode <- query_result %>% rvest::xml_node("dataset") %>%
        xml2::xml_attr("code")

    variablecodes <- query_result %>% rvest::xml_node("dataset") %>%
        xml2::xml_find_all("variable[@code] | variable/hier-level[@code]") %>%
        xml2::xml_attr("code")

    variablelabels <- query_result %>% rvest::xml_node("dataset") %>%
        xml2::xml_find_all("variable[@code] | variable/hier-level[@code]") %>%
        xml2::xml_attr("label")

    measurecodes <- query_result %>% rvest::xml_node("dataset") %>%
        rvest::xml_nodes("measure") %>% xml2::xml_attr("code")

    measurelabels <- query_result %>% rvest::xml_node("dataset") %>%
        rvest::xml_nodes("measure") %>% xml2::xml_attr("label")

    lookup <- data.frame(code = c(variablecodes, measurecodes),
                         label = c(variablelabels, measurelabels),
                         stringsAsFactors = FALSE)

    byvariables <- query_result %>%
        rvest::xml_node("byvariables") %>%
        rvest::xml_nodes("variable") %>%
        xml2::xml_attr("code")

    measures <- query_result %>%
        rvest::xml_node("measure-selections") %>%
        rvest::xml_nodes("measure") %>%
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
    tibble(name, value)
}

label_to_code <- function(list_with_labels, dbcode) {
    list_with_codes <- list_with_labels
    filename <- paste0(dbcode, "labellookup")
    lookup <- get(filename)
    for (i in seq_along(list_with_labels)) {
        nameindex <- which(lookup$label == list_with_labels[[i]][[1]])[1]
        if (length(nameindex) > 0) {
            if (!is.na(nameindex)) {
                code <- lookup$code[nameindex]
                if (substring(code, 1, 1) == "D") {
                    code <- paste0("V_", code)
                }
                list_with_codes[[i]][[1]] <- code
            }
        }

        valueindex <- which(lookup$label ==
                                list_with_labels[[i]][[2]])
        if (length(valueindex > 0)) {
            if (!is.na(valueindex)) {
            list_with_codes[[i]][[2]] <- lookup$code[valueindex]
            }
        }
    }
    list_with_codes
}

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
            combined_list <- c(combined_list, list(list2[[i]]))
        }
    }
    combined_list
}



