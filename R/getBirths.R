#' Request birth data from the CDC Wonder API
#'
#' wrapper to `getData()` which calls the \href{https://wonder.cdc.gov}{CDC Wonder API} and returns a tidy data frame (tibble)
#'
#' @param ... list of words to indicate the group_by variables desired in the query. Words will be interpreted according to the first letter (not case-sensitive):
#'
#'     A = "Age of Mother Year"
#'     B = "Birth Weight 100 gram increments"
#'     D = "Delivery Method"
#'     E = "Education"
#'     G = "Gender"
#'     H = "Hispanic Origin"
#'     M = "Month"
#'     O = "Live Birth Order"
#'     P = "Birthplace"
#'     R = "Race"
#'     S = "Marital Status"
#'     P = "Month Prenatal Care Began"
#'     W = "Weekday"
#'
#'
#'

#' @examples
#'
#' mydata <- getBirths(age, educcation, wieght, gender)
#'
#' mydata
#'
#' @section Notes
#' `getBirths()` is designed to be easier to use than `getData()` for simple queries. For more options, use `getData()`.
#'

#' @export


convert_byvar <- function(user_text) {
  user_text <- as.character(user_text)
  correct_text <- switch(toupper(substr(user_text, 1, 1)),
         A = "Age of Mother Year",
         B = "Birth Weight 100 gram increments",
         D = "Delivery Method",
         E = "Education",
         G = "Gender",
         H = "Hispanic Origin",
         M = "Month",
         O = "Live Birth Order",
         P = "Birthplace",
         R = "Race",
         S = "Marital Status",
         P = "Month Prenatal Care Began",
         W = "Weekday")
  if (is.null(correct_text)) message(paste("Do not know what to do with", user_text, "...skipping."))
  return(correct_text)
}


getBirths <- function(...) {
  l <- rlang::enexprs(...) %>%
    purrr::map(convert_byvar)
  # get rid of NULLs and duplicates
  l <- as.list(unique(unlist(l)))
  mylist <- list()
  for (i in seq_along(unlist(l))) {
    mylist[[i]] <- list(paste0("B_",i),
                        l[[i]])
  }

  len <- length(unlist(l))
  if (len > 5) {
    print ("Only five by variables allowed. Ignoring additional ones.")
    len <- 5
  }

  return(mylist)
}


