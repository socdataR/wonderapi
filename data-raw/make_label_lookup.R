# makes label lookup table
make_label_lookup <- function(webdata) {
    webform <- html_form(webdata)[[3]]
    dbcode <- webform$fields$dataset_code$value

    labels <- webdata %>% html_nodes("label")
    forfield <- labels %>% html_attr("for") %>%
        str_replace_all("[$S|$C|$T|$R]", "")

    # fix typo in D76
    if (dbcode == "D76") {
        forfield <- str_replace_all(forfield, "O_icd", "O_ucd")
    }

    labeltext <- labels %>% html_text() %>%
        # get rid of long help links
        str_replace_all("\\(http.*\\)", "")

    label_df <- data.frame(code = forfield, label = labeltext,
                           stringsAsFactors = FALSE) %>%
        na.omit()

    write_csv(label_df, paste0("data/", dbcode,
                               "labellookup.csv"))
}
