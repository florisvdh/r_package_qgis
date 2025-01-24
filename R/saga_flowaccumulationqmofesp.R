##' QGIS Algorithm provided by SAGA Flow accumulation (qm of esp) (saga:flowaccumulationqmofesp)
##'
##' @title QGIS algorithm Flow accumulation (qm of esp)
##'
##' @param DEM `raster` - DEM. Path to a raster layer.
##' @param PREPROC `enum`  of `("[0] none", "[1] fill sinks temporarily", "[2] fill sinks permanently")` - Preprocessing. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DZFILL `number` - Fill Increment. A numeric value.
##' @param FLOW `rasterDestination` - Contributing Area. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * FLOW - outputRaster - Contributing Area
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_flowaccumulationqmofesp <- function(DEM = qgisprocess::qgis_default_value(), PREPROC = qgisprocess::qgis_default_value(), DZFILL = qgisprocess::qgis_default_value(), FLOW = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:flowaccumulationqmofesp")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:flowaccumulationqmofesp", `DEM` = DEM, `PREPROC` = PREPROC, `DZFILL` = DZFILL, `FLOW` = FLOW,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:flowaccumulationqmofesp", `DEM` = DEM, `PREPROC` = PREPROC, `DZFILL` = DZFILL, `FLOW` = FLOW,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "FLOW")
  }
}