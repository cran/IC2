\name{decompGEI}
\alias{decompGEI}
\title{
Decomposition by Groups for GEI
}
\description{
Decomposes by population subgroups a generalized entropy inequality measure
within a vector.
}
\usage{
decompGEI(x, z, w = NULL, alpha = 1, ELMO = TRUE)
}
\arguments{
  \item{x}{
Numeric vector with non-negative values (strictly positive
when \code{alpha}=0 or \code{alpha}=1).
}
  \item{z}{
Factor who determines the subgroups.
}
  \item{w}{
Numeric vector of sampling weigths (optional).
}
  \item{alpha}{
Parameter of the generalized entropy index. Theil index (\eqn{T_{T}}{TT}) is
calculated for \code{alpha}=1, the mean log deviation (\eqn{T_{L}}{TL}) for
\code{alpha}=0. 
}
  \item{ELMO}{
When \code{ELMO} is \code{TRUE}, a "maximum" between-group inequality index is
estimated using the Elbers and alii method (2005).
}
}
\value{
A list of class \code{"ICI"} with components:
  \item{ineq}{a list with components \code{GEI} (value of inequality index)
  and \code{alpha} (value of parameter).}
  \item{decomp}{a list with components \code{within} (value of within-group
  inequality), \code{between} (value of between-group inequality) and,
  if \code{ELMO} is \code{TRUE}, \code{betweenELMO} (value of maximum
  between-group inequality).}
  \item{intra}{a list with components \code{GEIGroups} (the subgroup values of
  inequality index) and \code{contribGEIGroups} (the contribution of each
  subgroup to the total within-groups inequality).}
  \item{ws}{a list with components \code{wIntra} (the subgroup weights)
  and \code{sIntra} (the subgroup shares of \code{x}).}
  \item{nas}{a list with \code{NA} counts, including components \code{xNA},
  \code{zNA}, \code{wNA} and \code{totalNA}.} 
}
\references{
Cowell F.A. (2000) Measurement of Inequality. In Atkinson A.B., Bourguignon F.
(Eds.) \emph{Handbook of Income Distribution}. Elsevier, Vol. 1, pp. 87-166.

Elbers C., Lanjouw P., Mistiaen J.A., Ozler B. (2005)
\href{http://go.worldbank.org/F6A68SVIZ0}{\emph{Re-Interpreting
Sub-Group Inequality Decompositions}}. World Bank, World Bank Policy Research
Working Paper 3687, 42 p.
}
\seealso{
\code{\link{calcGEI}}
}
\examples{
data(hhbudgets)

decompGEI(hhbudgets[,"ingreso"], hhbudgets[,"estructura"], alpha=4)
summary(hhbudgets[,"tenencia"]) #35 NA's
decompGEI(x=hhbudgets[,"transporte"], z=hhbudgets[,"tenencia"], w=hhbudgets[,"factor"], ELMO=FALSE)
summary(decompGEI(x=hhbudgets[,"transporte"], z=hhbudgets[,"tenencia"], w=hhbudgets[,"factor"], alpha=1.5))
}