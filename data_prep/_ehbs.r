library("cowplot")

# ---- load data ----
ehbs_single_premium <- read_csv("data/_ehbs/_ehbs_single_premium.csv")
ehbs_single_contrib <- read_csv("data/_ehbs/_ehbs_single_contrib.csv")
ehbs_family_premium <- read_csv("data/_ehbs/_ehbs_family_premium.csv")
ehbs_family_contrib <- read_csv("data/_ehbs/_ehbs_family_contrib.csv")


# ---- clean up data ----
ehbs_single_premium_1 <- ehbs_single_premium %>%
  select(-Graph) %>%
  rename(
    "year" = Year,
    "est" = Estimate,
    "std_err" = `Standard Error`
  ) %>%
  mutate(
    year = ymd(paste0(year, "-12-31")),
    fam_stat = "Single",
    premium_contrib = "premium"
  )


ehbs_single_contrib_1 <- ehbs_single_contrib %>%
  select(-Graph) %>%
  rename(
    "year" = Year,
    "est" = Estimate,
    "std_err" = `Standard Error`
  ) %>%
  mutate(
    year = ymd(paste0(year, "-12-31")),
    fam_stat = "Single",
    premium_contrib = "contrib"
  )

ehbs_family_premium_1 <- ehbs_family_premium %>%
  select(-Graph) %>%
  rename(
    "year" = Year,
    "est" = Estimate,
    "std_err" = `Standard Error`
  ) %>%
  mutate(
    year = ymd(paste0(year, "-12-31")),
    fam_stat = "Family",
    premium_contrib = "premium"
  )


ehbs_family_contrib_1 <- ehbs_family_contrib %>%
  select(-Graph) %>%
  rename(
    "year" = Year,
    "est" = Estimate,
    "std_err" = `Standard Error`
  ) %>%
  mutate(
    year = ymd(paste0(year, "-12-31")),
    fam_stat = "Family",
    premium_contrib = "contrib"
  )


ehbs_single <- ehbs_single_contrib_1 %>%
  left_join(
    ehbs_single_premium_1,
    by = c("year", "fam_stat")
  ) %>%
  select(
    -c("premium_contrib.x", "premium_contrib.y")
  ) %>%
  rename(
    "est_contrib" = est.x,
    "est_prem" = est.y,
    "std_err_contrib" = std_err.x,
    "std_err_prem" = std_err.y,
  ) %>%
  mutate(
    share = est_contrib / est_prem,
  )

ehbs_family <- ehbs_family_contrib_1 %>%
  left_join(
    ehbs_family_premium_1,
    by = c("year", "fam_stat")
  ) %>%
  select(
    -c("premium_contrib.x", "premium_contrib.y")
  ) %>%
  rename(
    "est_contrib" = est.x,
    "est_prem" = est.y,
    "std_err_contrib" = std_err.x,
    "std_err_prem" = std_err.y,
  ) %>%
  mutate(
    share = est_contrib / est_prem,
  )

ehbs_share <- bind_rows(ehbs_single, ehbs_family)



ehbs <- bind_rows(ehbs_single_premium_1, ehbs_single_contrib_1, ehbs_family_premium_1, ehbs_family_contrib_1)



# ---- share plot ----

ehbs_share_plot <- ehbs_share %>%
  ggplot() +
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
      x = year,
      y = share * 100,
    ),
    shape = 4,
    color = "#3C714F"
  ) +
  geom_smooth(
    aes(
      x = year,
      y = share * 100,
    ),
    color = "#3C714F",
    method = "lm",
    linewidth = 0.3,
  ) +
  # geom_line(
  #   aes(
  #     x = year,
  #     y = est_contrib,
  #   ),
  #   color = "#9abfa7"
  # ) +
  # geom_ribbon(
  #   aes(
  #     x = year,
  #     y = est,
  #     ymin = est - std_err,
  #     ymax = est + std_err,
  #     # color = "grey"
  #   ),
  #   alpha = 0.2,
  #   show.legend = FALSE,
  # ) +
  # geom_text_repel(
  #   aes(
  #     x = year,
  #     y = share * 100,
  #     label = format((share * 100), digits = 1),
  #   ),
  #   direction = "y",
  #   size = 2,
  #   min.segment.length = 0,
  #   segment.linetype = "dashed",
  #   segment.size = 0.1,
  #   # nudge_y = 0.5,
  #   xlim = c(-Inf, Inf)
  # ) +
  # # scale_y_continuous(
  # #   limits = c(0, 10000),
  # #   name = "Cost (USD)",
  # #   breaks = waiver(),
  # #   # n.breaks = 1000,
  # #   expand = expansion(add = 0)
  # # ) +
  scale_x_date(
    name = NULL,
    date_breaks = "2 years",
    # date_minor_breaks = "1 month",
    date_labels = "'%y",
    expand = expansion(add = 5)
  ) +
  scale_y_continuous(
    limits = c(0, NA)
  ) +
  scale_color_manual(
    name = "",
  ) +
  facet_grid(
    cols = vars(fam_stat),
    scales = "free_y",
    labeller = labeller(fam_stat = c("Single", "Family"))
  ) +
  coord_cartesian(clip = "off") +
  labs(
    y = "Percentage",
    title = "Employee contribution to total healthcare premium (share)"
  ) +
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
ehbs_share_plot


# ---- plot absolute contrib----

ehbs_abs_contrib_plot <- ehbs_share %>%
  ggplot() +
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
  geom_pointrange(
    aes(
      x = year,
      y = est_contrib / 1000,
      ymin = (est_contrib - std_err_contrib) / 1000,
      ymax = (est_contrib + std_err_contrib) / 1000,
    ),
    color = "#3C714F",
    size = 0.1,
  ) +
  # geom_point(
  #   aes(
  #     x = year,
  #     y = est_contrib / 1000,
  #   ),
  #   shape = 3,
  #   color = "#3C714F"
  # ) +
  # geom_smooth(
  #   aes(
  #     x = year,
  #     y = est_contrib / 1000,
  #   ),
  #   method = "lm",
  #   shape = 3,
  #   color = "#3C714F",
  #   linewidth = 0.3,
  # ) +
  # geom_line(
  #   aes(
  #     x = year,
  #     y = est_contrib,
  #   ),
  #   color = "#9abfa7"
  # ) +
  # geom_ribbon(
  #   aes(
  #     x = year,
  #     y = est,
  #     ymin = est - std_err,
  #     ymax = est + std_err,
  #     # color = "grey"
  #   ),
  #   alpha = 0.2,
  #   show.legend = FALSE,
  # ) +
  # geom_text_repel(
  #   aes(
  #     x = year,
  #     y = est_contrib / 1000,
  #     label = round((est_contrib / 1000), digits = 1),
  #   ),
  #   direction = "y",
  #   size = 2,
  #   min.segment.length = 0,
  #   segment.linetype = "dashed",
  #   segment.size = 0.1,
  #   # nudge_y = 0.5,
  #   xlim = c(-Inf, Inf)
  # ) +
  # scale_y_continuous(
  #   limits = c(0, 10000),
  #   name = "Cost (USD)",
  #   breaks = waiver(),
  #   # n.breaks = 1000,
  #   expand = expansion(add = 0)
  # ) +
  scale_x_date(
    name = NULL,
    date_breaks = "2 years",
    # date_minor_breaks = "1 month",
    date_labels = "'%y",
    expand = expansion(add = 5)
  ) +
  scale_y_continuous(
    limits = c(0, NA)
  ) +
  scale_color_manual(
    name = "",
  ) +
  facet_grid(
    cols = vars(fam_stat),
    scales = "free_y",
    labeller = labeller(fam_stat = c("Single", "Family"))
  ) +
  coord_cartesian(clip = "off") +
  labs(
    y = "Cost (1000 USD)",
    title = "Employee contribution to total healthcare premium (absolute)"
  ) +
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
ehbs_abs_contrib_plot





# ---- plot absolute premium----

ehbs_abs_prem_plot <- ehbs_share %>%
  ggplot() +
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
  geom_pointrange(
    aes(
      x = year,
      y = est_prem / 1000,
      ymin = (est_prem - std_err_prem) / 1000,
      ymax = (est_prem + std_err_prem) / 1000,
    ),
    color = "#3C714F",
    size = 0.1,
  ) +
  # geom_point(
  #   aes(
  #     x = year,
  #     y = est_prem / 1000,
  #   ),
  #   shape = 3,
  #   color = "#3C714F"
  # ) +
  # geom_smooth(
  #   aes(
  #     x = year,
  #     y = est_prem / 1000,
  #   ),
  #   method = "lm",
  #   shape = 3,
  #   color = "#3C714F",
  #   linewidth = 0.3,
  # ) +
  # geom_line(
  #   aes(
  #     x = year,
  #     y = est_contrib,
  #   ),
  #   color = "#9abfa7"
  # ) +
  # geom_ribbon(
  #   aes(
  #     x = year,
  #     y = est,
  #     ymin = est - std_err,
  #     ymax = est + std_err,
  #     # color = "grey"
  #   ),
  #   alpha = 0.2,
  #   show.legend = FALSE,
  # ) +
  # geom_text_repel(
  #   aes(
  #     x = year,
  #     y = est_prem / 1000,
  #     label = round((est_prem / 1000), digits = 1),
  #   ),
  #   direction = "y",
  #   size = 2,
  #   min.segment.length = 0,
  #   segment.linetype = "dashed",
  #   segment.size = 0.1,
  #   # nudge_y = 0.5,
  #   xlim = c(-Inf, Inf)
  # ) +
  # scale_y_continuous(
  #   limits = c(0, 10000),
  #   name = "Cost (USD)",
  #   breaks = waiver(),
  #   # n.breaks = 1000,
  #   expand = expansion(add = 0)
  # ) +
  scale_x_date(
    name = "Year",
    date_breaks = "2 years",
    # date_minor_breaks = "1 month",
    date_labels = "'%y",
    expand = expansion(add = 5)
  ) +
  scale_y_continuous(
    limits = c(0, NA)
  ) +
  scale_color_manual(
    name = "",
  ) +
  facet_grid(
    cols = vars(fam_stat),
    scales = "free_y",
    labeller = labeller(fam_stat = c("Single", "Family"))
  ) +
  coord_cartesian(clip = "off") +
  labs(
    y = "Cost (1000 USD)",
    title = "Total healthcare premium (employer + employee contribution)"
  ) +
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
ehbs_abs_prem_plot

# ---- combine plot ----

ehbs_plot <- plot_grid(
  ehbs_abs_contrib_plot,
  ehbs_share_plot,
  ehbs_abs_prem_plot,
  nrow = 3,
  ncol = 1
)



tikz("figures/fig7.tex", width = 6.3, height = 6, standAlone = FALSE)
ehbs_plot
dev.off()



# ---- mega plot ----
tikz("figures/fig6.tex", width = 6.3, height = 6.3, standAlone = FALSE)
ehbs %>%
  ggplot() +
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
  geom_vline(
    xintercept = as.Date("1999-12-31"),
    color = "grey"
  ) +
  geom_line(
    aes(
      x = year,
      y = est,
    ),
    color = "#3C714F"
  ) +
  geom_ribbon(
    aes(
      x = year,
      y = est,
      ymin = est - std_err,
      ymax = est + std_err,
      # color = "grey"
    ),
    alpha = 0.2,
    show.legend = FALSE,
  ) +
  geom_text_repel(
    aes(
      x = year,
      y = est,
      label = est,
    ),
    direction = "y",
    size = 2,
    min.segment.length = 0,
    segment.linetype = "dashed",
    segment.size = 0.1,
    nudge_y = 0.5,
    xlim = c(-Inf, Inf)
  ) +
  # scale_y_continuous(
  #   limits = c(0, 10000),
  #   name = "Cost (USD)",
  #   breaks = waiver(),
  #   # n.breaks = 1000,
  #   expand = expansion(add = 0)
  # ) +
  scale_x_date(
    name = "Year",
    date_breaks = "1 year",
    # date_minor_breaks = "1 month",
    date_labels = "'%y",
    expand = expansion(add = 5)
  ) +
  scale_color_manual(
    name = "",
  ) +
  facet_grid(
    cols = vars(premium_contrib),
    rows = vars(fam_stat),
    scales = "free_y",
    labeller = labeller(premium_contrib = c("Employee contribution", "Premium"))
  ) +
  coord_cartesian(clip = "off") +
  labs(
    y = "Cost (USD)"
  ) +
  theme(
    panel.background = element_rect(fill = "#f0f0f0"),
    axis.title = element_text(size = 8),
    axis.text = element_text(size = 5),
    legend.text = element_text(size = 6),
    legend.position = "bottom",
    plot.margin = margin(10, 10, 10, 10),
  )
dev.off()




# ---- plots ----
tikz("figures/fig5.tex", width = 6.3, height = 4, standAlone = FALSE)
ehbs_single_premium_1 %>%
  ggplot() +
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
  geom_vline(
    xintercept = as.Date("1999-12-31"),
    color = "grey"
  ) +
  geom_line(
    aes(
      x = year,
      y = est,
    ),
    color = "#3C714F"
  ) +
  geom_ribbon(
    aes(
      x = year,
      y = est,
      ymin = est - std_err,
      ymax = est + std_err,
      # color = "grey"
    ),
    alpha = 0.2,
    show.legend = FALSE,
  ) +
  geom_text_repel(
    aes(
      x = year,
      y = est,
      label = est,
    ),
    direction = "y",
    size = 2,
    min.segment.length = 0,
    segment.linetype = "dashed",
    segment.size = 0.1,
    nudge_y = 0.5,
    xlim = c(-Inf, Inf)
  ) +
  scale_y_continuous(
    limits = c(0, 10000),
    name = "Cost (USD)",
    breaks = waiver(),
    # n.breaks = 1000,
    expand = expansion(add = 0)
  ) +
  scale_x_date(
    name = "Year",
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
    x = as.Date("2009-08-01"),
    y = 7500,
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
    plot.margin = margin(10, 10, 10, 10),
  )
dev.off()
