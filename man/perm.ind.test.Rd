\name{perm.ind.test}
\alias{perm.ind.test}
%- Also NEED an '\alias' for EACH other topic documented here.

\title{
%%  ~~function to do ... ~~
Permutation Independence Test
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Performs a permutation (randomization) test for independence of two
variables, using chi-square as the test statistic.
}

\usage{
perm.ind.test(x, type = c("cont", "flat", "raw"),
              var.names = NULL, R = 9999)
}
%- maybe also 'usage' for other objects documented here.

\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
a data frame (see details below).}
  \item{type}{
%%     ~~Describe \code{type} here~~
a character string indicating the type of data frame; must be one
of "cont" (default), "flat", or "raw".}
  \item{var.names}{
%%     ~~Describe \code{var.names} here~~
an optional character string of length two that gives the names of the
variables under consideration; if omitted Var.1 and Var.2 are used.}
  \item{R}{
%%     ~~Describe \code{R} here~~
number of replications (default = 9999).}
}

\details{
%%  ~~ If necessary, more details than the description above ~~
The null hypothesis is that the two variables are not associated (i.e.,
are independent). The alternative hypothesis is that the two variables
are associated (i.e., are dependent).

Types of data frames permitted:

cont: In this type of data frame, the first variable gives the possible
values of one of the two variables under consideration. The remaining
variables of the data frame give the observed frequencies.

flat: This type of data frame consists of three variables. The first
two variables give the pairs of possible values of the two variables
under consideration; the third variable of the data frame gives the
frequencies of the pairs.

raw: This type of data frame consists of two variables, which give the
raw data of the two variables under consideration.
}

\value{A list with class "perm.two.var" containing the following components:
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
\item{Perm.values }{the values of chi-square obtained from the permutations.}
\item{Header }{the main title for the output.}
\item{Variable.1 }{the name of the first variable or Var.1}
\item{Variable.2 }{the name of the second variable or Var.2}
\item{Statistic }{the statistic used for the permutation test; here, always chi.square.}
\item{Observed }{the value of the chi-square statistic for the observed data.}
\item{n }{the sample size.}
\item{Null }{the null hypothesis; here, always nonassociated.}
\item{Alternative }{the alternative hypothesis; here, always associated.}
\item{P.value }{the P-value or a statement like P < 0.001.}
\item{p.value }{the P-value.}
}

\author{
%%  ~~who you are~~
Neil A. Weiss
}

\examples{
# Religious belief vs education for a sample of 509 people.
data("relig.and.ed")
str(relig.and.ed)
relig.and.ed
# Note that relig.and.ed is in the form of a flat contingency table ("flat").

# Permutation independence test to decide whether an association exists
# between religiosity and education, using 999 replications.
perm.ind.test(relig.and.ed, "flat", c("Religiosity", "Education"), 999)

# Social class vs nursery-rhyme knowledge for a sample of 66 grade-school
# children.
data("learning")
str(learning)
learning
# Note that the learning data is in the form of a contingency table ("cont").

# Permutation independence test to decide whether an association exists
# between social class and nursery-rhyme knowledge, using 999 replications.
perm.ind.test(learning, "cont", c("Social class", "Nursery-rhyme knowledge"), 999)
# Or, equivalently, since "cont" is the default "type":
perm.ind.test(learning, var.names = c("Social class", "Nursery-rhyme knowledge"), R = 999)
}

\concept{ permutation tests }
\concept{ randomization tests }
\concept{ independence test }
\concept{ test for association }
