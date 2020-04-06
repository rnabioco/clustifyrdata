
<!-- README.md is generated from README.Rmd. Please edit that file -->

# clustifyrdata

<!-- badges: start -->

[![R build
status](https://github.com/rnabioco/clustifyrdata/workflows/R-CMD-check/badge.svg)](https://github.com/rnabioco/clustifyrdata/actions)
<!-- badges: end -->

clustifyrdata provides 43 external data sets for cell-type assignment
with [clustifyr](https://rnabioco.github.io/clustifyr) and [reproducible
scripts](https://github.com/rnabioco/clustifyrdata/tree/master/data-raw)
to build data objects.

See the [reference
page](https://rnabioco.github.io/clustifyrdata/reference) for available
data sets.

Data sets have uninform suffixes:

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
