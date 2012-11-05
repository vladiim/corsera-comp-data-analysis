test.complete <- function() {
  complete.data <- data.frame(id=rep(""), nobs=rep(1), stringsAsFactors=FALSE)
  result        <- (complete.data[1, ] <- c(1, 117))
  result        <- (complete.data[2, ] <- c(2, 1041))
  checkEquals(complete.data, complete('specdata', 1:2))
}

test.getNobs <- function() {
  checkEquals(117, getNobs(read.csv("specdata/001.csv")))
}

test.fileNumber <- function() {
  checkEquals("001", fileNumber(1))
  checkEquals("010", fileNumber(10))
  checkEquals("100", fileNumber(100))
}