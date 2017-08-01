# makequerytable() takes as input query_result (XML output file of CDC wonder query request produced by wondr package) and returns a tibble

# It is intended to replace the script with the same purpose provided in the wondr package readme file
# https://github.com/hrbrmstr/wondr
# xml_find_all(query_result, ".//response/data-table/r") %>%
# map_df(function(row) {
#     xml_find_all(row, ".//c") %>%
#         xml_attrs() %>%
#         as.list() %>%
#         setNames(sprintf("V%d", 1:length(.))) %>%
#         as.data.frame(stringsAsFactors=FALSE)
# }) %>%
#     tibble::as.tibble()

# The above script works for the example since each row of the table has the same number of columns
# (See the <data-table ...> node here:
# https://wonder.cdc.gov/wonder/help/API-Examples/D76_Example2-resp.xml

# This function is designed to work for query results with varying number of columns per row

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

