# ---- import datsets ----

years <- seq(1969, 2014)

years9 <- seq(1969, 1971)

years11 <- seq(1997, 2014)
# ---- households ----
map(
  years11,
  possibly(
    function(year) {
      read.SAScii(
        glue("data/_nhis/household_dat/{year}_household.dat"),
        glue("data/_nhis/household_sas/{year}_household.sas")
      ) %>%
        write_parquet(
          glue("data/_nhis/household_parquet/{year}_household.parquet")
        )
    }
  )
)

read.SAScii(
  glue("data/_nhis/household_dat/1969_household.dat"),
  glue("data/_nhis/household_sas/1969_household.sas")
)

write_parquet(
  df,
  glue("data/_nhis/household_parquet/1969_household.parquet")
)

df1969 <- read_parquet("data/_nhis/household_parquet/1969_household.parquet")


# ---- personx ----

map(
  years11,
  possibly(
    function(year) {
      read.SAScii(
        glue("data/_nhis/personsx_dat/{year}_personsx.dat"),
        glue("data/_nhis/personsx_sas/{year}_personsx.sas")
      ) %>%
        write_parquet(
          glue("data/_nhis/personsx_parquet/{year}_personsx.parquet")
        )
    }
  )
)


# ---- heaelthin ----
years10 <- seq(1969, 1996)

map(
  years10,
  possibly(
    function(year) {
      read.SAScii(
        glue("data/_nhis/healthin_dat/{year}_healthin.dat"),
        glue("data/_nhis/healthin_sas/{year}_healthin.sas")
      ) %>%
        write_parquet(
          glue("data/_nhis/healthin_parquet/{year}_healthin.parquet")
        )
    }
  )
)


read.SAScii(
  "data/_nhis/healthin_dat/1980_healthin.dat",
  "data/_nhis/healthin_sas/1980_healthin.sas"
) %>%
  write_parquet(
    "data/_nhis/healthin_parquet/1980_healthin.parquet"
  )

read.SAScii("data/_nhis/healthin_dat/1970_healthin.dat", "data/_nhis/healthin_sas/1970_healthin.sas")


# ---- read 1970 - 1974 ----
tf <- tempfile()


z <- readLines("data/_nhis/healthin_sas/1970_healthin.sas")
tf <- readLines("data/_nhis/healthin_sas/1970_healthin.sas")

z[substr(str_trim(z), 1, 1) == "#"]

sas_script_breakpoints <- which(substr(str_trim(z), 1, 1) == "#")

script_one <- z[581:sas_script_breakpoints[1]]
script_two <- z[sas_script_breakpoints[1]:sas_script_breakpoints[2]]
script_three <- z[sas_script_breakpoints[2]:sas_script_breakpoints[3]]
script_four <- z[sas_script_breakpoints[3]:length(z)]

# replace some stuff so these look like recognizable sas scripts
script_one[length(script_one)] <- ";"

script_two[1] <- "input blank 1-300"
script_two[length(script_two)] <- ";"

script_three[1] <- "input blank 1-300"
script_three[length(script_three)] <- ";"

script_four[1] <- "input blank 1-300"



writeLines(script_one, tf)
parse.SAScii(tf)
df1970 <- read.SAScii("data/_nhis/healthin_dat/1970_healthin.dat", tf)
