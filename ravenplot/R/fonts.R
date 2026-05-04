
  load_raven_fonts <- function() {

    if (!"Cinzel" %in% sysfonts::font_families()) {
      sysfonts::font_add_google("Cinzel", "Cinzel")
    }

    if (!"Cormorant Garamond" %in% sysfonts::font_families()) {
      sysfonts::font_add_google("Cormorant Garamond", "Cormorant Garamond")
    }

    if (!"Cormorant SC" %in% sysfonts::font_families()) {
      sysfonts::font_add_google("Cormorant SC", "Cormorant SC")
    }

    if (!"Sancreek" %in% sysfonts::font_families()) {
      sysfonts::font_add_google("Sancreek", "Sancreek")
    }

    showtext::showtext_auto()
  }

get_raven_fonts <- function(font_theme = "fancy") {

  fonts <- list(

    fancy = list(
      title = "Sancreek",
      subtitle = "Cinzel",
      axis = "Cinzel",
      labels = "Cormorant SC"
    ),

    elegant = list(
      title = "Cinzel",
      subtitle = "Cormorant SC",
      axis = "Cormorant SC",
      labels = "Cormorant Garamond"
    ),

    simple = list(
      title = "Cormorant SC",
      subtitle = "Cormorant SC",
      axis = "Cormorant SC",
      labels = "Cormorant Garamond"
    )
  )

  if (!font_theme %in% names(fonts)) {
    stop(
      paste0(
        "Invalid font_theme. Available options: ",
        paste(names(fonts), collapse = ", ")
      )
    )
  }

  fonts[[font_theme]]
}
