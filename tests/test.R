mylist <- list(
    list("Group Results By", "Race"),
    list("Tobacco Use", "1")
)

mydata <- getData(TRUE, "D66", mylist, TRUE)
qt <- make_query_table(mydata)


