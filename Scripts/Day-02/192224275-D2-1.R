age_group <- c("5-6 years", "7-8 years", "9-10 years")
A <- c(18, 2, 20)
B <- c(22, 28, 10)
C <- c(20, 40, 40)

preferences <- data.frame(Age = age_group, A, B, C)

cov_B_C <- cov(B, C)
print(paste("Covariance between B and C: ", cov_B_C))

cov_matrix <- cov(preferences[,-1]) 
print("Covariance matrix:")
print(cov_matrix)

cor_B_C <- cor(B, C)
print(paste("Correlation between B and C: ", cor_B_C))

cor_matrix <- cor(preferences[,-1]) 
print("Correlation matrix:")
print(cor_matrix)
