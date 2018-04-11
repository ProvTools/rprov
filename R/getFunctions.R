library("NCmisc")
listresult <- list.functions.in.file("test.R")
listresult <- unlist(unname(listresult))

for(f in listresult){
  print(f) 
  print(formals(f))
}

#grab each of the functions, separated by package
# run args(function) to retrieve the arguments of the function
# trace arguments of the functions (for ex., for filenames)