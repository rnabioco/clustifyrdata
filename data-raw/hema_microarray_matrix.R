library(tidyverse)
# read series matrix for column names
GSE24759 <- read_tsv("GSE24759/GSE24759_series_matrix.txt", skip = 25, n_max = 1)

# read series matrix for full dataset; apply column names
GSE24759 <- read_tsv("GSE24759//GSE24759_series_matrix.txt", skip = 57, col_names = colnames(GSE24759)) %>%
  rename(ID = `!Sample_title`)

# read array metadata table, remove control probes and missing gene symbols
GPL4685 <- read_tsv("/Users/rf/microarray/GSE24759/GPL4685-15513.txt", skip = 14) %>%
  filter(!is.na(`Gene Symbol`), `Sequence Type` != "Control sequence") %>% 
  separate(`Gene Symbol`, into = "gene_symbol", sep = ' ') %>%
  select(ID,gene_symbol)

# join data and metadata, collapse gene symbols
GSE24759 <- inner_join(GSE24759, GPL4685) %>% 
  select(-ID) %>% 
  group_by(gene_symbol) %>% 
  mutate_at(.vars = vars(-gene_symbol), .funs = list(~log2(mean(2^.))))

# convert to matrix, add rownames
GSE24759_mat <- ungroup(GSE24759) %>% select(-gene_symbol) %>% as.matrix()
row.names(GSE24759_mat) <- GSE24759$gene_symbol

# merge samples
hema_microarray_matrix <- GSE24759_mat %>% t() %>%
  as.data.frame() %>%
  rownames_to_column("sample") %>%
  mutate(sample = str_remove(sample, ", .*")) %>%
  group_by(sample) %>% summarise_all(.funs = list(~log2(mean(2^.)))) %>%
  column_to_rownames("sample") %>%
  t()

usethis::use_data(hema_microarray_matrix, compress = "xz", overwrite = TRUE)
