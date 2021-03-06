% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/estimation.R
\name{estimate_item_parameters}
\alias{estimate_item_parameters}
\alias{data_use_strategies}
\title{Estimate item parameter}
\usage{
estimate_item_parameters(model, data_use_strategy = "baseline")

data_use_strategies 
#c("baseline", "all-pooled", "all-baseref")
}
\arguments{
\item{model}{The model}

\item{data_use_strategy}{The method of how to use the available longitudinal data}
}
\value{
A data frame with the estimated item parameters
}
\description{
This function estimates the item parameters in a model using the \code{mirt} package. The dataset and the item models 
are taken from the provided model object.
}
\details{
The available strategies of how to use the longitudinal data include 'baseline' (the default), 'all-pooled' and 'all-baseref'.

With the 'baseline' strategy only the baseline data is used for the estimation and all other data is ignored.  

The 'all-pooled' strategy uses all available data and treats each visit as a separate subject during estimation.

The 'all-baseref' strategy also uses all available data but defines the population at baseline as a reference (mean 0, variance 1). 
Observations from later timepoints are treated as separate subjects.
}
