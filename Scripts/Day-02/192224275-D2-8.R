data_quartiles <- c(14, 9, 3, 11, 13, 16, 4, 11, 19, 10, 8, 20, 13, 7, 12)

Q2 <- quantile(data_quartiles, 0.5) 
Q1 <- quantile(data_quartiles, 0.25)
Q3 <- quantile(data_quartiles, 0.75)

IQR_val <- IQR(data_quartiles)

print(paste("Quartile 1 (Q1): ", Q1))
print(paste("Quartile 2 (Q2): ", Q2))  
print(paste("Quartile 3 (Q3): ", Q3))
print(paste("Interquartile Range (IQR): ", IQR_val))
