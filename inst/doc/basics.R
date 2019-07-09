## ----setup, include = FALSE----------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ---- fig.show='hold'----------------------------------------------------
library(ezplot)
df = ez_data()
head(df)

## ---- echo=TRUE, results='asis'------------------------------------------
line_plot(df, x = "month", y = "units")
line_plot(df, x = "month", y = "units", group = "char")

## ---- echo=TRUE, results='asis'------------------------------------------

bar_plot(df, x = "year", y = "units")
bar_plot(df, x = "year", y = "units", group = "char")

