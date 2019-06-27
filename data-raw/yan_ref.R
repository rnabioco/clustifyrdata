library(clustifyr)
library(usethis)

yan_ref <- average_clusters(
  scmap::yan, 
  scmap::ann$cell_type1, 
  log_scale = F)

usethis::use_data(yan_ref, compress = "xz", overwrite = TRUE)