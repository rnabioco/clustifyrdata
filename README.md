# clustifyrdata

<!-- badges: start -->
  [![Travis build status](https://travis-ci.org/rnabioco/clustifyrdata.svg?branch=master)](https://travis-ci.org/rnabioco/clustifyrdata)
<!-- badges: end -->


External data sets used in vignettes in [clustifyr](https://github.com/rnabioco/clustifyr).

## Installation

``` r
# install.packages("devtools")
devtools::install_github("rnabioco/clustifyrdata")
```

## ref_tabula_muris : Tabula Muris is a compendium of single cell transcriptome data from the model organism Mus musculus
### https://tabula-muris.ds.czbiohub.org/
ref_tabula_muris_drop.rda

ref_tabula_muris_facs.rda

## ref_moca_main : Mouse Organogenesis Cell Atlas main cell types
### http://atlas.gs.washington.edu/mouse-rna/
ref_moca_main.rda

## gtex_bulk_matrix : bulk RNA seq expression matrix derived from GTEx Recount database
gtex_bulk_matrix.rda

## pan_indrop : Human pancreas scRNAseq data by inDrop protocol, from Baron, M. et al.
### https://hemberg-lab.github.io/scRNA.seq.datasets/human/pancreas/
pan_indrop_matrix.rda

pan_indrop_avg.rda

pan_indrop_meta.rda

pan_indrop_vargenes.rda

pan_indrop_markers.rda

## pan_smartseq2 : Human pancreas scRNAseq data by Smart-Seq2 protocol, from Segerstolpe, Å. et al.
### https://hemberg-lab.github.io/scRNA.seq.datasets/human/pancreas/
pan_smartseq2_matrix.rda

pan_smartseq2_avg.rda

pan_smartseq2_meta.rda

pan_smartseq2_vargenes.rda

## pbmc4k : 4k PBMCs from a Healthy Donor
### https://support.10xgenomics.com/single-cell-gene-expression/datasets/2.1.0/pbmc4k
pbmc4k_matrix.rda

pbmc4k_avg.rda

pbmc4k_meta.rda

pbmc4k_vargenes.rda

pbmc4k_markers.rda

pbmc4k_markers_M3Drop.rda

## pbmc5 : PBMCs of a healthy donor - 5' gene expression
### https://support.10xgenomics.com/single-cell-vdj/datasets/2.1.0/vdj_v1_pbmc_5gex
pbmc5_matrix.rda

pbmc5_markers.rda

pbmc5_meta.rda

## yan : converted from built-in data from `scmap`
yan_ref.rda

## converted mouse built-in references from `SingleR`
immgen_ref.rda

mouse.rnaseq_ref.rda

# files
*_matrix : single cell RNA expression matrix

*_avg : average expression caluculated from single cell RNA expression matrix

*_meta : metadata from scRNAseq

*_vargenes : variable genes used for dimension reduction as determined by Seurat default setting

*_markers : marker genes as determined by Seurat default setting

*_M3Drop : variable genes used for dimension reduction as determined by M3Drop package

