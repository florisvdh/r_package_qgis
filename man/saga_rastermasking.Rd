% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/saga_rastermasking.R
\name{saga_rastermasking}
\alias{saga_rastermasking}
\title{QGIS algorithm Raster masking}
\usage{
saga_rastermasking(
  GRID = qgisprocess::qgis_default_value(),
  MASK = qgisprocess::qgis_default_value(),
  MASKED = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{GRID}{\code{raster} - Grid. Path to a raster layer.}

\item{MASK}{\code{raster} - Mask. Path to a raster layer.}

\item{MASKED}{\code{rasterDestination} - Masked Grid. Path for new raster layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Raster masking (saga:rastermasking)
}
\details{
\subsection{Outputs description}{
\itemize{
\item MASKED - outputRaster - Masked Grid
}
}
}
