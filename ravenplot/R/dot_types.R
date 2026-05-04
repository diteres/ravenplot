get_raven_symbol <- function(dot_type = "c") {

  symbols <- list(
    rhombus = "\u25CA",
    sun = "\u2600",
    heart = "\u2665",
    circle = "\u25CF",
    square = "\u25A0",
    triangle = "\u25B2",
    diamond = "\u25C6"
  )

  if (!dot_type %in% names(symbols)) {
    stop(
      paste0(
        "Invalid dot_type. Available: ",
        paste(c("standard", names(symbols)), collapse = ", ")
      )
    )
  }

  symbols[[dot_type]]
}


geom_raven_point <- function(dot_type = "standard", size = 4, ...) {

  if (dot_type == "standard") {
    return(
      ggplot2::geom_point(
        size = size,
        ...
      )
    )
  }

  symbol <- get_raven_symbol(dot_type)

  ggplot2::geom_text(
    mapping = ggplot2::aes(label = symbol),
    size = size * 1.5,
    family = "serif",
    ...
  )
}
