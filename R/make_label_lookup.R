# makes label lookup table
make_label_lookup <- function(db) {
    index <- map(dbnamelookup, ~which(.x == db)) %>% unlist()
    if (length(index) == 0) stop ("I don't know which database you want.")
    webdata <- agree_and_scrape(dbname = dbnamelookup$dbname[index],
                                dbcode = dbnamelookup$dbcode[index],
                                submit = dbnamelookup$dbagree[index])
    webform <- html_form(webdata)[[3]]
    dbcode <- webform$fields$dataset_code$value

    labels <- webdata %>% html_nodes("label")
    forfield <- labels %>% html_attr("for") %>%
        stringr::str_replace_all("[$S|$C|$T|$R]", "")

    # fix typo in D76
    if (dbcode == "D76") {
        forfield <- stringr::str_replace_all(forfield, "O_icd", "O_ucd")
    }

    labeltext <- labels %>% html_text() %>%
        # get rid of long help links
        stringr::str_replace_all("\\(http.*\\)", "")

    labellookup <- data.frame(code = forfield, label = labeltext,
                           stringsAsFactors = FALSE) %>% na.omit()
    objname <- paste0(dbcode, "labellookup")
    assign(objname, labellookup)
    save(list = objname, file = paste0("data/", objname, ".Rdata"))
}
