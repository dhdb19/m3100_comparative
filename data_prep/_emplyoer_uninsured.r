# ---- ingest data ----
emp_un <- read_csv(
  "data/_employer_uninsured/employer_uninsured.csv",
  col_types = cols(
    year = col_double(),
    employer = col_double(),
    uninsured = col_double(),
    employer_se = col_double(),
    uninsured_se = col_double()
  )
)

emp_un <- emp_un %>%
  mutate(
    year = ymd(paste0(year, "-12-31")),
  ) # %>%
# dplyr::filter(!`year` == ymd("2020-12-31"))




emp_un_plot <- emp_un %>%
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
  geom_point(
    aes(
      x = year,
      y = employer * 100,
      color = "Employer-based insurance"
    ),
    shape = 4,
    size = 1,
  ) +
  geom_point(
    aes(
      x = year,
      y = uninsured * 100,
      color = "Uninsured"
    ),
    shape = 5,
    size = 1,
  ) +
  geom_smooth(
    aes(
      x = year,
      y = employer * 100,
      color = "Employer-based insurance"
    ),
    method = "lm",
    linewidth = 0.4,
  ) +
  geom_smooth(
    aes(
      x = year,
      y = uninsured * 100,
      color = "Uninsured"
    ),
    method = "lm",
    linewidth = 0.4,
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
  # geom_text_repel(
  #   aes(
  #     x = year,
  #     y = uninsured * 100,
  #     label = uninsured * 100,
  #   ),
  #   direction = "y",
  #   size = 2,
  #   min.segment.length = 0,
  #   segment.linetype = "dashed",
  #   segment.size = 0.1,
  #   # nudge_y = 2,
  #   xlim = c(-Inf, Inf),
  # ) +
  # geom_text_repel(
  #   aes(
  #     x = year,
  #     y = employer * 100,
  #     label = employer * 100,
  #   ),
  #   direction = "y",
  #   size = 2,
  #   min.segment.length = 0,
  #   segment.linetype = "dashed",
  #   segment.size = 0.1,
  #   # nudge_y = 10,
  #   xlim = c(-Inf, Inf),
  # ) +
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
      "Uninsured" = "#D81B60"
    ),
    limits = c(
      "Employer-based insurance",
      "Uninsured"
    ),
  ) +
  coord_cartesian(clip = "off") +
  dobbins_theme(
    legend.position = "inside",
    legend.frame = element_rect(
      linewidth = 1,
      color = "black",
      linetype = "solid",
    ),
    legend.position.inside = c(1, 0.45),
    legend.justification = "right",
    legend.background = element_rect(fill = "#f0f0f0", color = NULL),
  )
emp_un_plot



tikz("figures/fig4.tex", width = 6.3, height = 4, standAlone = FALSE)
emp_un_plot
dev.off()
