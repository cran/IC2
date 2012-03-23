\name{curveLorenz}
\alias{curveLorenz}
\title{
Lorenz Curve
}
\description{
Plots an ordinary or generalized Lorenz curve.
}
\usage{
curveLorenz(x, w = NULL, gener = FALSE, xlab = NA, ylab = NA, add = FALSE, grid = 0, \dots)
}
\arguments{
  \item{x}{
Numeric vector with non-negative values.
}
  \item{w}{
Numeric vector of sampling weigths (optional).
}
  \item{gener}{
If \code{gener} is \code{TRUE}, the generalized curve is plotted. Else, the
ordinary curve is plotted.
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
Further arguments to be used for drawing the Lorenz curve
(see \code{\link[graphics]{lines}}).
}
}
\references{
Cowell F.A. (2000) Measurement of Inequality. In Atkinson A.B., Bourguignon F.
(Eds.) \emph{Handbook of Income Distribution}. Amsterdam, Elsevier,
Vol. 1, pp. 87-166.
}
\seealso{
\code{\link{calcSGini}}
}
\examples{
data(hhbudgets)

curveLorenz(x=hhbudgets[, "transporte"], w =hhbudgets[,"factor"])
curveLorenz(x=hhbudgets[, "transporte"], w =hhbudgets[,"factor"], gener=TRUE, col="red")
}
