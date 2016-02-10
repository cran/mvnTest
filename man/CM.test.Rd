\name{CM.test}
\alias{CM.test}
\title{
   Cramer-von Mises test for Multivariate Normality
}
\description{
This function implements the Cramer-von Mises test for assessing multivariate normality.
}
\usage{
CM.test(data, qqplot = FALSE)
}

\arguments{
  \item{data}{A numeric matrix or data frame}
  \item{qqplot}{ if \code{TRUE} creates a chi-square Q-Q plot}
}
\details{ Calculates the value of the Cramer-von Mises test and the approximate p-value. 

}
\value{
\item{CM}{the value of the test statistic}
\item{p.value}{the p-value of the test}
\item{data.name}{a character string giving the name of the data}
}
\note{ The printing method and plotting are in part adapted from R package \code{MVN}
(version 4.0, Korkmaz, S. et al., 2015).

The computations are relatively expensive as Monte Carlo procedure is used to calculate empirical p-vales.

}

\references{
  Koziol, J. (1982). A class of invariant procedures for assessing multivariate
  normality. Biometrika, 69, 423-427

  Henze, N. and Zirkler, B. (1990). A class of invariant consistent tests for
  multivariate normality. Communications in Statistics - Theory and Methods, 
  19, 3595-3617
}
\author{Rashid Makarov, Vassilly Voinov, Natalya Pya
}

\seealso{
    \code{\link[mvnTest]{S2.test}},
    \code{\link[mvnTest]{AD.test}},
    \code{\link[mvnTest]{DH.test}},
    \code{\link[mvnTest]{R.test}}, 
    \code{\link[mvnTest]{HZ.test}}
}
\examples{
\dontrun{
## generating n bivariate normal random variables...       
dat <- rmvnorm(n=100,mean=rep(0,2),sigma=matrix(c(4,2,2,4),2,2)) 
res <- CM.test(dat)
res

## generating n bivariate t distributed with 10df random variables...       
dat <- rmvt(n=200,sigma=matrix(c(4,2,2,4),2,2),df=10,delta=rep(0,2)) 
res1 <- CM.test(dat)
res1

data(iris)
setosa <- iris[1:50, 1:4] # Iris data only for setosa
res2 <- CM.test(setosa, qqplot = TRUE)
res2
}
}
