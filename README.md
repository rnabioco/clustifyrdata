
<!-- README.md is generated from README.Rmd. Please edit that file -->

# clustifyrdata

<!-- badges: start -->

[![R build
status](https://github.com/rnabioco/clustifyrdata/workflows/R-CMD-check/badge.svg)](https://github.com/rnabioco/clustifyrdata/actions)
<!-- badges: end -->

clustifyrdata provides 41 external data sets for cell-type assignment
with [clustifyr](https://rnabioco.github.io/clustifyr) and [reproducible
scripts](https://github.com/rnabioco/clustifyrdata/tree/master/data-raw)
to build data objects.

## Commonly used references:

| name                                                                                                            | desc                                             | ntypes | ngenes | org   | from\_pub                                                                   |
| :-------------------------------------------------------------------------------------------------------------- | :----------------------------------------------- | :----- | :----- | :---- | :-------------------------------------------------------------------------- |
| [ref\_MCA](https://github.com/rnabioco/clustifyrdata/raw/master/data/ref_MCA.rda)                               | Mouse Cell Atlas                                 | 713    | 8601   | mouse | [from](https://www.cell.com/cell/fulltext/S0092-8674\(18\)30116-8)          |
| [ref\_tabula\_muris\_drop](https://github.com/rnabioco/clustifyrdata/raw/master/data/ref_tabula_muris_drop.rda) | Tabula Muris (10X)                               | 112    | 23341  | mouse | [from](https://www.nature.com/articles/s41586-018-0590-4)                   |
| [ref\_tabula\_muris\_facs](https://github.com/rnabioco/clustifyrdata/raw/master/data/ref_tabula_muris_facs.rda) | Tabula Muris (SmartSeq2)                         | 175    | 23341  | mouse | [from](https://www.nature.com/articles/s41586-018-0590-4)                   |
| [ref\_mouse.rnaseq](https://github.com/rnabioco/clustifyrdata/raw/master/data/ref_mouse.rnaseq.rda)             | Mouse RNA-seq from 28 cell types                 | 28     | 21214  | mouse | [from](https://genome.cshlp.org/content/early/2019/03/11/gr.240093.118)     |
| [ref\_moca\_main](https://github.com/rnabioco/clustifyrdata/raw/master/data/ref_moca_main.rda)                  | Mouse Organogenesis Cell Atlas (main cell types) | 37     | 26183  | mouse | [from](https://www.nature.com/articles/s41586-019-0969-x)                   |
| [ref\_immgen](https://github.com/rnabioco/clustifyrdata/raw/master/data/ref_immgen.rda)                         | Mouse sorted immune cells                        | 253    | 22134  | mouse | [from](https://www.nature.com/articles/ni1008-1091)                         |
| [ref\_hema\_microarray](https://github.com/rnabioco/clustifyrdata/raw/master/data/ref_hema_microarray.rda)      | Human hematopoietic cell microarray              | 38     | 21246  | human | [from](https://www.cell.com/fulltext/S0092-8674\(11\)00005-5)               |
| [ref\_cortex\_dev](https://github.com/rnabioco/clustifyrdata/raw/master/data/ref_cortex_dev.rda)                | Human cortex development scRNA-seq               | 47     | 56864  | human | [from](https://science.sciencemag.org/content/358/6368/1318.long)           |
| [ref\_pan\_indrop](https://github.com/rnabioco/clustifyrdata/raw/master/data/ref_pan_indrop.rda)                | Human pancreatic cell scRNA-seq (inDrop)         | 14     | 20125  | human | [from](https://www.cell.com/fulltext/S2405-4712\(16\)30266-6)               |
| [ref\_pan\_smartseq2](https://github.com/rnabioco/clustifyrdata/raw/master/data/ref_pan_smartseq2.rda)          | Human pancreatic cell scRNA-seq (SmartSeq2)      | 12     | 25525  | human | [from](https://www.sciencedirect.com/science/article/pii/S1550413116304363) |

See the [reference
page](https://rnabioco.github.io/clustifyrdata/reference) for available
data sets, and [individual ref download
page](https://rnabioco.github.io/clustifyrdata/articles/download_refs.html).

Data sets have uniform suffixes: - `ref_*` : the prebuilt reference
expression matrix.

  - `*_matrix` : single-cell RNA expression matrix.

  - `*_avg` : average expression caluculated from a single-cell RNA
    expression matrix.

  - `*_meta` : metadata from a single-cell RNA-seq experiment.

  - `*_vargenes` : variable genes used for dimension reduction,
    determined by [Seurat](https://CRAN.R-project.org/package=Seurat).

  - `*_markers` : marker genes determined by
    [Seurat](https://CRAN.R-project.org/package=Seurat).

  - `*_M3Drop` : variable genes used for dimension reduction as
    determined by
    [M3Drop](https://bioconductor.org/packages/release/bioc/html/M3Drop.html).

## Installation

**N.B.: clustifyrdata is a large data package (nearly 350 Mb
uncompressed).**

``` r
# install.packages("remotes")
remotes::install_github("rnabioco/clustifyrdata")
```
