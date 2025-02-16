# ---- load data ----
aca_favor_raw <- read_csv("data/_kff/_kff_aca_favor.csv")


aca_favor <- aca_favor_raw %>%
  dplyr::filter(
    Subgroup == "Total",
    !Response == "Don't Know"
  ) %>%
  select(-c(Description, Subgroup, Variable)) %>%
  mutate(across(-Response, as.numeric)) %>%
  pivot_longer(cols = -Response, names_to = "date", values_to = "fav") %>%
  mutate(
    date = mdy(date),
  ) %>%
  collect()


aca_favor_fav <- aca_favor_raw %>%
  dplyr::filter(
    Subgroup == "Total",
    !Response == "Don't Know"
  ) %>%
  select(-c(Description, Subgroup, Variable)) %>%
  mutate(across(-Response, as.numeric)) %>%
  pivot_longer(cols = -Response, names_to = "date", values_to = "fav") %>%
  dplyr::filter(Response == "Favorable") %>%
  mutate(
    date = mdy(date)
  ) %>%
  collect()

aca_favor_net <- aca_favor_raw %>%
  dplyr::filter(
    Subgroup == "Total",
    !Response == "Don't Know"
  ) %>%
  select(-c(Description, Subgroup, Variable)) %>%
  mutate(across(-Response, as.numeric)) %>%
  pivot_longer(cols = -Response, names_to = "date", values_to = "fav") %>%
  dplyr::filter(Response == "Unfavorable") %>%
  mutate(
    date = mdy(date),
  ) %>%
  rename(
    unfav = fav
  ) %>%
  inner_join(
    aca_favor_fav,
    by = "date"
  ) %>%
  select(
    c(date, fav, unfav)
  ) %>%
  collect()



# ---- data viz ----
aca_favor_plot <- aca_favor_net %>%
  ggplot() +
  geom_hline(
    yintercept = 0,
    color = "grey"
  ) +
  geom_smooth(
    method = "lm",
    aes(
      x = date,
      y = fav,
      color = "Favorable"
    ),
  ) +
  geom_smooth(
    method = "lm",
    aes(
      x = date,
      y = unfav,
      color = "Unfavorable"
    ),
  ) +
  scale_y_continuous(
    limits = c(-20, 75),
    name = "Percentage",
    breaks = waiver(),
    n.breaks = 10,
    expand = expansion(add = 1)
  ) +
  scale_x_date(
    name = "Year",
    date_breaks = "1 year",
    # date_minor_breaks = "1 month",
    date_labels = "%Y",
    expand = expansion(add = 5)
  ) +
  geom_smooth(
    method = "lm",
    aes(
      x = date,
      y = (fav - unfav),
      color = "Net favorability"
    ),
  ) +
  geom_point(
    aes(
      x = date,
      y = (fav - unfav),
      color = "Net favorability"
    ),
    shape = 4,
    size = 1
  ) +
  geom_point(
    aes(
      x = date,
      y = fav,
      color = "Favorable"
    ),
    shape = 5,
    size = 1
  ) +
  geom_point(
    aes(
      x = date,
      y = unfav,
      color = "Unfavorable"
    ),
    shape = 6,
    size = 1
  ) +
  geom_vline(
    xintercept = as.Date("2017-01-20"),
    lty = "dashed",
    color = "grey"
  ) +
  scale_color_manual(
    name = "",
    values = c(
      "Favorable" = "#FFC107",
      "Net favorability" = "#004D40",
      "Unfavorable" = "#D81B60"
    ),
    limits = c(
      "Favorable",
      "Unfavorable",
      "Net favorability"
    ),
  ) +
  theme(
    panel.background = element_rect(fill = "#f0f0f0"),
    axis.title = element_text(size = 8),
    axis.text = element_text(size = 5),
    legend.text = element_text(size = 6),
    legend.position = "bottom",
    plot.margin = margin(10, 45, 0, 10),
    legend.key.spacing.x = unit(1.5, "cm"),
    axis.line = element_line(color = "black", linewidth = 0.2),
    plot.title = element_text(size = 8),
    legend.margin = margin(c(0, 0, 0, 0))
  )
aca_favor_plot



tikz("figures/fig1.tex", width = 6.3, height = 2.75, standAlone = FALSE, sanitize = TRUE)
aca_favor_plot
dev.off()
