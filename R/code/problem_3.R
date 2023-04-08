LargestPrimeFactor <- function(k){
  factors.vector <- c()
  f <- 2
  while (k > 1) {
    while (k %% f == 0) {
      factors.vector <- c(factors.vector, f)
      k <- k %/% f
    }
    f <- f + 1
  }
  print(max(unique(factors.vector)))
}

LargestPrimeFactor(600851475143)
