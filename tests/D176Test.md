D176Tests
================
Joyce Robbins
March 26, 2022

``` r
# Test of D176 Group By variables
# Residence Census Region
library(wonderapi)
getData("D176", list(list("Group Results By", "D176.V10-level1")))
```

    ## Message from query:
    ## Location group by variables (B_1 through B_5) were found: D176.V10-level1 Only national data are available for this dataset when using the WONDER web service. Please check that your query does not group results by region, division, state, county or urbanization, (B_1 through B_5), nor limit these location variables to any specific values. For more information please contact CDC WONDER customer support at cwus@cdc.gov or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "D176.V10-level1"))): Internal Server Error (HTTP 500).

``` r
# Residence Census Division
getData("D176", list(list("Group Results By", "D176.V10-level2")))
```

    ## Message from query:
    ## Location group by variables (B_1 through B_5) were found: D176.V10-level2 Only national data are available for this dataset when using the WONDER web service. Please check that your query does not group results by region, division, state, county or urbanization, (B_1 through B_5), nor limit these location variables to any specific values. For more information please contact CDC WONDER customer support at cwus@cdc.gov or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "D176.V10-level2"))): Internal Server Error (HTTP 500).

``` r
# Residence HHS Region
getData("D176", list(list("Group Results By", "D176.V27-level1")))
```

    ## Message from query:
    ## Location group by variables (B_1 through B_5) were found: D176.V27-level1 Only national data are available for this dataset when using the WONDER web service. Please check that your query does not group results by region, division, state, county or urbanization, (B_1 through B_5), nor limit these location variables to any specific values. For more information please contact CDC WONDER customer support at cwus@cdc.gov or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "D176.V27-level1"))): Internal Server Error (HTTP 500).

``` r
# Residence State
getData("D176", list(list("Group Results By", "D176.V9-level1")))
```

    ## Message from query:
    ## Location group by variables (B_1 through B_5) were found: D176.V9-level1 Only national data are available for this dataset when using the WONDER web service. Please check that your query does not group results by region, division, state, county or urbanization, (B_1 through B_5), nor limit these location variables to any specific values. For more information please contact CDC WONDER customer support at cwus@cdc.gov or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "D176.V9-level1"))): Internal Server Error (HTTP 500).

``` r
# Residence County
getData("D176", list(list("Group Results By", "D176.V9-level2")))
```

    ## Message from query:
    ## Location group by variables (B_1 through B_5) were found: D176.V9-level2 Only national data are available for this dataset when using the WONDER web service. Please check that your query does not group results by region, division, state, county or urbanization, (B_1 through B_5), nor limit these location variables to any specific values. For more information please contact CDC WONDER customer support at cwus@cdc.gov or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "D176.V9-level2"))): Internal Server Error (HTTP 500).

``` r
# Residence 2013 Urbanization
getData("D176", list(list("Group Results By", "D176.V19")))
```

    ## Message from query:
    ## Location group by variables (B_1 through B_5) were found: D176.V19 Only national data are available for this dataset when using the WONDER web service. Please check that your query does not group results by region, division, state, county or urbanization, (B_1 through B_5), nor limit these location variables to any specific values. For more information please contact CDC WONDER customer support at cwus@cdc.gov or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "D176.V19"))): Internal Server Error (HTTP 500).

``` r
# Residence 2006 Urbanization
getData("D176", list(list("Group Results By", "D176.V11")))
```

    ## Message from query:
    ## To Group Results By 'Residence 2006 Urbanization' you must also select the 'Residence 2006 Urbanization' button where found below section #1. Location group by variables (B_1 through B_5) were found: D176.V11 Only national data are available for this dataset when using the WONDER web service. Please check that your query does not group results by region, division, state, county or urbanization, (B_1 through B_5), nor limit these location variables to any specific values. For more information please contact CDC WONDER customer support at cwus@cdc.gov or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "D176.V11"))): Internal Server Error (HTTP 500).

``` r
# Occurrence Census Region
getData("D176", list(list("Group Results By", "D176.V80-level1")))
```

    ## Message from query:
    ## Location group by variables (B_1 through B_5) were found: D176.V80-level1 Only national data are available for this dataset when using the WONDER web service. Please check that your query does not group results by region, division, state, county or urbanization, (B_1 through B_5), nor limit these location variables to any specific values. For more information please contact CDC WONDER customer support at cwus@cdc.gov or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "D176.V80-level1"))): Internal Server Error (HTTP 500).

``` r
# Occurrence Census Division
getData("D176", list(list("Group Results By", "D176.V80-level2")))
```

    ## Message from query:
    ## Location group by variables (B_1 through B_5) were found: D176.V80-level2 Only national data are available for this dataset when using the WONDER web service. Please check that your query does not group results by region, division, state, county or urbanization, (B_1 through B_5), nor limit these location variables to any specific values. For more information please contact CDC WONDER customer support at cwus@cdc.gov or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "D176.V80-level2"))): Internal Server Error (HTTP 500).

``` r
# Occurrence HHS Region
getData("D176", list(list("Group Results By", "D176.V77-level1")))
```

    ## Message from query:
    ## Location group by variables (B_1 through B_5) were found: D176.V77-level1 Only national data are available for this dataset when using the WONDER web service. Please check that your query does not group results by region, division, state, county or urbanization, (B_1 through B_5), nor limit these location variables to any specific values. For more information please contact CDC WONDER customer support at cwus@cdc.gov or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "D176.V77-level1"))): Internal Server Error (HTTP 500).

``` r
# Occurrence State
getData("D176", list(list("Group Results By", "D176.V79-level1")))
```

    ## Message from query:
    ## Location group by variables (B_1 through B_5) were found: D176.V79-level1 Only national data are available for this dataset when using the WONDER web service. Please check that your query does not group results by region, division, state, county or urbanization, (B_1 through B_5), nor limit these location variables to any specific values. For more information please contact CDC WONDER customer support at cwus@cdc.gov or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "D176.V79-level1"))): Internal Server Error (HTTP 500).

``` r
# Occurrence County
getData("D176", list(list("Group Results By", "D176.V79-level2")))
```

    ## Message from query:
    ## Location group by variables (B_1 through B_5) were found: D176.V79-level2 Only national data are available for this dataset when using the WONDER web service. Please check that your query does not group results by region, division, state, county or urbanization, (B_1 through B_5), nor limit these location variables to any specific values. For more information please contact CDC WONDER customer support at cwus@cdc.gov or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "D176.V79-level2"))): Internal Server Error (HTTP 500).

``` r
# Occurrence 2013 Urbanization
getData("D176", list(list("Group Results By", "D176.V89"),
                     list("O_urban", "D176.V19")))
```

    ## Error in getData("D176", list(list("Group Results By", "D176.V89"), list("O_urban", : It is not possible to limit results by a location field or urbanization via the WONDER API, although it is in the web application.
    ## See https://wonder.cdc.gov/wonder/help/WONDER-API.html for more information.

``` r
# Occurrence 2006 Urbanization
getData("D176", list(list("Group Results By", "D176.V81"),
                     list("O_urban", "D176.V11")))
```

    ## Error in getData("D176", list(list("Group Results By", "D176.V81"), list("O_urban", : It is not possible to limit results by a location field or urbanization via the WONDER API, although it is in the web application.
    ## See https://wonder.cdc.gov/wonder/help/WONDER-API.html for more information.

``` r
# Ten-Year Age Groups
getData("D176", list(list("Group Results By", "D176.V5")))
```

    ## # A tibble: 12 × 4
    ##    `Ten-Year Age Groups`  Deaths Population     `Crude Rate`  
    ##    <chr>                   <dbl> <chr>          <chr>         
    ##  1 < 1 year                83046 18,836,290     440.9         
    ##  2 1-4 years               15065 78,454,544     19.2          
    ##  3 5-14 years              23020 205,045,734    11.2          
    ##  4 15-24 years            137338 213,325,362    64.4          
    ##  5 25-34 years            281496 229,847,033    122.5         
    ##  6 35-44 years            405413 209,345,608    193.7         
    ##  7 45-54 years            755983 203,605,000    371.3         
    ##  8 55-64 years           1725343 211,932,204    814.1         
    ##  9 65-74 years           2591633 159,623,943    1,623.6       
    ## 10 75-84 years           3132660 80,718,887     3,881.0       
    ## 11 85+ years             3844636 33,124,721     11,606.5      
    ## 12 Not Stated                503 Not Applicable Not Applicable

``` r
# Five-Year Age Groups
getData("D176", list(list("Group Results By", "D176.V51"),
                     list("O_age", "D176.V51")))
```

    ## # A tibble: 23 × 4
    ##    `Five-Year Age Groups` Deaths Population  `Crude Rate`
    ##    <chr>                   <dbl> <chr>       <chr>       
    ##  1 < 1 year                83046 18,836,290  440.9       
    ##  2 1-4 years               15065 78,454,544  19.2        
    ##  3 5-9 years                9476 101,104,670 9.4         
    ##  4 10-14 years             13544 103,941,064 13.0        
    ##  5 15-19 years             47388 105,034,578 45.1        
    ##  6 20-24 years             89950 108,290,784 83.1        
    ##  7 25-29 years            125520 116,764,501 107.5       
    ##  8 30-34 years            155976 113,082,532 137.9       
    ##  9 35-39 years            186230 108,786,020 171.2       
    ## 10 40-44 years            219183 100,559,588 218.0       
    ## # … with 13 more rows

``` r
# Single-Year Age Groups
getData("D176", list(list("Group Results By", "D176.V51"),
                     list("O_age", "D176.V51")))
```

    ## # A tibble: 23 × 4
    ##    `Five-Year Age Groups` Deaths Population  `Crude Rate`
    ##    <chr>                   <dbl> <chr>       <chr>       
    ##  1 < 1 year                83046 18,836,290  440.9       
    ##  2 1-4 years               15065 78,454,544  19.2        
    ##  3 5-9 years                9476 101,104,670 9.4         
    ##  4 10-14 years             13544 103,941,064 13.0        
    ##  5 15-19 years             47388 105,034,578 45.1        
    ##  6 20-24 years             89950 108,290,784 83.1        
    ##  7 25-29 years            125520 116,764,501 107.5       
    ##  8 30-34 years            155976 113,082,532 137.9       
    ##  9 35-39 years            186230 108,786,020 171.2       
    ## 10 40-44 years            219183 100,559,588 218.0       
    ## # … with 13 more rows

``` r
# Single-Year Ages
getData("D176", list(list("Group Results By", "D176.V52"),
                     list("O_age", "D176.V52")))
```

    ## # A tibble: 102 × 4
    ##    `Single-Year Ages` Deaths Population `Crude Rate`
    ##    <chr>               <dbl> <chr>      <chr>       
    ##  1 < 1 year            83046 18,836,290 440.9       
    ##  2 1 year               5864 19,064,151 30.8        
    ##  3 2 years              3863 19,472,556 19.8        
    ##  4 3 years              2954 19,799,805 14.9        
    ##  5 4 years              2384 20,118,032 11.9        
    ##  6 5 years              2156 20,201,407 10.7        
    ##  7 6 years              1973 20,152,993 9.8         
    ##  8 7 years              1802 20,170,941 8.9         
    ##  9 8 years              1770 20,226,173 8.8         
    ## 10 9 years              1775 20,353,156 8.7         
    ## # … with 92 more rows

``` r
# Infant Age Groups
getData("D176", list(list("Group Results By", "D176.V6"),
                     list("O_age", "D176.V6")))
```

    ## # A tibble: 4 × 4
    ##   `Infant Age Groups` Deaths Population `Crude Rate`
    ##   <chr>                <dbl>      <dbl>        <dbl>
    ## 1 < 1 day              31407   18380193        171. 
    ## 2 1-6 days             12183   18380193         66.3
    ## 3 7-27 days            10794   18380193         58.7
    ## 4 28-364 days          28662   18380193        156.

``` r
# Gender
getData("D176", list(list("Group Results By", "D176.V7")))
```

    ## # A tibble: 2 × 4
    ##   Gender  Deaths Population `Crude Rate`
    ##   <chr>    <dbl>      <dbl>        <dbl>
    ## 1 Female 6217678  834304717         745.
    ## 2 Male   6778458  809554609         837.

``` r
# Hispanic Origin
getData("D176", list(list("Group Results By", "D176.V17")))
```

    ## # A tibble: 3 × 4
    ##   `Hispanic Origin`        Deaths Population     `Crude Rate`  
    ##   <chr>                     <dbl> <chr>          <chr>         
    ## 1 Hispanic or Latino      1078330 304,382,620    354.3         
    ## 2 Not Hispanic or Latino 11885009 1,339,476,706  887.3         
    ## 3 Not Stated                32797 Not Applicable Not Applicable

``` r
# Single Race 6
getData("D176", list(list("Group Results By", "D176.V42")))
```

    ## # A tibble: 6 × 4
    ##   `Single Race 6`                             Deaths Population `Crude Rate`
    ##   <chr>                                        <dbl>      <dbl>        <dbl>
    ## 1 American Indian or Alaska Native             96287   21214583         454.
    ## 2 Asian                                       339775   98872296         344.
    ## 3 Black or African American                  1663044  221472741         751.
    ## 4 Native Hawaiian or Other Pacific Islander    18564    4137434         449.
    ## 5 White                                     10808280 1251590458         864.
    ## 6 More than one race                           70186   46571814         151.

``` r
# Single Race 15
getData("D176", list(list("Group Results By", "D176.V43")))
```

    ## # A tibble: 15 × 2
    ##    `Single Race 15`                    Deaths
    ##    <chr>                                <dbl>
    ##  1 White                             10808280
    ##  2 Black                              1663044
    ##  3 American Indian or Alaskan Native    96287
    ##  4 Asian Indian                         46799
    ##  5 Chinese                              76058
    ##  6 Filipino                             67764
    ##  7 Japanese                             37582
    ##  8 Korean                               29966
    ##  9 Vietnamese                           34351
    ## 10 Other Asian                          47255
    ## 11 Hawaiian                              4090
    ## 12 Guamanian                             2285
    ## 13 Samoan                                4363
    ## 14 Other Pacific Islander                7826
    ## 15 More than one race                   70186

``` r
# Single/Multi Race 31
getData("D176", list(list("Group Results By", "D176.V44")))
```

    ## # A tibble: 27 × 2
    ##    `Single/Multi Race 31`                                     Deaths
    ##    <chr>                                                       <dbl>
    ##  1 White (only)                                             10808280
    ##  2 Black (only)                                              1663044
    ##  3 AIAN (American Indian or Alaskan Native) (only)             96287
    ##  4 Asian (only)                                               339775
    ##  5 NHOPI (Native Hawaiian or Other Pacific Islander) (only)    18564
    ##  6 Black and White                                             11856
    ##  7 Black and AIAN                                               3607
    ##  8 Black and Asian                                              1591
    ##  9 Black and NHOPI                                               522
    ## 10 AIAN and White                                              25109
    ## # … with 17 more rows

``` r
# Year
getData("D176", list(list("Group Results By", "D176.V1-level1")))
```

    ## # A tibble: 5 × 4
    ##   Year                            Deaths Population `Crude Rate`
    ##   <chr>                            <dbl>      <dbl>        <dbl>
    ## 1 2018                           2839205  327167434         868.
    ## 2 2019                           2854838  328239523         870.
    ## 3 2020                           3383729  329484123        1027 
    ## 4 2021 (provisional)             3442228  329484123        1045.
    ## 5 2022 (provisional and partial)  476136  329484123         144.

``` r
# Month
getData("D176", list(list("Group Results By", "D176.V1-level2")))
```

    ## # A tibble: 50 × 4
    ##    Month      Deaths Population     `Crude Rate`  
    ##    <chr>       <dbl> <chr>          <chr>         
    ##  1 Jan., 2018 286744 Not Applicable Not Applicable
    ##  2 Feb., 2018 236998 Not Applicable Not Applicable
    ##  3 Mar., 2018 248805 Not Applicable Not Applicable
    ##  4 Apr., 2018 233164 Not Applicable Not Applicable
    ##  5 May, 2018  228772 Not Applicable Not Applicable
    ##  6 Jun., 2018 220103 Not Applicable Not Applicable
    ##  7 Jul., 2018 225111 Not Applicable Not Applicable
    ##  8 Aug., 2018 224254 Not Applicable Not Applicable
    ##  9 Sep., 2018 218696 Not Applicable Not Applicable
    ## 10 Oct., 2018 233903 Not Applicable Not Applicable
    ## # … with 40 more rows

``` r
# MMWR Year
getData("D176", list(list("Group Results By", "D176.V100-level1"),
                     list("O_dates", "MMWR")))
```

    ## Couldn't find: "O_dates" but including anyway.

    ## # A tibble: 5 × 4
    ##   `MMWR Year`                     Deaths Population `Crude Rate`
    ##   <chr>                            <dbl>      <dbl>        <dbl>
    ## 1 2018                           2822979  327167434         863.
    ## 2 2019                           2845958  328239523         867 
    ## 3 2020                           3434127  329484123        1042.
    ## 4 2021 (provisional)             3427318  329484123        1040.
    ## 5 2022 (provisional and partial)  465754  329484123         141.

``` r
# MMWR Week
getData("D176", list(list("Group Results By", "D176.V100-level2"),
                     list("O_dates", "MMWR")))
```

    ## Couldn't find: "O_dates" but including anyway.

    ## # A tibble: 221 × 4
    ##    `MMWR Week`                           Deaths Population     `Crude Rate`  
    ##    <chr>                                  <dbl> <chr>          <chr>         
    ##  1 2018 Week 01 ending January 06, 2018   57113 Not Applicable Not Applicable
    ##  2 2018 Week 02 ending January 13, 2018   67495 Not Applicable Not Applicable
    ##  3 2018 Week 03 ending January 20, 2018   64647 Not Applicable Not Applicable
    ##  4 2018 Week 04 ending January 27, 2018   62780 Not Applicable Not Applicable
    ##  5 2018 Week 05 ending February 03, 2018  60974 Not Applicable Not Applicable
    ##  6 2018 Week 06 ending February 10, 2018  61110 Not Applicable Not Applicable
    ##  7 2018 Week 07 ending February 17, 2018  59779 Not Applicable Not Applicable
    ##  8 2018 Week 08 ending February 24, 2018  57793 Not Applicable Not Applicable
    ##  9 2018 Week 09 ending March 03, 2018     56692 Not Applicable Not Applicable
    ## 10 2018 Week 10 ending March 10, 2018     57093 Not Applicable Not Applicable
    ## # … with 211 more rows

``` r
# Autopsy
getData("D176", list(list("Group Results By", "D176.V20")))
```

    ## # A tibble: 3 × 4
    ##   Autopsy   Deaths Population     `Crude Rate`  
    ##   <chr>      <dbl> <chr>          <chr>         
    ## 1 No      11615163 Not Applicable Not Applicable
    ## 2 Yes       991161 Not Applicable Not Applicable
    ## 3 Unknown   389812 Not Applicable Not Applicable

``` r
# Place of Death
getData("D176", list(list("Group Results By", "D176.V21")))
```

    ## # A tibble: 8 × 4
    ##   `Place of Death`                     Deaths Population     `Crude Rate`  
    ##   <chr>                                 <dbl> <chr>          <chr>         
    ## 1 Medical Facility - Inpatient        3966032 Not Applicable Not Applicable
    ## 2 Medical Facility - Outpatient or ER  789668 Not Applicable Not Applicable
    ## 3 Medical Facility - Dead on Arrival    39475 Not Applicable Not Applicable
    ## 4 Decedent's home                     4237633 Not Applicable Not Applicable
    ## 5 Hospice facility                     882071 Not Applicable Not Applicable
    ## 6 Nursing home/long term care         2213143 Not Applicable Not Applicable
    ## 7 Other                                865812 Not Applicable Not Applicable
    ## 8 Place of death unknown                 2302 Not Applicable Not Applicable

``` r
# UCD - 15 Leading Causes of Death
getData("D176", list(list("Group Results By", "D176.V28")))
```

    ## # A tibble: 15 × 4
    ##    `UCD - 15 Leading Causes of Death`             Deaths Population `Crude Rate`
    ##    <chr>                                           <dbl>      <dbl>        <dbl>
    ##  1 #Diseases of heart (I00-I09,I11,I13,I20-I51)   2.79e6 1643859326        170. 
    ##  2 #Malignant neoplasms (C00-C97)                 2.47e6 1643859326        150. 
    ##  3 #COVID-19 (U07.1)                              8.55e5 1643859326         52  
    ##  4 #Accidents (unintentional injuries) (V01-X59,… 6.91e5 1643859326         42.1
    ##  5 #Cerebrovascular diseases (I60-I69)            6.41e5 1643859326         39  
    ##  6 #Chronic lower respiratory diseases (J40-J47)  6.29e5 1643859326         38.3
    ##  7 #Alzheimer disease (G30)                       5.14e5 1643859326         31.3
    ##  8 #Diabetes mellitus (E10-E14)                   3.90e5 1643859326         23.7
    ##  9 #Nephritis, nephrotic syndrome and nephrosis … 2.17e5 1643859326         13.2
    ## 10 #Influenza and pneumonia (J09-J18)             2.10e5 1643859326         12.8
    ## 11 #Chronic liver disease and cirrhosis (K70,K73… 2.01e5 1643859326         12.2
    ## 12 #Intentional self-harm (suicide) (*U03,X60-X8… 1.74e5 1643859326         10.6
    ## 13 #Septicemia (A40-A41)                          1.65e5 1643859326         10  
    ## 14 #Essential hypertension and hypertensive rena… 1.62e5 1643859326          9.9
    ## 15 #Parkinson disease (G20-G21)                   1.53e5 1643859326          9.3

``` r
# UCD - 15 Leading Causes of Death (Infants)
getData("D176", list(list("Group Results By", "D176.V29")))
```

    ## Message from query:
    ## Please select age value '< 1 year' or the Infant Age Groups button when using the 130 Cause or Leading Infants List.

    ## Error in getData("D176", list(list("Group Results By", "D176.V29"))): Internal Server Error (HTTP 500).

``` r
# UCD - ICD Chapter
getData("D176", list(list("Group Results By", "D176.V2-level1")))
```

    ## # A tibble: 21 × 4
    ##    `UCD - ICD Chapter`                            Deaths Population `Crude Rate`
    ##    <chr>                                           <dbl>      <dbl>        <dbl>
    ##  1 Certain infectious and parasitic diseases      2.78e5 1643859326         16.9
    ##  2 Neoplasms                                      2.54e6 1643859326        154. 
    ##  3 Diseases of the blood and blood-forming organ… 4.64e4 1643859326          2.8
    ##  4 Endocrine, nutritional and metabolic diseases  6.30e5 1643859326         38.3
    ##  5 Mental and behavioural disorders               5.72e5 1643859326         34.8
    ##  6 Diseases of the nervous system                 1.01e6 1643859326         61.3
    ##  7 Diseases of the eye and adnexa                 2.45e2 1643859326          0  
    ##  8 Diseases of the ear and mastoid process        3.5 e2 1643859326          0  
    ##  9 Diseases of the circulatory system             3.71e6 1643859326        226. 
    ## 10 Diseases of the respiratory system             1.11e6 1643859326         67.3
    ## # … with 11 more rows

``` r
# UCD - ICD Sub-Chapter
getData("D176", list(list("Group Results By", "D176.V2-level2")))
```

    ## # A tibble: 173 × 4
    ##    `UCD - ICD Sub-Chapter`                        Deaths Population `Crude Rate`
    ##    <chr>                                           <dbl>      <dbl> <chr>       
    ##  1 Intestinal infectious diseases                  29839 1643859326 1.8         
    ##  2 Tuberculosis                                     2329 1643859326 0.1         
    ##  3 Certain zoonotic bacterial diseases               176 1643859326 0.0         
    ##  4 Other bacterial diseases                       179839 1643859326 10.9        
    ##  5 Infections with a predominantly sexual mode o…    182 1643859326 0.0         
    ##  6 Other spirochaetal diseases                        71 1643859326 0.0         
    ##  7 Rickettsioses                                     104 1643859326 0.0         
    ##  8 Viral infections of the central nervous system   3010 1643859326 0.2         
    ##  9 Arthropod-borne viral fevers and viral haemor…    484 1643859326 0.0         
    ## 10 Viral infections characterized by skin and mu…   1990 1643859326 0.1         
    ## # … with 163 more rows

``` r
# Underlying Cause of death
getData("D176", list(list("Group Results By", "D176.V2-level3")))
```

    ## Error: 'NA' does not exist in current working directory ('/Users/joycerobbins/wonderapi/tests').

``` r
# UCD - ICD-10 113 Cause List
getData("D176", list(list("Group Results By", "D176.V4")))
```

    ## # A tibble: 135 × 4
    ##    `UCD - ICD-10 113 Cause List`                  Deaths Population `Crude Rate`
    ##    <chr>                                           <dbl>      <dbl>        <dbl>
    ##  1 #Salmonella infections (A01-A02)                  244 1643859326          0  
    ##  2 #Shigellosis and amebiasis (A03,A06)               29 1643859326          0  
    ##  3 Certain other intestinal infections (A04,A07-…  29533 1643859326          1.8
    ##  4 #Tuberculosis (A16-A19)                          2329 1643859326          0.1
    ##  5 Respiratory tuberculosis (A16)                   1591 1643859326          0.1
    ##  6 Other tuberculosis (A17-A19)                      738 1643859326          0  
    ##  7 #Whooping cough (A37)                              28 1643859326          0  
    ##  8 #Meningococcal infection (A39)                    115 1643859326          0  
    ##  9 #Septicemia (A40-A41)                          165169 1643859326         10  
    ## 10 #Syphilis (A50-A53)                               172 1643859326          0  
    ## # … with 125 more rows

``` r
# UCD - ICD-10 130 Cause List (Infants)
getData("D176", list(list("Group Results By", "D176.V12"),
                     list("V_D176.V5", "1")))
```

    ## # A tibble: 137 × 4
    ##    `UCD - ICD-10 130 Cause List (Infants)`        Deaths Population `Crude Rate`
    ##    <chr>                                           <dbl>      <dbl> <chr>       
    ##  1 Certain infectious and parasitic diseases (A0…   2023   18836290 10.7        
    ##  2 Certain intestinal infectious diseases (A00-A…     43   18836290 0.2         
    ##  3 #Diarrhea and gastroenteritis of infectious o…    640   18836290 3.4         
    ##  4 #Whooping cough (A37)                              11   18836290 Unreliable  
    ##  5 #Meningococcal infection (A39)                     16   18836290 Unreliable  
    ##  6 #Septicemia (A40-A41)                             525   18836290 2.8         
    ##  7 #Congenital syphilis (A50)                         13   18836290 Unreliable  
    ##  8 Viral diseases (A80-B34,U07.1)                    604   18836290 3.2         
    ##  9 Other and unspecified viral diseases (A81-B00…    600   18836290 3.2         
    ## 10 #Candidiasis (B37)                                 16   18836290 Unreliable  
    ## # … with 127 more rows

``` r
# UCD - Injury Intent
getData("D176", list(list("Group Results By", "D176.V22")))
```

    ## # A tibble: 6 × 4
    ##   `UCD - Injury Intent`                      Deaths Population `Crude Rate`
    ##   <chr>                                       <dbl>      <dbl>        <dbl>
    ## 1 "Unintentional"                            691323 1643859326         42.1
    ## 2 "Suicide"                                  173817 1643859326         10.6
    ## 3 "Homicide"                                  79831 1643859326          4.9
    ## 4 "Undetermined "                             21613 1643859326          1.3
    ## 5 "Legal Intervention / Operations of War"     2518 1643859326          0.2
    ## 6 "Non-Injury, no intent classified"       12027034 1643859326        732.

``` r
# UCD - Injury Mechanism & All Other Leading Causes
getData("D176", list(list("Group Results By", "D176.V23")))
```

    ## # A tibble: 67 × 4
    ##    `UCD - Injury Mechanism & All Other Leading …` Deaths Population `Crude Rate`
    ##    <chr>                                           <dbl>      <dbl>        <dbl>
    ##  1 Cut/Pierce                                      10638 1643859326          0.6
    ##  2 Drowning                                        17846 1643859326          1.1
    ##  3 Fall                                           152557 1643859326          9.3
    ##  4 Fire/Flame                                      12704 1643859326          0.8
    ##  5 Hot object/Substance                              320 1643859326          0  
    ##  6 Firearm                                        157334 1643859326          9.6
    ##  7 Machinery                                        1962 1643859326          0.1
    ##  8 Motor Vehicle Traffic                          145898 1643859326          8.9
    ##  9 Other Pedal cyclist                              1421 1643859326          0.1
    ## 10 Other Pedestrian                                 3508 1643859326          0.2
    ## # … with 57 more rows

``` r
# UCD - Drug/Alcohol Induced
getData("D176", list(list("Group Results By", "D176.V25-level1")))
```

    ## # A tibble: 4 × 4
    ##   `UCD - Drug/Alcohol Induced`                    Deaths Population `Crude Rate`
    ##   <chr>                                            <dbl>      <dbl>        <dbl>
    ## 1 Drug-induced causes                             3.19e5 1643859326         19.4
    ## 2 Alcohol-induced causes                          1.83e5 1643859326         11.1
    ## 3 All other non-drug and non-alcohol causes       1.24e7 1643859326        754. 
    ## 4 Data not shown due to 6 month lag to account f… 1.06e5 1643859326          6.5

``` r
# UCD - Drug/Alcohol Induced Cause
getData("D176", list(list("Group Results By", "D176.V25-level2")))
```

    ## # A tibble: 9 × 4
    ##   `UCD - Drug/Alcohol Induced Cause`              Deaths Population `Crude Rate`
    ##   <chr>                                            <dbl>      <dbl>        <dbl>
    ## 1 Drug poisonings (overdose) Unintentional (X40-… 2.71e5 1643859326         16.5
    ## 2 Drug poisonings (overdose) Suicide (X60-X64)    1.68e4 1643859326          1  
    ## 3 Drug poisonings (overdose) Homicide (X85)       5.58e2 1643859326          0  
    ## 4 Drug poisonings (overdose) Undetermined (Y10-Y… 1.35e4 1643859326          0.8
    ## 5 All other drug-induced causes                   1.73e4 1643859326          1.1
    ## 6 Alcohol poisonings (overdose) (X45, X65, Y15)   9.27e3 1643859326          0.6
    ## 7 All other alcohol-induced causes                1.73e5 1643859326         10.6
    ## 8 All other non-drug and non-alcohol causes       1.24e7 1643859326        754. 
    ## 9 Data not shown due to 6 month lag to account f… 1.06e5 1643859326          6.5

``` r
# MCD - ICD Chapter
getData("D176", list(list("Group Results By", "D176.V13-level1")))
```

    ## # A tibble: 22 × 4
    ##    `MCD - ICD Chapter`                            Deaths Population `Crude Rate`
    ##    <chr>                                           <dbl>      <dbl>        <dbl>
    ##  1 Certain infectious and parasitic diseases      1.21e6 1643859326         73.3
    ##  2 Neoplasms                                      2.88e6 1643859326        175. 
    ##  3 Diseases of the blood and blood-forming organ… 3.97e5 1643859326         24.1
    ##  4 Endocrine, nutritional and metabolic diseases  2.44e6 1643859326        148. 
    ##  5 Mental and behavioural disorders               2.88e6 1643859326        175. 
    ##  6 Diseases of the nervous system                 1.62e6 1643859326         98.7
    ##  7 Diseases of the eye and adnexa                 1.25e4 1643859326          0.8
    ##  8 Diseases of the ear and mastoid process        4.60e3 1643859326          0.3
    ##  9 Diseases of the circulatory system             7.11e6 1643859326        433. 
    ## 10 Diseases of the respiratory system             3.78e6 1643859326        230. 
    ## # … with 12 more rows

``` r
# MCD - ICD Sub-Chapter
getData("D176", list(list("Group Results By", "D176.V13-level2")))
```

    ## # A tibble: 202 × 4
    ##    `MCD - ICD Sub-Chapter`                        Deaths Population `Crude Rate`
    ##    <chr>                                           <dbl>      <dbl> <chr>       
    ##  1 Intestinal infectious diseases                  55292 1643859326 3.4         
    ##  2 Tuberculosis                                     4433 1643859326 0.3         
    ##  3 Certain zoonotic bacterial diseases               242 1643859326 0.0         
    ##  4 Other bacterial diseases                       996151 1643859326 60.6        
    ##  5 Infections with a predominantly sexual mode o…    843 1643859326 0.1         
    ##  6 Other spirochaetal diseases                       372 1643859326 0.0         
    ##  7 Other diseases caused by chlamydiae                12 1643859326 Unreliable  
    ##  8 Rickettsioses                                     173 1643859326 0.0         
    ##  9 Viral infections of the central nervous system   3532 1643859326 0.2         
    ## 10 Arthropod-borne viral fevers and viral haemor…    608 1643859326 0.0         
    ## # … with 192 more rows

``` r
# Multiple Cause of death
getData("D176", list(list("Group Results By", "D176.V13-level3")))
```

    ## Error: 'NA' does not exist in current working directory ('/Users/joycerobbins/wonderapi/tests').

``` r
# MCD - ICD-10 113 Cause List
getData("D176", list(list("Group Results By", "D176.V15")))
```

    ## # A tibble: 137 × 4
    ##    `MCD - ICD-10 113 Cause List`                  Deaths Population `Crude Rate`
    ##    <chr>                                           <dbl>      <dbl>        <dbl>
    ##  1 Salmonella infections (A01-A02)                   401 1643859326          0  
    ##  2 Shigellosis and amebiasis (A03,A06)                53 1643859326          0  
    ##  3 Certain other intestinal infections (A04,A07-…  54838 1643859326          3.3
    ##  4 Tuberculosis (A16-A19)                           4433 1643859326          0.3
    ##  5 Respiratory tuberculosis (A16)                   3215 1643859326          0.2
    ##  6 Other tuberculosis (A17-A19)                     1257 1643859326          0.1
    ##  7 Whooping cough (A37)                               58 1643859326          0  
    ##  8 Scarlet fever and erysipelas (A38,A46)             24 1643859326          0  
    ##  9 Meningococcal infection (A39)                     142 1643859326          0  
    ## 10 Septicemia (A40-A41)                           939854 1643859326         57.2
    ## # … with 127 more rows

``` r
# MCD - ICD-10 130 Cause List (Infants)
getData("D176", list(list("Group Results By", "D176.V16")))
```

    ## Message from query:
    ## Please select age value '< 1 year' or the Infant Age Groups button when using the 130 Cause or Leading Infants List.

    ## Error in getData("D176", list(list("Group Results By", "D176.V16"))): Internal Server Error (HTTP 500).

``` r
# MCD - Drug/Alcohol Induced
getData("D176", list(list("Group Results By", "D176.V26-level1")))
```

    ## # A tibble: 4 × 4
    ##   `MCD - Drug/Alcohol Induced`                    Deaths Population `Crude Rate`
    ##   <chr>                                            <dbl>      <dbl>        <dbl>
    ## 1 Drug-induced causes                             1.77e6 1643859326        108. 
    ## 2 Alcohol-induced causes                          3.62e5 1643859326         22  
    ## 3 All other non-drug and non-alcohol causes       1.29e7 1643859326        788. 
    ## 4 Data not shown due to 6 month lag to account f… 1.46e5 1643859326          8.9

``` r
# MCD - Drug/Alcohol Induced Cause
getData("D176", list(list("Group Results By", "D176.V26-level2")))
```

    ## # A tibble: 9 × 4
    ##   `MCD - Drug/Alcohol Induced Cause`              Deaths Population `Crude Rate`
    ##   <chr>                                            <dbl>      <dbl>        <dbl>
    ## 1 Drug poisonings (overdose) Unintentional (X40-… 2.89e5 1643859326         17.6
    ## 2 Drug poisonings (overdose) Suicide (X60-X64)    1.83e4 1643859326          1.1
    ## 3 Drug poisonings (overdose) Homicide (X85)       1.02e3 1643859326          0.1
    ## 4 Drug poisonings (overdose) Undetermined (Y10-Y… 1.43e4 1643859326          0.9
    ## 5 All other drug-induced causes                   1.60e6 1643859326         97.4
    ## 6 Alcohol poisonings (overdose) (X45, X65, Y15)   6.47e4 1643859326          3.9
    ## 7 All other alcohol-induced causes                3.22e5 1643859326         19.6
    ## 8 All other non-drug and non-alcohol causes       1.29e7 1643859326        788. 
    ## 9 Data not shown due to 6 month lag to account f… 1.46e5 1643859326          8.9

``` r
getData("D176", list(list("Group Results By", "Residence Census Region")))
```

    ## Message from query:
    ## Any by-variables picked from [MMWR Year, MMWR Week] need to appear in the order listed, and other by-variables can't come between them. Please select age value '< 1 year' or the Infant Age Groups button when using the 130 Cause or Leading Infants List.

    ## Error in getData("D176", list(list("Group Results By", "Residence Census Region"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "Residence Census Division")))
```

    ## Message from query:
    ## Any by-variables picked from [MMWR Year, MMWR Week] need to appear in the order listed, and other by-variables can't come between them. Please select age value '< 1 year' or the Infant Age Groups button when using the 130 Cause or Leading Infants List.

    ## Error in getData("D176", list(list("Group Results By", "Residence Census Division"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "Residence HHS Region")))
```

    ## Message from query:
    ## Any by-variables picked from [MMWR Year, MMWR Week] need to appear in the order listed, and other by-variables can't come between them. Please select age value '< 1 year' or the Infant Age Groups button when using the 130 Cause or Leading Infants List.

    ## Error in getData("D176", list(list("Group Results By", "Residence HHS Region"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "Residence State")))
```

    ## Message from query:
    ## Any by-variables picked from [MMWR Year, MMWR Week] need to appear in the order listed, and other by-variables can't come between them. Please select age value '< 1 year' or the Infant Age Groups button when using the 130 Cause or Leading Infants List.

    ## Error in getData("D176", list(list("Group Results By", "Residence State"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "Residence County")))
```

    ## Message from query:
    ## Any by-variables picked from [MMWR Year, MMWR Week] need to appear in the order listed, and other by-variables can't come between them. Please select age value '< 1 year' or the Infant Age Groups button when using the 130 Cause or Leading Infants List.

    ## Error in getData("D176", list(list("Group Results By", "Residence County"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "Residence 2013 Urbanization")))
```

    ## Message from query:
    ## Any by-variables picked from [MMWR Year, MMWR Week] need to appear in the order listed, and other by-variables can't come between them. Please select age value '< 1 year' or the Infant Age Groups button when using the 130 Cause or Leading Infants List.

    ## Error in getData("D176", list(list("Group Results By", "Residence 2013 Urbanization"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "Residence 2006 Urbanization")))
```

    ## Message from query:
    ## Any by-variables picked from [MMWR Year, MMWR Week] need to appear in the order listed, and other by-variables can't come between them. Please select age value '< 1 year' or the Infant Age Groups button when using the 130 Cause or Leading Infants List.

    ## Error in getData("D176", list(list("Group Results By", "Residence 2006 Urbanization"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "Occurrence Census Region")))
```

    ## Message from query:
    ## Any by-variables picked from [MMWR Year, MMWR Week] need to appear in the order listed, and other by-variables can't come between them. Please select age value '< 1 year' or the Infant Age Groups button when using the 130 Cause or Leading Infants List.

    ## Error in getData("D176", list(list("Group Results By", "Occurrence Census Region"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "Occurrence Census Division")))
```

    ## Message from query:
    ## Any by-variables picked from [MMWR Year, MMWR Week] need to appear in the order listed, and other by-variables can't come between them. Please select age value '< 1 year' or the Infant Age Groups button when using the 130 Cause or Leading Infants List.

    ## Error in getData("D176", list(list("Group Results By", "Occurrence Census Division"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "Occurrence HHS Region")))
```

    ## Message from query:
    ## Any by-variables picked from [MMWR Year, MMWR Week] need to appear in the order listed, and other by-variables can't come between them. Please select age value '< 1 year' or the Infant Age Groups button when using the 130 Cause or Leading Infants List.

    ## Error in getData("D176", list(list("Group Results By", "Occurrence HHS Region"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "Occurrence State")))
```

    ## Message from query:
    ## Any by-variables picked from [MMWR Year, MMWR Week] need to appear in the order listed, and other by-variables can't come between them. Please select age value '< 1 year' or the Infant Age Groups button when using the 130 Cause or Leading Infants List.

    ## Error in getData("D176", list(list("Group Results By", "Occurrence State"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "Occurrence County")))
```

    ## Message from query:
    ## Any by-variables picked from [MMWR Year, MMWR Week] need to appear in the order listed, and other by-variables can't come between them. Please select age value '< 1 year' or the Infant Age Groups button when using the 130 Cause or Leading Infants List.

    ## Error in getData("D176", list(list("Group Results By", "Occurrence County"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "Occurrence 2013 Urbanization")))
```

    ## Message from query:
    ## To Group Results By 'Occurrence 2013 Urbanization' you must also select the 'Occurrence 2013 Urbanization' button where found below section #1. Location group by variables (B_1 through B_5) were found: D176.V89 Only national data are available for this dataset when using the WONDER web service. Please check that your query does not group results by region, division, state, county or urbanization, (B_1 through B_5), nor limit these location variables to any specific values. For more information please contact CDC WONDER customer support at cwus@cdc.gov or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "Occurrence 2013 Urbanization"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "Occurrence 2006 Urbanization")))
```

    ## Message from query:
    ## To Group Results By 'Occurrence 2006 Urbanization' you must also select the 'Occurrence 2006 Urbanization' button where found below section #1. To Group Results By 'Occurrence 2006 Urbanization' you must also select the 'Occurrence 2006 Urbanization' button where found below section #1. Location group by variables (B_1 through B_5) were found: D176.V81 Only national data are available for this dataset when using the WONDER web service. Please check that your query does not group results by region, division, state, county or urbanization, (B_1 through B_5), nor limit these location variables to any specific values. For more information please contact CDC WONDER customer support at cwus@cdc.gov or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "Occurrence 2006 Urbanization"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "Ten-Year Age Groups")))
```

    ## Message from query:
    ## Any by-variables picked from [MMWR Year, MMWR Week] need to appear in the order listed, and other by-variables can't come between them. Location group by variables (B_1 through B_5) were found: D176.V81 Only national data are available for this dataset when using the WONDER web service. Please check that your query does not group results by region, division, state, county or urbanization, (B_1 through B_5), nor limit these location variables to any specific values. For more information please contact CDC WONDER customer support at cwus@cdc.gov or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "Ten-Year Age Groups"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "Five-Year Age Groups")))
```

    ## Message from query:
    ## Any by-variables picked from [MMWR Year, MMWR Week] need to appear in the order listed, and other by-variables can't come between them. Location group by variables (B_1 through B_5) were found: D176.V81 Only national data are available for this dataset when using the WONDER web service. Please check that your query does not group results by region, division, state, county or urbanization, (B_1 through B_5), nor limit these location variables to any specific values. For more information please contact CDC WONDER customer support at cwus@cdc.gov or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "Five-Year Age Groups"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "Single-Year Ages")))
```

    ## Message from query:
    ## Any by-variables picked from [MMWR Year, MMWR Week] need to appear in the order listed, and other by-variables can't come between them. Location group by variables (B_1 through B_5) were found: D176.V81 Only national data are available for this dataset when using the WONDER web service. Please check that your query does not group results by region, division, state, county or urbanization, (B_1 through B_5), nor limit these location variables to any specific values. For more information please contact CDC WONDER customer support at cwus@cdc.gov or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "Single-Year Ages"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "Infant Age Groups")))
```

    ## Message from query:
    ## Any by-variables picked from [MMWR Year, MMWR Week] need to appear in the order listed, and other by-variables can't come between them. Location group by variables (B_1 through B_5) were found: D176.V81 Only national data are available for this dataset when using the WONDER web service. Please check that your query does not group results by region, division, state, county or urbanization, (B_1 through B_5), nor limit these location variables to any specific values. For more information please contact CDC WONDER customer support at cwus@cdc.gov or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "Infant Age Groups"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "Gender")))
```

    ## # A tibble: 2 × 4
    ##   Gender  Deaths Population `Crude Rate`
    ##   <chr>    <dbl>      <dbl>        <dbl>
    ## 1 Female 6217678  834304717         745.
    ## 2 Male   6778458  809554609         837.

``` r
getData("D176", list(list("Group Results By", "Hispanic Origin")))
```

    ## # A tibble: 3 × 4
    ##   `Hispanic Origin`        Deaths Population     `Crude Rate`  
    ##   <chr>                     <dbl> <chr>          <chr>         
    ## 1 Hispanic or Latino      1078330 304,382,620    354.3         
    ## 2 Not Hispanic or Latino 11885009 1,339,476,706  887.3         
    ## 3 Not Stated                32797 Not Applicable Not Applicable

``` r
getData("D176", list(list("Group Results By", "Single Race 6")))
```

    ## Message from query:
    ## Any by-variables picked from [MMWR Year, MMWR Week] need to appear in the order listed, and other by-variables can't come between them. Location group by variables (B_1 through B_5) were found: D176.V81 Only national data are available for this dataset when using the WONDER web service. Please check that your query does not group results by region, division, state, county or urbanization, (B_1 through B_5), nor limit these location variables to any specific values. For more information please contact CDC WONDER customer support at cwus@cdc.gov or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "Single Race 6"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "Single Race 15")))
```

    ## Message from query:
    ## Any by-variables picked from [MMWR Year, MMWR Week] need to appear in the order listed, and other by-variables can't come between them. Location group by variables (B_1 through B_5) were found: D176.V81 Only national data are available for this dataset when using the WONDER web service. Please check that your query does not group results by region, division, state, county or urbanization, (B_1 through B_5), nor limit these location variables to any specific values. For more information please contact CDC WONDER customer support at cwus@cdc.gov or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "Single Race 15"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "Single/Multi Race 31")))
```

    ## Message from query:
    ## Any by-variables picked from [MMWR Year, MMWR Week] need to appear in the order listed, and other by-variables can't come between them. Location group by variables (B_1 through B_5) were found: D176.V81 Only national data are available for this dataset when using the WONDER web service. Please check that your query does not group results by region, division, state, county or urbanization, (B_1 through B_5), nor limit these location variables to any specific values. For more information please contact CDC WONDER customer support at cwus@cdc.gov or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "Single/Multi Race 31"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "Year")))
```

    ## Message from query:
    ## Any by-variables picked from [MMWR Year, MMWR Week] need to appear in the order listed, and other by-variables can't come between them.

    ## Error in getData("D176", list(list("Group Results By", "Year"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "Month")))
```

    ## Message from query:
    ## Any by-variables picked from [MMWR Year, MMWR Week] need to appear in the order listed, and other by-variables can't come between them. Location group by variables (B_1 through B_5) were found: D176.V81 Only national data are available for this dataset when using the WONDER web service. Please check that your query does not group results by region, division, state, county or urbanization, (B_1 through B_5), nor limit these location variables to any specific values. For more information please contact CDC WONDER customer support at cwus@cdc.gov or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "Month"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "MMWR Year")))
```

    ## Message from query:
    ## Any by-variables picked from [MMWR Year, MMWR Week] need to appear in the order listed, and other by-variables can't come between them. Location group by variables (B_1 through B_5) were found: D176.V81 Only national data are available for this dataset when using the WONDER web service. Please check that your query does not group results by region, division, state, county or urbanization, (B_1 through B_5), nor limit these location variables to any specific values. For more information please contact CDC WONDER customer support at cwus@cdc.gov or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "MMWR Year"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "MMWR Week")))
```

    ## Message from query:
    ## Any by-variables picked from [MMWR Year, MMWR Week] need to appear in the order listed, and other by-variables can't come between them. Location group by variables (B_1 through B_5) were found: D176.V81 Only national data are available for this dataset when using the WONDER web service. Please check that your query does not group results by region, division, state, county or urbanization, (B_1 through B_5), nor limit these location variables to any specific values. For more information please contact CDC WONDER customer support at cwus@cdc.gov or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "MMWR Week"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "Autopsy")))
```

    ## # A tibble: 3 × 4
    ##   Autopsy   Deaths Population     `Crude Rate`  
    ##   <chr>      <dbl> <chr>          <chr>         
    ## 1 No      11615163 Not Applicable Not Applicable
    ## 2 Yes       991161 Not Applicable Not Applicable
    ## 3 Unknown   389812 Not Applicable Not Applicable

``` r
getData("D176", list(list("Group Results By", "Place of Death")))
```

    ## # A tibble: 8 × 4
    ##   `Place of Death`                     Deaths Population     `Crude Rate`  
    ##   <chr>                                 <dbl> <chr>          <chr>         
    ## 1 Medical Facility - Inpatient        3966032 Not Applicable Not Applicable
    ## 2 Medical Facility - Outpatient or ER  789668 Not Applicable Not Applicable
    ## 3 Medical Facility - Dead on Arrival    39475 Not Applicable Not Applicable
    ## 4 Decedent's home                     4237633 Not Applicable Not Applicable
    ## 5 Hospice facility                     882071 Not Applicable Not Applicable
    ## 6 Nursing home/long term care         2213143 Not Applicable Not Applicable
    ## 7 Other                                865812 Not Applicable Not Applicable
    ## 8 Place of death unknown                 2302 Not Applicable Not Applicable

``` r
getData("D176", list(list("Group Results By", "UCD - 15 Leading Causes of Death")))
```

    ## Message from query:
    ## Any by-variables picked from [MMWR Year, MMWR Week] need to appear in the order listed, and other by-variables can't come between them. Location group by variables (B_1 through B_5) were found: D176.V81 Only national data are available for this dataset when using the WONDER web service. Please check that your query does not group results by region, division, state, county or urbanization, (B_1 through B_5), nor limit these location variables to any specific values. For more information please contact CDC WONDER customer support at cwus@cdc.gov or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "UCD - 15 Leading Causes of Death"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "UCD - 15 Leading Causes of Death (Infants)")))
```

    ## Message from query:
    ## Any by-variables picked from [MMWR Year, MMWR Week] need to appear in the order listed, and other by-variables can't come between them. Location group by variables (B_1 through B_5) were found: D176.V81 Only national data are available for this dataset when using the WONDER web service. Please check that your query does not group results by region, division, state, county or urbanization, (B_1 through B_5), nor limit these location variables to any specific values. For more information please contact CDC WONDER customer support at cwus@cdc.gov or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "UCD - 15 Leading Causes of Death (Infants)"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "UCD - ICD Chapter")))
```

    ## Message from query:
    ## Any by-variables picked from [MMWR Year, MMWR Week] need to appear in the order listed, and other by-variables can't come between them. Location group by variables (B_1 through B_5) were found: D176.V81 Only national data are available for this dataset when using the WONDER web service. Please check that your query does not group results by region, division, state, county or urbanization, (B_1 through B_5), nor limit these location variables to any specific values. For more information please contact CDC WONDER customer support at cwus@cdc.gov or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "UCD - ICD Chapter"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "UCD - ICD Sub-Chapter")))
```

    ## Message from query:
    ## Any by-variables picked from [MMWR Year, MMWR Week] need to appear in the order listed, and other by-variables can't come between them. Location group by variables (B_1 through B_5) were found: D176.V81 Only national data are available for this dataset when using the WONDER web service. Please check that your query does not group results by region, division, state, county or urbanization, (B_1 through B_5), nor limit these location variables to any specific values. For more information please contact CDC WONDER customer support at cwus@cdc.gov or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "UCD - ICD Sub-Chapter"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "Underlying Cause of death")))
```

    ## Message from query:
    ## Any by-variables picked from [MMWR Year, MMWR Week] need to appear in the order listed, and other by-variables can't come between them. Location group by variables (B_1 through B_5) were found: D176.V81 Only national data are available for this dataset when using the WONDER web service. Please check that your query does not group results by region, division, state, county or urbanization, (B_1 through B_5), nor limit these location variables to any specific values. For more information please contact CDC WONDER customer support at cwus@cdc.gov or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "Underlying Cause of death"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "UCD - ICD-10 113 Cause List")))
```

    ## Message from query:
    ## Any by-variables picked from [MMWR Year, MMWR Week] need to appear in the order listed, and other by-variables can't come between them. Location group by variables (B_1 through B_5) were found: D176.V81 Only national data are available for this dataset when using the WONDER web service. Please check that your query does not group results by region, division, state, county or urbanization, (B_1 through B_5), nor limit these location variables to any specific values. For more information please contact CDC WONDER customer support at cwus@cdc.gov or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "UCD - ICD-10 113 Cause List"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "UCD - ICD-10 130 Cause List (Infants)")))
```

    ## Message from query:
    ## Any by-variables picked from [MMWR Year, MMWR Week] need to appear in the order listed, and other by-variables can't come between them. Location group by variables (B_1 through B_5) were found: D176.V81 Only national data are available for this dataset when using the WONDER web service. Please check that your query does not group results by region, division, state, county or urbanization, (B_1 through B_5), nor limit these location variables to any specific values. For more information please contact CDC WONDER customer support at cwus@cdc.gov or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "UCD - ICD-10 130 Cause List (Infants)"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "UCD - Injury Intent")))
```

    ## # A tibble: 6 × 4
    ##   `UCD - Injury Intent`                      Deaths Population `Crude Rate`
    ##   <chr>                                       <dbl>      <dbl>        <dbl>
    ## 1 "Unintentional"                            691323 1643859326         42.1
    ## 2 "Suicide"                                  173817 1643859326         10.6
    ## 3 "Homicide"                                  79831 1643859326          4.9
    ## 4 "Undetermined "                             21613 1643859326          1.3
    ## 5 "Legal Intervention / Operations of War"     2518 1643859326          0.2
    ## 6 "Non-Injury, no intent classified"       12027034 1643859326        732.

``` r
getData("D176", list(list("Group Results By", "UCD - Injury Mechanism & All Other Leading Causes")))
```

    ## # A tibble: 67 × 4
    ##    `UCD - Injury Mechanism & All Other Leading …` Deaths Population `Crude Rate`
    ##    <chr>                                           <dbl>      <dbl>        <dbl>
    ##  1 Cut/Pierce                                      10638 1643859326          0.6
    ##  2 Drowning                                        17846 1643859326          1.1
    ##  3 Fall                                           152557 1643859326          9.3
    ##  4 Fire/Flame                                      12704 1643859326          0.8
    ##  5 Hot object/Substance                              320 1643859326          0  
    ##  6 Firearm                                        157334 1643859326          9.6
    ##  7 Machinery                                        1962 1643859326          0.1
    ##  8 Motor Vehicle Traffic                          145898 1643859326          8.9
    ##  9 Other Pedal cyclist                              1421 1643859326          0.1
    ## 10 Other Pedestrian                                 3508 1643859326          0.2
    ## # … with 57 more rows

``` r
getData("D176", list(list("Group Results By", "UCD - Drug/Alcohol Induced")))
```

    ## Message from query:
    ## Any by-variables picked from [MMWR Year, MMWR Week] need to appear in the order listed, and other by-variables can't come between them. Location group by variables (B_1 through B_5) were found: D176.V81 Only national data are available for this dataset when using the WONDER web service. Please check that your query does not group results by region, division, state, county or urbanization, (B_1 through B_5), nor limit these location variables to any specific values. For more information please contact CDC WONDER customer support at cwus@cdc.gov or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "UCD - Drug/Alcohol Induced"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "UCD - Drug/Alcohol Induced Cause")))
```

    ## Message from query:
    ## Any by-variables picked from [MMWR Year, MMWR Week] need to appear in the order listed, and other by-variables can't come between them. Location group by variables (B_1 through B_5) were found: D176.V81 Only national data are available for this dataset when using the WONDER web service. Please check that your query does not group results by region, division, state, county or urbanization, (B_1 through B_5), nor limit these location variables to any specific values. For more information please contact CDC WONDER customer support at cwus@cdc.gov or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "UCD - Drug/Alcohol Induced Cause"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "MCD - ICD Chapter")))
```

    ## Message from query:
    ## Any by-variables picked from [MMWR Year, MMWR Week] need to appear in the order listed, and other by-variables can't come between them. Location group by variables (B_1 through B_5) were found: D176.V81 Only national data are available for this dataset when using the WONDER web service. Please check that your query does not group results by region, division, state, county or urbanization, (B_1 through B_5), nor limit these location variables to any specific values. For more information please contact CDC WONDER customer support at cwus@cdc.gov or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "MCD - ICD Chapter"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "MCD - ICD Sub-Chapter")))
```

    ## Message from query:
    ## Any by-variables picked from [MMWR Year, MMWR Week] need to appear in the order listed, and other by-variables can't come between them. Location group by variables (B_1 through B_5) were found: D176.V81 Only national data are available for this dataset when using the WONDER web service. Please check that your query does not group results by region, division, state, county or urbanization, (B_1 through B_5), nor limit these location variables to any specific values. For more information please contact CDC WONDER customer support at cwus@cdc.gov or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "MCD - ICD Sub-Chapter"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "Multiple Cause of death")))
```

    ## Message from query:
    ## Any by-variables picked from [MMWR Year, MMWR Week] need to appear in the order listed, and other by-variables can't come between them. Location group by variables (B_1 through B_5) were found: D176.V81 Only national data are available for this dataset when using the WONDER web service. Please check that your query does not group results by region, division, state, county or urbanization, (B_1 through B_5), nor limit these location variables to any specific values. For more information please contact CDC WONDER customer support at cwus@cdc.gov or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "Multiple Cause of death"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "MCD - ICD-10 113 Cause List")))
```

    ## Message from query:
    ## Any by-variables picked from [MMWR Year, MMWR Week] need to appear in the order listed, and other by-variables can't come between them. Location group by variables (B_1 through B_5) were found: D176.V81 Only national data are available for this dataset when using the WONDER web service. Please check that your query does not group results by region, division, state, county or urbanization, (B_1 through B_5), nor limit these location variables to any specific values. For more information please contact CDC WONDER customer support at cwus@cdc.gov or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "MCD - ICD-10 113 Cause List"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "MCD - ICD-10 130 Cause List (Infants)")))
```

    ## Message from query:
    ## Any by-variables picked from [MMWR Year, MMWR Week] need to appear in the order listed, and other by-variables can't come between them. Location group by variables (B_1 through B_5) were found: D176.V81 Only national data are available for this dataset when using the WONDER web service. Please check that your query does not group results by region, division, state, county or urbanization, (B_1 through B_5), nor limit these location variables to any specific values. For more information please contact CDC WONDER customer support at cwus@cdc.gov or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "MCD - ICD-10 130 Cause List (Infants)"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "MCD - Drug/Alcohol Induced")))
```

    ## Message from query:
    ## Any by-variables picked from [MMWR Year, MMWR Week] need to appear in the order listed, and other by-variables can't come between them. Location group by variables (B_1 through B_5) were found: D176.V81 Only national data are available for this dataset when using the WONDER web service. Please check that your query does not group results by region, division, state, county or urbanization, (B_1 through B_5), nor limit these location variables to any specific values. For more information please contact CDC WONDER customer support at cwus@cdc.gov or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "MCD - Drug/Alcohol Induced"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "MCD - Drug/Alcohol Induced CauseD176.V16    MCD - ICD-10 130 Cause List (Infants)")))
```

    ## Message from query:
    ## Any by-variables picked from [MMWR Year, MMWR Week] need to appear in the order listed, and other by-variables can't come between them.

    ## Error in getData("D176", list(list("Group Results By", "MCD - Drug/Alcohol Induced CauseD176.V16    MCD - ICD-10 130 Cause List (Infants)"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "MCD - Drug/Alcohol Induced")))
```

    ## Message from query:
    ## Any by-variables picked from [MMWR Year, MMWR Week] need to appear in the order listed, and other by-variables can't come between them. Location group by variables (B_1 through B_5) were found: D176.V81 Only national data are available for this dataset when using the WONDER web service. Please check that your query does not group results by region, division, state, county or urbanization, (B_1 through B_5), nor limit these location variables to any specific values. For more information please contact CDC WONDER customer support at cwus@cdc.gov or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "MCD - Drug/Alcohol Induced"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "MCD - Drug/Alcohol Induced Cause")))
```

    ## Message from query:
    ## Any by-variables picked from [MMWR Year, MMWR Week] need to appear in the order listed, and other by-variables can't come between them. Location group by variables (B_1 through B_5) were found: D176.V81 Only national data are available for this dataset when using the WONDER web service. Please check that your query does not group results by region, division, state, county or urbanization, (B_1 through B_5), nor limit these location variables to any specific values. For more information please contact CDC WONDER customer support at cwus@cdc.gov or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "MCD - Drug/Alcohol Induced Cause"))): Internal Server Error (HTTP 500).
