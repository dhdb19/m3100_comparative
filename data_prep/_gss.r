govhelp <- read_csv2("data/_gss/govhelp.csv")
govresp <- read_csv2("data/_gss/govresp.csv")
nathealth <- read_csv2("data/_gss/nathealth.csv")



# ---- data prep ----
govhelp_long2 <- govhelp %>%
  mutate(
    total_answered =
      strongly_more_5 +
        somewhat_more_4 +
        neutral_both_3 +
        somewhat_less_2 +
        strongly_less_1,
    average =
      ((strongly_more_5 * 5) +
        (somewhat_more_4 * 4) +
        (neutral_both_3 * 3) +
        (somewhat_less_2 * 2) +
        (strongly_less_1 * 1)) /
        total_answered,
    var =
      (
        (strongly_more_5 * (5 - average)**2) +
          (somewhat_more_4 * (4 - average)**2) +
          (neutral_both_3 * (3 - average)**2) +
          (somewhat_less_2 * (2 - average)**2) +
          (strongly_less_1 * (1 - average)**2)
      ) /
        (total_answered),
    se = sqrt(var / (total_answered - 1)),
    ci = qt(c(.975), df = (total_answered - 1)) * se,
    # ci2 = qt(c(0.025, .975), df = (total_answered - 1)) * (std_dev / sqrt(total_answered - 1))
  )




govresp_long <- govresp %>%
  mutate(
    total_answered =
      def_should_4 +
        prob_should_3 +
        prob_not_2 +
        def_not_1,
    average =
      (def_should_4 * 4 +
        prob_should_3 * 3 +
        prob_not_2 * 2 +
        def_not_1 * 1) /
        total_answered,
    var =
      ((def_should_4 * (4 - average)**2) +
        (prob_should_3 * (3 - average)**2) +
        (prob_not_2 * (2 - average)**2) +
        (def_not_1 * (1 - average)**2)
      ) /
        total_answered,
    se = sqrt(var / (total_answered - 1)),
    ci = qt(c(.975), df = (total_answered - 1)) * se,
  )


nathealth_long <- nathealth %>%
  mutate(
    total_answered =
      too_little_3 +
        about_right_2 +
        too_much_1,
    average =
      (too_little_3 * 3 +
        about_right_2 * 2 +
        too_much_1 * 1) /
        total_answered,
    var =
      (
        (too_little_3 * (3 - average)**2) +
          (about_right_2 * (2 - average)**2) +
          (too_much_1 * (1 - average)**2)
      ) /
        total_answered,
    se = sqrt(var / (total_answered - 1)),
    ci = qt(c(.975), df = (total_answered - 1)) * se,
  )


#  ---- data vis ----
# govhelp_plot_1 <- govhelp_long2 %>%
#   ggplot() +
#   geom_vline(
#     aes(
#       xintercept = as.Date("1993-01-01"),
#     ),
#     lty = "dashed",
#     alpha = 0.2
#   ) +
#   geom_vline(
#     aes(
#       xintercept = as.Date("1994-09-26")
#     ),
#     lty = "dashed",
#     alpha = 0.2
#   ) +
#   geom_vline(
#     aes(
#       xintercept = as.Date("2009-01-20")
#     ),
#     lty = "dashed",
#     alpha = 0.2
#   ) +
#   geom_vline(
#     aes(
#       xintercept = as.Date("2010-03-23")
#     ),
#     lty = "dashed",
#     alpha = 0.2
#   ) +
#   geom_line(
#     aes(
#       year,
#       average
#     ),
#     color = "#3C714F",
#   ) +
#   geom_ribbon(
#     aes(
#       x = year,
#       y = average,
#       ymin = average - ci,
#       ymax = average + ci,
#     ),
#     alpha = 0.2,
#     show.legend = FALSE
#   ) +
#   scale_y_continuous(
#     limits = c(0, 5),
#     name = "Agreement (1= less, 5=more)",
#     breaks = waiver(),
#     # n.breaks = 10,
#     expand = expansion(add = 0)
#   ) +
#   scale_x_date(
#     limits = c(as.Date("1975-01-01"), as.Date("2022-01-01")),
#     name = "Year",
#     date_breaks = "2 years",
#     # date_minor_breaks = "1 month",
#     date_labels = "'%y",
#     expand = expansion(add = 5)
#   ) +
#   annotate(
#     geom = "label",
#     x = as.Date("1993-11-13"),
#     y = 1.5,
#     label = "Clinton healthcare \n reform effort",
#     size = 2,
#     label.padding = unit(0.5, "lines")
#   ) +
#   annotate(
#     geom = "label",
#     x = as.Date("2009-08-01"),
#     y = 1.5,
#     label = "Obama inaugurated -- \n ACA comes into force",
#     size = 2,
#     label.padding = unit(0.5, "lines")
#   ) +
#   coord_cartesian(clip = "off") +
#   theme(
#     panel.background = element_rect(fill = "#f0f0f0"),
#     axis.title = element_text(size = 8),
#     axis.text = element_text(size = 5),
#     legend.text = element_text(size = 8),
#     legend.position = "bottom",
#     plot.margin = margin(10, 45, 10, 10),
#     legend.key.spacing.x = unit(1.5, "cm")
#   )
# govhelp_plot_1



govhelp_plot_2 <- govhelp_long2 %>%
  ggplot() +
  geom_vline(
    aes(
      xintercept = as.Date("1993-01-01"),
    ),
    lty = "dashed",
    alpha = 0.2
  ) +
  geom_vline(
    aes(
      xintercept = as.Date("1994-09-26")
    ),
    lty = "dashed",
    alpha = 0.2
  ) +
  geom_vline(
    aes(
      xintercept = as.Date("2009-01-20")
    ),
    lty = "dashed",
    alpha = 0.2
  ) +
  geom_vline(
    aes(
      xintercept = as.Date("2010-03-23")
    ),
    lty = "dashed",
    alpha = 0.2
  ) +
  geom_point(
    aes(
      year,
      average
    ),
  ) +
  geom_smooth(
    method = "lm",
    aes(
      x = year,
      y = average
    ),
    color = "#3C714F",
  ) +
  # geom_ribbon(
  #   aes(
  #     x = year,
  #     y = average,
  #     ymin = average - ci,
  #     ymax = average + ci,
  #   ),
  #   alpha = 0.2,
  #   show.legend = FALSE
  # ) +
  scale_y_continuous(
    limits = c(0, 5),
    name = "Likert scale \n (1= disagree, 5= agree)",
    breaks = waiver(),
    # n.breaks = 10,
    expand = expansion(add = 0)
  ) +
  scale_x_date(
    limits = c(as.Date("1975-01-01"), as.Date("2022-01-01")),
    name = "Year",
    date_breaks = "2 years",
    # date_minor_breaks = "1 month",
    date_labels = "'%y",
    expand = expansion(add = 5)
  ) +
  annotate(
    geom = "label",
    x = as.Date("1993-11-13"),
    y = 1.5,
    label = "Clinton healthcare \n reform effort",
    size = 2,
    label.padding = unit(0.5, "lines")
  ) +
  annotate(
    geom = "label",
    x = as.Date("2009-08-01"),
    y = 1.5,
    label = "Obama inaugurated -- \n ACA comes into force",
    size = 2,
    label.padding = unit(0.5, "lines")
  ) +
  coord_cartesian(clip = "off") +
  theme(
    panel.background = element_rect(fill = "#f0f0f0"),
    axis.title = element_text(size = 8),
    axis.text = element_text(size = 5),
    legend.text = element_text(size = 8),
    legend.position = "bottom",
    plot.margin = margin(10, 45, 10, 10),
    legend.key.spacing.x = unit(1.5, "cm"),
    axis.line = element_line(color = "black", linewidth = unit(0.2, "pt")),
  )
govhelp_plot_2


tikz("figures/fig13.tex", width = 6.3, height = 2, standAlone = FALSE)
govhelp_plot_2
dev.off()



govresp_plot_1 <- govresp_long %>%
  ggplot() +
  geom_vline(
    aes(
      xintercept = as.Date("1993-01-01"),
    ),
    lty = "dashed",
    alpha = 0.2
  ) +
  geom_vline(
    aes(
      xintercept = as.Date("1994-09-26")
    ),
    lty = "dashed",
    alpha = 0.2
  ) +
  geom_vline(
    aes(
      xintercept = as.Date("2009-01-20")
    ),
    lty = "dashed",
    alpha = 0.2
  ) +
  geom_vline(
    aes(
      xintercept = as.Date("2010-03-23")
    ),
    lty = "dashed",
    alpha = 0.2
  ) +
  geom_point(
    aes(
      year,
      average
    )
  ) +
  # geom_ribbon(
  #   aes(
  #     x = year,
  #     y = average,
  #     ymin = average - ci,
  #     ymax = average + ci,
  #   ),
  #   alpha = 0.2,
  #   show.legend = FALSE
  # ) +
  geom_smooth(
    method = "lm",
    aes(
      x = year,
      y = average
    ),
    color = "#3C714F",
  ) +
  scale_y_continuous(
    limits = c(0, 5),
    name = "Likert scale \n (1= def. disagree, 5= def. agree)",
    breaks = waiver(),
    # n.breaks = 10,
    expand = expansion(add = 0)
  ) +
  scale_x_date(
    limits = c(as.Date("1975-01-01"), as.Date("2022-01-01")),
    name = "Year",
    date_breaks = "2 years",
    # date_minor_breaks = "1 month",
    date_labels = "'%y",
    expand = expansion(add = 5)
  ) +
  annotate(
    geom = "label",
    x = as.Date("1993-11-13"),
    y = 1.5,
    label = "Clinton healthcare \n reform effort",
    size = 2,
    label.padding = unit(0.5, "lines")
  ) +
  annotate(
    geom = "label",
    x = as.Date("2009-08-01"),
    y = 1.5,
    label = "Obama inaugurated -- \n ACA comes into force",
    size = 2,
    label.padding = unit(0.5, "lines")
  ) +
  coord_cartesian(clip = "off") +
  theme(
    panel.background = element_rect(fill = "#f0f0f0"),
    axis.title = element_text(size = 8),
    axis.text = element_text(size = 5),
    legend.text = element_text(size = 8),
    legend.position = "bottom",
    plot.margin = margin(10, 45, 10, 10),
    legend.key.spacing.x = unit(1.5, "cm"),
    axis.line = element_line(color = "black", linewidth = unit(0.2, "pt")),
  )
govresp_plot_1

tikz("figures/fig14.tex", width = 6.3, height = 2, standAlone = FALSE)
govresp_plot_1
dev.off()



nathealth_plot_1 <- nathealth_long %>%
  ggplot() +
  geom_vline(
    aes(
      xintercept = as.Date("1993-01-01"),
    ),
    lty = "dashed",
    alpha = 0.2
  ) +
  geom_vline(
    aes(
      xintercept = as.Date("1994-09-26")
    ),
    lty = "dashed",
    alpha = 0.2
  ) +
  geom_vline(
    aes(
      xintercept = as.Date("2009-01-20")
    ),
    lty = "dashed",
    alpha = 0.2
  ) +
  geom_vline(
    aes(
      xintercept = as.Date("2010-03-23")
    ),
    lty = "dashed",
    alpha = 0.2
  ) +
  geom_point(
    aes(
      year,
      average
    )
  ) +
  # geom_ribbon(
  #   aes(
  #     x = year,
  #     y = average,
  #     ymin = average - ci,
  #     ymax = average + ci,
  #   ),
  #   alpha = 0.2,
  #   show.legend = FALSE
  # ) +
  geom_smooth(
    method = "lm",
    aes(
      x = year,
      y = average
    ),
    color = "#3C714F",
  ) +
  scale_y_continuous(
    limits = c(0, 3),
    name = "Likert scale \n (1= too much, 3=too little)",
    breaks = waiver(),
    # n.breaks = 10,
    expand = expansion(add = 0)
  ) +
  scale_x_date(
    limits = c(as.Date("1975-01-01"), as.Date("2022-01-01")),
    name = "Year",
    date_breaks = "2 years",
    # date_minor_breaks = "1 month",
    date_labels = "'%y",
    expand = expansion(add = 5)
  ) +
  annotate(
    geom = "label",
    x = as.Date("1993-11-13"),
    y = 1,
    label = "Clinton healthcare \n reform effort",
    size = 2,
    label.padding = unit(0.5, "lines")
  ) +
  annotate(
    geom = "label",
    x = as.Date("2009-08-01"),
    y = 1,
    label = "Obama inaugurated -- \n ACA comes into force",
    size = 2,
    label.padding = unit(0.5, "lines")
  ) +
  coord_cartesian(clip = "off") +
  theme(
    panel.background = element_rect(fill = "#f0f0f0"),
    axis.title = element_text(size = 8),
    axis.text = element_text(size = 5),
    legend.text = element_text(size = 8),
    legend.position = "bottom",
    plot.margin = margin(10, 45, 10, 10),
    legend.key.spacing.x = unit(1.5, "cm"),
    axis.line = element_line(color = "black", linewidth = unit(0.2, "pt")),
  )
nathealth_plot_1


tikz("figures/fig15.tex", width = 6.3, height = 2, standAlone = FALSE)
nathealth_plot_1
dev.off()








nathealth_test <- tibble(likert_score = c(rep(3, 907), rep(2, 473), rep(1, 67)))


nathealth_test %>%
  summarise(
    var = var(likert_score),
    sd = sd(likert_score),
    mean = mean(likert_score)
  )
