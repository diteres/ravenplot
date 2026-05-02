library(ggplot2)
library(ravenplot)

ggplot(
  mtcars,
  aes(wt, mpg, color = factor(cyl))
) +

  geom_point(
    size = 4,
    shape = get_raven_shape("standard")
  ) +

  labs(
    title = "Raven Plot",
    subtitle = "Vintage Vampire Theme",
    x = "Weight",
    y = "Miles per Gallon"
  ) +

  scale_color_manual(
    values = get_raven_palette("gothic_witch")
  ) +

  theme(panel.grid = element_blank()) +

  theme_raven(
    background_type = "transparent",
    font_theme = "simple",
    color_theme = "gothic_witch",
    grid = TRUE
  )

