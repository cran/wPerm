\name{water}
\alias{water}
\docType{data}

\title{
%%   ~~ data name/kind ... ~~
Water Price vs Distance from Museum
}
\description{
%%  ~~ A concise (1-5 lines) description of the dataset. ~~
Prices, in euros, of a 50cl bottle of water and distances, in meters, of
convenience stores from the Contemporary Art Museum in El Raval, Barcelona.
}

\usage{data("water")}

\format{
  A data frame with 10 observations on the following 2 variables.
  \describe{
    \item{\code{DISTANCE}}{a numeric vector}
    \item{\code{PRICE}}{a numeric vector}
  }
}

\details{
%%  ~~ If necessary, more details than the __description__ above ~~
Does the price of a convenience-store item, such as a bottle of water,
decrease as distance from the Contemporary Art Museum in El Raval,
Barcelona, increases? A sample of 10 convenience stores yielded the data
presented in the water dataset on price, in euros, of a 50cl bottle of
water and distance, in meters, of the convenience store from the
Contemporary Art Museum.  
}

\source{
%%  ~~ reference to a publication or URL from which the data were obtained ~~
Barcelona Field Studies Centre,
\url{http://geographyfieldwork.com/SpearmansRank.htm}.
}

\examples{
data(water)
str(water)
plot(water)
attach(water)
detach(water)
}

\keyword{datasets}
