
<!-- README.md is generated from README.Rmd. Please edit that file -->

# mapindiatools

<!-- badges: start -->

[![R-CMD-check](https://github.com/shubhamdutta26/mapindiatools/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/shubhamdutta26/mapindiatools/actions/workflows/R-CMD-check.yaml)
[![Codecov test
coverage](https://codecov.io/gh/shubhamdutta26/mapindiatools/graph/badge.svg)](https://app.codecov.io/gh/shubhamdutta26/mapindiatools)
<!-- badges: end -->

The goal of `mapindiatools` is to serve as a container package for the
maps data used in `mapindia` package. This data has been separated to
keep the size of the `mapindia` package manageable and facilitate easier
maintenance, while enabling more frequent updates to the Indian map data
frame without relying on `mapindia` package updates.

## Map data

The geojson files are stored in the data-raw/geojson_files folder. These
files were read and appropriately modified using the
`build_mapping_data()` function and saved as gpkg files in the
inst/extdata folder. The centroids were also calculated using the
`compute_centroids()` function.

**Note:** The 3-digit code11 codes for districts were merged with the
2-digit state codes to create a 5-digit code for the districts.

## Installation

You can install the development version of mapindiatools from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("shubhamdutta26/mapindiatools")
```

## Usage

To begin using `mapindiatools`, import the package using the `library`
command:

``` r
library(mapindiatools)
```

## Acknowledgments

I would like to thank [pdil](https://github.com/pdil) since I have used
his `usmap` package to write most of this package. I would also like to
thank [datta07](https://github.com/datta07) for the geojson files.
