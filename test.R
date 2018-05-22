add3 <- function(x) x+3

x <- function(y) {
    lapply(y, add3)
}
