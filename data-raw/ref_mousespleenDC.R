library(clustifyr)
library(tidyverse)
library(usethis)

# duplicate cell ids (different samples) in this data, but order in mat and meta are the same
mat_mousespleenDC <- read_tsv("ftp://ftp.ncbi.nlm.nih.gov/geo/series/GSE137nnn/GSE137710/suppl/GSE137710_mouse_spleen_counts_normalized_4464x11755.tsv.gz") %>% 
  select(-X1) %>% t()
colnames(mat_mousespleenDC) <- seq_len(ncol(mat_mousespleenDC))
meta_mousespleenDC <- read_tsv("ftp://ftp.ncbi.nlm.nih.gov/geo/series/GSE137nnn/GSE137710/suppl/GSE137710_mouse_spleen_cell_metadata_4464x9.tsv.gz") %>%
  mutate("rn" = row_number())
ref_mousespleenDC <- average_clusters(
  mat_mousespleenDC,
  meta_mousespleenDC,
  "cell_type"
)

# note that in the data gene names are fully upper case, unusual for mouse
usethis::use_data(ref_mousespleenDC, compress = "xz", overwrite = TRUE)
