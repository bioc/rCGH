\name{plotProfile}
\alias{plotProfile}
\alias{plotProfile-methods}
\alias{plotProfile,rCGH-method}

\title{Static Genomic Profile Visualization}

\description{
This function display a static view of the genomic profile stored in an
object of class \code{"\linkS4class{rCGH}"}.
}

\usage{
\S4method{plotProfile}{rCGH}(object, gene=NULL, gain=.5, loss=(-.5),
    Title=NULL, ylim=NULL)
}

\arguments{
    \item{object}{
    : An object of class \code{"\linkS4class{rCGH}"}
    }
    \item{gene}{
    : character. A valid HUGO symbol (not case sensitive).
    }
    \item{gain}{
    : numeric. A gain threshold value (in \eqn{Log2(Ratio)}) from where
    gained segments will be shown, in blue.
    }
    \item{loss}{
    : numeric.  A loss threshold value (in \eqn{Log2(Ratio)}) from where
    lossed segments will be shown, in red.
    }
    \item{Title}{
    : character string. A title for the density plot. If \code{NULL} (default),
    the sample name (when exists) is used.
    }
    \item{ylim}{
    : numeric. A vector of two values specifying \code{ylim}.
    If \code{NULL} (default), y-range is defined from Log2Ratio values.
    }
}

\value{
None.
}

\author{
Frederic Commo
}

\seealso{
\code{\link{plotDensity}}, \code{\link{plotLOH}}, \code{\link{multiplot}},
\code{\link{view}}
}

\examples{

filePath <- system.file("extdata", "Affy_cytoScan.cyhd.CN5.CNCHP.txt.bz2",
    package = "rCGH")
cgh <- readAffyCytoScan(filePath, sampleName = "AffyScHD")
cgh <- adjustSignal(cgh, nCores=1)
cgh <- EMnormalize(cgh)
cgh <- segmentCGH(cgh, nCores=1)

# Static visalizations
plotProfile(cgh)

}

\keyword{ ~kwd1 }
\keyword{ ~kwd2 }
