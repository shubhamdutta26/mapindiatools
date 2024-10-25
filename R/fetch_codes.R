#' Retrieve state and district codes
#'
#' @param regions The region breakdown for the map, can be one of
#'   (\code{"states"}, \code{"state"}, \code{"districts"}, \code{"district"}).
#'   The default is \code{"states"}.
#'
#' @return An data frame of codes of the desired \code{regions}.
#'
#' @export
#'
#' @examples
#' str(fetch_codes())
#'
#' state_codes <- fetch_codes()
#'
#' district_codes <- fetch_codes(regions = "districts")
fetch_codes <- function(
    regions = c("states", "state", "districts", "district")
) {
  regions <- rlang::arg_match(regions)

  map_data <- mapindiatools::map_india(regions)
  sf::st_geometry(map_data) <- NULL
  map_data
}
