% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/saga_fillsinks.R
\name{saga_fillsinks}
\alias{saga_fillsinks}
\title{QGIS algorithm Fill sinks}
\usage{
saga_fillsinks(
  DEM = qgisprocess::qgis_default_value(),
  MINSLOPE = qgisprocess::qgis_default_value(),
  RESULT = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{DEM}{\code{raster} - DEM. Path to a raster layer.}

\item{MINSLOPE}{\code{number} - Minimum Slope (Degree). A numeric value.}

\item{RESULT}{\code{rasterDestination} - Filled DEM. Path for new raster layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Fill sinks (saga:fillsinks)
}
\details{
\subsection{Outputs description}{
\itemize{
\item RESULT - outputRaster - Filled DEM
}
}
}
