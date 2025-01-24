% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/saga_dtmfilterslopebased.R
\name{saga_dtmfilterslopebased}
\alias{saga_dtmfilterslopebased}
\title{QGIS algorithm Dtm filter (slope-based)}
\usage{
saga_dtmfilterslopebased(
  INPUT = qgisprocess::qgis_default_value(),
  RADIUS = qgisprocess::qgis_default_value(),
  TERRAINSLOPE = qgisprocess::qgis_default_value(),
  GROUND = qgisprocess::qgis_default_value(),
  NONGROUND = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{INPUT}{\code{raster} - Grid to filter. Path to a raster layer.}

\item{RADIUS}{\code{number} - Search Radius. A numeric value.}

\item{TERRAINSLOPE}{\code{number} - Approx. Terrain Slope. A numeric value.}

\item{GROUND}{\code{rasterDestination} - Bare Earth. Path for new raster layer.}

\item{NONGROUND}{\code{rasterDestination} - Removed Objects. Path for new raster layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Dtm filter (slope-based) (saga:dtmfilterslopebased)
}
\details{
\subsection{Outputs description}{
\itemize{
\item GROUND - outputRaster - Bare Earth
\item NONGROUND - outputRaster - Removed Objects
}
}
}
