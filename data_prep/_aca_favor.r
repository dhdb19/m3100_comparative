library("tidyverse")
library("duckdb")
library("duckplyr")
library("arrow")
library("gt")
library("modelsummary")

# ---- load data ----
aca_favor_raw <- read_csv("data/_kff_aca_favor.csv")


aca_favor <- aca_favor_raw %>%
  filter(
    Subgroup == "Total",
    !Response == "Don't Know"
  ) %>%
  select(-c(Description, Subgroup, Variable)) %>%
  mutate(across(-Response, as.numeric)) %>%
  # rename_with(~ as.character(.), -c("Variable", "Subgroup", "Response", "Description")) %>%
  pivot_longer(cols = -Response, names_to = "date", values_to = "fav") %>%
  mutate(
    date = mdy(date),
  ) %>%
  collect()


aca_plot <- aca_favor %>%
  ggplot() +
  geom_line(
    aes(
      x = date,
      y = fav,
      color = Response
    )
  ) +
  scale_y_continuous(
    limits = c(0, 100)
  )


ggsave(filename = "_aca_fav.pdf", plot = aca_plot, path = "figures/", width = 16, height = 7, units = "cm")
