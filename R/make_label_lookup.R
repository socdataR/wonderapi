
make_label_lookup <- function(db, dbnamelookup) {
    # check all columns of dbnamelookup for db
    index <- purrr::map(dbnamelookup, ~which(.x == db)) %>% unlist()
    if (length(index) == 0) stop ("I don't know which database you want.")
    webdata <- agree_and_scrape(dbname = dbnamelookup$dbname[index],
                                dbcode = dbnamelookup$dbcode[index],
                                submit = dbnamelookup$dbagree[index])
    webform <- rvest::html_form(webdata)[[2]]
    dbcode <- webform$fields$dataset_code$value

    labels <- webdata %>% rvest::html_nodes("label")
    forfield <- labels %>% rvest::html_attr("for") %>%
        stringr::str_replace_all("[$S|$C|$T|$R]", "")

    # fix typo in D76
    if (dbcode == "D76") {
        forfield <- stringr::str_replace_all(forfield, "O_icd", "O_ucd")
    }

    labeltext <- labels %>% rvest::html_text() %>%
        # get rid of long help links
        stringr::str_replace_all("\\(http.*\\)", "")

    labellookup <- data.frame(code = forfield, label = labeltext,
                           stringsAsFactors = FALSE) %>% stats::na.omit()
    return(labellookup)
}
