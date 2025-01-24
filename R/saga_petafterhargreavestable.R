character(0)

saga_petafterhargreavestable <- function(TABLE = qgisprocess::qgis_default_value(), JD = qgisprocess::qgis_default_value(), T = qgisprocess::qgis_default_value(), T_MIN = qgisprocess::qgis_default_value(), T_MAX = qgisprocess::qgis_default_value(), LAT = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:petafterhargreavestable")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:petafterhargreavestable", `TABLE` = TABLE, `JD` = JD, `T` = T, `T_MIN` = T_MIN, `T_MAX` = T_MAX, `LAT` = LAT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:petafterhargreavestable", `TABLE` = TABLE, `JD` = JD, `T` = T, `T_MIN` = T_MIN, `T_MAX` = T_MAX, `LAT` = LAT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "NA")
  }
}