\name{energy}
\alias{energy}
\docType{data}

\title{
%%   ~~ data name/kind ... ~~
Energy Consumption
}

\description{
%%  ~~ A concise (1-5 lines) description of the dataset. ~~
Last year's energy consumptions for independent random samples
of households in the four U.S. regions.
}

\usage{data("energy")}
\format{
  A data frame with 20 observations on the following 2 variables.
  \describe{
    \item{\code{ENERGY}}{a numeric vector}
    \item{\code{REGION}}{a factor with levels \code{Midwest} \code{Northeast} \code{South} \code{West}}
  }
}

\details{
%%  ~~ If necessary, more details than the __description__ above ~~
The Energy Information Administration gathers data on residential
energy consumption and expenditures and publishes its findings
in \emph{Residential Energy Consumption Survey}. Independent random
samples of households in the four U.S. regions yielded the data on
last year's energy consumptions presented in the energy dataset.
The data are displayed to the nearest 10 million BTU.
}

\examples{
data(energy)
str(energy)
attach(energy)
plot(ENERGY ~ REGION)
detach(energy)
}

\keyword{datasets}
