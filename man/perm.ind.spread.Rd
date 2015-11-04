\name{perm.ind.spread}
\alias{perm.ind.spread}
%- Also NEED an '\alias' for EACH other topic documented here.

\title{
%%  ~~function to do ... ~~
Permutation Test for Difference in Spread
}

\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Performs a permutation (randomization) test for difference in spread (variation)
based on independent samples from two populations.
}

\usage{
perm.ind.spread(x, y, parameter, stacked = TRUE, variable = NULL,
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
the spread parameter under consideration (e.g., sd, var).}
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
number of replications (default = 9999).}
}

\details{
%%  ~~ If necessary, more details than the description above ~~
The null hypothesis is that the distributions of the variable on the 
two populations are identical---"identical".
 
The possible alternative hypotheses are:

Two tailed ("two.sided"): The distribution of the variable on the first population has a
different spread than that of the variable on the second population---"different.spread".

Left tailed ("less"): The distribution of the variable on the first population has a
smaller spread than that of the variable on the second population---"smaller.spread".

Right tailed ("greater"): The distribution of the variable on the first population has a
larger spread than that of the variable on the second population---"larger.spread".
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

\examples{
# Manufacturers use the Elmendorf tear test to evaluate material
# strength for various manufactured products. 
#
# Elmendorf tear strength, in grams, of two different vinyl floor
# coverings, Brand A and Brand B.
data("elmendorf")
str(elmendorf)
# Note that the data are stacked.

# Permutation test to decide whether there is a difference in spread of
# tear strength for Brand A and Brand B vinyl floor coverings, using the
# standard deviation as the spread parameter.
attach(elmendorf)
perm.ind.spread(STRENGTH, BRAND, sd)

detach(elmendorf)  # clean up

# Final-exam scores (out of 40 possible) for two groups of algebra
# students. One group, called the control group, was taught the usual
# algebra course; the other group, called the experimental group, was
# taught by a new teaching method.
data("control")
str(control)
data("experimental")
str(experimental)

# Permutation test to decide whether the new teaching method reduces
# variation in final-exam scores, using the variance as the spread
# parameter.
perm.ind.spread(control, experimental, var, stacked = FALSE,
variable = "Score", alternative = "greater")
}

\concept{ permutation tests }
\concept{ randomization tests }
\concept{ tests for difference in spread }
\concept{ independent-samples inferences }
