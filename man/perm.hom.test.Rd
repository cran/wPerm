\name{perm.hom.test}
\alias{perm.hom.test}
%- Also NEED an '\alias' for EACH other topic documented here.

\title{
%%  ~~function to do ... ~~
Permutation Homogeneity Test
}

\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Performs a permutation (randomization) test for homogeneity of one variable
on two or more populations, using chi-square as the test statistic.
}

\usage{
perm.hom.test(x, type = c("cont", "flat", "raw"),
              variable = NULL, R = 9999)
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
  \item{variable}{
%%     ~~Describe \code{variable} here~~
an optional character string that gives the name of the variable whose
distributions are to be compared.}
  \item{R}{
%%     ~~Describe \code{R} here~~
number of replications (default = 9999).}
}


\details{
%%  ~~ If necessary, more details than the description above ~~
The null hypothesis is that the populations are homogeneous with respect
to the variable under consideration. The alternative hypothesis is that
the populations are nonhomogeneous with respect to the variable under
consideration.

Types of data frames permitted:

cont: In this type of data frame, the first variable gives either the
possible values of the variable under consideration or the populations.
The remaining variables give the observed frequencies.

flat: This type of data frame consists of three variables. The first
two variables give the pairs of possible values of the variable under
consideration and the populations; the third variable gives the
frequencies of the pairs.

raw: This type of data frame consists of two variables, which give the
raw data of the variable-values and populations.
}

\value{A list with class "perm.cs.hom" containing the following components:
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
\item{Perm.values }{the values of chi-square obtained from the permutations.}
\item{Header }{the main title for the output.}
\item{Variable }{the name of the variable whose distributions are to be compared or NULL.}
\item{Statistic }{the statistic used for the permutation test; here, always chi.square.}
\item{Observed }{the value of the chi-square statistic for the observed data.}
\item{n }{the (total) sample size.}
\item{Null }{the null hypothesis; here, always homogeneous.}
\item{Alternative }{the alternative hypothesis; here, always nonhomogeneous.}
\item{P.value }{the P-value or a statement like P < 0.001.}
\item{p.value }{the P-value.}
}

\author{
%%  ~~who you are~~
Neil A. Weiss
}

\examples{
# Self-concept for independent random samples of sighted and blind
# Indian adolescents.
data("self")
str(self)
self
# Note that self is in the form of a contingency table ("cont").

# Permutation homogeneity test to decide whether a difference exists in
# self-concept distributions between sighted and blind Indian adolescents,
# using 999 replications.
perm.hom.test(self, "cont", "Self-concept", 999)
# Or, equivalently, since "cont" is the default "type":
perm.hom.test(self, variable = "Self-concept", R = 999)
}

\concept{ permutation tests }
\concept{ randomization tests }
\concept{ homogeneity test }
\concept{ distributions comparison }