library(clustifyr)
library(tidyverse)

mat <- read_tsv("https://cells.ucsc.edu/cortex-dev/exprMatrix.tsv.gz") %>% tibble::column_to_rownames("gene")
meta <- read_tsv("https://cells.ucsc.edu/cortex-dev/meta.tsv")

ref_cortex_dev <- average_clusters(
  mat,
  meta,
  cluster_col = "WGCNAcluster",
  if_log = F
)

usethis::use_data(ref_cortex_dev, compress = "xz", overwrite = TRUE)