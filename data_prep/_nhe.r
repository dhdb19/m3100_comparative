# ---- load data ----

nhe_2023_raw <- read_csv("data/_nhe/nhe_2023.csv", col_names = TRUE)
cpi <- read_csv2("data/_cpi/cpi.csv")
gdp_deflator <- read_csv("data/_cpi/gdp_deflator.csv")

# ---- cpi data ----
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
    y = 5000,
    label = "Medicare and Medicaid \n signed into law",
    size = 2,
    label.padding = unit(0.5, "lines")
  ) +
  annotate(
    geom = "label",
    x = as.Date("1993-11-13"),
    y = 5000,
    label = "Clinton healthcare \n reform effort",
    size = 2,
    label.padding = unit(0.5, "lines")
  ) +
  annotate(
    geom = "label",
    x = as.Date("2009-08-01"),
    y = 5000,
    label = "Obama inaugurated -- \n ACA comes into force",
    size = 2,
    label.padding = unit(0.5, "lines")
  ) +
  geom_line(
    aes(
      y = total_national_health_expenditures / 1000,
      x = year,
      color = "Nominal"
    ),
  ) +
  geom_line(
    aes(
      y = (total_national_health_expenditures * cpi_deflator) / 1000,
      x = year,
      color = "Inflation-adjusted (CPI)"
    ),
  ) +
  geom_line(
    aes(
      y = (total_national_health_expenditures * gdp_deflator) / 1000,
      x = year,
      color = "Inflation-adjusted (GDP deflator)"
    ),
  ) +
  scale_y_continuous(
    limits = c(0, 6000),
    name = "Health care expenditure (in Billion USD)",
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
  scale_color_manual(
    name = "",
    values = c(
      "Inflation-adjusted (CPI)" = "#3c644b",
      "Inflation-adjusted (GDP deflator)" = "#a4cbae",
      "Nominal" = "grey"
    ),
    limits = c(
      "Inflation-adjusted (CPI)",
      "Inflation-adjusted (GDP deflator)",
      "Nominal"
    ),
  ) +
  coord_cartesian(clip = "off") +
  theme(
    panel.background = element_rect(fill = "#f0f0f0"),
    axis.title = element_text(size = 8),
    axis.text = element_text(size = 5),
    legend.text = element_text(size = 8),
    legend.position = "bottom",
    plot.margin = margin(10, 45, 10, 10),
    legend.key.spacing.x = unit(1.5, "cm")
  )
nhe_plot_1



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
    y = 14500,
    label = "Medicare and Medicaid \n signed into law",
    size = 2,
    label.padding = unit(0.5, "lines")
  ) +
  annotate(
    geom = "label",
    x = as.Date("1993-11-13"),
    y = 14500,
    label = "Clinton healthcare \n reform effort",
    size = 2,
    label.padding = unit(0.5, "lines")
  ) +
  annotate(
    geom = "label",
    x = as.Date("2009-08-01"),
    y = 14500,
    label = "Obama inaugurated -- \n ACA comes into force",
    size = 2,
    label.padding = unit(0.5, "lines")
  ) +
  geom_line(
    aes(
      y = total_national_health_expenditures / population,
      x = year,
      color = "Nominal"
    ),
    lty = "dotted"
  ) +
  geom_line(
    aes(
      y = (total_national_health_expenditures * cpi_deflator) / population,
      x = year,
      color = "Inflation-adjusted \n (CPI, reference 2025)"
    ),
    lty = "dashed"
  ) +
  geom_line(
    aes(
      y = (total_national_health_expenditures * gdp_deflator) / population,
      x = year,
      color = "Inflation-adjusted  \n (GDP deflator, reference 2025)"
    ),
  ) +
  scale_y_continuous(
    limits = c(0, 17000),
    name = "Health care expenditure p.c. (USD)",
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
  scale_color_manual(
    name = "",
    values = c(
      "Inflation-adjusted \n (CPI, reference 2025)" = "#a4cbae",
      "Inflation-adjusted  \n (GDP deflator, reference 2025)" = "#3c644b",
      "Nominal" = "grey"
    ),
    limits = c(
      "Inflation-adjusted \n (CPI, reference 2025)",
      "Inflation-adjusted  \n (GDP deflator, reference 2025)",
      "Nominal"
    ),
  ) +
  coord_cartesian(clip = "off") +
  theme(
    panel.background = element_rect(fill = "#f0f0f0"),
    axis.title = element_text(size = 8),
    axis.text = element_text(size = 5),
    legend.text = element_text(size = 8),
    legend.position = "bottom",
    plot.margin = margin(10, 45, 10, 10),
    legend.key.spacing.x = unit(1.5, "cm")
  )
nhe_plot_2



tikz("figures/fig8.tex", width = 6.3, height = 4, standAlone = FALSE)
nhe_plot_2
dev.off()






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
    y = 4500,
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
  geom_line(
    aes(
      y = private_health_insurance / population,
      x = year,
      color = "Nominal"
    ),
    lty = "dotted"
  ) +
  geom_line(
    aes(
      y = (private_health_insurance * cpi_deflator) / population,
      x = year,
      color = "Inflation-adjusted \n (CPI, reference 2025)"
    ),
    lty = "dashed"
  ) +
  geom_line(
    aes(
      y = (private_health_insurance * gdp_deflator) / population,
      x = year,
      color = "Inflation-adjusted  \n (GDP deflator, reference 2025)"
    ),
  ) +
  scale_y_continuous(
    limits = c(0, 5000),
    name = "Health care expenditure p.c. (USD)",
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
  scale_color_manual(
    name = "",
    values = c(
      "Inflation-adjusted \n (CPI, reference 2025)" = "#a4cbae",
      "Inflation-adjusted  \n (GDP deflator, reference 2025)" = "#3c644b",
      "Nominal" = "grey"
    ),
    limits = c(
      "Inflation-adjusted \n (CPI, reference 2025)",
      "Inflation-adjusted  \n (GDP deflator, reference 2025)",
      "Nominal"
    ),
  ) +
  coord_cartesian(clip = "off") +
  theme(
    panel.background = element_rect(fill = "#f0f0f0"),
    axis.title = element_text(size = 8),
    axis.text = element_text(size = 5),
    legend.text = element_text(size = 8),
    legend.position = "bottom",
    plot.margin = margin(10, 45, 10, 10),
    legend.key.spacing.x = unit(1.5, "cm")
  )
nhe_plot_3


tikz("figures/fig9.tex", width = 6.3, height = 4, standAlone = FALSE)
nhe_plot_3
dev.off()





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
  geom_line(
    aes(
      y = out_of_pocket / population,
      x = year,
      color = "Nominal"
    ),
    lty = "dotted"
  ) +
  geom_line(
    aes(
      y = (out_of_pocket * cpi_deflator) / population,
      x = year,
      color = "Inflation-adjusted \n (CPI, reference 2025)"
    ),
    lty = "dashed"
  ) +
  geom_line(
    aes(
      y = (out_of_pocket * gdp_deflator) / population,
      x = year,
      color = "Inflation-adjusted  \n (GDP deflator, reference 2025)"
    ),
  ) +
  scale_y_continuous(
    limits = c(0, 2500),
    name = "Health care expenditure p.c. (USD)",
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
  scale_color_manual(
    name = "",
    values = c(
      "Inflation-adjusted \n (CPI, reference 2025)" = "#a4cbae",
      "Inflation-adjusted  \n (GDP deflator, reference 2025)" = "#3c644b",
      "Nominal" = "grey"
    ),
    limits = c(
      "Inflation-adjusted \n (CPI, reference 2025)",
      "Inflation-adjusted  \n (GDP deflator, reference 2025)",
      "Nominal"
    ),
  ) +
  coord_cartesian(clip = "off") +
  theme(
    panel.background = element_rect(fill = "#f0f0f0"),
    axis.title = element_text(size = 8),
    axis.text = element_text(size = 5),
    legend.text = element_text(size = 8),
    legend.position = "bottom",
    plot.margin = margin(10, 45, 10, 10),
    legend.key.spacing.x = unit(1.5, "cm")
  )
nhe_plot_4

tikz("figures/fig10.tex", width = 6.3, height = 4, standAlone = FALSE)
nhe_plot_4
dev.off()



nhe_plot_5 <- nhe %>%
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
  geom_line(
    aes(
      y = (medicare * gdp_deflator) / population,
      x = year,
      color = "Medicare \n (GDP deflator, reference 2025)"
    ),
    lty = "solid"
  ) +
  geom_line(
    aes(
      y = (medicaid_title_xix * gdp_deflator) / population,
      x = year,
      color = "Medicaid \n (GDP deflator, reference 2025)"
    ),
    lty = "dashed"
  ) +
  scale_y_continuous(
    limits = c(0, 4000),
    name = "Health care expenditure p.c. (USD)",
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
      "Medicaid \n (GDP deflator, reference 2025)" = "#a4cbae",
      "Medicare \n (GDP deflator, reference 2025)" = "#3c644b",
      "Nominal" = "grey"
    ),
    limits = c(
      "Medicare \n (GDP deflator, reference 2025)",
      "Medicaid \n (GDP deflator, reference 2025)"
    ),
  ) +
  coord_cartesian(clip = "off") +
  theme(
    panel.background = element_rect(fill = "#f0f0f0"),
    axis.title = element_text(size = 8),
    axis.text = element_text(size = 5),
    legend.text = element_text(size = 8),
    legend.position = "bottom",
    plot.margin = margin(10, 45, 10, 10),
    legend.key.spacing.x = unit(1.5, "cm")
  )
nhe_plot_5


tikz("figures/fig11.tex", width = 6.3, height = 4, standAlone = FALSE)
nhe_plot_5
dev.off()



nhe_plot_6 <- nhe %>%
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
  geom_line(
    aes(
      y = (state_and_local * gdp_deflator) / population,
      x = year,
      color = "Medicaid (state and local) \n (GDP deflator, reference 2025)"
    ),
    lty = "solid"
  ) +
  geom_line(
    aes(
      y = (federal * gdp_deflator) / population,
      x = year,
      color = "Medicaid (federal) \n (GDP deflator, reference 2025)"
    ),
    lty = "dashed"
  ) +
  scale_y_continuous(
    limits = c(0, 2000),
    name = "Health care expenditure p.c. (USD)",
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
      "Medicaid (federal) \n (GDP deflator, reference 2025)" = "#a4cbae",
      "Medicaid (state and local) \n (GDP deflator, reference 2025)" = "#3c644b",
      "Nominal" = "grey"
    ),
    limits = c(
      "Medicaid (state and local) \n (GDP deflator, reference 2025)",
      "Medicaid (federal) \n (GDP deflator, reference 2025)"
    ),
  ) +
  coord_cartesian(clip = "off") +
  theme(
    panel.background = element_rect(fill = "#f0f0f0"),
    axis.title = element_text(size = 8),
    axis.text = element_text(size = 5),
    legend.text = element_text(size = 8),
    legend.position = "bottom",
    plot.margin = margin(10, 45, 10, 10),
    legend.key.spacing.x = unit(1.5, "cm")
  )
nhe_plot_6


tikz("figures/fig12.tex", width = 6.3, height = 4, standAlone = FALSE)
nhe_plot_6
dev.off()





# ---- template ----

emp_un %>%
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
  geom_vline(
    xintercept = as.Date("2007-12-31"),
    lty = "dashed",
    color = "grey",
  ) +
  geom_hline(
    yintercept = 0,
    color = "grey"
  ) +
  geom_line(
    aes(
      x = year,
      y = employer * 100,
      color = "Employer-based insurance"
    ),
  ) +
  geom_line(
    aes(
      x = year,
      y = uninsured * 100,
      color = "Uninsured"
    ),
  ) +
  # geom_ribbon(
  #   data = subset(emp_un, year > as.Date("2008-12-31")),
  #   aes(
  #     x = year,
  #     y = employer,
  #     ymin = (employer - employer_se) * 100,
  #     ymax = (employer + employer_se) * 100,
  #   ),
  #   alpha = 0.2,
  # ) +
  geom_text_repel(
    aes(
      x = year,
      y = uninsured * 100,
      label = uninsured * 100,
    ),
    direction = "y",
    size = 2,
    min.segment.length = 0,
    segment.linetype = "dashed",
    segment.size = 0.1,
    # nudge_y = 2,
    xlim = c(-Inf, Inf),
  ) +
  geom_text_repel(
    aes(
      x = year,
      y = employer * 100,
      label = employer * 100,
    ),
    direction = "y",
    size = 2,
    min.segment.length = 0,
    segment.linetype = "dashed",
    segment.size = 0.1,
    # nudge_y = 10,
    xlim = c(-Inf, Inf),
  ) +
  scale_y_continuous(
    limits = c(0, 80),
    name = "Percentage",
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
  annotate(
    geom = "label",
    x = as.Date("2007-12-31"),
    y = 30,
    label = "Change in data",
    size = 2.75,
    label.padding = unit(0.5, "lines"),
    label.r = unit(0, "lines"),
    label.size = 0,
    color = "grey"
  ) +
  annotate(
    geom = "label",
    x = as.Date("1993-11-13"),
    y = 40,
    label = "Clinton healthcare \n reform effort",
    size = 2.75,
    label.padding = unit(0.5, "lines")
  ) +
  annotate(
    geom = "label",
    x = as.Date("2009-08-01"),
    y = 40,
    label = "Obama inaugurated -- \n ACA comes into force",
    size = 2.75,
    label.padding = unit(0.5, "lines")
  ) +
  scale_color_manual(
    name = "",
    values = c(
      "Employer-based insurance" = "#3C714F",
      "Uninsured" = "#9db0a2"
    ),
    limits = c(
      "Employer-based insurance",
      "Uninsured"
    ),
  ) +
  coord_cartesian(clip = "off") +
  theme(
    panel.background = element_rect(fill = "#f0f0f0"),
    axis.title = element_text(size = 8),
    axis.text = element_text(size = 5),
    legend.text = element_text(size = 6),
    legend.position = "bottom",
    plot.margin = margin(10, 10, 10, 10),
    legend.key.spacing.x = unit(1.5, "cm")
  )
