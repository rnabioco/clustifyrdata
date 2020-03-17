library(clustifyr)
library(tidyverse)
library(usethis)

mat_humanspleenDC <- read_tsv("ftp://ftp.ncbi.nlm.nih.gov/geo/series/GSE137nnn/GSE137710/suppl/GSE137710_human_spleen_counts_normalized_4465x12476.tsv.gz") %>% 
  column_to_rownames("X1") %>% t()
meta_humanspleenDC <- read_tsv("ftp://ftp.ncbi.nlm.nih.gov/geo/series/GSE137nnn/GSE137710/suppl/GSE137710_human_spleen_cell_metadata_4465x9.tsv.gz") %>% 
  column_to_rownames("cell_ID")
ref_humanspleenDC <- average_clusters(
  mat_humanspleenDC,
  meta_humanspleenDC,
  "cell_type"
)

usethis::use_data(ref_humanspleenDC, compress = "xz", overwrite = TRUE)
