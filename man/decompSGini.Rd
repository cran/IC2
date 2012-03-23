\name{decompSGini}
\alias{decompSGini}
\title{
Decomposition by Groups for Extended Gini Coefficient
}
\description{
Decomposes by population subgroups the extended Gini coefficient of inequality
within a vector.
}
\usage{
decompSGini(x, z, w = NULL, param = 2, decomp = "BM", ELMO = TRUE)
}
\arguments{
  \item{x}{
Numeric vector with non-negative values.
}
  \item{z}{
Factor who determines the subgroups.
}
  \item{w}{
Numeric vector of sampling weigths (optional).
}
  \item{param}{
Parameter specifying the extended Gini index (must be positive).
}
  \item{decomp}{
Character string specifying the decomposition. This must be one of \code{"BM"}
for the Bhattacharya and Mahalanobis (1967) decomposition or \code{"YL"} for the
Yitzhaki and Lerman (1991) decomposition.
}
  \item{ELMO}{
When \code{ELMO} is \code{TRUE}, a "maximum" between-group inequality index is
estimated using the Elbers and alii method (2005).
}
}
\value{
A list of class \code{"ICI"} with components:
  \item{ineq}{a list with components \code{SGini} (value of inequality index)
  and \code{param} (value of parameter).}
  \item{decomp}{a list with components \code{within} (value of within-group
  inequality), \code{between} (value of between-group inequality),
  \code{overlap} (value of residual inequality) when \code{decomp} = \code{"BM"}
  or \code{stratif} (value of residual inequality) when
  \code{decomp} = \code{"YL"} and, if \code{ELMO} is \code{TRUE},
  \code{betweenELMO} (value of maximum between-group inequality).}
  \item{intra}{a list with components \code{SGiniGroups} (the subgroup values of
  inequality index) and \code{contribSGiniGroups} (the contribution of each
  subgroup to the total within-group inequality).}
  \item{stratif}{only if \code{decomp} = \code{"YL"}, a list with components
  \code{stratifGroups} (the index of stratification for each subgroup) and
  \code{contribStratifGroups} (the contribution of each subgroup to the total
  stratification).}
  \item{ws}{a list with components \code{wIntra} (the subgroup weights)
  and \code{sIntra} (the subgroup shares of \code{x}).}
  \item{nas}{a list with \code{NA} counts, including components \code{xNA},
  \code{zNA}, \code{wNA} and \code{totalNA}.} 
}
\references{
Bhattacharya N., Mahalanobis B. (1967) Regional disparities in household
consumption in India. \emph{Journal of the American Statistical Association},
62 (317), pp. 143-161.

Cowell F.A. (2000) Measurement of Inequality. In Atkinson A.B., Bourguignon F.
(Eds.) \emph{Handbook of Income Distribution}. Amsterdam, Elsevier,
Vol. 1, pp. 87-166.

Elbers C., Lanjouw P., Mistiaen J.A., Ozler B. (2005)
\href{http://go.worldbank.org/F6A68SVIZ0}{\emph{Re-Interpreting
Sub-Group Inequality Decompositions}}. World Bank, World Bank Policy Research
Working Paper 3687, 42 p.

Schechtman E., Yitzhaki S. (2008) Calculating the Extended Gini Coefficient from
Grouped Data: A Covariance Presentation. \emph{Bulletin of Statistics &
Economics}, 2(S08), pp. 64-69. 

Yitzhaki S., Lerman R. (1991) Income Stratification and Income Inequality.
\emph{Review of Income and Wealth}, 37(3), pp. 313-.29.
}
\seealso{
\code{\link{calcSGini}}
}
\examples{
data(hhbudgets)

decompSGini(x=hhbudgets[,"ingreso"], z=hhbudgets[,"estructura"], param=4)
decompSGini(x=hhbudgets[,"transporte"], z=hhbudgets[,"estructura"], w=hhbudgets[,"factor"], decomp="YL", ELMO=FALSE)
summary(decompSGini(x=hhbudgets[,"transporte"], z=hhbudgets[,"tenencia"], w=hhbudgets[,"factor"], param=1.5))
}
