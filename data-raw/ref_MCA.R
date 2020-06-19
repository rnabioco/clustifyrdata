library(tidyverse)
download.file("https://ndownloader.figshare.com/files/10756795", 
              destfile = "mcs.zip")
unzip("mcs.zip")
files <- list.files(path = "rmbatch_dge")
f_targets <- files[str_detect(files, "[a-zA-Z|1]_rm")]
download.file("https://ndownloader.figshare.com/files/11083451", 
              destfile = "MCA_CellAssignments.csv")
m <- read_csv("MCA_CellAssignments.csv")

for (f1 in f_targets) {
  print(f1)
  l1 <- read_delim(str_c("rmbatch_dge/",f1,sep = ""), delim = " ", n_max = 5)
  l1 <- read_delim(str_c("rmbatch_dge/",f1,sep = ""), delim = " ", col_names = c("id",colnames(l1)), skip = 1)
  l1 <- l1 %>% column_to_rownames("id")
  
  m %>% filter(Cell.name %in% colnames(l1)) -> l_meta
  l_meta %>% column_to_rownames("Cell.name") -> l_meta
  l1 <- l1[,rownames(l_meta)]
  ref <- average_clusters(l1, l_meta, cluster_col = "Annotation")
  
  if (f1 == files[1]) {
    ref_all <- ref
  } else {
    if (nrow(l1) < 10000 | ncol(l1) < 100) {
      next
    }
    genes <- intersect(rownames(ref_all), rownames(ref))
    ref_all <- ref_all[genes,]
    ref <- ref[genes,]
    ref_all <- cbind(ref_all, ref)
  }
}
ref_MCA <- ref_all

usethis::use_data(ref_MCA, compress = "xz", overwrite = TRUE)