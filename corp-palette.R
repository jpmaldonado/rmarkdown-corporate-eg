# ./R/corp-palette.R
# Defines font and a hypothetical corporate palette, and makes them ggplot2 defaults

corp_font <- "Georgia"

theme_set(theme_minimal(base_family = corp_font))

corp_palette <- c("#464646", "#D04A02", "#EB8C00", "#FFB600", "#DB536A", "#E0301E")

update_geom_defaults("text",   list(family = corp_font, colour = corp_palette[1]))
scale_colour_discrete <- function(...) scale_colour_manual(..., values = corp_palette)
scale_fill_discrete <- function(...) scale_fill_manual(... , values = corp_palette)
