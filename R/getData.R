# query

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
        ifelse(is.null(querylist), querylist <- default_list,
                querylist <- c(default_list, querylist))
    } else {
        if (is.null(querylist)) stop("if add == F provide a query list")
    }
    querylist <- c(agreelist, querylist)
    make_query(querylist, dbcode)
}

