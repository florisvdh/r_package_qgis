% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/saga_profilesfromlines.R
\name{saga_profilesfromlines}
\alias{saga_profilesfromlines}
\title{QGIS algorithm Profiles from lines}
\usage{
saga_profilesfromlines(
  DEM = qgisprocess::qgis_default_value(),
  VALUES = qgisprocess::qgis_default_value(),
  LINES = qgisprocess::qgis_default_value(),
  NAME = qgisprocess::qgis_default_value(),
  PROFILE = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{DEM}{\code{raster} - DEM. Path to a raster layer.}

\item{VALUES}{\code{multilayer} - Values. .}

\item{LINES}{\code{source} - Lines. Path to a vector layer.}

\item{NAME}{\code{field} - Name. The name of an existing field. ; delimited list of existing field names.}

\item{PROFILE}{\code{vectorDestination} - Profiles. Path for new vector layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Profiles from lines (saga:profilesfromlines)
}
\details{
\subsection{Outputs description}{
\itemize{
\item PROFILE - outputVector - Profiles
}
}
}
