% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/saga_overlandflowdistancetochannelnetwork.R
\name{saga_overlandflowdistancetochannelnetwork}
\alias{saga_overlandflowdistancetochannelnetwork}
\title{QGIS algorithm Overland flow distance to channel network}
\usage{
saga_overlandflowdistancetochannelnetwork(
  ELEVATION = qgisprocess::qgis_default_value(),
  CHANNELS = qgisprocess::qgis_default_value(),
  METHOD = qgisprocess::qgis_default_value(),
  DISTANCE = qgisprocess::qgis_default_value(),
  DISTVERT = qgisprocess::qgis_default_value(),
  DISTHORZ = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{ELEVATION}{\code{raster} - Elevation. Path to a raster layer.}

\item{CHANNELS}{\code{raster} - Channel Network. Path to a raster layer.}

\item{METHOD}{\code{enum}  of \verb{("[0] D8", "[1] MFD")} - Flow Algorithm. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{DISTANCE}{\code{rasterDestination} - Overland Flow Distance. Path for new raster layer.}

\item{DISTVERT}{\code{rasterDestination} - Vertical Overland Flow Distance. Path for new raster layer.}

\item{DISTHORZ}{\code{rasterDestination} - Horizontal Overland Flow Distance. Path for new raster layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Overland flow distance to channel network (saga:overlandflowdistancetochannelnetwork)
}
\details{
\subsection{Outputs description}{
\itemize{
\item DISTANCE - outputRaster - Overland Flow Distance
\item DISTHORZ - outputRaster - Horizontal Overland Flow Distance
\item DISTVERT - outputRaster - Vertical Overland Flow Distance
}
}
}
