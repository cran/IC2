\name{summary.ICI}
\alias{summary.ICI}
\title{
Summarize a ICI Object
}
\description{
Print the main caracteristics of an \code{ICI} object.
}
\usage{
\method{summary}{ICI}(object, \dots)
}
\arguments{
  \item{object}{
An \code{ICI} object.
}
  \item{\dots}{
Number of significant digits to be used in the result.
}
}
\details{
Values of the index and the parameter are systematically printed. If \code{x}
is the result of a subgroup decomposition, the function also prints the type
of decomposition (when necessary), the values of the between-group,
within-group and residual (when necessary) inequality indices and,
if calculated, the maximum between-group inequality index.
}
\examples{
data(hhbudgets)

summary(calcAtkinson(hhbudgets[,"ingreso"], epsilon=3), digits=3)
summary(decompGEI(hhbudgets[,"ingreso"], hhbudgets[,"estructura"], alpha=1.1))
}
