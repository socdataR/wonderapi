mylist <- list(
    list("Group Results By", "Race"),
#    list("B_2", "Year"),
    list("Tobacco Use", "1")
)

mydata <- getData(TRUE, "D66", mylist, TRUE)
x <- make_query_table(mydata)


