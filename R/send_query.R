#' Send XML query
#'
#' Based on https://github.com/hrbrmstr/wondr/blob/master/R/wondr.r
#'
#' @param filename .xml query list
#' @param database_id CDC WONDER database ID, if NULL parsed from filename
#' @export
#' @examples \dontrun{
#'    send_query("data-raw/D66_Defaults.xml")
#' }
send_query <- function(filename, database_id = NULL) {
    query <- xml2::read_xml(filename)
    if (is.null(database_id)) database_id <- stringr::str_extract(filename, "D[0-9]+")
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
