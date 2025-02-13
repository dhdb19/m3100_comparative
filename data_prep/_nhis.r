# ---- import datsets ----

years <- seq(1969, 2014)



# ---- households ----
map(
  years,
  possibly(
    function(year) {
      assign(
        df,
        read.SAScii(
          glue("data/_nhis/household_dat/{year}_household.dat"),
          glue("data/_nhis/household_sas/{year}_household.sas")
        )
      )
      write_parquet(
        df,
        glue("data/_nhis/household_parquet/{year}_household.parquet")
      )
    }
  )
)

# ---- personx ----

map(
  years,
  possibly(
    function(year) {
      assign(
        df,
        read.SAScii(
          glue("data/_nhis/personsx_dat/{year}_personsx.dat"),
          glue("data/_nhis/personsx_sas/{year}_personsx.sas")
        )
      )
      write_parquet(
        df,
        glue("data/_nhis/personsx_parquet/{year}_personsx.parquet")
      )
    }
  )
)


# ---- heaelthin ----


map(
  years,
  possibly(
    function(year) {
      assign(
        df,
        read.SAScii(
          glue("data/_nhis/healthin_dat/{year}_healthin.dat"),
          glue("data/_nhis/healthin_sas/{year}_healthin.sas")
        )
      )
      write_parquet(
        df,
        glue("data/_nhis/healthin_parquet/{year}_healthin.parquet")
      )
    }
  )
)



df1970 <- read.SAScii("data/1970_household/HOUSEHLD.DAT", "data/1970_household.sas", skip.decimal.division = TRUE)
