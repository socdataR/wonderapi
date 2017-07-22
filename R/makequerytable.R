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

getrows <- function(row, numcol) {
    cells <- row %>% html_nodes("c")
    len <- length(cells)
    # assuming all the labels ("l") are to the left of all
    # the values ("v")
    l <- cells %>% html_attr("l") %>% na.omit()
    v <- cells %>% html_attr("v") %>% na.omit()
    c(rep(NA, numcol - len), l, v)
}

replaceNAs <- function (x) {
    for (i in seq_along(rownames(x))) {
        for (j in seq_along(colnames(x))) {
            if (is.na(x[i,j])) x[i,j] <- x[i-1, j]
        }
    }
    return(x)
}

makequerytable <- function(query_result) {
    allrows <- query_result %>% html_nodes("r")
    numcol <-  allrows[1] %>% html_nodes("c") %>% length()
    querytable <- allrows %>%
        map(getrows, numcol) %>%
        sapply(c) %>% t() %>% data.frame() %>%
        replaceNAs()
    # (inspiration: https://stackoverflow.com/questions/4227223/r-list-to-data-frame)

    # determine column names (byvariables, then measures)
    byvariables <- query_result %>%
        html_node("byvariables") %>%
        html_nodes("variable") %>%
        html_attr("code")

    measures <- query_result %>%
        html_node("measure-selections") %>%
        html_nodes("measure") %>%
        html_attr("code")

    colvars <- c(byvariables, measures)
    lookup <- read_csv("D66lookuptable.csv")
    # the lookup table is created by makelookuptable()
    colvar_index <- map_int(colvars,
                            ~which(lookup$code == .x)[1])
    colnames(querytable) <- lookup$label[colvar_index]

    return(querytable)
}
