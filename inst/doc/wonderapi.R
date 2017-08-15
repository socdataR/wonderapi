## ----setup, include = FALSE----------------------------------------------
knitr::opts_chunk$set(cache = TRUE, fig.width = 4, 
                      fig.align = 'center')

## ---- message = FALSE----------------------------------------------------
library(tidyverse)
library(wonderapi)
getData(TRUE, "Natality for 2007 - 2015") %>% head() %>% knitr::kable() 
getData(TRUE, "Detailed Mortality") %>% head() %>% knitr::kable()

## ---- eval = FALSE-------------------------------------------------------
#  mylist <- list(list("Group Results By", "Weekday"))
#  getData(TRUE, "Detailed Mortality", mylist) %>% head() %>% knitr::kable()

## ---- eval = FALSE-------------------------------------------------------
#  ## not run
#  mylist <- list(list("B_1", "D66.V2"))
#  mylist <- list(list("Group Results By", "Race"))
#  mylist <- list(list("B_1", "Race"))
#  mylist <- list(list("Group Results By", "D66.V2"))

## ------------------------------------------------------------------------
mylist <- list(list("Group Results By", "Marital Status"),
               list("And By", "Year"),
               list("Average Age of Mother", ""))
mydata <- getData(TRUE, "Natality for 2007 - 2015", mylist)
knitr::kable(mydata)

## ------------------------------------------------------------------------
ggplot(mydata, aes(x = Year, y = Births, color = `Marital Status`)) + 
    geom_line() + ggtitle("Births by Marital Status")

ggplot(mydata, aes(x = Year, y = `Average Age of Mother`,
                   color = `Marital Status`)) + geom_line() + geom_point() +
    ylab("age (in years)") + ggtitle("Average Age of Mother")


## ------------------------------------------------------------------------
mydata2 <- mydata %>% 
    select(-`Average Age of Mother`) %>% 
    spread(key = `Marital Status`, value = `Births`) %>% 
    mutate(Total = Married + Unmarried)
ggplot(mydata2, aes(x = Year, y = Unmarried / Total)) + geom_line() +
    geom_point() + ggtitle("Births to Unmarried Mothers as % of Total") +
    ylab("Percent of Total Births")

## ------------------------------------------------------------------------
births <- rbind(getData(TRUE, "Natality for 1995 - 2002"),
                getData(TRUE, "Natality for 2003 - 2006"),
                getData(TRUE, "Natality for 2007 - 2015"))
ggplot(births, aes(Year, Births)) + geom_line() + 
    ggtitle("U.S. Births by Year, 1995 - 2015")


## ------------------------------------------------------------------------
getData(TRUE, "Detailed Mortality", 
        list(list("Suspect", "Mrs. Peacock"))) %>%
    head() %>% knitr::kable()

## ---- error = TRUE-------------------------------------------------------
mylist <- list(list("And By", "Education"), 
               list("Birth Rate (Census Region, Census Division, HHS Region, State, County, Year, Race)", ""))
getData(TRUE, "Natality for 2007 - 2015", mylist) %>% head() %>%
    knitr::kable()

## ---- out.width = "432px", echo = FALSE----------------------------------
knitr::include_graphics("NatalityError.png")

## ------------------------------------------------------------------------
mylist <- list(list("And By", "Race"), 
               list("Birth Rate (Census Region, Census Division, HHS Region, State, County, Year, Race)", ""))
getData(TRUE, "Natality for 2007 - 2015", mylist) %>%
    head() %>% knitr::kable()

## ----todolist, eval = FALSE, echo = FALSE--------------------------------
#  radio buttons
#  note about advanced options
#  () in labels
#  set agree default to FALSE, move to end
#  import versions

