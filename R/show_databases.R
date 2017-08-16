#' Show available databases
#'
#' displays available databases (also available here: ADD LINK TO GITHUB)
#'
#' @examples
#' show_databases()
#'
#' @export
#'

show_databases <- function() {
    dbs <- dbnamelookup[,c(1,3)]
    colnames(dbs) <- c("label", "name")
    dbs
}
