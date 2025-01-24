% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/saga_simulation.R
\name{saga_simulation}
\alias{saga_simulation}
\title{QGIS algorithm Simulation}
\usage{
saga_simulation(
  DEM = qgisprocess::qgis_default_value(),
  FUEL = qgisprocess::qgis_default_value(),
  WINDSPD = qgisprocess::qgis_default_value(),
  WINDDIR = qgisprocess::qgis_default_value(),
  M1H = qgisprocess::qgis_default_value(),
  M10H = qgisprocess::qgis_default_value(),
  M100H = qgisprocess::qgis_default_value(),
  MHERB = qgisprocess::qgis_default_value(),
  MWOOD = qgisprocess::qgis_default_value(),
  IGNITION = qgisprocess::qgis_default_value(),
  TIME = qgisprocess::qgis_default_value(),
  FLAME = qgisprocess::qgis_default_value(),
  INTENSITY = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{DEM}{\code{raster} - DEM. Path to a raster layer.}

\item{FUEL}{\code{raster} - Fuel Model. Path to a raster layer.}

\item{WINDSPD}{\code{raster} - Wind Speed. Path to a raster layer.}

\item{WINDDIR}{\code{raster} - Wind Direction. Path to a raster layer.}

\item{M1H}{\code{raster} - Dead Fuel Moisture 1H. Path to a raster layer.}

\item{M10H}{\code{raster} - Dead Fuel Moisture 10H. Path to a raster layer.}

\item{M100H}{\code{raster} - Dead Fuel Moisture 100H. Path to a raster layer.}

\item{MHERB}{\code{raster} - Herbaceous Fuel Moisture. Path to a raster layer.}

\item{MWOOD}{\code{raster} - Wood Fuel Moisture. Path to a raster layer.}

\item{IGNITION}{\code{raster} - Ignition Points. Path to a raster layer.}

\item{TIME}{\code{rasterDestination} - Time. Path for new raster layer.}

\item{FLAME}{\code{rasterDestination} - Flame Length. Path for new raster layer.}

\item{INTENSITY}{\code{rasterDestination} - Intensity. Path for new raster layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Simulation (saga:simulation)
}
\details{
\subsection{Outputs description}{
\itemize{
\item FLAME - outputRaster - Flame Length
\item INTENSITY - outputRaster - Intensity
\item TIME - outputRaster - Time
}
}
}
