#TODO - reference parent functions
#STORE as?
library("NCmisc")

get.funcs <- function(){
listresult <- list.functions.in.file("test.R")
return(listresult)
}

trace.funcs <- function(){
  #listresult <- list("write.csv")
  listfuncs <- unlist(unname(get.funcs()))
  print(listfuncs)

  for(f in listfuncs){
    print(f) 
    ags <- unlist(formalArgs(f))
    #print(args)
    for (a in ags){
        print(a)
          if (a != "..."){
          trace(f, tracer = quote(cat(sprintf("Tracing %s( %s = %s)\n", f, a,
                            tryCatch(get(a), error = function (e) {print("None")})
          ))))
         source("test.R")
        }
       untrace(f)
       print(cat("\n"))
    }
  }
}

trace.funcs()

#grab each of the functions, separated by package
# trace arguments of the functions (for ex., for filenames)