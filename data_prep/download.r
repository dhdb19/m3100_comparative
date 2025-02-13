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


# ---- unzip ----

years6 <- seq(1969, 2014)
years7 <- seq(2015, 2018)
years8 <- seq(2019, 2024)


# ----  unzip personsx ----
map(
  years6,
  possibly(
    function(year) {
      unzip(
        zipfile = glue("data/_raw_download/nhis/{year}_personx.zip"),
        exdir = "data/_nhis/personsx_dat"
      )
      file.rename(
        "data/_nhis/personsx_dat/PERSONSX.DAT",
        glue("data/_nhis/personsx_dat/{year}_personsx.dat")
      )
    }
  )
)

map(
  years7,
  possibly(
    function(year) {
      unzip(
        zipfile = glue("data/_raw_download/nhis/{year}_personx.zip"),
        exdir = "data/_nhis/personsx_dat"
      )
      file.rename(
        "data/_nhis/personsx_dat/PERSONSX.CSV",
        glue("data/_nhis/personsx_dat/{year}_personsx.csv")
      )
    }
  )
)

map(
  years8,
  possibly(
    function(year) {
      unzip(
        zipfile = glue("data/_raw_download/nhis/{year}_adult.zip"),
        exdir = "data/_nhis/adult_dat"
      )
      file.rename(
        glue("data/_nhis/adult_dat/adult{substring(year, 3)}.csv"),
        glue("data/_nhis/adult_dat/{year}_adult.csv")
      )
    }
  )
)

# child
map(
  years8,
  possibly(
    function(year) {
      unzip(
        zipfile = glue("data/_raw_download/nhis/{year}_child.zip"),
        exdir = "data/_nhis/child_dat"
      )
      file.rename(
        glue("data/_nhis/child_dat/child{substring(year, 3)}.csv"),
        glue("data/_nhis/child_dat/{year}_child.csv")
      )
    }
  )
)

map(
  years8,
  possibly(
    function(year) {
      unzip(
        zipfile = glue("data/_raw_download/nhis/{year}_adult_child.zip"),
        exdir = "data/_nhis/adult_child_dat"
      )
      file.rename(
        glue("data/_nhis/adult_child_dat/final_pair_weight{year}.csv"),
        glue("data/_nhis/adult_child_dat/{year}_adult_child.csv")
      )
    }
  )
)


# ---- unzip household ----
map(
  years6,
  possibly(
    function(year) {
      unzip(
        zipfile = glue("data/_raw_download/nhis/{year}_household.zip"),
        exdir = "data/_nhis/household_dat"
      )
      file.rename(
        "data/_nhis/household_dat/HOUSEHLD.DAT",
        glue("data/_nhis/household_dat/{year}_household.dat")
      )
    }
  )
)

map(
  years7,
  possibly(
    function(year) {
      unzip(
        zipfile = glue("data/_raw_download/nhis/{year}_household.zip"),
        exdir = "data/_nhis/household_dat"
      )
      file.rename(
        "data/_nhis/household_dat/HOUSEHLD.CSV",
        glue("data/_nhis/household_dat/{year}_household.csv")
      )
    }
  )
)


# ---- unzip healthin ----

map(
  years6,
  possibly(
    function(year) {
      unzip(
        zipfile = glue("data/_raw_download/nhis/{year}_healthin.zip"),
        exdir = "data/_nhis/healthin_dat"
      )
      file.rename(
        "data/_nhis/healthin_dat/HEALTHIN.DAT",
        glue("data/_nhis/healthin_dat/{year}_healthin.dat")
      )
    }
  )
)



map(
  years7,
  possibly(
    function(year) {
      unzip(
        zipfile = glue("data/_raw_download/nhis/{year}_healthin.zip"),
        exdir = "data/_nhis/healthin_dat"
      )
      file.rename(
        "data/_nhis/healthin_dat/HEALTHIN.CSV",
        glue("data/_nhis/healthin_dat/{year}_healthin.csv")
      )
    }
  )
)
