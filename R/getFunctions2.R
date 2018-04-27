#TODO - reference parent functions
#STORE as?
library("NCmisc")

#get.funcs <- function(file){
  listresult <- list.functions.in.file(file)
  #listresult <- list("write.csv")
  listfuncs <- unlist(unname(listresult))
  print(listfuncs)
#  return(listfuncs)
#}

prov.tracer2 <- function(f,a){
 return (quote(cat(sprintf("Tracing %s( %s = %s)\n", f, a,
                    tryCatch(get(a), error = function (e) {print("None")}
        )))))
}


prov.tracer <- function(){
  print(quote(0))
  ags <- unlist(formalArgs(f))
  print(ags)
  #return (expression(cat(sprintf("Tracing %s( %s = %s)\n", f, a,
   #                         tryCatch(get(a), error = function (e) {print("None")}
    #                        )))))
}
file <- "test.R"
#trace.funcs <- function(file){
  #listfuncs <- get.funcs(file)
  #for(f in listfuncs){
    #print(f) 
    #ags <- unlist(formalArgs(f))
    #print(args)
    #for (a in ags){
      #print(a)
      #if (a != "..."){
        trace(listfuncs, tracer = quote(0), print=FALSE)
        #}
      print(cat("\n"))
    #}
 # }


  source(file)
  
  untrace(listfuncs, where = globalenv())
#}

#capture.output(trace.funcs("test.R"))
#trace.funcs("test.R")


#grab each of the functions, separated by package
# trace arguments of the functions (for ex., for filenames)