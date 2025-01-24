##' QGIS Algorithm provided by QGIS (native c++) Equal to frequency (native:equaltofrequency)
##'
##' @title QGIS algorithm Equal to frequency
##'
##' @param INPUT_VALUE_RASTER `raster` - Input value raster. Path to a raster layer.
##' @param INPUT_VALUE_RASTER_BAND `band` - Value raster band. Integer value representing an existing raster band number.
##' @param INPUT_RASTERS `multilayer` - Input raster layers. .
##' @param IGNORE_NODATA `boolean` - Ignore NoData values. 1 for true/yes. 0 for false/no.
##' @param OUTPUT_NODATA_VALUE `number` - Output NoData value. A numeric value.
##' @param OUTPUT `rasterDestination` - Output layer. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * CRS_AUTHID - outputString - CRS authority identifier
##' * EXTENT - outputString - Extent
##' * FOUND_LOCATIONS_COUNT - outputNumber - Count of cells with equal value occurrences
##' * HEIGHT_IN_PIXELS - outputNumber - Height in pixels
##' * MEAN_FREQUENCY_PER_LOCATION - outputNumber - Mean frequency at valid cell locations
##' * OCCURRENCE_COUNT - outputNumber - Count of value occurrences
##' * OUTPUT - outputRaster - Output layer
##' * TOTAL_PIXEL_COUNT - outputNumber - Total pixel count
##' * WIDTH_IN_PIXELS - outputNumber - Width in pixels
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_equaltofrequency <- function(INPUT_VALUE_RASTER = qgisprocess::qgis_default_value(), INPUT_VALUE_RASTER_BAND = qgisprocess::qgis_default_value(), INPUT_RASTERS = qgisprocess::qgis_default_value(), IGNORE_NODATA = qgisprocess::qgis_default_value(), OUTPUT_NODATA_VALUE = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:equaltofrequency")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:equaltofrequency", `INPUT_VALUE_RASTER` = INPUT_VALUE_RASTER, `INPUT_VALUE_RASTER_BAND` = INPUT_VALUE_RASTER_BAND, `INPUT_RASTERS` = INPUT_RASTERS, `IGNORE_NODATA` = IGNORE_NODATA, `OUTPUT_NODATA_VALUE` = OUTPUT_NODATA_VALUE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:equaltofrequency", `INPUT_VALUE_RASTER` = INPUT_VALUE_RASTER, `INPUT_VALUE_RASTER_BAND` = INPUT_VALUE_RASTER_BAND, `INPUT_RASTERS` = INPUT_RASTERS, `IGNORE_NODATA` = IGNORE_NODATA, `OUTPUT_NODATA_VALUE` = OUTPUT_NODATA_VALUE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "CRS_AUTHID")
  }
}