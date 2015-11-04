\name{perm.relation}
\alias{perm.relation}
%- Also NEED an '\alias' for EACH other topic documented here.

\title{
%%  ~~function to do ... ~~
Permutation Test for a Relationship
}

\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Performs a permutation (randomization) test for a relationship (correlation,
association) for two quantitative variables, using Pearson's r (product moment
correlation coefficient), Spearman's rho (rank correlation coefficient), or
Kendall's tau as the test statistic.
}

\usage{
perm.relation(x, y, method = c("pearson", "kendall", "spearman"),
              alternative = c("two.sided", "less", "greater"),
              R = 9999)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
a numeric vector of data values representing the first variable.}
  \item{y}{
%%     ~~Describe \code{y} here~~
a numeric vector of data values representing the second variable.}
  \item{method}{
%%     ~~Describe \code{method} here~~
a character string indicating which method is to be used for the test;
one of "pearson" (default), "kendall", or "spearman".}
  \item{alternative}{
%%     ~~Describe \code{alternative} here~~
a character string specifying the alternative hypothesis; must be one
of "two.sided" (default), "less", or "greater".}
  \item{R}{
%%     ~~Describe \code{R} here~~
number of replications (default = 9999).}

}
\details{
%%  ~~ If necessary, more details than the description above ~~
The null hypothesis is that there is no relationship between the variables.
 
The possible alternative hypotheses are:

Two tailed ("two.sided"): There is a relationship between the
variables---"relation".
 
Left tailed ("less"): There is a negative relationship between the
variables---"neg.relation".

Right tailed ("greater"): There is a positive relationship between the
variables---"pos.relation".
}

\value{A list with class "perm.two.var" containing the following components:
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
\item{Perm.values }{the values of the test statistic obtained from the permutations.}
\item{Header }{the main title for the output.}
\item{Variable.1 }{the name of the first variable.}
\item{Variable.2 }{the name of the second variable.}
\item{n }{the sample size.}
\item{Statistic }{the test statistic.}
\item{Observed }{the observed value of the test statistic.}
\item{Null }{the null hypothesis; here, always no relation.}
\item{Alternative }{the alternative hypothesis.}
\item{P.value }{the P-value or a statement like P < 0.001.}
\item{p.value }{the P-value.}
}

\author{
%%  ~~who you are~~
Neil A. Weiss
}

\examples{
# Prices, in euros, of a 50cl bottle of water and distances, in meters,
# of convenience stores from the Contemporary Art Museum in El Raval,
# Barcelona.
data("water")
str(water)
attach(water)

# Permutation test to decide whether a negative relationship exists
# between price and distance, using Pearson's r as the test statistic.
perm.relation(PRICE, DISTANCE, alternative = "less")

# Permutation test to decide whether a negative relationship exists
# between price and distance, using Kendall's tau as the test statistic.
perm.relation(PRICE, DISTANCE, "kendall", "less")

# Permutation test to decide whether a negative relationship exists
# between price and distance, using Spearman's rho as the test statistic.
perm.relation(PRICE, DISTANCE, "spearman", "less")

detach(water)  # clean up.
}

\concept{ permutation tests }
\concept{ randomization tests }
\concept{ correlation test }
\concept{ association test }
\concept{ tests for a relationship }
\concept{ Pearson's r }
\concept{ Spearman's rho }
\concept{ Kendall's tau }
