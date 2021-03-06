% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/transform-code.R
\name{transform_code}
\alias{transform_code}
\title{Transform code from R, Rmd or Rnw files}
\usage{
transform_code(path, fun, verbose = FALSE, ...)
}
\arguments{
\item{path}{A vector of file paths.}

\item{fun}{A function that returns a character vector.}

\item{verbose}{Should the function show a message with a list of changed
files?}

\item{...}{Further arguments passed to \code{enc::transform_lines_enc()}.}
}
\description{
A wrapper for \code{\link[enc:transform_lines_enc]{enc::transform_lines_enc()}} which initiates the styling of
either R, Rmd or Rnw files by passing the relevant transformer function for each
case.
}
\keyword{internal}
