##' QGIS Algorithm provided by SAGA Reclassify values (saga:reclassifyvalues)
##'
##' @title QGIS algorithm Reclassify values
##'
##' @param INPUT `raster` - Grid. Path to a raster layer.
##' @param METHOD `enum`  of `("[0] single", "[1] range", "[2] simple table")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param OLD `number` - old value (for single value change). A numeric value.
##' @param NEW `number` - new value (for single value change). A numeric value.
##' @param SOPERATOR `enum`  of `("[0] =", "[1] <", "[2] <=", "[3] >=", "[4] >")` - operator (for single value change). Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param MIN `number` - minimum value (for range). A numeric value.
##' @param MAX `number` - maximum value (for range). A numeric value.
##' @param RNEW `number` - new value(for range). A numeric value.
##' @param ROPERATOR `enum`  of `("[0] <=", "[1] <")` - operator (for range). Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param RETAB `matrix` - Lookup Table. A comma delimited list of values.
##' @param TOPERATOR `enum`  of `("[0] min <= value < max", "[1] min <= value <= max", "[2] min < value <= max", "[3] min < value < max")` - operator (for table). Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param NODATA `number` - new value for no data values. A numeric value.
##' @param OTHERS `number` - new value for other values. A numeric value.
##' @param RESULT `rasterDestination` - Reclassified Grid. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputRaster - Reclassified Grid
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_reclassifyvalues <- function(INPUT = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), OLD = qgisprocess::qgis_default_value(), NEW = qgisprocess::qgis_default_value(), SOPERATOR = qgisprocess::qgis_default_value(), MIN = qgisprocess::qgis_default_value(), MAX = qgisprocess::qgis_default_value(), RNEW = qgisprocess::qgis_default_value(), ROPERATOR = qgisprocess::qgis_default_value(), RETAB = qgisprocess::qgis_default_value(), TOPERATOR = qgisprocess::qgis_default_value(), NODATA = qgisprocess::qgis_default_value(), OTHERS = qgisprocess::qgis_default_value(), RESULT = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:reclassifyvalues")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:reclassifyvalues", `INPUT` = INPUT, `METHOD` = METHOD, `OLD` = OLD, `NEW` = NEW, `SOPERATOR` = SOPERATOR, `MIN` = MIN, `MAX` = MAX, `RNEW` = RNEW, `ROPERATOR` = ROPERATOR, `RETAB` = RETAB, `TOPERATOR` = TOPERATOR, `NODATA` = NODATA, `OTHERS` = OTHERS, `RESULT` = RESULT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:reclassifyvalues", `INPUT` = INPUT, `METHOD` = METHOD, `OLD` = OLD, `NEW` = NEW, `SOPERATOR` = SOPERATOR, `MIN` = MIN, `MAX` = MAX, `RNEW` = RNEW, `ROPERATOR` = ROPERATOR, `RETAB` = RETAB, `TOPERATOR` = TOPERATOR, `NODATA` = NODATA, `OTHERS` = OTHERS, `RESULT` = RESULT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "RESULT")
  }
}