library(SingleCellExperiment)
library(clustifyr)
download.file("https://scrnaseq-public-datasets.s3.amazonaws.com/scater-objects/segerstolpe.rds", 
              destfile = "pan.rds")
pan_smartseq2 <- readRDS("pan.rds")
ref_pan_smartseq2 <- average_clusters(
  clustifyr:::object_data(pan_indrop, "data"),
  clustifyr:::object_data(pan_indrop, "meta.data"),
  "cell_type1"
)

usethis::use_data(ref_pan_smartseq2, compress = "xz", overwrite = TRUE)
