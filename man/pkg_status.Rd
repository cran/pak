% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/package.R
\name{pkg_status}
\alias{pkg_status}
\title{Display installed locations of a package}
\usage{
pkg_status(pkg, lib = .libPaths())
}
\arguments{
\item{pkg}{Name of an installed package to display status for.}

\item{lib}{One or more library paths to lookup package status in.}
}
\description{
Display installed locations of a package
}
\examples{
\dontrun{
pkg_status("MASS")
}
}
\seealso{
Other package functions: \code{\link{pak_package_sources}},
  \code{\link{pkg_install}}, \code{\link{pkg_remove}}
}
\concept{package functions}
