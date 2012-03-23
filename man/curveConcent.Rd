\name{curveConcent}
\alias{curveConcent}
\title{
Concentration Curve
}
\description{
Plots a concentration curve.
}
\usage{
curveConcent(x, y, w = NULL, xlab = NA, ylab = NA, add = FALSE, grid = 0, \dots)
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
  \item{xlab}{
Title for the x-axis.
}
  \item{ylab}{
Title for the y-axis.
}
  \item{add}{
If \code{add} is \code{TRUE}, only the curve is drawn. The device must contain
a high-level plot.
}
  \item{grid}{
If \code{grid} >0, a grid is drawn, with spacing equal to \code{1/grid}. 
}
  \item{\dots}{
Further arguments to be used for drawing the concentration curve
(see \code{\link[graphics]{lines}}).
}
}
\references{
O'Donnell O., van Doorslaer E., Wagstaff A., Lindelow M. (2008)
\href{http://siteresources.worldbank.org/INTPAH/Resources/Publications/459843-1195594469249/HealthEquityFINAL.pdf}{\emph{Analyzing Health Equity Using Household Survey Data}}. World Bank, 220 p.
}
\seealso{
\code{\link{calcSConc}}
}
\examples{
data(hhbudgets)

curveConcent(x=hhbudgets[, "transporte"], y=hhbudgets[,"ingreso"], w=hhbudgets[,"factor"], col="red", xlab="Ranking by income")
curveConcent(x=hhbudgets[, "mantenimiento"], y=hhbudgets[,"ingreso"], w=hhbudgets[,"factor"], col="blue", add=TRUE)
curveConcent(x=hhbudgets[, "publico"], y=hhbudgets[,"ingreso"], w=hhbudgets[,"factor"], col="green", add=TRUE)
title(main="Transport expenditures")
legend("topleft", legend = c("All transport", "Private: Maintenance and repair", "Public transport"), col=c("red", "blue", "green"), lty=rep(1, 3))
}
