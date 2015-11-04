\name{perm.ind.loc}
\alias{perm.ind.loc}
%- Also NEED an '\alias' for EACH other topic documented here.

\title{
%%  ~~function to do ... ~~
Independent-Samples Permutation Test for Difference in Location
}

\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Performs a permutation (randomization) test for difference in location
based on independent samples from two populations.
}

\usage{
perm.ind.loc(x, y, parameter, stacked = TRUE, variable = NULL,
             alternative = c("two.sided", "less", "greater"),
             R = 9999)
}
%- maybe also 'usage' for other objects documented here.
\arguments{

  \item{x}{
%%     ~~Describe \code{x} here~~
a numeric vector of observations of the variable (stacked case) or a
numeric vector of data values representing the first of the two
samples (unstacked case).}
  \item{y}{
%%     ~~Describe \code{y} here~~
a vector of corresponding population identifiers (stacked case) or a
numeric vector of data values representing the second of the two
samples (unstacked case).}
  \item{parameter}{
%%     ~~Describe \code{parameter} here~~
the location parameter under consideration (e.g., mean, trimmed mean).}
  \item{stacked}{
%%     ~~Describe \code{stacked} here~~
a logical value (default TRUE) indicating whether the data are stacked.}
  \item{variable}{
%%     ~~Describe \code{variable} here~~
an optional character string that gives the name of the variable under
consideration; ignored if stacked is TRUE.}
  \item{alternative}{
%%     ~~Describe \code{alternative} here~~
a character string specifying the alternative hypothesis;
must be one of "two.sided" (default), "less", or "greater".}
  \item{R}{
%%     ~~Describe \code{R} here~~
number of replications (default = 9999)}
}

\details{
%%  ~~ If necessary, more details than the description above ~~
The null hypothesis is that the distributions of the variable on the 
two populations are identical---"identical".

The possible alternative hypotheses are:

Two tailed ("two.sided"): The distribution of the variable on the first population has
either systematically smaller values or systematically larger values than
that of the variable on the second population---"shifted".

Left tailed ("less"): The distribution of the variable on the first population has
systematically smaller values than that of the variable on the second
population---"shifted.left".

Right tailed ("greater"): The distribution of the variable on the first population has
systematically larger values than that of the variable on the second
population---"shifted.right".
}

\value{A list with class "perm.ts.ind" containing the following components:
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
\item{Stacked }{TRUE if the data are stacked, FALSE otherwise.}
\item{Perm.values }{the values of the test statistic obtained from the permutations.}
\item{Header }{the main title for the output.}
\item{Variable }{the name of the variable under consideration or NULL.}
\item{Pop.1 }{the first population.}
\item{Pop.2 }{the second population.}
\item{n.1 }{the sample size for the first population.}
\item{n.2 }{the sample size for the second population.}
\item{Statistic }{the test statistic.}
\item{Observed }{the observed value of the test statistic.}
\item{Null }{the null hypothesis; here, always identical.}
\item{Alternative }{the alternative hypothesis.}
\item{P.value }{the P-value or a statement like P < 0.001.}
\item{p.value }{the P-value.}
}

\author{
%%  ~~who you are~~
Neil A. Weiss
}

\note{
%%  ~~further notes~~
For the permutation test, we need to assume that, under the null hypothesis, 
the two distributions are identical (i.e., the variable under consideration has
the same distribution on both populations). If the two distributions have the same
shape and spread, then a null hypothesis of equal population means or equal population
medians implies that the two distributions are identical.
}

\examples{
# Annual salaries, in thousands of dollars, for independent samples of
# faculty in private and public institutions.
data("salary")
str(salary)
attach(salary)
# Note that the data are stacked.

# Independent-samples permutation test to decide whether there is a
# difference in location for salaries of faculty in private and public
# institutions, using the mean as the location parameter.
perm.ind.loc(SALARY, TYPE, mean)

# Independent-samples permutation test to decide whether faculty in private
# institutions have systematically larger salaries than those in public
# institutions, using the 20% trimmed mean as the location parameter.
tr20.mean <- function(x) mean(x, trim = 0.20)
perm.ind.loc(SALARY, TYPE, tr20.mean, alternative = "greater")

detach(salary)  # clean up.
}

\concept{ permutation tests }
\concept{ randomization tests }
\concept{ tests for difference in location }
\concept{ independent-samples inferences }
