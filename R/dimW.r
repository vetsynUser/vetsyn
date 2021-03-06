##' Get dimension information for a \code{syndromicW} object
##' 
##' @docType methods
##' @keywords methods
##' @export
##' @import methods
##' @param x \code{syndromicW} object
##' @return a vector with three items: (1) The number of time points
##'     monitored (the number of rows for all slots of the object);
##'     (2)The number of syndromic groups monitored, as determined by
##'     the number of columns in the slot observed; (3) The number of
##'     detection algorithms used, as determined by the third
##'     dimension of the slot alarms.
##' 
##' @examples
##' data(lab.daily)
##' my.syndromicW <- rawD_to_syndromicW (id=lab.daily$SubmissionID,
##'                                   syndromes.var=lab.daily$Syndrome,
##'                                   dates.var=lab.daily$DateofSubmission,
##'                                   date.format="%d/%m/%Y")
##' dim(my.syndromicW)
##' columns <- dim(my.syndromicW)[2]
##' print(columns)
##'
setMethod('dim',
          signature(x = 'syndromicW'),
          function (x)
      {
          cat(sprintf("****** Syndromic object:******\n"))
          cat(sprintf("Number of time points (rows) = %s \n",
                      dim(x@observed)[1]))
          cat(sprintf("Number of syndromes monitored = %s \n",
                      dim(x@observed)[2]))
          cat(sprintf("Number of detection algorithms used = %s \n",
                      dim(x@alarms)[3])  )
          return(c(dim(x@observed)[1],dim(x@observed)[2],dim(x@alarms)[3]))
      }
)
