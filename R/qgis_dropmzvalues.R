##' QGIS Algorithm provided by QGIS (native c++) Drop M/Z values (native:dropmzvalues)
##'
##' @title QGIS algorithm Drop M/Z values
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param DROP_M_VALUES `boolean` - Drop M Values. 1 for true/yes. 0 for false/no.
##' @param DROP_Z_VALUES `boolean` - Drop Z Values. 1 for true/yes. 0 for false/no.
##' @param OUTPUT `sink` - Z/M Dropped. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Z/M Dropped
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_dropmzvalues <- function(INPUT = qgisprocess::qgis_default_value(), DROP_M_VALUES = qgisprocess::qgis_default_value(), DROP_Z_VALUES = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:dropmzvalues")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:dropmzvalues", `INPUT` = INPUT, `DROP_M_VALUES` = DROP_M_VALUES, `DROP_Z_VALUES` = DROP_Z_VALUES, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:dropmzvalues", `INPUT` = INPUT, `DROP_M_VALUES` = DROP_M_VALUES, `DROP_Z_VALUES` = DROP_Z_VALUES, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}