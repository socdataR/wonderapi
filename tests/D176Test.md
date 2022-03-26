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

Message from query: Location group by variables (B_1 through B_5) were
found: D176.V10-level1 Only national data are available for this dataset
when using the WONDER web service. Please check that your query does not
group results by region, division, state, county or urbanization, (B_1
through B_5), nor limit these location variables to any specific values.
For more information please contact CDC WONDER customer support at
<cwus@cdc.gov> or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "D176.V10-level1"))): Internal Server Error (HTTP 500).

``` r
# Residence Census Division
getData("D176", list(list("Group Results By", "D176.V10-level2")))
```

Message from query: Location group by variables (B_1 through B_5) were
found: D176.V10-level2 Only national data are available for this dataset
when using the WONDER web service. Please check that your query does not
group results by region, division, state, county or urbanization, (B_1
through B_5), nor limit these location variables to any specific values.
For more information please contact CDC WONDER customer support at
<cwus@cdc.gov> or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "D176.V10-level2"))): Internal Server Error (HTTP 500).

``` r
# Residence HHS Region
getData("D176", list(list("Group Results By", "D176.V27-level1")))
```

Message from query: Location group by variables (B_1 through B_5) were
found: D176.V27-level1 Only national data are available for this dataset
when using the WONDER web service. Please check that your query does not
group results by region, division, state, county or urbanization, (B_1
through B_5), nor limit these location variables to any specific values.
For more information please contact CDC WONDER customer support at
<cwus@cdc.gov> or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "D176.V27-level1"))): Internal Server Error (HTTP 500).

``` r
# Residence State
getData("D176", list(list("Group Results By", "D176.V9-level1")))
```

Message from query: Location group by variables (B_1 through B_5) were
found: D176.V9-level1 Only national data are available for this dataset
when using the WONDER web service. Please check that your query does not
group results by region, division, state, county or urbanization, (B_1
through B_5), nor limit these location variables to any specific values.
For more information please contact CDC WONDER customer support at
<cwus@cdc.gov> or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "D176.V9-level1"))): Internal Server Error (HTTP 500).

``` r
# Residence County
getData("D176", list(list("Group Results By", "D176.V9-level2")))
```

Message from query: Location group by variables (B_1 through B_5) were
found: D176.V9-level2 Only national data are available for this dataset
when using the WONDER web service. Please check that your query does not
group results by region, division, state, county or urbanization, (B_1
through B_5), nor limit these location variables to any specific values.
For more information please contact CDC WONDER customer support at
<cwus@cdc.gov> or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "D176.V9-level2"))): Internal Server Error (HTTP 500).

``` r
# Residence 2013 Urbanization
getData("D176", list(list("Group Results By", "D176.V19")))
```

Message from query: Location group by variables (B_1 through B_5) were
found: D176.V19 Only national data are available for this dataset when
using the WONDER web service. Please check that your query does not
group results by region, division, state, county or urbanization, (B_1
through B_5), nor limit these location variables to any specific values.
For more information please contact CDC WONDER customer support at
<cwus@cdc.gov> or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "D176.V19"))): Internal Server Error (HTTP 500).

``` r
# Residence 2006 Urbanization
getData("D176", list(list("Group Results By", "D176.V11")))
```

Message from query: To Group Results By ‘Residence 2006 Urbanization’
you must also select the ‘Residence 2006 Urbanization’ button where
found below section #1. Location group by variables (B_1 through B_5)
were found: D176.V11 Only national data are available for this dataset
when using the WONDER web service. Please check that your query does not
group results by region, division, state, county or urbanization, (B_1
through B_5), nor limit these location variables to any specific values.
For more information please contact CDC WONDER customer support at
<cwus@cdc.gov> or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "D176.V11"))): Internal Server Error (HTTP 500).

``` r
# Occurrence Census Region
getData("D176", list(list("Group Results By", "D176.V80-level1")))
```

Message from query: Location group by variables (B_1 through B_5) were
found: D176.V80-level1 Only national data are available for this dataset
when using the WONDER web service. Please check that your query does not
group results by region, division, state, county or urbanization, (B_1
through B_5), nor limit these location variables to any specific values.
For more information please contact CDC WONDER customer support at
<cwus@cdc.gov> or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "D176.V80-level1"))): Internal Server Error (HTTP 500).

``` r
# Occurrence Census Division
getData("D176", list(list("Group Results By", "D176.V80-level2")))
```

Message from query: Location group by variables (B_1 through B_5) were
found: D176.V80-level2 Only national data are available for this dataset
when using the WONDER web service. Please check that your query does not
group results by region, division, state, county or urbanization, (B_1
through B_5), nor limit these location variables to any specific values.
For more information please contact CDC WONDER customer support at
<cwus@cdc.gov> or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "D176.V80-level2"))): Internal Server Error (HTTP 500).

``` r
# Occurrence HHS Region
getData("D176", list(list("Group Results By", "D176.V77-level1")))
```

Message from query: Location group by variables (B_1 through B_5) were
found: D176.V77-level1 Only national data are available for this dataset
when using the WONDER web service. Please check that your query does not
group results by region, division, state, county or urbanization, (B_1
through B_5), nor limit these location variables to any specific values.
For more information please contact CDC WONDER customer support at
<cwus@cdc.gov> or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "D176.V77-level1"))): Internal Server Error (HTTP 500).

``` r
# Occurrence State
getData("D176", list(list("Group Results By", "D176.V79-level1")))
```

Message from query: Location group by variables (B_1 through B_5) were
found: D176.V79-level1 Only national data are available for this dataset
when using the WONDER web service. Please check that your query does not
group results by region, division, state, county or urbanization, (B_1
through B_5), nor limit these location variables to any specific values.
For more information please contact CDC WONDER customer support at
<cwus@cdc.gov> or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "D176.V79-level1"))): Internal Server Error (HTTP 500).

``` r
# Occurrence County
getData("D176", list(list("Group Results By", "D176.V79-level2")))
```

Message from query: Location group by variables (B_1 through B_5) were
found: D176.V79-level2 Only national data are available for this dataset
when using the WONDER web service. Please check that your query does not
group results by region, division, state, county or urbanization, (B_1
through B_5), nor limit these location variables to any specific values.
For more information please contact CDC WONDER customer support at
<cwus@cdc.gov> or (888) 496-8347.

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

| Ten-Year Age Groups |  Deaths | Population     | Crude Rate     |
|:--------------------|--------:|:---------------|:---------------|
| \< 1 year           |   83046 | 18,836,290     | 440.9          |
| 1-4 years           |   15065 | 78,454,544     | 19.2           |
| 5-14 years          |   23020 | 205,045,734    | 11.2           |
| 15-24 years         |  137338 | 213,325,362    | 64.4           |
| 25-34 years         |  281496 | 229,847,033    | 122.5          |
| 35-44 years         |  405413 | 209,345,608    | 193.7          |
| 45-54 years         |  755983 | 203,605,000    | 371.3          |
| 55-64 years         | 1725343 | 211,932,204    | 814.1          |
| 65-74 years         | 2591633 | 159,623,943    | 1,623.6        |
| 75-84 years         | 3132660 | 80,718,887     | 3,881.0        |
| 85+ years           | 3844636 | 33,124,721     | 11,606.5       |
| Not Stated          |     503 | Not Applicable | Not Applicable |

``` r
# Five-Year Age Groups
getData("D176", list(list("Group Results By", "D176.V51"),
                     list("O_age", "D176.V51")))
```

| Five-Year Age Groups |  Deaths | Population     | Crude Rate     |
|:---------------------|--------:|:---------------|:---------------|
| \< 1 year            |   83046 | 18,836,290     | 440.9          |
| 1-4 years            |   15065 | 78,454,544     | 19.2           |
| 5-9 years            |    9476 | 101,104,670    | 9.4            |
| 10-14 years          |   13544 | 103,941,064    | 13.0           |
| 15-19 years          |   47388 | 105,034,578    | 45.1           |
| 20-24 years          |   89950 | 108,290,784    | 83.1           |
| 25-29 years          |  125520 | 116,764,501    | 107.5          |
| 30-34 years          |  155976 | 113,082,532    | 137.9          |
| 35-39 years          |  186230 | 108,786,020    | 171.2          |
| 40-44 years          |  219183 | 100,559,588    | 218.0          |
| 45-49 years          |  300260 | 101,056,704    | 297.1          |
| 50-54 years          |  455723 | 102,548,296    | 444.4          |
| 55-59 years          |  723041 | 108,627,673    | 665.6          |
| 60-64 years          | 1002302 | 103,304,531    | 970.2          |
| 65-69 years          | 1185253 | 88,162,895     | 1,344.4        |
| 70-74 years          | 1406380 | 71,461,048     | 1,968.0        |
| 75-79 years          | 1516045 | 48,880,230     | 3,101.6        |
| 80-84 years          | 1616615 | 31,838,657     | 5,077.5        |
| 85-89 years          | 1677815 | Not Applicable | Not Applicable |
| 90-94 years          | 1388737 | Not Applicable | Not Applicable |
| 95-99 years          |  641688 | Not Applicable | Not Applicable |
| 100+ years           |  136396 | Not Applicable | Not Applicable |
| Not Stated           |     503 | Not Applicable | Not Applicable |

``` r
# Single-Year Age Groups
getData("D176", list(list("Group Results By", "D176.V51"),
                     list("O_age", "D176.V51")))
```

| Five-Year Age Groups |  Deaths | Population     | Crude Rate     |
|:---------------------|--------:|:---------------|:---------------|
| \< 1 year            |   83046 | 18,836,290     | 440.9          |
| 1-4 years            |   15065 | 78,454,544     | 19.2           |
| 5-9 years            |    9476 | 101,104,670    | 9.4            |
| 10-14 years          |   13544 | 103,941,064    | 13.0           |
| 15-19 years          |   47388 | 105,034,578    | 45.1           |
| 20-24 years          |   89950 | 108,290,784    | 83.1           |
| 25-29 years          |  125520 | 116,764,501    | 107.5          |
| 30-34 years          |  155976 | 113,082,532    | 137.9          |
| 35-39 years          |  186230 | 108,786,020    | 171.2          |
| 40-44 years          |  219183 | 100,559,588    | 218.0          |
| 45-49 years          |  300260 | 101,056,704    | 297.1          |
| 50-54 years          |  455723 | 102,548,296    | 444.4          |
| 55-59 years          |  723041 | 108,627,673    | 665.6          |
| 60-64 years          | 1002302 | 103,304,531    | 970.2          |
| 65-69 years          | 1185253 | 88,162,895     | 1,344.4        |
| 70-74 years          | 1406380 | 71,461,048     | 1,968.0        |
| 75-79 years          | 1516045 | 48,880,230     | 3,101.6        |
| 80-84 years          | 1616615 | 31,838,657     | 5,077.5        |
| 85-89 years          | 1677815 | Not Applicable | Not Applicable |
| 90-94 years          | 1388737 | Not Applicable | Not Applicable |
| 95-99 years          |  641688 | Not Applicable | Not Applicable |
| 100+ years           |  136396 | Not Applicable | Not Applicable |
| Not Stated           |     503 | Not Applicable | Not Applicable |

``` r
# Single-Year Ages
getData("D176", list(list("Group Results By", "D176.V52"),
                     list("O_age", "D176.V52")))
```

| Single-Year Ages | Deaths | Population     | Crude Rate     |
|:-----------------|-------:|:---------------|:---------------|
| \< 1 year        |  83046 | 18,836,290     | 440.9          |
| 1 year           |   5864 | 19,064,151     | 30.8           |
| 2 years          |   3863 | 19,472,556     | 19.8           |
| 3 years          |   2954 | 19,799,805     | 14.9           |
| 4 years          |   2384 | 20,118,032     | 11.9           |
| 5 years          |   2156 | 20,201,407     | 10.7           |
| 6 years          |   1973 | 20,152,993     | 9.8            |
| 7 years          |   1802 | 20,170,941     | 8.9            |
| 8 years          |   1770 | 20,226,173     | 8.8            |
| 9 years          |   1775 | 20,353,156     | 8.7            |
| 10 years         |   1938 | 20,467,536     | 9.5            |
| 11 years         |   2113 | 20,611,250     | 10.3           |
| 12 years         |   2463 | 20,979,803     | 11.7           |
| 13 years         |   3076 | 20,991,871     | 14.7           |
| 14 years         |   3954 | 20,890,604     | 18.9           |
| 15 years         |   5189 | 20,844,437     | 24.9           |
| 16 years         |   6887 | 20,844,786     | 33.0           |
| 17 years         |   8943 | 20,879,040     | 42.8           |
| 18 years         |  12311 | 21,055,120     | 58.5           |
| 19 years         |  14058 | 21,411,195     | 65.7           |
| 20 years         |  15201 | 21,577,221     | 70.4           |
| 21 years         |  17289 | 21,420,287     | 80.7           |
| 22 years         |  18038 | 21,512,575     | 83.8           |
| 23 years         |  19123 | 21,726,028     | 88.0           |
| 24 years         |  20299 | 22,054,673     | 92.0           |
| 25 years         |  21881 | 22,528,357     | 97.1           |
| 26 years         |  23346 | 23,006,467     | 101.5          |
| 27 years         |  25218 | 23,433,703     | 107.6          |
| 28 years         |  26778 | 23,873,439     | 112.2          |
| 29 years         |  28297 | 23,922,535     | 118.3          |
| 30 years         |  29730 | 23,578,909     | 126.1          |
| 31 years         |  30178 | 22,805,880     | 132.3          |
| 32 years         |  31013 | 22,399,462     | 138.5          |
| 33 years         |  32175 | 22,192,316     | 145.0          |
| 34 years         |  32880 | 22,105,965     | 148.7          |
| 35 years         |  34297 | 22,092,508     | 155.2          |
| 36 years         |  35434 | 21,697,450     | 163.3          |
| 37 years         |  37008 | 21,797,695     | 169.8          |
| 38 years         |  38822 | 21,784,968     | 178.2          |
| 39 years         |  40669 | 21,413,399     | 189.9          |
| 40 years         |  41659 | 21,273,498     | 195.8          |
| 41 years         |  42563 | 20,306,860     | 209.6          |
| 42 years         |  43254 | 19,883,669     | 217.5          |
| 43 years         |  44851 | 19,737,079     | 227.2          |
| 44 years         |  46856 | 19,358,482     | 242.0          |
| 45 years         |  49698 | 19,615,866     | 253.4          |
| 46 years         |  54236 | 19,443,913     | 278.9          |
| 47 years         |  58989 | 19,990,125     | 295.1          |
| 48 years         |  65508 | 20,762,715     | 315.5          |
| 49 years         |  71829 | 21,244,085     | 338.1          |
| 50 years         |  78076 | 21,055,056     | 370.8          |
| 51 years         |  83002 | 20,258,714     | 409.7          |
| 52 years         |  89458 | 20,047,042     | 446.2          |
| 53 years         |  96866 | 20,342,112     | 476.2          |
| 54 years         | 108321 | 20,845,372     | 519.6          |
| 55 years         | 120348 | 21,602,116     | 557.1          |
| 56 years         | 132940 | 21,769,789     | 610.7          |
| 57 years         | 145006 | 21,748,781     | 666.7          |
| 58 years         | 156351 | 21,758,453     | 718.6          |
| 59 years         | 168396 | 21,748,534     | 774.3          |
| 60 years         | 179664 | 21,628,309     | 830.7          |
| 61 years         | 191060 | 21,044,994     | 907.9          |
| 62 years         | 201028 | 20,705,340     | 970.9          |
| 63 years         | 211678 | 20,315,799     | 1,041.9        |
| 64 years         | 218872 | 19,610,089     | 1,116.1        |
| 65 years         | 224472 | 19,136,457     | 1,173.0        |
| 66 years         | 230703 | 18,295,735     | 1,261.0        |
| 67 years         | 236248 | 17,549,900     | 1,346.2        |
| 68 years         | 242800 | 16,874,554     | 1,438.9        |
| 69 years         | 251030 | 16,306,249     | 1,539.5        |
| 70 years         | 263529 | 15,857,257     | 1,661.9        |
| 71 years         | 278955 | 15,567,831     | 1,791.9        |
| 72 years         | 284382 | 14,634,850     | 1,943.2        |
| 73 years         | 288319 | 14,031,221     | 2,054.8        |
| 74 years         | 291195 | 11,369,889     | 2,561.1        |
| 75 years         | 288990 | 11,150,585     | 2,591.7        |
| 76 years         | 297699 | 10,591,685     | 2,810.7        |
| 77 years         | 307317 | 10,138,733     | 3,031.1        |
| 78 years         | 311677 | 8,906,703      | 3,499.4        |
| 79 years         | 310362 | 8,092,524      | 3,835.2        |
| 80 years         | 313136 | 7,507,732      | 4,170.8        |
| 81 years         | 317461 | 6,894,305      | 4,604.7        |
| 82 years         | 324067 | 6,376,933      | 5,081.9        |
| 83 years         | 330445 | 5,784,606      | 5,712.5        |
| 84 years         | 331506 | 5,275,081      | 6,284.4        |
| 85 years         | 335651 | Not Applicable | Not Applicable |
| 86 years         | 336270 | Not Applicable | Not Applicable |
| 87 years         | 336695 | Not Applicable | Not Applicable |
| 88 years         | 336772 | Not Applicable | Not Applicable |
| 89 years         | 332427 | Not Applicable | Not Applicable |
| 90 years         | 322173 | Not Applicable | Not Applicable |
| 91 years         | 305110 | Not Applicable | Not Applicable |
| 92 years         | 281044 | Not Applicable | Not Applicable |
| 93 years         | 255886 | Not Applicable | Not Applicable |
| 94 years         | 224524 | Not Applicable | Not Applicable |
| 95 years         | 191441 | Not Applicable | Not Applicable |
| 96 years         | 158284 | Not Applicable | Not Applicable |
| 97 years         | 126440 | Not Applicable | Not Applicable |
| 98 years         |  95994 | Not Applicable | Not Applicable |
| 99 years         |  69529 | Not Applicable | Not Applicable |
| 100+ years       | 136396 | Not Applicable | Not Applicable |
| Not Stated       |    503 | Not Applicable | Not Applicable |

``` r
# Infant Age Groups
getData("D176", list(list("Group Results By", "D176.V6"),
                     list("O_age", "D176.V6")))
```

| Infant Age Groups | Deaths | Population | Crude Rate |
|:------------------|-------:|-----------:|-----------:|
| \< 1 day          |  31407 |   18380193 |      170.9 |
| 1-6 days          |  12183 |   18380193 |       66.3 |
| 7-27 days         |  10794 |   18380193 |       58.7 |
| 28-364 days       |  28662 |   18380193 |      155.9 |

``` r
# Gender
getData("D176", list(list("Group Results By", "D176.V7")))
```

| Gender |  Deaths | Population | Crude Rate |
|:-------|--------:|-----------:|-----------:|
| Female | 6217678 |  834304717 |      745.3 |
| Male   | 6778458 |  809554609 |      837.3 |

``` r
# Hispanic Origin
getData("D176", list(list("Group Results By", "D176.V17")))
```

| Hispanic Origin        |   Deaths | Population     | Crude Rate     |
|:-----------------------|---------:|:---------------|:---------------|
| Hispanic or Latino     |  1078330 | 304,382,620    | 354.3          |
| Not Hispanic or Latino | 11885009 | 1,339,476,706  | 887.3          |
| Not Stated             |    32797 | Not Applicable | Not Applicable |

``` r
# Single Race 6
getData("D176", list(list("Group Results By", "D176.V42")))
```

| Single Race 6                             |   Deaths | Population | Crude Rate |
|:------------------------------------------|---------:|-----------:|-----------:|
| American Indian or Alaska Native          |    96287 |   21214583 |      453.9 |
| Asian                                     |   339775 |   98872296 |      343.7 |
| Black or African American                 |  1663044 |  221472741 |      750.9 |
| Native Hawaiian or Other Pacific Islander |    18564 |    4137434 |      448.7 |
| White                                     | 10808280 | 1251590458 |      863.6 |
| More than one race                        |    70186 |   46571814 |      150.7 |

``` r
# Single Race 15
getData("D176", list(list("Group Results By", "D176.V43")))
```

| Single Race 15                    |   Deaths |
|:----------------------------------|---------:|
| White                             | 10808280 |
| Black                             |  1663044 |
| American Indian or Alaskan Native |    96287 |
| Asian Indian                      |    46799 |
| Chinese                           |    76058 |
| Filipino                          |    67764 |
| Japanese                          |    37582 |
| Korean                            |    29966 |
| Vietnamese                        |    34351 |
| Other Asian                       |    47255 |
| Hawaiian                          |     4090 |
| Guamanian                         |     2285 |
| Samoan                            |     4363 |
| Other Pacific Islander            |     7826 |
| More than one race                |    70186 |

``` r
# Single/Multi Race 31
getData("D176", list(list("Group Results By", "D176.V44")))
```

| Single/Multi Race 31                                     |   Deaths |
|:---------------------------------------------------------|---------:|
| White (only)                                             | 10808280 |
| Black (only)                                             |  1663044 |
| AIAN (American Indian or Alaskan Native) (only)          |    96287 |
| Asian (only)                                             |   339775 |
| NHOPI (Native Hawaiian or Other Pacific Islander) (only) |    18564 |
| Black and White                                          |    11856 |
| Black and AIAN                                           |     3607 |
| Black and Asian                                          |     1591 |
| Black and NHOPI                                          |      522 |
| AIAN and White                                           |    25109 |
| AIAN and Asian                                           |      882 |
| AIAN and NHOPI                                           |      147 |
| Asian and White                                          |    13316 |
| Asian and NHOPI                                          |     4634 |
| NHOPI and White                                          |     4105 |
| Black, AIAN, and White                                   |      931 |
| Black, AIAN, and Asian                                   |       56 |
| Black, AIAN, and NHOPI                                   |       16 |
| Black, Asian, and White                                  |      266 |
| Black, Asian, and NHOPI                                  |       32 |
| Black, NHOPI, and White                                  |       50 |
| AIAN, Asian, and White                                   |      215 |
| AIAN, NHOPI, and White                                   |       59 |
| AIAN, Asian, and NHOPI                                   |       28 |
| Asian, NHOPI, and White                                  |     2679 |
| Black, AIAN, Asian, and White                            |       30 |
| AIAN, Asian, NHOPI, and White                            |       39 |

``` r
# Year
getData("D176", list(list("Group Results By", "D176.V1-level1")))
```

| Year                           |  Deaths | Population | Crude Rate |
|:-------------------------------|--------:|-----------:|-----------:|
| 2018                           | 2839205 |  327167434 |      867.8 |
| 2019                           | 2854838 |  328239523 |      869.7 |
| 2020                           | 3383729 |  329484123 |     1027.0 |
| 2021 (provisional)             | 3442228 |  329484123 |     1044.7 |
| 2022 (provisional and partial) |  476136 |  329484123 |      144.5 |

``` r
# Month
getData("D176", list(list("Group Results By", "D176.V1-level2")))
```

| Month                                | Deaths | Population     | Crude Rate     |
|:-------------------------------------|-------:|:---------------|:---------------|
| Jan., 2018                           | 286744 | Not Applicable | Not Applicable |
| Feb., 2018                           | 236998 | Not Applicable | Not Applicable |
| Mar., 2018                           | 248805 | Not Applicable | Not Applicable |
| Apr., 2018                           | 233164 | Not Applicable | Not Applicable |
| May, 2018                            | 228772 | Not Applicable | Not Applicable |
| Jun., 2018                           | 220103 | Not Applicable | Not Applicable |
| Jul., 2018                           | 225111 | Not Applicable | Not Applicable |
| Aug., 2018                           | 224254 | Not Applicable | Not Applicable |
| Sep., 2018                           | 218696 | Not Applicable | Not Applicable |
| Oct., 2018                           | 233903 | Not Applicable | Not Applicable |
| Nov., 2018                           | 233375 | Not Applicable | Not Applicable |
| Dec., 2018                           | 249280 | Not Applicable | Not Applicable |
| Jan., 2019                           | 257649 | Not Applicable | Not Applicable |
| Feb., 2019                           | 232821 | Not Applicable | Not Applicable |
| Mar., 2019                           | 254929 | Not Applicable | Not Applicable |
| Apr., 2019                           | 235254 | Not Applicable | Not Applicable |
| May, 2019                            | 236893 | Not Applicable | Not Applicable |
| Jun., 2019                           | 225422 | Not Applicable | Not Applicable |
| Jul., 2019                           | 229211 | Not Applicable | Not Applicable |
| Aug., 2019                           | 227280 | Not Applicable | Not Applicable |
| Sep., 2019                           | 222715 | Not Applicable | Not Applicable |
| Oct., 2019                           | 237661 | Not Applicable | Not Applicable |
| Nov., 2019                           | 239028 | Not Applicable | Not Applicable |
| Dec., 2019                           | 255975 | Not Applicable | Not Applicable |
| Jan., 2020                           | 264062 | Not Applicable | Not Applicable |
| Feb., 2020                           | 244431 | Not Applicable | Not Applicable |
| Mar., 2020                           | 269239 | Not Applicable | Not Applicable |
| Apr., 2020                           | 321879 | Not Applicable | Not Applicable |
| May, 2020                            | 280152 | Not Applicable | Not Applicable |
| Jun., 2020                           | 249993 | Not Applicable | Not Applicable |
| Jul., 2020                           | 278409 | Not Applicable | Not Applicable |
| Aug., 2020                           | 276731 | Not Applicable | Not Applicable |
| Sep., 2020                           | 256732 | Not Applicable | Not Applicable |
| Oct., 2020                           | 273443 | Not Applicable | Not Applicable |
| Nov., 2020                           | 302090 | Not Applicable | Not Applicable |
| Dec., 2020                           | 366568 | Not Applicable | Not Applicable |
| Jan., 2021 (provisional)             | 372824 | Not Applicable | Not Applicable |
| Feb., 2021 (provisional)             | 281927 | Not Applicable | Not Applicable |
| Mar., 2021 (provisional)             | 270405 | Not Applicable | Not Applicable |
| Apr., 2021 (provisional)             | 256413 | Not Applicable | Not Applicable |
| May, 2021 (provisional)              | 257578 | Not Applicable | Not Applicable |
| Jun., 2021 (provisional)             | 244382 | Not Applicable | Not Applicable |
| Jul., 2021 (provisional)             | 256867 | Not Applicable | Not Applicable |
| Aug., 2021 (provisional)             | 302483 | Not Applicable | Not Applicable |
| Sep., 2021 (provisional)             | 308916 | Not Applicable | Not Applicable |
| Oct., 2021 (provisional)             | 296649 | Not Applicable | Not Applicable |
| Nov., 2021 (provisional)             | 283278 | Not Applicable | Not Applicable |
| Dec., 2021 (provisional)             | 310506 | Not Applicable | Not Applicable |
| Jan., 2022 (provisional)             | 335482 | Not Applicable | Not Applicable |
| Feb., 2022 (provisional and partial) | 140654 | Not Applicable | Not Applicable |

``` r
# MMWR Year
getData("D176", list(list("Group Results By", "D176.V100-level1"),
                     list("O_dates", "MMWR")))
```

    ## Couldn't find: "O_dates" but including anyway.

| MMWR Year                      |  Deaths | Population | Crude Rate |
|:-------------------------------|--------:|-----------:|-----------:|
| 2018                           | 2822979 |  327167434 |      862.9 |
| 2019                           | 2845958 |  328239523 |      867.0 |
| 2020                           | 3434127 |  329484123 |     1042.3 |
| 2021 (provisional)             | 3427318 |  329484123 |     1040.2 |
| 2022 (provisional and partial) |  465754 |  329484123 |      141.4 |

``` r
# MMWR Week
getData("D176", list(list("Group Results By", "D176.V100-level2"),
                     list("O_dates", "MMWR")))
```

    ## Couldn't find: "O_dates" but including anyway.

| MMWR Week                                            | Deaths | Population     | Crude Rate     |
|:-----------------------------------------------------|-------:|:---------------|:---------------|
| 2018 Week 01 ending January 06, 2018                 |  57113 | Not Applicable | Not Applicable |
| 2018 Week 02 ending January 13, 2018                 |  67495 | Not Applicable | Not Applicable |
| 2018 Week 03 ending January 20, 2018                 |  64647 | Not Applicable | Not Applicable |
| 2018 Week 04 ending January 27, 2018                 |  62780 | Not Applicable | Not Applicable |
| 2018 Week 05 ending February 03, 2018                |  60974 | Not Applicable | Not Applicable |
| 2018 Week 06 ending February 10, 2018                |  61110 | Not Applicable | Not Applicable |
| 2018 Week 07 ending February 17, 2018                |  59779 | Not Applicable | Not Applicable |
| 2018 Week 08 ending February 24, 2018                |  57793 | Not Applicable | Not Applicable |
| 2018 Week 09 ending March 03, 2018                   |  56692 | Not Applicable | Not Applicable |
| 2018 Week 10 ending March 10, 2018                   |  57093 | Not Applicable | Not Applicable |
| 2018 Week 11 ending March 17, 2018                   |  56326 | Not Applicable | Not Applicable |
| 2018 Week 12 ending March 24, 2018                   |  55766 | Not Applicable | Not Applicable |
| 2018 Week 13 ending March 31, 2018                   |  54918 | Not Applicable | Not Applicable |
| 2018 Week 14 ending April 07, 2018                   |  55294 | Not Applicable | Not Applicable |
| 2018 Week 15 ending April 14, 2018                   |  55228 | Not Applicable | Not Applicable |
| 2018 Week 16 ending April 21, 2018                   |  54038 | Not Applicable | Not Applicable |
| 2018 Week 17 ending April 28, 2018                   |  53727 | Not Applicable | Not Applicable |
| 2018 Week 18 ending May 05, 2018                     |  53741 | Not Applicable | Not Applicable |
| 2018 Week 19 ending May 12, 2018                     |  52105 | Not Applicable | Not Applicable |
| 2018 Week 20 ending May 19, 2018                     |  50618 | Not Applicable | Not Applicable |
| 2018 Week 21 ending May 26, 2018                     |  50929 | Not Applicable | Not Applicable |
| 2018 Week 22 ending June 02, 2018                    |  51045 | Not Applicable | Not Applicable |
| 2018 Week 23 ending June 09, 2018                    |  52001 | Not Applicable | Not Applicable |
| 2018 Week 24 ending June 16, 2018                    |  51387 | Not Applicable | Not Applicable |
| 2018 Week 25 ending June 23, 2018                    |  51044 | Not Applicable | Not Applicable |
| 2018 Week 26 ending June 30, 2018                    |  50855 | Not Applicable | Not Applicable |
| 2018 Week 27 ending July 07, 2018                    |  51684 | Not Applicable | Not Applicable |
| 2018 Week 28 ending July 14, 2018                    |  51191 | Not Applicable | Not Applicable |
| 2018 Week 29 ending July 21, 2018                    |  50609 | Not Applicable | Not Applicable |
| 2018 Week 30 ending July 28, 2018                    |  50274 | Not Applicable | Not Applicable |
| 2018 Week 31 ending August 04, 2018                  |  50637 | Not Applicable | Not Applicable |
| 2018 Week 32 ending August 11, 2018                  |  50967 | Not Applicable | Not Applicable |
| 2018 Week 33 ending August 18, 2018                  |  50301 | Not Applicable | Not Applicable |
| 2018 Week 34 ending August 25, 2018                  |  50459 | Not Applicable | Not Applicable |
| 2018 Week 35 ending September 01, 2018               |  50611 | Not Applicable | Not Applicable |
| 2018 Week 36 ending September 08, 2018               |  50299 | Not Applicable | Not Applicable |
| 2018 Week 37 ending September 15, 2018               |  51083 | Not Applicable | Not Applicable |
| 2018 Week 38 ending September 22, 2018               |  51583 | Not Applicable | Not Applicable |
| 2018 Week 39 ending September 29, 2018               |  50959 | Not Applicable | Not Applicable |
| 2018 Week 40 ending October 06, 2018                 |  52357 | Not Applicable | Not Applicable |
| 2018 Week 41 ending October 13, 2018                 |  51849 | Not Applicable | Not Applicable |
| 2018 Week 42 ending October 20, 2018                 |  52979 | Not Applicable | Not Applicable |
| 2018 Week 43 ending October 27, 2018                 |  53763 | Not Applicable | Not Applicable |
| 2018 Week 44 ending November 03, 2018                |  53638 | Not Applicable | Not Applicable |
| 2018 Week 45 ending November 10, 2018                |  53561 | Not Applicable | Not Applicable |
| 2018 Week 46 ending November 17, 2018                |  54698 | Not Applicable | Not Applicable |
| 2018 Week 47 ending November 24, 2018                |  54847 | Not Applicable | Not Applicable |
| 2018 Week 48 ending December 01, 2018                |  55060 | Not Applicable | Not Applicable |
| 2018 Week 49 ending December 08, 2018                |  55967 | Not Applicable | Not Applicable |
| 2018 Week 50 ending December 15, 2018                |  56387 | Not Applicable | Not Applicable |
| 2018 Week 51 ending December 22, 2018                |  56528 | Not Applicable | Not Applicable |
| 2018 Week 52 ending December 29, 2018                |  56026 | Not Applicable | Not Applicable |
| 2018 Week Not Available                              |    164 | Not Applicable | Not Applicable |
| 2019 Week 01 ending January 05, 2019                 |  58299 | Not Applicable | Not Applicable |
| 2019 Week 02 ending January 12, 2019                 |  58362 | Not Applicable | Not Applicable |
| 2019 Week 03 ending January 19, 2019                 |  58220 | Not Applicable | Not Applicable |
| 2019 Week 04 ending January 26, 2019                 |  57908 | Not Applicable | Not Applicable |
| 2019 Week 05 ending February 02, 2019                |  58151 | Not Applicable | Not Applicable |
| 2019 Week 06 ending February 09, 2019                |  58524 | Not Applicable | Not Applicable |
| 2019 Week 07 ending February 16, 2019                |  58000 | Not Applicable | Not Applicable |
| 2019 Week 08 ending February 23, 2019                |  58005 | Not Applicable | Not Applicable |
| 2019 Week 09 ending March 02, 2019                   |  57972 | Not Applicable | Not Applicable |
| 2019 Week 10 ending March 09, 2019                   |  58546 | Not Applicable | Not Applicable |
| 2019 Week 11 ending March 16, 2019                   |  57917 | Not Applicable | Not Applicable |
| 2019 Week 12 ending March 23, 2019                   |  57096 | Not Applicable | Not Applicable |
| 2019 Week 13 ending March 30, 2019                   |  56675 | Not Applicable | Not Applicable |
| 2019 Week 14 ending April 06, 2019                   |  56598 | Not Applicable | Not Applicable |
| 2019 Week 15 ending April 13, 2019                   |  55492 | Not Applicable | Not Applicable |
| 2019 Week 16 ending April 20, 2019                   |  54470 | Not Applicable | Not Applicable |
| 2019 Week 17 ending April 27, 2019                   |  53656 | Not Applicable | Not Applicable |
| 2019 Week 18 ending May 04, 2019                     |  53987 | Not Applicable | Not Applicable |
| 2019 Week 19 ending May 11, 2019                     |  53478 | Not Applicable | Not Applicable |
| 2019 Week 20 ending May 18, 2019                     |  53578 | Not Applicable | Not Applicable |
| 2019 Week 21 ending May 25, 2019                     |  53695 | Not Applicable | Not Applicable |
| 2019 Week 22 ending June 01, 2019                    |  52727 | Not Applicable | Not Applicable |
| 2019 Week 23 ending June 08, 2019                    |  53141 | Not Applicable | Not Applicable |
| 2019 Week 24 ending June 15, 2019                    |  52647 | Not Applicable | Not Applicable |
| 2019 Week 25 ending June 22, 2019                    |  52292 | Not Applicable | Not Applicable |
| 2019 Week 26 ending June 29, 2019                    |  52209 | Not Applicable | Not Applicable |
| 2019 Week 27 ending July 06, 2019                    |  52344 | Not Applicable | Not Applicable |
| 2019 Week 28 ending July 13, 2019                    |  51931 | Not Applicable | Not Applicable |
| 2019 Week 29 ending July 20, 2019                    |  51649 | Not Applicable | Not Applicable |
| 2019 Week 30 ending July 27, 2019                    |  51662 | Not Applicable | Not Applicable |
| 2019 Week 31 ending August 03, 2019                  |  51410 | Not Applicable | Not Applicable |
| 2019 Week 32 ending August 10, 2019                  |  51747 | Not Applicable | Not Applicable |
| 2019 Week 33 ending August 17, 2019                  |  51023 | Not Applicable | Not Applicable |
| 2019 Week 34 ending August 24, 2019                  |  51022 | Not Applicable | Not Applicable |
| 2019 Week 35 ending August 31, 2019                  |  51162 | Not Applicable | Not Applicable |
| 2019 Week 36 ending September 07, 2019               |  51836 | Not Applicable | Not Applicable |
| 2019 Week 37 ending September 14, 2019               |  51633 | Not Applicable | Not Applicable |
| 2019 Week 38 ending September 21, 2019               |  51758 | Not Applicable | Not Applicable |
| 2019 Week 39 ending September 28, 2019               |  52758 | Not Applicable | Not Applicable |
| 2019 Week 40 ending October 05, 2019                 |  52564 | Not Applicable | Not Applicable |
| 2019 Week 41 ending October 12, 2019                 |  53092 | Not Applicable | Not Applicable |
| 2019 Week 42 ending October 19, 2019                 |  54341 | Not Applicable | Not Applicable |
| 2019 Week 43 ending October 26, 2019                 |  54049 | Not Applicable | Not Applicable |
| 2019 Week 44 ending November 02, 2019                |  54087 | Not Applicable | Not Applicable |
| 2019 Week 45 ending November 09, 2019                |  55699 | Not Applicable | Not Applicable |
| 2019 Week 46 ending November 16, 2019                |  55889 | Not Applicable | Not Applicable |
| 2019 Week 47 ending November 23, 2019                |  56200 | Not Applicable | Not Applicable |
| 2019 Week 48 ending November 30, 2019                |  55468 | Not Applicable | Not Applicable |
| 2019 Week 49 ending December 07, 2019                |  57303 | Not Applicable | Not Applicable |
| 2019 Week 50 ending December 14, 2019                |  57660 | Not Applicable | Not Applicable |
| 2019 Week 51 ending December 21, 2019                |  57425 | Not Applicable | Not Applicable |
| 2019 Week 52 ending December 28, 2019                |  58462 | Not Applicable | Not Applicable |
| 2019 Week Not Available                              |    139 | Not Applicable | Not Applicable |
| 2020 Week 01 ending January 04, 2020                 |  60036 | Not Applicable | Not Applicable |
| 2020 Week 02 ending January 11, 2020                 |  60586 | Not Applicable | Not Applicable |
| 2020 Week 03 ending January 18, 2020                 |  59213 | Not Applicable | Not Applicable |
| 2020 Week 04 ending January 25, 2020                 |  59020 | Not Applicable | Not Applicable |
| 2020 Week 05 ending February 01, 2020                |  58699 | Not Applicable | Not Applicable |
| 2020 Week 06 ending February 08, 2020                |  59353 | Not Applicable | Not Applicable |
| 2020 Week 07 ending February 15, 2020                |  58699 | Not Applicable | Not Applicable |
| 2020 Week 08 ending February 22, 2020                |  58773 | Not Applicable | Not Applicable |
| 2020 Week 09 ending February 29, 2020                |  59200 | Not Applicable | Not Applicable |
| 2020 Week 10 ending March 07, 2020                   |  59567 | Not Applicable | Not Applicable |
| 2020 Week 11 ending March 14, 2020                   |  58547 | Not Applicable | Not Applicable |
| 2020 Week 12 ending March 21, 2020                   |  59093 | Not Applicable | Not Applicable |
| 2020 Week 13 ending March 28, 2020                   |  62876 | Not Applicable | Not Applicable |
| 2020 Week 14 ending April 04, 2020                   |  72144 | Not Applicable | Not Applicable |
| 2020 Week 15 ending April 11, 2020                   |  78946 | Not Applicable | Not Applicable |
| 2020 Week 16 ending April 18, 2020                   |  76698 | Not Applicable | Not Applicable |
| 2020 Week 17 ending April 25, 2020                   |  73774 | Not Applicable | Not Applicable |
| 2020 Week 18 ending May 02, 2020                     |  69187 | Not Applicable | Not Applicable |
| 2020 Week 19 ending May 09, 2020                     |  66710 | Not Applicable | Not Applicable |
| 2020 Week 20 ending May 16, 2020                     |  64398 | Not Applicable | Not Applicable |
| 2020 Week 21 ending May 23, 2020                     |  61524 | Not Applicable | Not Applicable |
| 2020 Week 22 ending May 30, 2020                     |  59594 | Not Applicable | Not Applicable |
| 2020 Week 23 ending June 06, 2020                    |  58805 | Not Applicable | Not Applicable |
| 2020 Week 24 ending June 13, 2020                    |  57921 | Not Applicable | Not Applicable |
| 2020 Week 25 ending June 20, 2020                    |  57904 | Not Applicable | Not Applicable |
| 2020 Week 26 ending June 27, 2020                    |  58393 | Not Applicable | Not Applicable |
| 2020 Week 27 ending July 04, 2020                    |  59703 | Not Applicable | Not Applicable |
| 2020 Week 28 ending July 11, 2020                    |  61799 | Not Applicable | Not Applicable |
| 2020 Week 29 ending July 18, 2020                    |  62997 | Not Applicable | Not Applicable |
| 2020 Week 30 ending July 25, 2020                    |  64120 | Not Applicable | Not Applicable |
| 2020 Week 31 ending August 01, 2020                  |  64120 | Not Applicable | Not Applicable |
| 2020 Week 32 ending August 08, 2020                  |  63577 | Not Applicable | Not Applicable |
| 2020 Week 33 ending August 15, 2020                  |  63511 | Not Applicable | Not Applicable |
| 2020 Week 34 ending August 22, 2020                  |  62439 | Not Applicable | Not Applicable |
| 2020 Week 35 ending August 29, 2020                  |  60979 | Not Applicable | Not Applicable |
| 2020 Week 36 ending September 05, 2020               |  60122 | Not Applicable | Not Applicable |
| 2020 Week 37 ending September 12, 2020               |  59548 | Not Applicable | Not Applicable |
| 2020 Week 38 ending September 19, 2020               |  59637 | Not Applicable | Not Applicable |
| 2020 Week 39 ending September 26, 2020               |  60508 | Not Applicable | Not Applicable |
| 2020 Week 40 ending October 03, 2020                 |  59708 | Not Applicable | Not Applicable |
| 2020 Week 41 ending October 10, 2020                 |  61672 | Not Applicable | Not Applicable |
| 2020 Week 42 ending October 17, 2020                 |  60509 | Not Applicable | Not Applicable |
| 2020 Week 43 ending October 24, 2020                 |  62089 | Not Applicable | Not Applicable |
| 2020 Week 44 ending October 31, 2020                 |  63322 | Not Applicable | Not Applicable |
| 2020 Week 45 ending November 07, 2020                |  67472 | Not Applicable | Not Applicable |
| 2020 Week 46 ending November 14, 2020                |  68727 | Not Applicable | Not Applicable |
| 2020 Week 47 ending November 21, 2020                |  71539 | Not Applicable | Not Applicable |
| 2020 Week 48 ending November 28, 2020                |  73186 | Not Applicable | Not Applicable |
| 2020 Week 49 ending December 05, 2020                |  77274 | Not Applicable | Not Applicable |
| 2020 Week 50 ending December 12, 2020                |  81861 | Not Applicable | Not Applicable |
| 2020 Week 51 ending December 19, 2020                |  82802 | Not Applicable | Not Applicable |
| 2020 Week 52 ending December 26, 2020                |  84227 | Not Applicable | Not Applicable |
| 2020 Week 53 ending January 02, 2021                 |  86821 | Not Applicable | Not Applicable |
| 2020 Week Not Available                              |    198 | Not Applicable | Not Applicable |
| 2021 Week 01 ending January 09, 2021 (provisional)   |  86875 | Not Applicable | Not Applicable |
| 2021 Week 02 ending January 16, 2021 (provisional)   |  87215 | Not Applicable | Not Applicable |
| 2021 Week 03 ending January 23, 2021 (provisional)   |  83531 | Not Applicable | Not Applicable |
| 2021 Week 04 ending January 30, 2021 (provisional)   |  79029 | Not Applicable | Not Applicable |
| 2021 Week 05 ending February 06, 2021 (provisional)  |  76325 | Not Applicable | Not Applicable |
| 2021 Week 06 ending February 13, 2021 (provisional)  |  71356 | Not Applicable | Not Applicable |
| 2021 Week 07 ending February 20, 2021 (provisional)  |  69357 | Not Applicable | Not Applicable |
| 2021 Week 08 ending February 27, 2021 (provisional)  |  66598 | Not Applicable | Not Applicable |
| 2021 Week 09 ending March 06, 2021 (provisional)     |  63547 | Not Applicable | Not Applicable |
| 2021 Week 10 ending March 13, 2021 (provisional)     |  61721 | Not Applicable | Not Applicable |
| 2021 Week 11 ending March 20, 2021 (provisional)     |  60214 | Not Applicable | Not Applicable |
| 2021 Week 12 ending March 27, 2021 (provisional)     |  60688 | Not Applicable | Not Applicable |
| 2021 Week 13 ending April 03, 2021 (provisional)     |  58546 | Not Applicable | Not Applicable |
| 2021 Week 14 ending April 10, 2021 (provisional)     |  60858 | Not Applicable | Not Applicable |
| 2021 Week 15 ending April 17, 2021 (provisional)     |  58998 | Not Applicable | Not Applicable |
| 2021 Week 16 ending April 24, 2021 (provisional)     |  60106 | Not Applicable | Not Applicable |
| 2021 Week 17 ending May 01, 2021 (provisional)       |  59650 | Not Applicable | Not Applicable |
| 2021 Week 18 ending May 08, 2021 (provisional)       |  58842 | Not Applicable | Not Applicable |
| 2021 Week 19 ending May 15, 2021 (provisional)       |  58297 | Not Applicable | Not Applicable |
| 2021 Week 20 ending May 22, 2021 (provisional)       |  58577 | Not Applicable | Not Applicable |
| 2021 Week 21 ending May 29, 2021 (provisional)       |  57162 | Not Applicable | Not Applicable |
| 2021 Week 22 ending June 05, 2021 (provisional)      |  57292 | Not Applicable | Not Applicable |
| 2021 Week 23 ending June 12, 2021 (provisional)      |  56951 | Not Applicable | Not Applicable |
| 2021 Week 24 ending June 19, 2021 (provisional)      |  57040 | Not Applicable | Not Applicable |
| 2021 Week 25 ending June 26, 2021 (provisional)      |  56674 | Not Applicable | Not Applicable |
| 2021 Week 26 ending July 03, 2021 (provisional)      |  57297 | Not Applicable | Not Applicable |
| 2021 Week 27 ending July 10, 2021 (provisional)      |  56961 | Not Applicable | Not Applicable |
| 2021 Week 28 ending July 17, 2021 (provisional)      |  56954 | Not Applicable | Not Applicable |
| 2021 Week 29 ending July 24, 2021 (provisional)      |  58220 | Not Applicable | Not Applicable |
| 2021 Week 30 ending July 31, 2021 (provisional)      |  60069 | Not Applicable | Not Applicable |
| 2021 Week 31 ending August 07, 2021 (provisional)    |  63446 | Not Applicable | Not Applicable |
| 2021 Week 32 ending August 14, 2021 (provisional)    |  66710 | Not Applicable | Not Applicable |
| 2021 Week 33 ending August 21, 2021 (provisional)    |  69635 | Not Applicable | Not Applicable |
| 2021 Week 34 ending August 28, 2021 (provisional)    |  71772 | Not Applicable | Not Applicable |
| 2021 Week 35 ending September 04, 2021 (provisional) |  72882 | Not Applicable | Not Applicable |
| 2021 Week 36 ending September 11, 2021 (provisional) |  72900 | Not Applicable | Not Applicable |
| 2021 Week 37 ending September 18, 2021 (provisional) |  72490 | Not Applicable | Not Applicable |
| 2021 Week 38 ending September 25, 2021 (provisional) |  71367 | Not Applicable | Not Applicable |
| 2021 Week 39 ending October 02, 2021 (provisional)   |  70520 | Not Applicable | Not Applicable |
| 2021 Week 40 ending October 09, 2021 (provisional)   |  68432 | Not Applicable | Not Applicable |
| 2021 Week 41 ending October 16, 2021 (provisional)   |  66780 | Not Applicable | Not Applicable |
| 2021 Week 42 ending October 23, 2021 (provisional)   |  66132 | Not Applicable | Not Applicable |
| 2021 Week 43 ending October 30, 2021 (provisional)   |  65611 | Not Applicable | Not Applicable |
| 2021 Week 44 ending November 06, 2021 (provisional)  |  65425 | Not Applicable | Not Applicable |
| 2021 Week 45 ending November 13, 2021 (provisional)  |  66125 | Not Applicable | Not Applicable |
| 2021 Week 46 ending November 20, 2021 (provisional)  |  65637 | Not Applicable | Not Applicable |
| 2021 Week 47 ending November 27, 2021 (provisional)  |  66518 | Not Applicable | Not Applicable |
| 2021 Week 48 ending December 04, 2021 (provisional)  |  68543 | Not Applicable | Not Applicable |
| 2021 Week 49 ending December 11, 2021 (provisional)  |  70235 | Not Applicable | Not Applicable |
| 2021 Week 50 ending December 18, 2021 (provisional)  |  69365 | Not Applicable | Not Applicable |
| 2021 Week 51 ending December 25, 2021 (provisional)  |  69980 | Not Applicable | Not Applicable |
| 2021 Week 52 ending January 01, 2022 (provisional)   |  71602 | Not Applicable | Not Applicable |
| 2021 Week Not Available (provisional)                |    261 | Not Applicable | Not Applicable |
| 2022 Week 01 ending January 08, 2022 (provisional)   |  74976 | Not Applicable | Not Applicable |
| 2022 Week 02 ending January 15, 2022 (provisional)   |  78242 | Not Applicable | Not Applicable |
| 2022 Week 03 ending January 22, 2022 (provisional)   |  77238 | Not Applicable | Not Applicable |
| 2022 Week 04 ending January 29, 2022 (provisional)   |  74600 | Not Applicable | Not Applicable |
| 2022 Week 05 ending February 05, 2022 (provisional)  |  67033 | Not Applicable | Not Applicable |
| 2022 Week 06 ending February 12, 2022 (provisional)  |  53645 | Not Applicable | Not Applicable |
| 2022 Week 07 ending February 19, 2022 (provisional)  |  39981 | Not Applicable | Not Applicable |
| 2022 Week Not Available (provisional)                |     39 | Not Applicable | Not Applicable |

``` r
# Autopsy
getData("D176", list(list("Group Results By", "D176.V20")))
```

| Autopsy |   Deaths | Population     | Crude Rate     |
|:--------|---------:|:---------------|:---------------|
| No      | 11615163 | Not Applicable | Not Applicable |
| Yes     |   991161 | Not Applicable | Not Applicable |
| Unknown |   389812 | Not Applicable | Not Applicable |

``` r
# Place of Death
getData("D176", list(list("Group Results By", "D176.V21")))
```

| Place of Death                      |  Deaths | Population     | Crude Rate     |
|:------------------------------------|--------:|:---------------|:---------------|
| Medical Facility - Inpatient        | 3966032 | Not Applicable | Not Applicable |
| Medical Facility - Outpatient or ER |  789668 | Not Applicable | Not Applicable |
| Medical Facility - Dead on Arrival  |   39475 | Not Applicable | Not Applicable |
| Decedent’s home                     | 4237633 | Not Applicable | Not Applicable |
| Hospice facility                    |  882071 | Not Applicable | Not Applicable |
| Nursing home/long term care         | 2213143 | Not Applicable | Not Applicable |
| Other                               |  865812 | Not Applicable | Not Applicable |
| Place of death unknown              |    2302 | Not Applicable | Not Applicable |

``` r
# UCD - 15 Leading Causes of Death
getData("D176", list(list("Group Results By", "D176.V28")))
```

| UCD - 15 Leading Causes of Death                                       |  Deaths | Population | Crude Rate |
|:-----------------------------------------------------------------------|--------:|-----------:|-----------:|
| #Diseases of heart (I00-I09,I11,I13,I20-I51)                           | 2787964 | 1643859326 |      169.6 |
| #Malignant neoplasms (C00-C97)                                         | 2474323 | 1643859326 |      150.5 |
| #COVID-19 (U07.1)                                                      |  854854 | 1643859326 |       52.0 |
| #Accidents (unintentional injuries) (V01-X59,Y85-Y86)                  |  691323 | 1643859326 |       42.1 |
| #Cerebrovascular diseases (I60-I69)                                    |  641490 | 1643859326 |       39.0 |
| #Chronic lower respiratory diseases (J40-J47)                          |  629420 | 1643859326 |       38.3 |
| #Alzheimer disease (G30)                                               |  514091 | 1643859326 |       31.3 |
| #Diabetes mellitus (E10-E14)                                           |  390069 | 1643859326 |       23.7 |
| #Nephritis, nephrotic syndrome and nephrosis (N00-N07,N17-N19,N25-N27) |  216672 | 1643859326 |       13.2 |
| #Influenza and pneumonia (J09-J18)                                     |  210020 | 1643859326 |       12.8 |
| #Chronic liver disease and cirrhosis (K70,K73-K74)                     |  201107 | 1643859326 |       12.2 |
| #Intentional self-harm (suicide) (\*U03,X60-X84,Y87.0)                 |  173817 | 1643859326 |       10.6 |
| #Septicemia (A40-A41)                                                  |  165169 | 1643859326 |       10.0 |
| #Essential hypertension and hypertensive renal disease (I10,I12,I15)   |  162457 | 1643859326 |        9.9 |
| #Parkinson disease (G20-G21)                                           |  153428 | 1643859326 |        9.3 |

``` r
# UCD - 15 Leading Causes of Death (Infants)
getData("D176", list(list("Group Results By", "D176.V29")))
```

Message from query: Please select age value ‘\< 1 year’ or the Infant
Age Groups button when using the 130 Cause or Leading Infants List.

    ## Error in getData("D176", list(list("Group Results By", "D176.V29"))): Internal Server Error (HTTP 500).

``` r
# UCD - ICD Chapter
getData("D176", list(list("Group Results By", "D176.V2-level1")))
```

| UCD - ICD Chapter                                                                                                    |  Deaths | Population | Crude Rate |
|:---------------------------------------------------------------------------------------------------------------------|--------:|-----------:|-----------:|
| Certain infectious and parasitic diseases                                                                            |  277573 | 1643859326 |       16.9 |
| Neoplasms                                                                                                            | 2539740 | 1643859326 |      154.5 |
| Diseases of the blood and blood-forming organs and certain disorders involving the immune mechanism                  |   46363 | 1643859326 |        2.8 |
| Endocrine, nutritional and metabolic diseases                                                                        |  629743 | 1643859326 |       38.3 |
| Mental and behavioural disorders                                                                                     |  571619 | 1643859326 |       34.8 |
| Diseases of the nervous system                                                                                       | 1007452 | 1643859326 |       61.3 |
| Diseases of the eye and adnexa                                                                                       |     245 | 1643859326 |        0.0 |
| Diseases of the ear and mastoid process                                                                              |     350 | 1643859326 |        0.0 |
| Diseases of the circulatory system                                                                                   | 3713608 | 1643859326 |      225.9 |
| Diseases of the respiratory system                                                                                   | 1106754 | 1643859326 |       67.3 |
| Diseases of the digestive system                                                                                     |  494355 | 1643859326 |       30.1 |
| Diseases of the skin and subcutaneous tissue                                                                         |   23023 | 1643859326 |        1.4 |
| Diseases of the musculoskeletal system and connective tissue                                                         |   61722 | 1643859326 |        3.8 |
| Diseases of the genitourinary system                                                                                 |  311024 | 1643859326 |       18.9 |
| Pregnancy, childbirth and the puerperium                                                                             |    5270 | 1643859326 |        0.3 |
| Certain conditions originating in the perinatal period                                                               |   40717 | 1643859326 |        2.5 |
| Congenital malformations, deformations and chromosomal abnormalities                                                 |   39347 | 1643859326 |        2.4 |
| Symptoms, signs and abnormal clinical and laboratory findings, not elsewhere classified                              |  177496 | 1643859326 |       10.8 |
| Codes for special purposes                                                                                           |  855012 | 1643859326 |       52.0 |
| External causes of morbidity and mortality                                                                           |  988462 | 1643859326 |       60.1 |
| Data not shown due to 6 month lag to account for delays in death certificate completion for certain causes of death. |  106261 | 1643859326 |        6.5 |

``` r
# UCD - ICD Sub-Chapter
getData("D176", list(list("Group Results By", "D176.V2-level2")))
```

| UCD - ICD Sub-Chapter                                                                                                |  Deaths | Population | Crude Rate |
|:---------------------------------------------------------------------------------------------------------------------|--------:|-----------:|:-----------|
| Intestinal infectious diseases                                                                                       |   29839 | 1643859326 | 1.8        |
| Tuberculosis                                                                                                         |    2329 | 1643859326 | 0.1        |
| Certain zoonotic bacterial diseases                                                                                  |     176 | 1643859326 | 0.0        |
| Other bacterial diseases                                                                                             |  179839 | 1643859326 | 10.9       |
| Infections with a predominantly sexual mode of transmission                                                          |     182 | 1643859326 | 0.0        |
| Other spirochaetal diseases                                                                                          |      71 | 1643859326 | 0.0        |
| Rickettsioses                                                                                                        |     104 | 1643859326 | 0.0        |
| Viral infections of the central nervous system                                                                       |    3010 | 1643859326 | 0.2        |
| Arthropod-borne viral fevers and viral haemorrhagic fevers                                                           |     484 | 1643859326 | 0.0        |
| Viral infections characterized by skin and mucous membrane lesions                                                   |    1990 | 1643859326 | 0.1        |
| Viral hepatitis                                                                                                      |   16898 | 1643859326 | 1.0        |
| Human immunodeficiency virus \[HIV\] disease                                                                         |   20988 | 1643859326 | 1.3        |
| Other viral diseases                                                                                                 |    8787 | 1643859326 | 0.5        |
| Mycoses                                                                                                              |    5261 | 1643859326 | 0.3        |
| Protozoal diseases                                                                                                   |     943 | 1643859326 | 0.1        |
| Helminthiases                                                                                                        |      77 | 1643859326 | 0.0        |
| Pediculosis, acariasis and other infestations                                                                        |      37 | 1643859326 | 0.0        |
| Sequelae of infectious and parasitic diseases                                                                        |    3726 | 1643859326 | 0.2        |
| Other infectious diseases                                                                                            |    2830 | 1643859326 | 0.2        |
| Malignant neoplasms                                                                                                  | 2474323 | 1643859326 | 150.5      |
| In situ neoplasms                                                                                                    |     510 | 1643859326 | 0.0        |
| Benign neoplasms                                                                                                     |    6464 | 1643859326 | 0.4        |
| Neoplasms of uncertain or unknown behaviour                                                                          |   58443 | 1643859326 | 3.6        |
| Nutritional anaemias                                                                                                 |    1907 | 1643859326 | 0.1        |
| Haemolytic anaemias                                                                                                  |    3541 | 1643859326 | 0.2        |
| Aplastic and other anaemias                                                                                          |   17316 | 1643859326 | 1.1        |
| Coagulation defects, purpura and other haemorrhagic conditions                                                       |   11516 | 1643859326 | 0.7        |
| Other diseases of blood and blood-forming organs                                                                     |    5126 | 1643859326 | 0.3        |
| Certain disorders involving the immune mechanism                                                                     |    6957 | 1643859326 | 0.4        |
| Disorders of thyroid gland                                                                                           |    9204 | 1643859326 | 0.6        |
| Diabetes mellitus                                                                                                    |  390069 | 1643859326 | 23.7       |
| Other disorders of glucose regulation and pancreatic internal secretion                                              |    2269 | 1643859326 | 0.1        |
| Disorders of other endocrine glands                                                                                  |    3130 | 1643859326 | 0.2        |
| Malnutrition                                                                                                         |   54535 | 1643859326 | 3.3        |
| Other nutritional deficiencies                                                                                       |    1397 | 1643859326 | 0.1        |
| Obesity and other hyperalimentation                                                                                  |   38805 | 1643859326 | 2.4        |
| Metabolic disorders                                                                                                  |  130334 | 1643859326 | 7.9        |
| Organic, including symptomatic, mental disorders                                                                     |  489067 | 1643859326 | 29.8       |
| Mental and behavioural disorders due to psychoactive substance use                                                   |   72062 | 1643859326 | 4.4        |
| Schizophrenia, schizotypal and delusional disorders                                                                  |    2675 | 1643859326 | 0.2        |
| Mood \[affective\] disorders                                                                                         |    3032 | 1643859326 | 0.2        |
| Neurotic, stress-related and somatoform disorders                                                                    |    1157 | 1643859326 | 0.1        |
| Behavioural syndromes associated with physiological disturbances and physical factors                                |    1671 | 1643859326 | 0.1        |
| Disorders of adult personality and behaviour                                                                         |      26 | 1643859326 | 0.0        |
| Mental retardation                                                                                                   |    1068 | 1643859326 | 0.1        |
| Disorders of psychological development                                                                               |     604 | 1643859326 | 0.0        |
| Behavioural and emotional disorders with onset usually occurring in childhood and adolescence                        |     111 | 1643859326 | 0.0        |
| Unspecified mental disorder                                                                                          |     146 | 1643859326 | 0.0        |
| Inflammatory diseases of the central nervous system                                                                  |    6260 | 1643859326 | 0.4        |
| Systemic atrophies primarily affecting the central nervous system                                                    |   36535 | 1643859326 | 2.2        |
| Extrapyramidal and movement disorders                                                                                |  161095 | 1643859326 | 9.8        |
| Other degenerative diseases of the nervous system                                                                    |  678768 | 1643859326 | 41.3       |
| Demyelinating diseases of the central nervous system                                                                 |   19319 | 1643859326 | 1.2        |
| Episodic and paroxysmal disorders                                                                                    |   19060 | 1643859326 | 1.2        |
| Nerve, nerve root and plexus disorders                                                                               |     210 | 1643859326 | 0.0        |
| Polyneuropathies and other disorders of the peripheral nervous system                                                |    3594 | 1643859326 | 0.2        |
| Diseases of myoneural junction and muscle                                                                            |   11468 | 1643859326 | 0.7        |
| Cerebral palsy and other paralytic syndromes                                                                         |   13869 | 1643859326 | 0.8        |
| Other disorders of the nervous system                                                                                |   57274 | 1643859326 | 3.5        |
| Disorders of eyelid, lacrimal system and orbit                                                                       |      61 | 1643859326 | 0.0        |
| Disorders of sclera, cornea, iris and ciliary body                                                                   |      12 | 1643859326 | Unreliable |
| Disorders of choroid and retina                                                                                      |      34 | 1643859326 | 0.0        |
| Glaucoma                                                                                                             |      14 | 1643859326 | Unreliable |
| Disorders of vitreous body and globe                                                                                 |      28 | 1643859326 | 0.0        |
| Disorders of optic nerve and visual pathways                                                                         |      10 | 1643859326 | Unreliable |
| Disorders of ocular muscles, binocular movement, accommodation and refraction                                        |      31 | 1643859326 | 0.0        |
| Visual disturbances and blindness                                                                                    |      43 | 1643859326 | 0.0        |
| Diseases of external ear                                                                                             |      25 | 1643859326 | 0.0        |
| Diseases of middle ear and mastoid                                                                                   |     286 | 1643859326 | 0.0        |
| Diseases of inner ear                                                                                                |      23 | 1643859326 | 0.0        |
| Other disorders of ear                                                                                               |      16 | 1643859326 | Unreliable |
| Acute rheumatic fever                                                                                                |     106 | 1643859326 | 0.0        |
| Chronic rheumatic heart diseases                                                                                     |   15307 | 1643859326 | 0.9        |
| Hypertensive diseases                                                                                                |  456659 | 1643859326 | 27.8       |
| Ischaemic heart diseases                                                                                             | 1528486 | 1643859326 | 93.0       |
| Pulmonary heart disease and diseases of pulmonary circulation                                                        |   78224 | 1643859326 | 4.8        |
| Other forms of heart disease                                                                                         |  871639 | 1643859326 | 53.0       |
| Cerebrovascular diseases                                                                                             |  641490 | 1643859326 | 39.0       |
| Diseases of arteries, arterioles and capillaries                                                                     |  100569 | 1643859326 | 6.1        |
| Diseases of veins, lymphatic vessels and lymph nodes, not elsewhere classified                                       |   18132 | 1643859326 | 1.1        |
| Other and unspecified disorders of the circulatory system                                                            |    2996 | 1643859326 | 0.2        |
| Acute upper respiratory infections                                                                                   |     863 | 1643859326 | 0.1        |
| Influenza and pneumonia                                                                                              |  210020 | 1643859326 | 12.8       |
| Other acute lower respiratory infections                                                                             |    1114 | 1643859326 | 0.1        |
| Other diseases of upper respiratory tract                                                                            |    2413 | 1643859326 | 0.1        |
| Chronic lower respiratory diseases                                                                                   |  629420 | 1643859326 | 38.3       |
| Lung diseases due to external agents                                                                                 |   82491 | 1643859326 | 5.0        |
| Other respiratory diseases principally affecting the interstitium                                                    |   94294 | 1643859326 | 5.7        |
| Suppurative and necrotic conditions of lower respiratory tract                                                       |    4188 | 1643859326 | 0.3        |
| Other diseases of pleura                                                                                             |    8633 | 1643859326 | 0.5        |
| Other diseases of the respiratory system                                                                             |   73318 | 1643859326 | 4.5        |
| Diseases of oral cavity, salivary glands and jaws                                                                    |    1200 | 1643859326 | 0.1        |
| Diseases of oesophagus, stomach and duodenum                                                                         |   30879 | 1643859326 | 1.9        |
| Diseases of appendix                                                                                                 |    1704 | 1643859326 | 0.1        |
| Hernia                                                                                                               |    9437 | 1643859326 | 0.6        |
| Noninfective enteritis and colitis                                                                                   |    5620 | 1643859326 | 0.3        |
| Other diseases of intestines                                                                                         |   93101 | 1643859326 | 5.7        |
| Diseases of peritoneum                                                                                               |    9557 | 1643859326 | 0.6        |
| Diseases of liver                                                                                                    |  258719 | 1643859326 | 15.7       |
| Disorders of gallbladder, biliary tract and pancreas                                                                 |   40965 | 1643859326 | 2.5        |
| Other diseases of the digestive system                                                                               |   43173 | 1643859326 | 2.6        |
| Infections of the skin and subcutaneous tissue                                                                       |   12810 | 1643859326 | 0.8        |
| Bullous disorders                                                                                                    |     608 | 1643859326 | 0.0        |
| Dermatitis and eczema                                                                                                |     106 | 1643859326 | 0.0        |
| Papulosquamous disorders                                                                                             |     200 | 1643859326 | 0.0        |
| Urticaria and erythema                                                                                               |     528 | 1643859326 | 0.0        |
| Disorders of skin appendages                                                                                         |      91 | 1643859326 | 0.0        |
| Other disorders of the skin and subcutaneous tissue                                                                  |    8671 | 1643859326 | 0.5        |
| Arthropathies                                                                                                        |   13254 | 1643859326 | 0.8        |
| Systemic connective tissue disorders                                                                                 |   14947 | 1643859326 | 0.9        |
| Dorsopathies                                                                                                         |    7090 | 1643859326 | 0.4        |
| Soft tissue disorders                                                                                                |   11694 | 1643859326 | 0.7        |
| Osteopathies and chondropathies                                                                                      |   14719 | 1643859326 | 0.9        |
| Other disorders of the musculoskeletal system and connective tissue                                                  |      18 | 1643859326 | Unreliable |
| Glomerular diseases                                                                                                  |    3967 | 1643859326 | 0.2        |
| Renal tubulo-interstitial diseases                                                                                   |    7323 | 1643859326 | 0.4        |
| Renal failure                                                                                                        |  212378 | 1643859326 | 12.9       |
| Urolithiasis                                                                                                         |    2977 | 1643859326 | 0.2        |
| Other disorders of kidney and ureter                                                                                 |   22739 | 1643859326 | 1.4        |
| Other diseases of urinary system                                                                                     |   54593 | 1643859326 | 3.3        |
| Diseases of male genital organs                                                                                      |    4600 | 1643859326 | 0.3        |
| Disorders of breast                                                                                                  |     462 | 1643859326 | 0.0        |
| Inflammatory diseases of female pelvic organs                                                                        |     743 | 1643859326 | 0.0        |
| Noninflammatory disorders of female genital tract                                                                    |    1242 | 1643859326 | 0.1        |
| Pregnancy with abortive outcome                                                                                      |     119 | 1643859326 | 0.0        |
| Oedema, proteinuria and hypertensive disorders in pregnancy, childbirth and the puerperium                           |     286 | 1643859326 | 0.0        |
| Other maternal disorders predominantly related to pregnancy                                                          |     935 | 1643859326 | 0.1        |
| Maternal care related to the fetus and amniotic cavity and possible delivery problems                                |     148 | 1643859326 | 0.0        |
| Complications of labour and delivery                                                                                 |     178 | 1643859326 | 0.0        |
| Complications predominantly related to the puerperium                                                                |     306 | 1643859326 | 0.0        |
| Other obstetric conditions, not elsewhere classified                                                                 |    3298 | 1643859326 | 0.2        |
| Newborn affected by maternal factors and by complications of pregnancy, labour and delivery                          |    8917 | 1643859326 | 0.5        |
| Disorders related to length of gestation and fetal growth                                                            |   13758 | 1643859326 | 0.8        |
| Birth trauma                                                                                                         |      61 | 1643859326 | 0.0        |
| Respiratory and cardiovascular disorders specific to the perinatal period                                            |    9019 | 1643859326 | 0.5        |
| Infections specific to the perinatal period                                                                          |    3006 | 1643859326 | 0.2        |
| Haemorrhagic and haematological disorders of newborn                                                                 |    1853 | 1643859326 | 0.1        |
| Transitory endocrine and metabolic disorders specific to newborn                                                     |      34 | 1643859326 | 0.0        |
| Digestive system disorders of newborn                                                                                |    1684 | 1643859326 | 0.1        |
| Conditions involving the integument and temperature regulation of newborn                                            |     741 | 1643859326 | 0.0        |
| Other disorders originating in the perinatal period                                                                  |    1644 | 1643859326 | 0.1        |
| Congenital malformations of the nervous system                                                                       |    4868 | 1643859326 | 0.3        |
| Congenital malformations of eye, ear, face and neck                                                                  |      18 | 1643859326 | Unreliable |
| Congenital malformations of the circulatory system                                                                   |   11726 | 1643859326 | 0.7        |
| Congenital malformations of the respiratory system                                                                   |    1557 | 1643859326 | 0.1        |
| Cleft lip and cleft palate                                                                                           |      19 | 1643859326 | Unreliable |
| Other congenital malformations of the digestive system                                                               |     858 | 1643859326 | 0.1        |
| Congenital malformations of genital organs                                                                           |      21 | 1643859326 | 0.0        |
| Congenital malformations of the urinary system                                                                       |    3432 | 1643859326 | 0.2        |
| Congenital malformations and deformations of the musculoskeletal system                                              |    2495 | 1643859326 | 0.2        |
| Other congenital malformations                                                                                       |    4850 | 1643859326 | 0.3        |
| Chromosomal abnormalities, not elsewhere classified                                                                  |    9503 | 1643859326 | 0.6        |
| Symptoms and signs involving the circulatory and respiratory systems                                                 |   14782 | 1643859326 | 0.9        |
| Symptoms and signs involving the digestive system and abdomen                                                        |    2793 | 1643859326 | 0.2        |
| Symptoms and signs involving the skin and subcutaneous tissue                                                        |      81 | 1643859326 | 0.0        |
| Symptoms and signs involving the nervous and musculoskeletal systems                                                 |     844 | 1643859326 | 0.1        |
| Symptoms and signs involving the urinary system                                                                      |      48 | 1643859326 | 0.0        |
| Symptoms and signs involving cognition, perception, emotional state and behaviour                                    |     817 | 1643859326 | 0.0        |
| Symptoms and signs involving speech and voice                                                                        |     148 | 1643859326 | 0.0        |
| General symptoms and signs                                                                                           |   58810 | 1643859326 | 3.6        |
| Abnormal findings on examination of blood, without diagnosis                                                         |     170 | 1643859326 | 0.0        |
| Abnormal findings on diagnostic imaging and in function studies, without diagnosis                                   |    1631 | 1643859326 | 0.1        |
| Ill-defined and unknown causes of mortality                                                                          |   97371 | 1643859326 | 5.9        |
| Provisional assignment of new diseases of uncertain etiology                                                         |  855012 | 1643859326 | 52.0       |
| Transport accidents                                                                                                  |  158857 | 1643859326 | 9.7        |
| Other external causes of accidental injury                                                                           |  525705 | 1643859326 | 32.0       |
| Intentional self-harm                                                                                                |  173691 | 1643859326 | 10.6       |
| Assault                                                                                                              |   79004 | 1643859326 | 4.8        |
| Event of undetermined intent                                                                                         |   21420 | 1643859326 | 1.3        |
| Legal intervention and operations of war                                                                             |    2475 | 1643859326 | 0.2        |
| Complications of medical and surgical care                                                                           |   19064 | 1643859326 | 1.2        |
| Sequelae of external causes of morbidity and mortality                                                               |    8246 | 1643859326 | 0.5        |
| Data not shown due to 6 month lag to account for delays in death certificate completion for certain causes of death. |  106261 | 1643859326 | 6.5        |

``` r
# Underlying Cause of death
getData("D176", list(list("Group Results By", "D176.V2-level3")))
```

    ## Error: 'NA' does not exist in current working directory ('/Users/joycerobbins/wonderapi/tests').

``` r
# UCD - ICD-10 113 Cause List
getData("D176", list(list("Group Results By", "D176.V4")))
```

| UCD - ICD-10 113 Cause List                                                                                                                                                          |  Deaths | Population | Crude Rate |
|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------:|-----------:|-----------:|
| #Salmonella infections (A01-A02)                                                                                                                                                     |     244 | 1643859326 |        0.0 |
| #Shigellosis and amebiasis (A03,A06)                                                                                                                                                 |      29 | 1643859326 |        0.0 |
| Certain other intestinal infections (A04,A07-A09)                                                                                                                                    |   29533 | 1643859326 |        1.8 |
| #Tuberculosis (A16-A19)                                                                                                                                                              |    2329 | 1643859326 |        0.1 |
| Respiratory tuberculosis (A16)                                                                                                                                                       |    1591 | 1643859326 |        0.1 |
| Other tuberculosis (A17-A19)                                                                                                                                                         |     738 | 1643859326 |        0.0 |
| #Whooping cough (A37)                                                                                                                                                                |      28 | 1643859326 |        0.0 |
| #Meningococcal infection (A39)                                                                                                                                                       |     115 | 1643859326 |        0.0 |
| #Septicemia (A40-A41)                                                                                                                                                                |  165169 | 1643859326 |       10.0 |
| #Syphilis (A50-A53)                                                                                                                                                                  |     172 | 1643859326 |        0.0 |
| #Arthropod-borne viral encephalitis (A83-A84,A85.2)                                                                                                                                  |      31 | 1643859326 |        0.0 |
| #Viral hepatitis (B15-B19)                                                                                                                                                           |   16898 | 1643859326 |        1.0 |
| #Human immunodeficiency virus (HIV) disease (B20-B24)                                                                                                                                |   20988 | 1643859326 |        1.3 |
| #Malaria (B50-B54)                                                                                                                                                                   |      24 | 1643859326 |        0.0 |
| Other and unspecified infectious and parasitic diseases and their sequelae (A00,A05,A20-A36,A42-A44,A48-A49,A54-A79,A81-A82,A85.0-A85.1,A85.8,A86-B04,B06-B09,B25-B49,B55-B99,U07.1) |  896863 | 1643859326 |       54.6 |
| #Malignant neoplasms (C00-C97)                                                                                                                                                       | 2474323 | 1643859326 |      150.5 |
| Malignant neoplasms of lip, oral cavity and pharynx (C00-C14)                                                                                                                        |   44200 | 1643859326 |        2.7 |
| Malignant neoplasm of esophagus (C15)                                                                                                                                                |   64631 | 1643859326 |        3.9 |
| Malignant neoplasm of stomach (C16)                                                                                                                                                  |   45463 | 1643859326 |        2.8 |
| Malignant neoplasms of colon, rectum and anus (C18-C21)                                                                                                                              |  219246 | 1643859326 |       13.3 |
| Malignant neoplasms of liver and intrahepatic bile ducts (C22)                                                                                                                       |  115809 | 1643859326 |        7.0 |
| Malignant neoplasm of pancreas (C25)                                                                                                                                                 |  190936 | 1643859326 |       11.6 |
| Malignant neoplasm of larynx (C32)                                                                                                                                                   |   15691 | 1643859326 |        1.0 |
| Malignant neoplasms of trachea, bronchus and lung (C33-C34)                                                                                                                          |  567272 | 1643859326 |       34.5 |
| Malignant melanoma of skin (C43)                                                                                                                                                     |   33645 | 1643859326 |        2.0 |
| Malignant neoplasm of breast (C50)                                                                                                                                                   |  176027 | 1643859326 |       10.7 |
| Malignant neoplasm of cervix uteri (C53)                                                                                                                                             |   17374 | 1643859326 |        1.1 |
| Malignant neoplasms of corpus uteri and uterus, part unspecified (C54-C55)                                                                                                           |   48334 | 1643859326 |        2.9 |
| Malignant neoplasm of ovary (C56)                                                                                                                                                    |   55585 | 1643859326 |        3.4 |
| Malignant neoplasm of prostate (C61)                                                                                                                                                 |  132287 | 1643859326 |        8.0 |
| Malignant neoplasms of kidney and renal pelvis (C64-C65)                                                                                                                             |   58323 | 1643859326 |        3.5 |
| Malignant neoplasm of bladder (C67)                                                                                                                                                  |   68922 | 1643859326 |        4.2 |
| Malignant neoplasms of meninges, brain and other parts of central nervous system (C70-C72)                                                                                           |   72458 | 1643859326 |        4.4 |
| Malignant neoplasms of lymphoid, hematopoietic and related tissue (C81-C96)                                                                                                          |  236431 | 1643859326 |       14.4 |
| Hodgkin disease (C81)                                                                                                                                                                |    4095 | 1643859326 |        0.2 |
| Non-Hodgkin lymphoma (C82-C85)                                                                                                                                                       |   82964 | 1643859326 |        5.0 |
| Leukemia (C91-C95)                                                                                                                                                                   |   95728 | 1643859326 |        5.8 |
| Multiple myeloma and immunoproliferative neoplasms (C88,C90)                                                                                                                         |   53108 | 1643859326 |        3.2 |
| Other and unspecified malignant neoplasms of lymphoid, hematopoietic and related tissue (C96)                                                                                        |     536 | 1643859326 |        0.0 |
| All other and unspecified malignant neoplasms (C17,C23-C24,C26-C31,C37-C41,C44-C49,C51-C52,C57-C60,C62-C63,C66,C68-C69,C73-C80,C97)                                                  |  311689 | 1643859326 |       19.0 |
| #In situ neoplasms, benign neoplasms and neoplasms of uncertain or unknown behavior (D00-D48)                                                                                        |   65417 | 1643859326 |        4.0 |
| #Anemias (D50-D64)                                                                                                                                                                   |   22764 | 1643859326 |        1.4 |
| #Diabetes mellitus (E10-E14)                                                                                                                                                         |  390069 | 1643859326 |       23.7 |
| #Nutritional deficiencies (E40-E64)                                                                                                                                                  |   55932 | 1643859326 |        3.4 |
| Malnutrition (E40-E46)                                                                                                                                                               |   54535 | 1643859326 |        3.3 |
| Other nutritional deficiencies (E50-E64)                                                                                                                                             |    1397 | 1643859326 |        0.1 |
| #Meningitis (G00,G03)                                                                                                                                                                |    2309 | 1643859326 |        0.1 |
| #Parkinson disease (G20-G21)                                                                                                                                                         |  153428 | 1643859326 |        9.3 |
| #Alzheimer disease (G30)                                                                                                                                                             |  514091 | 1643859326 |       31.3 |
| Major cardiovascular diseases (I00-I78)                                                                                                                                              | 3692480 | 1643859326 |      224.6 |
| #Diseases of heart (I00-I09,I11,I13,I20-I51)                                                                                                                                         | 2787964 | 1643859326 |      169.6 |
| Acute rheumatic fever and chronic rheumatic heart diseases (I00-I09)                                                                                                                 |   15413 | 1643859326 |        0.9 |
| Hypertensive heart disease (I11)                                                                                                                                                     |  247393 | 1643859326 |       15.0 |
| Hypertensive heart and renal disease (I13)                                                                                                                                           |   46809 | 1643859326 |        2.8 |
| Ischemic heart diseases (I20-I25)                                                                                                                                                    | 1528486 | 1643859326 |       93.0 |
| Acute myocardial infarction (I21-I22)                                                                                                                                                |  444093 | 1643859326 |       27.0 |
| Other acute ischemic heart diseases (I24)                                                                                                                                            |   18719 | 1643859326 |        1.1 |
| Other forms of chronic ischemic heart disease (I20,I25)                                                                                                                              | 1065674 | 1643859326 |       64.8 |
| Atherosclerotic cardiovascular disease, so described (I25.0)                                                                                                                         |  293575 | 1643859326 |       17.9 |
| All other forms of chronic ischemic heart disease (I20,I25.1-I25.9)                                                                                                                  |  772099 | 1643859326 |       47.0 |
| Other heart diseases (I26-I51)                                                                                                                                                       |  949863 | 1643859326 |       57.8 |
| Acute and subacute endocarditis (I33)                                                                                                                                                |    6993 | 1643859326 |        0.4 |
| Diseases of pericardium and acute myocarditis (I30-I31,I40)                                                                                                                          |    4469 | 1643859326 |        0.3 |
| Heart failure (I50)                                                                                                                                                                  |  351684 | 1643859326 |       21.4 |
| All other forms of heart disease (I26-I28,I34-I38,I42-I49,I51)                                                                                                                       |  586717 | 1643859326 |       35.7 |
| #Essential hypertension and hypertensive renal disease (I10,I12,I15)                                                                                                                 |  162457 | 1643859326 |        9.9 |
| #Cerebrovascular diseases (I60-I69)                                                                                                                                                  |  641490 | 1643859326 |       39.0 |
| #Atherosclerosis (I70)                                                                                                                                                               |   18901 | 1643859326 |        1.1 |
| Other diseases of circulatory system (I71-I78)                                                                                                                                       |   81668 | 1643859326 |        5.0 |
| #Aortic aneurysm and dissection (I71)                                                                                                                                                |   40191 | 1643859326 |        2.4 |
| Other diseases of arteries, arterioles and capillaries (I72-I78)                                                                                                                     |   41477 | 1643859326 |        2.5 |
| Other disorders of circulatory system (I80-I99)                                                                                                                                      |   21128 | 1643859326 |        1.3 |
| #Influenza and pneumonia (J09-J18)                                                                                                                                                   |  210020 | 1643859326 |       12.8 |
| Influenza (J09-J11)                                                                                                                                                                  |   23975 | 1643859326 |        1.5 |
| Pneumonia (J12-J18)                                                                                                                                                                  |  186045 | 1643859326 |       11.3 |
| Other acute lower respiratory infections (J20-J22,U04)                                                                                                                               |    1178 | 1643859326 |        0.1 |
| #Acute bronchitis and bronchiolitis (J20-J21)                                                                                                                                        |     783 | 1643859326 |        0.0 |
| Other and unspecified acute lower respiratory infections (J22,U04)                                                                                                                   |     395 | 1643859326 |        0.0 |
| #Chronic lower respiratory diseases (J40-J47)                                                                                                                                        |  629420 | 1643859326 |       38.3 |
| Bronchitis, chronic and unspecified (J40-J42)                                                                                                                                        |    1789 | 1643859326 |        0.1 |
| Emphysema (J43)                                                                                                                                                                      |   30467 | 1643859326 |        1.9 |
| Asthma (J45-J46)                                                                                                                                                                     |   14933 | 1643859326 |        0.9 |
| Other chronic lower respiratory diseases (J44,J47)                                                                                                                                   |  582231 | 1643859326 |       35.4 |
| #Pneumoconioses and chemical effects (J60-J66,J68,U07.0)                                                                                                                             |    2577 | 1643859326 |        0.2 |
| #Pneumonitis due to solids and liquids (J69)                                                                                                                                         |   79113 | 1643859326 |        4.8 |
| Other diseases of respiratory system (J00-J06,J30- J39,J67,J70-J98)                                                                                                                  |  184582 | 1643859326 |       11.2 |
| #Peptic ulcer (K25-K28)                                                                                                                                                              |   15193 | 1643859326 |        0.9 |
| #Diseases of appendix (K35-K38)                                                                                                                                                      |    1704 | 1643859326 |        0.1 |
| #Hernia (K40-K46)                                                                                                                                                                    |    9437 | 1643859326 |        0.6 |
| #Chronic liver disease and cirrhosis (K70,K73-K74)                                                                                                                                   |  201107 | 1643859326 |       12.2 |
| Alcoholic liver disease (K70)                                                                                                                                                        |  112919 | 1643859326 |        6.9 |
| Other chronic liver disease and cirrhosis (K73-K74)                                                                                                                                  |   88188 | 1643859326 |        5.4 |
| #Cholelithiasis and other disorders of gallbladder (K80-K82)                                                                                                                         |   16557 | 1643859326 |        1.0 |
| #Nephritis, nephrotic syndrome and nephrosis (N00-N07,N17-N19,N25-N27)                                                                                                               |  216672 | 1643859326 |       13.2 |
| Acute and rapidly progressive nephritic and nephrotic syndrome (N00-N01,N04)                                                                                                         |    2985 | 1643859326 |        0.2 |
| Chronic glomerulonephritis, nephritis and nephropathy not specified as acute or chronic, and renal sclerosis unspecified (N02-N03,N05-N07,N26)                                       |    1198 | 1643859326 |        0.1 |
| Renal failure (N17-N19)                                                                                                                                                              |  212378 | 1643859326 |       12.9 |
| Other disorders of kidney (N25,N27)                                                                                                                                                  |     111 | 1643859326 |        0.0 |
| #Infections of kidney (N10-N12,N13.6,N15.1)                                                                                                                                          |    4257 | 1643859326 |        0.3 |
| #Hyperplasia of prostate (N40)                                                                                                                                                       |    2725 | 1643859326 |        0.2 |
| #Inflammatory diseases of female pelvic organs (N70-N76)                                                                                                                             |     743 | 1643859326 |        0.0 |
| #Pregnancy, childbirth and the puerperium (O00-O99)                                                                                                                                  |    5270 | 1643859326 |        0.3 |
| Pregnancy with abortive outcome (O00-O07)                                                                                                                                            |     119 | 1643859326 |        0.0 |
| Other complications of pregnancy, childbirth and the puerperium (O10-O99)                                                                                                            |    5151 | 1643859326 |        0.3 |
| #Certain conditions originating in the perinatal period (P00-P96)                                                                                                                    |   40717 | 1643859326 |        2.5 |
| #Congenital malformations, deformations and chromosomal abnormalities (Q00-Q99)                                                                                                      |   39347 | 1643859326 |        2.4 |
| Symptoms, signs and abnormal clinical and laboratory findings, not elsewhere classified (R00-R99)                                                                                    |  177496 | 1643859326 |       10.8 |
| All other diseases (Residual)                                                                                                                                                        | 1538908 | 1643859326 |       93.6 |
| #Accidents (unintentional injuries) (V01-X59,Y85-Y86)                                                                                                                                |  691323 | 1643859326 |       42.1 |
| Transport accidents (V01-V99,Y85)                                                                                                                                                    |  161753 | 1643859326 |        9.8 |
| Motor vehicle accidents (V02-V04,V09.0,V09.2,V12-V14,V19.0-V19.2,V19.4-V19.6,V20-V79,V80.3-V80.5,V81.0-V81.1,V82.0-V82.1,V83-V86,V87.0-V87.8,V88.0-V88.8,V89.0,V89.2)                |  151542 | 1643859326 |        9.2 |
| Other land transport accidents (V01,V05-V06,V09.1,V09.3-V09.9,V10-V11,V15-V18,V19.3,V19.8-V19.9,V80.0-V80.2,V80.6-V80.9,V81.2-V81.9,V82.2-V82.9,V87.9,V88.9,V89.1,V89.3,V89.9)       |    4023 | 1643859326 |        0.2 |
| Water, air and space, and other and unspecified transport accidents and their sequelae (V90-V99,Y85)                                                                                 |    6188 | 1643859326 |        0.4 |
| Nontransport accidents (W00-X59,Y86)                                                                                                                                                 |  529570 | 1643859326 |       32.2 |
| Falls (W00-W19)                                                                                                                                                                      |  148030 | 1643859326 |        9.0 |
| Accidental discharge of firearms (W32-W34)                                                                                                                                           |    1864 | 1643859326 |        0.1 |
| Accidental drowning and submersion (W65-W74)                                                                                                                                         |   14923 | 1643859326 |        0.9 |
| Accidental exposure to smoke, fire and flames (X00-X09)                                                                                                                              |   10931 | 1643859326 |        0.7 |
| Accidental poisoning and exposure to noxious substances (X40-X49)                                                                                                                    |  283995 | 1643859326 |       17.3 |
| Other and unspecified nontransport accidents and their sequelae (W20-W31,W35-W64,W75-W99,X10-X39,X50-X59,Y86)                                                                        |   69827 | 1643859326 |        4.2 |
| #Intentional self-harm (suicide) (\*U03,X60-X84,Y87.0)                                                                                                                               |  173817 | 1643859326 |       10.6 |
| Intentional self-harm (suicide) by discharge of firearms (X72-X74)                                                                                                                   |   90244 | 1643859326 |        5.5 |
| Intentional self-harm (suicide) by other and unspecified means and their sequelae (\*U03,X60-X71,X75-X84,Y87.0)                                                                      |   83573 | 1643859326 |        5.1 |
| #Assault (homicide) (*U01-*U02,X85-Y09,Y87.1)                                                                                                                                        |   79831 | 1643859326 |        4.9 |
| Assault (homicide) by discharge of firearms (\*U01.4,X93-X95)                                                                                                                        |   61768 | 1643859326 |        3.8 |
| Assault (homicide) by other and unspecified means and their sequelae (*U01.0-*U01.3,*U01.5-*U01.9,\*U02,X85-X92,X96-Y09,Y87.1)                                                       |   18063 | 1643859326 |        1.1 |
| #Legal intervention (Y35,Y89.0)                                                                                                                                                      |    2474 | 1643859326 |        0.2 |
| Events of undetermined intent (Y10-Y34,Y87.2,Y89.9)                                                                                                                                  |   21613 | 1643859326 |        1.3 |
| Discharge of firearms, undetermined intent (Y22-Y24)                                                                                                                                 |    1397 | 1643859326 |        0.1 |
| Other and unspecified events of undetermined intent and their sequelae (Y10-Y21,Y25-Y34,Y87.2,Y89.9)                                                                                 |   20216 | 1643859326 |        1.2 |
| #Operations of war and their sequelae (Y36,Y89.1)                                                                                                                                    |      44 | 1643859326 |        0.0 |
| #Complications of medical and surgical care (Y40-Y84,Y88)                                                                                                                            |   19382 | 1643859326 |        1.2 |
| #Enterocolitis due to Clostridium difficile (A04.7)                                                                                                                                  |   18095 | 1643859326 |        1.1 |
| #COVID-19 (U07.1)                                                                                                                                                                    |  854854 | 1643859326 |       52.0 |
| Data not shown due to 6 month lag to account for delays in death certificate completion for certain causes of death (999)                                                            |  106261 | 1643859326 |        6.5 |

``` r
# UCD - ICD-10 130 Cause List (Infants)
getData("D176", list(list("Group Results By", "D176.V12"),
                     list("V_D176.V5", "1")))
```

| UCD - ICD-10 130 Cause List (Infants)                                                                                                                                 | Deaths | Population | Crude Rate |
|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------:|-----------:|:-----------|
| Certain infectious and parasitic diseases (A00-B99,U07.1)                                                                                                             |   2023 |   18836290 | 10.7       |
| Certain intestinal infectious diseases (A00-A08)                                                                                                                      |     43 |   18836290 | 0.2        |
| #Diarrhea and gastroenteritis of infectious origin (A09)                                                                                                              |    640 |   18836290 | 3.4        |
| #Whooping cough (A37)                                                                                                                                                 |     11 |   18836290 | Unreliable |
| #Meningococcal infection (A39)                                                                                                                                        |     16 |   18836290 | Unreliable |
| #Septicemia (A40-A41)                                                                                                                                                 |    525 |   18836290 | 2.8        |
| #Congenital syphilis (A50)                                                                                                                                            |     13 |   18836290 | Unreliable |
| Viral diseases (A80-B34,U07.1)                                                                                                                                        |    604 |   18836290 | 3.2        |
| Other and unspecified viral diseases (A81-B00,B02-B04,B06-B19,B25,B27-B34,U07.1)                                                                                      |    600 |   18836290 | 3.2        |
| #Candidiasis (B37)                                                                                                                                                    |     16 |   18836290 | Unreliable |
| All other and unspecified infectious and parasitic diseases (A20-A32,A38,A42-A49,A51-A53,A55-A79,B35-B36,B38-B49,B55-B58,B60-B99)                                     |    149 |   18836290 | 0.8        |
| Neoplasms (C00-D48)                                                                                                                                                   |    366 |   18836290 | 1.9        |
| #Malignant neoplasms (C00-C97)                                                                                                                                        |    215 |   18836290 | 1.1        |
| Leukemia (C91-C95)                                                                                                                                                    |     64 |   18836290 | 0.3        |
| Other and unspecified malignant neoplasms (C00-C80,C88,C90,C96-C97)                                                                                                   |    150 |   18836290 | 0.8        |
| #In situ neoplasms, benign neoplasms and neoplasms of uncertain or unknown behavior (D00-D48)                                                                         |    151 |   18836290 | 0.8        |
| #Diseases of the blood and blood-forming organs and certain disorders involving the immune mechanism (D50-D89)                                                        |    334 |   18836290 | 1.8        |
| Anemias (D50-D64)                                                                                                                                                     |     47 |   18836290 | 0.2        |
| Hemorrhagic conditions and other diseases of blood and blood-forming organs (D65-D76)                                                                                 |    239 |   18836290 | 1.3        |
| Certain disorders involving the immune mechanism (D80-D89)                                                                                                            |     48 |   18836290 | 0.3        |
| Endocrine, nutritional and metabolic diseases (E00-E88)                                                                                                               |    632 |   18836290 | 3.4        |
| #Nutritional deficiencies (E40-E64)                                                                                                                                   |     46 |   18836290 | 0.2        |
| #Cystic fibrosis (E84)                                                                                                                                                |     12 |   18836290 | Unreliable |
| #Volume depletion, disorders of fluid, electrolyte and acid-base balance (E86-E87)                                                                                    |    154 |   18836290 | 0.8        |
| All other endocrine, nutritional and metabolic diseases (E00-E32,E34.0-E34.2,E34.4-E34.9,E65-E83,E85,E88)                                                             |    415 |   18836290 | 2.2        |
| Diseases of the nervous system (G00-G98)                                                                                                                              |    998 |   18836290 | 5.3        |
| #Meningitis (G00,G03)                                                                                                                                                 |    207 |   18836290 | 1.1        |
| #Infantile cerebral palsy (G80)                                                                                                                                       |     16 |   18836290 | Unreliable |
| #Anoxic brain damage, not elsewhere classified (G93.1)                                                                                                                |    107 |   18836290 | 0.6        |
| Other diseases of nervous system (G04,G06-G11,G12.1-G12.9,G20-G72,G81-G92,G93.0,G93.2-G93.9,G95-G98)                                                                  |    661 |   18836290 | 3.5        |
| #Diseases of the circulatory system (I00-I99)                                                                                                                         |   1638 |   18836290 | 8.7        |
| Pulmonary heart disease and diseases of pulmonary circulation (I26-I28)                                                                                               |    318 |   18836290 | 1.7        |
| Pericarditis, endocarditis and myocarditis (I30,I33,I40)                                                                                                              |     30 |   18836290 | 0.2        |
| Cardiomyopathy (I42)                                                                                                                                                  |    323 |   18836290 | 1.7        |
| Cardiac arrest (I46)                                                                                                                                                  |     64 |   18836290 | 0.3        |
| Cerebrovascular diseases (I60-I69)                                                                                                                                    |    414 |   18836290 | 2.2        |
| All other diseases of circulatory system (I00-I25,I31,I34-I38,I44-I45,I47-I51,I70-I99)                                                                                |    489 |   18836290 | 2.6        |
| Diseases of the respiratory system (J00-J98,U04)                                                                                                                      |   1458 |   18836290 | 7.7        |
| #Acute upper respiratory infections (J00-J06)                                                                                                                         |     28 |   18836290 | 0.1        |
| #Influenza and pneumonia (J09-J18)                                                                                                                                    |    557 |   18836290 | 3.0        |
| Influenza (J09-J11)                                                                                                                                                   |     61 |   18836290 | 0.3        |
| Pneumonia (J12-J18)                                                                                                                                                   |    496 |   18836290 | 2.6        |
| #Acute bronchitis and acute bronchiolitis (J20-J21)                                                                                                                   |    113 |   18836290 | 0.6        |
| #Bronchitis, chronic and unspecified (J40-J42)                                                                                                                        |     30 |   18836290 | 0.2        |
| #Pneumonitis due to solids and liquids (J69)                                                                                                                          |     23 |   18836290 | 0.1        |
| Other and unspecified diseases of respiratory system (J22,J30-J39,J43-J44,J47-J68,J70-J98,U04)                                                                        |    701 |   18836290 | 3.7        |
| Diseases of the digestive system (K00-K92)                                                                                                                            |    660 |   18836290 | 3.5        |
| #Gastritis, duodenitis, and noninfective enteritis and colitis (K29,K50-K55)                                                                                          |    111 |   18836290 | 0.6        |
| #Hernia of abdominal cavity and intestinal obstruction without hernia (K40-K46,K56)                                                                                   |    161 |   18836290 | 0.9        |
| All other and unspecified diseases of digestive system (K00-K28,K30-K38,K57-K92)                                                                                      |    388 |   18836290 | 2.1        |
| Diseases of the genitourinary system (N00-N95)                                                                                                                        |    317 |   18836290 | 1.7        |
| #Renal failure and other disorders of kidney (N17-N19,N25,N27)                                                                                                        |    217 |   18836290 | 1.2        |
| Other and unspecified diseases of genitourinary system (N00-N15,N20-N23,N26,N28-N95)                                                                                  |    100 |   18836290 | 0.5        |
| Certain conditions originating in the perinatal period (P00-P96)                                                                                                      |  40186 |   18836290 | 213.3      |
| Newborn affected by maternal factors and by complications of pregnancy, labor and delivery (P00-P04)                                                                  |   8882 |   18836290 | 47.2       |
| #Newborn affected by maternal hypertensive disorders (P00.0)                                                                                                          |    242 |   18836290 | 1.3        |
| #Newborn affected by other maternal conditions which may be unrelated to present pregnancy (P00.1-P00.9)                                                              |    353 |   18836290 | 1.9        |
| #Newborn affected by maternal complications of pregnancy (P01)                                                                                                        |   4847 |   18836290 | 25.7       |
| Newborn affected by incompetent cervix (P01.0)                                                                                                                        |   1389 |   18836290 | 7.4        |
| Newborn affected by premature rupture of membranes (P01.1)                                                                                                            |   2548 |   18836290 | 13.5       |
| Newborn affected by multiple pregnancy (P01.5)                                                                                                                        |    339 |   18836290 | 1.8        |
| Newborn affected by other maternal complications of pregnancy (P01.2-P01.4,P01.6-P01.9)                                                                               |    571 |   18836290 | 3.0        |
| #Newborn affected by complications of placenta, cord and membranes (P02)                                                                                              |   2854 |   18836290 | 15.2       |
| Newborn affected by complications involving placenta (P02.0-P02.3)                                                                                                    |   1684 |   18836290 | 8.9        |
| Newborn affected by complications involving cord (P02.4-P02.6)                                                                                                        |    166 |   18836290 | 0.9        |
| Newborn affected by chorioamnionitis (P02.7)                                                                                                                          |    996 |   18836290 | 5.3        |
| #Newborn affected by other complications of labor and delivery (P03)                                                                                                  |    383 |   18836290 | 2.0        |
| #Newborn affected by noxious influences transmitted via placenta or breast milk (P04)                                                                                 |    203 |   18836290 | 1.1        |
| Disorders related to length of gestation and fetal malnutrition (P05-P08)                                                                                             |  13698 |   18836290 | 72.7       |
| #Slow fetal growth and fetal malnutrition (P05)                                                                                                                       |    414 |   18836290 | 2.2        |
| #Disorders related to short gestation and low birth weight, not elsewhere classified (P07)                                                                            |  13283 |   18836290 | 70.5       |
| Extremely low birth weight or extreme immaturity (P07.0,P07.2)                                                                                                        |  10262 |   18836290 | 54.5       |
| Other low birth weight or preterm (P07.1,P07.3)                                                                                                                       |   3021 |   18836290 | 16.0       |
| #Birth trauma (P10-P15)                                                                                                                                               |     46 |   18836290 | 0.2        |
| #Intrauterine hypoxia and birth asphyxia (P20-P21)                                                                                                                    |   1323 |   18836290 | 7.0        |
| Intrauterine hypoxia (P20)                                                                                                                                            |    721 |   18836290 | 3.8        |
| Birth asphyxia (P21)                                                                                                                                                  |    602 |   18836290 | 3.2        |
| #Respiratory distress of newborn (P22)                                                                                                                                |   1635 |   18836290 | 8.7        |
| Other respiratory conditions originating in the perinatal period (P23-P28)                                                                                            |   2967 |   18836290 | 15.8       |
| #Congenital pneumonia (P23)                                                                                                                                           |    171 |   18836290 | 0.9        |
| #Neonatal aspiration syndromes (P24)                                                                                                                                  |    160 |   18836290 | 0.8        |
| #Interstitial emphysema and related conditions originating in the perinatal period (P25)                                                                              |    288 |   18836290 | 1.5        |
| #Pulmonary hemorrhage originating in the perinatal period (P26)                                                                                                       |    557 |   18836290 | 3.0        |
| #Chronic respiratory disease originating in the perinatal period (P27)                                                                                                |    581 |   18836290 | 3.1        |
| #Atelectasis (P28.0-P28.1)                                                                                                                                            |    952 |   18836290 | 5.1        |
| All other respiratory conditions originating in the perinatal period (P28.2-P28.9)                                                                                    |    258 |   18836290 | 1.4        |
| Infections specific to the perinatal period (P35-P39)                                                                                                                 |   2920 |   18836290 | 15.5       |
| #Bacterial sepsis of newborn (P36)                                                                                                                                    |   2307 |   18836290 | 12.2       |
| All other infections specific to the perinatal period (P35,P37,P39)                                                                                                   |    608 |   18836290 | 3.2        |
| Hemorrhagic and hematological disorders of newborn (P50-P61)                                                                                                          |   1843 |   18836290 | 9.8        |
| #Neonatal hemorrhage (P50-P52,P54)                                                                                                                                    |   1398 |   18836290 | 7.4        |
| #Hemolytic disease of newborn due to isoimmunization and other perinatal jaundice (P55-P59)                                                                           |     40 |   18836290 | 0.2        |
| #Hematological disorders (P60-P61)                                                                                                                                    |    402 |   18836290 | 2.1        |
| #Syndrome of infant of a diabetic mother and neonatal diabetes mellitus (P70.0-P70.2)                                                                                 |     32 |   18836290 | 0.2        |
| #Necrotizing enterocolitis of newborn (P77)                                                                                                                           |   1278 |   18836290 | 6.8        |
| #Hydrops fetalis not due to hemolytic disease (P83.2)                                                                                                                 |    723 |   18836290 | 3.8        |
| Other perinatal conditions (P29,P70.3-P70.9,P71-P76,P78-P81,P83.0-P83.1,P83.3-P83.9,P90-P96)                                                                          |   4839 |   18836290 | 25.7       |
| #Congenital malformations, deformations and chromosomal abnormalities (Q00-Q99)                                                                                       |  17005 |   18836290 | 90.3       |
| Anencephaly and similar malformations (Q00)                                                                                                                           |   1050 |   18836290 | 5.6        |
| Congenital hydrocephalus (Q03)                                                                                                                                        |    279 |   18836290 | 1.5        |
| Spina bifida (Q05)                                                                                                                                                    |     47 |   18836290 | 0.2        |
| Other congenital malformations of nervous system (Q01-Q02,Q04,Q06-Q07)                                                                                                |   1063 |   18836290 | 5.6        |
| Congenital malformations of heart (Q20-Q24)                                                                                                                           |   3600 |   18836290 | 19.1       |
| Other congenital malformations of circulatory system (Q25-Q28)                                                                                                        |    631 |   18836290 | 3.3        |
| Congenital malformations of respiratory system (Q30-Q34)                                                                                                              |   1354 |   18836290 | 7.2        |
| Congenital malformations of digestive system (Q35-Q45)                                                                                                                |    235 |   18836290 | 1.2        |
| Congenital malformations of genitourinary system (Q50-Q64)                                                                                                            |   1603 |   18836290 | 8.5        |
| Congenital malformations and deformations of musculoskeletal system, limbs and integument (Q65-Q85)                                                                   |   1954 |   18836290 | 10.4       |
| Down syndrome (Q90)                                                                                                                                                   |    214 |   18836290 | 1.1        |
| Edward syndrome (Q91.0-Q91.3)                                                                                                                                         |   1770 |   18836290 | 9.4        |
| Patau syndrome (Q91.4-Q91.7)                                                                                                                                          |    928 |   18836290 | 4.9        |
| Other congenital malformations and deformations (Q10-Q18,Q86-Q89)                                                                                                     |   1889 |   18836290 | 10.0       |
| Other chromosomal abnormalities, not elsewhere classified (Q92-Q99)                                                                                                   |    388 |   18836290 | 2.1        |
| Symptoms, signs and abnormal clinical and laboratory findings, not elsewhere classified (R00-R99)                                                                     |  10826 |   18836290 | 57.5       |
| #Sudden infant death syndrome (R95)                                                                                                                                   |   4907 |   18836290 | 26.1       |
| Other symptoms, signs and abnormal clinical and laboratory findings, not elsewhere classified (R00-R53,R55-R94,R96-R99)                                               |   5919 |   18836290 | 31.4       |
| All other diseases (F00-F99,H00-H57,L00-M99)                                                                                                                          |     81 |   18836290 | 0.4        |
| External causes of mortality (\*U01,V01-Y84)                                                                                                                          |   5865 |   18836290 | 31.1       |
| #Accidents (unintentional injuries) (V01-X59)                                                                                                                         |   4485 |   18836290 | 23.8       |
| Transport accidents (V01-V99)                                                                                                                                         |    310 |   18836290 | 1.6        |
| Motor vehicle accidents (V02-V04,V09.0,V09.2,V12-V14,V19.0-V19.2,V19.4-V19.6,V20-V79,V80.3-V80.5,V81.0-V81.1,V82.0-V82.1,V83-V86,V87.0-V87.8,V88.0-V88.8,V89.0,V89.2) |    304 |   18836290 | 1.6        |
| Falls (W00-W19)                                                                                                                                                       |     24 |   18836290 | 0.1        |
| Accidental drowning and submersion (W65-W74)                                                                                                                          |    132 |   18836290 | 0.7        |
| Accidental suffocation and strangulation in bed (W75)                                                                                                                 |   3244 |   18836290 | 17.2       |
| Other accidental suffocation and strangulation (W76-W77,W81-W84)                                                                                                      |    412 |   18836290 | 2.2        |
| Accidental inhalation and ingestion of food or other objects causing obstruction of respiratory tract (W78-W80)                                                       |    131 |   18836290 | 0.7        |
| Accidents caused by exposure to smoke, fire and flames (X00-X09)                                                                                                      |     46 |   18836290 | 0.2        |
| Accidental poisoning and exposure to noxious substances (X40-X49)                                                                                                     |     52 |   18836290 | 0.3        |
| Other and unspecified accidents (W20-W31,W35-W64,W85-W99,X10-X39,X50-X59)                                                                                             |    126 |   18836290 | 0.7        |
| #Assault (homicide) (\*U01,X85-Y09)                                                                                                                                   |    924 |   18836290 | 4.9        |
| Assault (homicide) by hanging, strangulation and suffocation (X91)                                                                                                    |     83 |   18836290 | 0.4        |
| Assault (homicide) by discharge of firearms (\*U01.4,X93-X95)                                                                                                         |     37 |   18836290 | 0.2        |
| Neglect, abandonment and other maltreatment syndromes (Y06-Y07)                                                                                                       |    220 |   18836290 | 1.2        |
| Assault (homicide) by other and unspecified means (*U01.0-*U01.3,*U01.5-*U01.9,X85-X90,X92,X96-X99,Y00-Y05,Y08-Y09)                                                   |    584 |   18836290 | 3.1        |
| #Complications of medical and surgical care (Y40-Y84)                                                                                                                 |     64 |   18836290 | 0.3        |
| Other external causes (Y10-Y36)                                                                                                                                       |    392 |   18836290 | 2.1        |
| All unspecified codes                                                                                                                                                 |    649 |   18836290 | 3.4        |

``` r
# UCD - Injury Intent
getData("D176", list(list("Group Results By", "D176.V22")))
```

| UCD - Injury Intent                    |   Deaths | Population | Crude Rate |
|:---------------------------------------|---------:|-----------:|-----------:|
| Unintentional                          |   691323 | 1643859326 |       42.1 |
| Suicide                                |   173817 | 1643859326 |       10.6 |
| Homicide                               |    79831 | 1643859326 |        4.9 |
| Undetermined                           |    21613 | 1643859326 |        1.3 |
| Legal Intervention / Operations of War |     2518 | 1643859326 |        0.2 |
| Non-Injury, no intent classified       | 12027034 | 1643859326 |      731.6 |

``` r
# UCD - Injury Mechanism & All Other Leading Causes
getData("D176", list(list("Group Results By", "D176.V23")))
```

| UCD - Injury Mechanism & All Other Leading Causes                                                   |  Deaths | Population | Crude Rate |
|:----------------------------------------------------------------------------------------------------|--------:|-----------:|-----------:|
| Cut/Pierce                                                                                          |   10638 | 1643859326 |        0.6 |
| Drowning                                                                                            |   17846 | 1643859326 |        1.1 |
| Fall                                                                                                |  152557 | 1643859326 |        9.3 |
| Fire/Flame                                                                                          |   12704 | 1643859326 |        0.8 |
| Hot object/Substance                                                                                |     320 | 1643859326 |        0.0 |
| Firearm                                                                                             |  157334 | 1643859326 |        9.6 |
| Machinery                                                                                           |    1962 | 1643859326 |        0.1 |
| Motor Vehicle Traffic                                                                               |  145898 | 1643859326 |        8.9 |
| Other Pedal cyclist                                                                                 |    1421 | 1643859326 |        0.1 |
| Other Pedestrian                                                                                    |    3508 | 1643859326 |        0.2 |
| Other land transport                                                                                |    5722 | 1643859326 |        0.3 |
| Other transport                                                                                     |    3292 | 1643859326 |        0.2 |
| Natural/Environmental                                                                               |    8351 | 1643859326 |        0.5 |
| Overexertion                                                                                        |      57 | 1643859326 |        0.0 |
| Poisoning                                                                                           |  320304 | 1643859326 |       19.5 |
| Struck by or against                                                                                |    4018 | 1643859326 |        0.2 |
| Suffocation                                                                                         |   75528 | 1643859326 |        4.6 |
| Other specified, classifiable Injury                                                                |    8631 | 1643859326 |        0.5 |
| Other specified, not elsewhere classified Injury                                                    |    7486 | 1643859326 |        0.5 |
| Unspecified Injury                                                                                  |   31525 | 1643859326 |        1.9 |
| Non-Injury: Intestinal infections                                                                   |   29806 | 1643859326 |        1.8 |
| Non-Injury: Tuberculosis                                                                            |    2329 | 1643859326 |        0.1 |
| Non-Injury: Whooping cough                                                                          |      28 | 1643859326 |        0.0 |
| Non-Injury: Meningococcal infection                                                                 |     115 | 1643859326 |        0.0 |
| Non-Injury: Septicemia                                                                              |  165169 | 1643859326 |       10.0 |
| Non-Injury: Syphilis                                                                                |     172 | 1643859326 |        0.0 |
| Non-Injury: Arthropod-borne viral encephalitis                                                      |      31 | 1643859326 |        0.0 |
| Non-Injury: Viral hepatitis                                                                         |   16898 | 1643859326 |        1.0 |
| Non-Injury: Human immunodeficiency virus (HIV) disease                                              |   20988 | 1643859326 |        1.3 |
| Non-Injury: Malaria                                                                                 |      24 | 1643859326 |        0.0 |
| Non-Injury: Other and unspecified infectious and parasitic diseases and their sequelae              |  896863 | 1643859326 |       54.6 |
| Non-Injury: Malignant neoplasms (Cancers)                                                           | 2474323 | 1643859326 |      150.5 |
| Non-Injury: In situ neoplasms, benign neoplasms and neoplasms of uncertain or unknown behavior      |   65417 | 1643859326 |        4.0 |
| Non-Injury: Anemias                                                                                 |   22764 | 1643859326 |        1.4 |
| Non-Injury: Diabetes mellitus                                                                       |  390069 | 1643859326 |       23.7 |
| Non-Injury: Nutritional Deficiencies                                                                |   55932 | 1643859326 |        3.4 |
| Non-Injury: Meningitis                                                                              |    2309 | 1643859326 |        0.1 |
| Non-Injury: Parkinsons disease                                                                      |  153428 | 1643859326 |        9.3 |
| Non-Injury: Alzheimers disease                                                                      |  514091 | 1643859326 |       31.3 |
| Non-Injury: Diseases of Heart                                                                       | 2787964 | 1643859326 |      169.6 |
| Non-Injury: Essential (primary) hypertension and hypertensive renal disease                         |  162457 | 1643859326 |        9.9 |
| Non-Injury: Cerebrovascular diseases, including stroke                                              |  641490 | 1643859326 |       39.0 |
| Non-Injury: Atherosclerosis                                                                         |   18901 | 1643859326 |        1.1 |
| Non-Injury: Other diseases of the circulatory system                                                |   81668 | 1643859326 |        5.0 |
| Non-Injury: Other disorders of circulatory system                                                   |   21128 | 1643859326 |        1.3 |
| Non-Injury: Influenza & Pneumonia                                                                   |  210020 | 1643859326 |       12.8 |
| Non-Injury: Other acute lower respiratory infections                                                |    1178 | 1643859326 |        0.1 |
| Non-Injury: Chronic lower respiratory diseases                                                      |  629420 | 1643859326 |       38.3 |
| Non-Injury: Pneumoconioses and chemical effects                                                     |    2577 | 1643859326 |        0.2 |
| Non-Injury: Pneumonitis due to solids and liquids                                                   |   79113 | 1643859326 |        4.8 |
| Non-Injury: Other diseases of respiratory system                                                    |  184582 | 1643859326 |       11.2 |
| Non-Injury: Peptic ulcer                                                                            |   15193 | 1643859326 |        0.9 |
| Non-Injury: Diseases of appendix                                                                    |    1704 | 1643859326 |        0.1 |
| Non-Injury: Hernia                                                                                  |    9437 | 1643859326 |        0.6 |
| Non-Injury: Chronic liver disease and cirrhosis                                                     |  201107 | 1643859326 |       12.2 |
| Non-Injury: Cholelithiasis and other disorders of gallbladder                                       |   16557 | 1643859326 |        1.0 |
| Non-Injury: Nephritis, nephrotic syndrome and nephrosis                                             |  216672 | 1643859326 |       13.2 |
| Non-Injury: Infections of kidney                                                                    |    4257 | 1643859326 |        0.3 |
| Non-Injury: Hyperplasia of prostate                                                                 |    2725 | 1643859326 |        0.2 |
| Non-Injury: Inflammatory diseases of female pelvic organs                                           |     743 | 1643859326 |        0.0 |
| Non-Injury: Pregnancy with abortive outcome                                                         |     119 | 1643859326 |        0.0 |
| Non-Injury: Other complications of pregnancy, childbirth and the puerperium                         |    5151 | 1643859326 |        0.3 |
| Non-Injury: Certain conditions originating in the perinatal period                                  |   40717 | 1643859326 |        2.5 |
| Non-Injury: Congenital malformations, deformations and chromosomal abnormalities                    |   39347 | 1643859326 |        2.4 |
| Non-Injury: Symptoms, signs and abnormal clinical and laboratory findings, not elsewhere classified |  177496 | 1643859326 |       10.8 |
| Non-Injury: All other diseases (Residual)                                                           | 1645169 | 1643859326 |      100.1 |
| Non-Injury: Complications of medical and surgical care                                              |   19382 | 1643859326 |        1.2 |

``` r
# UCD - Drug/Alcohol Induced
getData("D176", list(list("Group Results By", "D176.V25-level1")))
```

| UCD - Drug/Alcohol Induced                                                                                           |   Deaths | Population | Crude Rate |
|:---------------------------------------------------------------------------------------------------------------------|---------:|-----------:|-----------:|
| Drug-induced causes                                                                                                  |   318584 | 1643859326 |       19.4 |
| Alcohol-induced causes                                                                                               |   182752 | 1643859326 |       11.1 |
| All other non-drug and non-alcohol causes                                                                            | 12388539 | 1643859326 |      753.6 |
| Data not shown due to 6 month lag to account for delays in death certificate completion for certain causes of death. |   106261 | 1643859326 |        6.5 |

``` r
# UCD - Drug/Alcohol Induced Cause
getData("D176", list(list("Group Results By", "D176.V25-level2")))
```

| UCD - Drug/Alcohol Induced Cause                                                                                     |   Deaths | Population | Crude Rate |
|:---------------------------------------------------------------------------------------------------------------------|---------:|-----------:|-----------:|
| Drug poisonings (overdose) Unintentional (X40-X44)                                                                   |   270502 | 1643859326 |       16.5 |
| Drug poisonings (overdose) Suicide (X60-X64)                                                                         |    16781 | 1643859326 |        1.0 |
| Drug poisonings (overdose) Homicide (X85)                                                                            |      558 | 1643859326 |        0.0 |
| Drug poisonings (overdose) Undetermined (Y10-Y14)                                                                    |    13457 | 1643859326 |        0.8 |
| All other drug-induced causes                                                                                        |    17286 | 1643859326 |        1.1 |
| Alcohol poisonings (overdose) (X45, X65, Y15)                                                                        |     9267 | 1643859326 |        0.6 |
| All other alcohol-induced causes                                                                                     |   173485 | 1643859326 |       10.6 |
| All other non-drug and non-alcohol causes                                                                            | 12388539 | 1643859326 |      753.6 |
| Data not shown due to 6 month lag to account for delays in death certificate completion for certain causes of death. |   106261 | 1643859326 |        6.5 |

``` r
# MCD - ICD Chapter
getData("D176", list(list("Group Results By", "D176.V13-level1")))
```

| MCD - ICD Chapter                                                                                                    |  Deaths | Population | Crude Rate |
|:---------------------------------------------------------------------------------------------------------------------|--------:|-----------:|-----------:|
| Certain infectious and parasitic diseases                                                                            | 1205459 | 1643859326 |       73.3 |
| Neoplasms                                                                                                            | 2877969 | 1643859326 |      175.1 |
| Diseases of the blood and blood-forming organs and certain disorders involving the immune mechanism                  |  396872 | 1643859326 |       24.1 |
| Endocrine, nutritional and metabolic diseases                                                                        | 2435799 | 1643859326 |      148.2 |
| Mental and behavioural disorders                                                                                     | 2883308 | 1643859326 |      175.4 |
| Diseases of the nervous system                                                                                       | 1622778 | 1643859326 |       98.7 |
| Diseases of the eye and adnexa                                                                                       |   12537 | 1643859326 |        0.8 |
| Diseases of the ear and mastoid process                                                                              |    4596 | 1643859326 |        0.3 |
| Diseases of the circulatory system                                                                                   | 7111976 | 1643859326 |      432.6 |
| Diseases of the respiratory system                                                                                   | 3784892 | 1643859326 |      230.2 |
| Diseases of the digestive system                                                                                     | 1028964 | 1643859326 |       62.6 |
| Diseases of the skin and subcutaneous tissue                                                                         |  119256 | 1643859326 |        7.3 |
| Diseases of the musculoskeletal system and connective tissue                                                         |  272534 | 1643859326 |       16.6 |
| Diseases of the genitourinary system                                                                                 | 1335904 | 1643859326 |       81.3 |
| Pregnancy, childbirth and the puerperium                                                                             |    6858 | 1643859326 |        0.4 |
| Certain conditions originating in the perinatal period                                                               |   54021 | 1643859326 |        3.3 |
| Congenital malformations, deformations and chromosomal abnormalities                                                 |   63498 | 1643859326 |        3.9 |
| Symptoms, signs and abnormal clinical and laboratory findings, not elsewhere classified                              | 2254244 | 1643859326 |      137.1 |
| Injury, poisoning and certain other consequences of external causes                                                  | 1288536 | 1643859326 |       78.4 |
| Codes for special purposes                                                                                           |  947111 | 1643859326 |       57.6 |
| External causes of morbidity and mortality                                                                           | 1275182 | 1643859326 |       77.6 |
| Data not shown due to 6 month lag to account for delays in death certificate completion for certain causes of death. |  145615 | 1643859326 |        8.9 |

``` r
# MCD - ICD Sub-Chapter
getData("D176", list(list("Group Results By", "D176.V13-level2")))
```

| MCD - ICD Sub-Chapter                                                                                                |  Deaths | Population | Crude Rate |
|:---------------------------------------------------------------------------------------------------------------------|--------:|-----------:|:-----------|
| Intestinal infectious diseases                                                                                       |   55292 | 1643859326 | 3.4        |
| Tuberculosis                                                                                                         |    4433 | 1643859326 | 0.3        |
| Certain zoonotic bacterial diseases                                                                                  |     242 | 1643859326 | 0.0        |
| Other bacterial diseases                                                                                             |  996151 | 1643859326 | 60.6       |
| Infections with a predominantly sexual mode of transmission                                                          |     843 | 1643859326 | 0.1        |
| Other spirochaetal diseases                                                                                          |     372 | 1643859326 | 0.0        |
| Other diseases caused by chlamydiae                                                                                  |      12 | 1643859326 | Unreliable |
| Rickettsioses                                                                                                        |     173 | 1643859326 | 0.0        |
| Viral infections of the central nervous system                                                                       |    3532 | 1643859326 | 0.2        |
| Arthropod-borne viral fevers and viral haemorrhagic fevers                                                           |     608 | 1643859326 | 0.0        |
| Viral infections characterized by skin and mucous membrane lesions                                                   |    4529 | 1643859326 | 0.3        |
| Viral hepatitis                                                                                                      |   68040 | 1643859326 | 4.1        |
| Human immunodeficiency virus \[HIV\] disease                                                                         |   31788 | 1643859326 | 1.9        |
| Other viral diseases                                                                                                 |   16701 | 1643859326 | 1.0        |
| Mycoses                                                                                                              |   22046 | 1643859326 | 1.3        |
| Protozoal diseases                                                                                                   |    1974 | 1643859326 | 0.1        |
| Helminthiases                                                                                                        |     154 | 1643859326 | 0.0        |
| Pediculosis, acariasis and other infestations                                                                        |     139 | 1643859326 | 0.0        |
| Sequelae of infectious and parasitic diseases                                                                        |   16868 | 1643859326 | 1.0        |
| Other infectious diseases                                                                                            |   35637 | 1643859326 | 2.2        |
| Malignant neoplasms                                                                                                  | 2787895 | 1643859326 | 169.6      |
| In situ neoplasms                                                                                                    |    1010 | 1643859326 | 0.1        |
| Benign neoplasms                                                                                                     |   13240 | 1643859326 | 0.8        |
| Neoplasms of uncertain or unknown behaviour                                                                          |   96838 | 1643859326 | 5.9        |
| Nutritional anaemias                                                                                                 |   17602 | 1643859326 | 1.1        |
| Haemolytic anaemias                                                                                                  |    9185 | 1643859326 | 0.6        |
| Aplastic and other anaemias                                                                                          |  254044 | 1643859326 | 15.5       |
| Coagulation defects, purpura and other haemorrhagic conditions                                                       |   90002 | 1643859326 | 5.5        |
| Other diseases of blood and blood-forming organs                                                                     |   30526 | 1643859326 | 1.9        |
| Certain disorders involving the immune mechanism                                                                     |   21339 | 1643859326 | 1.3        |
| Disorders of thyroid gland                                                                                           |  134172 | 1643859326 | 8.2        |
| Diabetes mellitus                                                                                                    | 1395116 | 1643859326 | 84.9       |
| Other disorders of glucose regulation and pancreatic internal secretion                                              |   13387 | 1643859326 | 0.8        |
| Disorders of other endocrine glands                                                                                  |   19189 | 1643859326 | 1.2        |
| Malnutrition                                                                                                         |  242281 | 1643859326 | 14.7       |
| Other nutritional deficiencies                                                                                       |   11136 | 1643859326 | 0.7        |
| Obesity and other hyperalimentation                                                                                  |  272127 | 1643859326 | 16.6       |
| Metabolic disorders                                                                                                  |  783427 | 1643859326 | 47.7       |
| Organic, including symptomatic, mental disorders                                                                     | 1064306 | 1643859326 | 64.7       |
| Mental and behavioural disorders due to psychoactive substance use                                                   | 1773524 | 1643859326 | 107.9      |
| Schizophrenia, schizotypal and delusional disorders                                                                  |   29573 | 1643859326 | 1.8        |
| Mood \[affective\] disorders                                                                                         |   97738 | 1643859326 | 5.9        |
| Neurotic, stress-related and somatoform disorders                                                                    |   47246 | 1643859326 | 2.9        |
| Behavioural syndromes associated with physiological disturbances and physical factors                                |    5132 | 1643859326 | 0.3        |
| Disorders of adult personality and behaviour                                                                         |     785 | 1643859326 | 0.0        |
| Mental retardation                                                                                                   |    5596 | 1643859326 | 0.3        |
| Disorders of psychological development                                                                               |    3439 | 1643859326 | 0.2        |
| Behavioural and emotional disorders with onset usually occurring in childhood and adolescence                        |   19916 | 1643859326 | 1.2        |
| Unspecified mental disorder                                                                                          |     186 | 1643859326 | 0.0        |
| Inflammatory diseases of the central nervous system                                                                  |   14940 | 1643859326 | 0.9        |
| Systemic atrophies primarily affecting the central nervous system                                                    |   42521 | 1643859326 | 2.6        |
| Extrapyramidal and movement disorders                                                                                |  246048 | 1643859326 | 15.0       |
| Other degenerative diseases of the nervous system                                                                    |  834884 | 1643859326 | 50.8       |
| Demyelinating diseases of the central nervous system                                                                 |   31539 | 1643859326 | 1.9        |
| Episodic and paroxysmal disorders                                                                                    |  152347 | 1643859326 | 9.3        |
| Nerve, nerve root and plexus disorders                                                                               |    2103 | 1643859326 | 0.1        |
| Polyneuropathies and other disorders of the peripheral nervous system                                                |   19421 | 1643859326 | 1.2        |
| Diseases of myoneural junction and muscle                                                                            |   22302 | 1643859326 | 1.4        |
| Cerebral palsy and other paralytic syndromes                                                                         |   60372 | 1643859326 | 3.7        |
| Other disorders of the nervous system                                                                                |  274466 | 1643859326 | 16.7       |
| Disorders of eyelid, lacrimal system and orbit                                                                       |     292 | 1643859326 | 0.0        |
| Disorders of conjunctiva                                                                                             |      88 | 1643859326 | 0.0        |
| Disorders of sclera, cornea, iris and ciliary body                                                                   |     174 | 1643859326 | 0.0        |
| Disorders of lens                                                                                                    |     409 | 1643859326 | 0.0        |
| Disorders of choroid and retina                                                                                      |    3922 | 1643859326 | 0.2        |
| Glaucoma                                                                                                             |    4407 | 1643859326 | 0.3        |
| Disorders of vitreous body and globe                                                                                 |     153 | 1643859326 | 0.0        |
| Disorders of optic nerve and visual pathways                                                                         |     108 | 1643859326 | 0.0        |
| Disorders of ocular muscles, binocular movement, accommodation and refraction                                        |     165 | 1643859326 | 0.0        |
| Visual disturbances and blindness                                                                                    |    3500 | 1643859326 | 0.2        |
| Other disorders of eye and adnexa                                                                                    |     113 | 1643859326 | 0.0        |
| Diseases of external ear                                                                                             |     112 | 1643859326 | 0.0        |
| Diseases of middle ear and mastoid                                                                                   |     690 | 1643859326 | 0.0        |
| Diseases of inner ear                                                                                                |     400 | 1643859326 | 0.0        |
| Other disorders of ear                                                                                               |    3433 | 1643859326 | 0.2        |
| Acute rheumatic fever                                                                                                |     381 | 1643859326 | 0.0        |
| Chronic rheumatic heart diseases                                                                                     |   32487 | 1643859326 | 2.0        |
| Hypertensive diseases                                                                                                | 2457162 | 1643859326 | 149.5      |
| Ischaemic heart diseases                                                                                             | 2388878 | 1643859326 | 145.3      |
| Pulmonary heart disease and diseases of pulmonary circulation                                                        |  315829 | 1643859326 | 19.2       |
| Other forms of heart disease                                                                                         | 4073927 | 1643859326 | 247.8      |
| Cerebrovascular diseases                                                                                             | 1134697 | 1643859326 | 69.0       |
| Diseases of arteries, arterioles and capillaries                                                                     |  359704 | 1643859326 | 21.9       |
| Diseases of veins, lymphatic vessels and lymph nodes, not elsewhere classified                                       |  122745 | 1643859326 | 7.5        |
| Other and unspecified disorders of the circulatory system                                                            |   76869 | 1643859326 | 4.7        |
| Acute upper respiratory infections                                                                                   |    3676 | 1643859326 | 0.2        |
| Influenza and pneumonia                                                                                              | 1070276 | 1643859326 | 65.1       |
| Other acute lower respiratory infections                                                                             |    3783 | 1643859326 | 0.2        |
| Other diseases of upper respiratory tract                                                                            |    8590 | 1643859326 | 0.5        |
| Chronic lower respiratory diseases                                                                                   | 1397119 | 1643859326 | 85.0       |
| Lung diseases due to external agents                                                                                 |  279582 | 1643859326 | 17.0       |
| Other respiratory diseases principally affecting the interstitium                                                    |  315963 | 1643859326 | 19.2       |
| Suppurative and necrotic conditions of lower respiratory tract                                                       |   14866 | 1643859326 | 0.9        |
| Other diseases of pleura                                                                                             |   96263 | 1643859326 | 5.9        |
| Other diseases of the respiratory system                                                                             | 1793179 | 1643859326 | 109.1      |
| Diseases of oral cavity, salivary glands and jaws                                                                    |    3770 | 1643859326 | 0.2        |
| Diseases of oesophagus, stomach and duodenum                                                                         |  115338 | 1643859326 | 7.0        |
| Diseases of appendix                                                                                                 |    3260 | 1643859326 | 0.2        |
| Hernia                                                                                                               |   16098 | 1643859326 | 1.0        |
| Noninfective enteritis and colitis                                                                                   |   23879 | 1643859326 | 1.5        |
| Other diseases of intestines                                                                                         |  208361 | 1643859326 | 12.7       |
| Diseases of peritoneum                                                                                               |   43722 | 1643859326 | 2.7        |
| Diseases of liver                                                                                                    |  481133 | 1643859326 | 29.3       |
| Disorders of gallbladder, biliary tract and pancreas                                                                 |   83560 | 1643859326 | 5.1        |
| Other diseases of the digestive system                                                                               |  175323 | 1643859326 | 10.7       |
| Infections of the skin and subcutaneous tissue                                                                       |   44190 | 1643859326 | 2.7        |
| Bullous disorders                                                                                                    |    2367 | 1643859326 | 0.1        |
| Dermatitis and eczema                                                                                                |     801 | 1643859326 | 0.0        |
| Papulosquamous disorders                                                                                             |    2717 | 1643859326 | 0.2        |
| Urticaria and erythema                                                                                               |    1678 | 1643859326 | 0.1        |
| Radiation-related disorders of the skin and subcutaneous tissue                                                      |     102 | 1643859326 | 0.0        |
| Disorders of skin appendages                                                                                         |     401 | 1643859326 | 0.0        |
| Other disorders of the skin and subcutaneous tissue                                                                  |   69769 | 1643859326 | 4.2        |
| Arthropathies                                                                                                        |  105467 | 1643859326 | 6.4        |
| Systemic connective tissue disorders                                                                                 |   34567 | 1643859326 | 2.1        |
| Dorsopathies                                                                                                         |   39272 | 1643859326 | 2.4        |
| Soft tissue disorders                                                                                                |   38479 | 1643859326 | 2.3        |
| Osteopathies and chondropathies                                                                                      |   70837 | 1643859326 | 4.3        |
| Other disorders of the musculoskeletal system and connective tissue                                                  |     319 | 1643859326 | 0.0        |
| Glomerular diseases                                                                                                  |   17499 | 1643859326 | 1.1        |
| Renal tubulo-interstitial diseases                                                                                   |   28288 | 1643859326 | 1.7        |
| Renal failure                                                                                                        |  959082 | 1643859326 | 58.3       |
| Urolithiasis                                                                                                         |    7327 | 1643859326 | 0.4        |
| Other disorders of kidney and ureter                                                                                 |  168402 | 1643859326 | 10.2       |
| Other diseases of urinary system                                                                                     |  204968 | 1643859326 | 12.5       |
| Diseases of male genital organs                                                                                      |   29767 | 1643859326 | 1.8        |
| Disorders of breast                                                                                                  |    3120 | 1643859326 | 0.2        |
| Inflammatory diseases of female pelvic organs                                                                        |    1737 | 1643859326 | 0.1        |
| Noninflammatory disorders of female genital tract                                                                    |    6352 | 1643859326 | 0.4        |
| Other disorders of the genitourinary system                                                                          |     672 | 1643859326 | 0.0        |
| Pregnancy with abortive outcome                                                                                      |     159 | 1643859326 | 0.0        |
| Oedema, proteinuria and hypertensive disorders in pregnancy, childbirth and the puerperium                           |     393 | 1643859326 | 0.0        |
| Other maternal disorders predominantly related to pregnancy                                                          |    1158 | 1643859326 | 0.1        |
| Maternal care related to the fetus and amniotic cavity and possible delivery problems                                |     260 | 1643859326 | 0.0        |
| Complications of labour and delivery                                                                                 |     279 | 1643859326 | 0.0        |
| Complications predominantly related to the puerperium                                                                |     504 | 1643859326 | 0.0        |
| Other obstetric conditions, not elsewhere classified                                                                 |    4784 | 1643859326 | 0.3        |
| Newborn affected by maternal factors and by complications of pregnancy, labour and delivery                          |   10773 | 1643859326 | 0.7        |
| Disorders related to length of gestation and fetal growth                                                            |   18793 | 1643859326 | 1.1        |
| Birth trauma                                                                                                         |     127 | 1643859326 | 0.0        |
| Respiratory and cardiovascular disorders specific to the perinatal period                                            |   24693 | 1643859326 | 1.5        |
| Infections specific to the perinatal period                                                                          |    5209 | 1643859326 | 0.3        |
| Haemorrhagic and haematological disorders of newborn                                                                 |    4436 | 1643859326 | 0.3        |
| Transitory endocrine and metabolic disorders specific to newborn                                                     |     261 | 1643859326 | 0.0        |
| Digestive system disorders of newborn                                                                                |    2275 | 1643859326 | 0.1        |
| Conditions involving the integument and temperature regulation of newborn                                            |    1282 | 1643859326 | 0.1        |
| Other disorders originating in the perinatal period                                                                  |    3476 | 1643859326 | 0.2        |
| Congenital malformations of the nervous system                                                                       |    7708 | 1643859326 | 0.5        |
| Congenital malformations of eye, ear, face and neck                                                                  |     126 | 1643859326 | 0.0        |
| Congenital malformations of the circulatory system                                                                   |   20699 | 1643859326 | 1.3        |
| Congenital malformations of the respiratory system                                                                   |    3890 | 1643859326 | 0.2        |
| Cleft lip and cleft palate                                                                                           |     237 | 1643859326 | 0.0        |
| Other congenital malformations of the digestive system                                                               |    2035 | 1643859326 | 0.1        |
| Congenital malformations of genital organs                                                                           |     130 | 1643859326 | 0.0        |
| Congenital malformations of the urinary system                                                                       |    6073 | 1643859326 | 0.4        |
| Congenital malformations and deformations of the musculoskeletal system                                              |    4583 | 1643859326 | 0.3        |
| Other congenital malformations                                                                                       |   10067 | 1643859326 | 0.6        |
| Chromosomal abnormalities, not elsewhere classified                                                                  |   16080 | 1643859326 | 1.0        |
| Symptoms and signs involving the circulatory and respiratory systems                                                 |  647280 | 1643859326 | 39.4       |
| Symptoms and signs involving the digestive system and abdomen                                                        |  254665 | 1643859326 | 15.5       |
| Symptoms and signs involving the skin and subcutaneous tissue                                                        |    2254 | 1643859326 | 0.1        |
| Symptoms and signs involving the nervous and musculoskeletal systems                                                 |   26639 | 1643859326 | 1.6        |
| Symptoms and signs involving the urinary system                                                                      |   19462 | 1643859326 | 1.2        |
| Symptoms and signs involving cognition, perception, emotional state and behaviour                                    |   32198 | 1643859326 | 2.0        |
| Symptoms and signs involving speech and voice                                                                        |   12273 | 1643859326 | 0.7        |
| General symptoms and signs                                                                                           | 1210276 | 1643859326 | 73.6       |
| Abnormal findings on examination of blood, without diagnosis                                                         |   31347 | 1643859326 | 1.9        |
| Abnormal findings on examination of urine, without diagnosis                                                         |     476 | 1643859326 | 0.0        |
| Abnormal findings on examination of other body fluids, substances and tissues, without diagnosis                     |      50 | 1643859326 | 0.0        |
| Abnormal findings on diagnostic imaging and in function studies, without diagnosis                                   |   25383 | 1643859326 | 1.5        |
| Ill-defined and unknown causes of mortality                                                                          |  219456 | 1643859326 | 13.4       |
| Injuries to the head                                                                                                 |  268218 | 1643859326 | 16.3       |
| Injuries to the neck                                                                                                 |   42435 | 1643859326 | 2.6        |
| Injuries to the thorax                                                                                               |   65101 | 1643859326 | 4.0        |
| Injuries to the abdomen, lower back, lumbar spine and pelvis                                                         |   37725 | 1643859326 | 2.3        |
| Injuries to the shoulder and upper arm                                                                               |    8364 | 1643859326 | 0.5        |
| Injuries to the elbow and forearm                                                                                    |    1630 | 1643859326 | 0.1        |
| Injuries to the wrist and hand                                                                                       |    1909 | 1643859326 | 0.1        |
| Injuries to the hip and thigh                                                                                        |   82854 | 1643859326 | 5.0        |
| Injuries to the knee and lower leg                                                                                   |    5511 | 1643859326 | 0.3        |
| Injuries to the ankle and foot                                                                                       |    1435 | 1643859326 | 0.1        |
| Injuries involving multiple body regions                                                                             |  110285 | 1643859326 | 6.7        |
| Injuries to unspecified part of trunk, limb or body region                                                           |  281451 | 1643859326 | 17.1       |
| Effects of foreign body entering through natural orifice                                                             |   72801 | 1643859326 | 4.4        |
| Burns and corrosions                                                                                                 |   13644 | 1643859326 | 0.8        |
| Frostbite                                                                                                            |     106 | 1643859326 | 0.0        |
| Poisoning by drugs, medicaments and biological substances                                                            |  350720 | 1643859326 | 21.3       |
| Toxic effects of substances chiefly nonmedicinal as to source                                                        |   92706 | 1643859326 | 5.6        |
| Other and unspecified effects of external causes                                                                     |  112190 | 1643859326 | 6.8        |
| Certain early complications of trauma                                                                                |    5640 | 1643859326 | 0.3        |
| Complications of surgical and medical care, not elsewhere classified                                                 |   50948 | 1643859326 | 3.1        |
| Sequelae of injuries, of poisoning and of other consequences of external causes                                      |   19408 | 1643859326 | 1.2        |
| Provisional assignment of new diseases of uncertain etiology                                                         |  947111 | 1643859326 | 57.6       |
| Transport accidents                                                                                                  |  161748 | 1643859326 | 9.8        |
| Other external causes of accidental injury                                                                           |  678477 | 1643859326 | 41.3       |
| Intentional self-harm                                                                                                |  174046 | 1643859326 | 10.6       |
| Assault                                                                                                              |   79625 | 1643859326 | 4.8        |
| Event of undetermined intent                                                                                         |   22525 | 1643859326 | 1.4        |
| Legal intervention and operations of war                                                                             |    2544 | 1643859326 | 0.2        |
| Complications of medical and surgical care                                                                           |  154951 | 1643859326 | 9.4        |
| Sequelae of external causes of morbidity and mortality                                                               |   17839 | 1643859326 | 1.1        |
| Data not shown due to 6 month lag to account for delays in death certificate completion for certain causes of death. |  145615 | 1643859326 | 8.9        |

``` r
# Multiple Cause of death
getData("D176", list(list("Group Results By", "D176.V13-level3")))
```

    ## Error: 'NA' does not exist in current working directory ('/Users/joycerobbins/wonderapi/tests').

``` r
# MCD - ICD-10 113 Cause List
getData("D176", list(list("Group Results By", "D176.V15")))
```

| MCD - ICD-10 113 Cause List                                                                                                                                                          |  Deaths | Population | Crude Rate |
|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------:|-----------:|-----------:|
| Salmonella infections (A01-A02)                                                                                                                                                      |     401 | 1643859326 |        0.0 |
| Shigellosis and amebiasis (A03,A06)                                                                                                                                                  |      53 | 1643859326 |        0.0 |
| Certain other intestinal infections (A04,A07-A09)                                                                                                                                    |   54838 | 1643859326 |        3.3 |
| Tuberculosis (A16-A19)                                                                                                                                                               |    4433 | 1643859326 |        0.3 |
| Respiratory tuberculosis (A16)                                                                                                                                                       |    3215 | 1643859326 |        0.2 |
| Other tuberculosis (A17-A19)                                                                                                                                                         |    1257 | 1643859326 |        0.1 |
| Whooping cough (A37)                                                                                                                                                                 |      58 | 1643859326 |        0.0 |
| Scarlet fever and erysipelas (A38,A46)                                                                                                                                               |      24 | 1643859326 |        0.0 |
| Meningococcal infection (A39)                                                                                                                                                        |     142 | 1643859326 |        0.0 |
| Septicemia (A40-A41)                                                                                                                                                                 |  939854 | 1643859326 |       57.2 |
| Syphilis (A50-A53)                                                                                                                                                                   |     771 | 1643859326 |        0.0 |
| Arthropod-borne viral encephalitis (A83-A84,A85.2)                                                                                                                                   |      42 | 1643859326 |        0.0 |
| Viral hepatitis (B15-B19)                                                                                                                                                            |   68040 | 1643859326 |        4.1 |
| Human immunodeficiency virus (HIV) disease (B20-B24)                                                                                                                                 |   31788 | 1643859326 |        1.9 |
| Malaria (B50-B54)                                                                                                                                                                    |      43 | 1643859326 |        0.0 |
| Other and unspecified infectious and parasitic diseases and their sequelae (A00,A05,A20-A36,A42-A44,A48-A49,A54-A79,A81-A82,A85.0-A85.1,A85.8,A86-B04,B06-B09,B25-B49,B55-B99,U07.1) | 1116981 | 1643859326 |       67.9 |
| Malignant neoplasms (C00-C97)                                                                                                                                                        | 2787895 | 1643859326 |      169.6 |
| Malignant neoplasms of lip, oral cavity and pharynx (C00-C14)                                                                                                                        |   54625 | 1643859326 |        3.3 |
| Malignant neoplasm of esophagus (C15)                                                                                                                                                |   71493 | 1643859326 |        4.3 |
| Malignant neoplasm of stomach (C16)                                                                                                                                                  |   49903 | 1643859326 |        3.0 |
| Malignant neoplasms of colon, rectum and anus (C18-C21)                                                                                                                              |  256550 | 1643859326 |       15.6 |
| Malignant neoplasms of liver and intrahepatic bile ducts (C22)                                                                                                                       |  129011 | 1643859326 |        7.8 |
| Malignant neoplasm of pancreas (C25)                                                                                                                                                 |  201947 | 1643859326 |       12.3 |
| Malignant neoplasm of larynx (C32)                                                                                                                                                   |   20692 | 1643859326 |        1.3 |
| Malignant neoplasms of trachea, bronchus and lung (C33-C34)                                                                                                                          |  620255 | 1643859326 |       37.7 |
| Malignant melanoma of skin (C43)                                                                                                                                                     |   40308 | 1643859326 |        2.5 |
| Malignant neoplasm of breast (C50)                                                                                                                                                   |  222753 | 1643859326 |       13.6 |
| Malignant neoplasm of cervix uteri (C53)                                                                                                                                             |   19929 | 1643859326 |        1.2 |
| Malignant neoplasms of corpus uteri and uterus, part unspecified (C54-C55)                                                                                                           |   55472 | 1643859326 |        3.4 |
| Malignant neoplasm of ovary (C56)                                                                                                                                                    |   60974 | 1643859326 |        3.7 |
| Malignant neoplasm of prostate (C61)                                                                                                                                                 |  190789 | 1643859326 |       11.6 |
| Malignant neoplasms of kidney and renal pelvis (C64-C65)                                                                                                                             |   71818 | 1643859326 |        4.4 |
| Malignant neoplasm of bladder (C67)                                                                                                                                                  |   91642 | 1643859326 |        5.6 |
| Malignant neoplasms of meninges, brain and other parts of central nervous system (C70-C72)                                                                                           |   76382 | 1643859326 |        4.6 |
| Malignant neoplasms of lymphoid, hematopoietic and related tissue (C81-C96)                                                                                                          |  303551 | 1643859326 |       18.5 |
| Hodgkin disease (C81)                                                                                                                                                                |    6348 | 1643859326 |        0.4 |
| Non-Hodgkin lymphoma (C82-C85)                                                                                                                                                       |  109327 | 1643859326 |        6.7 |
| Leukemia (C91-C95)                                                                                                                                                                   |  124624 | 1643859326 |        7.6 |
| Multiple myeloma and immunoproliferative neoplasms (C88,C90)                                                                                                                         |   67322 | 1643859326 |        4.1 |
| Other and unspecified malignant neoplasms of lymphoid, hematopoietic and related tissue (C96)                                                                                        |     758 | 1643859326 |        0.0 |
| All other and unspecified malignant neoplasms (C17,C23-C24,C26-C31,C37-C41,C44-C49,C51-C52,C57-C60,C62-C63,C66,C68-C69,C73-C80,C97)                                                  |  683212 | 1643859326 |       41.6 |
| In situ neoplasms, benign neoplasms and neoplasms of uncertain or unknown behavior (D00-D48)                                                                                         |  110850 | 1643859326 |        6.7 |
| Anemias (D50-D64)                                                                                                                                                                    |  279701 | 1643859326 |       17.0 |
| Diabetes mellitus (E10-E14)                                                                                                                                                          | 1395116 | 1643859326 |       84.9 |
| Nutritional deficiencies (E40-E64)                                                                                                                                                   |  252782 | 1643859326 |       15.4 |
| Malnutrition (E40-E46)                                                                                                                                                               |  242281 | 1643859326 |       14.7 |
| Other nutritional deficiencies (E50-E64)                                                                                                                                             |   11136 | 1643859326 |        0.7 |
| Meningitis (G00,G03)                                                                                                                                                                 |    5432 | 1643859326 |        0.3 |
| Parkinson disease (G20-G21)                                                                                                                                                          |  234394 | 1643859326 |       14.3 |
| Alzheimer disease (G30)                                                                                                                                                              |  641190 | 1643859326 |       39.0 |
| Major cardiovascular diseases (I00-I78)                                                                                                                                              | 7046769 | 1643859326 |      428.7 |
| Diseases of heart (I00-I09,I11,I13,I20-I51)                                                                                                                                          | 5756781 | 1643859326 |      350.2 |
| Acute rheumatic fever and chronic rheumatic heart diseases (I00-I09)                                                                                                                 |   32751 | 1643859326 |        2.0 |
| Hypertensive heart disease (I11)                                                                                                                                                     |  525655 | 1643859326 |       32.0 |
| Hypertensive heart and renal disease (I13)                                                                                                                                           |   71853 | 1643859326 |        4.4 |
| Ischemic heart diseases (I20-I25)                                                                                                                                                    | 2388878 | 1643859326 |      145.3 |
| Acute myocardial infarction (I21-I22)                                                                                                                                                |  632515 | 1643859326 |       38.5 |
| Other acute ischemic heart diseases (I24)                                                                                                                                            |   43445 | 1643859326 |        2.6 |
| Other forms of chronic ischemic heart disease (I20,I25)                                                                                                                              | 1962053 | 1643859326 |      119.4 |
| Atherosclerotic cardiovascular disease, so described (I25.0)                                                                                                                         |  425155 | 1643859326 |       25.9 |
| All other forms of chronic ischemic heart disease (I20,I25.1-I25.9)                                                                                                                  | 1551902 | 1643859326 |       94.4 |
| Other heart diseases (I26-I51)                                                                                                                                                       | 4241341 | 1643859326 |      258.0 |
| Acute and subacute endocarditis (I33)                                                                                                                                                |   15716 | 1643859326 |        1.0 |
| Diseases of pericardium and acute myocarditis (I30-I31,I40)                                                                                                                          |   24473 | 1643859326 |        1.5 |
| Heart failure (I50)                                                                                                                                                                  | 1636535 | 1643859326 |       99.6 |
| All other forms of heart disease (I26-I28,I34-I38,I42-I49,I51)                                                                                                                       | 3251905 | 1643859326 |      197.8 |
| Essential hypertension and hypertensive renal disease (I10,I12,I15)                                                                                                                  | 1983813 | 1643859326 |      120.7 |
| Cerebrovascular diseases (I60-I69)                                                                                                                                                   | 1134697 | 1643859326 |       69.0 |
| Atherosclerosis (I70)                                                                                                                                                                |  123093 | 1643859326 |        7.5 |
| Other diseases of circulatory system (I71-I78)                                                                                                                                       |  244743 | 1643859326 |       14.9 |
| Aortic aneurysm and dissection (I71)                                                                                                                                                 |   73682 | 1643859326 |        4.5 |
| Other diseases of arteries, arterioles and capillaries (I72-I78)                                                                                                                     |  175407 | 1643859326 |       10.7 |
| Other disorders of circulatory system (I80-I99)                                                                                                                                      |  198033 | 1643859326 |       12.0 |
| Influenza and pneumonia (J09-J18)                                                                                                                                                    | 1070276 | 1643859326 |       65.1 |
| Influenza (J09-J11)                                                                                                                                                                  |   32364 | 1643859326 |        2.0 |
| Pneumonia (J12-J18)                                                                                                                                                                  | 1039109 | 1643859326 |       63.2 |
| Other acute lower respiratory infections (J20-J22,U04)                                                                                                                               |    3920 | 1643859326 |        0.2 |
| Acute bronchitis and bronchiolitis (J20-J21)                                                                                                                                         |    2334 | 1643859326 |        0.1 |
| Other and unspecified acute lower respiratory infections (J22,U04)                                                                                                                   |    1586 | 1643859326 |        0.1 |
| Chronic lower respiratory diseases (J40-J47)                                                                                                                                         | 1397119 | 1643859326 |       85.0 |
| Bronchitis, chronic and unspecified (J40-J42)                                                                                                                                        |    6687 | 1643859326 |        0.4 |
| Emphysema (J43)                                                                                                                                                                      |   78208 | 1643859326 |        4.8 |
| Asthma (J45-J46)                                                                                                                                                                     |   57900 | 1643859326 |        3.5 |
| Other chronic lower respiratory diseases (J44,J47)                                                                                                                                   | 1276141 | 1643859326 |       77.6 |
| Pneumoconioses and chemical effects (J60-J66,J68,U07.0)                                                                                                                              |    7057 | 1643859326 |        0.4 |
| Pneumonitis due to solids and liquids (J69)                                                                                                                                          |  270066 | 1643859326 |       16.4 |
| Other diseases of respiratory system (J00-J06,J30- J39,J67,J70-J98)                                                                                                                  | 2060318 | 1643859326 |      125.3 |
| Peptic ulcer (K25-K28)                                                                                                                                                               |   31086 | 1643859326 |        1.9 |
| Diseases of appendix (K35-K38)                                                                                                                                                       |    3260 | 1643859326 |        0.2 |
| Hernia (K40-K46)                                                                                                                                                                     |   16098 | 1643859326 |        1.0 |
| Chronic liver disease and cirrhosis (K70,K73-K74)                                                                                                                                    |  345256 | 1643859326 |       21.0 |
| Alcoholic liver disease (K70)                                                                                                                                                        |  148001 | 1643859326 |        9.0 |
| Other chronic liver disease and cirrhosis (K73-K74)                                                                                                                                  |  200508 | 1643859326 |       12.2 |
| Cholelithiasis and other disorders of gallbladder (K80-K82)                                                                                                                          |   28252 | 1643859326 |        1.7 |
| Nephritis, nephrotic syndrome and nephrosis (N00-N07,N17-N19,N25-N27)                                                                                                                |  968354 | 1643859326 |       58.9 |
| Acute and rapidly progressive nephritic and nephrotic syndrome (N00-N01,N04)                                                                                                         |   15127 | 1643859326 |        0.9 |
| Chronic glomerulonephritis, nephritis and nephropathy not specified as acute or chronic, and renal sclerosis unspecified (N02-N03,N05-N07,N26)                                       |    3145 | 1643859326 |        0.2 |
| Renal failure (N17-N19)                                                                                                                                                              |  959082 | 1643859326 |       58.3 |
| Other disorders of kidney (N25,N27)                                                                                                                                                  |     421 | 1643859326 |        0.0 |
| Infections of kidney (N10-N12,N13.6,N15.1)                                                                                                                                           |   11392 | 1643859326 |        0.7 |
| Hyperplasia of prostate (N40)                                                                                                                                                        |   25589 | 1643859326 |        1.6 |
| Inflammatory diseases of female pelvic organs (N70-N76)                                                                                                                              |    1737 | 1643859326 |        0.1 |
| Pregnancy, childbirth and the puerperium (O00-O99)                                                                                                                                   |    6858 | 1643859326 |        0.4 |
| Pregnancy with abortive outcome (O00-O07)                                                                                                                                            |     156 | 1643859326 |        0.0 |
| Other complications of pregnancy, childbirth and the puerperium (O10-O99)                                                                                                            |    6759 | 1643859326 |        0.4 |
| Certain conditions originating in the perinatal period (P00-P96)                                                                                                                     |   54021 | 1643859326 |        3.3 |
| Congenital malformations, deformations and chromosomal abnormalities (Q00-Q99)                                                                                                       |   63498 | 1643859326 |        3.9 |
| Symptoms, signs and abnormal clinical and laboratory findings, not elsewhere classified (R00-R99)                                                                                    | 2254244 | 1643859326 |      137.1 |
| All other diseases (Residual)                                                                                                                                                        | 5196987 | 1643859326 |      316.1 |
| Accidents (unintentional injuries) (V01-X59,Y85-Y86)                                                                                                                                 |  846428 | 1643859326 |       51.5 |
| Transport accidents (V01-V99,Y85)                                                                                                                                                    |  165447 | 1643859326 |       10.1 |
| Motor vehicle accidents (V02-V04,V09.0,V09.2,V12-V14,V19.0-V19.2,V19.4-V19.6,V20-V79,V80.3-V80.5,V81.0-V81.1,V82.0-V82.1,V83-V86,V87.0-V87.8,V88.0-V88.8,V89.0,V89.2)                |  154288 | 1643859326 |        9.4 |
| Other land transport accidents (V01,V05-V06,V09.1,V09.3-V09.9,V10-V11,V15-V18,V19.3,V19.8-V19.9,V80.0-V80.2,V80.6-V80.9,V81.2-V81.9,V82.2-V82.9,V87.9,V88.9,V89.1,V89.3,V89.9)       |    4141 | 1643859326 |        0.3 |
| Water, air and space, and other and unspecified transport accidents and their sequelae (V90-V99,Y85)                                                                                 |    7029 | 1643859326 |        0.4 |
| Nontransport accidents (W00-X59,Y86)                                                                                                                                                 |  686794 | 1643859326 |       41.8 |
| Falls (W00-W19)                                                                                                                                                                      |  186174 | 1643859326 |       11.3 |
| Accidental discharge of firearms (W32-W34)                                                                                                                                           |    1972 | 1643859326 |        0.1 |
| Accidental drowning and submersion (W65-W74)                                                                                                                                         |   16025 | 1643859326 |        1.0 |
| Accidental exposure to smoke, fire and flames (X00-X09)                                                                                                                              |   11550 | 1643859326 |        0.7 |
| Accidental poisoning and exposure to noxious substances (X40-X49)                                                                                                                    |  311324 | 1643859326 |       18.9 |
| Other and unspecified nontransport accidents and their sequelae (W20-W31,W35-W64,W75-W99,X10-X39,X50-X59,Y86)                                                                        |  174647 | 1643859326 |       10.6 |
| Intentional self-harm (suicide) (\*U03,X60-X84,Y87.0)                                                                                                                                |  174188 | 1643859326 |       10.6 |
| Intentional self-harm (suicide) by discharge of firearms (X72-X74)                                                                                                                   |   90331 | 1643859326 |        5.5 |
| Intentional self-harm (suicide) by other and unspecified means and their sequelae (\*U03,X60-X71,X75-X84,Y87.0)                                                                      |   85257 | 1643859326 |        5.2 |
| Assault (homicide) (*U01-*U02,X85-Y09,Y87.1)                                                                                                                                         |   80566 | 1643859326 |        4.9 |
| Assault (homicide) by discharge of firearms (\*U01.4,X93-X95)                                                                                                                        |   61872 | 1643859326 |        3.8 |
| Assault (homicide) by other and unspecified means and their sequelae (*U01.0-*U01.3,*U01.5-*U01.9,\*U02,X85-X92,X96-Y09,Y87.1)                                                       |   19246 | 1643859326 |        1.2 |
| Legal intervention (Y35,Y89.0)                                                                                                                                                       |    2534 | 1643859326 |        0.2 |
| Events of undetermined intent (Y10-Y34,Y87.2,Y89.9)                                                                                                                                  |   22790 | 1643859326 |        1.4 |
| Discharge of firearms, undetermined intent (Y22-Y24)                                                                                                                                 |    1408 | 1643859326 |        0.1 |
| Other and unspecified events of undetermined intent and their sequelae (Y10-Y21,Y25-Y34,Y87.2,Y89.9)                                                                                 |   21425 | 1643859326 |        1.3 |
| Operations of war and their sequelae (Y36,Y89.1)                                                                                                                                     |     134 | 1643859326 |        0.0 |
| Complications of medical and surgical care (Y40-Y84,Y88)                                                                                                                             |  158745 | 1643859326 |        9.7 |
| Enterocolitis due to Clostridium difficile (A04.7)                                                                                                                                   |   33812 | 1643859326 |        2.1 |
| Other contributing conditions (O08,S,T)                                                                                                                                              | 1288569 | 1643859326 |       78.4 |
| COVID-19 (U07.1)                                                                                                                                                                     |  946785 | 1643859326 |       57.6 |
| Data not shown due to 6 month lag to account for delays in death certificate completion for certain causes of death.                                                                 |  145615 | 1643859326 |        8.9 |

``` r
# MCD - ICD-10 130 Cause List (Infants)
getData("D176", list(list("Group Results By", "D176.V16")))
```

Message from query: Please select age value ‘\< 1 year’ or the Infant
Age Groups button when using the 130 Cause or Leading Infants List.

    ## Error in getData("D176", list(list("Group Results By", "D176.V16"))): Internal Server Error (HTTP 500).

``` r
# MCD - Drug/Alcohol Induced
getData("D176", list(list("Group Results By", "D176.V26-level1")))
```

| MCD - Drug/Alcohol Induced                                                                                           |   Deaths | Population | Crude Rate |
|:---------------------------------------------------------------------------------------------------------------------|---------:|-----------:|-----------:|
| Drug-induced causes                                                                                                  |  1771780 | 1643859326 |      107.8 |
| Alcohol-induced causes                                                                                               |   362393 | 1643859326 |       22.0 |
| All other non-drug and non-alcohol causes                                                                            | 12945419 | 1643859326 |      787.5 |
| Data not shown due to 6 month lag to account for delays in death certificate completion for certain causes of death. |   145615 | 1643859326 |        8.9 |

``` r
# MCD - Drug/Alcohol Induced Cause
getData("D176", list(list("Group Results By", "D176.V26-level2")))
```

| MCD - Drug/Alcohol Induced Cause                                                                                     |   Deaths | Population | Crude Rate |
|:---------------------------------------------------------------------------------------------------------------------|---------:|-----------:|-----------:|
| Drug poisonings (overdose) Unintentional (X40-X44)                                                                   |   288776 | 1643859326 |       17.6 |
| Drug poisonings (overdose) Suicide (X60-X64)                                                                         |    18347 | 1643859326 |        1.1 |
| Drug poisonings (overdose) Homicide (X85)                                                                            |     1018 | 1643859326 |        0.1 |
| Drug poisonings (overdose) Undetermined (Y10-Y14)                                                                    |    14290 | 1643859326 |        0.9 |
| All other drug-induced causes                                                                                        |  1601691 | 1643859326 |       97.4 |
| Alcohol poisonings (overdose) (X45, X65, Y15)                                                                        |    64652 | 1643859326 |        3.9 |
| All other alcohol-induced causes                                                                                     |   321710 | 1643859326 |       19.6 |
| All other non-drug and non-alcohol causes                                                                            | 12945419 | 1643859326 |      787.5 |
| Data not shown due to 6 month lag to account for delays in death certificate completion for certain causes of death. |   145615 | 1643859326 |        8.9 |

``` r
getData("D176", list(list("Group Results By", "Residence Census Region")))
```

Message from query: Any by-variables picked from \[MMWR Year, MMWR
Week\] need to appear in the order listed, and other by-variables can’t
come between them. Please select age value ‘\< 1 year’ or the Infant Age
Groups button when using the 130 Cause or Leading Infants List.

    ## Error in getData("D176", list(list("Group Results By", "Residence Census Region"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "Residence Census Division")))
```

Message from query: Any by-variables picked from \[MMWR Year, MMWR
Week\] need to appear in the order listed, and other by-variables can’t
come between them. Please select age value ‘\< 1 year’ or the Infant Age
Groups button when using the 130 Cause or Leading Infants List.

    ## Error in getData("D176", list(list("Group Results By", "Residence Census Division"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "Residence HHS Region")))
```

Message from query: Any by-variables picked from \[MMWR Year, MMWR
Week\] need to appear in the order listed, and other by-variables can’t
come between them. Please select age value ‘\< 1 year’ or the Infant Age
Groups button when using the 130 Cause or Leading Infants List.

    ## Error in getData("D176", list(list("Group Results By", "Residence HHS Region"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "Residence State")))
```

Message from query: Any by-variables picked from \[MMWR Year, MMWR
Week\] need to appear in the order listed, and other by-variables can’t
come between them. Please select age value ‘\< 1 year’ or the Infant Age
Groups button when using the 130 Cause or Leading Infants List.

    ## Error in getData("D176", list(list("Group Results By", "Residence State"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "Residence County")))
```

Message from query: Any by-variables picked from \[MMWR Year, MMWR
Week\] need to appear in the order listed, and other by-variables can’t
come between them. Please select age value ‘\< 1 year’ or the Infant Age
Groups button when using the 130 Cause or Leading Infants List.

    ## Error in getData("D176", list(list("Group Results By", "Residence County"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "Residence 2013 Urbanization")))
```

Message from query: Any by-variables picked from \[MMWR Year, MMWR
Week\] need to appear in the order listed, and other by-variables can’t
come between them. Please select age value ‘\< 1 year’ or the Infant Age
Groups button when using the 130 Cause or Leading Infants List.

    ## Error in getData("D176", list(list("Group Results By", "Residence 2013 Urbanization"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "Residence 2006 Urbanization")))
```

Message from query: Any by-variables picked from \[MMWR Year, MMWR
Week\] need to appear in the order listed, and other by-variables can’t
come between them. Please select age value ‘\< 1 year’ or the Infant Age
Groups button when using the 130 Cause or Leading Infants List.

    ## Error in getData("D176", list(list("Group Results By", "Residence 2006 Urbanization"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "Occurrence Census Region")))
```

Message from query: Any by-variables picked from \[MMWR Year, MMWR
Week\] need to appear in the order listed, and other by-variables can’t
come between them. Please select age value ‘\< 1 year’ or the Infant Age
Groups button when using the 130 Cause or Leading Infants List.

    ## Error in getData("D176", list(list("Group Results By", "Occurrence Census Region"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "Occurrence Census Division")))
```

Message from query: Any by-variables picked from \[MMWR Year, MMWR
Week\] need to appear in the order listed, and other by-variables can’t
come between them. Please select age value ‘\< 1 year’ or the Infant Age
Groups button when using the 130 Cause or Leading Infants List.

    ## Error in getData("D176", list(list("Group Results By", "Occurrence Census Division"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "Occurrence HHS Region")))
```

Message from query: Any by-variables picked from \[MMWR Year, MMWR
Week\] need to appear in the order listed, and other by-variables can’t
come between them. Please select age value ‘\< 1 year’ or the Infant Age
Groups button when using the 130 Cause or Leading Infants List.

    ## Error in getData("D176", list(list("Group Results By", "Occurrence HHS Region"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "Occurrence State")))
```

Message from query: Any by-variables picked from \[MMWR Year, MMWR
Week\] need to appear in the order listed, and other by-variables can’t
come between them. Please select age value ‘\< 1 year’ or the Infant Age
Groups button when using the 130 Cause or Leading Infants List.

    ## Error in getData("D176", list(list("Group Results By", "Occurrence State"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "Occurrence County")))
```

Message from query: Any by-variables picked from \[MMWR Year, MMWR
Week\] need to appear in the order listed, and other by-variables can’t
come between them. Please select age value ‘\< 1 year’ or the Infant Age
Groups button when using the 130 Cause or Leading Infants List.

    ## Error in getData("D176", list(list("Group Results By", "Occurrence County"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "Occurrence 2013 Urbanization")))
```

Message from query: To Group Results By ‘Occurrence 2013 Urbanization’
you must also select the ‘Occurrence 2013 Urbanization’ button where
found below section #1. Location group by variables (B_1 through B_5)
were found: D176.V89 Only national data are available for this dataset
when using the WONDER web service. Please check that your query does not
group results by region, division, state, county or urbanization, (B_1
through B_5), nor limit these location variables to any specific values.
For more information please contact CDC WONDER customer support at
<cwus@cdc.gov> or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "Occurrence 2013 Urbanization"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "Occurrence 2006 Urbanization")))
```

Message from query: To Group Results By ‘Occurrence 2006 Urbanization’
you must also select the ‘Occurrence 2006 Urbanization’ button where
found below section #1. To Group Results By ‘Occurrence 2006
Urbanization’ you must also select the ‘Occurrence 2006 Urbanization’
button where found below section #1. Location group by variables (B_1
through B_5) were found: D176.V81 Only national data are available for
this dataset when using the WONDER web service. Please check that your
query does not group results by region, division, state, county or
urbanization, (B_1 through B_5), nor limit these location variables to
any specific values. For more information please contact CDC WONDER
customer support at <cwus@cdc.gov> or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "Occurrence 2006 Urbanization"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "Ten-Year Age Groups")))
```

Message from query: Any by-variables picked from \[MMWR Year, MMWR
Week\] need to appear in the order listed, and other by-variables can’t
come between them. Location group by variables (B_1 through B_5) were
found: D176.V81 Only national data are available for this dataset when
using the WONDER web service. Please check that your query does not
group results by region, division, state, county or urbanization, (B_1
through B_5), nor limit these location variables to any specific values.
For more information please contact CDC WONDER customer support at
<cwus@cdc.gov> or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "Ten-Year Age Groups"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "Five-Year Age Groups")))
```

Message from query: Any by-variables picked from \[MMWR Year, MMWR
Week\] need to appear in the order listed, and other by-variables can’t
come between them. Location group by variables (B_1 through B_5) were
found: D176.V81 Only national data are available for this dataset when
using the WONDER web service. Please check that your query does not
group results by region, division, state, county or urbanization, (B_1
through B_5), nor limit these location variables to any specific values.
For more information please contact CDC WONDER customer support at
<cwus@cdc.gov> or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "Five-Year Age Groups"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "Single-Year Ages")))
```

Message from query: Any by-variables picked from \[MMWR Year, MMWR
Week\] need to appear in the order listed, and other by-variables can’t
come between them. Location group by variables (B_1 through B_5) were
found: D176.V81 Only national data are available for this dataset when
using the WONDER web service. Please check that your query does not
group results by region, division, state, county or urbanization, (B_1
through B_5), nor limit these location variables to any specific values.
For more information please contact CDC WONDER customer support at
<cwus@cdc.gov> or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "Single-Year Ages"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "Infant Age Groups")))
```

Message from query: Any by-variables picked from \[MMWR Year, MMWR
Week\] need to appear in the order listed, and other by-variables can’t
come between them. Location group by variables (B_1 through B_5) were
found: D176.V81 Only national data are available for this dataset when
using the WONDER web service. Please check that your query does not
group results by region, division, state, county or urbanization, (B_1
through B_5), nor limit these location variables to any specific values.
For more information please contact CDC WONDER customer support at
<cwus@cdc.gov> or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "Infant Age Groups"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "Gender")))
```

| Gender |  Deaths | Population | Crude Rate |
|:-------|--------:|-----------:|-----------:|
| Female | 6217678 |  834304717 |      745.3 |
| Male   | 6778458 |  809554609 |      837.3 |

``` r
getData("D176", list(list("Group Results By", "Hispanic Origin")))
```

| Hispanic Origin        |   Deaths | Population     | Crude Rate     |
|:-----------------------|---------:|:---------------|:---------------|
| Hispanic or Latino     |  1078330 | 304,382,620    | 354.3          |
| Not Hispanic or Latino | 11885009 | 1,339,476,706  | 887.3          |
| Not Stated             |    32797 | Not Applicable | Not Applicable |

``` r
getData("D176", list(list("Group Results By", "Single Race 6")))
```

Message from query: Any by-variables picked from \[MMWR Year, MMWR
Week\] need to appear in the order listed, and other by-variables can’t
come between them. Location group by variables (B_1 through B_5) were
found: D176.V81 Only national data are available for this dataset when
using the WONDER web service. Please check that your query does not
group results by region, division, state, county or urbanization, (B_1
through B_5), nor limit these location variables to any specific values.
For more information please contact CDC WONDER customer support at
<cwus@cdc.gov> or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "Single Race 6"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "Single Race 15")))
```

Message from query: Any by-variables picked from \[MMWR Year, MMWR
Week\] need to appear in the order listed, and other by-variables can’t
come between them. Location group by variables (B_1 through B_5) were
found: D176.V81 Only national data are available for this dataset when
using the WONDER web service. Please check that your query does not
group results by region, division, state, county or urbanization, (B_1
through B_5), nor limit these location variables to any specific values.
For more information please contact CDC WONDER customer support at
<cwus@cdc.gov> or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "Single Race 15"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "Single/Multi Race 31")))
```

Message from query: Any by-variables picked from \[MMWR Year, MMWR
Week\] need to appear in the order listed, and other by-variables can’t
come between them. Location group by variables (B_1 through B_5) were
found: D176.V81 Only national data are available for this dataset when
using the WONDER web service. Please check that your query does not
group results by region, division, state, county or urbanization, (B_1
through B_5), nor limit these location variables to any specific values.
For more information please contact CDC WONDER customer support at
<cwus@cdc.gov> or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "Single/Multi Race 31"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "Year")))
```

Message from query: Any by-variables picked from \[MMWR Year, MMWR
Week\] need to appear in the order listed, and other by-variables can’t
come between them.

    ## Error in getData("D176", list(list("Group Results By", "Year"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "Month")))
```

Message from query: Any by-variables picked from \[MMWR Year, MMWR
Week\] need to appear in the order listed, and other by-variables can’t
come between them. Location group by variables (B_1 through B_5) were
found: D176.V81 Only national data are available for this dataset when
using the WONDER web service. Please check that your query does not
group results by region, division, state, county or urbanization, (B_1
through B_5), nor limit these location variables to any specific values.
For more information please contact CDC WONDER customer support at
<cwus@cdc.gov> or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "Month"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "MMWR Year")))
```

Message from query: Any by-variables picked from \[MMWR Year, MMWR
Week\] need to appear in the order listed, and other by-variables can’t
come between them. Location group by variables (B_1 through B_5) were
found: D176.V81 Only national data are available for this dataset when
using the WONDER web service. Please check that your query does not
group results by region, division, state, county or urbanization, (B_1
through B_5), nor limit these location variables to any specific values.
For more information please contact CDC WONDER customer support at
<cwus@cdc.gov> or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "MMWR Year"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "MMWR Week")))
```

Message from query: Any by-variables picked from \[MMWR Year, MMWR
Week\] need to appear in the order listed, and other by-variables can’t
come between them. Location group by variables (B_1 through B_5) were
found: D176.V81 Only national data are available for this dataset when
using the WONDER web service. Please check that your query does not
group results by region, division, state, county or urbanization, (B_1
through B_5), nor limit these location variables to any specific values.
For more information please contact CDC WONDER customer support at
<cwus@cdc.gov> or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "MMWR Week"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "Autopsy")))
```

| Autopsy |   Deaths | Population     | Crude Rate     |
|:--------|---------:|:---------------|:---------------|
| No      | 11615163 | Not Applicable | Not Applicable |
| Yes     |   991161 | Not Applicable | Not Applicable |
| Unknown |   389812 | Not Applicable | Not Applicable |

``` r
getData("D176", list(list("Group Results By", "Place of Death")))
```

| Place of Death                      |  Deaths | Population     | Crude Rate     |
|:------------------------------------|--------:|:---------------|:---------------|
| Medical Facility - Inpatient        | 3966032 | Not Applicable | Not Applicable |
| Medical Facility - Outpatient or ER |  789668 | Not Applicable | Not Applicable |
| Medical Facility - Dead on Arrival  |   39475 | Not Applicable | Not Applicable |
| Decedent’s home                     | 4237633 | Not Applicable | Not Applicable |
| Hospice facility                    |  882071 | Not Applicable | Not Applicable |
| Nursing home/long term care         | 2213143 | Not Applicable | Not Applicable |
| Other                               |  865812 | Not Applicable | Not Applicable |
| Place of death unknown              |    2302 | Not Applicable | Not Applicable |

``` r
getData("D176", list(list("Group Results By", "UCD - 15 Leading Causes of Death")))
```

Message from query: Any by-variables picked from \[MMWR Year, MMWR
Week\] need to appear in the order listed, and other by-variables can’t
come between them. Location group by variables (B_1 through B_5) were
found: D176.V81 Only national data are available for this dataset when
using the WONDER web service. Please check that your query does not
group results by region, division, state, county or urbanization, (B_1
through B_5), nor limit these location variables to any specific values.
For more information please contact CDC WONDER customer support at
<cwus@cdc.gov> or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "UCD - 15 Leading Causes of Death"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "UCD - 15 Leading Causes of Death (Infants)")))
```

Message from query: Any by-variables picked from \[MMWR Year, MMWR
Week\] need to appear in the order listed, and other by-variables can’t
come between them. Location group by variables (B_1 through B_5) were
found: D176.V81 Only national data are available for this dataset when
using the WONDER web service. Please check that your query does not
group results by region, division, state, county or urbanization, (B_1
through B_5), nor limit these location variables to any specific values.
For more information please contact CDC WONDER customer support at
<cwus@cdc.gov> or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "UCD - 15 Leading Causes of Death (Infants)"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "UCD - ICD Chapter")))
```

Message from query: Any by-variables picked from \[MMWR Year, MMWR
Week\] need to appear in the order listed, and other by-variables can’t
come between them. Location group by variables (B_1 through B_5) were
found: D176.V81 Only national data are available for this dataset when
using the WONDER web service. Please check that your query does not
group results by region, division, state, county or urbanization, (B_1
through B_5), nor limit these location variables to any specific values.
For more information please contact CDC WONDER customer support at
<cwus@cdc.gov> or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "UCD - ICD Chapter"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "UCD - ICD Sub-Chapter")))
```

Message from query: Any by-variables picked from \[MMWR Year, MMWR
Week\] need to appear in the order listed, and other by-variables can’t
come between them. Location group by variables (B_1 through B_5) were
found: D176.V81 Only national data are available for this dataset when
using the WONDER web service. Please check that your query does not
group results by region, division, state, county or urbanization, (B_1
through B_5), nor limit these location variables to any specific values.
For more information please contact CDC WONDER customer support at
<cwus@cdc.gov> or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "UCD - ICD Sub-Chapter"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "Underlying Cause of death")))
```

Message from query: Any by-variables picked from \[MMWR Year, MMWR
Week\] need to appear in the order listed, and other by-variables can’t
come between them. Location group by variables (B_1 through B_5) were
found: D176.V81 Only national data are available for this dataset when
using the WONDER web service. Please check that your query does not
group results by region, division, state, county or urbanization, (B_1
through B_5), nor limit these location variables to any specific values.
For more information please contact CDC WONDER customer support at
<cwus@cdc.gov> or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "Underlying Cause of death"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "UCD - ICD-10 113 Cause List")))
```

Message from query: Any by-variables picked from \[MMWR Year, MMWR
Week\] need to appear in the order listed, and other by-variables can’t
come between them. Location group by variables (B_1 through B_5) were
found: D176.V81 Only national data are available for this dataset when
using the WONDER web service. Please check that your query does not
group results by region, division, state, county or urbanization, (B_1
through B_5), nor limit these location variables to any specific values.
For more information please contact CDC WONDER customer support at
<cwus@cdc.gov> or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "UCD - ICD-10 113 Cause List"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "UCD - ICD-10 130 Cause List (Infants)")))
```

Message from query: Any by-variables picked from \[MMWR Year, MMWR
Week\] need to appear in the order listed, and other by-variables can’t
come between them. Location group by variables (B_1 through B_5) were
found: D176.V81 Only national data are available for this dataset when
using the WONDER web service. Please check that your query does not
group results by region, division, state, county or urbanization, (B_1
through B_5), nor limit these location variables to any specific values.
For more information please contact CDC WONDER customer support at
<cwus@cdc.gov> or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "UCD - ICD-10 130 Cause List (Infants)"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "UCD - Injury Intent")))
```

| UCD - Injury Intent                    |   Deaths | Population | Crude Rate |
|:---------------------------------------|---------:|-----------:|-----------:|
| Unintentional                          |   691323 | 1643859326 |       42.1 |
| Suicide                                |   173817 | 1643859326 |       10.6 |
| Homicide                               |    79831 | 1643859326 |        4.9 |
| Undetermined                           |    21613 | 1643859326 |        1.3 |
| Legal Intervention / Operations of War |     2518 | 1643859326 |        0.2 |
| Non-Injury, no intent classified       | 12027034 | 1643859326 |      731.6 |

``` r
getData("D176", list(list("Group Results By", "UCD - Injury Mechanism & All Other Leading Causes")))
```

| UCD - Injury Mechanism & All Other Leading Causes                                                   |  Deaths | Population | Crude Rate |
|:----------------------------------------------------------------------------------------------------|--------:|-----------:|-----------:|
| Cut/Pierce                                                                                          |   10638 | 1643859326 |        0.6 |
| Drowning                                                                                            |   17846 | 1643859326 |        1.1 |
| Fall                                                                                                |  152557 | 1643859326 |        9.3 |
| Fire/Flame                                                                                          |   12704 | 1643859326 |        0.8 |
| Hot object/Substance                                                                                |     320 | 1643859326 |        0.0 |
| Firearm                                                                                             |  157334 | 1643859326 |        9.6 |
| Machinery                                                                                           |    1962 | 1643859326 |        0.1 |
| Motor Vehicle Traffic                                                                               |  145898 | 1643859326 |        8.9 |
| Other Pedal cyclist                                                                                 |    1421 | 1643859326 |        0.1 |
| Other Pedestrian                                                                                    |    3508 | 1643859326 |        0.2 |
| Other land transport                                                                                |    5722 | 1643859326 |        0.3 |
| Other transport                                                                                     |    3292 | 1643859326 |        0.2 |
| Natural/Environmental                                                                               |    8351 | 1643859326 |        0.5 |
| Overexertion                                                                                        |      57 | 1643859326 |        0.0 |
| Poisoning                                                                                           |  320304 | 1643859326 |       19.5 |
| Struck by or against                                                                                |    4018 | 1643859326 |        0.2 |
| Suffocation                                                                                         |   75528 | 1643859326 |        4.6 |
| Other specified, classifiable Injury                                                                |    8631 | 1643859326 |        0.5 |
| Other specified, not elsewhere classified Injury                                                    |    7486 | 1643859326 |        0.5 |
| Unspecified Injury                                                                                  |   31525 | 1643859326 |        1.9 |
| Non-Injury: Intestinal infections                                                                   |   29806 | 1643859326 |        1.8 |
| Non-Injury: Tuberculosis                                                                            |    2329 | 1643859326 |        0.1 |
| Non-Injury: Whooping cough                                                                          |      28 | 1643859326 |        0.0 |
| Non-Injury: Meningococcal infection                                                                 |     115 | 1643859326 |        0.0 |
| Non-Injury: Septicemia                                                                              |  165169 | 1643859326 |       10.0 |
| Non-Injury: Syphilis                                                                                |     172 | 1643859326 |        0.0 |
| Non-Injury: Arthropod-borne viral encephalitis                                                      |      31 | 1643859326 |        0.0 |
| Non-Injury: Viral hepatitis                                                                         |   16898 | 1643859326 |        1.0 |
| Non-Injury: Human immunodeficiency virus (HIV) disease                                              |   20988 | 1643859326 |        1.3 |
| Non-Injury: Malaria                                                                                 |      24 | 1643859326 |        0.0 |
| Non-Injury: Other and unspecified infectious and parasitic diseases and their sequelae              |  896863 | 1643859326 |       54.6 |
| Non-Injury: Malignant neoplasms (Cancers)                                                           | 2474323 | 1643859326 |      150.5 |
| Non-Injury: In situ neoplasms, benign neoplasms and neoplasms of uncertain or unknown behavior      |   65417 | 1643859326 |        4.0 |
| Non-Injury: Anemias                                                                                 |   22764 | 1643859326 |        1.4 |
| Non-Injury: Diabetes mellitus                                                                       |  390069 | 1643859326 |       23.7 |
| Non-Injury: Nutritional Deficiencies                                                                |   55932 | 1643859326 |        3.4 |
| Non-Injury: Meningitis                                                                              |    2309 | 1643859326 |        0.1 |
| Non-Injury: Parkinsons disease                                                                      |  153428 | 1643859326 |        9.3 |
| Non-Injury: Alzheimers disease                                                                      |  514091 | 1643859326 |       31.3 |
| Non-Injury: Diseases of Heart                                                                       | 2787964 | 1643859326 |      169.6 |
| Non-Injury: Essential (primary) hypertension and hypertensive renal disease                         |  162457 | 1643859326 |        9.9 |
| Non-Injury: Cerebrovascular diseases, including stroke                                              |  641490 | 1643859326 |       39.0 |
| Non-Injury: Atherosclerosis                                                                         |   18901 | 1643859326 |        1.1 |
| Non-Injury: Other diseases of the circulatory system                                                |   81668 | 1643859326 |        5.0 |
| Non-Injury: Other disorders of circulatory system                                                   |   21128 | 1643859326 |        1.3 |
| Non-Injury: Influenza & Pneumonia                                                                   |  210020 | 1643859326 |       12.8 |
| Non-Injury: Other acute lower respiratory infections                                                |    1178 | 1643859326 |        0.1 |
| Non-Injury: Chronic lower respiratory diseases                                                      |  629420 | 1643859326 |       38.3 |
| Non-Injury: Pneumoconioses and chemical effects                                                     |    2577 | 1643859326 |        0.2 |
| Non-Injury: Pneumonitis due to solids and liquids                                                   |   79113 | 1643859326 |        4.8 |
| Non-Injury: Other diseases of respiratory system                                                    |  184582 | 1643859326 |       11.2 |
| Non-Injury: Peptic ulcer                                                                            |   15193 | 1643859326 |        0.9 |
| Non-Injury: Diseases of appendix                                                                    |    1704 | 1643859326 |        0.1 |
| Non-Injury: Hernia                                                                                  |    9437 | 1643859326 |        0.6 |
| Non-Injury: Chronic liver disease and cirrhosis                                                     |  201107 | 1643859326 |       12.2 |
| Non-Injury: Cholelithiasis and other disorders of gallbladder                                       |   16557 | 1643859326 |        1.0 |
| Non-Injury: Nephritis, nephrotic syndrome and nephrosis                                             |  216672 | 1643859326 |       13.2 |
| Non-Injury: Infections of kidney                                                                    |    4257 | 1643859326 |        0.3 |
| Non-Injury: Hyperplasia of prostate                                                                 |    2725 | 1643859326 |        0.2 |
| Non-Injury: Inflammatory diseases of female pelvic organs                                           |     743 | 1643859326 |        0.0 |
| Non-Injury: Pregnancy with abortive outcome                                                         |     119 | 1643859326 |        0.0 |
| Non-Injury: Other complications of pregnancy, childbirth and the puerperium                         |    5151 | 1643859326 |        0.3 |
| Non-Injury: Certain conditions originating in the perinatal period                                  |   40717 | 1643859326 |        2.5 |
| Non-Injury: Congenital malformations, deformations and chromosomal abnormalities                    |   39347 | 1643859326 |        2.4 |
| Non-Injury: Symptoms, signs and abnormal clinical and laboratory findings, not elsewhere classified |  177496 | 1643859326 |       10.8 |
| Non-Injury: All other diseases (Residual)                                                           | 1645169 | 1643859326 |      100.1 |
| Non-Injury: Complications of medical and surgical care                                              |   19382 | 1643859326 |        1.2 |

``` r
getData("D176", list(list("Group Results By", "UCD - Drug/Alcohol Induced")))
```

Message from query: Any by-variables picked from \[MMWR Year, MMWR
Week\] need to appear in the order listed, and other by-variables can’t
come between them. Location group by variables (B_1 through B_5) were
found: D176.V81 Only national data are available for this dataset when
using the WONDER web service. Please check that your query does not
group results by region, division, state, county or urbanization, (B_1
through B_5), nor limit these location variables to any specific values.
For more information please contact CDC WONDER customer support at
<cwus@cdc.gov> or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "UCD - Drug/Alcohol Induced"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "UCD - Drug/Alcohol Induced Cause")))
```

Message from query: Any by-variables picked from \[MMWR Year, MMWR
Week\] need to appear in the order listed, and other by-variables can’t
come between them. Location group by variables (B_1 through B_5) were
found: D176.V81 Only national data are available for this dataset when
using the WONDER web service. Please check that your query does not
group results by region, division, state, county or urbanization, (B_1
through B_5), nor limit these location variables to any specific values.
For more information please contact CDC WONDER customer support at
<cwus@cdc.gov> or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "UCD - Drug/Alcohol Induced Cause"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "MCD - ICD Chapter")))
```

Message from query: Any by-variables picked from \[MMWR Year, MMWR
Week\] need to appear in the order listed, and other by-variables can’t
come between them. Location group by variables (B_1 through B_5) were
found: D176.V81 Only national data are available for this dataset when
using the WONDER web service. Please check that your query does not
group results by region, division, state, county or urbanization, (B_1
through B_5), nor limit these location variables to any specific values.
For more information please contact CDC WONDER customer support at
<cwus@cdc.gov> or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "MCD - ICD Chapter"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "MCD - ICD Sub-Chapter")))
```

Message from query: Any by-variables picked from \[MMWR Year, MMWR
Week\] need to appear in the order listed, and other by-variables can’t
come between them. Location group by variables (B_1 through B_5) were
found: D176.V81 Only national data are available for this dataset when
using the WONDER web service. Please check that your query does not
group results by region, division, state, county or urbanization, (B_1
through B_5), nor limit these location variables to any specific values.
For more information please contact CDC WONDER customer support at
<cwus@cdc.gov> or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "MCD - ICD Sub-Chapter"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "Multiple Cause of death")))
```

Message from query: Any by-variables picked from \[MMWR Year, MMWR
Week\] need to appear in the order listed, and other by-variables can’t
come between them. Location group by variables (B_1 through B_5) were
found: D176.V81 Only national data are available for this dataset when
using the WONDER web service. Please check that your query does not
group results by region, division, state, county or urbanization, (B_1
through B_5), nor limit these location variables to any specific values.
For more information please contact CDC WONDER customer support at
<cwus@cdc.gov> or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "Multiple Cause of death"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "MCD - ICD-10 113 Cause List")))
```

Message from query: Any by-variables picked from \[MMWR Year, MMWR
Week\] need to appear in the order listed, and other by-variables can’t
come between them. Location group by variables (B_1 through B_5) were
found: D176.V81 Only national data are available for this dataset when
using the WONDER web service. Please check that your query does not
group results by region, division, state, county or urbanization, (B_1
through B_5), nor limit these location variables to any specific values.
For more information please contact CDC WONDER customer support at
<cwus@cdc.gov> or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "MCD - ICD-10 113 Cause List"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "MCD - ICD-10 130 Cause List (Infants)")))
```

Message from query: Any by-variables picked from \[MMWR Year, MMWR
Week\] need to appear in the order listed, and other by-variables can’t
come between them. Location group by variables (B_1 through B_5) were
found: D176.V81 Only national data are available for this dataset when
using the WONDER web service. Please check that your query does not
group results by region, division, state, county or urbanization, (B_1
through B_5), nor limit these location variables to any specific values.
For more information please contact CDC WONDER customer support at
<cwus@cdc.gov> or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "MCD - ICD-10 130 Cause List (Infants)"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "MCD - Drug/Alcohol Induced")))
```

Message from query: Any by-variables picked from \[MMWR Year, MMWR
Week\] need to appear in the order listed, and other by-variables can’t
come between them. Location group by variables (B_1 through B_5) were
found: D176.V81 Only national data are available for this dataset when
using the WONDER web service. Please check that your query does not
group results by region, division, state, county or urbanization, (B_1
through B_5), nor limit these location variables to any specific values.
For more information please contact CDC WONDER customer support at
<cwus@cdc.gov> or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "MCD - Drug/Alcohol Induced"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "MCD - Drug/Alcohol Induced CauseD176.V16    MCD - ICD-10 130 Cause List (Infants)")))
```

Message from query: Any by-variables picked from \[MMWR Year, MMWR
Week\] need to appear in the order listed, and other by-variables can’t
come between them.

    ## Error in getData("D176", list(list("Group Results By", "MCD - Drug/Alcohol Induced CauseD176.V16    MCD - ICD-10 130 Cause List (Infants)"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "MCD - Drug/Alcohol Induced")))
```

Message from query: Any by-variables picked from \[MMWR Year, MMWR
Week\] need to appear in the order listed, and other by-variables can’t
come between them. Location group by variables (B_1 through B_5) were
found: D176.V81 Only national data are available for this dataset when
using the WONDER web service. Please check that your query does not
group results by region, division, state, county or urbanization, (B_1
through B_5), nor limit these location variables to any specific values.
For more information please contact CDC WONDER customer support at
<cwus@cdc.gov> or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "MCD - Drug/Alcohol Induced"))): Internal Server Error (HTTP 500).

``` r
getData("D176", list(list("Group Results By", "MCD - Drug/Alcohol Induced Cause")))
```

Message from query: Any by-variables picked from \[MMWR Year, MMWR
Week\] need to appear in the order listed, and other by-variables can’t
come between them. Location group by variables (B_1 through B_5) were
found: D176.V81 Only national data are available for this dataset when
using the WONDER web service. Please check that your query does not
group results by region, division, state, county or urbanization, (B_1
through B_5), nor limit these location variables to any specific values.
For more information please contact CDC WONDER customer support at
<cwus@cdc.gov> or (888) 496-8347.

    ## Error in getData("D176", list(list("Group Results By", "MCD - Drug/Alcohol Induced Cause"))): Internal Server Error (HTTP 500).
