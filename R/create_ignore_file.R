# make data file of variables to ignore when constructing codebook
# (location variables)
ignore <- c("O_location", "F_D66.V21", "F_D66.V22",
            "F_D66.V37", "V_D66.V21", "V_D66.V22",
            "V_D66.V37")
save(ignore, file = "data/D66ignore.Rdata")
