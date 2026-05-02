theme_raven <- function(
    dot_type = "standard",
    background_type = "vintage",
    font_theme = "fancy",
    color_theme = "vampire",
    grid = TRUE
) {

  bg <- get_raven_background(background_type)

  fonts <- get_raven_fonts(font_theme)

  colors <- get_raven_palette(color_theme)

  major_grid <- if (grid) {
    ggplot2::element_line(color = bg$grid)
  } else {
    ggplot2::element_blank()
  }

  ggplot2::theme_minimal() +

    ggplot2::theme(

      plot.background = ggplot2::element_rect(
        fill = bg$plot_bg,
        color = NA
      ),

      panel.background = ggplot2::element_rect(
        fill = bg$panel_bg,
        color = NA
      ),

      panel.grid.major = major_grid,

      panel.grid.minor = ggplot2::element_blank(),

      plot.title = ggplot2::element_text(
        family = fonts$title,
        size = 24,
        face = "bold",
        color = colors[1]
      ),

      plot.subtitle = ggplot2::element_text(
        family = fonts$subtitle,
        size = 14,
        color = colors[2]
      ),

      axis.title = ggplot2::element_text(
        family = fonts$axis,
        size = 20,
        color = colors[1]
      ),

      axis.text = ggplot2::element_text(
        family = fonts$labels,
        color = colors[2]
      ),

      legend.title = ggplot2::element_text(
        family = fonts$axis,
        color = colors[1]
      ),

      legend.text = ggplot2::element_text(
        family = fonts$labels,
        color = colors[2]
      )
    )
}
