#' Create the default query request list for a CDC Wonder database call
#'
#' Query requests must contain many parameters that are generally not of much interest to the end user. Therefore, this package relies on a set of default query lists which the user may alter. This function converts .xml examples from the CDC to R lists. These lists are named by the database code + querydefaults, such as D66querydefaults. Most users will not need to use this function.
#'
#' @param filename the name of the .xml request file that is used as the query default list for that database. The file name must begin with the database code followed by underscore (_), such as D66_sample.xml, and must be located in the data-raw/ directory.
#'
#' @examples
#' make_query_list("D66_BirthsOnly-req.xml")
#' make_query_list("D76_Mortality-req.xml")


make_query_list <- function(filename) {
    dbcode <- strsplit(filename, "_")[[1]][1]
    default_xml <- xml2::read_xml(paste0("data-raw/", filename)) %>%
        rvest::xml_nodes("parameter")
    default_list <- sapply(default_xml, make_param_list)
    return(default_list)
    # objname <- paste0(dbcode, "querydefaults")
    # assign(objname, default_list)
    # save(list = objname, file = paste0("data/", objname, ".rda"))
}

# variation of wondr::add_param()
make_param_list <- function(param_node) {
    name <- param_node %>% rvest::xml_node("name") %>% xml2::xml_text()
    value <- param_node %>% rvest::xml_nodes("value") %>%
        xml2::xml_text()
    pvec <- as.list(value)
    pvec <- setNames(pvec, rep("value", length(pvec)))
    pvec <- c(name = name, pvec)
    list(parameter = pvec)
}

