% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/base_model.R
\name{item_standard_deviation}
\alias{item_standard_deviation}
\title{Generate a NONMEM code string with an stdev calculation}
\usage{
item_standard_deviation(levels)
}
\arguments{
\item{levels}{A vector of levels}
}
\value{
A NONMEM code string with sum P1*(1-PPRED)**2 etc
}
\description{
Generate a NONMEM code string with an stdev calculation
}
