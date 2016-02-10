\name{AD.test}
%\Rdversion{1.0}
\alias{AD.test}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Anderson-Darling test for multivariate normality
}
\description{This function implements the Anderson-Darling test for assessing 
multivariate normality. It calculates the value of the test and its approximate p-value.
}
\usage{
 AD.test(data, qqplot = FALSE)
}
\arguments{
   \item{data}{A numeric matrix or data frame.}
   \item{qqplot}{If \code{TRUE} produces a chi-squared QQ plot.} 
}

\value{
  \item{AD}{the value of the test statistic.}
 \item{p.value}{the p-value of the test.}
  
}

\note{ The printing method and plotting are in part adapted from R package \code{MVN}
(version 4.0, Korkmaz, S. et al., 2015).

The computations are relatively expensive as Monte Carlo procedure is used to calculate empirical p-vales.

}

\author{
Rashid Makarov, Vassilly Voinov, Natalya Pya
}
\references{
  Paulson, A., Roohan, P., and Sullo, P. (1987). Some empirical distribution function
  tests for multivariate normality. Journal of Statistical Computation and 
  Simulation, 28, 15-30

  Henze, N. and Zirkler, B. (1990). A class of invariant consistent tests for
  multivariate normality. Communications in Statistics - Theory and Methods, 
  19, 3595-3617

  Selcuk Korkmaz, Dincer Goksuluk, and Gokmen Zararsiz. MVN: Multivariate Normality Tests,
2015. R package version 4.0
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
    \code{\link{S2.test}},
    \code{\link{CM.test}},
    \code{\link{DH.test}},
   \code{\link{R.test}},
   \code{\link{HZ.test}}
}

\examples{
\dontrun{
## generating n bivariate normal random variables...       
dat <- rmvnorm(n=100,mean=rep(0,2),sigma=matrix(c(4,2,2,4),2,2)) 
res <- AD.test(dat)
res

## generating n bivariate t distributed with 10df random variables...   
dat <- rmvt(n=200,sigma=matrix(c(4,2,2,4),2,2),df=10,delta=rep(0,2)) 
res1 <- AD.test(dat)
res1

data(iris)
setosa <- iris[1:50, 1:4] # Iris data only for setosa
res2 <- AD.test(setosa, qqplot = TRUE)
res2

    }
}


