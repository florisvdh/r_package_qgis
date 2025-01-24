##' QGIS Algorithm provided by QGIS (native c++) Polygonize (native:polygonize)
##'
##' @title QGIS algorithm Polygonize
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param KEEP_FIELDS `boolean` - Keep table structure of line layer. 1 for true/yes. 0 for false/no.
##' @param OUTPUT `sink` - Polygons. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * NUM_POLYGONS - outputNumber - Number of polygons
##' * OUTPUT - outputVector - Polygons
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_polygonize <- function(INPUT = qgisprocess::qgis_default_value(), KEEP_FIELDS = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:polygonize")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:polygonize", `INPUT` = INPUT, `KEEP_FIELDS` = KEEP_FIELDS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:polygonize", `INPUT` = INPUT, `KEEP_FIELDS` = KEEP_FIELDS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "NUM_POLYGONS")
  }
}