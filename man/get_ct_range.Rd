\name{get_ct_range}
\alias{get_ct_range}
\title{
Bin `ct` values and provide a label
}
\description{
Given a `ct` value, return a character label identifying their bin
}
\usage{
get_ct_range(x, lower = 0, upper = 100, increment = 10)
}

\arguments{
  \item{x}{
A `ct` value to analyzed
}
  \item{lower}{
The minimum for a `ct` value
}
  \item{upper}{
The maximum for a `ct` value
}
  \item{increment}{
The region for a given `ct` label to span
}
}
