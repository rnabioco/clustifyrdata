library(clustifyr)
library(tidyverse)
library(usethis)
library(Seurat)
download.file("https://www.ncbi.nlm.nih.gov/geo/download/?acc=GSE145121&format=file", 
              destfile = "GSE145121_RAW.tar")
untar("GSE145121_RAW.tar")

tab <- read_csv("/Users/rf/GSM4306928_LEC_10x_C57BL6_raw_read_count_matrix.csv.gz") %>%
  column_to_rownames("X1")
temp <-  CreateSeuratObject(counts = tab, project = "s", min.cells = 3, min.features = 100)
temp <- NormalizeData(temp)
temp <- FindVariableFeatures(temp, selection.method = "vst", nfeatures = 2000)
temp <- ScaleData(temp)

tab2 <- read_csv("/Users/rf/GSM4306929_LEC_10x_BALBc_raw_read_count_matrix.csv.gz") %>%
  column_to_rownames("X1")
temp2 <-  CreateSeuratObject(counts = tab2, project = "s2", min.cells = 3, min.features = 100)
temp2 <- NormalizeData(temp2)
temp2 <- FindVariableFeatures(temp2, selection.method = "vst", nfeatures = 2000)
temp2 <- ScaleData(temp2)

anchors <- FindIntegrationAnchors(list(temp, temp2), dims = 1:30)
combined <- IntegrateData(anchorset = anchors, dims = 1:30)
DefaultAssay(combined) <- "integrated"
combined <- ScaleData(combined, verbose = FALSE)
combined <- RunPCA(combined, npcs = 30, verbose = FALSE)
combined <- RunTSNE(combined, reduction = "pca", dims = 1:30)
combined <- RunUMAP(combined, reduction = "pca", dims = 1:30)
combined <- FindNeighbors(combined, reduction = "pca", dims = 1:30)
combined <- FindClusters(combined, resolution = 1.5)
saveRDS(combined, "LECxiang.rds")
DimPlot(combined, label = T, reduction = "tsne")
DefaultAssay(combined) <- "RNA"
FeaturePlot(combined, c("Ackr4", "Madcam1", "Ccl20", "Cd274", "Lyve1", "Foxc2", "Ccl21a", "Marco", "Ptx3"), reduction = "tsne")
VlnPlot(combined, c("Ackr4", "Madcam1", "Ccl20", "Cd274", "Lyve1", "Foxc2", "Ccl21a", "Marco", "Ptx3"), pt.size = 0)

combined2 <- combined %>%
  RenameIdents(
    "0" = "fLEC", 
    "1" = "cLEC", 
    "2" = "cLEC", 
    "3" = "fLEC",
    "4" = "Valve",
    "5" = "Ptx3_LEC",
    "6" = "Marco_LEC",
    "7" = "fLEC", 
    "8" = "Collecting",
    "9" = "tzLEC", 
    "10" = "unknown", 
    "11" = "cLEC", 
    "12" = "Bridge"
  )
combined2 <- StashIdent(combined2, "type")
VlnPlot(combined2, c("Angpt2", "Clec1b", "Ptn"), pt.size = 0)

ref_LEC_xiang <- object_ref(
  combined2,
  "type"
)

ref_LEC_xiang <- ref_LEC_xiang[, colnames(ref_LEC_xiang) != "unknown"]

# note that in the data gene names are fully upper case, unusual for mouse
usethis::use_data(ref_LEC_xiang, compress = "xz", overwrite = TRUE)
