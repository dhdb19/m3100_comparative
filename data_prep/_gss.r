govhelp <- read_csv2("data/_gss/govhelp.csv")
govresp <- read_csv2("data/_gss/govresp.csv")
nathealth <- read_csv2("data/_gss/nathealth.csv")



# ---- data prep ----

govhelp_long <- govhelp %>%
  mutate(
    average = ((strongly_more_5 * 5) + (somewhat_more_4 * 4) + (neutral_both_3 * 3) + (somewhat_less_2 * 2) + (strongly_less_1 * 1)) / (strongly_more_5 + somewhat_more_4 + neutral_both_3 + somewhat_less_2 + strongly_less_1),
    std_err =
    )
