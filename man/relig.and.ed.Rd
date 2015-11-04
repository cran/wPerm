\name{relig.and.ed}
\alias{relig.and.ed}
\docType{data}

\title{
%%   ~~ data name/kind ... ~~
Religiosity and Education
}

\description{
%%  ~~ A concise (1-5 lines) description of the dataset. ~~
Flat contingency table for religiosity and educational attainment for a
sample of 509 people worldwide.
}

\usage{data("relig.and.ed")}

\format{
  A data frame with 12 observations on the following 3 variables.
  \describe{
    \item{\code{RELIGIOUSITY}}{a factor with levels \code{Religious} \code{Not religious} \code{Atheist} \code{Do not know}}
    \item{\code{EDUCATION}}{a factor with levels \code{Basic} \code{Secondary} \code{Advanced}}
    \item{\code{COUNT}}{a numeric vector}
  }
}

\details{
%%  ~~ If necessary, more details than the __description__ above ~~
A worldwide poll on religion was conducted by WIN-Gallup International and
published as the document \emph{Global Index of Religiosity and Atheism}.
One question involved religious belief and educational attainment. The data
in the relig.and.ed dataset are based on the answers to that question.
}

\examples{
data(relig.and.ed)
str(relig.and.ed)
relig.and.ed
}

\keyword{datasets}
