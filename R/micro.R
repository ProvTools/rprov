
x <- 1 
capture.output(x)
y <-3 
capture.output(y)
capture.output(10+0)
#capture.output(10)#doesn't work
10 #monitor interpreter processing, capture.output(wrap an entire line)
x #1
x <-x+y 
capture.output(x+y)#expression evaluation
x
y^3
capture.output(y^3)

#trace(write.csv, tracer = quote(cat(sprintf("Tracing file argument = %s\n", file))))
#trace(write.table, tracer = quote(cat(sprintf("Tracing csv(file = %s)\n", file))))
write.csv(x,"~/test.test") #traceable
#untrace(write.table)

#trace(pdf, tracer = quote(cat(sprintf("Tracing pdf(file = %s)\n", file))))
pdf("~/test.pdf")#see if can grab all arguments in an ordered list
#untrace(pdf)

#trace(plot, tracer = quote(cat(sprintf("Tracing plot(x = %s)\n", x))))
plot(x)# x
#untrace(plot)

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


#untrace(dev.cur)
#untrace(.External)
