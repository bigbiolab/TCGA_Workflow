# 1.2.3 Pan-cancer gene expression and immune-related genes correlation
# Author: Muntasim Fuad

# Load required packages

library(TCGAplot)
library(tidyverse)


# Input your gene symbol

gene <- "WNT2"

# define color gradients

lowcol <- "#3182bd"

highcol <- "#f03b20"

# 1.2.3.1 Pan-cancer gene expression and ICGs correlation

gene_checkpoint_heatmap <- gene_checkpoint_heatmap(gene,
                                                   method="pearson",
                                                   lowcol= lowcol,highcol= highcol,
                                                   cluster_row=T,cluster_col=T,
                                                   legend=T)

ggsave(filename = paste0("figures/ICGs (immune checkpoint genes) correalation/", gene, ".png"), 
       plot = gene_checkpoint_heatmap ,
       width = 8, height = 4, 
       dpi = 300)



# 1.2.3.2 Pan-cancer gene expression and Chemokine correlation 

gene_chemokine_heatmap <- gene_chemokine_heatmap(gene,
                                                 method="pearson",
                                                 lowcol= lowcol,highcol= highcol,
                                                 cluster_row=T,cluster_col=T,
                                                 legend=T)


ggsave(filename = paste0("figures/Chemokine correlation/", gene, ".png"), 
       plot = gene_chemokine_heatmap, 
       width = 8, height = 8,
       dpi = 300)


# 1.2.3.3 Pan-cancer gene expression and Chemokine receptor correlation

gene_receptor_heatmap <- gene_receptor_heatmap(gene,
                                               method="pearson",
                                               lowcol= lowcol,highcol= lowcol,
                                               cluster_row=T,cluster_col=T,
                                               legend=T)


ggsave(filename = paste0("figures/Chemokine receptor correlation/", gene, ".png"), 
       plot = gene_receptor_heatmap, 
       width = 8, height = 5,
       dpi = 300)


# 1.2.3.4 Pan-cancer gene expression and Immune stimulator correlation

immustimulator_heatmap <- gene_immustimulator_heatmap(gene,
                                                      method="pearson",
                                                      lowcol= lowcol,highcol= highcol,
                                                      cluster_row=T,cluster_col=T,
                                                      legend=T)

ggsave(filename = paste0("figures/Immune stimulator correlation/", gene, ".png"), 
       plot = immustimulator_heatmap, 
       width = 8,height = 9, 
       dpi = 300)


# 1.2.3.5 Pan-cancer gene expression and Immune inhibitor correlation

gene_immuinhibitor_heatmap <- gene_immuinhibitor_heatmap(
  gene,method="pearson",
  lowcol= lowcol, highcol= highcol,
  cluster_row=T, cluster_col=T,
  legend=T
)

ggsave(filename = paste0("figures/Immune inhibitor correlation/", gene, ".png"), 
       plot = gene_immuinhibitor_heatmap, 
       width = 8,height = 6, 
       dpi = 600)


