% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/validators.R
\name{tif_is_tokens_list}
\alias{tif_is_tokens_list}
\title{Validate Tokens List Object}
\usage{
tif_is_tokens_list(tokens, warn = FALSE)
}
\arguments{
\item{tokens}{a tokens object to test for validity}

\item{warn}{logical. Should the function produce a
verbose warning for the condition for which
the validation fails. Useful for testing.}
}
\value{
a logical vector of length one indicating
               whether the input is a valid tokens
}
\description{
A valid corpus tokens object is (possibly named) list of
character vectors. The character vectors, as well as
names, should be in UTF-8 encoding. No other attributes
should be present in either the list or any of its elements.
}
\details{
The tests are run sequentially and the function returns,
with a warning if the warn flag is set, on the first test
that fails. We use this implementation because some tests
may fail entirely or be meaningless if the prior ones are
note passed.
}
\examples{
tokens <- list(doc1 = c("aujourd'hui", "maman", "est", "morte"),
               doc2 = c("it", "was", "a", "pleasure", "to", "burn"),
               doc3 = c("all", "this", "happened", "more", "or", "less"))
tif_is_tokens_list(tokens)

names(tokens) <- c("doc1", "doc2", "doc3")
tif_is_tokens_list(tokens)
}
