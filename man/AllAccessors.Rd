\name{AllAccessors}
\alias{AllAccessors}
\alias{Accessors}
\alias{getInfo}
\alias{getInfo-methods}
\alias{getInfo,rCGH-method}
\alias{getByGene}
\alias{getByGene-methods}
\alias{getByGene,rCGH-method}
\alias{getCNset}
\alias{getCNset-methods}
\alias{getCNset,rCGH-method}
\alias{getParam}
\alias{getParam-methods}
\alias{getParam,rCGH-method}
\alias{getSegTable}
\alias{getSegTable-methods}
\alias{getSegTable,rCGH-method}

\title{ \code{"\linkS4class{rCGH}"} Accessor Functions }

\description{
Methods for extracting information from an object of
class \code{"\linkS4class{rCGH}"}.\cr
Each of the below methods are simply convenience functions which extract the
corresponding slots (as the name of each method suggests) from an object of
class \code{"\linkS4class{rCGH}"}.
}

\usage{
\S4method{getInfo}{rCGH}(object, item = NULL)
\S4method{getByGene}{rCGH}(object, gene = NULL)
\S4method{getCNset}{rCGH}(object)
\S4method{getParam}{rCGH}(object)
\S4method{getSegTable}{rCGH}(object)
}

\arguments{
    \item{object}{
    : An object of class \code{"\linkS4class{rCGH}"}
    }
    \item{item}{
    : character. Can be one, or a vector of items.
    When \code{NULL}, the full available information is returned.
    If \code{item} is specified, and exist, the corresponding values only
    are returned.
    }
    \item{gene}{
    : character. An official HUGO symbol (lower cases are supported).
    When \code{NULL}, the full by-gene dataset is returned.
    }
}

\section{Methods}{
    \describe{
        \item{\code{"\linkS4class{rCGH}"}}{
        \itemize{
            \item getInfo(object, item = NULL): returns the values of the 
            specified items, all the information otherwise.
            \item getByGene(object, gene = NULL): returns the by-gene dataset.
            \item getCNset(object): returns the full by-probe dataset.
            \item getParam(object): returns the analysis parameters.
            \item getSegTable(object): returns the segmentation table -
            one row per segment.
            }
        }
    }
}

\value{
    \itemize{
        \item getInfo(object, item = NULL): character.
        \item getByGene(object, gene = NULL): a dataset.
        \item getCNset(object): a dataset.
        \item getParam(object): a list of parameters.
        \item getSegTable(object): a dataset, one row per segment.
    }
}

\author{
Frederic Commo
}

\seealso{
\code{\link{setInfo}}
}

\examples{

filePath <- system.file("extdata", "Agilent4x180K.txt.bz2", package = "rCGH")
cgh <- readAgilent(filePath, sampleName = "Agilent4x180K", labName = "myLab")

# Getting all the information
getInfo(cgh)

# Getting specific items
getInfo(cgh, c("sampleName", "labName"))

}

