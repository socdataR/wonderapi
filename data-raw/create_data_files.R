# create data files and vignette:
# 1. test new dataset to be added
# 2. read dbnamelookup (database name lookup)
# 3. label lookup lists
# 4. query default lookup lists
# 5. save above in sysdata.rda
# 6. codebook vignettes

library(dplyr)
library(readr)
library(wonderapi)
library(wondr)

# First, manually update data-raw/dbnamelookup.csv if necessary

# 1. test new dataset to be added
devtools::load_all()
# temporarily bypass dbnamelookup in sysdata.rda
dbnamelookup <- readr::read_csv("data-raw/dbnamelookup.csv")
dbcode <- "D76"
make_label_lookup(dbcode)

ql <- make_query_list(paste0(dbcode,"_Defaults.xml"))

agreelist <- list(parameter = list(
    name = "accept_datause_restrictions",
    value = "true"))

c(agreelist, ql) %>% wondr::make_query(dbcode)

# 2. if that all works, recreate all files and save to sysdata.rda
dbnamelookup <- readr::read_csv("data-raw/dbnamelookup.csv")

# since package needs dbnamelookup, do the following before continuing:
usethis::use_data(dbnamelookup, internal = TRUE, overwrite = TRUE)
devtools::load_all()

# get database codes
databases <- dbnamelookup$dbcode

# 3. add label lookup lists
label_list <- purrr::map(databases, make_label_lookup) %>%
    stats::setNames(paste0(databases, "labellookup"))

# 4. add query default lookup lists
qd_to_add <- purrr::map_chr(databases, ~paste0(.x, "_Defaults.xml"))
query_defaults <- purrr::map(qd_to_add, make_query_list) %>%
    stats::setNames(paste0(databases, "querydefaults"))

# 5. save as internal data (R/sysdata.rda)
usethis::use_data(dbnamelookup, label_list, query_defaults,
                   internal = TRUE, overwrite = TRUE)

# 6. make codebook vignettes
purrr::map(databases, make_codebook_vignette)
# manually update IntroVignette.Rmd
devtools::build_vignettes()


