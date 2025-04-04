if (!require("Seurat", character.only = TRUE) | 
    !require("remotes", character.only = TRUE)| 
    !require("DoubletFinder", character.only = TRUE)|
    !require("BiocManager", character.only = TRUE, quietly = TRUE)) {
  install.packages(c("Seurat", "remotes", "BiocManager"))
  remotes::install_github('chris-mcginnis-ucsf/DoubletFinder', force = TRUE)
  lapply(c("Seurat", "remotes", "DoubletFinder", "BiocManager"), library, character.only = TRUE)
} else if (!require("BiocManager", character.only = TRUE, quietly = TRUE)){
  install.packages("BiocManager")
} else if (!require("enrichplot", character.only = TRUE) | 
  !require("fgsea", character.only = TRUE) | 
  !require("msigdbr", character.only = TRUE) | 
  !require("clusterProfiler", character.only = TRUE) | 
  !require("DOSE", character.only = TRUE)) {
  BiocManager::install(c("enrichplot", "fgsea", "msigdbr", "clusterProfiler", "DOSE"))
    lapply(c("enrichplot", "fgsea", "msigdbr", "clusterProfiler", "DOSE"), library, character.only = TRUE)
  } else {
  lapply(c("Seurat", "remotes", "DoubletFinder", "BiocManager", "enrichplot", "fgsea", "msigdbr", "clusterProfiler", "DOSE"), library, character.only = TRUE)
  }

