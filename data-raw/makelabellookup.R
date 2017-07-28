# makes label lookup table
webdata <- read_html("data/webdata.html")
labels <- webdata %>% html_nodes("label")
forfield <- labels %>% html_attr("for") %>%
    str_replace_all("[$S|$C|$T|$R]", "")


labeltext <- labels %>% html_text() %>%
    # get rid of long help links
    str_replace_all("\\(http.*\\)", "")

label_df <- data.frame(code = forfield, label = labeltext,
                       stringsAsFactors = FALSE) %>%
    na.omit()

write_csv(label_df, "data/labellookup.csv")
