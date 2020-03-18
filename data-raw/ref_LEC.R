library(clustifyr)
library(tidyverse)
library(usethis)
library(Seurat)
path <- "/Users/rf/Downloads/GSE124494_RAW/"
samples <- list.files(path, pattern = "mtx.gz") %>% str_remove("_matrix.mtx.gz")
ml <- list()
for (s in samples) {
  temp <- Matrix::readMM(paste0(path, s, "_matrix.mtx.gz"))
  a <- read_tsv(paste0(path, s, "_barcodes.tsv.gz"),
                col_names = F)
  b <- read_tsv(paste0(path, s, "_genes.tsv.gz"),
                col_names = F)
  colnames(temp) <- a$X1
  rownames(temp) <- b$X2
  temp <-  CreateSeuratObject(counts = temp, project = s, min.cells = 3, min.features = 200)
  temp[["percent.mt"]] <- PercentageFeatureSet(temp, pattern = "^MT-")
  temp <- NormalizeData(temp)
  temp <- FindVariableFeatures(temp, selection.method = "vst", nfeatures = 2000)
  temp <- ScaleData(temp, features = rownames(temp@assays$RNA@counts))
  ml[[s]] <- temp
}
vars <- c()
for (element in ml) {
  vars <- c(vars, element@assays$RNA@var.features[1:1000])
}
vars <- names(table(vars))[table(vars) >= 2]
for (element in ml) {
  vars <- intersect(vars, rownames(element@assays$RNA@data))
}

anchors <- FindIntegrationAnchors(object.list = ml, dims = 1:30, anchor.features = vars)
combined <- IntegrateData(anchorset = anchors, dims = 1:30)
DefaultAssay(combined) <- "integrated"
combined <- ScaleData(combined, verbose = FALSE)
combined <- RunPCA(combined, npcs = 30, verbose = FALSE)
combined <- RunUMAP(combined, reduction = "pca", dims = 1:30)
combined <- FindNeighbors(combined, reduction = "pca", dims = 1:30)
combined <- FindClusters(combined, resolution = 0.5)
saveRDS(combined, "LECcomb.rds")

DimPlot(combined, label = T)
combined2 <- combined %>%
  RenameIdents(
    "0" = "LEC1", #
    "1" = "LEC3", #
    "2" = "LEC3", #
    "3" = "LEC2", #
    "4" = "LEC4", #
    "5" = "LEC1", #
    "6" = "LEC1", #
    "7" = "BEC", #
    "8" = "SC", #
    "9" = "LEC5", #
    "10" = "LEC6", #
    "11" = "LEC5", #
    "12" = "tossed_inflammatory ",
    "13" = "CD34+_SC", #
    "14" = "LEC4", #
    "15" = "???",
    "16" = "SC" #
  )
combined2 <- StashIdent(combined2, "type")

ref_LEC <- object_ref(
 combined2,
 "type"
)

# note that in the data gene names are fully upper case, unusual for mouse
usethis::use_data(ref_LEC, compress = "xz", overwrite = TRUE)
