### plot_phylo_heatmap.R ##########################################################################
#  Create a multi-part figure containing a phylogenetic tree with a heatmap and covariate bar.

### HISTORY #######################################################################################
# Version           Date            Developer               Comments
# 0.01              2020-05-04      Richard J. de Borja     Extracted from @jts ncov-tools

### PREAMBLE ######################################################################################
library('getopt')

usage <- function() {
  usage.text <- '\nUsage: plot_phylo_heatmap.R --covariate covariate.tsv --alleles alleles.tsv --tree tree.nwk\n\n --data_dir results'
  return(usage.text)
}

params = matrix(
  c(
    'covariate', 'c', 1, 'character',
    'alleles', 'a', 1, 'character',
    'tree', 't', 1, 'character',
    'data_dir', 'd', 1, 'character'
    ),
  ncol = 4,
  byrow = TRUE
)

opt = getopt(params)

# for debugging purposes using the console, set defaults here:
# verify arguments
if (is.null(opt)) { stop(usage()) }

# Set the environment
library(ncov.tools.r)
source("
### FUNCTIONS #####################################################################################
get_tree_data <- function(data_dir=opt$data_dir, tree=opt$tree) {

}


### GET DATA ######################################################################################

### PROCESS DATA ##################################################################################

### ANALYSIS ######################################################################################

### PLOTTING ######################################################################################
