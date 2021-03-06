#' @name observed
#' @title Number of syndromic cases per time unit in the matrix format
#' @description This dataset exemplifies the case when a user of the package 
#' {vetsyn} may already have data cleaned and organized in a matrix format,
#' with the columns representing counts for each syndromic group monitored,
#' and the rows representing the time units (which could be daily, weekly, etc).
#' This could be the case when users prefer not to convert raw data to a matrix
#' format using the functionalities of the package, but instead their
#' own customized functions and adjustments. The matrix could then be readly
#' transformed into a syndromic object using the function \code{syndromic()}.
#' @docType data
#' @usage observed
#' @format a \code{matrix} .
#' @source package \code{vetsyn}
#' @author National Veterinary Institute of Sweden (SVA), 2013
NULL
