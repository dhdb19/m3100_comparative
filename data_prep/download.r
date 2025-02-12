library(glue)

download.file("https://ftp.cdc.gov/pub/Health_Statistics/NCHS/Program_Code/NHIS/1970/PERSONSX.SAS", destfile = "data/1970_personx.sas")

years <- seq(1971, 1996)

lapply(years, function(year) download.file(glue("https://ftp.cdc.gov/pub/Health_Statistics/NCHS/Program_Code/NHIS/{year}/PERSONSX.SAS"), destfile = glue("data/{year}_personx.sas")))
