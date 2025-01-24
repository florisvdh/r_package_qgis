##' QGIS Algorithm provided by SAGA Fill sinks (qm of esp) (saga:fillsinksqmofesp)
##'
##' @title QGIS algorithm Fill sinks (qm of esp)
##'
##' @param DEM `raster` - DEM. Path to a raster layer.
##' @param DZFILL `number` - Fill Increment. A numeric value.
##' @param FILLED `rasterDestination` - DEM Without Sinks. Path for new raster layer.
##' @param SINKS `rasterDestination` - Sinks. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * FILLED - outputRaster - DEM Without Sinks
##' * SINKS - outputRaster - Sinks
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_fillsinksqmofesp <- function(DEM = qgisprocess::qgis_default_value(), DZFILL = qgisprocess::qgis_default_value(), FILLED = qgisprocess::qgis_default_value(), SINKS = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:fillsinksqmofesp")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:fillsinksqmofesp", `DEM` = DEM, `DZFILL` = DZFILL, `FILLED` = FILLED, `SINKS` = SINKS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:fillsinksqmofesp", `DEM` = DEM, `DZFILL` = DZFILL, `FILLED` = FILLED, `SINKS` = SINKS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "FILLED")
  }
}