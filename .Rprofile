use_libraries <- function(...) {
    libs <- unlist(list(...))
    req <- unlist(lapply(libs, require, character.only = TRUE))
    need <- libs[req == FALSE]
    if (length(need) > 0) {
        install.packages(need)
        lapply(need, require, character.only = TRUE)
    }
    lapply(libs, library)
}

library("arrow")
library("tidyverse")
library("tikzDevice")
library("ggrepel")
library("glue")
library("haven")
library("SAScii")
library("janitor")
library("cowplot")
options(encoding = "windows-1252")


dobbins_theme <- function(...) {
    theme(
        panel.background = element_rect(fill = "#f0f0f0"),
        # plot
        plot.margin = margin(10, 20, 0, 10),
        plot.title = element_text(size = 8),
        # axis
        axis.title = element_text(size = 8),
        axis.text = element_text(size = 5),
        axis.line = element_line(color = "black", linewidth = 0.2),
        # legend
        legend.text = element_text(size = 6),
        legend.key.spacing.x = unit(1.5, "cm"),
        legend.title = element_blank(),
        legend.margin = margin(2, 5, 2, 2),
        legend.key.size = unit(0.5, "lines"),
        legend.key = element_rect(fill = NULL, color = "black", linewidth = 0.05),
        legend.key.spacing.y = unit(0.1, "lines"),
        ...
    )
}
