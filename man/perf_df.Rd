% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/performance.R
\name{perf_df}
\alias{perf_df}
\title{perf_df}
\usage{
perf_df(fitted, actual, quantiles = NULL)
}
\arguments{
\item{fitted}{A character value. Evaluates to a numeric column.}

\item{actual}{A character value. Evaluates to a logical or binary column.}

\item{quantiles}{Number of quantiles to show. If \code{NULL}, uses distinct
values of \code{fitted} for the cutoffs rather than showing quantiles.}
}
\value{
A data.frame summarizing binary classification performance:
\itemize{
  \item{quantile:} fitted value quantile (only if \code{!is.null(quantile)}
  \item{cutoff:} fitted value cutoff
  \item{fp:} false positives
  \item{tp:} true positives
  \item{tn:} true negatives
  \item{fn:} false negatives
  \item{pp:} positive predictions
  \item{np:} negative predictions
  \item{ipp:} group positive predictions
  \item{ifp:} group false positives
  \item{itp:} group true positives
  \item{rpp:} rate of positive predictions
  \item{acc:} accuracy
  \item{fpr:} false positive rate
  \item{tpr:} true positive rate
  \item{fnr:} false negative rate
  \item{tnr:} true negative rate
  \item{prec:} precision
  \item{clift:} lift
  \item{ilift:} group lift
  \item{f1:} f1 measure
  \item{ks:} Kolmogorov-Smirnov statistic
  \item{auc:} area under ROC curve
  \item{aucpr:} area under PR curve
}
}
\description{
shows classification performance statistics as a table
}
\examples{
perf_df(mtcars$mpg, mtcars$am)
perf_df(mtcars$mpg, mtcars$am, quantiles = 4)
perf_df(mtcars$mpg, mtcars$am, quantiles = 8)
perf_df(mtcars$mpg, mtcars$am, quantiles = 10)
perf_df(mtcars$wt, mtcars$am==0)
}
