#' Matrix of single-cell RNA-seq PBMCs.
#'
#' A sample of 4000 PBMC cells from a bigger experiment
#'
#' @format A sparseMatrix with genes as rows and cells as columns.
#'
#' \describe{
#' }
#'
#' @source [google.com]
"pbmc4k_matrix"

#' Matrix of average gene expression per cluster from single-cell RNA-seq PBMCs.
#'
#' A sample of 4000 PBMC cells from a bigger experiment
#'
#' @format A sparseMatrix with genes as rows and clusters as columns.
#'
#' \describe{
#' }
#'
#' @source [google.com]
"pbmc4k_avg"

#' Meta-data for single-cell RNA-seq PBMCs.
#'
#' A sample of 4000 cells from a bigger experiment
#'
#' @format A data frame with 5 variables:
#' \describe{
#' }
#'
#' @source [google.com]
"pbmc4k_meta"

#' Marker genes identified by Seurat from single-cell RNA-seq PBMCs.
#'
#' A sample of 4000 cells from a bigger experiment
#'
#' @format A data frame with 7 variables:
#' \describe{
#' }
#'
#' @source [google.com]
"pbmc4k_markers"

#' Marker genes identified by M3Drop from single-cell RNA-seq PBMCs.
#'
#' A sample of 4000 cells from a bigger experiment
#'
#' @format A data frame with 3 variables:
#' \describe{
#' }
#'
#' @source [google.com]
"pbmc4k_markers_M3Drop"

#' variable genes identified by Seurat from single-cell RNA-seq PBMCs.
#'
#' A sample of 4000 cells from a bigger experiment
#'
#' @format A vector:
#' \describe{
#' }
#'
#' @source [google.com]
"pbmc4k_vargenes"

#' Matrix of single-cell RNA-seq PBMCs from 5'end kit.
#'
#' A sample of 8000 cells from a bigger experiment
#'
#' @format A sparseMatrix with genes as rows and cells as columns.
#' \describe{
#' }
#'
#' @source [google.com]
"pbmc5_matrix"

#' Meta-data for single-cell RNA-seq PBMCs from 5'end kit.
#'
#' A sample of 8000 cells from a bigger experiment
#'
#' @format A data frame with 4 variables:
#' \describe{
#' }
#'
#' @source [google.com]
"pbmc5_meta"

#' Marker genes identified by Seurat from single-cell RNA-seq PBMCs from 5'end kit.
#'
#' A sample of 8000 cells from a bigger experiment
#'
#' @format A data frame with 7 variables:
#' \describe{
#' }
#'
#' @source [google.com]
"pbmc5_markers"

#' Bulk RNA-Seq data from sorted populations isolated from PBMCs.
#'
#'
#' @format A read count matrix with 14 variables:
#' \describe{
#' }
#'
#' @source ["SRP051688"]
"pbmc_bulk_matrix"

#' Matrix of average gene expression per cluster from single-cell RNA-seq from Tabula Muris (10x genomics).
#'
#' 422,803 droplet libraries, 55,656 of which passed a QC cutoff of 500 genes and 1000 UMI
#'
#' @format A sparseMatrix with genes as rows and clusters as columns.
#'
#' \describe{
#' }
#'
#' @source [https://tabula-muris.ds.czbiohub.org/]
"ref_tabula_muris_drop"

#' Matrix of average gene expression per cluster from single-cell RNA-seq from Tabula Muris (SMART-Seq2).
#'
#' 53,760 cells from 20 tissues from 8 mice
#'
#' @format A sparseMatrix with genes as rows and clusters as columns.
#'
#' \describe{
#' }
#'
#' @source [https://tabula-muris.ds.czbiohub.org/]
"ref_tabula_muris_facs"

#' Matrix of average gene expression from GTEx recount bulk RNA seq.
#'
#' 53,760 cells from 20 tissues from 8 mice
#'
#' @format A read count matrix
#'
#' \describe{
#' }
#'
#' @source ["SRP012682"]
"gtex_bulk_matrix"