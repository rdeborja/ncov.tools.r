plot_snp_heatmap <- function(alleles=NULL,
                             tip.order=NULL,
                             nucleotides=c("A", "C", "G", "T", "N"),
                             colors=c("blue", "red", "green3", "purple3", "lightgrey")) {
  if (is.null(alleles)) stop("Missing alleles dataframe")
  if (is.null(tip.order)) stop("Missing tip.order is missing")

  alleles$name = factor(alleles$name, levels=tip.order)
  alleles$pos = factor(alleles$pos)
  alleles$alt_allele = factor(alleles$alt_allele, nucleotides)

  # draw panel with variants
  panel.snps = ggplot(alleles, aes(x=pos, y=name)) +
    geom_tile(aes(fill=alt_allele), color="white") +
    ylim(tip.order) +
    theme_bw() +
    theme(axis.line = element_blank(), axis.title.y=element_blank(), axis.title.x=element_blank(),
          axis.ticks.y=element_blank(), axis.ticks.x=element_blank(),
          panel.grid.major=element_blank(),
          panel.background=element_blank(),
          panel.border=element_rect(colour="black", fill=NA, size=0.5),
          axis.text.x=element_text(angle=90, hjust=1)) +
    scale_fill_manual(name="Variant", values=colors)

  return(panel.snps)
}
