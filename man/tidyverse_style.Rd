% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/style-guides.R
\name{tidyverse_style}
\alias{tidyverse_style}
\title{The tidyverse style}
\usage{
tidyverse_style(scope = "tokens", strict = TRUE, indent_by = 2,
  start_comments_with_one_space = FALSE,
  reindention = tidyverse_reindention(),
  math_token_spacing = tidyverse_math_token_spacing())
}
\arguments{
\item{scope}{The extent of manipulation. Can range from "none" (least
invasive) to "token" (most invasive). See 'Details'. This argument is a
vector of length one.}

\item{strict}{A logical value indicating whether a set of strict
or not so strict transformer functions should be returned. Compare the
functions returned with or without \code{strict = TRUE}. For example,
\code{strict = TRUE} means force \emph{one} space e.g. after "," and \emph{one} line break
e.g. after a closing curly brace. \code{strict = FALSE} means to set spaces and
line breaks to one if there is none and leave the code untouched otherwise.
See 'Examples'.}

\item{indent_by}{How many spaces of indention should be inserted after
operators such as '('.}

\item{start_comments_with_one_space}{Whether or not comments should start
with only one space (see \code{\link[=start_comments_with_space]{start_comments_with_space()}}).}

\item{reindention}{A list of parameters for regex re-indention, most
conveniently constructed using \code{\link[=specify_reindention]{specify_reindention()}}.}

\item{math_token_spacing}{A list of parameters that define spacing around
math token, conveniently constructed using \code{\link[=specify_math_token_spacing]{specify_math_token_spacing()}}.}
}
\description{
Style code according to the tidyverse style guide.
}
\details{
The following options for \code{scope} are available.
\itemize{
\item "none": Performs no transformation at all.
\item "spaces": Manipulates spacing between token on the same line.
\item "indention": In addition to "spaces", this option also manipulates the
indention level.
\item "line_breaks": In addition to "indention", this option also manipulates
line breaks.
\item "tokens": In addition to "line_breaks", this option also manipulates
tokens.
}

As it becomes clear from this description, more invasive operations can only
be performed if all less invasive operations are performed too.
}
\examples{
style_text("call( 1)", style = tidyverse_style, scope = "spaces")
style_text("call( 1)", transformers = tidyverse_style(strict = TRUE))
style_text(c("ab <- 3", "a  <-3"), strict = FALSE) # keeps alignment of "<-"
style_text(c("ab <- 3", "a  <-3"), strict = TRUE) # drops alignment of "<-"
}
\concept{obtain transformers}
\concept{style_guides}
