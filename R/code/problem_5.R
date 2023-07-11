SmallestMultiplyToN <- function(n){
  answer.vector <- c()
  n.vector <- 1:n
  
  for(i in n:1){
    remainder.vector <- i %% 1:n 
    x.array <- which(remainder.vector == 0)[-1]
    }

}

print(SmallestMultiplyToN(20))
