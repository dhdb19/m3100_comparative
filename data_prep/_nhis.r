# ---- import datsets ----

years <- seq(1969, 1996)



# ---- households ----
map(
  years,
  possibly(
    function(year) {
      assign(
        df,
        read.SAScii(
          glue("data/{year}_household/HOUSEHLD.DAT"),
          glue("data/{year}_household.sas")
        )
      )
      write_parquet(df, glue("data/{year}_household.parquet"))
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
          glue("data/{year}personx/PERSONSX.DAT"),
          glue("data/{year}_personsx.sas")
        )
      )
      write_parquet(df, glue("data/{year}_personx.parquet"))
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
          glue("data/{year}personx/HEALTHIN.DAT"),
          glue("data/{year}_HEALTHIN.sas")
        )
      )
      write_parquet(df, glue("data/{year}_healthin.parquet"))
    }
  )
)



df1970 <- read.SAScii("data/1970_household/HOUSEHLD.DAT", "data/1970_household.sas", skip.decimal.division = TRUE)
