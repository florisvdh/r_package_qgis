##' QGIS Algorithm provided by QGIS Climb along line (qgis:climbalongline)
##'
##' @title QGIS algorithm Climb along line
##'
##' @param INPUT `source` - Line layer. Path to a vector layer.
##' @param OUTPUT `sink` - Climb layer. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * MAXELEVATION - outputNumber - Maximum elevation
##' * MINELEVATION - outputNumber - Minimum elevation
##' * OUTPUT - outputVector - Climb layer
##' * TOTALCLIMB - outputNumber - Total climb
##' * TOTALDESCENT - outputNumber - Total descent
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_climbalongline <- function(INPUT = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("qgis:climbalongline")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("qgis:climbalongline", `INPUT` = INPUT, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("qgis:climbalongline", `INPUT` = INPUT, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "MAXELEVATION")
  }
}