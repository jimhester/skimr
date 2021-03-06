% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/skim.R
\name{skim_to_wide}
\alias{skim_to_wide}
\title{Print skim result and return a single wide data frame of summary statistics}
\usage{
skim_to_wide(x, ...)
}
\arguments{
\item{x}{A \code{dataframe}.}

\item{...}{Further arguments passed to or from other methods.}
}
\value{
A wide data frame.
}
\description{
Returns a wide data frame with one row per variable and NA for statistics
 not calculated for a given type. This faciliates future processing.
}
\examples{
  skim_to_wide(iris)
  iris \%>\% skim_to_wide()
  iris \%>\% skim_to_wide() \%>\% dplyr::filter(type == "factor") \%>\% 
           dplyr::select(top_counts)
}
