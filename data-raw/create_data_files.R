# create all data files
# entered manually from https://wonder.cdc.gov/

library(xml2) # not finding xml2::xml_text() for some reason

dbnamelookup <- data.frame(dblabel = c("Births", "Detailed Mortality"),
                           dbname = c("natality-current", "ucd-icd10"),
                           dbcode = c("D66", "D76"),
                           dbagree = c("action-I Agree", "action-I Agree"),
                           stringsAsFactors = FALSE)

# add label lookups
db_to_add <- c("D66", "D76")
label_list <- purrr::map(db_to_add, make_label_lookup) %>%
    setNames(paste0(db_to_add, "labellookup"))

# add query default parameters
qd_to_add <- c("D66_Defaults.xml", "D76_Defaults.xml")
dbcodes <- purrr::map_chr(strsplit(qd_to_add, "_"), ~.x[1])
query_defaults <- purrr::map(qd_to_add, make_query_list) %>%
    setNames(paste0(dbcodes, "querydefaults"))

devtools::use_data(dbnamelookup, label_list, query_defaults, internal = TRUE,
                   overwrite = TRUE)

