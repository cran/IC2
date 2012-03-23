\name{calcGEI}
\alias{calcGEI}
\title{
Generalized Entropy Index 
}
\description{
Computes a generalized entropy inequality measure within a vector.
}
\usage{
calcGEI(x, w = NULL, alpha = 1)
}
\arguments{
  \item{x}{
Numeric vector with non-negative values (strictly positive when \code{alpha}=0
or \code{alpha}=1)
}
  \item{w}{
Numeric vector of sampling weigths (optional)
}
  \item{alpha}{
Parameter of the generalized entropy index. Theil index (\eqn{T_{T}}{TT}) is
calculated for \code{alpha}=1, the mean log deviation (\eqn{T_{L}}{TL}) for
\code{alpha}=0. 
}
}
\value{
A list of class \code{"ICI"} with components:
  \item{ineq}{a list with components \code{GEI} (value of inequality index)
  and \code{alpha} (value of parameter)}
  \item{nas}{a list with NA counts, including components \code{xNA}, \code{wNA}
  and \code{totalNA}} 
}
\references{
Cowell F.A. (2000) Measurement of Inequality. In Atkinson A.B., Bourguignon F.
(Eds.) \emph{Handbook of Income Distribution}. Amsterdam, Elsevier,
Vol. 1, pp. 87-166.
}
\seealso{
\code{\link{decompAtkinson}}
}
\examples{
data(hhbudgets)

summary(hhbudgets[, "transporte"])
calcGEI(hhbudgets[,"transporte"], alpha=3)
summary(calcGEI(hhbudgets[,"ingreso"], w=hhbudgets[,"factor"]))
}
