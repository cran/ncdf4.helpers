\name{nc.get.dim.bounds.var.list}
\alias{nc.get.dim.bounds.var.list}
\title{Get a list of names of dimension bounds variables.}
\usage{
nc.get.dim.bounds.var.list(f, v = NULL)
}
\arguments{
  \item{f}{The file (an object of class \code{ncdf4}).}

  \item{v}{The name of the variable (a string).}
}
\value{
A character vector naming all of the dimension bounds
variables found.
}
\description{
Get a list of names of dimension bounds variables.
}
\details{
Many dimension variables are not single points, but in fact
represent a range along the axis. This is expressed by
associated dimension bounds variables. This function
returns the names of any dimension bounds variables found
in a file.
}
\examples{
## Get list of dimension bound variables
\dontrun{
f <- nc_open("pr.nc")
dim.bounds.var.list <- nc.get.dim.bounds.var.list(f)
nc_close(f)
}
}
\references{
\url{http://cf-pcmdi.llnl.gov/documents/cf-conventions/1.6/ch07.html#cell-boundaries}
}

