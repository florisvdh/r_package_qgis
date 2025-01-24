% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/saga_morphometricprotectionindex.R
\name{saga_morphometricprotectionindex}
\alias{saga_morphometricprotectionindex}
\title{QGIS algorithm Morphometric protection index}
\usage{
saga_morphometricprotectionindex(
  DEM = qgisprocess::qgis_default_value(),
  RADIUS = qgisprocess::qgis_default_value(),
  PROTECTION = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{DEM}{\code{raster} - Elevation. Path to a raster layer.}

\item{RADIUS}{\code{number} - Radius. A numeric value.}

\item{PROTECTION}{\code{rasterDestination} - Protection Index. Path for new raster layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Morphometric protection index (saga:morphometricprotectionindex)
}
\details{
\subsection{Outputs description}{
\itemize{
\item PROTECTION - outputRaster - Protection Index
}
}
}
