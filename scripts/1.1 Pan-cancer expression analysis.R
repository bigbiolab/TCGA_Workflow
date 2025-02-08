# 1.1 Pan-cancer expression analysis
# Author: Muntasim Fuad


# Load reqquired packages

library(TCGAplot)
library(tidyverse)


# Input your gene symbol

gene <- "ITGAX"

# Input color palette
# scientific journal palettes from ggsci R package,
# e.g.: "npg", "aaas", "lancet","tron", "jama", "jco", "ucscgb", "uchicago", "simpsons" and "rickandmorty".

col_pal <- "tron"



# 1.1.1 Pan-cancer tumor-normal box plot

pan_boxplot <-  pan_boxplot(gene,
                             palette="jco",
                             legend="right",
                             method="wilcox.test") # alternative method "t.test"


ggsave(filename = paste0("figures/Pan-cancer tumor vs normal box plot/", gene, ".png"), 
       plot = pan_boxplot, 
       width = 10, height = 6, 
       dpi = 300)



# 1.1.2. Pan-cancer paired tumor-normal box plot

pan_paired_boxplot <- pan_paired_boxplot(gene,
                                         legend = "none", 
                                         palette= col_pal)

ggsave(filename = paste0("figures/Pan-cancer paired tumor-normal box plot/", gene, ".png"), 
       plot = pan_paired_boxplot, 
       width = 10, height = 6, 
       dpi = 300)



# 1.1.3 Pan-tumor box plot

pan_tumor_boxplot <- pan_tumor_boxplot(gene)

ggsave(filename = paste0("figures/Pan-tumor box plot/", gene, ".png"), 
       plot = pan_tumor_boxplot, 
       width = 10, height = 6, 
       dpi = 300)


