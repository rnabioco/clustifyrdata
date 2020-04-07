library(Seurat)
library(clustifyr)
library(tidyverse)
download.file("https://ndownloader.figshare.com/articles/5821263/versions/3", 
              destfile = "tm.zip")
unzip("tm.zip")

files <- list.files(pattern = "\\.Robj$")
files_facs <- list.files(pattern = "facs.*\\.Robj$")
files_drop <- list.files(pattern = "droplet.*\\.Robj$")

load_obj <- function(f)
{
  env <- new.env()
  nm <- load(f, env)[1]
  env[[nm]]
}

for (n in 1:length(files_drop)) {
  print(files_drop[n])
  s <- load_obj(paste0("/Users/", files_drop[n]))
  avg <- use_seurat_comp(s, cluster_col = "cell_ontology_class")
  avg2 <- use_seurat_comp(s, cluster_col = "free_annotation")
  avg <- cbind(avg, avg2)
  colnames(avg) <- str_c(colnames(avg), str_sub(str_extract(files_drop[n], "_.+?_"), 2, -2), sep = "-")
  if (n==1) {
    ref <- avg
  } else {
    ref <- cbind(ref, avg)
  }
}

ref_tabula_muris_drop <- ref

usethis::use_data(ref_tabula_muris_drop, compress = "xz", overwrite = TRUE)