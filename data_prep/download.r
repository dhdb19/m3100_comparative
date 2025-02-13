library(glue)

download.file("https://ftp.cdc.gov/pub/Health_Statistics/NCHS/Program_Code/NHIS/1970/PERSONSX.SAS", destfile = "data/1970_personx.sas")

years <- seq(1969, 1996)

lapply(years, function(year) download.file(glue("https://ftp.cdc.gov/pub/Health_Statistics/NCHS/Program_Code/NHIS/{year}/PERSONSX.SAS"), destfile = glue("data/{year}_personx.sas")))

lapply(years, function(year) download.file(glue("https://ftp.cdc.gov/pub/Health_Statistics/NCHS/Program_Code/NHIS/{year}/HOUSEHLD.SAS"), destfile = glue("data/{year}_household.sas")))

lapply(years, function(year) download.file(glue("https://ftp.cdc.gov/pub/Health_Statistics/NCHS/Program_Code/NHIS/{year}/HEALTHIN.sas"), destfile = glue("data/{year}_healthin.sas")))

map(
  years,
  possibly(
    function(year) {
      download.file(
        glue(
          "https://ftp.cdc.gov/pub/Health_Statistics/NCHS/Program_Code/NHIS/{year}/HEALTHIN.sas"
        ),
        destfile = glue("data/{year}_healthin.sas")
      )
    }
  )
)

years1 <- seq(1997, 2003)

map(
  years1,
  possibly(
    function(year) {
      download.file(
        glue(
          "https://ftp.cdc.gov/pub/Health_Statistics/NCHS/Program_Code/NHIS/{year}/personsx.sas"
        ),
        destfile = glue("data/{year}_personsx.sas")
      )
      download.file(
        glue(
          "https://ftp.cdc.gov/pub/Health_Statistics/NCHS/Program_Code/NHIS/{year}/househld.sas"
        ),
        destfile = glue("data/{year}_household.sas")
      )
    }
  )
)


years2 <- seq(2004, 2018)

map(
  years2,
  possibly(
    function(year) {
      download.file(
        glue(
          "https://ftp.cdc.gov/pub/Health_Statistics/NCHS/Program_Code/NHIS/{year}/person/personsx.sas"
        ),
        destfile = glue("data/{year}_personsx.sas")
      )
      download.file(
        glue(
          "https://ftp.cdc.gov/pub/Health_Statistics/NCHS/Program_Code/NHIS/{year}/household/househld.sas"
        ),
        destfile = glue("data/{year}_household.sas")
      )
    }
  )
)




map(
  years2,
  possibly(
    function(year) {
      download.file(
        glue(
          "https://ftp.cdc.gov/pub/Health_Statistics/NCHS/Program_Code/NHIS/{year}/personsx.sas"
        ),
        destfile = glue("data/{year}_personsx.sas")
      )
      download.file(
        glue(
          "https://ftp.cdc.gov/pub/Health_Statistics/NCHS/Program_Code/NHIS/{year}/househld.sas"
        ),
        destfile = glue("data/{year}_household.sas")
      )
    }
  )
)
