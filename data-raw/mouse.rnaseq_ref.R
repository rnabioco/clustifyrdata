library(clustifyr)
library(usethis)

mouse.rnaseq_ref <- average_clusters(
  SingleR::mouse.rnaseq$data,
  SingleR::mouse.rnaseq$types,
  log_scale = F
)

usethis::use_data(mouse.rnaseq_ref, compress = "xz", overwrite = TRUE)
