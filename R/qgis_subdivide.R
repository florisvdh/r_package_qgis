##' QGIS Algorithm provided by QGIS (native c++) Subdivide (native:subdivide)
##'
##' @title QGIS algorithm Subdivide
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param MAX_NODES `number` - Maximum nodes in parts. A numeric value.
##' @param OUTPUT `sink` - Subdivided. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Subdivided
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_subdivide <- function(INPUT = qgisprocess::qgis_default_value(), MAX_NODES = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:subdivide")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:subdivide", `INPUT` = INPUT, `MAX_NODES` = MAX_NODES, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:subdivide", `INPUT` = INPUT, `MAX_NODES` = MAX_NODES, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}