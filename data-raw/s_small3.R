library(usethis)

s_small3 <- Seurat::pbmc_small
attr(attr(s_small3, "class"), "package") <- NULL

usethis::use_data(s_small3, compress = "xz", overwrite = TRUE)