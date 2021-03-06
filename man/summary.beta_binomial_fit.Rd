% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/beta_binom.R
\name{summary.beta_binomial_fit}
\alias{summary.beta_binomial_fit}
\title{Summarize the posterior draws from a fitted Beta-Binomial model}
\usage{
\method{summary}{beta_binomial_fit}(x, conf_level = 0.95,
  interval_type = c("quantile", "HPD"), ...)
}
\arguments{
\item{x}{An object of class "beta_binomial_fit".}

\item{conf_level}{Probability level for credible intervals. 95\% by default.}

\item{interval_type}{Method for computing intervals ("quantile" or "HPD").}
}
\value{
A data frame consistent with the output of David Robinson's
  \code{broom::tidyMCMC()} tidying method:
  \describe{
    \item{estimate}{Point estimate (mean of posterior draws).}
    \item{std.error}{Standard error.}
    \item{conf.low}{Credible interval lower bound.}
    \item{conf.high}{Credible interval upper bound.}
  }
}
\description{
Outputs a data frame of point estimates and Bayesian confidence
  intervals for group proportions, proportion difference, relative risk, and
  odds ratio.
}
\examples{
\dontrun{
summary(beta_binom(x = c(200, 250), n = c(350, 550)))
}
}

