% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/helpers.r
\name{nc.get.climatology.bounds.var.list}
\alias{nc.get.climatology.bounds.var.list}
\title{Get a list of names of climatology bounds variables}
\usage{
nc.get.climatology.bounds.var.list(f)
}
\arguments{
\item{f}{The file (an object of class \code{ncdf4})}
}
\value{
A character vector naming all of the climatology bounds variables found.
}
\description{
Get a list of names of climatology bounds variables.
}
\details{
The CF metadata convention defines a \code{climatology} attribute which can be applied to a time axis to indicate that the data is climatological in nature; the value of this attribute is the name of another variable in the file which defines the bounds of each climatological time period. This function returns the names of any climatology bounds variables found in a file.
}
\examples{
## Get list of climatology bounds variables
\dontrun{
f <- nc_open("pr.nc")
clim.bounds <- nc.get.climatology.bounds.var.list(f)
nc_close(f)
}

}
\references{
\url{http://cfconventions.org/Data/cf-conventions/cf-conventions-1.8/cf-conventions.html#climatological-statistics}
}
