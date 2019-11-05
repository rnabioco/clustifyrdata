library(clustifyr)
library(usethis)

immgen_ref <- average_clusters(
  SingleR::immgen$data,
  SingleR::immgen$types,
  if_log = F
)

immgen_ref_withNA <- immgen_ref

ref_immgen <- immgen_ref[rownames(immgen_ref)[!is.na(rownames(immgen_ref))], ]

usethis::use_data(ref_immgen, compress = "xz", overwrite = TRUE)
