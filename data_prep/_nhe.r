library("arrow")
library("tidyverse")
library("dplyr")

# ---- load data ----

nhe_2023 <- read_csv("data/nhe_2023.csv", col_names = TRUE)
