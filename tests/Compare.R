# Compare items in request template to those pulled from the html form

formname <- form_df %>% select(name) %>% pull()

query_request <- read_xml("tests/D66_Births-req.xml")

queryname <- query_request %>%
    xml_find_all("/request-parameters/parameter/name") %>%
    xml_text()

queryvalue <- query_request %>%
    xml_find_all("/request-parameters/parameter/value") %>%
    xml_text()

#paramname <- queryname[str_detect(queryname, "O_")]

same <- intersect(queryname, formname)
setdiff(queryname, formname)
diff <- setdiff(formname, queryname)

