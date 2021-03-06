% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cnv.R
\name{cnSegmentation}
\alias{cnSegmentation}
\title{Perform copy number segmentation}
\usage{
cnSegmentation(sset, ssets.normal, refversion = c("hg19", "hg38"))
}
\arguments{
\item{sset}{\code{SigSet}}

\item{ssets.normal}{\code{SigSet} for normalization}

\item{refversion}{hg19 or hg38}
}
\value{
an object of \code{CNSegment}
}
\description{
Perform copy number segmentation using the signals in the signal set.
The function takes a \code{SigSet} for the target sample and a set of
normal \code{SigSet} for the normal samples. An optional arguments specifies
the version of genome build that the inference will operate on. The function
outputs an object of class \code{CNSegment} with signals for the segments (
seg.signals), the bin coordinates (
bin.coords) and bin signals (bin.signals).
}
\examples{
sset <- sesameDataGet('EPIC.1.LNCaP')$sset
ssets.normal <- sesameDataGet('EPIC.5.normal')
seg <- cnSegmentation(sset, ssets.normal)

}
