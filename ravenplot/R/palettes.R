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
      "#2A0710",
      "#55172B",
      "#8B2D49",
      "#C46B82",
      "#E8C8D1",
      "#F7EEF1",
      "#F0CDD5",
      "#D98FA0",
      "#B84C6A",
      "#7A1233"
    ),

    chocolate = c(
      "#3A2F24",
      "#4A3B31",
      "#5C4635",
      "#704F3A",
      "#A67B5B",
      "#C2956D",
      "#9F8570",
      "#8B3E2F",
      "#B55239",
      "#6B2E26"
    ),

    chocolate_heatmap = c(
      "#3A2B24",
      "#5A4032",
      "#8A654B",
      "#C49A74",
      "#E8D5C2",
      "#F6EFE7",
      "#E7D0BB",
      "#D8B08A",
      "#B9835A",
      "#8C4E2F"
    ),

    witchy = c(
      "#541533",
      "#722548",
      "#775E88",
      "#9882B9",
      "#2F4F3E",
      "#4E6B5A",
      "#6F8F76",
      "#2B1F35",
      "#5C3B63",
      "#89A67F"
    ),

    witchy_heatmap = c(
      "#140F1C",
      "#2A1E36",
      "#4A345C",
      "#7B5D99",
      "#D8CBEA",
      "#EEE7F7",
      "#DCCFED",
      "#BFA9DA",
      "#8D6BB3",
      "#6E3FA3"
    ),

    lotus = c(
      "#202808",
      "#33432B",
      "#4F5E3A",
      "#6A784D",
      "#8FA77A",
      "#DEC59E",
      "#E8D8B5",
      "#C4866D",
      "#A65D57",
      "#CDBB8C"
    ),

    lotus_heatmap = c(
      "#1C2A18",
      "#3A4A31",
      "#5F7351",
      "#9AA786",
      "#E5D4BB",
      "#F4ECD9",
      "#E8D1B5",
      "#DDBB94",
      "#CFA07A",
      "#9E6F52"
    ),

    tealish = c(
      "#1E201F",
      "#193A31",
      "#0F3F3A",
      "#1D6C61",
      "#2C8C80",
      "#3EB9A8",
      "#5AA371",
      "#7FD4C3",
      "#A3E6D8",
      "#4F6F52"
    ),

    tealish_heatmap = c(
      "#123634",
      "#2B6A63",
      "#5FA79D",
      "#9CC7C1",
      "#E7F1EF",
      "#FAFAF8",
      "#DCE7F5",
      "#C8DCF2",
      "#7FAAD6",
      "#3F78B5"
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
