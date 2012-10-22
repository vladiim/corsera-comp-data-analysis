complete <- function(directory, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files

  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return a data frame of the form:
  ## id nobs
  ## 1  117
  ## 2  1041
  ## ...
  ## where 'id' is the monitor ID number and 'nobs' is the
  ## number of complete cases

  # create a newId array 
  newId <- array()
  for (i in id) {
    if (nchar(i) == 1) {
      i <- paste("00", id)
    } else if (nchar(id == 2)) {
      i <- paste("0", id)
    }
    # append(newId, i) this is wrong!!!
  }

  dir <- gsub(" ", "", paste(directory, "/", id, ".csv"))
  data <- read.csv(dir, header=TRUE, sep="," )

  if (summarize == TRUE) {
        print(summary(data))
  }

  data

}