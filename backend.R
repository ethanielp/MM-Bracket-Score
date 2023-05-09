source("scanner.R")
source("scoring-func.R")

first_pred <- NA
second_pred <- NA
third_pred <- NA
fourth_pred <- NA
inter_pred <- NA
first_key <- NA
second_key <- NA
third_key <- NA
fourth_key <- NA
inter_key <- NA


r_desc <- list("Input the seed numbers of teams in round 2 for this region (8 total)", "Input the seed numbers of teams in the sweet 16 for this region (4 total)", "Input the seed numbers of teams in the elite 8 for this region (2 total)", "Input the seed numbers of teams in the final 4 for this region (1 total)")
inter_desc <- list("Input the seed number of the region champion team followed by the region \ne.g 2 west \nInput Finalists", "Input Champion")

update_pred <- function(region){
  if(region == "Inter"){
    pred = scan_bracket("Inter-Region Bracket \nAfter inputing each set hit enter twice to move on \n", inter_desc)
    inter_pred = pred
  } else {
    pred = scan_bracket("Region Bracket \nAfter inputing each set hit enter twice to move on \n", r_desc)
    if(region == "First"){
      first_pred = pred
    }else if(region == "Second"){
      second_pred = pred
    }else if(region == "Third"){
      third_pred = pred
    }else if(region == "Fourth"){
      fourth_pred = pred
    }
  }
  paste("Updated ", region, " region key")
}

update_key <- function(region){
  if(region == "Inter"){
    key = scan_bracket("Inter-Region Bracket \nAfter inputing each set hit enter twice to move on \n", inter_desc)
    inter_pred = key
  } else {
    pred = scan_bracket("Region Bracket \nAfter inputing each set hit enter twice to move on \n", r_desc)
    if(region == "First"){
      first_key = key
    }else if(region == "Second"){
      second_key = key
    }else if(region == "Third"){
      third_key = key
    }else if(region == "Fourth"){
      fourth_key = key
    }
  }
  paste("Updated ", region, " region key")
}


calc_score <- function(){
  first_brac <- scoring_func_list(first_pred, first_key, c(1,2,4,8))
  second_brac <- scoring_func_list(second_pred, second_key, c(1,2,4,8))
  third_brac <- scoring_func_list(third_pred, third_key, c(1,2,4,8))
  fourth_brac <- scoring_func_list(fourth_pred, fourth_key, c(1,2,4,8))
  inter_brac_score <- scoring(inter_pred, inter_key, c(16,32))
  
  final_score <- first_brac + second_brac + third_brac + fourth_brac + inter_brac_score
  return(final_score)
}