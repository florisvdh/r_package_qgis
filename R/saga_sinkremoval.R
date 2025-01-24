##' QGIS Algorithm provided by SAGA Sink removal (saga:sinkremoval)
##'
##' @title QGIS algorithm Sink removal
##'
##' @param DEM `raster` - DEM. Path to a raster layer.
##' @param SINKROUTE `raster` - Sink Route. Path to a raster layer.
##' @param METHOD `enum`  of `("[0] Deepen Drainage Routes", "[1] Fill Sinks")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param THRSHEIGHT `number` - Threshold Height. A numeric value.
##' @param DEM_PREPROC `rasterDestination` - Preprocessed DEM. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * DEM_PREPROC - outputRaster - Preprocessed DEM
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_sinkremoval <- function(DEM = qgisprocess::qgis_default_value(), SINKROUTE = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), THRSHEIGHT = qgisprocess::qgis_default_value(), DEM_PREPROC = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:sinkremoval")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:sinkremoval", `DEM` = DEM, `SINKROUTE` = SINKROUTE, `METHOD` = METHOD, `THRSHEIGHT` = THRSHEIGHT, `DEM_PREPROC` = DEM_PREPROC,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:sinkremoval", `DEM` = DEM, `SINKROUTE` = SINKROUTE, `METHOD` = METHOD, `THRSHEIGHT` = THRSHEIGHT, `DEM_PREPROC` = DEM_PREPROC,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "DEM_PREPROC")
  }
}