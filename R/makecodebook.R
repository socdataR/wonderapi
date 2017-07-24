# functions

byvariables <- function(x) {


dscode <- "D66"
dsname <- "natality-current"
submit <-  "action-I Agree"

# dscode <- "D8"
# dsname <- "vaers"
# submit <-  "tab-request"

# dscode <- "D76"
# dsname <- <- "ucd-icd10"
# submit <-  "action-I Agree"

firstM <- TRUE
formdata <- agree_and_scrape()
if (!file.exists("data-raw/names")) {
querydata <- query.defaults
testdata <- querydata[[2]]
precode <- strsplit(testdata$name, "_")[[1]][1]

if (precode == "B") {
    byvariables(testdata)
} else {
    print("I don't recognize that precode.")
}

# if section <> NA print section

# look at first letter of name
# if B call byvariables(name, firstB)




# Source of this and following quotes:
# # https://wonder.cdc.gov/wonder/help/WONDER-API.html
# "B_	are 'by-variables' or those parameters selected in the 'Group Results By' and the 'And By' drop-down lists in the 'Request Form.' These 'by-variables' are the cross-tabulations, stratifications or indexes to the query results. Expect the results data table to show a row for each category in the by-variables, and a column for each measure. For example, if you wish to compare data by sex, then 'group results by' gender, to get a row for females and a row for males in the output."



# if M call measures(name, firstM)

# "M_	are measures to return, the default measures plus any optional measures."

# "V_	are variable values to limit in the 'where' clause of the query, found in multiple select list boxes and advanced finder text entry boxes in the 'Request Form.'"

# "F_	are values highlighted in a 'Finder' control for hierarchical lists, such the 'Regions/Divisions/States/Counties hierarchical' list."

# "I_	are the contents of the 'Currently selected' information areas next to 'Finder' controls in the 'Request Form.'"

# "VM_	are values for non-standard age adjusted rates (see mortality online databases)."

# "O_	are other parameters, such as radio buttons, checkboxes, and lists that are not data categories (Calculate Rates Per). Among the things an 'O_' may specify:
#     'O_age' sets which field is used for age groups in the Detailed Mortality 1999-2013 (D76) online database example, such as whether the radio button is set to use the single-year age groups;
# 'O_ucd' sets which field to use for underlying cause of death in the Detailed Mortality 1999-2013 (D76) online database example, such as	whether the radio button is set to use the ICD chapters, or the ICD 113 selected causes or the ICD 130 selected causes for infants;
# 'O_V1_fmode' in the example files sets the 'mode' for 'Finder' control selections that specify values under the specified data variable field. In the examples, the 'V1' field refers to the D76.V1 'Year/Month' field. The 'fmode' value specifies whether to pull selections from the Finder's select list, or to pull selections from the 'Advanced Finder' text entries. For example, when 'freg' is the value, then the 'Finder' control is in 'regular' mode, and the 'F_' values are used as query criteria. Change 'freg' to 'fadv' when using the 'V_' values, per an advanced mode 'Finder' control. In the example files, the 'O_V1_fmode' value controls whether we use values specified under 'F_D76.V1' or 'V_D76.V1' as query criteria, in the examples. When 'Finder' is regular mode, then the values under the example 'F_D76.V1' specify each year separately"



inputnodes <- webdata %>% html_nodes("input")
type <- inputnodes %>% html_attr("type")
name <- inputnodes %>% html_attr("name")
value <- inputnodes %>% html_attr("value")
id <- inputnodes %>% html_attr("id")

t1 <- tibble(type, name, value, id)

labels <- webdata %>% html_nodes("label")
forfield <- labels %>% html_attr("for")
labeltext <- labels %>% html_text() %>%
    # get rid of long help links
    str_replace_all("\\(http.*\\)", "")

labeltib <- tibble(id = forfield, label = labeltext) %>%
    na.omit()

tib <- left_join(t1, labeltib, by = "id") %>%
    select(-id) %>%
    arrange(name, value) %>% unique()


getattr <- function(selectnode) {
    name <- selectnode %>% html_attr("name")
    id <- selectnode %>% html_attr("id")
    optnodes <- selectnode %>% html_nodes("option")
    value <- optnodes %>% html_attr("value") %>%
        # so *All* doesn't lose asterisks and go italic
        str_replace_all("\\*", "\\\\*")
    desc <- optnodes %>% html_text()
    data.frame(name, id, value, desc)
}

tidydata <- webdata %>% html_nodes("select") %>%
    map_df(getattr) %>%
    left_join(labeltib, by = "id") %>%
    select(label, name, value, desc, -id) %>%
    arrange(name)

tidydata





