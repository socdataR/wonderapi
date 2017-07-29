#' Start a query for the CDC WONDER API
#'
#' @param accept accept the WONDER terms and conditions. Defaults to \code{TRUE}
#' @export
#' @examples \dontrun{
#'    wondr() %>%
#'    add_param("name", "value") %>%
#'    ... %>%
#'    make_query(database_id="dbid") -> result
#' }
wondr <- function(accept=TRUE) {

  if (!accept) stop("You must accept the CDC WONDER DATA/API ToS", call.=FALSE)

  wobj <- list(
      parameter=list(name="accept_datause_restrictions", value="true")
  )

  wobj

}

#' Add a parameter to a WONDER API query call
#' @param wobj a WONDER call object passed in from \code{wondr()} or a \code{wondr()}
#'        pipe chain
#' @param \dots name=value fields to add to a complete parameter specification
#' @export
#' @examples \dontrun{
#'    wondr() %>%
#'    add_param("name", "value") %>%
#'    ... %>%
#'    make_query(database_id="dbid") -> result
#' }
add_param <- function(wobj, name, ...) {

   pvec <- as.vector(list(...))
   pvec <- setNames(pvec, rep("value", length(pvec)))
   pvec <- c(name=name, pvec)

   wobj <- append(wobj, values=list(parameter=pvec))
   wobj
}

#' Issue a WONDER API query
#'
#' @param wobj a WONDER call object passed in from \code{wondr()} or a \code{wondr()}
#'        pipe chain
#' @param database_id CDC WONDER database ID
#' @export
#' @examples \dontrun{
#'    wondr() %>%
#'    add_param("name", "value") %>%
#'    ... %>%
#'    make_query(database_id="dbid") -> result
#' }
make_query <- function(wobj, database_id) {
  query <- XML::saveXML(list_to_xml(wobj, "request-parameters"),
                   indent=FALSE,
                   prefix='<?xml version="1.0" encoding="utf-8"?>')
  res <- httr::POST(sprintf("https://wonder.cdc.gov/controller/datarequest/%s", database_id),
              body=list(request_xml=query),
              encode = "form")
  httr::stop_for_status(res)
  out <- httr::content(res, as="text")
  xml2::read_xml(out)
}
