
#' Turns wondr code into a function.
#' @param query_result An object containing the payload from the query
#' @export
#'

create_output <- function (query_result){
xml2::xml_find_all(query_result, ".//response/data-table/r") %>%
  purrr::map_df(function(row) {
    xml2::xml_find_all(row, ".//c") %>%
      xml2::xml_attrs() %>%
      as.list() %>%
      setNames(sprintf("V%d", 1:length(.))) %>%
      as.data.frame(stringsAsFactors=FALSE)
  }) %>%
  tibble::as.tibble()
}
