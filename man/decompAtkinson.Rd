\name{decompAtkinson}
\alias{decompAtkinson}
\title{
Decomposition by Groups for Atkinson Index
}
\description{
Decomposes by population subgroups an Atkinson measure of inequality
within a vector.
}
\usage{
decompAtkinson(x, z, w = NULL, epsilon = 1, decomp = "BDA", ELMO = TRUE)
}
\arguments{
  \item{x}{
Numeric vector with non-negative values (strictly positive
when \code{epsilon}=1).
}
  \item{z}{
Factor who determines the subgroups.
}
  \item{w}{
Numeric vector of sampling weigths (optional).
}
  \item{epsilon}{
Parameter of the Atkinson index (must be strictly positive).
}
  \item{decomp}{
Character string specifying the decomposition. It must be one of \code{"BDA"}
for the Blackorby and alii (1985) decomposition or \code{"DP"} for the
Das and Parikh (1982) decomposition.
}
  \item{ELMO}{
When \code{ELMO} is \code{TRUE}, a "maximum" between-group inequality index is
estimated using the Elbers and alii method (2005).
}
}
\value{
A list of class \code{"ICI"} with components:
  \item{ineq}{a list with components \code{Atk} (value of inequality index)
  and \code{epsilon} (value of parameter).}
  \item{decomp}{a list with components \code{within} (value of within-group
  inequality), \code{between} (value of between-group inequality),
  \code{residual} (value of residual inequality) and, if \code{ELMO} is
  \code{TRUE}, \code{betweenELMO} (value of maximum between-group inequality).}
  \item{intra}{a list with component \code{AtkGroups} (the subgroup values of
  inequality index).}
  \item{ws}{a list with components \code{wIntra} (the subgroup weights)
  and \code{sIntra} (the subgroup shares of \code{x}).}
  \item{nas}{a list with \code{NA} counts, including components \code{xNA},
  \code{zNA}, \code{wNA} and \code{totalNA}.} 
}
\references{
Atkinson A.B. (1970) On the Measurement of Inequality. \emph{Journal of
Economic Theory}, 2, pp. 244-263.

Blackorby C., Donaldson D., Auersperg M. (1981) A new procedure for the
measurement of inequality within and among population subgroups. \emph{Canadian
Journal of Economics}, 14, pp. 665-685.

Das T., Parikh A. (1982) Decomposition of Inequality Measures and a
Comparative Analysis. \emph{Empirical Economics}, 7(1-2), pp. 23-48. 

Elbers C., Lanjouw P., Mistiaen J.A., Ozler B. (2005)
\href{http://go.worldbank.org/F6A68SVIZ0}{\emph{Re-Interpreting
Sub-Group Inequality Decompositions}}. World Bank, World Bank Policy Research
Working Paper 3687, 42 p.
}
\seealso{
\code{\link{calcAtkinson}}
}
\examples{
data(hhbudgets)

decompAtkinson(hhbudgets[,"ingreso"], hhbudgets[,"estructura"], epsilon=3)
summary(hhbudgets[,"tenencia"]) # 35 NA's
summary(decompAtkinson(x=hhbudgets[,"transporte"], z=hhbudgets[,"tenencia"], w=hhbudgets[,"factor"], decomp="DP", ELMO=FALSE))
summary(decompAtkinson(x=hhbudgets[,"transporte"], z=hhbudgets[,"tenencia"], w=hhbudgets[,"factor"], decomp="DP", epsilon=0.25))
}