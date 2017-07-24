library(wondr)
library(purrr)

query_result <- query.defaults %>% make_query("D66")

mydata <- makequerytable(query_result)

ggplot(mydata, aes(x = Gender, y = Births, fill = Race)) +
    geom_col(position = "dodge")


# *** skim_with lets you modify the list

# asdffree on github -- help getting past APIs
