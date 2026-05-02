get_raven_palette <- function(color_theme = "vampire") {

  palettes <- list(

    vampire = c(
      "#531117",
      "#353535",
      "#ACACAC",
      "#9c2535"
    ),

    chocolate = c(
      "#3A2F24",
      "#7A6A55",
      "#BDAA86",
      "#8B3E2F"
    ),

    gothic_witch = c(
      "#541533",
      "#722548",
      "#775E88",
      "#9882B9"
    )
  )

  palettes[[color_theme]]
}
