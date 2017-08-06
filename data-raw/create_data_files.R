# create all data files
# entered manually from https://wonder.cdc.gov/

library(xml2) # not finding xml2::xml_text() for some reason

dbnamelookup <- data.frame(dblabel = c("Births", "Detailed Mortality"),
                           dbname = c("natality-current", "ucd-icd10"),
                           dbcode = c("D66", "D76"),
                           dbagree = c("action-I Agree", "action-I Agree"),
                           stringsAsFactors = FALSE)

devtools::use_data(dbnamelookup, internal = TRUE)

# add label lookups
db_to_add <- c("D66", "D76")
purrr::map(db_to_add, make_label_lookup)

# add query default parameters
qd_to_add <- c("D66_BirthsOnly-req.xml", "D76_Defaults.xml")
purrr::map(qd_to_add, make_query_list)

# make codebooks

