# This file contains code and instructions for adding or updating CDC Wonder databases.

# create data files and vignette:
# 1. test new dataset to be added
# 2. update dbnamelookup (database name lookup)
# 3. label lookup lists
# 4. query default lookup lists
# 5. save 2., 3., 4. in sysdata.rda
# 6. codebook vignettes

library(dplyr)
library(readr)
library(devtools)
load_all()

# 1. test that default query list works
#
# Default query lists can now be tested with wonderapi::send_query()

# if adding a new database, manually update data-raw/dbnamelookup.csv

# Add a default query list to data-raw/  It is very difficult to create one from scratch. The best option is to request one from CDC Wonder Customer Support <cwus@cdc.gov>.

# devtools::load_all()

# dbcode <- "D66"  # code of new database

# make_query_list("D66_Defaults.xml") %>% make_query(dbcode)


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

# 6. make codebook vignette .Rmd
purrr::map(databases, make_codebook_vignette)

#  Manually update IntroVignette.Rmd

# OPTIONAL: test that the vignettes build. Note that they won't appear in Help unless the package is installed but they can be accessed with browseVignettes(). See ?build_vignettes() for more info.

# devtools::build_vignettes()



