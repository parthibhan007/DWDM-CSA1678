data_norm <- c(100,70,60,90,90)

min_val <- min(data_norm)
max_val <- max(data_norm)
min_max_norm <- (data_norm - min_val) / (max_val - min_val)
print("Min-Max Normalization:")
print(min_max_norm)

mean_val <- mean(data_norm)
sd_val <- sd(data_norm)
z_score_norm <- (data_norm - mean_val) / sd_val
print("Z-Score Normalization:")
print(z_score_norm)