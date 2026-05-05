#' @export
theme_raven <- function(
    dot_type = "standard",
    background_type = "vintage",
    font_theme = "fancy",
    color_theme = "vampire",
    major_grid = TRUE,
    minor_grid = TRUE
) {

  bg <- get_raven_background(background_type)
  fonts <- get_raven_fonts(font_theme)
  colors <- get_raven_palette(color_theme)

  major_grid1 <- if (major_grid) {
    ggplot2::element_line(color = bg$grid)
  } else {
    ggplot2::element_blank()
  }

  minor_grid1 <- if (minor_grid) {
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

      panel.grid.major = major_grid1,

      panel.grid.minor = minor_grid1,

      plot.title = ggplot2::element_text(
        family = fonts$title,
        size = 30,
        face = "bold",
        color = colors[1]
      ),

      plot.subtitle = ggplot2::element_text(
        family = fonts$subtitle,
        size = 20,
        color = colors[2]
      ),

      axis.title = ggplot2::element_text(
        family = fonts$axis,
        size = 20,
        color = colors[1]
      ),

      axis.text = ggplot2::element_text(
        family = fonts$labels,
        color = colors[2],
        size = 15
      ),

      legend.title = ggplot2::element_text(
        family = fonts$axis,
        color = colors[1],
        size = 20
      ),

      legend.text = ggplot2::element_text(
        family = fonts$labels,
        size = 15,
        color = colors[2]
      )
    )
}
