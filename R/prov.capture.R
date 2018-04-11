#' prov.capture --- Capture R language provencance.
#' OUTPUT = Provenance from code stored in memory.
#' 
#' Captures and records provenance from a script provided by the user.
#' 
#' @param script A script who's provenance should be recorded.
#' @return Stores provenance in memory in PROV-JSON format.
#' @importFrom base trace
#' @export prov.capture
#' @author ELizabeth Hu and Matthew K. Lau

prov.capture <- function(script){
    #### Insert function tracing activities here
  
  fnames = list("myFunc")
  print(fnames)
  ### User defined functions
  
  ddg.annotate <- function(fnames){
    if (is.null(fnames)) {
      return()
    }

    getCall <- function(){
      i <- -1
      while (as.character(sys.call(i)[1]) != ".doTrace")
        i <- i - 1
      call <- sys.call(i-1)
      callName <- as.character(call[[1]])
      print(cat(sprintf("Function called: %s\n", callName)))
    }
    #trace the call of myNestedFunc within myFunc
    for(f in fnames){
        f = quote(get(f))
        trace(f, getCall, exit = quote(cat(sprintf("Return = %.5g\n", returnValue()))))
    }
    source("demo.r", print.eval = TRUE)
    print("Ending script run")
    for(f in fnames){
      untrace(f)
    }
    
    
  }
  #set to working directory with the script
  ddg.annotate(fnames)

}

prov.capture("demo.r")

