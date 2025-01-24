##' QGIS Algorithm provided by SAGA Flow path length (saga:flowpathlength)
##'
##' @title QGIS algorithm Flow path length
##'
##' @param ELEVATION `raster` - Elevation. Path to a raster layer.
##' @param SEED `raster` - Seeds. Path to a raster layer.
##' @param METHOD `enum`  of `("[0] Deterministic 8 (D8)", "[1] Multiple Flow Direction (FD8)")` - Flow Routing Algorithm. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param CONVERGENCE `number` - Convergence (FD8). A numeric value.
##' @param LENGTH `rasterDestination` - Flow Path Length. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * LENGTH - outputRaster - Flow Path Length
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_flowpathlength <- function(ELEVATION = qgisprocess::qgis_default_value(), SEED = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), CONVERGENCE = qgisprocess::qgis_default_value(), LENGTH = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:flowpathlength")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:flowpathlength", `ELEVATION` = ELEVATION, `SEED` = SEED, `METHOD` = METHOD, `CONVERGENCE` = CONVERGENCE, `LENGTH` = LENGTH,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:flowpathlength", `ELEVATION` = ELEVATION, `SEED` = SEED, `METHOD` = METHOD, `CONVERGENCE` = CONVERGENCE, `LENGTH` = LENGTH,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "LENGTH")
  }
}