library('RUnit')
source('complete.R')

test.suite <- defineTestSuite("fileNumber", dirs = file.path("tests"))

test.result <- runTestSuite(test.suite)
printTextProtocol(test.result)