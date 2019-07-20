## ----setup, include = FALSE----------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ---- fig.show='hold'----------------------------------------------------
library(ezplot)
library(tsibbledata)
suppressPackageStartupMessages(library(dplyr))
suppressPackageStartupMessages(library(lubridate))

## ---- echo=TRUE, results='asis'------------------------------------------
line_plot(ansett, x = "Week", y = "Passengers")
line_plot(ansett, x = "Week", y = "Passengers", group = "Class")

## ---- echo=TRUE, results='asis'------------------------------------------

df = ansett %>% 
  filter(between(year(Week), 1988, 1991))
bar_plot(df, x = "year(Week)", y = "Passengers")
bar_plot(df, x = "year(Week)", y = "Passengers", group = "Class")

