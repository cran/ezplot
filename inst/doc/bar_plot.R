## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  fig.width = 6,
  fig.align = "center"
)

## ----setup--------------------------------------------------------------------
library(ezplot)
suppressPackageStartupMessages(library(tsibble))
library(lubridate)
library(tsibbledata)
library(ggplot2)

## -----------------------------------------------------------------------------
bar_plot(ansett, "year(Week)", "Passengers", size = 16)

## -----------------------------------------------------------------------------
bar_plot(ansett, "year(Week)", "Passengers", size = 16, label_pos = "both")

## -----------------------------------------------------------------------------
bar_plot(ansett, "year(Week)", "Passengers", size = 16, label_pos = "both", repel = TRUE)

## -----------------------------------------------------------------------------
bar_plot(ansett, "year(Week)", "Passengers", size = 16, rescale_y = 1.5, label_pos = "both")

## -----------------------------------------------------------------------------
bar_plot(ansett, "year(Week)", "Passengers", "Class")

## -----------------------------------------------------------------------------
bar_plot(ansett, "year(Week)", "Passengers", "Class", "Airports")

## -----------------------------------------------------------------------------
bar_plot(ansett, "year(Week)", "Passengers", "Class", "Airports",
         facet_scales = "free_y")

## -----------------------------------------------------------------------------
bar_plot(ansett, "year(Week)", "Passengers", "Class", "Airports",
         facet_scales = "free_y", repel = TRUE)

## -----------------------------------------------------------------------------
bar_plot(ansett, "year(Week)", "Passengers", "Class", label_pos = "both")

## -----------------------------------------------------------------------------
bar_plot(ansett, "year(Week)", "Passengers", "Class", label_pos = "both", label_inside = "share")

## -----------------------------------------------------------------------------
bar_plot(ansett, "year(Week)", "Passengers", "Class", label_pos = "both", label_inside = "both")

## -----------------------------------------------------------------------------
bar_plot(ansett, "year(Week)", "Passengers", "Class", label_pos = "both", label_inside = "both",
         coord_flip = TRUE)

## -----------------------------------------------------------------------------
bar_plot(ansett, "Airports", c("Share of Passengers" = "Passengers"), "Class", position = "fill")

## -----------------------------------------------------------------------------
bar_plot(ansett, "Airports", "Passengers", "Class", label_pos = "both")

## -----------------------------------------------------------------------------
bar_plot(ansett, "Airports", "Passengers", "Class", label_pos = "both", repel = TRUE)

## -----------------------------------------------------------------------------
bar_plot(ansett, "Airports", "Passengers", "Class", label_pos = "both", repel = TRUE, angle = 90)

## -----------------------------------------------------------------------------
bar_plot(ansett, "Airports", "Passengers", "Class", label_pos = "both", repel = TRUE, angle = -90)

## -----------------------------------------------------------------------------
bar_plot(mtcars, "factor(cyl)", "1", "am", position = "dodge")

## -----------------------------------------------------------------------------
bar_plot(mtcars, "factor(cyl)", "1", "am", position = "dodge", coord_flip = TRUE)

## -----------------------------------------------------------------------------
bar_plot(mtcars, "factor(cyl)", "1", "am", position = "dodge", coord_flip = TRUE, rescale_y = 2)

## -----------------------------------------------------------------------------
bar_plot(mtcars, "factor(cyl)", "1", "am", position = "dodge", coord_flip = TRUE, angle = -90)

## -----------------------------------------------------------------------------
bar_plot(mtcars, "factor(cyl)", "1", "am", position = "dodge", coord_flip = TRUE, angle = 90)

## -----------------------------------------------------------------------------
bar_plot(ansett, "Airports",
         c(Passengers = "ifelse(Class == 'Economy', Passengers, -Passengers)"),
         "Class", label_pos = "both")

