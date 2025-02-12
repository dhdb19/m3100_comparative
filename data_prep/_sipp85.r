library("SAScii")


sipp85 <- read.SAScii("data/sipp85_t8_full.dat", "data_prep/sipp85_w8.sas", buffersize = 200, lrecl = 10760, intervals.to.print = 100)



cps2024 <- read.SAScii("data/cps_2024.dat", "data_prep/cps_2024.sas")


sipp85_parse <- parse.SAScii("data_prep/sipp85_w8.sas")

# write_csv(sipp85, "data/sipp85.csv")


# write_parquet(sipp85, "data/sipp85.parquet")

sipp85_parquet <- read_parquet("data/sipp85.parquet")

names(sipp85_parquet)
sipp85_parquet_1 <- sipp85_parquet %>%
  filter(SC1548 == 0)

sipp85_2 <- read_csv("data/sipp85.csv", lazy = should_read_lazy())

head(sipp85_parquet)

sipp85_readr <- haven::read_sas("data/sipp85_t8_full.dat", "data_prep/sipp85_w8.sas")


census_2008_2023 <- read_csv2("data/census_2008_2024.CSV", col_names = TRUE)

names(census_2008_2023)

problems(census_2008_2023)

census_2008_2023_1 <- census_2008_2023 %>%
  dplyr::filter(`1` == "United States") %>%
  gather(key = "1")



filter(census_2008_2023, X1 == !!"Employer-based")
