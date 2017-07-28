# create six lookup tables needed to make codebook
# A SAMPLE QUERY RESULT is used to create:
# 1. varlookup, 2. measurelookup, 3. paramlookup, and
# 4. otherparamlookup
# (All query results contain a "dataset" node with info on the whole dataset, not just the specific query).

# Scraping the ONLINE HTML FORM is used to create:
# 4. selectlookup and 5. inputlookup
# selectlookp is necessary for determing by variable options
# not sure if inputlookup is necessary now, but it may be
library(xml2)
library(tidyverse)

dbname <- "natality-current"
dbcode <- "D66"
submit <-  "action-I Agree"

get_var_attr <- function(node) {
    code <- node %>% xml_attr("code")
    label <- node %>% xml_attr("label")
    valuenodes <- node %>% xml_find_all("value")
    if (length(valuenodes) > 0) {
        valuecode <- valuenodes %>% xml_attr("code")
        valuelabel <- valuenodes %>% xml_attr("label")
    }
    else {
        valuecode <- NA
        valuelabel <- NA
    }
    tibble(code, label, valuecode, valuelabel)
}

get_param_attr <- function(node) {
    code <- node %>% xml_attr("code")
    label <- node %>% xml_attr("label")
    optnodes <- node %>% xml_nodes("option")
    if (length(optnodes) > 0) {
        optcode <- optnodes %>% xml_attr("value")
        optlabel <- optnodes %>% xml_attr("label")
    }
    else {
        optcode <- NA
        optlabel <- NA
    }
    data.frame(code, label, optcode, optlabel,
               stringsAsFactors = FALSE)
}

get_otherparam_attr <- function(node) {
    code <- node %>% xml_attr("code")
    value <- node %>% xml_attr("value")
    data.frame(code, value, stringsAsFactors = FALSE)
}

getattr <- function(selectnode) {
    name <- selectnode %>% html_attr("name")
    id <- selectnode %>% html_attr("id")
    optnodes <- selectnode %>% html_nodes("option")
    value <- optnodes %>% html_attr("value") %>%
        # so *All* doesn't lose asterisks and go italic
        str_replace_all("\\*", "\\\\*")
    desc <- optnodes %>% html_text()
    data.frame(name, id, value, desc,
               stringsAsFactors = FALSE)
}


makequerylookuptables <- function(query_result) {
    # variables (start with "D66.V")
    variables <- query_result %>%
        xml_find_all("//dataset/variable[@code]")
    varlookup <- map_df(variables, get_var_attr)

    write_csv(varlookup,
              paste0("data/", dbcode, "varlookup.csv"))

    measures <- query_result %>%
        xml_find_all("//dataset/measure")
    code <- measures %>% xml_attr("code")
    label <- measures %>% xml_attr("label")
    measurelookup <- tibble(code, label)
    write_csv(measurelookup,
              paste0("data/", dbcode, "measurelookup.csv"))

    parameters <- query_result %>%
        xml_find_all("response/request/other-parameters/parameter[@label]")
    paramlookup <- map_df(parameters, get_param_attr)
    write_csv(paramlookup,
              paste0("data/", dbcode, "paramlookup.csv"))

    otherparams <- query_result %>%
        xml_find_all("//dataset/variable/other-param-control")
    otherparamlookup <- map_df(otherparams, get_otherparam_attr)
    write_csv(otherparamlookup,
              paste0("data/", dbcode, "otherparamlookup.csv"))
}

makeformlookuptables <- function(webdata) {

# take apart hmtl form
# get input elements
inputnodes <- webdata %>% html_nodes("input")
type <- inputnodes %>% html_attr("type")
name <- inputnodes %>% html_attr("name")
value <- inputnodes %>% html_attr("value")
id <- inputnodes %>% html_attr("id")

input_df <- data.frame(type, name, value, id,
                       stringsAsFactors = FALSE)

# get all labels
labels <- webdata %>% html_nodes("label")
forfield <- labels %>% html_attr("for")
labeltext <- labels %>% html_text() %>%
    # get rid of long help links
    str_replace_all("\\(http.*\\)", "")

label_df <- data.frame(id = forfield, label = labeltext,
                       stringsAsFactors = FALSE) %>%
    na.omit()

# add labels to input data frame
input_df <- left_join(input_df, label_df, by = "id") %>%
    select(-id) %>%
    arrange(name, value) %>% unique()

write_csv(input_df, paste0("data/",dbcode,"inputlookup.csv"))



# get select elements
select_df <- webdata %>% html_nodes("select") %>%
    map_df(getattr) %>%
    left_join(label_df, by = "id") %>%
    select(label, name, value, desc, -id) %>%
    arrange(name)

write_csv(select_df, paste0("data/",dbcode,"selectlookup.csv"))

}

query_result <- read_xml("data/query_result.xml")

makequerylookuptables(query_result)

webdata <- agree_and_scrape(dbname, dbcode, submit)

makeformlookuptables(webdata)



