make_query_list <- function(filename) {
    dbcode <- strsplit(filename, "_")[[1]][1]
    default_xml <- xml2::read_xml(paste0("data-raw/", filename)) %>%
        rvest::xml_nodes("parameter")
    default_list <- sapply(default_xml, make_param_list)
    return(default_list)
}

# variation of wondr::add_param()
make_param_list <- function(param_node) {
    name <- param_node %>% rvest::xml_node("name") %>% xml2::xml_text()
    value <- param_node %>% rvest::xml_nodes("value") %>%
        xml2::xml_text()
    pvec <- as.list(value)
    pvec <- stats::setNames(pvec, rep("value", length(pvec)))
    pvec <- c(name = name, pvec)
    list(parameter = pvec)
}

