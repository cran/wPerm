\name{perm.paired.loc}
\alias{perm.paired.loc}
%- Also NEED an '\alias' for EACH other topic documented here.

\title{
%%  ~~function to do ... ~~
Paired-Sample Permutation Test for Difference in Location
}

\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Performs a permutation (randomization) test for difference in location
based on a paired sample.
}

\usage{
perm.paired.loc(x, y, parameter, variable = NULL,
                alternative = c("two.sided", "less", "greater"),
                R = 9999)
}
%- maybe also 'usage' for other objects documented here.

\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
a numeric vector of data values representing the first components of the pairs.}
  \item{y}{
%%     ~~Describe \code{y} here~~
a numeric vector of data values representing the second components of the pairs.}
  \item{parameter}{
%%     ~~Describe \code{parameter} here~~
the location parameter under consideration (e.g., mean, trimmed mean).}
  \item{variable}{
%%     ~~Describe \code{variable} here~~
an optional character string that gives the name of the variable under consideration.}
  \item{alternative}{
%%     ~~Describe \code{alternative} here~~
a character string specifying the alternative hypothesis; must be one of "two.sided"
(default), "less", or "greater".}
  \item{R}{
%%     ~~Describe \code{R} here~~
number of replications (default = 9999).}
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

\value{A list with class "perm.paired.loc" containing the following components:
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
\item{Perm.values }{the values of the test statistic obtained from the permutations.}
\item{Header }{the main title for the output.}
\item{Variable }{the name of the variable under consideration or NULL.}
\item{Pop.1 }{the first population.}
\item{Pop.2 }{the second population.}
\item{n }{the sample size.}
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

\examples{
# Ages of a sample of 10 heterosexual spouses.
data("spouse.ages")
str(spouse.ages)
attach(spouse.ages)

# Paired-sample permutation test to decide whether there is a difference
# in location for age distributions of married men and married women,
# using the mean as the location parameter. Variable named "Age".
perm.paired.loc(HUSBAND, WIFE, mean, "Age")

# Paired-sample permutation test to decide whether married men have
# systematically greater ages than married women, using the 10% trimmed
# mean as the location parameter.
tr10.mean <- function(x) mean(x, trim = 0.10)
perm.paired.loc(HUSBAND, WIFE, tr10.mean, alternative = "greater")

detach(spouse.ages)  # clean up.
}

\concept{ permutation tests }
\concept{ randomization tests }
\concept{ tests for difference in location }
\concept{ paired-sample inferences }
