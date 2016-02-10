\name{R.test}
\alias{R.test}
\title{
   Royston test for Multivariate Normality
}
\description{
This function implements the Royston test for assessing multivariate normality.
}
\usage{
R.test(data, qqplot = FALSE)
}

\arguments{
  \item{data}{A numeric matrix or data frame}
  \item{qqplot}{ if \code{TRUE} creates a chi-square Q-Q plot}
}
\details{ Calculates the value of the Royston test and the approximate p-value. 

}
\value{
\item{R}{the value of the test statistic}
\item{p.value}{the p-value of the test}
\item{data.name}{a character string giving the name of the data}
}
\note{ The printing method and plotting are in part adapted from R package \code{MVN}
(Korkmaz, S. et al., 2015, version 4.0).
}
\references{
  Royston, P. (1992). Approximating the Shapiro-Wilk W-test for non-normality. 
   Statistics and Computing, 2, 117-119.
}
\author{Rashid Makarov, Vassilly Voinov, Natalya Pya
}

\seealso{
    \code{\link[mvnTest]{S2.test}},  \code{\link[mvnTest]{DH.test}},
    \code{\link[mvnTest]{AD.test}}, \code{\link[mvnTest]{CM.test}},
    \code{\link[mvnTest]{HZ.test}}
}
\examples{
## generating n bivariate normal random variables...       
dat <- rmvnorm(n=200,mean=rep(0,2),sigma=matrix(c(4,2,2,4),2,2)) 
res <- R.test(dat)
res
## generating n bivariate t distributed with 10df random variables...       
dat <- rmvt(n=200,sigma=matrix(c(4,2,2,4),2,2)*.8,df=10,delta=rep(0,2)) 
res1 <- R.test(dat)
res1

data(iris)
setosa = iris[1:50, 1:4] # Iris data only for setosa
res2 <- R.test(setosa, qqplot = TRUE)
res2

}
