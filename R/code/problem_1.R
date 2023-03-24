GetSumOfMultiples <- function(k.vector, n){
  multiples.vector <- c()
  for (k in k.vector){
    multiples.vector <- c(multiples.vector, seq(0, n - 1, k)[-1])
  }
  answer <- sum(unique(multiples.vector))
  print(answer)
}

GetSumOfMultiples(c(3, 5), 1000)