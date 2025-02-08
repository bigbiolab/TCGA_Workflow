# 1.2 Pan-caner correction analysis
# Author: Muntasim Fuad

# Load required packages

library(TCGAplot)
library(tidyverse)


# Input your gene symbol

gene <- "WNT7A"


# 1.2.1 Pan-cancer gene expression and TMB correlation radar chart

png(filename = paste0("figures/TMB correlation radar chart/", gene, ".png"), 
    width = 5000, height = 5000, 
    res = 600)

gene_TMB_radar(gene, method = "pearson") #The alternatives to be passed to correlation are "spearman" and "kendall".

dev.off()


# 1.2.2 Pan-cancer gene expression and MSI correlation radar chart

png(filename = file.path("figures/MSI correlation radar chart/", 
                         paste0(gene, ".png")), 
    width = 5000, height = 5000, 
    res = 600)

gene_MSI_radar(gene,method = "pearson")

dev.off()

