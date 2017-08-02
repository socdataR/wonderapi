# wonderapi

This package provides functions to easily access CDC Wonder ata available from 1995-2015 through the [CDC Wonder API](https://wonder.cdc.gov/wonder/help/WONDER-API.html). 

The API provides access to the same data fields as the [CDC Wonder web interface](https://wonder.cdc.gov/), with the exception of location data, which is not available through the API.

The data is split among three data sets by time period, with slightly different categorization for some variables:  

[2007-2015](https://wonder.cdc.gov/controller/datarequest/D66)  
[2003-2006](https://wonder.cdc.gov/controller/datarequest/D27)  
[1995-2002](https://wonder.cdc.gov/controller/datarequest/D10)  


To perform a query:

getData("D66")   # performs query with default parameter list



Advanced users: to add a new database:
1. Make the default query list for that database.  To do so, you need a sample xml request file, such as the two provided here (add link), or request from the CDC. (email address).

    make_query_list("D66_Births-req.xml")
	
The filename must begin with the database code followed by "_".

2. Add a label lookup file:

    webdata <- agree_and_scrape("natality-current", "D66", "action-I agree")
	make_label_lookup(webdata)
		
3. Add a codebook (must be performed after creating the label lookup file):

  a) Manually add a file of variables to ignore (usually the location variables which cannot be accessed through the API) to the data folder, with the filename equal to the database code + "ignore":

    ignore <- c("O_location", "F_D66.V21", "F_D66.V22", "F_D66.V37", "V_D66.V21",
	    "V_D66.V22", "V_D66.V37")
	save(ignore, file = "data/D66ignore.RData")

  b) Make the codebook:
    make_codebook(webdata)
	
Submit a pull request to add these files to the package.	
	

	
