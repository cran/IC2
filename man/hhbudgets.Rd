\name{hhbudgets}
\docType{data}
\alias{hhbudgets}
\title{
Mexican Households Budgets
}
\description{
Household income and expenditure metadata extracted from the 2008 Mexican ENIGH
(Household Income and Expenditure Survey).
}
\usage{
data(hhbudgets)
}
\format{A data frame with 2542 observations and 7 variables.
\describe{
  \item{factor}{Population inflating weights.
}
  \item{tenencia}{Home tenancy, factor with levels \code{rentada} (rented),
  \code{prestada} (lent), \code{propia_pagando} (owned, paying back),
  \code{propia} (owned), \code{litigio} (disputed), \code{otra} (other).
}
  \item{estructura}{Household structure, factor with levels
  \code{unipersonal} (single), \code{nuclear} (nuclear),
  \code{ampliado} (extended), \code{compuesto} (nuclear or extended with
  unrelated persons), \code{coresidente} (share housing).
}
  \item{ingreso}{Total household income.
}
  \item{transporte}{Total transport (private and public) expenditure.
}
  \item{publico}{Public transport expenditure.
}
  \item{mantenimiento}{Total expenditure for vehicle maintenance and repair.
}
}
}
\details{
The data set is a small excerpt of the original data set. More information and
the whole data set are available at
\url{http://www.inegi.org.mx/sistemas/microdatos2/encuestas.aspx?c=26182&s=est}.
}
\source{
\href{http://www.inegi.org.mx/default.aspx?}{INEGI}, Mexico.
}
\references{
INEGI (2009) \emph{Encuesta Nacional de Ingresos y Gastos de los Hogares 2008.
Conociendo la base de datos}. Mexico, 98 p.
}
\examples{
data(hhbudgets)
names(hhbudgets)
}
