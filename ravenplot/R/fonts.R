load_raven_fonts <- function() {

  sysfonts::font_add_google(
    "Cinzel",
    "Cinzel"
  )

  sysfonts::font_add_google(
    "Cormorant Garamond",
    "Cormorant Garamond"
  )

  sysfonts::font_add_google(
    "Cormorant SC",
    "Cormorant SC"
  )

  sysfonts::font_add_google(
    "Sancreek",
    "Sancreek"
  )

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

  fonts[[font_theme]]
}
