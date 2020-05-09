create_tree <- function(tree=NULL, labels=FALSE) {
  if (is.null(tree)) stop("Mandatory argument tree is missing")

  panel.tree <- ggtree(tree) +
    scale_y_tree() +
    theme_tree2()

  if (labels) {
    panel.tree <- panel.tree + geom_tiplab(align=TRUE)
  }

  return(panel.tree)
}
