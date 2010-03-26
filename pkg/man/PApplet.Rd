\name{PApplet}
\alias{PApplet}
\alias{PAddJar}
\alias{PClose}
\alias{PResize}
\alias{PSet}
\title{
Running a PApplet from R
}
\description{
Functions load, run and manipulate a processing PApplet via R.
}
\usage{
PApplet(name, loc = NULL, title = "RProcessing")
PAddJar(path)
PClose(PApp)
PResize(PApp, x, y)
PSet(PApp, setter, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{name}{character string. 
  Name of the PApplet class to run.
}
  \item{loc}{integer vector of size two.
  x and y coordinate for opening the RApplet (defaults to \code{c(100,100)}).
}
  \item{title}{character string.
  Title for the window used by the PApplet.
}
  \item{path}{character string.
  Path  and name of the jar file that contains the PApplet.
}
  \item{PApp}{object of class PApplet as returned by \code{PApplet()}
}
  \item{x,y}{integer.
  New size for the PApplet.
}
  \item{setter}{character string.
  Name of the set method in the PApplet.
}
  \item{...}{
      Argument list for the set method.
}
}
\details{
Before using a processing (see http://processing.org) program, called a
PApplet you have to create a jar file by using File/Export Application
in the processing programming environment. Then you have to 
add the jar using \code{PAddJar()}. Now you can start the 
processing application called a PApplet via R using \code{PApplet()}. 

Now you can transfer data 
with \code{PSet()}
to the PApplet using a set methods that you 
implemented in the applet. 
}
\value{
\code{PApplet()} returns an \code{PApplet} object.
}
%\references{
%% ~put references to the literature/web site here ~
%}
%\author{
%%  ~~who you are~~
%}
%\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
%}
\examples{
## example with external jar
PAddJar(system.file("examples","Cube3D.jar", package="rProcessing"))
app1 <- PApplet("Cube3D")


## use the built-in example PScatter
app2 <- PScatter(sample(1:500, 20), sample(1:500, 20))

## to close the PApplets you can use
#PClose(app1)
#PClose(app2)

#see how PScatter works 
PScatter
#you can find the processing source code file on your disk at
system.file("examples", "PScatter.pde", package="rProcessing")

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
