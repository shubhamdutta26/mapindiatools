
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

The geojson files are stored in the . The data was read using the `sf`
package, appropriately modified using the `build_mapping_data()`
function, and saved as .gpkg files in
[mapindiatoolsdata](https://github.com/shubhamdutta26/mapindiatoolsdata)
repository. The centroids were also calculated using the
`compute_centroids()` function. These files were then stored as internal
data in R/ folder.

**Note:** The 3-digit code11 codes for districts were merged with the
2-digit state codes to create a 5-digit code for the districts.

## Installation

To install mapindiatools from CRAN:

``` r
install.packages("mapindiatools")
#> Installing package into '/private/var/folders/6h/604l3vl53px3ch9hjv2dz4300000gn/T/Rtmp7zc7cW/temp_libpath201552dfa90c'
#> (as 'lib' is unspecified)
#> installing the source package 'mapindiatools'
```

You can install the development version of mapindiatools from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("shubhamdutta26/mapindiatools")
#> ℹ Loading metadata database
#> ✔ Loading metadata database ... done
#> 
#> 
#> → Will install 37 packages.
#> → Will update 1 package.
#> → Will download 23 CRAN packages (16.67 MB), cached: 14 (132.72 MB).
#> → Will download 1 package with unknown size.
#> + bit                   4.5.0      
#> + bit64                 4.5.2      
#> + classInt              0.4-10      ⬇ (500.08 kB)
#> + cli                   3.6.3      
#> + clipr                 0.8.0       ⬇ (51.67 kB)
#> + crayon                1.5.3      
#> + DBI                   1.2.3      
#> + dplyr                 1.1.4       ⬇ (1.61 MB)
#> + e1071                 1.7-16     
#> + fansi                 1.0.6       ⬇ (389.81 kB)
#> + generics              0.1.3       ⬇ (81.24 kB)
#> + glue                  1.8.0      
#> + hms                   1.1.3       ⬇ (100.24 kB)
#> + lifecycle             1.0.4       ⬇ (124.76 kB)
#> + magrittr              2.0.3       ⬇ (233.70 kB)
#> + mapindiatools 1.0.1 → 1.0.1.9000 👷🏼‍♀️🔧 ⬇ (GitHub: 6b6d4aa)
#> + pillar                1.9.0       ⬇ (651.77 kB)
#> + pkgconfig             2.0.3       ⬇ (18.49 kB)
#> + proxy                 0.4-27      ⬇ (200.89 kB)
#> + purrr                 1.0.2       ⬇ (527.83 kB)
#> + R6                    2.5.1       ⬇ (83.25 kB)
#> + Rcpp                  1.0.13     
#> + readr                 2.1.5       ⬇ (1.97 MB)
#> + rlang                 1.1.4      
#> + s2                    1.1.7      
#> + sf                    1.0-18     
#> + stringi               1.8.4      
#> + stringr               1.5.1       ⬇ (313.90 kB)
#> + tibble                3.2.1       ⬇ (689.38 kB)
#> + tidyr                 1.3.1       ⬇ (1.32 MB)
#> + tidyselect            1.2.1       ⬇ (224.46 kB)
#> + tzdb                  0.4.0       ⬇ (1.26 MB)
#> + units                 0.8-5       ⬇ (997.10 kB)
#> + utf8                  1.2.4       ⬇ (210.11 kB)
#> + vctrs                 0.6.5       ⬇ (1.98 MB)
#> + vroom                 1.6.5       ⬇ (3.13 MB)
#> + withr                 3.0.2      
#> + wk                    0.9.4
#> ℹ Getting 23 pkgs (16.67 MB) and 1 pkg with unknown size, 14 (132.72 MB) cached
#> ✔ Cached copy of mapindiatools 1.0.1.9000 (source) is the latest build
#> ✔ Cached copy of R6 2.5.1 (x86_64-apple-darwin20) is the latest build
#> ✔ Cached copy of classInt 0.4-10 (x86_64-apple-darwin20) is the latest build
#> ✔ Cached copy of clipr 0.8.0 (x86_64-apple-darwin20) is the latest build
#> ✔ Cached copy of dplyr 1.1.4 (x86_64-apple-darwin20) is the latest build
#> ✔ Cached copy of fansi 1.0.6 (x86_64-apple-darwin20) is the latest build
#> ✔ Cached copy of generics 0.1.3 (x86_64-apple-darwin20) is the latest build
#> ✔ Cached copy of hms 1.1.3 (x86_64-apple-darwin20) is the latest build
#> ✔ Cached copy of lifecycle 1.0.4 (x86_64-apple-darwin20) is the latest build
#> ✔ Cached copy of magrittr 2.0.3 (x86_64-apple-darwin20) is the latest build
#> ✔ Cached copy of pillar 1.9.0 (x86_64-apple-darwin20) is the latest build
#> ✔ Cached copy of pkgconfig 2.0.3 (x86_64-apple-darwin20) is the latest build
#> ✔ Cached copy of proxy 0.4-27 (x86_64-apple-darwin20) is the latest build
#> ✔ Cached copy of purrr 1.0.2 (x86_64-apple-darwin20) is the latest build
#> ✔ Cached copy of readr 2.1.5 (x86_64-apple-darwin20) is the latest build
#> ✔ Cached copy of stringr 1.5.1 (x86_64-apple-darwin20) is the latest build
#> ✔ Cached copy of tibble 3.2.1 (x86_64-apple-darwin20) is the latest build
#> ✔ Cached copy of tidyr 1.3.1 (x86_64-apple-darwin20) is the latest build
#> ✔ Cached copy of tidyselect 1.2.1 (x86_64-apple-darwin20) is the latest build
#> ✔ Cached copy of tzdb 0.4.0 (x86_64-apple-darwin20) is the latest build
#> ✔ Cached copy of units 0.8-5 (x86_64-apple-darwin20) is the latest build
#> ✔ Cached copy of utf8 1.2.4 (x86_64-apple-darwin20) is the latest build
#> ✔ Cached copy of vctrs 0.6.5 (x86_64-apple-darwin20) is the latest build
#> ✔ Cached copy of vroom 1.6.5 (x86_64-apple-darwin20) is the latest build
#> ✔ Installed mapindiatools 1.0.1.9000 (github::shubhamdutta26/mapindiatools@6b6d4aa) (376ms)
#> ✔ Installed DBI 1.2.3  (384ms)
#> ✔ Installed R6 2.5.1  (398ms)
#> ✔ Installed Rcpp 1.0.13  (405ms)
#> ✔ Installed bit64 4.5.2  (412ms)
#> ✔ Installed bit 4.5.0  (418ms)
#> ✔ Installed classInt 0.4-10  (455ms)
#> ✔ Installed cli 3.6.3  (463ms)
#> ✔ Installed clipr 0.8.0  (469ms)
#> ✔ Installed crayon 1.5.3  (472ms)
#> ✔ Installed dplyr 1.1.4  (476ms)
#> ✔ Installed e1071 1.7-16  (478ms)
#> ✔ Installed fansi 1.0.6  (478ms)
#> ✔ Installed generics 0.1.3  (480ms)
#> ✔ Installed glue 1.8.0  (486ms)
#> ✔ Installed hms 1.1.3  (515ms)
#> ✔ Installed lifecycle 1.0.4  (104ms)
#> ✔ Installed magrittr 2.0.3  (106ms)
#> ✔ Installed pillar 1.9.0  (77ms)
#> ✔ Installed pkgconfig 2.0.3  (71ms)
#> ✔ Installed proxy 0.4-27  (69ms)
#> ✔ Installed purrr 1.0.2  (73ms)
#> ✔ Installed readr 2.1.5  (77ms)
#> ✔ Installed rlang 1.1.4  (77ms)
#> ✔ Installed s2 1.1.7  (119ms)
#> ✔ Installed stringi 1.8.4  (105ms)
#> ✔ Installed stringr 1.5.1  (75ms)
#> ✔ Installed tibble 3.2.1  (47ms)
#> ✔ Installed tidyr 1.3.1  (47ms)
#> ✔ Installed tidyselect 1.2.1  (35ms)
#> ✔ Installed tzdb 0.4.0  (63ms)
#> ✔ Installed sf 1.0-18  (705ms)
#> ✔ Installed units 0.8-5  (81ms)
#> ✔ Installed utf8 1.2.4  (75ms)
#> ✔ Installed vctrs 0.6.5  (74ms)
#> ✔ Installed vroom 1.6.5  (90ms)
#> ✔ Installed withr 3.0.2  (133ms)
#> ✔ Installed wk 0.9.4  (56ms)
#> ✔ 1 pkg + 40 deps: kept 2, upd 1, added 37 [9.1s]
```

## Usage

To begin using `mapindiatools`, import the package using the `library`
command:

``` r
library(mapindiatools)
```

## Acknowledgments

I would like to thank [pdil](https://github.com/pdil) since I have used
his `usmap` package to write most of the functions in this package. I
would also like to thank [datta07](https://github.com/datta07) for the
geojson files of the Indian subcontinent.
