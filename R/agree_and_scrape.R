agree_and_scrape <- function(dbname = "natality-current",
                             dbcode = "D66",
                             submit = "action-I Agree") {

    url1 <- paste0("https://wonder.cdc.gov/",dbname,".html")
    url2 <- paste0("https://wonder.cdc.gov/controller/datarequest/", dbcode)


# determine where the I agree button is located:
# read_html(url1) %>% html_form()
# It's [[3]]

# Submit "I agree" and then get web site contents
# (See: https://stackoverflow.com/questions/39779004/having-difficulty-navigating-webpages-using-rvest-package)

session <- rvest::html_session(url1)
form <- rvest::html_form(session)[[3]]

webdata <- rvest::submit_form(session, form, submit = submit) %>%
    xml2::read_html(url2)

return(webdata)
}
