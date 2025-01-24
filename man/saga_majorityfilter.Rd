% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/saga_majorityfilter.R
\name{saga_majorityfilter}
\alias{saga_majorityfilter}
\title{QGIS algorithm Majority filter}
\usage{
saga_majorityfilter(
  INPUT = qgisprocess::qgis_default_value(),
  MODE = qgisprocess::qgis_default_value(),
  RADIUS = qgisprocess::qgis_default_value(),
  THRESHOLD = qgisprocess::qgis_default_value(),
  RESULT = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{INPUT}{\code{raster} - Grid. Path to a raster layer.}

\item{MODE}{\code{enum}  of \verb{("[0] Square", "[1] Circle")} - Search Mode. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{RADIUS}{\code{number} - Radius. A numeric value.}

\item{THRESHOLD}{\code{number} - Threshold (Percent). A numeric value.}

\item{RESULT}{\code{rasterDestination} - Filtered Grid. Path for new raster layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Majority filter (saga:majorityfilter)
}
\details{
\subsection{Outputs description}{
\itemize{
\item RESULT - outputRaster - Filtered Grid
}
}
}
