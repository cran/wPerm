\name{spouse.ages}
\alias{spouse.ages}
\docType{data}

\title{
%%   ~~ data name/kind ... ~~
Ages of Married People
}

\description{
%%  ~~ A concise (1-5 lines) description of the dataset. ~~
Ages, in years, of a random sample of 10 heterosexual married couples.
}

\usage{data("spouse.ages")}

\format{
  A data frame with 10 observations on the following 2 variables.
  \describe{
    \item{\code{HUSBAND}}{a numeric vector}
    \item{\code{WIFE}}{a numeric vector}
  }
}

\details{
%%  ~~ If necessary, more details than the __description__ above ~~
The U.S. Census Bureau publishes information on the ages of married people
in \emph{Current Population Reports}. A random sample of 10 heterosexual
married couples gave the data on ages, in years, shown in the spouse.ages
dataset.
}

\examples{
data(spouse.ages)
str(spouse.ages)
attach(spouse.ages)
detach(spouse.ages)
}

\keyword{datasets}
