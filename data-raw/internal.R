# Internal data
india_districts_centroids <- sf::read_sf("inst/extdata/india_districts_centroids.gpkg")
india_districts <- sf::read_sf("inst/extdata/india_districts.gpkg")
india_states <- sf::read_sf("inst/extdata/india_states.gpkg")
india_states_centroids <- sf::read_sf("inst/extdata/india_states_centroids.gpkg")

usethis::use_data(india_districts_centroids, india_districts,
                  india_states, india_states_centroids,
                  internal = TRUE)
