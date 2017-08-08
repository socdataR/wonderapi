make_codebook_vignette <- function(db) {
    index <- purrr::map(dbnamelookup, ~which(.x == db)) %>% unlist()
    if (length(index) == 0) stop ("I don't know which database you want.")

    # get data
    webdata <- agree_and_scrape(dbname = dbnamelookup$dbname[index],
                                dbcode = dbnamelookup$dbcode[index],
                                submit = dbnamelookup$dbagree[index])
    # find form, organize the info
    webform <- webdata %>% rvest::html_form()
    form_df <- purrr::map_df(webform[[3]]$fields, unpack)
    dbcode <- db

    form_df <- form_df %>%
        dplyr::filter(!(type %in% c("button", "submit", "hidden"))) %>%
        dplyr::filter(!(stringr::str_detect(name, "O_") & type == "checkbox"))

    # create vignette
    sink(paste0("vignettes/", dbcode, "codebook.Rmd"))
    cat("---\n")
    cat("title: \"", dbcode, dbnamelookup$dblabel[index],
        "Dataset Codebook\"\n")
    cat("author: \"Joyce Robbins \"\n")
    cat("date: \"`r Sys.Date()`\"\n")
    cat("output: rmarkdown::html_vignette\n")
    cat("vignette: >\n")
    cat("  %\\VignetteIndexEntry{Births dataset (D66)}\n")
    cat("  %\\VignetteEngine{knitr::rmarkdown}\n")
    cat("  %\\VignetteEncoding{UTF-8}\n")
    cat("---\n")
    cat("This codebook is provided to assist in determining how to set up a query to the CDC Wonder API. The best way to become familiar with the API is to use the web interface: https://wonder.cdc.gov.  Also, read the [Introduction to wonderapi](wonderapi.html) to learn about the basic sections of CDC Wonder query requests.\n\n")
    apply(form_df, 1, process_item)
    sink()
}


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
    precode <- strsplit(thisrow$name, "_")[[1]][1]
    switch(precode,
           O = if (thisrow$type == "radio") {
               lookupname <- paste0(thisrow$name,
                                    thisrow$value)
           } else {
               lookupname <- thisrow$name

           },
           F = lookupname <- strsplit(thisrow$name,
                                      "_")[[1]][2],
           V = lookupname <- strsplit(thisrow$name,
                                      "_")[[1]][2],
           B = lookupname <- thisrow$name,
           M = lookupname <- thisrow$name
    )
    label_list_name <- paste0(dbcode, "labellookup")
    index <- which(names(label_list) == label_list_name)
    labellookup <- label_list[[index]]
    index <- which(labellookup$code == lookupname)
    cat("**Parameter:**\n")
    if (thisrow$type == "radio") {
        cat(thisrow$name, "\n**Values:**\t", thisrow$value, "\t",
            labellookup$label[index], "\n")
    }
    else {
        cat(thisrow$name, "\t", labellookup$label[index], "\n")
    }
    if (length(thisrow$options) > 1) {
        cat("\n**Value(s):**\n```\n")
        opt <- thisrow$options %>% unlist()
        for (i in seq_along(opt)) {
            optname <- names(opt[i])
            cat("\t\t", opt[i], "\t", optname, "\n")
        }
        cat("```\n")
    }
    cat("\n")
}

