##' QGIS Algorithm provided by SAGA Morphometric protection index (saga:morphometricprotectionindex)
##'
##' @title QGIS algorithm Morphometric protection index
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param RADIUS `number` - Radius. A numeric value.
##' @param PROTECTION `rasterDestination` - Protection Index. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * PROTECTION - outputRaster - Protection Index
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_morphometricprotectionindex <- function(DEM = qgisprocess::qgis_default_value(), RADIUS = qgisprocess::qgis_default_value(), PROTECTION = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:morphometricprotectionindex")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:morphometricprotectionindex", `DEM` = DEM, `RADIUS` = RADIUS, `PROTECTION` = PROTECTION,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:morphometricprotectionindex", `DEM` = DEM, `RADIUS` = RADIUS, `PROTECTION` = PROTECTION,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "PROTECTION")
  }
}