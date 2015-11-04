\name{experimental}
\alias{experimental}
\docType{data}

\title{
%%   ~~ data name/kind ... ~~
Exam Scores for Algebra Experimental Group
}

\description{
%%  ~~ A concise (1-5 lines) description of the dataset. ~~
The final-exam scores (out of 40 possible) for an experimental group of
20 algebra students.
}

\usage{data("experimental")}
\format{
  The format is:
 num [1:20] 36 35 35 31 30 29 27 27 26 23 ...
}

\details{
%%  ~~ If necessary, more details than the __description__ above ~~
One year at Arizona State University, the algebra course director
decided to experiment with a new teaching method that might reduce
variability in final-exam scores by eliminating lower scores. The
director randomly divided the algebra students who were registered
for class at 9:40 A.M. into two groups. One of the groups, called
the \emph{control group}, was taught the usual algebra course; the other
group, called the \emph{experimental group}, was taught by the new teaching
method. Both classes covered the same material, took the same unit
quizzes, and took the same final exam at the same time. The final-exam
scores (out of 40 possible) for the students in the experimental group
are provided in the experimental dataset.
}

\examples{
data(experimental)
str(experimental)
boxplot(experimental)
qqnorm(experimental)
}
\keyword{datasets}
