library("arrow")
library("tidyverse")
library("tikzDevice")

# ---- load data ----
ecec <- read_csv("data/ecec_2004_2024.csv")


ecec_1 <- ecec %>%
  select(-c("Label", "Series ID")) %>%
  mutate(
    Period = as.numeric(sub("Q0", "", Period)),
    date = make_date(year = Year, month = ((Period - 1) * 3 + 1), day = 1)
  ) %>%
  select(-c("Year", "Period"))
