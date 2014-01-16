\name{nc.get.proj4.string}
\alias{nc.get.proj4.string}
\title{Gets the proj4 string for a file}
\usage{
nc.get.proj4.string(f, v)
}
\arguments{
  \item{f}{The file (an object of class \code{ncdf4})}

  \item{v}{The name of a variable}
}
\value{
A string containing the proj4 string
}
\description{
Gets the proj4 string for a file.
}
\details{
Most NetCDF files are stored without any projection
information as a lat-long grid. However, some files --
particularly those from RCMs -- are on a projected grid.
This function returns a proj4 string, suitable for use with
the 'proj4' library, which can be used to perform forward
and inverse projections.

Given a file and a variable, this function returns the
proj4 string for the given file should be. If no projection
data is found, it returns an empty string. It currently
supports Lambert Conformal Conic, Transverse Mercator,
Polar Sterographic, and Rotated Pole projections.
}
\examples{
## Get the proj4 string for a hypothetical file.
\dontrun{
f <- nc_open("pr.nc")
proj4.string <- nc.get.proj4.string(f, "pr")
nc_close(f)
}
}
\references{
\url{http://cf-pcmdi.llnl.gov/documents/cf-conventions/1.6/ch05s06.html}
}

