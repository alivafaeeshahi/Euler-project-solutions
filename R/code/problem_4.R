library(stringi)

IsPalindromic <- function(n){
  n <- as.character(n)
  part1 <- substring(n, 1, nchar(n) %/% 2)
  part2 <- stri_reverse(substring(n, nchar(n) - (nchar(n) %/% 2) + 1, nchar(n)))
  if (part1 == part2) {
    return(T)
  }
  else {
    return(F)
  }
}

numbers.vector <- 999:100
palindromic.vector <- c()
for (number1 in numbers.vector) {
  for (number2 in numbers.vector) {
    multiple <- number1 * number2
    if (IsPalindromic(multiple)) {
      palindromic.vector <- c(palindromic.vector, multiple)
    }
  }
}
print(sort(palindromic.vector, decreasing = T)[1])
