##' QGIS Algorithm provided by SAGA Rivergridgeneration (saga:rivergridgeneration)
##'
##' @title QGIS algorithm Rivergridgeneration
##'
##' @param INPUT `raster` - Geländemodell (DTM). Path to a raster layer.
##' @param OUTPUT `rasterDestination` - HG Raster. Path for new raster layer.
##' @param SX `number` - Abflusspfad-Quelle, x-Wert. A numeric value.
##' @param SY `number` - Abflusspfad-Quelle, y-Wert. A numeric value.
##' @param MX `number` - Abflusspfad-Mündung, x-Wert. A numeric value.
##' @param MY `number` - Abflusspfad-Mündung, y-Wert. A numeric value.
##' @param Owrite `boolean` - Overwrite RiverGridCells. 1 for true/yes. 0 for false/no.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - HG Raster
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_rivergridgeneration <- function(INPUT = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(), SX = qgisprocess::qgis_default_value(), SY = qgisprocess::qgis_default_value(), MX = qgisprocess::qgis_default_value(), MY = qgisprocess::qgis_default_value(), Owrite = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:rivergridgeneration")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:rivergridgeneration", `INPUT` = INPUT, `OUTPUT` = OUTPUT, `SX` = SX, `SY` = SY, `MX` = MX, `MY` = MY, `Owrite` = Owrite,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:rivergridgeneration", `INPUT` = INPUT, `OUTPUT` = OUTPUT, `SX` = SX, `SY` = SY, `MX` = MX, `MY` = MY, `Owrite` = Owrite,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}