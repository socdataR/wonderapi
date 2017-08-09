# create data files and vignette:
# 1. read dbnamelookup (database name lookup)
# 2. label lookup lists
# 3. query default lookup lists
# 4. codebook vignettes

library(dplyr)
library(readr)
library(wonderapi)

# read file of data entered manually from https://wonder.cdc.gov/
dbnamelookup <- read_csv("data-raw/dbnamelookup.csv")

# since package needs dbnamelookup, do the following before continuing:
devtools::use_data(dbnamelookup, internal = TRUE, overwrite = TRUE)
devtools::load_all()

# get database codes
databases <- dbnamelookup$dbcode

# add label lookup lists
label_list <- purrr::map(databases, make_label_lookup) %>%
    setNames(paste0(databases, "labellookup"))

# add query default lookup lists
qd_to_add <- purrr::map_chr(databases, ~paste0(.x, "_Defaults.xml"))
query_defaults <- purrr::map(qd_to_add, make_query_list) %>%
    setNames(paste0(databases, "querydefaults"))

# save as internal data
devtools::use_data(dbnamelookup, label_list, query_defaults,
                   internal = TRUE, overwrite = TRUE)

# make codebook vignettes
purrr::map(databases, make_codebook_vignette)
devtools::build_vignettes()

# Click Build & Reload to see in Help section (??)

