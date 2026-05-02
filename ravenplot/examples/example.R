library(ggplot2)
library(ravenplot)

# 1. Scatter plot
ggplot(mtcars, aes(wt, mpg, color = factor(cyl))) +
  geom_point(size = 4) +
  scale_color_manual(values = get_raven_palette("vampire")) +
  labs(
    title = "Raven Scatter Plot",
    subtitle = "Vintage + Vampire + Fancy",
    x = "Weight",
    y = "Miles per Gallon",
    color = "Cylinders"
  ) +
  theme_raven(
    background_type = "vintage",
    font_theme = "fancy",
    color_theme = "vampire",
    major_grid = TRUE,
    minor_grid = TRUE,
  )


# 2. Bar plot
ggplot(mpg, aes(class, fill = class)) +
  geom_bar() +
  scale_fill_manual(values = get_raven_palette("gothic_witch")) +
  labs(
    title = "Raven Bar Plot",
    subtitle = "Dark + Gothic Witch + Elegant",
    x = "Vehicle Class",
    y = "Count"
  ) +
  theme_raven(
    background_type = "dark",
    font_theme = "elegant",
    color_theme = "gothic_witch",
    major_grid = FALSE,
    minor_grid = FALSE
  ) +
  theme(
    axis.text.x = element_text(angle = 45, hjust = 1)
  )


# 3. Line plot
economics_small <- economics[1:100, ]

ggplot(economics_small, aes(date, unemploy)) +
  geom_line(
    linewidth = 1.5,
    color = get_raven_palette("chocolate")[4]
  ) +
  labs(
    title = "Raven Line Plot",
    subtitle = "Transparent + Chocolate + Simple",
    x = "Date",
    y = "Unemployment"
  ) +
  theme_raven(
    background_type = "transparent",
    font_theme = "simple",
    color_theme = "chocolate",
    major_grid = TRUE,
    minor_grid = TRUE
  )


# 4. Box plot
ggplot(mpg, aes(class, hwy, fill = class)) +
  geom_boxplot() +
  scale_fill_manual(values = get_raven_palette("vampire")) +
  labs(
    title = "Raven Box Plot",
    subtitle = "Vintage + Vampire + No Minor Grid",
    x = "Class",
    y = "Highway MPG"
  ) +
  theme_raven(
    background_type = "vintage",
    font_theme = "fancy",
    color_theme = "vampire",
    major_grid = TRUE,
    minor_grid = FALSE
  ) +
  theme(
    axis.text.x = element_text(angle = 45, hjust = 1)
  )


# 5. Histogram
ggplot(diamonds, aes(carat, fill = cut)) +
  geom_histogram(
    bins = 30,
    alpha = 0.8
  ) +
  scale_fill_manual(values = get_raven_palette("gothic_witch")) +
  labs(
    title = "Raven Histogram",
    subtitle = "Dark + Gothic Witch + Major Grid Only",
    x = "Carat",
    y = "Count"
  ) +
  theme_raven(
    background_type = "dark",
    font_theme = "elegant",
    color_theme = "gothic_witch",
    major_grid = TRUE,
    minor_grid = FALSE
  )
