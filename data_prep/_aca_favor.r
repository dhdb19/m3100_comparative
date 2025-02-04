library("tidyverse")
library("devtools")
library("tikzDevice")
# install_version("tikzDevice", version = "0.12.3", repos = "https://ftp.fau.de/cran/")


# ---- load data ----
aca_favor_raw <- read_csv("data/_kff_aca_favor.csv")


aca_favor <- aca_favor_raw %>%
  filter(
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
  filter(
    Subgroup == "Total",
    !Response == "Don't Know"
  ) %>%
  select(-c(Description, Subgroup, Variable)) %>%
  mutate(across(-Response, as.numeric)) %>%
  pivot_longer(cols = -Response, names_to = "date", values_to = "fav") %>%
  filter(Response == "Favorable") %>%
  mutate(
    date = mdy(date)
  ) %>%
  collect()

aca_favor_net <- aca_favor_raw %>%
  filter(
    Subgroup == "Total",
    !Response == "Don't Know"
  ) %>%
  select(-c(Description, Subgroup, Variable)) %>%
  mutate(across(-Response, as.numeric)) %>%
  pivot_longer(cols = -Response, names_to = "date", values_to = "fav") %>%
  filter(Response == "Unfavorable") %>%
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




tikz("figures/fig1.tex", width = 6.3, height = 3.15, standAlone = FALSE)
aca_favor_net %>%
  ggplot() +
  geom_hline(
    yintercept = 0,
    color = "grey"
  ) +
  geom_line(
    aes(
      x = date,
      y = fav,
      color = "Favorable"
    ),
    lty = "dashed"
  ) +
  geom_line(
    aes(
      x = date,
      y = unfav,
      color = "Unfavorable"
    ),
    lty = "dotted",
  ) +
  scale_y_continuous(
    limits = c(-20, 75),
    name = "Percentage",
    breaks = waiver(),
    n.breaks = 10,
    expand = expansion(add = 1)
  ) +
  scale_x_date(
    name = "Time",
    date_breaks = "1 year",
    # date_minor_breaks = "1 month",
    date_labels = "%Y",
    expand = expansion(add = 5)
  ) +
  geom_line(
    aes(
      x = date,
      y = (fav - unfav),
      color = "Net favorability"
    ),
  ) +
  geom_vline(
    xintercept = as.Date("2017-01-20"),
    lty = "dashed",
    color = "grey"
  ) +
  scale_color_manual(
    name = "",
    values = c(
      "Favorable" = "#3C714F",
      "Unfavorable" = "#9db0a2",
      "Net favorability" = "#000000"
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
  )
dev.off()


ggsave(filename = "_aca_fav.pdf", plot = aca_plot, path = "figures/", width = 16, height = 8.5, units = "cm")
