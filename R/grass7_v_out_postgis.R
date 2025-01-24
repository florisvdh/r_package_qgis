character(0)

grass7_v_out_postgis <- function(input = qgisprocess::qgis_default_value(), type = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), output_layer = qgisprocess::qgis_default_value(), options = qgisprocess::qgis_default_value(), .t = qgisprocess::qgis_default_value(), .l = qgisprocess::qgis_default_value(), .arg_2 = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_SNAP_TOLERANCE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_MIN_AREA_PARAMETER = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass7:v.out.postgis")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass7:v.out.postgis", `input` = input, `type` = type, `output` = output, `output_layer` = output_layer, `options` = options, `-t` = .t, `-l` = .l, `-2` = .arg_2, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_SNAP_TOLERANCE_PARAMETER` = GRASS_SNAP_TOLERANCE_PARAMETER, `GRASS_MIN_AREA_PARAMETER` = GRASS_MIN_AREA_PARAMETER,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass7:v.out.postgis", `input` = input, `type` = type, `output` = output, `output_layer` = output_layer, `options` = options, `-t` = .t, `-l` = .l, `-2` = .arg_2, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_SNAP_TOLERANCE_PARAMETER` = GRASS_SNAP_TOLERANCE_PARAMETER, `GRASS_MIN_AREA_PARAMETER` = GRASS_MIN_AREA_PARAMETER,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "NA")
  }
}