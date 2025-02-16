# ---- load data ----
eci <- read_csv("data/_eci/eci_1982_2024.csv")


eci_1 <- eci %>%
  select(-c("Label", "Series ID")) %>%
  mutate(
    Period = as.numeric(sub("Q0", "", Period)),
    date = make_date(year = Year, month = ((Period - 1) * 3 + 1), day = 1)
  ) %>%
  select(-c("Year", "Period"))


eci_plot <- eci_1 %>%
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
eci_plot

tikz("figures/fig2.tex", width = 6.3, height = 3.15, standAlone = FALSE)
eci_plot
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

ecec_1993_2024 <- read_parquet("data/_ecec/ecec_1993_2024.parquet")


# ---- figure 3 ----
ecec_plot <- ecec_1993_2024 %>%
  ggplot() +
  geom_rect(
    aes(
      xmin = as.Date("1993-01-01"),
      xmax = as.Date("1994-09-26"),
      ymax = Inf,
      ymin = -Inf,
    ),
    fill = "grey",
    alpha = 0.01
  ) +
  geom_rect(
    aes(
      xmin = as.Date("2009-01-20"),
      xmax = as.Date("2010-03-23"),
      ymax = Inf,
      ymin = -Inf,
    ),
    fill = "grey",
    alpha = 0.01
  ) +
  geom_point(
    aes(
      x = date,
      y = Value,
    ),
    shape = 4,
    color = "#3c644b",
    size = 1
  ) +
  geom_smooth(
    method = "lm",
    aes(
      x = date,
      y = Value,
    ),
    linewidth = 0.3,
    color = "#3c644b"
  ) +
  scale_y_continuous(
    limits = c(0, 4.1),
    name = "ECEC (USD)",
    breaks = waiver(),
    n.breaks = 10,
    expand = expansion(add = 0)
  ) +
  scale_x_date(
    name = "Year",
    date_breaks = "1 year",
    # date_minor_breaks = "1 month",
    date_labels = "'%y",
    expand = expansion(add = 5)
  ) +
  # scale_color_manual(
  #   name = "",
  #   values = c(
  #     "ECEC" = "#3c644b"
  #   ),
  #   limits = c(
  #     "ECEC"
  #   ),
  # ) +
  annotate(
    geom = "label",
    x = as.Date("1996-12-26"),
    y = 2.5,
    label = "Clinton healthcare \n reform effort",
    size = 2.75,
    label.padding = unit(0.5, "lines")
  ) +
  annotate(
    geom = "label",
    x = as.Date("2009-08-01"),
    y = 1,
    label = "Obama inaugurated -- \n ACA comes into force",
    size = 2.75,
    label.padding = unit(0.5, "lines")
  ) +
  coord_cartesian(clip = "off") +
  theme(
    panel.background = element_rect(fill = "#f0f0f0"),
    axis.title = element_text(size = 8),
    axis.text = element_text(size = 5),
    legend.text = element_text(size = 6),
    legend.position = "bottom",
    plot.margin = margin(10, 45, 10, 10),
    legend.key.spacing.x = unit(1.5, "cm"),
    axis.line = element_line(color = "black", linewidth = 0.2),
    plot.title = element_text(size = 8),
  )
ecec_plot


tikz("figures/fig3.tex", width = 6.3, height = 2, standAlone = FALSE)
ecec_plot
dev.off()
