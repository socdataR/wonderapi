# query
library(readr)
library(purrr)
library(wondr)
library(tidyverse)

# list_2_tib is helpful for testing
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
        nameindex <- which(lookup$label ==
                               list_with_labels[[i]][[1]])
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
    print(list_with_codes)
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



getData <- function(agree = FALSE, dbcode = "D66",
                    querylist = NULL, add = TRUE) {
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
    map(querylist, ~print(c(.x[[1]], .x[[2]])))
    make_query(querylist, dbcode)
}

