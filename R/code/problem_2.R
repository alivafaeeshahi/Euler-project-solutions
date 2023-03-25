FibToN <- function(n){
  fib.vector   <- c(1, 2)
  while (fib.vector[length(fib.vector)] < n) {
    new.number <- (fib.vector[length(fib.vector)]) + (fib.vector[length(fib.vector) - 1])
    fib.vector <- c(fib.vector, new.number)
  }
  fib.vector   <- fib.vector[-length(fib.vector)]
}

fibonacci.vector <- FibToN(4000000)
fibonacci.vector.modified <- fibonacci.vector[-1]
n.even <- ceiling(length(fibonacci.vector.modified) / 3)

answer <- 0
for (i in 0:(n.even - 1)) {
  answer <- answer + fibonacci.vector.modified[(3 * i) + 1]
}
print(answer)