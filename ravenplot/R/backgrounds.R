#' @export
get_raven_background <- function(background_type = "vintage") {

  backgrounds <- list(

    transparent = list(
      plot_bg = "transparent",
      panel_bg = "transparent",
      grid = "#DDDDDD"
    ),

    vintage = list(
      plot_bg = "#F3E9D2",
      panel_bg = "#F3E9D2",
      grid = "#D8C9A8"
    )
  )

  backgrounds[[background_type]]
}
