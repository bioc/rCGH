\name{byGeneTable}
\alias{byGeneTable}
\alias{byGeneTable-methods}
\alias{byGeneTable,rCGH-method}

\title{Converting a Segmentation Table Into a By-Gene Table}

\description{
This function creates a by-gene table by listing all the genes contained in each
of the segments in the segmentation table.\cr
Gene annotations (symbol, location,...), segmented Log2Ratios, and segment
legnth are reported in the final table.\cr
A supplementary score is the \code{relativeLog}: the magnitude, in Log2, from
the closest centromere.
}

\usage{
\S4method{byGeneTable}{rCGH}(object, verbose = TRUE)
}

\arguments{
    \item{object}{
    : An object of class \code{"\linkS4class{rCGH}"}
    }
    \item{verbose}{
    : logical. When \code{TRUE} progress is printed.
    }
}

\details{
For gene annotations, Hg19/GRCh37 annotations downloaded from \emph{NCBI} are
considered.
}

\value{
An object of class \code{"\linkS4class{rCGH}"}
}

\author{
Frederic Commo
}

\seealso{
\code{\link{getByGene}}
}

\examples{

filePath <- system.file("extdata", "Affy_cytoScan.cyhd.CN5.CNCHP.txt.bz2",
    package = "rCGH")
cgh <- readAffyCytoScan(filePath, sampleName = "AffyScHD")
cgh <- adjustSignal(cgh, nCores=1)
cgh <- EMnormalize(cgh)
cgh <- segmentCGH(cgh, nCores=1)
cgh <- byGeneTable(cgh)
bygene <- getByGene(cgh)
head(bygene)

}

\keyword{ ~kwd1 }
\keyword{ ~kwd2 }
