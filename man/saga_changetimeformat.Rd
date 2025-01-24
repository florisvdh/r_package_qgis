% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/saga_changetimeformat.R
\name{saga_changetimeformat}
\alias{saga_changetimeformat}
\title{QGIS algorithm Change time format}
\usage{
saga_changetimeformat(
  TABLE = qgisprocess::qgis_default_value(),
  FIELD = qgisprocess::qgis_default_value(),
  FMT_IN = qgisprocess::qgis_default_value(),
  FMT_OUT = qgisprocess::qgis_default_value(),
  OUTPUT = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{TABLE}{\code{source} - Table. Path to a vector layer.}

\item{FIELD}{\code{field} - Time Field. The name of an existing field. ; delimited list of existing field names.}

\item{FMT_IN}{\code{enum}  of \verb{("[0] hh.mm.ss", "[1] hh:mm:ss", "[2] hhmmss, fix size", "[3] hours", "[4] minutes", "[5] seconds")} - Input Format. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{FMT_OUT}{\code{enum}  of \verb{("[0] hh.mm.ss", "[1] hh:mm:ss", "[2] hhmmss, fix size", "[3] hours", "[4] minutes", "[5] seconds")} - Output Format. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{OUTPUT}{\code{vectorDestination} - Output. Path for new vector layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Change time format (saga:changetimeformat)
}
\details{
\subsection{Outputs description}{
\itemize{
\item OUTPUT - outputVector - Output
}
}
}
