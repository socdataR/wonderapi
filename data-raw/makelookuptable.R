# create three lookup tables:
# variablelookup.csv, measurelookup.csv, otherparamlookup.csv
# used to create codebook
library(xml2)
library(tidyverse)
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
    tibble(code, label, optcode, optlabel)
}

makelookuptables <- function(query_result) {
    # variables (start with "D66.V")
    variables <- query_result %>%
        xml_find_all("//dataset/variable[@code]")
    varlookup <- map_df(variables, get_var_attr)
    write_csv(varlookup, "data/varlookup.csv")

    measures <- query_result %>%
        xml_find_all("//dataset/measure")
    code <- measures %>% xml_attr("code")
    label <- measures %>% xml_attr("label")
    measurelookup <- tibble(code, label)
    write_csv(measurelookup, "data/measurelookup.csv")

    parameters <- query_result %>%
        xml_find_all("response/request/other-parameters/parameter")
    paramlookup <- map_df(parameters, get_param_attr)
    write_csv(paramlookup, "data/paramlookup.csv")
}

query_result <- read_xml("query_result.xml")

makelookuptables(query_result)
