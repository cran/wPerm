\name{self}
\alias{self}
\docType{data}

\title{
%%   ~~ data name/kind ... ~~
Self-Concept and Sightedness
}

\description{
%%  ~~ A concise (1-5 lines) description of the dataset. ~~
Contingency table on self-concept for independent random samples of sighted
and blind Indian adolescents.
}

\usage{data("self")}

\format{
  A data frame with 2 observations on the following 4 variables.
  \describe{
    \item{\code{SIGHTEDNESS}}{a factor with levels \code{Blind} \code{Sighted}}
    \item{\code{High}}{a numeric vector}
    \item{\code{Moderate}}{a numeric vector}
    \item{\code{Low}}{a numeric vector}
  }
}

\details{
%%  ~~ If necessary, more details than the __description__ above ~~
Self-concept can be defined as the general view of oneself in terms of personal
value and capabilities. A study of whether visual impairment affects self-concept
was reported in the article cited below. The researchers classified self-concept
as high, moderate, or low. Independent random samples of sighted and blind Indian adolescents gave the data on self-concept presented in the self dataset.
}

\source{
%%  ~~ reference to a publication or URL from which the data were obtained ~~
Halder, S. and Datta, P. (2014) An Exploration into Self Concept: A Comparative
Analysis between the Adolescents Who Are Sighted and Blind in India.
\emph{British Journal of Visual Impairment}, \strong{30}, pp. 31-41.
}

\examples{
data(self)
str(self)
self
}

\keyword{datasets}
