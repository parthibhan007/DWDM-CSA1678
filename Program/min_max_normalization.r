# Given data
data <- c(200, 300, 400, 600, 1000)

# (a) Min-Max Normalization (with min=0 and max=1)
min_val <- 0
max_val <- 1
X_min <- min(data)
X_max <- max(data)

min_max_normalized <- (data - X_min) / (X_max - X_min) * (max_val - min_val) + min_val

# (b) Z-Score Normalization
mean_val <- mean(data)
std_dev <- sd(data)

z_score_normalized <- (data - mean_val) / std_dev

# Output the results
min_max_normalized
z_score_normalized
