# make default list
library(tidyverse)
library(rvest)


# see wondr::add_param()
make_param_list <- function(param_node) {
    name <- param_node %>% xml_node("name") %>% xml_text()
    value <- param_node %>% xml_nodes("value") %>%
        xml_text()
    pvec <- as.list(value)
    pvec <- setNames(pvec, rep("value", length(pvec)))
    pvec <- c(name = name, pvec)
    pvec
}

make_query_list <- function(filename) {
    dbcode <- strsplit(filename, "_")[[1]][1]
    default_xml <- read_xml(file.path("data-raw",
                                        filename)) %>%
        xml_nodes("parameter")
    default_list <- map(default_xml, make_param_list)
    setNames(default_list, rep("parameter",
                               length(default_list)))
    filename <- paste0("data/", dbcode, "querydefaults.RData")
    save(default_list, file = filename)
}

