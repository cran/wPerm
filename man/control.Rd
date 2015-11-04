\name{control}
\alias{control}
\docType{data}

\title{
%%   ~~ data name/kind ... ~~
Exam Scores for Algebra Control Group
}

\description{
%%  ~~ A concise (1-5 lines) description of the dataset. ~~
The final-exam scores (out of 40 possible) for a control group of
41 algebra students.
}

\usage{data("control")}
\format{
  The format is:
 num [1:41] 36 35 35 33 32 32 31 29 29 28 ...
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
scores (out of 40 possible) for the students in the control group
are provided in the control dataset.
}

\examples{
data(control)
str(control)
boxplot(control)
qqnorm(control)
}

\keyword{datasets}
