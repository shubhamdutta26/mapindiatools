#' First run the internal code "build_mapping_data.R" to clean the geojson
#' files and export as gpkg files. The original geojson data could not be
#' uploaded since the size was > 25 Mb.
#'
#' These gpkg files will be uploaded in a github repo called mapindiatoolsdata.
#' Import gpkg files and convert them to internal data using this script.

## states
india_states <- "/path/to/india_states.gpkg"
india_states <- sf::read_sf(india_states)

india_states_centroids <- "/path/to/india_states_centroids.gpkg"
india_states_centroids <- sf::read_sf(india_states_centroids)

## districts
india_districts <- "/path/to/india_districts.gpkg"
india_districts <- sf::read_sf(india_districts)

india_districts_centroids <- "/path/to/india_districts_centroids.gpkg"
india_districts_centroids <- sf::read_sf(india_districts_centroids)

# Run this to create a sysdata.rda
usethis::use_data(india_districts, india_districts_centroids,
                  india_states, india_states_centroids, internal = TRUE)
