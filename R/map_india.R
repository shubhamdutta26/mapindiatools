#' Retrieve Indian mapping data
#'
#' @param regions The region breakdown for the map, can be one of
#'   (\code{"states"}, \code{"state"}, \code{"districts"}, \code{"district"}).
#'   The default is \code{"states"}.
#' @param include The regions to include in the resulting map. If \code{regions} is
#'  \code{"states"}/\code{"state"}, the value can be either a state name, abbreviation or code.
#'  If states are provided in the district map, only ditricts in the included states
#'  will be returned.
#' @param exclude he regions to exclude in the resulting map. If \code{regions} is
#'  \code{"states"}/\code{"state"}, the value can be either a state name, abbreviation or code.
#'  The regions listed in the \code{include} parameter are applied first and the
#'  \code{exclude} regions are then removed from the resulting map. Any excluded regions
#'  not present in the included regions will be ignored.
#'
#' @return An `sf` data frame of indian map coordinates divided by the desired \code{regions}.
#' @importFrom rlang arg_match
#' @export
#'
#' @examples
#' str(map_india())
#'
#' df <- map_india(regions = "districts")
#'
#' include_states <- map_india(include = c("WB", "NL", "AP"))
#'
#' exclude_states <- map_india(exclude = c("WB", "NL", "AP"))
map_india <- function(
    regions = c("states", "state", "districts", "district"),
    include = c(),
    exclude = c()) {

  regions <- rlang::arg_match(regions)

  if (regions %in% c("state", "states")) {
    df <- india_states
  } else if (regions %in% c("district", "districts")) {
    df <- india_districts
  }

  if (length(include) > 0) {
    df <- df[df$stname %in% include |
               df$abbr %in% include |
                 df$code11 %in% include, ]
  }

  if (length(exclude) > 0) {
    df <- df[!(df$stname %in% exclude |
                 df$abbr %in% exclude |
                 df$code11 %in% exclude), ]
  }

  # Drop geometry temporarily to perform sorting
  df_no_geom <- sf::st_drop_geometry(df)
  df_ordered <- df_no_geom[order(df_no_geom$abbr), ]

  df[order(df$abbr), ]
}

#' Retrieve centroid labels
#'
#' @param regions The region breakdown for the map, can be one of
#'   (\code{"states"}, \code{"districts"}, as specified by the internal file names.
#'   The default is \code{"states"}.
#'
#' @return An `sf` data frame of state or district centroid labels and positions
#'   relative to the coordinates returned by the \code{map_india} function.
#'
#' @export
centroid_labels <- function(
    regions = c("states", "districts")
) {

  regions <- rlang::arg_match(regions)

  if (regions == "states") {
    india_states_centroids
  } else if (regions == "districts") {
    india_districts_centroids
  }

}
