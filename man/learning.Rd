\name{learning}
\alias{learning}
\docType{data}

\title{
%%   ~~ data name/kind ... ~~
Social Class and Nursery-Rhyme Knowledge
}

\description{
%%  ~~ A concise (1-5 lines) description of the dataset. ~~
Contingency table of social class and nursery-rhyme knowledge
for 66 children in kindergarten through second grade. 
}

\usage{data("learning")}
\format{
  A data frame with 2 observations on the following 4 variables.
  \describe{
    \item{\code{SOCIAL_CLASS}}{a factor with levels \code{Middle} \code{Working}}
    \item{\code{A_few}}{a numeric vector}
    \item{\code{Some}}{a numeric vector}
    \item{\code{Lots}}{a numeric vector}
  }
}

\details{
%%  ~~ If necessary, more details than the __description__ above ~~
M. Stuart et al. studied various aspects of grade-school children
and their mothers. The researchers gave a questionnaire to parents
of 66 children in kindergarten through second grade. Two social-class
groups, middle and working, were identified based on the mother's
occupation. One aspect of the study cross-classified social class
(of the mother) and nursery-rhyme knowledge (of the child). 
}

\source{
%%  ~~ reference to a publication or URL from which the data were obtained ~~
Stuart, M., Dixon, M., Masterson, J., and Quinlan, P. (1998) Learning to Read
at Home and at School. \emph{British Journal of Educational Psychology},
\strong{68}, pp. 3-14.
}

\examples{
data(learning)
str(learning)
learning
}

\keyword{datasets}
