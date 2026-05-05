p1 <- ggplot(mtcars, aes(wt, mpg, color = factor(cyl))) +
  geom_raven_point(dot_type = "heart", size = 4) +
  scale_color_manual(values = get_raven_palette("vampire")) +
  theme_raven(font_theme = "fancy") +
  theme(legend.position = "none")
  labs(title = "Fancy")

p2 <- p1 + theme_raven(font_theme = "elegant") + labs(title = "Elegant")
p3 <- p1 + theme_raven(font_theme = "simple") + labs(title = "Simple")
p4 <- p1 + theme_raven(font_theme = "standard") + labs(title = "Standard")

library(patchwork)
(p1 | p2) / (p3 | p4)


plot_palette <- function(palette_name) {

  colors <- get_raven_palette(palette_name)

  df <- data.frame(
    x = seq_along(colors),
    y = 1,
    col = colors
  )

  ggplot(df, aes(x, y, fill = col)) +
    geom_tile() +
    scale_fill_identity() +
    labs(
      title = paste("Palette:", palette_name)
    ) +
    theme_void() +
    theme(
      plot.title = element_text(hjust = 0.5)
    )
}
plot_palette("vampire")/ plot_palette("chocolate")/plot_palette("lotus")/plot_palette("tealish")
