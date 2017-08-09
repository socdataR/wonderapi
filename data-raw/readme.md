# wonderapi
Joyce Robbins  
8/9/2017  


## Introduction
This package makes it easier to use the CDC Wonder API.  It does so by employing hidden default query lists and lookup tables, allowing users to focus only on the variables they're interested in obtaining, and to write queries using human reading (English) names rather than numeric codes.

The best way to become familiar with CDC Wonder API options is to use the web interface: [https://wonder.cdc.gov](https://wonder.cdc.gov), as the options available through the API are nearly identical. The greatest difference is that location variables are not available through the API.  

## Understanding the structure of a query  

Queries are composed of parameter name-value pairs.  Setting up a query without assistance is complex because the query must be submitted as an .xml file with a long list of required parameters, such as [here (Example 1)](https://wonder.cdc.gov/wonder/help/API-Examples/D76_Example1-req.xml) and [here (Example 2)](https://wonder.cdc.gov/wonder/help/API-Examples/D76_Example2-req.xml). The point of the package is to prevent your having to create requests in this form.  It relies on the `wondr` package which creates converts R lists to xml and makes the query. The value of this package is in easing the process of setting up the query and tidying the results:

The `wonderapi::getData` function  
* calls `wondr::make_query`  
* processes the results  
* returns tidy data frame  

## Codebooks

Codebooks are provided as package vignettes to allow the user to conveniently look up the names and values of available parameters in each dataset.  The codebooks are an important contribution of the package and are not provided by the CDC.  They are generated automatically by [this script](https://github.com/socdataR/wonderapi/blob/master/R/make_codebook_vignette.R), which scrapes the CDC Wonder web interface form, and displays parameter names and values in human readable form.  The benefit of this method is the ability to quickly produce and update codebook vignettes that closely follow the web interface, with parameters appearing in the same order.  It also means, however, that the codebooks contain more information than the typical user needs to submit a query.  Most users will only need to group by variables (codes beginning with "B_"), measures (codes beginning with "M_"), and limiting variables (codes beginning with "V_"). 

Although some of the parameter names are long and/or awkward, for the sake of consistency, we follow the CDC names exactly. **The only exception is that any content that appears in parentheses should be dropped.** For example, "Fertility Rate" can be substituted for "M_5", but "Fertility Rate (Census Region, Census Division, HHS Region, State, County, Year, Age of Mother, Race) cannot.

## Default query lists and requests  

To facilitate the process of designing a query list, this package relies on default query lists. Each default query is set to request a single Group By Results parameter, generally set to `"Year"`. It is set to request the measures that are listed as default measures on the web interface (i.e. `Births` for [the Births dataset](https://wonder.cdc.gov/controller/datarequest/D76); `Deaths`, `Population` and `Crude Rate` for the [Detailed Mortality dataset](https://wonder.cdc.gov/controller/datarequest/D76).) To see the default settings, perform a query request without specifying a querylist: 
### Disclaimer #1
I did my best but there are no guarantees that the default lists are set up properly.


```r
library(tidyverse)
library(wonderapi)
getData(TRUE, "Natality for 2007 - 2015") %>% head()
```

```
## # A tibble: 6 x 2
##    Year  Births
##   <dbl>   <dbl>
## 1  2007 4316233
## 2  2008 4247694
## 3  2009 4130665
## 4  2010 3999386
## 5  2011 3953590
## 6  2012 3952841
```

```r
getData(TRUE, "Detailed Mortality") %>% head()
```

```
## # A tibble: 6 x 4
##    Year Deaths Population `Crude Rate`
##   <dbl>  <dbl>      <dbl>        <dbl>
## 1  1999 563056  279040168        201.8
## 2  2000 566625  281421906        201.3
## 3  2001 567436  284968955        199.1
## 4  2002 570563  287625193        198.4
## 5  2003 570453  290107933        196.6
## 6  2004 567458  292805298        193.8
```

## Customized queries  

There are different types of parameters.  Most critical are Group Results By and Measures. The Group Results By parameters serve as keys for grouping the data; the maximum number of Group Results By parameters is five. 

To make changes to the default list, first create a list of lists, wherein each nested list is a name-value pair.  For example, the following changes the first (and currently only) "Group Results By" variable to Weekday:


```r
mylist <- list(list("Group Results By", "Weekday"))
getData(TRUE, "Detailed Mortality", mylist) %>% head()
```

As the set up is slightly different depending on the parameter type, more details on setting up the name-value pairs by parameter types are provided below.

### Group By Variables  

Each dataset allows for five group by variables, codes for which are `"B_1", "B_2", "B_3", "B_4",` and `"B_5"`.  `"Group By Results"` may be substituted for `"B_1"` and `"And By"` for `"B_2"`. `"B_3"` through `"B_5"` may not be substituted to avoid ambiguity (this may change in the future.) Values -- in this case, the group by variables -- may be specified by code or human readable name. The following, thus, are equivalent:


```r
## not run
mylist <- list(list("B_1", "D66.V2"))
mylist <- list(list("Group Results By", "Race"))
mylist <- list(list("B_1", "Race"))
mylist <- list(list("Group Results By", "D66.V2"))
```

See the appropriate **codebook** for all group by options.  

### Measures
Measures do not need values; it is sufficient to specify a name only:


```r
mylist <- list(list("Group Results By", "Marital Status"),
               list("And By", "Year"),
               list("Average Age of Mother", ""))
mydata <- getData(TRUE, "Natality for 2007 - 2015", mylist)
mydata
```

```
## # A tibble: 18 x 4
##    `Marital Status`  Year  Births `Average Age of Mother`
##               <chr> <dbl>   <dbl>                   <dbl>
##  1          Married  2007 2601186                   29.52
##  2          Married  2008 2521128                   29.60
##  3          Married  2009 2437007                   29.70
##  4          Married  2010 2365915                   29.84
##  5          Married  2011 2345817                   29.94
##  6          Married  2012 2343222                   30.03
##  7          Married  2013 2336308                   30.15
##  8          Married  2014 2383206                   30.26
##  9          Married  2015 2376970                   30.37
## 10        Unmarried  2007 1715047                   24.11
## 11        Unmarried  2008 1726566                   24.21
## 12        Unmarried  2009 1693658                   24.36
## 13        Unmarried  2010 1633471                   24.56
## 14        Unmarried  2011 1607773                   24.80
## 15        Unmarried  2012 1609619                   25.00
## 16        Unmarried  2013 1595873                   25.25
## 17        Unmarried  2014 1604870                   25.52
## 18        Unmarried  2015 1601527                   25.76
```


By returning a tidy data frame, the query results are ready to be plotted without any additional data manipulation:  


```r
ggplot(mydata, aes(x = Year, y = Births, color = `Marital Status`)) + 
    geom_line() + ggtitle("Births by Marital Status")
```

<img src="readme_files/figure-html/unnamed-chunk-5-1.png" style="display: block; margin: auto;" />

```r
ggplot(mydata, aes(x = Year, y = `Average Age of Mother`,
                   color = `Marital Status`)) + geom_line() + geom_point() +
    ylab("age (in years)") + ggtitle("Average Age of Mother")
```

<img src="readme_files/figure-html/unnamed-chunk-5-2.png" style="display: block; margin: auto;" />


```r
mydata2 <- mydata %>% 
    select(-`Average Age of Mother`) %>% 
    spread(key = `Marital Status`, value = `Births`) %>% 
    mutate(Total = Married + Unmarried)
ggplot(mydata2, aes(x = Year, y = Unmarried / Total)) + geom_line() +
    geom_point() + ggtitle("Births to Unmarried Mothers as % of Total") +
    ylab("Percent of Total Births")
```

<img src="readme_files/figure-html/unnamed-chunk-6-1.png" style="display: block; margin: auto;" />

Some of the datasets, such as the Births, are divided into multiple databases by time period. `wonderapi` makes it easy to combine the data into one data frame. (Care needs to be taken as the variables are not identical in all. For example, the 1995 - 2002 dataset does not have any measure options; it only returns number of births. To find out what's available, see the codebooks [ADD LINK] and crosscheck with the [CDC Wonder API web interface](https://wonder.cdc.gov).)  


```r
births <- rbind(getData(TRUE, "Natality for 1995 - 2002"),
                getData(TRUE, "Natality for 2003 - 2006"),
                getData(TRUE, "Natality for 2007 - 2015"))
ggplot(births, aes(Year, Births)) + geom_line() + 
    ggtitle("U.S. Births by Year, 1995 - 2015")
```

<img src="readme_files/figure-html/unnamed-chunk-7-1.png" style="display: block; margin: auto;" />


### Errors
There are two basic types of errors: those caused by the `wonderapi` package and those due to constraints of the CDC Wonder API. Ideally, all errors would be caught before queries are made, however this is not possible since there are many quirky rules and it is beyond the scope of this package to check for all of them.  What the package does do is toss out any name-value pairs in which the _name_ is not recognized.  (Value checking will be added in the future.) For example:  


```r
getData(TRUE, "Detailed Mortality", 
        list(list("Suspect", "Mrs. Peacock"))) %>% head()
```

```
## Ignoring: "Suspect",...(not recognized)
```

```
## # A tibble: 6 x 4
##    Year Deaths Population `Crude Rate`
##   <dbl>  <dbl>      <dbl>        <dbl>
## 1  1999 563056  279040168        201.8
## 2  2000 566625  281421906        201.3
## 3  2001 567436  284968955        199.1
## 4  2002 570563  287625193        198.4
## 5  2003 570453  290107933        196.6
## 6  2004 567458  292805298        193.8
```

It is common to get CDC errors, which look like this:

```r
mylist <- list(list("And By", "Education"), 
               list("Birth Rate (Census Region, Census Division, HHS Region, State, County, Year, Race)", ""))
getData(TRUE, "Natality for 2007 - 2015", mylist) %>% head()
```

```
## Error in wondr::make_query(querylist, dbcode): Internal Server Error (HTTP 500).
```

If this occurs, the best approach is to visit the [CDC Wonder API web interface](https://wonder.cdc.gov) and try the same query.  If all goes well, you will receive more detailed information on what went wrong:  

![](NatalityError.png)

We learn that we can't include "Education" if we request the "Birth Rate" measure. If we try again with "Race" instead of "Education", it works:

```r
mylist <- list(list("And By", "Race"), 
               list("Birth Rate (Census Region, Census Division, HHS Region, State, County, Year, Race)", ""))
getData(TRUE, "Natality for 2007 - 2015", mylist) %>% head()
```

```
## # A tibble: 6 x 5
##    Year                             Race  Births `Total Population`
##   <dbl>                            <chr>   <dbl>              <dbl>
## 1  2007 American Indian or Alaska Native   49443            3829898
## 2  2007        Asian or Pacific Islander  254488           15559373
## 3  2007        Black or African American  675676           40451108
## 4  2007                            White 3336626          241390828
## 5  2008 American Indian or Alaska Native   49537            3983929
## 6  2008        Asian or Pacific Islander  253185           16094699
## # ... with 1 more variables: `Birth Rate` <dbl>
```






