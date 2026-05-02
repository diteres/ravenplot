get_raven_palette <- function(color_theme = "vampire") {

  palettes <- list(

    vampire = c(
      "#531117",
      "#353535",
      "#ACACAC",
      "#9C2535",
      "#1A1A1D",
      "#6E0F1F",
      "#C7B8A3",
      "#4B5563",
      "#7D5A50"
    ),

    chocolate = c(
      "#3A2F24",
      "#7A6A55",
      "#BDAA86",
      "#8B3E2F",
      "#D8C7A1",
      "#5C4635",
      "#A67B5B",
      "#E8DCC8",
      "#6B2E26",
      "#C2956D",
      "#4A3B31",
      "#9F8570",
      "#F2E6D0",
      "#704F3A",
      "#B55239"
    ),

    gothic_witch = c(
      "#541533",
      "#722548",
      "#775E88",
      "#9882B9",
      "#1E2A24",
      "#2F4F3E",
      "#4E6B5A",
      "#6F8F76",
      "#A5C1A9",
      "#2B1F35",
      "#3D2A4A",
      "#5C3B63",
      "#B9A7D6",
      "#D8CFF0",
      "#0F0B14",
      "#16101F",
      "#243328",
      "#3B5A47",
      "#89A67F"
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
