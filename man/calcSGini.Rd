\name{calcSGini}
\alias{calcSGini}
\title{
Extended Gini Coefficient
}
\description{
Computes the Extended Gini coefficient for a vector.
}
\usage{
calcSGini(x, w = NULL, param = 2)
}
\arguments{
  \item{x}{
Numeric vector with non-negative values.
}
  \item{w}{
Numeric vector of sampling weigths (optional).
}
  \item{param}{
Parameter specifying the extended Gini index (must be positive).
}
}
\value{
A list of class \code{"ICI"} with components:
  \item{ineq}{a list with components \code{SGini} (value of inequality index)
  and \code{param} (value of parameter).}
  \item{nas}{a list with \code{NA} counts, including components \code{xNA},
  \code{wNA} and \code{totalNA}.} 
}
\references{
Cowell F.A. (2000) Measurement of Inequality. In Atkinson A.B., Bourguignon F.
(Eds.) \emph{Handbook of Income Distribution}. Amsterdam, Elsevier,
Vol. 1, pp. 87-166.

Schechtman E., Yitzhaki S. (2008) Calculating the Extended Gini Coefficient from
Grouped Data: A Covariance Presentation. \emph{Bulletin of Statistics &
Economics}, 2(S08), pp. 64-69. 
}
\seealso{
\code{\link{decompSGini}}, \code{\link{curveLorenz}}
}
\examples{
data(hhbudgets)

calcSGini(hhbudgets[,"ingreso"], param=0.5)
summary(hhbudgets[,"mantenimiento"])
calcSGini(hhbudgets[,"mantenimiento"], w=hhbudgets[,"factor"])
}
