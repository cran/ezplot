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
library(tsibbledata)
library(ggplot2)

## -----------------------------------------------------------------------------
line_plot(ansett, x = "Week", y = "Passengers")
line_plot(ansett, x = "Week", y = "Passengers", "Class")
line_plot(pelt, "Year", "Hare", limits_y = c(0, NA))
line_plot(pelt, "Year", c("Hare", "Lynx"), points = TRUE)

## -----------------------------------------------------------------------------
line_plot(pelt, "Year", c("Hare", "Lynx"), points = 0.5)

## -----------------------------------------------------------------------------
line_plot(pelt, "Year", c("Hare", "Lynx"), points = TRUE, limits_y = c(0, NA))

## -----------------------------------------------------------------------------
line_plot(pelt, "Year", "Hare", use_theme = ggplot2::theme_bw)
line_plot(pelt, "Year", c("Hare Population" = "Hare"))
line_plot(pelt[pelt$Year > 1930,], "factor(Year)", c("Hare Population" = "Hare"), points = TRUE)
line_plot(pelt[pelt$Year > 1930,], "factor(Year)", c("Hare", "Lynx"), points = TRUE)

