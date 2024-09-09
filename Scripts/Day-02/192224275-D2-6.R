# Data
data_iqr <- c(12, 17, 34, 56, 32, 23, 83, 31, 9, 36)

# Calculate IQR
Q1 <- quantile(data_iqr, 0.25)
Q3 <- quantile(data_iqr, 0.75)
IQR_val <- IQR(data_iqr)

print(paste("Q1: ", Q1))
print(paste("Q3: ", Q3))
print(paste("Interquartile Range (IQR): ", IQR_val))
