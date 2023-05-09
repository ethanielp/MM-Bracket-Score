scan_bracket <- function(desc, desc_rounds){
  cat(desc)
  bracket = list()
  for (round_desc in desc_rounds){
    cat(round_desc)
    input = scan()
    bracket <- c(bracket, list(input))
  }
  print("done with this bracket section")
  return(bracket)
}

