% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/saga_createpolygonsgraticule.R
\name{saga_createpolygonsgraticule}
\alias{saga_createpolygonsgraticule}
\title{QGIS algorithm Create polygons graticule}
\usage{
saga_createpolygonsgraticule(
  EXTENT = qgisprocess::qgis_default_value(),
  EXTENT_X_MIN_EXTENT_X_MAX_EXTENT_Y_MIN_EXTENT_Y_MAX = qgisprocess::qgis_default_value(),
  DIVISION_X = qgisprocess::qgis_default_value(),
  DIVISION_Y = qgisprocess::qgis_default_value(),
  ALIGNMENT = qgisprocess::qgis_default_value(),
  GRATICULE_RECT = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{EXTENT}{\code{source} - Extent. Path to a vector layer.}

\item{EXTENT_X_MIN_EXTENT_X_MAX_EXTENT_Y_MIN_EXTENT_Y_MAX}{\code{extent} - Output extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used.. Original algorithm parameter name: EXTENT_X_MIN EXTENT_X_MAX EXTENT_Y_MIN EXTENT_Y_MAX.}

\item{DIVISION_X}{\code{number} - Division Width. A numeric value.}

\item{DIVISION_Y}{\code{number} - Division Height. A numeric value.}

\item{ALIGNMENT}{\code{enum}  of \verb{("[0] Bottom left", "[1] Top left", "[2] Bottom right", "[3] Top right", "[4] Centered")} - Alignment. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{GRATICULE_RECT}{\code{vectorDestination} - Rectangle Graticule. Path for new vector layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Create polygons graticule (saga:createpolygonsgraticule)
}
\details{
\subsection{Outputs description}{
\itemize{
\item GRATICULE_RECT - outputVector - Rectangle Graticule
}
}
}
