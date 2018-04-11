myNestedFunc <- function(x){
  return (2 * x)
}

myFunc <- function(x){
  y <- myNestedFunc(x + 5)
  return(y)
}

myFunc(3)
myFunc(4)
myFunc(5.5)