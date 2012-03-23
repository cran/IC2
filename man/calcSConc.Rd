\name{calcSConc}
\alias{calcSConc}
\title{
Concentration Index
}
\description{
Computes the concentration index for a vector, ranked by another vector.
}
\usage{
calcSConc(x, y, w = NULL, param = 2)
}
\arguments{
  \item{x}{
Numeric vector with non-negative values.
}
  \item{y}{
Numeric vector used for the ranking of vector \code{x}.
}
  \item{w}{
Numeric vector of sampling weigths (optional).
}
  \item{param}{
Parameter specifying the concentration index (must be positive).
}
}
\value{
A list of class \code{"ICI"} with components:
  \item{ineq}{a list with components \code{SConc} (value of concentration index)
  and \code{param} (value of parameter).}
  \item{nas}{a list with \code{NA} counts, including components \code{xNA},
  \code{yNA}, \code{wNA} and \code{totalNA}.} 
}
\references{
Kakwani N.C. (1977) Measurement of Tax Progressivity: An International
Comparison. \emph{The Economic Journal}, 87(345), pp. 71-80.

O'Donnell O., van Doorslaer E., Wagstaff A., Lindelow M. (2008)
\href{http://siteresources.worldbank.org/INTPAH/Resources/Publications/459843-1195594469249/HealthEquityFINAL.pdf}{\emph{Analyzing Health Equity Using Household Survey Data}}. World Bank, 220 p.
}
\seealso{
\code{\link{curveConcent}}
}
\examples{
data(hhbudgets)

calcSConc(hhbudgets[, "transporte"], hhbudgets[,"ingreso"], param=0.5)
summary(hhbudgets[,"mantenimiento"])
calcSConc(hhbudgets[,"mantenimiento"], hhbudgets[,"ingreso"], w=hhbudgets[,"factor"])
}
