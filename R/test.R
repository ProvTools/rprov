
x <- 1 
y <-3 
10 #monitor interpreter processing, capture.output(wrap an entire line)
x #1
x <-x+y 
x
y^3

write.csv(x,"~/test.test") #traceable

pdf("~/test.pdf")#see if can grab all arguments in an ordered list


plot(x)# x

dev.cur()
dev.off()#


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



