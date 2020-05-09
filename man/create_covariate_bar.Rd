\name{create_covariate_bar}
\alias{create_covariate_bar}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Create a covariate bar
}
\description{
Construct a covariate bar object to be used with phylogenetic tree and SNP heatmap.
}
\usage{
create_covariate_bar(data = NULL, order = NULL, plot_margin = c(0.5, 0.5, 0.5, 0.5), units = "mm")
}

\arguments{
  \item{data}{
A dataframe containing the data to be used in the covariate bar
}
  \item{order}{
A vector containing the sample name order from the phylogenetic tree
}
  \item{plot_margin}{
Margins for the plot (default: c(0.5, 0.5, 0.5, 0.5))
}
  \item{units}{
The unit of measure to plot the covariate bar (default: "mm")
}
}
