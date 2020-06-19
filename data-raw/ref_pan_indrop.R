library(SingleCellExperiment)
library(clustifyr)
download.file("https://scrnaseq-public-datasets.s3.amazonaws.com/scater-objects/baron-human.rds", 
              destfile = "pan.rds")
pan_indrop <- readRDS("pan.rds")
ref_pan_indrop <- average_clusters(
  clustifyr:::object_data(pan_indrop, "data"),
  clustifyr:::object_data(pan_indrop, "meta.data"),
  "cell_type1"
)

usethis::use_data(ref_pan_indrop, compress = "xz", overwrite = TRUE)
