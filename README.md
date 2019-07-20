# ezplot

<!-- badges: start -->
[![Coverage status](https://codecov.io/gh/wkostelecki/ezplot/branch/master/graph/badge.svg)](https://codecov.io/github/wkostelecki/ezplot?branch=master)
[![CRAN status](https://www.r-pkg.org/badges/version/ezplot)](https://cran.r-project.org/package=ezplot)
[![Travis build status](https://travis-ci.org/wkostelecki/ezplot.svg?branch=master)](https://travis-ci.org/wkostelecki/ezplot)
[![CRAN RStudio mirror downloads](http://cranlogs.r-pkg.org/badges/ezplot)](http://www.r-pkg.org/pkg/ezplot)
[![Total CRAN downloads](http://cranlogs.r-pkg.org/badges/grand-total/ezplot)](http://www.r-pkg.org/pkg/ezplot)
<!-- badges: end -->

## Installation

You can install the released version of ezplot from [CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("ezplot")
```

... or the latest stable Github version with: 

``` r
devtools::install_github("wkostelecki/ezplot")
```

## Overview

ezplot provides high-level wrapper functions for common chart types with reduced typing and easy faceting. e.g.:
- `line_plot()`
- `area_plot()`
- `bar_plot()`
- `tile_plot()`
- `waterfall_plot()`
- `side_plot()`
- `secondary_plot()`

## Usage
``` r
library(ezplot)
library(tsibbledata)
```
### line_plot
``` r
line_plot(ansett, x = "Week", y = "Passengers") # weekly aggregate "Passengers"
```
![](man/figures/README-line_plot_1.png)<!-- -->
``` r
line_plot(ansett, x = "Week", y = "Passengers", group = "Airports") # adds "Airports" grouping
line_plot(ansett, x = "Week", y = "Passengers", group = "Airports", facet_x = "Class") # facet by "Class"
```

with group and two facets:
``` r
line_plot(ansett, x = "Week",
          y = c("Weekly Passengers" = "Passengers"),
          group = "substr(Airports, 5, 7)",
          facet_x = "substr(Airports, 1, 3)", facet_y = "Class",
          facet_scales = "free_y")
```
![](man/figures/README-line_plot_2.png)<!-- -->

With YOY comparisons:
``` r
line_plot(gafa_stock, "Date", c("Closing Stock Price" = "Close"),
          yoy = TRUE, facet_y = "Symbol",
          facet_scales = "free_y",
          labels = function(x) ez_labels(x, prepend = "$"))
```
![](man/figures/README-line_plot_3.png)<!-- -->

### area_plot (stacked area)
``` r
area_plot(ansett, x = "Week", y = "Passengers")
area_plot(ansett, x = "Week", y = c("Weekly Passengers" = "Passengers"), "Class")
```
![](man/figures/README-area_plot.png)<!-- -->

``` r
area_plot(ansett, "Week",
          y = c("Weekly Passengers" = "Passengers"),
          group = "substr(Airports, 5, 7)",
          facet_x = "substr(Airports, 1, 3)", facet_y = "Class",
          facet_scales = "free_y")
```

### bar_plot
``` r
bar_plot(ansett, x = "lubridate::year(Week)", y = "Passengers")
bar_plot(ansett, 
         x = "lubridate::year(Week)",
         y = c("Yearly Passengers" = "Passengers"),
         "Class")

```
![](man/figures/README-bar_plot.png)<!-- -->

### tile_plot
``` r
nyc_bikes %>%
  mutate(duration = as.numeric(stop_time - start_time)) %>%
  filter(between(duration, 0, 16)) %>%
  tile_plot(c("Trip Start (Hour of Day)" = "lubridate::hour(start_time) + 0.5"),
            c("Ride Duration (min)" = "duration - duration %% 2 + 1"))
```
![](man/figures/README-tile_plot.png)<!-- -->


### waterfall_plot
```r
waterfall_plot(aus_retail,
               "lubridate::year(Month)",
               "Turnover", 
               "sub(' Territory', '\nTerritory', State)", 
               rotate_xlabel = TRUE)
```
![](man/figures/README-waterfall_plot.png)<!-- -->

### side_plot
```r
side_plot(PBS, 
          "paste(Concession, Type, sep = ' - ')", 
          c("Scripts", "Cost", "Average Cost" = "~ Cost / Scripts"))
```
![](man/figures/README-side_plot.png)<!-- -->

### secondary_plot
Plot with secondary y-axis.
```r
secondary_plot(pelt, "Year",
               c("Hare Population" = "Hare"), c("Lynx Population" = "Lynx"),
               size = 10,
               ylim1 = c(0, 160e3),
               ylim2 = c(0, 80e3))
```
![](man/figures/README-secondary_plot.png)<!-- -->
