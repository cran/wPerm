\name{elmendorf}
\alias{elmendorf}
\docType{data}

\title{
%%   ~~ data name/kind ... ~~
Elmendorf Tear-Strength Data
}

\description{
%%  ~~ A concise (1-5 lines) description of the dataset. ~~
Elmendorf tear strengths, in grams, for independent samples of
Brand A and Brand B vinyl floor coverings.
}

\usage{data("elmendorf")}

\format{
  A data frame with 20 observations on the following 2 variables.
  \describe{
    \item{\code{BRAND}}{a factor with levels \code{BRAND.A} \code{BRAND.B}}
    \item{\code{STRENGTH}}{a numeric vector}
  }
}

\details{
Variation within a method used for testing a product is an essential factor in
deciding whether the method should be employed. Indeed, when the variation of
such a test is high, ascertaining the true quality of a product is difficult.
The Elmendorf tear test is used to evaluate material strength for various
manufactured products. In the article cited below, researchers investigated
the variation of that test. For one aspect of the study, they randomly and
independently obtained the data in "elmendorf" on Elmendorf tear strength, in
grams, of two different brands of vinyl floor coverings.
}

\source{
%%  ~~ reference to a publication or URL from which the data were obtained ~~
Phillips, A., Jeffries, R., Schneider, J., and Frankoski, S. (1997) Using
Repeatability and Reproducibility Studies to Evaluate a Destructive Test Method.
\emph{Quality Engineering}, \strong{10}, pp. 283-290.
}

\examples{
data(elmendorf)
str(elmendorf)
plot(elmendorf)
attach(elmendorf)
detach(elmendorf)
}

\keyword{datasets}
