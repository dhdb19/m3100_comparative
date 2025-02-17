# ---- load data ----

nhe_2023_raw <- read_csv("data/_nhe/nhe_2023.csv", col_names = TRUE)
cpi <- read_csv2("data/_cpi/cpi.csv")
gdp_deflator <- read_csv("data/_cpi/gdp_deflator.csv")
gdp <- read_csv("data/_gdp/gdp.csv")

# ---- cpi data ----

gdp_long <- gdp %>%
  dplyr::filter(month(year) == 1) %>%
  mutate(
    gdp = gdp * 1000
  )



cpi_long <- cpi %>%
  rename(
    "year" = Year,
    "inflation_cpi" = Jan
  ) %>%
  mutate(
    year = ymd(paste0(year, "01-01")),
    cpi_deflator = inflation_cpi[which.max(year)] / inflation_cpi
  )

gdp_deflator_long <- gdp_deflator %>%
  dplyr::filter(
    month(observation_date) == 1
  ) %>%
  rename(
    "year" = observation_date,
    "inflation_gdp_def" = GDPDEF
  ) %>%
  mutate(
    gdp_deflator = inflation_gdp_def[which.max(year)] / inflation_gdp_def
  )


# ---- nhe data
nhe_2023_long <- nhe_2023_raw %>%
  mutate(
    across(
      everything(),
      ~ gsub("-", NA, .)
    )
  ) %>%
  t() %>%
  as.tibble() %>%
  row_to_names(row_number = 1) %>%
  clean_names() %>%
  mutate(
    across(
      everything(),
      parse_number
    ),
    year = ymd(paste0(expenditure_amount_millions, "01-01")),
  ) %>%
  select(
    !c(
      "expenditure_amount_millions"
    )
  )

nhe <- nhe_2023_long %>%
  left_join(
    cpi_long,
    by = c("year")
  ) %>%
  left_join(
    gdp_deflator_long,
    by = c("year")
  ) %>%
  left_join(
    gdp_long,
    by = c("year")
  ) %>%
  mutate(
    post_aca = case_when(year > ymd("2010-03-23") ~ 1, .default = 0),
    post_clinton = case_when(year > ymd("1994-09-26") & year < ymd("2010-03-23") ~ 1, .default = 0),
    post_medicaid = case_when(year < ymd("1994-09-26") ~ 1, .default = 0),
  )


# ---- regression ----
model_1 <- lm(
  (total_national_health_expenditures / population) ~
    year * post_aca * post_clinton,
  data = nhe
)


# ----data vis ----

nhe_plot_1 <- nhe %>%
  ggplot() +
  geom_vline(
    xintercept = as.Date("1960-01-01"),
    color = "grey",
  ) +
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
  geom_vline(
    xintercept = as.Date("1965-07-30"),
    lty = "dashed",
    color = "grey",
  ) +
  annotate(
    geom = "label",
    x = as.Date("1965-07-30"),
    y = 14.500,
    label = "Medicare and Medicaid \n signed into law",
    size = 2,
    label.padding = unit(0.5, "lines")
  ) +
  annotate(
    geom = "label",
    x = as.Date("1993-11-13"),
    y = 14.5,
    label = "Clinton healthcare \n reform effort",
    size = 2,
    label.padding = unit(0.5, "lines")
  ) +
  annotate(
    geom = "label",
    x = as.Date("2009-08-01"),
    y = 14.500,
    label = "Obama inaugurated -- \n ACA comes into force",
    size = 2,
    label.padding = unit(0.5, "lines")
  ) +
  geom_point(
    aes(
      y = ((total_national_health_expenditures * gdp_deflator) / population) / 1000,
      x = year,
      color = "2025 dollars"
    ),
    shape = 5,
  ) +
  geom_point(
    aes(
      y = (total_national_health_expenditures / population) / 1000,
      x = year,
      color = "Nominal"
    ),
    shape = 4
  ) +
  geom_line(
    aes(
      y = (total_national_health_expenditures / population) / 1000,
      x = year,
      color = "Nominal"
    ),
    linewidth = 0.1,
  ) +
  geom_line(
    aes(
      y = ((total_national_health_expenditures * gdp_deflator) / population) / 1000,
      x = year,
      color = "2025 dollars"
    ),
    linewidth = 0.2,
  ) +
  scale_y_continuous(
    limits = c(0, 17),
    name = "Expenditures p.c. (thousand USD)",
    breaks = waiver(),
    n.breaks = 10,
    expand = expansion(add = 0)
  ) +
  scale_x_date(
    name = NULL,
    date_breaks = "2 years",
    # date_minor_breaks = "1 month",
    date_labels = "'%y",
    expand = expansion(add = 5)
  ) +
  scale_color_manual(
    name = "Legend",
    values = c(
      "2025 dollars" = "#3c644b",
      "Nominal" = "#FFC107"
    ),
    limits = c(
      "2025 dollars",
      "Nominal"
    ),
  ) +
  coord_cartesian(clip = "off") +
  labs(
    title = "Total national health expenditures (per capita)"
  ) +
  dobbins_theme(
    legend.position = "inside",
    legend.frame = element_rect(
      linewidth = 1,
      color = "black",
      linetype = "solid",
    ),
    legend.position.inside = c(1, 0.15),
    legend.justification = "right",
    legend.background = element_rect(fill = "#f0f0f0", color = NULL),
  )

nhe_plot_1


# tikz("figures/fig8.tex", width = 6.3, height = 4, standAlone = FALSE)
# nhe_plot_1
# dev.off()


nhe_plot_2 <- nhe %>%
  ggplot() +
  geom_vline(
    xintercept = as.Date("1960-01-01"),
    color = "grey",
  ) +
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
  geom_vline(
    xintercept = as.Date("1965-07-30"),
    lty = "dashed",
    color = "grey",
  ) +
  annotate(
    geom = "label",
    x = as.Date("1965-07-30"),
    y = 22,
    label = "Medicare and Medicaid \n signed into law",
    size = 2,
    label.padding = unit(0.5, "lines")
  ) +
  annotate(
    geom = "label",
    x = as.Date("1993-11-13"),
    y = 22,
    label = "Clinton healthcare \n reform effort",
    size = 2,
    label.padding = unit(0.5, "lines")
  ) +
  annotate(
    geom = "label",
    x = as.Date("2009-08-01"),
    y = 22,
    label = "Obama inaugurated -- \n ACA comes into force",
    size = 2,
    label.padding = unit(0.5, "lines")
  ) +
  geom_point(
    aes(
      y = (total_national_health_expenditures / gdp) * 100,
      x = year,
    ),
    shape = 4,
    size = 1,
    color = "#3c644b",
  ) +
  geom_smooth(
    method = "lm",
    aes(
      y = (total_national_health_expenditures / gdp) * 100,
      x = year,
    ),
    color = "#3c644b",
    linewidth = 0.4
  ) +
  scale_y_continuous(
    limits = c(0, 30),
    name = "Percentage",
    breaks = waiver(),
    n.breaks = 10,
    expand = expansion(add = 0)
  ) +
  scale_x_date(
    name = "Year",
    date_breaks = "2 years",
    # date_minor_breaks = "1 month",
    date_labels = "'%y",
    expand = expansion(add = 5)
  ) +
  # scale_color_manual(
  #   name = "",
  #   values = c(
  #     "Inflation-adjusted \n (CPI, reference 2025)" = "#a4cbae",
  #     "Inflation-adjusted  \n (GDP deflator, reference 2025)" = "#3c644b",
  #     "Nominal" = "grey"
  #   ),
  #   limits = c(
  #     "Inflation-adjusted \n (CPI, reference 2025)",
  #     "Inflation-adjusted  \n (GDP deflator, reference 2025)",
  #     "Nominal"
  #   ),
  # ) +
  coord_cartesian(clip = "off") +
  labs(
    title = "Total national health expenditures (share of GDP)"
  ) +
  dobbins_theme(
    legend.position = "inside",
    legend.frame = element_rect(
      linewidth = 1,
      color = "black",
      linetype = "solid",
    ),
    legend.position.inside = c(1, 0.15),
    legend.justification = "right",
    legend.background = element_rect(fill = "#f0f0f0", color = NULL),
  )
nhe_plot_2

gdp_plot <- plot_grid(
  nhe_plot_1,
  nhe_plot_2,
  nrow = 2,
  ncol = 1,
  rel_heights = c(20, 20)
  # labels = c("a)", "b)"),
  # label_size = 8
)


tikz("figures/fig18.tex", width = 6.3, height = 4.5, standAlone = FALSE)
gdp_plot
dev.off()


# ---- private -----

nhe_plot_3 <- nhe %>%
  ggplot() +
  geom_vline(
    xintercept = as.Date("1960-01-01"),
    color = "grey",
  ) +
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
  geom_vline(
    xintercept = as.Date("1965-07-30"),
    lty = "dashed",
    color = "grey",
  ) +
  annotate(
    geom = "label",
    x = as.Date("1965-07-30"),
    y = 14500,
    label = "Medicare and Medicaid \n signed into law",
    size = 2,
    label.padding = unit(0.5, "lines")
  ) +
  annotate(
    geom = "label",
    x = as.Date("1993-11-13"),
    y = 4500,
    label = "Clinton healthcare \n reform effort",
    size = 2,
    label.padding = unit(0.5, "lines")
  ) +
  annotate(
    geom = "label",
    x = as.Date("2009-08-01"),
    y = 4500,
    label = "Obama inaugurated -- \n ACA comes into force",
    size = 2,
    label.padding = unit(0.5, "lines")
  ) +
  geom_point(
    aes(
      y = (private_health_insurance * gdp_deflator) / population,
      x = year,
      color = "2025 dollars"
    ),
    shape = 5,
  ) +
  geom_point(
    aes(
      y = private_health_insurance / population,
      x = year,
      color = "Nominal"
    ),
    shape = 4
  ) +
  geom_line(
    aes(
      y = private_health_insurance / population,
      x = year,
      color = "Nominal"
    ),
    linewidth = 0.1,
  ) +
  geom_line(
    aes(
      y = (private_health_insurance * gdp_deflator) / population,
      x = year,
      color = "2025 dollars"
    ),
    linewidth = 0.1,
  ) +
  scale_y_continuous(
    limits = c(0, 5000),
    name = "Expenditures p.c. (USD)",
    breaks = waiver(),
    n.breaks = 10,
    expand = expansion(add = 0)
  ) +
  scale_x_date(
    name = NULL,
    date_breaks = "2 years",
    # date_minor_breaks = "1 month",
    date_labels = "'%y",
    expand = expansion(add = 5)
  ) +
  scale_color_manual(
    name = "",
    values = c(
      "2025 dollars" = "#3c644b",
      "Nominal" = "#FFC107"
    ),
    limits = c(
      "2025 dollars",
      "Nominal"
    ),
  ) +
  coord_cartesian(clip = "off") +
  labs(
    title = "Private health insurance expenditures (per capita)"
  ) +
  dobbins_theme(
    legend.position = "inside",
    legend.frame = element_rect(
      linewidth = 1,
      color = "black",
      linetype = "solid",
    ),
    legend.position.inside = c(1, 0.15),
    legend.justification = "right",
    legend.background = element_rect(fill = "#f0f0f0", color = NULL),
  )
nhe_plot_3



nhe_plot_8 <- nhe %>%
  ggplot() +
  geom_vline(
    xintercept = as.Date("1960-01-01"),
    color = "grey",
  ) +
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
  geom_vline(
    xintercept = as.Date("1965-07-30"),
    lty = "dashed",
    color = "grey",
  ) +
  annotate(
    geom = "label",
    x = as.Date("1965-07-30"),
    y = 40,
    label = "Medicare and Medicaid \n signed into law",
    size = 2,
    label.padding = unit(0.5, "lines")
  ) +
  annotate(
    geom = "label",
    x = as.Date("1993-11-13"),
    y = 40,
    label = "Clinton healthcare \n reform effort",
    size = 2,
    label.padding = unit(0.5, "lines")
  ) +
  annotate(
    geom = "label",
    x = as.Date("2009-08-01"),
    y = 40,
    label = "Obama inaugurated -- \n ACA comes into force",
    size = 2,
    label.padding = unit(0.5, "lines")
  ) +
  geom_point(
    aes(
      y = (private_health_insurance / total_national_health_expenditures) * 100,
      x = year,
    ),
    shape = 4,
    size = 1,
    color = "#3c644b",
  ) +
  geom_smooth(
    method = "lm",
    aes(
      y = (private_health_insurance / total_national_health_expenditures) * 100,
      x = year,
    ),
    color = "#3c644b",
    linewidth = 0.2
  ) +
  scale_y_continuous(
    limits = c(0, 50),
    name = "Percentage",
    breaks = waiver(),
    n.breaks = 10,
    expand = expansion(add = 0)
  ) +
  scale_x_date(
    name = "Year",
    date_breaks = "2 years",
    # date_minor_breaks = "1 month",
    date_labels = "'%y",
    expand = expansion(add = 5)
  ) +
  # scale_color_manual(
  #   name = "",
  #   values = c(
  #     "Inflation-adjusted \n (CPI, reference 2025)" = "#a4cbae",
  #     "Inflation-adjusted  \n (GDP deflator, reference 2025)" = "#3c644b",
  #     "Nominal" = "grey"
  #   ),
  #   limits = c(
  #     "Inflation-adjusted \n (CPI, reference 2025)",
  #     "Inflation-adjusted  \n (GDP deflator, reference 2025)",
  #     "Nominal"
  #   ),
  # ) +
  coord_cartesian(clip = "off") +
  labs(
    title = "Private healthcare expenditure (share of total national health expenditure)"
  ) +
  dobbins_theme(
    legend.position = "inside",
    legend.frame = element_rect(
      linewidth = 1,
      color = "black",
      linetype = "solid",
    ),
    legend.position.inside = c(1, 0.15),
    legend.justification = "right",
    legend.background = element_rect(fill = "#f0f0f0", color = NULL),
  )
nhe_plot_8

ph_plot <- plot_grid(
  nhe_plot_3,
  nhe_plot_8,
  nrow = 2,
  ncol = 1,
  rel_heights = c(20, 20)
)

tikz("figures/fig17.tex", width = 6.3, height = 4.5, standAlone = FALSE)
ph_plot
dev.off()



# ---- oop ----

nhe_plot_4 <- nhe %>%
  ggplot() +
  geom_vline(
    xintercept = as.Date("1960-01-01"),
    color = "grey",
  ) +
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
  geom_vline(
    xintercept = as.Date("1965-07-30"),
    lty = "dashed",
    color = "grey",
  ) +
  annotate(
    geom = "label",
    x = as.Date("1965-07-30"),
    y = 2000,
    label = "Medicare and Medicaid \n signed into law",
    size = 2,
    label.padding = unit(0.5, "lines")
  ) +
  annotate(
    geom = "label",
    x = as.Date("1993-11-13"),
    y = 2000,
    label = "Clinton healthcare \n reform effort",
    size = 2,
    label.padding = unit(0.5, "lines")
  ) +
  annotate(
    geom = "label",
    x = as.Date("2009-08-01"),
    y = 2000,
    label = "Obama inaugurated -- \n ACA comes into force",
    size = 2,
    label.padding = unit(0.5, "lines")
  ) +
  geom_point(
    aes(
      y = (out_of_pocket * gdp_deflator) / population,
      x = year,
      color = "2025 dollars"
    ),
    shape = 5,
  ) +
  geom_point(
    aes(
      y = out_of_pocket / population,
      x = year,
      color = "Nominal"
    ),
    shape = 4
  ) +
  geom_line(
    aes(
      y = out_of_pocket / population,
      x = year,
      color = "Nominal"
    ),
    linewidth = 0.2,
  ) +
  geom_line(
    aes(
      y = (out_of_pocket * gdp_deflator) / population,
      x = year,
      color = "2025 dollars"
    ),
    linewidth = 0.2,
  ) +
  scale_y_continuous(
    limits = c(0, 2500),
    name = "Expenditures p.c. (USD)",
    breaks = waiver(),
    n.breaks = 10,
    expand = expansion(add = 0)
  ) +
  scale_x_date(
    name = NULL,
    date_breaks = "2 years",
    # date_minor_breaks = "1 month",
    date_labels = "'%y",
    expand = expansion(add = 5)
  ) +
  scale_color_manual(
    name = "",
    values = c(
      "2025 dollars" = "#3c644b",
      "Nominal" = "#FFC107"
    ),
    limits = c(
      "2025 dollars",
      "Nominal"
    ),
  ) +
  coord_cartesian(clip = "off") +
  labs(
    title = "Out-of-pocket expenditures (per capita)"
  ) +
  dobbins_theme(
    legend.position = "inside",
    legend.frame = element_rect(
      linewidth = 1,
      color = "black",
      linetype = "solid",
    ),
    legend.position.inside = c(1, 0.15),
    legend.justification = "right",
    legend.background = element_rect(fill = "#f0f0f0", color = NULL),
  )
nhe_plot_4




nhe_plot_7 <- nhe %>%
  ggplot() +
  geom_vline(
    xintercept = as.Date("1960-01-01"),
    color = "grey",
  ) +
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
  geom_vline(
    xintercept = as.Date("1965-07-30"),
    lty = "dashed",
    color = "grey",
  ) +
  annotate(
    geom = "label",
    x = as.Date("1965-07-30"),
    y = 15,
    label = "Medicare and Medicaid \n signed into law",
    size = 2,
    label.padding = unit(0.5, "lines")
  ) +
  annotate(
    geom = "label",
    x = as.Date("1993-11-13"),
    y = 40,
    label = "Clinton healthcare \n reform effort",
    size = 2,
    label.padding = unit(0.5, "lines")
  ) +
  annotate(
    geom = "label",
    x = as.Date("2009-08-01"),
    y = 40,
    label = "Obama inaugurated -- \n ACA comes into force",
    size = 2,
    label.padding = unit(0.5, "lines")
  ) +
  geom_point(
    aes(
      y = (out_of_pocket / total_national_health_expenditures) * 100,
      x = year,
    ),
    shape = 4,
    size = 1,
    color = "#3c644b",
  ) +
  geom_smooth(
    method = "lm",
    aes(
      y = (out_of_pocket / total_national_health_expenditures) * 100,
      x = year,
    ),
    color = "#3c644b",
    linewidth = 0.2
  ) +
  scale_y_continuous(
    limits = c(0, 50),
    name = "Percentage",
    breaks = waiver(),
    n.breaks = 10,
    expand = expansion(add = 0)
  ) +
  scale_x_date(
    name = "Year",
    date_breaks = "2 years",
    # date_minor_breaks = "1 month",
    date_labels = "'%y",
    expand = expansion(add = 5)
  ) +
  # scale_color_manual(
  #   name = "",
  #   values = c(
  #     "Inflation-adjusted \n (CPI, reference 2025)" = "#a4cbae",
  #     "Inflation-adjusted  \n (GDP deflator, reference 2025)" = "#3c644b",
  #     "Nominal" = "grey"
  #   ),
  #   limits = c(
  #     "Inflation-adjusted \n (CPI, reference 2025)",
  #     "Inflation-adjusted  \n (GDP deflator, reference 2025)",
  #     "Nominal"
  #   ),
  # ) +
  coord_cartesian(clip = "off") +
  labs(
    title = "Out-of-pocket expenditures (share of total national health expenditure)"
  ) +
  dobbins_theme(
    legend.position = "inside",
    legend.frame = element_rect(
      linewidth = 1,
      color = "black",
      linetype = "solid",
    ),
    legend.position.inside = c(1, 0.15),
    legend.justification = "right",
    legend.background = element_rect(fill = "#f0f0f0", color = NULL),
  )
nhe_plot_7



oop_plot <- plot_grid(
  nhe_plot_4,
  nhe_plot_7,
  nrow = 2,
  ncol = 1,
  rel_heights = c(20, 20)
)

tikz("figures/fig16.tex", width = 6.3, height = 4.5, standAlone = FALSE)
oop_plot
dev.off()

# ---- gov't ----

nhe_plot_5 <- nhe %>%
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
  # geom_vline(
  #   xintercept = as.Date("1965-07-30"),
  #   lty = "dashed",
  #   color = "grey",
  # ) +
  # annotate(
  #   geom = "label",
  #   x = as.Date("1965-07-30"),
  #   y = 2000,
  #   label = "Medicare and Medicaid \n signed into law",
  #   size = 2,
  #   label.padding = unit(0.5, "lines")
  # ) +
  annotate(
    geom = "label",
    x = as.Date("1993-11-13"),
    y = 3500,
    label = "Clinton healthcare \n reform effort",
    size = 2,
    label.padding = unit(0.5, "lines")
  ) +
  annotate(
    geom = "label",
    x = as.Date("2009-08-01"),
    y = 3500,
    label = "Obama inaugurated -- \n ACA comes into force",
    size = 2,
    label.padding = unit(0.5, "lines")
  ) +
  geom_point(
    aes(
      y = (medicare * gdp_deflator) / population,
      x = year,
      color = "Medicare (2023 dollars)"
    ),
    shape = 5,
  ) +
  geom_point(
    aes(
      y = (medicaid_title_xix * gdp_deflator) / population,
      x = year,
      color = "Medicaid (2023 dollars)"
    ),
    shape = 4
  ) +
  geom_line(
    aes(
      y = (medicare * gdp_deflator) / population,
      x = year,
      color = "Medicare (2023 dollars)"
    ),
    linewidth = 0.2,
  ) +
  geom_line(
    aes(
      y = (medicaid_title_xix * gdp_deflator) / population,
      x = year,
      color = "Medicaid (2023 dollars)"
    ),
    linewidth = 0.2,
  ) +
  scale_y_continuous(
    limits = c(0, 4000),
    name = "Expenditures p.c. (USD)",
    breaks = waiver(),
    n.breaks = 10,
    expand = expansion(add = 0)
  ) +
  scale_x_date(
    limits = c(as.Date("1965-07-30"), as.Date("2023-01-01")),
    name = NULL,
    date_breaks = "2 years",
    # date_minor_breaks = "1 month",
    date_labels = "'%y",
    expand = expansion(add = 5)
  ) +
  scale_color_manual(
    name = "",
    values = c(
      "Medicare (2023 dollars)" = "#3c644b",
      "Medicaid (2023 dollars)" = "#FFC107"
    ),
    limits = c(
      "Medicare (2023 dollars)",
      "Medicaid (2023 dollars)"
    ),
  ) +
  coord_cartesian(clip = "off") +
  labs(
    title = "Medicare and Medicaid expenditures (per capita)"
  ) +
  dobbins_theme(
    legend.position = "inside",
    legend.frame = element_rect(
      linewidth = 1,
      color = "black",
      linetype = "solid",
    ),
    legend.position.inside = c(1, 0.15),
    legend.justification = "right",
    legend.background = element_rect(fill = "#f0f0f0", color = NULL),
  )
nhe_plot_5





nhe_plot_9 <- nhe %>%
  ggplot() +
  geom_vline(
    xintercept = as.Date("1960-01-01"),
    color = "grey",
  ) +
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
  # geom_vline(
  #   xintercept = as.Date("1965-07-30"),
  #   lty = "dashed",
  #   color = "grey",
  # ) +
  # annotate(
  #   geom = "label",
  #   x = as.Date("1965-07-30"),
  #   y = 2000,
  #   label = "Medicare and Medicaid \n signed into law",
  #   size = 2,
  #   label.padding = unit(0.5, "lines")
  # ) +
  annotate(
    geom = "label",
    x = as.Date("1993-11-13"),
    y = 7,
    label = "Clinton healthcare \n reform effort",
    size = 2,
    label.padding = unit(0.5, "lines")
  ) +
  annotate(
    geom = "label",
    x = as.Date("2009-08-01"),
    y = 7,
    label = "Obama inaugurated -- \n ACA comes into force",
    size = 2,
    label.padding = unit(0.5, "lines")
  ) +
  geom_point(
    aes(
      y = (medicare / total_national_health_expenditures) * 100,
      x = year,
      color = "Medicare "
    ),
    shape = 5,
  ) +
  geom_point(
    aes(
      y = (medicaid_title_xix / total_national_health_expenditures) * 100,
      x = year,
      color = "Medicaid"
    ),
    shape = 4
  ) +
  geom_line(
    aes(
      y = (medicare / total_national_health_expenditures) * 100,
      x = year,
      color = "Medicare"
    ),
    linewidth = 0.2,
  ) +
  geom_line(
    aes(
      y = (medicaid_title_xix / total_national_health_expenditures) * 100,
      x = year,
      color = "Medicaid"
    ),
    linewidth = 0.2,
  ) +
  scale_y_continuous(
    limits = c(0, 25),
    name = "Percentage",
    breaks = waiver(),
    n.breaks = 10,
    expand = expansion(add = 0)
  ) +
  scale_x_date(
    limits = c(as.Date("1965-07-30"), as.Date("2023-01-01")),
    name = "Year",
    date_breaks = "2 years",
    # date_minor_breaks = "1 month",
    date_labels = "'%y",
    expand = expansion(add = 5)
  ) +
  scale_color_manual(
    name = "",
    values = c(
      "Medicare" = "#3c644b",
      "Medicaid" = "#FFC107"
    ),
    limits = c(
      "Medicare",
      "Medicaid"
    ),
  ) +
  coord_cartesian(clip = "off") +
  labs(
    title = "Medicare and Medicaid expenditures (share of total national health expenditures)"
  ) +
  dobbins_theme(
    legend.position = "inside",
    legend.frame = element_rect(
      linewidth = 1,
      color = "black",
      linetype = "solid",
    ),
    legend.position.inside = c(1, 0.15),
    legend.justification = "right",
    legend.background = element_rect(fill = "#f0f0f0", color = NULL),
  )
nhe_plot_9



# nhe_plot_xxx <- nhe %>%
#   ggplot() +
#   # geom_vline(
#   #   xintercept = as.Date("1960-01-01"),
#   #   color = "grey",
#   # ) +
#   geom_rect(
#     aes(
#       xmin = as.Date("1993-01-01"),
#       xmax = as.Date("1994-09-26"),
#       ymax = Inf,
#       ymin = -Inf,
#     ),
#     fill = "grey",
#     alpha = 0.01
#   ) +
#   geom_rect(
#     aes(
#       xmin = as.Date("2009-01-20"),
#       xmax = as.Date("2010-03-23"),
#       ymax = Inf,
#       ymin = -Inf,
#     ),
#     fill = "grey",
#     alpha = 0.01
#   ) +
#   geom_vline(
#     xintercept = as.Date("1965-07-30"),
#     lty = "solid",
#     color = "grey",
#   ) +
#   # annotate(
#   #   geom = "label",
#   #   x = as.Date("1965-07-30"),
#   #   y = 3500,
#   #   label = "Medicare and Medicaid \n signed into law",
#   #   size = 2,
#   #   label.padding = unit(0.5, "lines")
#   # ) +
#   annotate(
#     geom = "label",
#     x = as.Date("1993-11-13"),
#     y = 7,
#     label = "Clinton healthcare \n reform effort",
#     size = 2,
#     label.padding = unit(0.5, "lines")
#   ) +
#   annotate(
#     geom = "label",
#     x = as.Date("2009-08-01"),
#     y = 7,
#     label = "Obama inaugurated -- \n ACA comes into force",
#     size = 2,
#     label.padding = unit(0.5, "lines")
#   ) +
#   geom_line(
#     aes(
#       y = ((medicare + medicaid_title_xix) / total_national_health_expenditures) * 100,
#       x = year,
#       color = "Medicare + Medicaid"
#     ),
#     lty = "solid"
#   ) +
#   scale_y_continuous(
#     limits = c(0, 10),
#     name = "Expenditures p.c. (USD)",
#     breaks = waiver(),
#     n.breaks = 10,
#     expand = expansion(add = 0)
#   ) +
#   scale_x_date(
#     limits = c(as.Date("1965-07-30"), as.Date("2023-01-01")),
#     name = "Year",
#     date_breaks = "2 years",
#     # date_minor_breaks = "1 month",
#     date_labels = "'%y",
#     expand = expansion(add = 5)
#   ) +
#   scale_color_manual(
#     name = "",
#     values = c(
#       "Medicaid (federal + state, 2025 dollars)" = "#a4cbae",
#       "Medicare (2025 dollars)" = "#3c644b",
#       "Nominal" = "grey"
#     ),
#     limits = c(
#       "Medicare (2025 dollars)",
#       "Medicaid (federal + state, 2025 dollars)"
#     ),
#   ) +
#   coord_cartesian(clip = "off") +
#   labs(
#     title = "Medicare and Medicaid expenditures (per capita)"
#   ) +
#   theme(
#     panel.background = element_rect(fill = "#f0f0f0"),
#     axis.title = element_text(size = 8),
#     axis.text = element_text(size = 5),
#     legend.text = element_text(size = 6),
#     legend.position = "bottom",
#     plot.margin = margin(10, 45, 10, 10),
#     legend.key.spacing.x = unit(1.5, "cm"),
#     axis.line = element_line(color = "black", linewidth = 0.2),
#     plot.title = element_text(size = 8),
#   )
# nhe_plot_xxx

govt_plot <- plot_grid(
  nhe_plot_5,
  nhe_plot_9,
  nrow = 2,
  ncol = 1,
  rel_heights = c(20, 20)
)

tikz("figures/fig12.tex", width = 6.3, height = 4, standAlone = FALSE)
govt_plot
dev.off()

# ---- expend_states ----

nhe_plot_6 <- nhe %>%
  ggplot() +
  geom_vline(
    xintercept = as.Date("1960-01-01"),
    color = "grey",
  ) +
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
  # geom_vline(
  #   xintercept = as.Date("1965-07-30"),
  #   lty = "dashed",
  #   color = "grey",
  # ) +
  # annotate(
  #   geom = "label",
  #   x = as.Date("1965-07-30"),
  #   y = 2000,
  #   label = "Medicare and Medicaid \n signed into law",
  #   size = 2,
  #   label.padding = unit(0.5, "lines")
  # ) +
  annotate(
    geom = "label",
    x = as.Date("1993-11-13"),
    y = 1500,
    label = "Clinton healthcare \n reform effort",
    size = 2,
    label.padding = unit(0.5, "lines")
  ) +
  annotate(
    geom = "label",
    x = as.Date("2009-08-01"),
    y = 1500,
    label = "Obama inaugurated -- \n ACA comes into force",
    size = 2,
    label.padding = unit(0.5, "lines")
  ) +
  geom_point(
    aes(
      y = (state_and_local * gdp_deflator) / population,
      x = year,
      color = "State and local (2023 dollars)"
    ),
    shape = 5,
  ) +
  geom_point(
    aes(
      y = (federal * gdp_deflator) / population,
      x = year,
      color = "Federal (2023 dollars)"
    ),
    shape = 4
  ) +
  geom_line(
    aes(
      y = (state_and_local * gdp_deflator) / population,
      x = year,
      color = "State and local (2023 dollars)"
    ),
    linewidth = 0.2,
  ) +
  geom_line(
    aes(
      y = (federal * gdp_deflator) / population,
      x = year,
      color = "Federal (2023 dollars)"
    ),
    linewidth = 0.2,
  ) +
  scale_y_continuous(
    limits = c(0, 2000),
    name = "Expenditures p.c. (USD)",
    breaks = waiver(),
    n.breaks = 10,
    expand = expansion(add = 0)
  ) +
  scale_x_date(
    limits = c(as.Date("1965-07-30"), as.Date("2023-01-01")),
    name = "Year",
    date_breaks = "2 years",
    # date_minor_breaks = "1 month",
    date_labels = "'%y",
    expand = expansion(add = 5)
  ) +
  scale_color_manual(
    name = "",
    values = c(
      "State and local (2023 dollars)" = "#3c644b",
      "Federal (2023 dollars)" = "#FFC107"
    ),
    limits = c(
      "State and local (2023 dollars)",
      "Federal (2023 dollars)"
    ),
  ) +
  coord_cartesian(clip = "off") +
  labs(
    title = "Medicaid expenditures by state/local and federal level (per capita)"
  ) +
  dobbins_theme(
    legend.position = "inside",
    legend.frame = element_rect(
      linewidth = 1,
      color = "black",
      linetype = "solid",
    ),
    legend.position.inside = c(1, 0.15),
    legend.justification = "right",
    legend.background = element_rect(fill = "#f0f0f0", color = NULL),
  )
nhe_plot_6


tikz("figures/fig20.tex", width = 6.3, height = 2, standAlone = FALSE)
nhe_plot_6
dev.off()


# --- - compare everything ----

nhe_plot_10 <- nhe %>%
  ggplot() +
  # geom_vline(
  #   xintercept = as.Date("1960-01-01"),
  #   color = "grey",
  # ) +
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
  geom_vline(
    xintercept = as.Date("1965-07-30"),
    lty = "solid",
    color = "grey",
  ) +
  # annotate(
  #   geom = "label",
  #   x = as.Date("1965-07-30"),
  #   y = 3500,
  #   label = "Medicare and Medicaid \n signed into law",
  #   size = 2,
  #   label.padding = unit(0.5, "lines")
  # ) +
  annotate(
    geom = "label",
    x = as.Date("1993-11-13"),
    y = 8,
    label = "Clinton healthcare \n reform effort",
    size = 2,
    label.padding = unit(0.5, "lines")
  ) +
  annotate(
    geom = "label",
    x = as.Date("2009-08-01"),
    y = 8,
    label = "Obama inaugurated -- \n ACA comes into force",
    size = 2,
    label.padding = unit(0.5, "lines")
  ) +
  geom_point(
    aes(
      y = ((medicare + medicaid_title_xix) / gdp) * 100,
      x = year,
      color = "Medicare + Medicaid",
    ),
    shape = 4,
    size = 1
  ) +
  geom_point(
    aes(
      y = ((private_health_insurance) / gdp) * 100,
      x = year,
      color = "Private health insurance"
    ),
    shape = 5,
    size = 1
  ) +
  geom_point(
    aes(
      y = ((out_of_pocket) / gdp) * 100,
      x = year,
      color = "Out-of-pocket",
    ),
    shape = 6,
    size = 1
  ) +
  geom_smooth(
    method = "lm",
    aes(
      x = year,
      y = ((medicare + medicaid_title_xix) / gdp) * 100,
      color = "Medicare + Medicaid",
    ),
    linewidth = 0.5
  ) +
  geom_smooth(
    method = "lm",
    aes(
      x = year,
      y = ((private_health_insurance) / gdp) * 100,
      color = "Private health insurance"
    ),
    linewidth = 0.5
  ) +
  geom_smooth(
    method = "lm",
    aes(
      x = year,
      y = ((out_of_pocket) / gdp) * 100,
      color = "Out-of-pocket",
    ),
    linewidth = 0.5
  ) +
  scale_y_continuous(
    limits = c(0, 9),
    name = "Percentage",
    breaks = waiver(),
    n.breaks = 10,
    expand = expansion(add = 0)
  ) +
  scale_x_date(
    limits = c(as.Date("1965-07-30"), as.Date("2023-01-01")),
    name = "Year",
    date_breaks = "2 years",
    # date_minor_breaks = "1 month",
    date_labels = "'%y",
    expand = expansion(add = 5)
  ) +
  scale_color_manual(
    name = "",
    values = c(
      "Medicare + Medicaid" = "#FFC107",
      "Private health insurance" = "#004D40",
      "Out-of-pocket" = "#D81B60"
    ),
    limits = c(
      "Medicare + Medicaid",
      "Private health insurance",
      "Out-of-pocket"
    ),
  ) +
  coord_cartesian(clip = "off") +
  labs(
    title = "Health care expenditures by source (share of GDP)"
  ) +
  dobbins_theme(
    legend.position = "inside",
    legend.frame = element_rect(
      linewidth = 1,
      color = "black",
      linetype = "solid",
    ),
    legend.position.inside = c(1, 0.4),
    legend.justification = "right",
    legend.background = element_rect(fill = "#f0f0f0", color = NULL),
  )
nhe_plot_10


tikz("figures/fig19.tex", width = 6.3, height = 2.5, standAlone = FALSE)
nhe_plot_10
dev.off()








# ---- template ----

# emp_un %>%
#   ggplot() +
#   geom_rect(
#     aes(
#       xmin = as.Date("1993-01-01"),
#       xmax = as.Date("1994-09-26"),
#       ymax = Inf,
#       ymin = -Inf,
#     ),
#     fill = "grey",
#     alpha = 0.01
#   ) +
#   geom_rect(
#     aes(
#       xmin = as.Date("2009-01-20"),
#       xmax = as.Date("2010-03-23"),
#       ymax = Inf,
#       ymin = -Inf,
#     ),
#     fill = "grey",
#     alpha = 0.01
#   ) +
#   geom_vline(
#     xintercept = as.Date("2007-12-31"),
#     lty = "dashed",
#     color = "grey",
#   ) +
#   geom_hline(
#     yintercept = 0,
#     color = "grey"
#   ) +
#   geom_line(
#     aes(
#       x = year,
#       y = employer * 100,
#       color = "Employer-based insurance"
#     ),
#   ) +
#   geom_line(
#     aes(
#       x = year,
#       y = uninsured * 100,
#       color = "Uninsured"
#     ),
#   ) +
#   # geom_ribbon(
#   #   data = subset(emp_un, year > as.Date("2008-12-31")),
#   #   aes(
#   #     x = year,
#   #     y = employer,
#   #     ymin = (employer - employer_se) * 100,
#   #     ymax = (employer + employer_se) * 100,
#   #   ),
#   #   alpha = 0.2,
#   # ) +
#   geom_text_repel(
#     aes(
#       x = year,
#       y = uninsured * 100,
#       label = uninsured * 100,
#     ),
#     direction = "y",
#     size = 2,
#     min.segment.length = 0,
#     segment.linetype = "dashed",
#     segment.size = 0.1,
#     # nudge_y = 2,
#     xlim = c(-Inf, Inf),
#   ) +
#   geom_text_repel(
#     aes(
#       x = year,
#       y = employer * 100,
#       label = employer * 100,
#     ),
#     direction = "y",
#     size = 2,
#     min.segment.length = 0,
#     segment.linetype = "dashed",
#     segment.size = 0.1,
#     # nudge_y = 10,
#     xlim = c(-Inf, Inf),
#   ) +
#   scale_y_continuous(
#     limits = c(0, 80),
#     name = "Percentage",
#     breaks = waiver(),
#     n.breaks = 10,
#     expand = expansion(add = 0)
#   ) +
#   scale_x_date(
#     name = "Year",
#     date_breaks = "1 year",
#     # date_minor_breaks = "1 month",
#     date_labels = "'%y",
#     expand = expansion(add = 5)
#   ) +
#   annotate(
#     geom = "label",
#     x = as.Date("2007-12-31"),
#     y = 30,
#     label = "Change in data",
#     size = 2.75,
#     label.padding = unit(0.5, "lines"),
#     label.r = unit(0, "lines"),
#     label.size = 0,
#     color = "grey"
#   ) +
#   annotate(
#     geom = "label",
#     x = as.Date("1993-11-13"),
#     y = 40,
#     label = "Clinton healthcare \n reform effort",
#     size = 2.75,
#     label.padding = unit(0.5, "lines")
#   ) +
#   annotate(
#     geom = "label",
#     x = as.Date("2009-08-01"),
#     y = 40,
#     label = "Obama inaugurated -- \n ACA comes into force",
#     size = 2.75,
#     label.padding = unit(0.5, "lines")
#   ) +
#   scale_color_manual(
#     name = "",
#     values = c(
#       "Employer-based insurance" = "#3C714F",
#       "Uninsured" = "#9db0a2"
#     ),
#     limits = c(
#       "Employer-based insurance",
#       "Uninsured"
#     ),
#   ) +
#   coord_cartesian(clip = "off") +
#   theme(
#     panel.background = element_rect(fill = "#f0f0f0"),
#     axis.title = element_text(size = 8),
#     axis.text = element_text(size = 5),
#     legend.text = element_text(size = 6),
#     legend.position = "bottom",
#     plot.margin = margin(10, 10, 10, 10),
#     legend.key.spacing.x = unit(1.5, "cm")
#   )
