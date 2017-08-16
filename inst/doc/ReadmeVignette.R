## ----notestoself, eval = FALSE, echo = FALSE-----------------------------
#  # For Github readme, do the following (delete as you go):
#  # 1. Save as readme.Rmd in project root directory
#  # 2. Change the title to wonderapi
#  # 3. Change date manually
#  # 4. Change output to:
#  #   html_document:
#  #     keep_md: yes
#  #     toc: true
#  # 5. Delete Vignette: info
#  # 6. Change Githubreadme to TRUE
#  # DO NOT MAKE ANY OTHER CHANGES

## ---- echo = FALSE-------------------------------------------------------
githubreadme <- FALSE

## ----setup, include = FALSE----------------------------------------------
knitr::opts_chunk$set(cache = TRUE, fig.width = 4, fig.height = 3,
                      fig.align = 'center')


## ---- message = FALSE----------------------------------------------------
library(tidyverse)
library(wonderapi)
library(knitr)

## ------------------------------------------------------------------------
mylist <- list(list("And By", "Gender"))
mydata0 <- getData(TRUE, "Detailed Mortality", mylist)

## ----eval=githubreadme, echo=githubreadme--------------------------------
#  mydata0 %>% head()

## ----eval=!githubreadme, echo=!githubreadme------------------------------
mydata0 %>% head() %>% kable()

## ------------------------------------------------------------------------
wonderapi::show_databases()

## ---- eval = FALSE-------------------------------------------------------
#  devtools::install_github("socdataR/wonderapi")

## ---- eval = FALSE-------------------------------------------------------
#  > ??codebook

## ----eval=githubreadme, echo=githubreadme--------------------------------
#  natdata <- getData(TRUE, "Natality for 2007 - 2015")
#  natdata %>% head()
#  dmdata <- getData(TRUE, "Detailed Mortality")
#  dmdata %>% head()

## ----eval=!githubreadme, echo=!githubreadme------------------------------
natdata <- getData(TRUE, "Natality for 2007 - 2015")
natdata %>% head() %>% kable()
dmdata <- getData(TRUE, "Detailed Mortality")
dmdata %>% head() %>% kable()

## ------------------------------------------------------------------------
mylist <- list(list("Group Results By", "Weekday"))
mydata <- getData(TRUE, "Detailed Mortality", mylist)

## ----eval=githubreadme, echo=githubreadme--------------------------------
#  mydata %>% head()

## ----eval=!githubreadme, echo=!githubreadme------------------------------
mydata %>% head() %>% kable()

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
mydata2 <- getData(TRUE, "Natality for 2007 - 2015", mylist)

## ----eval=githubreadme, echo=githubreadme--------------------------------
#  mydata2 %>% head()

## ----eval=!githubreadme, echo=!githubreadme------------------------------
mydata2 %>% head() %>% kable()

## ------------------------------------------------------------------------
mylist <- list(list("Month", "2"))
getData(TRUE, "D66", mylist)

## ---- fig.show='hold'----------------------------------------------------
ggplot(mydata2, aes(x = Year, y = Births, color = `Marital Status`)) +
    geom_line() + ggtitle("Births by Marital Status")

## ------------------------------------------------------------------------
ggplot(mydata2, aes(x = Year, y = `Average Age of Mother`,
                   color = `Marital Status`)) + geom_line() +
    geom_point() + ylab("age (in years)") + 
    ggtitle("Average Age of Mother")

## ------------------------------------------------------------------------
mydata2 <- mydata2 %>% 
    select(-`Average Age of Mother`) %>% 
    spread(key = `Marital Status`, value = `Births`) %>% 
    mutate(Total = Married + Unmarried)
ggplot(mydata2, aes(x = Year, y = Unmarried / Total)) + geom_line() +
    geom_point() + ggtitle("Births to Unmarried Mothers") +
    ylab("Percent of Total Births")

## ------------------------------------------------------------------------
births <- rbind(getData(TRUE, "Natality for 1995 - 2002"),
                getData(TRUE, "Natality for 2003 - 2006"),
                getData(TRUE, "Natality for 2007 - 2015"))
ggplot(births, aes(Year, Births)) + geom_line() + 
    ggtitle("U.S. Births by Year, 1995 - 2015")


## ------------------------------------------------------------------------
mydata3 <- getData(TRUE, "Detailed Mortality", 
        list(list("Suspect", "Mrs. Peacock")))

## ----eval=githubreadme, echo=githubreadme--------------------------------
#  mydata3 %>% head()

## ----eval=!githubreadme, echo=!githubreadme------------------------------
mydata3 %>% head() %>% kable()

## ---- error = TRUE-------------------------------------------------------
mylist <- list(list("And By", "Education"), 
               list("Birth Rate", ""))
mydata4 <- getData(TRUE, "Natality for 2007 - 2015", mylist)

## ------------------------------------------------------------------------
mylist <- list(list("And By", "Race"), 
               list("Birth Rate", ""))
mydata5 <- getData(TRUE, "Natality for 2007 - 2015", mylist)

## ----eval=githubreadme, echo=githubreadme--------------------------------
#  mydata5 %>% head()

## ----eval=!githubreadme, echo=!githubreadme------------------------------
mydata5 %>% head() %>% kable()

