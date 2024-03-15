#' Send XML query
#'
#' Based on https://github.com/hrbrmstr/wondr/blob/master/R/wondr.r
#'
#' @param db Indicate the database by code
#'
#' @param fn \code{.xml} query list exported from CDC Wonder web interface
#'
#' @param agree if \code{TRUE} (default) accept CDC Wonder API data use restrictions
#' @export
#' @examples \dontrun{
#'    send_query("D66", "data-raw/D66_Defaults.xml")
#'    send_query("D76", "testquery.xml")
#' }
#'
send_query <- function(db, fn, agree = TRUE) {
    if (!agree) stop("You must agree to CDC terms.")

    query <- xml2::read_xml(fn)
    accept <- xml2::read_xml("<parameter> <name>accept_datause_restrictions
                           </name> <value>true</value> </parameter>")
    xml2::xml_add_child(query, accept, .where = 0)

    res <- httr::POST(sprintf("https://wonder.cdc.gov/controller/datarequest/%s", db),
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

