library(rvest)
library(tidyverse)
library(stringr)
# functions
check_and_assign <- function(field) {
    if (length(field) > 0) {
        return(field)
    }
    else
        return("NULL")
}

unpack <- function(item) {
    name <- check_and_assign(item$name)
    value <- check_and_assign(item$value)
    type <- check_and_assign(item$type)
    options <- check_and_assign(item$options) %>% list()
    df <- data.frame(name, value, type, stringsAsFactors = FALSE)
    df$options <- options
    df
}

process_item <- function(thisrow) {
    lookupname <- thisrow$name
    precode <- strsplit(thisrow$name, "_")[[1]][1]
    switch(precode,
           O = {
               if (thisrow$type == "radio") {
                   lookupname <- paste0(thisrow$name,
                                          thisrow$value)
                   }
               },
           F = {
               thisrow$name <- strsplit(thisrow$name,
                                        "_")[[1]][2]
               cat("Finder control (hier. list)\n")
               lookupname <- thisrow$name

           },
           V = {
               thisrow$name <- strsplit(thisrow$name,
                                        "_")[[1]][2]
               lookupname <- thisrow$name
           }
    )
    index <- which(labellookup$code == lookupname)
    cat("Parameter:\n")
    if (thisrow$type == "radio") {
        cat(thisrow$name, "\nValues:\t", thisrow$value, "\t",
            labellookup$label[index], "\n")
    }
    else {
        cat(thisrow$name, "\t", labellookup$label[index], "\n")
    }
    if (length(thisrow$options) > 1) {
        cat("Values:\n")
        opt <- thisrow$options
        for (i in seq_along(opt)) {
            optname <- str_replace_all(names(opt[i]),
                                        "\\(.*?\\)","")
            cat("\t\t", opt[i], "\t", optname, "\n")
        }
    }
    cat("\n")
}

make_codebook <- function(webdata) {
    webform <- webdata %>% html_form()
    form_df <- map_df(webform[[3]]$fields, unpack)
    dbcode <- webform[[3]]$fields$dataset_code$value

    ignorefile <- paste0("data/", dbcode, "ignore.RData")
    if (file.exists(ignorefile)) {
        load(ignorefile)
    } else {
        ignore <- ""
    }

    form_df <- form_df %>%
        filter(!(type %in% c("button", "submit", "hidden"))) %>%
        filter(!(name %in% ignore)) %>%
        filter(!(str_detect(name, "O_") & type == "checkbox"))

    labellookup <- read_csv(paste0("data/", dbcode,
                                   "labellookup.csv"))

    sink(paste0(dbcode, "codebook.txt"))
    apply(form_df, 1, process_item)
    sink()
}

