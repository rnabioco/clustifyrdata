library(clustifyr)
library(tidyverse)

cds <- readRDS("cds_cleaned_sampled_100k.RDS")
cds_p <- parse_loc_object(cds)
ref_moca_main <- average_clusters(
  cds_p$expr,
  cds_p$meta,
  cluster_col = cds_p$col
)

usethis::use_data(ref_moca_main, compress = "xz", overwrite = TRUE)