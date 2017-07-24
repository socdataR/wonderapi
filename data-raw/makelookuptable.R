# create three lookup tables:
# variablelookup.csv, measurelookup.csv, otherparamlookup.csv
# used to create codebook

makelookuptables <- function() {

get_var_attr <- function(variablenode) {
        code <- variablenode %>% xml_attr("code")
        label <- variablenode %>% xml_attr("label")
        valuenodes <- variablenode %>% xml_nodes("value")
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

get_param_attr <- function(variablenode) {
    code <- variablenode %>% xml_attr("code")
    label <- variablenode %>% xml_attr("label")
    valuenodes <- variablenode %>% xml_nodes("option")
    if (length(valuenodes) > 0) {
        valuecode <- valuenodes %>% xml_attr("value")
        valuelabel <- valuenodes %>% xml_attr("label")
    }
    else {
        valuecode <- NA
        valuelabel <- NA
    }
    tibble(code, label, valuecode, valuelabel)
}




variables <- query_result %>%
    xml_find_all("//dataset/variable[@code]")

measures <- query_result %>%
    xml_find_all("//dataset/measure")

code <- measures %>% xml_attr("code")
label <- measures %>% xml_attr("label")

parameters <- query_result %>%
    xml_find_all("response/request/other-parameters/parameter")

rbind(map_df(variables, get_var_attr),
      tibble(code, label, valuecode = NA, valuelabel = NA),
      map_df(parameters, get_param_attr))

}

query_result <- read_xml("query_result.xml")
lookup <- makelookuptable(query_result)

params <- parameters %>% xml_attr("code")
resultparams <- cbind(params, parameters
                      %>% xml_nodes("value") %>% xml_text())

resultparams
#write_csv(lookup, "D66lookuptable.csv")
