data <- c(200, 300, 400, 600, 1000)
min_max_normalized <- (data - min(data)) / (max(data) - min(data))
min_max_normalized
z_score_normalized <- (data - mean(data)) / sd(data)
z_score_normalized
