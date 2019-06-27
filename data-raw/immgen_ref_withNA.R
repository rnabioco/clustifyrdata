library(clustifyr)
library(usethis)

immgen_ref <- average_clusters(
  SingleR::immgen$data,
  SingleR::immgen$types,
  if_log = F
)

immgen_ref_withNA <- immgen_ref

usethis::use_data(immgen_ref_withNA, compress = "xz", overwrite = TRUE)