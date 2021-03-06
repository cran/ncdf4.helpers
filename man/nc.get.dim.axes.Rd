% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/helpers.r
\name{nc.get.dim.axes}
\alias{nc.get.dim.axes}
\title{Get dimension axes}
\usage{
nc.get.dim.axes(f, v, dim.names)
}
\arguments{
\item{f}{The file (an object of class \code{ncdf4})}

\item{v}{The name of a variable}

\item{dim.names}{Optionally, dimension names (to avoid looking them up repeatedly)}
}
\value{
A named character vector mapping dimension names to axes.
}
\description{
Get dimension axes for the given variable.
}
\details{
This function returns the dimension axes for a given variable as a named character vector; the names are the names of the corresponding dimensions. If no variable is supplied, the function will return data for all dimensions found in the file.

Axes are X, Y, Z (depth, plev, etc), T (time), and S (space, for reduced grids).

This routine will attempt to infer axes for dimensions if no 'axis' attribute is found on a dimension variable, using the nc.get.dim.axes.from.names function.
}
\examples{
## Get dimension axes from file.
\dontrun{
f <- nc_open("pr.nc")
## Get dim axes for a specified variable
dim.axes <- nc.get.dim.axes(f, "pr")
## Get all dim axes in file
dim.axes <- nc.get.dim.axes(f)
nc_close(f)
}

}
