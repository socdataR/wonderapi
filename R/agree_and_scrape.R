agree_and_scrape <- function(dbname = "natality-current",
                             dbcode = "D66",
                             submit = "action-I Agree") {

    url1 <- paste0("https://wonder.cdc.gov/",dbname,".html")
    url2 <- paste0("https://wonder.cdc.gov/controller/datarequest/", dbcode)


# determine where the I agree button is located:
# xml2::read_html(url1) %>% rvest::html_form()
# It's [[2]]

# Submit "I agree" and then get web site contents
# (See: https://stackoverflow.com/questions/39779004/having-difficulty-navigating-webpages-using-rvest-package)

    if (!is.na(submit)) {
        session <- rvest::session(url1)
        form <- rvest::html_form(session)[[2]]
        webdata <- rvest::session_submit(session, form, submit = submit) %>%
            xml2::read_html(url2)
    } else {
        webdata <- xml2::read_html(url1)
    }
return(webdata)
}

