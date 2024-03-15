#' Send XML query
#'
#' Based on https://github.com/hrbrmstr/wondr/blob/master/R/wondr.r
#'
#' @param filename .xml query list
#' @param database_id CDC WONDER database ID, if NULL parsed from filename
#' @param add_accept if \code{TRUE} (default) accept CDC Wonder API data use restrictions
#' @export
#' @examples \dontrun{
#'    send_query("data-raw/D66_Defaults.xml")
#'    send_query("testquery.xml", database_id = "D76")
#' }
send_query <- function(filename, database_id = NULL, add_accept = TRUE) {
    query <- xml2::read_xml(filename)
    if (add_accept) {
        accept <- read_xml("<parameter> <name>accept_datause_restrictions
                           </name> <value>true</value> </parameter>")
        xml2::xml_add_child(query, accept, .where = 0)
    }
    if (is.null(database_id)) database_id <- stringr::str_extract(filename, "D[0-9]+")
    if (is.na(database_id)) stop ("The database ID must be contained in the filename or set as the database_id parameter.")
    index <- purrr::map(dbnamelookup, ~which(.x == database_id)) %>% unlist()
    if (length(index) == 0) stop (database_id, " is not available.")

    res <- httr::POST(sprintf("https://wonder.cdc.gov/controller/datarequest/%s", database_id),
                      body=list(request_xml=query),
                      encode = "form")
    out <- httr::content(res, as="text")
    if (httr::status_code(res) != 200) {
        cat("Message from query:\n")
        xml2::read_xml(out) %>%
            rvest::html_element("message") %>%
            rvest::html_text() %>%
            cat()
        cat("\n")
        httr::stop_for_status(res)
    } else{
        xml2::read_xml(out) %>% make_query_table()
    }
}
