library("tidyverse")
library("duckdb")
library("duckplyr")
library("arrow")
library("gt")
library("modelsummary")
library("tikzDevice")
library("devtools")
install.packages("fastmap")
devtools::load_all()
install_version("tikzDevice", version = "0.12", repos = "http://cran.us.r-project.org")

pkgbuild::check_build_tools(debug = TRUE)
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



options(tikzDefaultEngine = "luatex")
options(
  tikzSanitizeCharacters = c("%", "$", "}", "{", "^", "_", "#", "&", "~"),
  tikzReplacementCharacters = c(
    "\\%", "\\$", "\\}", "\\{", "\\^{}", "\\_{}",
    "\\#", "\\&", "\\char❵\\~"
  )
)
options(tikzMetricsDictionary = "C:/Users/jordi/R/tikzStringWidthCalc.tex")
tikz("figures/fig1.tex", width = 6.3, height = 3.15, standAlone = TRUE)
options(tikzMetricsDictionary = "C:/Users/jordi/R/tikzStringWidthCalc.tex")

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
    date_minor_breaks = "1 month",
    date_labels = "%m-%y",
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
    name = "Legend",
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
    axis.title = element_text(size = 10),
    axis.text = element_text(size = 6)
  )
dev.off()


ggsave(filename = "_aca_fav.pdf", plot = aca_plot, path = "figures/", width = 16, height = 8.5, units = "cm")
