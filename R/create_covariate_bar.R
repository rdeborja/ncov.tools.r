create_covariate_bar <- function(data=NULL, order=NULL, plot_margin=c(0.5, 0.5, 0.5, 0.5), units="mm") {
  if (is.null(data)) stop("Mandatory argument data is missing")
  if (is.null(order)) stop("Mandatory argument order is missing")

  # fix dataframe values before plotting
  data$name <- factor(data$name, levels=order)

  # draw panel with covariates
  panel.cov <- ggplot(covariates, aes(x=pos, y=name)) +
    geom_tile(aes(fill=lineage), color='white') +
    ylim(order) +
    theme_bw() +
    theme(axis.line = element_blank(), axis.title.y=element_blank(), axis.title.x=element_blank(),
          axis.ticks.y=element_blank(), axis.ticks.x=element_blank(),
          axis.text.x=element_blank(), axis.text.y=element_blank(),
          panel.grid.major=element_blank(),
          panel.background=element_blank(),
          panel.border=element_blank(),
          plot.margin=unit(plot_margin, units))
  return(panel.cov)
}
