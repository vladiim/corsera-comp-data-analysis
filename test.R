myFunction <- function(x) {
  y <- rnorm(100)
  mean(y)
}

second <- function(x) {
  x * 2000
}

coinToss <- function(z) {
  while(z >= 3 && z <= 10) {
  	print(z)
  	coin <- rbinom(1,1,0.5)
  	if(coin == 1) {
  	  z <- z + 1
  	} else {
  	  z <- z -1
  	}
  }
}