\name{salary}
\alias{salary}
\docType{data}

\title{
%%   ~~ data name/kind ... ~~
Faculty Salaries
}

\description{
%%  ~~ A concise (1-5 lines) description of the dataset. ~~
Salaries, in thousands of dollars rounded to the nearest hundred, for independent
random samples of 35 faculty members from private institutions and 30 faculty
members from public institutions.
}

\usage{data("salary")}

\format{
  A data frame with 65 observations on the following 2 variables.
  \describe{
    \item{\code{TYPE}}{a factor with levels \code{PRIVATE} \code{PUBLIC}}
    \item{\code{SALARY}}{a numeric vector}
  }
}

\details{
%%  ~~ If necessary, more details than the __description__ above ~~
The American Association of University Professors (AAUP) conducts salary
studies of college professors and publishes its findings in \emph{AAUP Annual
Report on the Economic Status of the Profession}. Independent random
samples of 35 faculty members in private institutions and 30 faculty members
in public institutions yielded the salaries, in thousands of dollars rounded
to the nearest hundred, provided in the salary dataset.
}

\examples{
data(salary)
str(salary)
plot(salary)
attach(salary)
detach(salary)
}

\keyword{datasets}
