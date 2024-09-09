n <- 55  
mean_initial <- 1212 
n_new <- 54  
mean_new <- 1010  

total_initial <- n * mean_initial

total_new <- n_new * mean_new

score_left_player <- total_initial - total_new
print(paste("Score of the player who left: ", score_left_player))
