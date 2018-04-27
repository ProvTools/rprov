#TODO - reference parent functions
#STORE as?

library("NCmisc")
listresult <- list.functions.in.file("test.R")
#listresult <- list("write.csv")
listresult <- unlist(unname(listresult))
print(listresult)

for(f in listresult){
  print(f) 
  ags <- unlist(formalArgs(f))
  #print(args)
  for (a in ags){
      print(a)
      if (a != "..."){
      trace(f, tracer = quote(cat(sprintf("Tracing %s( %s = %s)\n", f, a,
                        tryCatch(get(a), error = function (e) {print("None")})
      ))))
      
     source("test.R")}
     untrace(f)
     print(cat("\n"))
  }
}



#grab each of the functions, separated by package
# trace arguments of the functions (for ex., for filenames)