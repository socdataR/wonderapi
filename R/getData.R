# query
# small change
#' makequerytable() takes as input query_result (XML output file of CDC wonder query request produced by wondr package) and returns a tibble

#' It is intended to replace the script with the same purpose provided in the wondr package readme file
#' https://github.com/hrbrmstr/wondr
#' xml_find_all(query_result, ".//response/data-table/r") %>%
#' map_df(function(row) {
#'     xml_find_all(row, ".//c") %>%
#'         xml_attrs() %>%
#'         as.list() %>%
#'         setNames(sprintf("V%d", 1:length(.))) %>%
#'         as.data.frame(stringsAsFactors=FALSE)
#' }) %>%
#'     tibble::as.tibble()

#' The above script works for the example since each row of the table has the same number of columns
#' (See the <data-table ...> node here:
#' https://wonder.cdc.gov/wonder/help/API-Examples/D76_Example2-resp.xml

#' This function is designed to work for query results with varying number of columns per row
#' @export

getrows <- function(thisrow, numcol) {
    cells <- thisrow %>% xml_nodes("c")
    # assuming all the labels ("l") are to the left of all
    # the values ("v")
    l <- cells %>% xml_attr("l") %>% na.omit()
    v <- vector()
    for (i in seq_along(cells)) {
        v <- c(v, cells[i] %>% xml_attr("v"))
        if (xml_length(cells[i]) > 0) {
            v <- c(v, cells[i] %>% xml_child() %>%
                       xml_attr("v"))
        }
    }

    v <- v %>% na.omit()
    if (length(v) == 0) stop()

    # convert to numeric, divide % by 100
    v <- as.character(round(((grepl("\\%", v)*-.99 + 1) *
                                 parse_number(v)), 3))
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
    #    ifelse(sum(nchar(str_replace_all(.x, "[0-9|.]", ""))) == 0,
    #           as.numeric(.x), .x)
    if(sum(nchar(str_replace_all(.x, "[0-9|.]", ""))) == 0) {
        as.numeric(.x)
    } else {
        .x
    }
}

make_query_table <- function(query_result) {
    allrows <- query_result %>%
        xml_find_all("//r")

    # remove total rows
    dt <- vector()
    for (i in seq_along(allrows)) {
        ifelse (allrows[i] %>% xml_nodes("c") %>%
                    xml_has_attr("dt") %>% sum() > 0, dt[i] <- TRUE,
                dt[i] <- FALSE)
    }
    allrows <- allrows[!dt]

    firstrow <- allrows[1] %>% xml_nodes("c")
    numcol <-  length(firstrow) +
        length(firstrow %>% xml_children()) # standard deviation
    # measures are children
    numl <- firstrow %>% xml_attr("l") %>%
        na.omit() %>% length()

    querytable <- do.call(rbind, map(allrows, getrows,
                                     numcol)) %>%
        as.data.frame(stringsAsFactors = FALSE) %>%
        replaceNAs() %>%
        map_df(conditional_as.numeric)

    # get column names (byvariables, then measures)

    dbcode <- query_result %>% xml_node("dataset") %>%
        xml_attr("code")

    variablecodes <- query_result %>% xml_node("dataset") %>%
        xml_find_all("variable[@code]") %>% xml_attr("code")

    variablelabels <- query_result %>% xml_node("dataset") %>%
        xml_find_all("variable[@code]") %>% xml_attr("label")

    measurecodes <- query_result %>% xml_node("dataset") %>%
        xml_nodes("measure") %>% xml_attr("code")

    measurelabels <- query_result %>% xml_node("dataset") %>%
        xml_nodes("measure") %>% xml_attr("label")

    lookup <- data.frame(code = c(variablecodes, measurecodes),
                         label = c(variablelabels, measurelabels),
                         stringsAsFactors = FALSE)

    byvariables <- query_result %>%
        xml_node("byvariables") %>%
        xml_nodes("variable") %>%
        xml_attr("code")

    measures <- query_result %>%
        xml_node("measure-selections") %>%
        xml_nodes("measure") %>%
        xml_attr("code")

    index <- c(byvariables, measures) %>%
        map_int(~which(.x == lookup$code)[1])
    table_col <- lookup$label[index]
    colnames(querytable) <- table_col
    return(querytable)
}


# list_2_tib is helpful for testing, not used by getData()
list_2_tib <- function(listof2) {
    name <- listof2 %>% map(~.x[[1]]) %>% unlist()
    value <- listof2 %>% map(~.x[[2]]) %>% unlist()
    tibble(name, value)
}

label_to_code <- function(list_with_labels, dbcode) {
    list_with_codes <- list_with_labels
    lookup <- read_csv(paste0("data/", dbcode,
                              "labellookup.csv"))
    for (i in seq_along(list_with_labels)) {
        nameindex <- which(lookup$label == list_with_labels[[i]][[1]])
        if (length(nameindex) > 0) {
            code <- lookup$code[nameindex]
            if (substring(code, 1, 1) == "D") {
                code <- paste0("V_", code)
            }
            list_with_codes[[i]][[1]] <- code
        }
        valueindex <- which(lookup$label ==
                                list_with_labels[[i]][[2]])
        if (length(valueindex) > 0) {
            list_with_codes[[i]][[2]] <- lookup$code[valueindex]
        }
    }
    list_with_codes
}

combine_lists <- function(list1, list2) {

    combined_list <- list1
    param_names1 <- list1 %>% map(~.x[[1]]) %>% unlist()
    param_names2 <- list2 %>% map(~.x[[1]]) %>% unlist()
    for (i in seq_along(param_names2)) {
        index <- which(param_names1 == param_names2[i])
        if (length(index) > 0) {
            combined_list[[index]][[2]] <- list2[[i]][[2]]
        }
    }
    combined_list
}



getData <- function(agree = FALSE, dbcode = "D66", querylist = NULL,
                    add = TRUE) {
    if (!agree) {
        stop("You must agree to CDC terms")
        } else {
        agreelist <- list(parameter = list(
            name = "accept_datause_restrictions",
            value = "true"
            ))
    }
    if (add == TRUE) {
        load(paste0("data/", dbcode, "querydefaults.RData"))
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
    make_query(querylist, dbcode) %>% make_query_table()
}

