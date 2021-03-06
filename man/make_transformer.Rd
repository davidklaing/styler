% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/transform-files.R
\name{make_transformer}
\alias{make_transformer}
\title{Closure to return a transformer function}
\usage{
make_transformer(transformers, include_roxygen_examples)
}
\arguments{
\item{transformers}{A list of transformer functions that operate on flat
parse tables.}

\item{include_roxygen_examples}{Whether or not to style code in roxygen
examples.}
}
\description{
This function takes a list of transformer functions as input and
returns a function that can be applied to character strings
that should be transformed.
}
\keyword{internal}
