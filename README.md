
# opendataswiss

<!-- badges: start -->
<!-- badges: end -->

The goal of opendataswiss is to ...

## Installation

You can install the released version of opendataswiss from [CRAN](https://CRAN.R-project.org) with:

``` r
devtools::install_github("ismailmuller/opendataswiss")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(opendataswiss)

pkgs = opendataswiss::get_listed_packages()

pkgs[c(900:905)]
```

