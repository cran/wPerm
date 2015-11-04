\name{bmi}
\alias{bmi}
\docType{data}

\title{
%%   ~~ data name/kind ... ~~
Denosumab and Osteoporosis
}

\description{
%%  ~~ A concise (1-5 lines) description of the dataset. ~~
Body mass index for postmenopausal women with osteoporosis given
six different treatments of Denosumab.
}

\usage{data("bmi")}

\format{
  A data frame with 236 observations on the following 2 variables.
  \describe{
    \item{\code{BMI}}{a numeric vector}
    \item{\code{TREATMENT}}{a factor with levels \code{100-mg} \code{14-mg} \code{210-mg} \code{60-mg} \code{Placebo}}
  }
}

\details{
%%  ~~ If necessary, more details than the __description__ above ~~
A clinical study was conducted to see whether an antibody called
denosumab is effective in treatment of osteoporosis of postmenopausal
women. In the article cited below, researchers reported on a study
where women with osteoporosis were randomly assigned into groups that
received either a placebo, or a six-month regimen of Denosumab at doses
of 14 mg, 60 mg, 100 mg, or 210 mg. The bmi dataset provides data on
the body-mass indexes (BMI) of the women in each treatment group.
}

\source{
%%  ~~ reference to a publication or URL from which the data were obtained ~~
McClung, M., et al. (2006) Denosumab in Postmenopausal Women with Low Bone
Mineral Density. \emph{New England Journal of Medicine}, \strong{354},
pp. 821-831.
}

\examples{
data(bmi)
str(bmi)
attach(bmi)
plot(BMI ~ TREATMENT)
detach(bmi)
}

\keyword{datasets}
