get_raven_palette <- function(color_theme = "vampire") {

  palettes <- list(

    vampire = c(
      "#14070A",
      "#7B1E2B",
      "#B22234",
      "#3B1020",
      "#9C1C46",
      "#C2185B",
      "#7F1734",
      "#6B6F7A",
      "#C94F63",
      "#2F3742"
    ),

    chocolate = c(
      "#3A2F24",
      "#8B3E2F",
      "#5C4635",
      "#A67B5B",
      "#6B2E26",
      "#C2956D",
      "#4A3B31",
      "#9F8570",
      "#704F3A",
      "#B55239"
    ),

    gothic_witch = c(
      "#541533",
      "#722548",
      "#775E88",
      "#9882B9",
      "#2F4F3E",
      "#4E6B5A",
      "#6F8F76",
      "#A5C1A9",
      "#2B1F35",
      "#3D2A4A",
      "#5C3B63",
      "#B9A7D6",
      "#0F0B14",
      "#16101F",
      "#243328",
      "#3B5A47",
      "#89A67F"
    ),

    lotus = c(
      "#202808",
      "#33432B",
      "#6A784D",
      "#DEC59E",
      "#C4866D"
    ),

    tealish = c(
      "#1E201F",
      "#193A31",
      "#1D6C61",
      "#3EB9A8",
      "#5AA371"
    )
  )

  if (!color_theme %in% names(palettes)) {
    stop(
      paste0(
        "Invalid color_theme. Available options are: ",
        paste(names(palettes), collapse = ", ")
      )
    )
  }

  palettes[[color_theme]]
}
