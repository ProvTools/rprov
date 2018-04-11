x <- 1 
y <-3 
10 #monitor interpreter processing, capture.output(wrap an entire line)
x #1
x <-x+y 
x
capture.output(x)
capture.output(y)

y^3
capture.output(y^3)

trace(write.table, tracer = quote(cat(sprintf("Tracing csv(file = %s)\n", file))))
trace(pdf, tracer = quote(cat(sprintf("Tracing pdf(file = %s)\n", file))))
trace(plot, tracer = quote(cat(sprintf("Tracing pdf(x = %s)\n", x))))
trace(.External, exit = quote(cat(sprintf("Finished graphics device monitoring\n"))), print=FALSE)

write.csv(x,"~/test.test") #traceable
pdf("~/test.pdf")#see if can grab all arguments in an ordered list
plot(x)# x
dev.off()#

untrace(write.table)
untrace(pdf)
untrace(plot)
untrace(.External)

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



