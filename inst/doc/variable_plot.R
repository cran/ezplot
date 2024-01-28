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
variable_plot(ansett, "Week", "Passengers", facet_x = "Class")

## -----------------------------------------------------------------------------
variable_plot(ansett, "Week", "Passengers", facet_x = "Class", yoy = TRUE)

## -----------------------------------------------------------------------------
variable_plot(pelt, "Year", c("Lynx", "Hare"), "round(Year, -1)")

## -----------------------------------------------------------------------------
variable_plot(hh_budget, "Year", c("Debt", "Expenditure"), "Country")

## -----------------------------------------------------------------------------
variable_plot(PBS, "Type", "Scripts", "Concession", switch = "y", geom = "col")

## -----------------------------------------------------------------------------
variable_plot(subset(hh_budget, Year > 2013), "Year",
              c("Debt\n(% of disposable income)" = "Debt",
                "Expenditure\nGrowth (%)" = "Expenditure",
                "Unemployment (%)" = "Unemployment"),
              facet_x = "Country", geom = "bar")

## -----------------------------------------------------------------------------
variable_plot(subset(hh_budget, Year > 2013), "Year",
              c("Debt\n(% of disposable income)" = "Debt",
                "Expenditure\nGrowth (%)" = "Expenditure",
                "Unemployment (%)" = "Unemployment"),
              group = "Country", geom = "bar")

