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
    lettercode <- strsplit(thisrow$name, "_")[[1]][1]
    switch(lettercode,
           B = {
               index <- which(selectlookup$name == thisrow$name)
               cat(thisrow$name,
                   paste0("'",selectlookup$label[index[1]],
                          "'\n"))
               cat("Options: \n")
               if (thisrow$name == "B_1") {
                   for (i in seq_along(index)) {
                       cat(" ", selectlookup$value[i],
                           "\t", selectlookup$desc[i], "\n")
                   }
               }
               else {
                   cat("\tsame as above\n")
               }
           },
           M = {
               index <- which(measurelookup$code == thisrow$value)
               cat(thisrow$name,
                   paste0("'",measurelookup$label[index[1]],
                          "'\n"))
           },

           O = {
               switch(thisrow$type,
                      checkbox = return(),
                      hidden = return(),
                      NULL = cat("has options \n"),
                      radio = {
                          index <- which(inputlookup$name == thisrow$name &
                                             inputlookup$value == thisrow$value)
                          cat(thisrow$name, thisrow$value,
                              paste0("'",inputlookup$label[index[1]], "'\n"))
                          },
                       text = {
                           index <- which(inputlookup$name == thisrow$name &
                                    inputlookup$value == thisrow$value)
                           cat(thisrow$name, thisrow$value,
                               paste0("'",inputlookup$label[index[1]],
                                      "'\n"))
                       }
                )
           },
           cat("I don't know how to process fields starting with", lettercode,"\n")
            )
    }




dbname <- "natality-current"
dbcode <- "D66"
submit <-  "action-I Agree"

# dbname <- "vaers"
# dbcode <- "D8"
# submit <-  "tab-request"

# dbname <- <- "ucd-icd10"
# dbcode <- "D76"
# submit <-  "action-I Agree"

inputlookup <- read_csv(paste0("data/", dbcode,
                               "inputlookup.csv"))
selectlookup <- read_csv(paste0("data/", dbcode,
                                "selectlookup.csv"))
measurelookup <- read_csv(paste0("data/", dbcode,
                                 "measurelookup.csv"))


# webdata <- agree_and_scrape(dbname, dbcode, submit)
webdata <- read_html("data/webdata.html")

# https://github.com/krlmlr/kimisc/blob/master/R/list_to_df.R

webform <- webdata %>% html_form()

form_df <- map_df(webform[[3]]$fields, unpack)

form_df <- form_df %>%
    filter(!(type %in% c("button", "submit")))
#%>%
#    filter(str_detect(name, "_"))

apply(form_df, 1, process_item)


