## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  fig.width = 6,
  fig.align = "center"
)

## ----setup--------------------------------------------------------------------
library(ezplot)
library(tsibble)
library(tsibbledata)
suppressPackageStartupMessages(library(lubridate))
library(ggplot2)
library(grid)

## -----------------------------------------------------------------------------
line_plot(ansett, x = "Week", y = "Passengers")

## -----------------------------------------------------------------------------
line_plot(ansett, x = "Week", y = "Passengers", group = "Class")

## ---- fig.width = 7, fig.height = 6-------------------------------------------
line_plot(ansett, x = "Week", y = "Passengers",
          group = "Class", facet_x = "Airports",
          facet_scales = "free_y", size = 10) +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.38, hjust = 1))

## ---- fig.height = 5----------------------------------------------------------
line_plot(gafa_stock, "Date", c("Closing Stock Price" = "Close"),
          facet_y = "Symbol",
          facet_scales = "free_y",
          yoy = TRUE,
          labels = function(x) ez_labels(x, prepend = "$"))

## ---- fig.width = 7, fig.height = 5-------------------------------------------
line_plot(hh_budget,
          "Year",
          c("DI", "Expenditure", "Savings"),
          facet_x = "Country") +
  theme(panel.spacing.x = unit(1, "lines")) +
  ylab(NULL)
  

## -----------------------------------------------------------------------------
area_plot(ansett, x = "as.Date(Week)", y = "Passengers")

## -----------------------------------------------------------------------------
area_plot(ansett, x = "as.Date(Week)",
          y = c("Weekly Passengers" = "Passengers"),
          "Class")

## ---- fig.width = 7, fig.height = 4-------------------------------------------
area_plot(ansett,
          "year(Week) + (month(Week) - 1) / 12",
          y = c("Monthly Passengers" = "Passengers"),
          group = "substr(Airports, 5, 7)",
          facet_x = "substr(Airports, 1, 3)", facet_y = "Class",
          facet_scales = "free_y") +
          theme(axis.text.x = element_text(angle = 90, vjust = 0.38, hjust = 1))

## -----------------------------------------------------------------------------
bar_plot(subset(aus_retail, year(Month) >= 2010), 
         x = "year(Month)",
         y = "Turnover")

## ---- fig.width = 7, fig.height = 4-------------------------------------------
bar_plot(subset(aus_retail, year(Month) >= 2010), 
         x = "year(Month)",
         y = "Turnover",
         group = "State",
         size = 10)

