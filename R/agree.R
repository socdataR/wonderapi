cdc.env <- new.env()

#' Agree to the CDC rules about data usage and confidentiality.
#'
#' To use the CDC data you must agree to the terms of use. Do this once per session or you can
#' add it to individual requests to use programmatically.
#'
#' @param agree Logical indicating agreement for TRUE and non-agreement for FALSE
#'
#' @return
#'
#' @keywords agreement
#' @export
#' @examples
#' cdc_agree()
#' cdc_agree(FALSE)

cdc_agree <- function(agree = TRUE){
  cdc.env$cdc_terms_agreement <- agree
}
