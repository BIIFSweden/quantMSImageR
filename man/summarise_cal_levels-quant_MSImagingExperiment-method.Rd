% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/summarise_cal_levels.R
\name{summarise_cal_levels,quant_MSImagingExperiment-method}
\alias{summarise_cal_levels,quant_MSImagingExperiment-method}
\title{Function to calculate the mean response or intensity per pixel for the ROI at each calibration level across all calibration replicates (ng/pixel).}
\usage{
\S4method{summarise_cal_levels}{quant_MSImagingExperiment}(
  MSIobject,
  cal_metadata,
  val_slot = "response",
  cal_header = "sample_type",
  cal_label = "Cal",
  id = "identifier"
)
}
\arguments{
\item{MSIobject}{MSI object from Cardinal}

\item{cal_metadata}{dataframe containing calibration metdata info - including "lipid" = feature name in fData(), "identifier" header to map pData, and "amount_pg" relating to amount of std at each spot.}

\item{val_slot}{character defining slot name to normalise - takes "intensity" as default}

\item{cal_header}{Header in pixel metadata to select calibration data from. Default = "sample_type"}

\item{cal_label}{Label in pixel metadata under the \code{cal_header} which corresponds to calibration data. Default = "Cal".}

\item{id}{header in calibration metadata and pData to map (defaults to "identifier") and label unique ROIs}
}
\value{
MSIobject with slots updated for i) matrix of average ng/pixel of m/z (rows = m/z and cols = cal level) ii) list of pixel counts per cal level
}
\description{
Function to calculate the mean response or intensity per pixel for the ROI at each calibration level across all calibration replicates (ng/pixel).
}
