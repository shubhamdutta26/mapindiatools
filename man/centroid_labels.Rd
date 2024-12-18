% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/map_india.R
\name{centroid_labels}
\alias{centroid_labels}
\title{Retrieve centroid labels}
\usage{
centroid_labels(regions = c("states", "districts"))
}
\arguments{
\item{regions}{The region breakdown for the map, can be one of
(\code{"states"}, \code{"districts"}, as specified by the internal file names.
The default is \code{"states"}.}
}
\value{
An `sf` data frame of state or district centroid labels and positions
  relative to the coordinates returned by the \code{map_india} function.
}
\description{
Retrieve centroid labels
}
