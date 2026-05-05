#' @export
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

    vampire_heatmap = c(
      "#2A0D14",
      "#3B1020",
      "#5A1528",
      "#7B1E2B",
      "#C94F63",
      "#E0637A",
      "#F28CA3"
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

    chocolate_heatmap = c(
      "#4A3B31",
      "#704F3A",
      "#A67B5B",
      "#C2956D",
      "#D8B08A",
      "#EAD3B5",
      "#F5E6D3"
    ),

    witchy = c(
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
      "#243328",
      "#3B5A47",
      "#89A67F"
    ),

    witchy_heatmap = c(
      "#16101F",
      "#2B1F35",
      "#3D2A4A",
      "#5C3B63",
      "#775E88",
      "#9882B9",
      "#B9A7D6"
    ),

    lotus = c(
      "#202808",
      "#33432B",
      "#6A784D",
      "#DEC59E",
      "#C4866D",
      "#4F5E3A",
      "#8FA77A",
      "#E8D8B5"
    ),

    lotus_heatmap = c(
      "#2B351F",
      "#33432B",
      "#4F5E3A",
      "#6A784D",
      "#DEC59E",
      "#E8D8B5",
      "#F2E6C8"
    ),

    tealish = c(
      "#1E201F",
      "#193A31",
      "#1D6C61",
      "#3EB9A8",
      "#5AA371",
      "#0F3F3A",
      "#2C8C80",
      "#7FD4C3"
    ),

    tealish_heatmap = c(
      "#0F3F3A",
      "#1D6C61",
      "#2C8C80",
      "#3EB9A8",
      "#7FD4C3",
      "#A8E6DA",
      "#CFF4EC"
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
