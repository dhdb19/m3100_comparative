library("arrow")
library("tidyverse")
library("tikzDevice")

# ---- load data ----
eci <- read_csv("data/eci_1982_2024.csv")


eci_1 <- eci %>%
  select(-c("Label", "Series ID")) %>%
  mutate(
    Period = as.numeric(sub("Q0", "", Period)),
    date = make_date(year = Year, month = ((Period - 1) * 3 + 1), day = 1)
  ) %>%
  select(-c("Year", "Period"))


tikz("figures/fig2.tex", width = 6.3, height = 3.15, standAlone = FALSE)
eci_1 %>%
  ggplot() +
  geom_hline(
    yintercept = 0,
    color = "grey"
  ) +
  geom_line(
    aes(
      x = date,
      y = Value,
    ),
    color = "#3C714F"
  ) +
  scale_y_continuous(
    limits = c(-5, 25),
    name = "Percentage change",
    breaks = waiver(),
    n.breaks = 10,
    expand = expansion(add = 1)
  ) +
  scale_x_date(
    name = "Time",
    date_breaks = "10 years",
    # date_minor_breaks = "1 month",
    date_labels = "%Y",
    expand = expansion(add = 5)
  ) +
  scale_color_manual(
    name = "",
  ) +
  theme(
    panel.background = element_rect(fill = "#f0f0f0"),
    axis.title = element_text(size = 8),
    axis.text = element_text(size = 5),
    legend.text = element_text(size = 6),
    legend.position = "bottom",
  )
dev.off()



# ---- other eci ----
# ecec_1993_2001 <- read_csv2("data/ecec_1993_2001_annual.csv")
# ecec_2002_2003 <- read_csv2("data/ecec_2002_2003_q1.csv")
# ecec_2004_2024 <- read_csv2("data/ecec_2004_2024_q1.csv")


# d_ecec_1993_2001 <- ecec_1993_2001 %>%
#   mutate(
#     date = make_date(year = Year, month = 1, day = 1),
#     Value = `Cost of compensation (Cost per hour worked)`
#   ) %>%
#   select(c("date", "Value"))


# d_ecec_2002_2003 <- ecec_2002_2003 %>%
#   mutate(
#     Period = as.numeric(sub("Qtr", "", Period)),
#     date = make_date(year = Year, month = ((Period - 1) * 3 + 1), day = 1),
#     Value = `Cost of compensation (Cost per hour worked)`
#   ) %>%
#   select(c("date", "Value"))


# d_ecec_2004_2024 <- ecec_2004_2024 %>%
#   mutate(
#     Period = as.numeric(sub("Qtr", "", Period)),
#     date = make_date(year = Year, month = ((Period - 1) * 3 + 1), day = 1),
#     Value = `Estimate Value`
#   ) %>%
#   select(c("date", "Value"))

# ecec_1993_2024 <- bind_rows(
#   d_ecec_1993_2001, d_ecec_2002_2003, d_ecec_2004_2024
# )
# write_parquet(ecec_1993_2024, "data/ecec_1993_2024.parquet")

ecec_1993_2024 <- read_parquet("data/ecec_1993_2024.parquet")


# ---- figure 3 ----
tikz("figures/fig3.tex", width = 6.3, height = 3.15, standAlone = FALSE)
ecec_1993_2024 %>%
  ggplot() +
  geom_hline(
    yintercept = 0,
    color = "grey"
  ) +
  geom_line(
    aes(
      x = date,
      y = Value,
    ),
    color = "#3C714F"
  ) +
  geom_vline(
    xintercept = as.Date("2010-03-23"),
    lty = "dashed",
    color = "grey"
  ) +
  geom_vline(
    xintercept = as.Date("1993-01-01"),
    lty = "dashed",
    color = "grey"
  ) +
  geom_vline(
    xintercept = as.Date("1994-09-26"),
    lty = "dashed",
    color = "grey"
  ) +
  scale_y_continuous(
    limits = c(0, 5),
    name = "Cost (USD)",
    breaks = waiver(),
    n.breaks = 10,
    expand = expansion(add = 0)
  ) +
  scale_x_date(
    name = "Time",
    date_breaks = "1 year",
    # date_minor_breaks = "1 month",
    date_labels = "%y",
    expand = expansion(add = 5)
  ) +
  scale_color_manual(
    name = "",
  ) +
  annotate(
    geom = "label",
    x = as.Date("1995-12-26"),
    y = 3.5,
    label = "Clinton healthcare \n reform effort",
    size = 2.75,
    label.padding = unit(0.5, "lines")
  ) +
  annotate(
    geom = "label",
    x = as.Date("2010-03-23"),
    y = 3.5,
    label = "ACA comes \n into force",
    size = 2.75,
    label.padding = unit(0.5, "lines")
  ) +
  theme(
    panel.background = element_rect(fill = "#f0f0f0"),
    axis.title = element_text(size = 8),
    axis.text = element_text(size = 5),
    legend.text = element_text(size = 6),
    legend.position = "bottom",
  )
dev.off()
