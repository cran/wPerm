\name{perm.oneway.anova}
\alias{perm.oneway.anova}
%- Also NEED an '\alias' for EACH other topic documented here.

\title{
%%  ~~function to do ... ~~
Permutation One-Way ANOVA Test
}

\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Performs a permutation (randomization) test for location, using trimmed
data (trim = 0 gives untrimmed data) on several independent samples.}

\usage{
perm.oneway.anova(x, y, trim = 0, ford = NULL, R = 9999)
}
%- maybe also 'usage' for other objects documented here.

\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
a (non-empty) vector of observations of the (response) variable.}
  \item{y}{
%%     ~~Describe \code{y} here~~
a vector of the corresponding populations (levels of the factor).}
  \item{trim}{
%%     ~~Describe \code{trim} here~~
the fraction (0 to 0.5) of observations to be trimmed from each sample;
default is 0.}
  \item{ford}{
%%     ~~Describe \code{ford} here~~
an optional integer vector giving the change from alphabetical order
of the populations to some other desired order.}
  \item{R}{
%%     ~~Describe \code{R} here~~
number of replications (default = 9999).}
}

\details{
%%  ~~ If necessary, more details than the description above ~~
The null hypothesis is that the distributions of the variable are 
identical on all the populations. The alternative hypothesis is that
the distributions of the variable have systematically larger values
on some of the populations than on others.
}

\value{A list with class "perm.oneway.anova" containing the following components:
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
\item{Perm.values }{the values of the test statistic obtained from the permutations.}
\item{Header }{the main title for the output.}
\item{Response }{the name of the (response) variable.}
\item{Factor }{the name of the factor.}
\item{Levels }{the populations (levels of the factor).}
\item{n }{the sample sizes.}
\item{Mean }{the sample means.}
\item{SD }{the sample standard deviations.}
\item{Statistic }{the test statistic; here, always F.trim.}
\item{Observed }{the observed value of the test statistic.}
\item{P.value }{the P-value or a statement like P < 0.001.}
\item{p.value }{the P-value.}
\item{Trim }{the trim value.}
}

\author{
%%  ~~who you are~~
Neil A. Weiss
}

\examples{
# Last year's energy consumptions, to the nearest 10 million BTU, for
# independent random samples of households in the four U.S. regions.
data("energy")
str(energy)
attach(energy)

# Permutation one-way ANOVA to decide whether the energy distributions
# have systematically larger values in some U.S. regions than in others.
# Regions ordered to Northeast, Midwest, South, and West; 999 replications.
perm.oneway.anova(ENERGY, REGION, ford = c(2,1,3,4), R = 999)

detach(energy)  # clean up
} 

\concept{ permutation tests }
\concept{ randomization tests }
\concept{ tests for difference in location }
\concept{ inferences for several independent samples }
\concept{ one-way ANOVA }
\concept{ permutation one-way ANOVA test }
