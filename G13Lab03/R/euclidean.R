
euclidean <- function(num1,num2){
  num1 <- abs(num1)
  num2 <- abs(num2)
  while (num1!=num2) {
    if (num1>num2) {
      num1 <- num1 - num2
    }else{num2 <- num2 - num1}
  }
  return(num1)
}








