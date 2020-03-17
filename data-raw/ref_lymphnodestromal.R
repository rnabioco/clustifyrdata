library(clustifyr)
library(tidyverse)
library(usethis)

tf = tempfile(fileext = ".xlsx")
curl::curl_download("https://www.ncbi.nlm.nih.gov/geo/download/?acc=GSE112903&format=file&file=GSE112903%5FTable%5FS1%5FMean%5FExpression%2Exlsx", tf)
ref_lymphnodestromal <- readxl::read_excel(tf) %>%
  select(-contains("_in")) %>%
  group_by(Gene) %>% 
  summarise_all(sum) %>% 
  column_to_rownames("Gene")
colnames(ref_lymphnodestromal) <- str_remove(colnames(ref_lymphnodestromal), "\\.mean")
usethis::use_data(ref_lymphnodestromal, compress = "xz", overwrite = TRUE)
