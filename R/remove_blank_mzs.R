library(Cardinal)

setGeneric("remove_blank_mzs", function(MSIobject) standardGeneric("remove_blank_mzs"))

#' Function to remove m/z values with no data.
#' @import Cardinal
#' @include setClasses.R
#'
#' @param MSIobject MSI object from Cardinal
#' @return MSIobject with m/z values from experiment with no data removed.
#'
#' @export
setMethod("remove_blank_mzs", "quant_MSImagingExperiment",
          function(MSIobject){

            remove_inds = c()
            for(mz_ind in 1:nrow(fData(MSIobject))){
              if(all(is.na(spectra(MSIobject)[mz_ind, ]))){
                remove_inds = c(remove_inds, mz_ind)
              }
            }

            if(length(remove_inds) > 0){
              MSIobject = MSIobject[-remove_inds, ]
            }

            return(MSIobject)
          })
