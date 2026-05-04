get_raven_symbol <- function(dot_type = "flower") {

  symbols <- list(
    flower = "✾",
    cross = "✝",
    rhombus = "◊",
    sun = "☼",
    swords = "⚔",
    atom = "⚛",
    star = "⟡",
    heart = "♥"
  )
  symbols[[dot_type]]
}
