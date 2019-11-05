library(clustifyr)
library(usethis)

ref_mouse.rnaseq <- average_clusters(
  SingleR::mouse.rnaseq$data,
  SingleR::mouse.rnaseq$types,
  if_log = F
)

usethis::use_data(ref_mouse.rnaseq, compress = "xz", overwrite = TRUE)
