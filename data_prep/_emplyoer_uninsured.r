# ---- ingest data ----
emp_un <- read_csv("data/employer_uninsured.csv")

emp_un <- emp_un %>%
  mutate(
    year = ymd(paste0(year, "-12-31"))
  ) %>%
  collect()






tikz("figures/fig4.tex", width = 6.3, height = 4, standAlone = FALSE)
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
  geom_hline(
    yintercept = 0,
    color = "grey"
  ) +
  geom_line(
    aes(
      x = year,
      y = share_employer_hc * 100,
    ),
    color = "#3C714F"
  ) +
  geom_line(
    aes(
      x = year,
      y = share_uninsured * 100,
    ),
    color = "#3C714F"
  ) +
  geom_label_repel(
    aes(
      x = year,
      y = share_uninsured * 100,
      label = share_uninsured * 100,
    ),
    direction = "y",
    size = 2,
    min.segment.length = 0,
    segment.linetype = "dashed",
    segment.size = 0.1,
    nudge_y = 2,
    xlim = c(-Inf, Inf)
  ) +
  geom_label_repel(
    aes(
      x = year,
      y = share_employer_hc * 100,
      label = share_employer_hc * 100,
    ),
    direction = "y",
    size = 2,
    min.segment.length = 0,
    segment.linetype = "dashed",
    segment.size = 0.1,
    nudge_y = 10,
    xlim = c(-Inf, Inf)
  ) +
  scale_y_continuous(
    limits = c(0, 80),
    name = "Percentage",
    breaks = waiver(),
    n.breaks = 10,
    expand = expansion(add = 0)
  ) +
  scale_x_date(
    name = "Time",
    date_breaks = "1 year",
    # date_minor_breaks = "1 month",
    date_labels = "'%y",
    expand = expansion(add = 5)
  ) +
  scale_color_manual(
    name = "",
  ) +
  annotate(
    geom = "label",
    x = as.Date("1995-12-26"),
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
  coord_cartesian(clip = "off") +
  # annotate(
  #   geom = "rect",
  #   xmin = ecec_1993_2024$date - days(150),
  #   xmax = ecec_1993_2024$date + days(150),
  #   ymin = ecec_1993_2024$Value - 0.05,
  #   ymax = ecec_1993_2024$Value + 0.05,
  #   fill = "#ffffff",
  #   color = "black"
  # ) +
  theme(
    panel.background = element_rect(fill = "#f0f0f0"),
    axis.title = element_text(size = 8),
    axis.text = element_text(size = 5),
    legend.text = element_text(size = 6),
    legend.position = "bottom",
    plot.margin = margin(10, 10, 10, 10),
  )
dev.off()
