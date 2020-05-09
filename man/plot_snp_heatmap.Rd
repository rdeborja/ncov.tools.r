\name{plot_snp_heatmap}
\alias{plot_snp_heatmap}
\title{
Create the SNP heatmap
}
\description{
A function to create the SNP heatmap for the nCoV samples used in conjunction with the phylogenetic tree.
}
\usage{
plot_snp_heatmap(alleles = NULL, tip.order = NULL, nucleotides = c("A", "C", "G", "T", "N"), colors = c("blue", "red", "green3", "purple3", "lightgrey"))
}
\arguments{
  \item{alleles}{A dataframe containing samples analyzed and the alternate alleles along with their position along the genome.}
  \item{tip.order}{A vector containing the order of the samples according to the phylogenetic tree}
  \item{nucleotides}{A vector containing the bases and their order (default: c("A", "C", "G", "T", "N"))}
  \item{colors}{A vector of colors corresponding to the nucleotide labels (default: c("blue", "red", "green3", "purple3", "lightgrey"))}
}
