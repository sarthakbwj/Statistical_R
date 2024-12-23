# message - to notify the user of a shortcoming in the program.
# warning - to warn the user of an issue/error.
# stop - to terminate the program due to an error.

average <- function(x) {
  if (any(is.na(x))) {
    warning("`x` contains one or more NA values.")
    return(NA)
  }
  if(!is.numeric(x)) {
    stop("`x` must be a numberic vector.")
  }
  
  sum(x)/length(x)
}












