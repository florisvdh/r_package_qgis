% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/saga_thiessenpolygons.R
\name{saga_thiessenpolygons}
\alias{saga_thiessenpolygons}
\title{QGIS algorithm Thiessen polygons}
\usage{
saga_thiessenpolygons(
  POINTS = qgisprocess::qgis_default_value(),
  POLYGONS = qgisprocess::qgis_default_value(),
  FRAME = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{POINTS}{\code{source} - Points. Path to a vector layer.}

\item{POLYGONS}{\code{vectorDestination} - Polygons. Path for new vector layer.}

\item{FRAME}{\code{number} - Frame Size. A numeric value.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Thiessen polygons (saga:thiessenpolygons)
}
\details{
\subsection{Outputs description}{
\itemize{
\item POLYGONS - outputVector - Polygons
}
}
}
