# 3.2 Diagnostic ROC Curve
# Author: Muntasim Fuad


# Load reqquired packages

library(TCGAplot)
library(tidyverse)

# Input your 2nd gene symbol

gene<- "WNT2"

# Input cancer type

cancer <- "BRCA"

ROC <- tcga_roc(cancer,gene)

ggsave(filename = paste0("figures/Diagnostic ROC Curve/", gene, ".png"), 
       plot = ROC, 
       width = 6, 
       height = 6, 
       dpi = 300)
