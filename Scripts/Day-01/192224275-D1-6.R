age <- 35
mean_age <- mean(c(23, 28, 22, 30, 21, 25, 32, 26, 29, 34, 35, 37, 33, 24, 31, 36, 27, 38))
sd_age <- 12.94
min_age <- 21
max_age <- 38
min_max_norm <- (age - min_age) / (max_age - min_age)
min_max_norm
z_score_norm <- (age - mean_age) / sd_age
z_score_norm
decimal_scaled <- age / 100
decimal_scaled
