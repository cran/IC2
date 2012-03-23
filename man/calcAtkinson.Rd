\name{calcAtkinson}
\alias{calcAtkinson}
\title{
Atkinson Index of Inequality
}
\description{
Computes an Atkinson measure of inequality within a vector.
}
\usage{
calcAtkinson(x, w = NULL, epsilon = 1)
}
\arguments{
  \item{x}{
Numeric vector with non-negative values (strictly positive
when \code{epsilon}=1)
}
  \item{w}{
Numeric vector of sampling weigths (optional)
}
  \item{epsilon}{
Parameter of the Atkinson index (must be strictly positive)
}
}
\value{
A list of class \code{"ICI"} with components:
  \item{ineq}{a list with components \code{Atk} (value of inequality index)
  and \code{epsilon} (value of parameter)}
  \item{nas}{a list with NA counts, including components \code{xNA}, \code{wNA}
  and \code{totalNA}} 
}
\references{
Atkinson A.B. (1970) On the Measurement of Inequality. \emph{Journal of
Economic Theory}, 2, pp. 244-263.
}
\seealso{
\code{\link{decompAtkinson}}
}
\examples{
data(hhbudgets)

calcAtkinson(hhbudgets[, "ingreso"], epsilon=3)
summary(hhbudgets[, "transporte"])
calcAtkinson(hhbudgets[,"transporte"], w=hhbudgets[,"factor"])
}