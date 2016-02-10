\name{S2-class}
\Rdversion{1.1}
\docType{class}
\alias{S2}
\alias{S2-class}


\title{Class \code{"S2"}}
\description{
An S4 class for Chi-squared type tests for multivariate normality.
}

\section{Slots}{
  \describe{
    \item{\code{s2}:}{stores the values of the McCulloch test statistics}
    \item{\code{y2}:}{stores the values of the Nikulin-Rao-Robson test statistics}
    \item{\code{u2}:}{stores the values of the Dzhaparidze-Nikulin test statistics}
    \item{\code{p.value.s2}:}{stores the p-value for \code{S2} test}
    \item{\code{p.value.y2}:}{stores the p-value for \code{Y2} test}
    \item{\code{p.value.u2}:}{stores the p-value for \code{U2} test}
    \item{\code{data.name}:}{stores the data set name}
  }
}
\author{
Natalya Pya, Vassilly Voinov, Rashid Makarov
}
