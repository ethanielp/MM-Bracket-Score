source("scanner.R")

# region descriptions
r_desc <- list("Input the seed numbers of teams in round 2 for this region (8 total)", "Input the seed numbers of teams in the sweet 16 for this region (4 total)", "Input the seed numbers of teams in the elite 8 for this region (2 total)", "Input the seed numbers of teams in the final 4 for this region (1 total)")
inter_desc <- list("Input the seed number of the region champion team followed by the region \ne.g 2 west \nInput Finalists", "Input Champion")
# Region 1
first_pred <- scan_bracket("First Region Bracket \nAfter inputing each set hit enter twice to move on \n", r_desc)

# Region 2
second_pred <- scan_bracket("Second Region Bracket \nAfter inputing each set hit enter twice to move on\n", r_desc)


# Region 3
third_pred <- scan_bracket("Third Region Bracket \nAfter inputing each set hit enter twice to move on\n", r_desc)


# Region 4
fourth_pred <- scan_bracket("Fourth Region Bracket \nAfter inputing each set hit enter twice to move on\n", r_desc)


# Inter-Region
inter_pred <- scan_bracket("Inter-Region Bracket \nAfter inputing each set hit enter twice to move on\n", inter_desc)
