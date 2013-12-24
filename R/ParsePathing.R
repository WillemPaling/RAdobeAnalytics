# ParsePathing - Internal Function - Parses a pathing report returned from the API
# Args:
#   report.data: jsonlite formatted data frame of report data returned from the API
#
# Returns:
#   Formatted data frame
#


ParsePathing <- function(report.data) {

  data <- report.data$report$data

  paths.df<-ldply(data$path,.fun=function(row){return(row$name)})
  names(paths.df) <- paste("step.",1:ncol(paths.df),sep="")

  paths.df$count <- data$counts

  return(paths.df)

}