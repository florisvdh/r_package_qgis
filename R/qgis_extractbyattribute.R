##' QGIS Algorithm provided by QGIS (native c++) Extract by attribute (native:extractbyattribute)
##'
##' @title QGIS algorithm Extract by attribute
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param FIELD `field` - Selection attribute. The name of an existing field. ; delimited list of existing field names.
##' @param OPERATOR `enum`  of `("=", "≠", ">", "≥", "<", "≤", "begins with", "contains", "is null", "is not null", "does not contain")` - Operator. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param VALUE `string` - Value. String value.
##' @param OUTPUT `sink` - Extracted (attribute). Path for new vector layer.
##' @param FAIL_OUTPUT `sink` - Extracted (non-matching). Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * FAIL_OUTPUT - outputVector - Extracted (non-matching)
##' * OUTPUT - outputVector - Extracted (attribute)
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_extractbyattribute <- function(INPUT = qgisprocess::qgis_default_value(), FIELD = qgisprocess::qgis_default_value(), OPERATOR = qgisprocess::qgis_default_value(), VALUE = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(), FAIL_OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:extractbyattribute")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:extractbyattribute", `INPUT` = INPUT, `FIELD` = FIELD, `OPERATOR` = OPERATOR, `VALUE` = VALUE, `OUTPUT` = OUTPUT, `FAIL_OUTPUT` = FAIL_OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:extractbyattribute", `INPUT` = INPUT, `FIELD` = FIELD, `OPERATOR` = OPERATOR, `VALUE` = VALUE, `OUTPUT` = OUTPUT, `FAIL_OUTPUT` = FAIL_OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "FAIL_OUTPUT")
  }
}