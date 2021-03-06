#' @importFrom tibble tibble
NULL

#' Matrix of single-cell RNA-seq PBMCs.
#'
#' A sample of 3k PBMC cells
#'
#' @source <https://support.10xgenomics.com/single-cell-gene-expression/datasets/2.1.0/pbmc4k>
#' @family 10x
"pbmc_matrix"

#' Matrix of average gene expression per cluster from single-cell RNA-seq PBMCs.
#'
#' A sample of 3k PBMC cells
#'
#' @source <https://support.10xgenomics.com/single-cell-gene-expression/datasets/2.1.0/pbmc4k>
#' @family 10x
"pbmc_avg"

#' Meta-data for single-cell RNA-seq PBMCs.
#'
#' A sample of 3k cells
#'
#' @source <https://support.10xgenomics.com/single-cell-gene-expression/datasets/2.1.0/pbmc4k>
#' @family 10x
"pbmc_meta"

#' Marker genes identified by Seurat from single-cell RNA-seq PBMCs.
#'
#' A sample of 3k cells
#'
#' @source <https://support.10xgenomics.com/single-cell-gene-expression/datasets/2.1.0/pbmc4k>
#' @family 10x
"pbmc_markers"

#' Marker genes identified by M3Drop from single-cell RNA-seq PBMCs.
#'
#' A sample of 3k cells
#'
#' @source <https://support.10xgenomics.com/single-cell-gene-expression/datasets/2.1.0/pbmc4k>
#' @family 10x
"pbmc_markers_M3Drop"

#' variable genes identified by Seurat from single-cell RNA-seq PBMCs.
#'
#' A sample of 3k cells
#'
#' @source <https://support.10xgenomics.com/single-cell-gene-expression/datasets/2.1.0/pbmc4k>
#' @family 10x
"pbmc_vargenes"

#' Matrix of single-cell RNA-seq PBMCs from 5'end kit.
#'
#' A sample of 8000 cells from a bigger experiment
#'
#' @source <https://support.10xgenomics.com/single-cell-gene-expression/datasets/2.1.0/pbmc4k>
#' @family 10x
"pbmc5_matrix"

#' Meta-data for single-cell RNA-seq PBMCs from 5'end kit.
#'
#' A sample of 8000 cells from a bigger experiment
#'
#' @source <https://support.10xgenomics.com/single-cell-gene-expression/datasets/2.1.0/pbmc4k>
#' @family 10x
"pbmc5_meta"

#' Marker genes identified by Seurat from single-cell RNA-seq PBMCs from 5'end kit.
#'
#' A sample of 8000 cells from a bigger experiment
#'
#' @source <https://support.10xgenomics.com/single-cell-gene-expression/datasets/2.1.0/pbmc4k>
#' @family 10x
"pbmc5_markers"

#' Matrix of average gene expression per cluster from single-cell RNA-seq from Tabula Muris (10x genomics).
#'
#' 422,803 droplet libraries, 55,656 of which passed a QC cutoff of 500 genes and 1000 UMI
#'
#' @source <https://tabula-muris.ds.czbiohub.org/>
#' @family ref
"ref_tabula_muris_drop"

#' Matrix of average gene expression per cluster from single-cell RNA-seq from Tabula Muris (SMART-Seq2).
#'
#' 53,760 cells from 20 tissues from 8 mice
#'
#' @source <https://tabula-muris.ds.czbiohub.org/>
#' @family ref
"ref_tabula_muris_facs"

#' Matrix of average gene expression from GTEx recount bulk RNA seq.
#'
#' 53,760 cells from 20 tissues from 8 mice
#'
#' @source <https://www.ebi.ac.uk/ena/data/view/PRJNA75899>
#' @family ref
"gtex_bulk_matrix"

#' Matrix of average gene expression from immgen data
#'
#' 253 mouse immune cell types
#'
#' @source ["SingleR"]
#' @family ref
"ref_immgen"

#' Matrix of average gene expression from general mouse cell type data
#'
#' 28 general cell types
#'
#' @source ["SingleR"]
#' @family ref
"ref_mouse.rnaseq"

#' Matrix of average gene expression from `yan` human embryo data
#'
#' 6 early development cell types
#'
#' @source ["scmap"]
"yan_ref"

#' Matrix of single-cell RNA-seq pancreas data using indrop method.
#'
#' A sample of 8569 pancreas cells
#'
#' @source <https://hemberg-lab.github.io/scRNA.seq.datasets/human/pancreas/>
#' @family hemberg
"pan_indrop_matrix"

#' Matrix of average gene expression per cluster from single-cell RNA-seq pancreas data using indrop method.
#'
#' A sample of 8569 pancreas cells
#'
#' @source <https://hemberg-lab.github.io/scRNA.seq.datasets/human/pancreas/>
#' @family ref
"ref_pan_indrop"

#' Marker genes identified by Seurat from single-cell RNA-seq pancreas data using indrop method.
#'
#' A sample of 8569 pancreas cells
#'
#' @source <https://hemberg-lab.github.io/scRNA.seq.datasets/human/pancreas/>
#' @family hemberg
"pan_indrop_markers"

#' Meta-data for single-cell RNA-seq pancreas data using indrop method.
#'
#' A sample of 8569 pancreas cells
#'
#' @source <https://hemberg-lab.github.io/scRNA.seq.datasets/human/pancreas/>
#' @family hemberg
"pan_indrop_meta"

#' variable genes identified by Seurat from single-cell RNA-seq pancreas data using indrop method.
#'
#' A sample of 8569 pancreas cells
#'
#' @source <https://hemberg-lab.github.io/scRNA.seq.datasets/human/pancreas/>
#' @family hemberg
"pan_indrop_vargenes"

#' Matrix of single-cell RNA-seq pancreas data using smartseq2 method.
#'
#' A sample of 2209 pancreas cells
#'
#' @source <https://hemberg-lab.github.io/scRNA.seq.datasets/human/pancreas/>
#' @family hemberg
"pan_smartseq2_matrix"

#' Matrix of average gene expression per cluster from single-cell RNA-seq pancreas data using smartseq2 method.
#'
#' A sample of 2209 pancreas cells
#'
#' @source <https://hemberg-lab.github.io/scRNA.seq.datasets/human/pancreas/>
#' @family ref
"ref_pan_smartseq2"

#' Meta-data for single-cell RNA-seq pancreas data using smartseq2 method.
#'
#' A sample of 2209 pancreas cells
#'
#' @source <https://hemberg-lab.github.io/scRNA.seq.datasets/human/pancreas/>
#' @family hemberg
"pan_smartseq2_meta"

#' variable genes identified by Seurat from single-cell RNA-seq pancreas data using smartseq2 method.
#'
#' A sample of 2209 pancreas cells
#'
#' @source <https://hemberg-lab.github.io/scRNA.seq.datasets/human/pancreas/>
#' @family hemberg
"pan_smartseq2_vargenes"

#' Matrix of average gene expression per cluster from single-cell sci-RNA-seq3 from Mouse Organogenesis Cell Atlas.
#'
#' 100,000 cells
#'
#' @source <http://atlas.gs.washington.edu/mouse-rna/>
#' @family ref
"ref_moca_main"

#' Matrix of average gene detection by microarray on sorted immune cell populations
#'
#' 38 distinct purified populations of human hematopoietic cells
#'
#' @source [https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE24759]
#' @family ref
"ref_hema_microarray"

#' Matrix of average gene detection on cortex development cell types
#'
#' 47 distinct annotated clusters of human neuronal subtypes
#'
#' @source <https://cells.ucsc.edu/?ds=cortex-dev#>
#' @family ref
"ref_cortex_dev"

#' Small clustered Seurat2 object
#'
#' @source  `pbmc_small` processed by `[seurat]`
#' @family obj
"s_small"

#' Small clustered Seurat3 object
#'
#' @source  `pbmc_small` processed by `[Seurat]`
#' @family obj
"s_small3"

#' Matrix of single-cell RNA-seq cells of the lung.
#'
#' A sample of lung cells, from mouse cell atlas project
#'
#' @source <https://figshare.com/s/865e694ad06d5857db4b>
#' @family MCA
"MCA_lung_mat"

#' Meta-data for single-cell RNA-seq of the lung.
#'
#' A sample of lung cells, from mouse cell atlas project
#'
#' @source <https://figshare.com/s/865e694ad06d5857db4b>
#' @family MCA
"MCA_lung_meta"

#' Matrix of average gene expression for single-cell RNA-seq.
#'
#' from mouse cell atlas project
#'
#' @source <https://figshare.com/s/865e694ad06d5857db4b>
#' @family ref
"ref_MCA"

#' table of references stored in clustifyrdata
#'
#' @family data
#' @source  various packages
"downrefs"