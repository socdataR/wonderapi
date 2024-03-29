% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{dbnamelookup}
\alias{dbnamelookup}
\title{CDC Wonder dataset lookup table}
\format{
A data frame with 4 columns, 2 rows (will increase as data sets are added from this list: \url{https://wonder.cdc.gov/}
\describe{
  \item{dblabel}{friendly dataset name, from this list: \url{https://wonder.cdc.gov/}}
  \item{dbname}{dataset web page name, found by clicking on one of the datasets listed here -- \url{https://wonder.cdc.gov/} -- and looking at the resulting url.}
  \item{dbcode}{dataset code, found by clicking "I Agree" on the above page, and looking at the resulting url.}
  \item{dbagree}{dataset "agree" phrase, found by looking at the source code of the page with "I Agree" button}
  ...
}
}
\source{
\code{data-raw/create_data_files.R}
}
\usage{
dbnamelookup
}
\description{
contains codes, dataset names, url endings, and "I Agree" submit phrases (has to be external because it's needed to create internal data files)
}
\keyword{datasets}
