library("NCmisc")
listresult <- list.functions.in.file("test.R")
listresult <- unlist(unname(listresult))

for(f in listresult){
  print(f) 
  print(formals(f))
}

#grab each of the functions, separated by package
# trace arguments of the functions (for ex., for filenames)