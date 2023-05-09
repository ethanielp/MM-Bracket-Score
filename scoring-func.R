source("examples.R")

scoring_func_list <- function(preds, key, scores) {
  #if (!check_list_vectors_int(preds)) {
  #  stop("predictions should be integers")
  #}
  #if (!check_list_vectors_int(key)) {
  #  stop("key should be integers")
  #}
  if (!check_list_vectors_int(scores)) {
    stop("scores should be integers")
  }
  list_total <- 0
  index <- 1
  while (index <= length(preds)){
    list_total <- list_total + score_vector(preds[[index]], key[[index]], scores[[index]])
    index <- index + 1
  }
  return(list_total)
}

check_list_vectors_int <- function(list){
  tbr <- TRUE
  for (x in list){
    if (all(sapply(x, `%%`, 1) == 0) == FALSE){
      tbr <- FALSE
    }
  }
  return(tbr)
}

score_vector <- function(pred_vector, key_vector, score){
  total <- 0
  index <- 1
  while (index <= length(pred_vector)){
    if (pred_vector[index] == key_vector[index]){
      total <- total + score
    }
    index <- index + 1
  }
  return(total)
}

scoring_func_list(pred_example_west, key_example_west, example_scores)
scoring_func_list(pred_example_inter, key_example_inter, example_scores_inter)
