get_sample_order_from_tree <- function(tree=NULL) {
  if (is.null(tree)) stop("Mandatory argument tree is missing")

  d <- fortify(tree)
  d <- subset(d, isTip)

  tip.order = with(d, label[order(y, decreasing=F)])

  return(tip.order)
}
