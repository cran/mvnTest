\name{S2.test}
\alias{S2.test}
\title{
   Chi-squared type tests for Multivariate Normality
}
\description{
This function implements three chi-squared type goodness-of-fit tests for multivariate normality, namely,
the McCulloch \code{S2} test, Nikulin-Rao-Robson \code{Y2} and Dzhaparidze-Nikulin \code{U2} tests.
}
\usage{
S2.test(data, M=5, qqplot = FALSE)
}

\arguments{
  \item{data}{A numeric matrix or data frame
  }
  \item{M}{A number of equiprobable intervals
  }
  \item{qqplot}{ if \code{TRUE} it creates a chi-square Q-Q plot
  }
}
\details{ Calculates the values of the three chi-squared type test statistics, the McCulloch \code{S2}, Nikulin-Rao-Robson \code{Y2} and Dzhaparidze-Nikulin \code{U2} tests, and the corresponding p-values. The construction of all three tests is based on the Wald's type chi-squared goodness-of-fit tests. The vector of unknown parameters is estimated by the maximum likelihood method.The Karhunen-Loeve transformation is applied to a multi-dimensional sample data in order to diagonalize a sample covariance matrix. The null asymptotic distributions of the \code{S2}, \code{Y2} and \code{U2} tests are chi-squared distributions with \code{1}, \code{M-1} and \code{M-2} degrees of freedom correspondingly.

}
\value{
\item{s2}{the value of the McCulloch test  \code{S2}}
\item{p.value.s2}{the p-value of \code{S2} test}
\item{y2}{the value of the Nikulin-Rao-Robson test \code{Y2} }
\item{p.value.y2}{the p-value of \code{Y2} test}
\item{u2}{the value of the Dzhaparidze-Nikulin test \code{U2} 
 %at significance level \code{0.05}
   }
\item{p.value.u2}{the p-value of \code{U2} test}
\item{data.name}{a character string giving the name of the data}
}
\note{
  The displayed result about multivariate normality is based on the McCulloch \code{S2} test.
}
\references{
Voinov, V., Pya, N., Makarov, R., and Voinov, Y. (2015) New invariant 
and consistent chi-squared type goodness-of-fit tests for multivariate 
normality and a related comparative simulation study. 
Communications in Statistics - Theory and Methods. doi link: \url{http://www.tandfonline.com/doi/full/10.1080/03610926.2014.901370}

Voinov, V., Nikulin, M. and Balakrishnan, N., Chi-squared goodness of 
fit tests with applications. New York: Academic Press, Elsevier, 2013 
}
\author{Vassilly Voinov, Natalya Pya, Rashid Makarov, Yevgeniy Voinov
}

\seealso{
    \code{\link[mvnTest]{AD.test}},
    \code{\link[mvnTest]{DH.test}},
    \code{\link[mvnTest]{R.test}}, \code{\link[mvnTest]{CM.test}},
    \code{\link[mvnTest]{HZ.test}}
}
\examples{
## generating n bivariate normal random variables...       
dat <- rmvnorm(n=200,mean=rep(0,2),sigma=matrix(c(4,2,2,4),2,2)) 
res <- S2.test(dat, qqplot = FALSE)
res
## generating n bivariate t distributed with 10df random variables...       
dat <- rmvt(n=200,sigma=matrix(c(4,2,2,4),2,2)*.8,df=10,delta=rep(0,2)) 
res1 <- S2.test(dat, qqplot = TRUE)
res1

data(iris)
setosa = iris[1:50, 1:4] # Iris data only for setosa
res2 <- S2.test(setosa, qqplot = TRUE)
res2

}
