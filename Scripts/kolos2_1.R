library("MASS")
library("moments")

# wbl(2, 2000)
data = read.csv("../LaTex/kolos2_1.csv", colClasses = "numeric")
summary(data)
data = data[[1]]
cat("mean : ", mean(data), " var : ", var(data), " s : ", sqrt(var(data)), " skew : ", skewness(data), "kurt : ", kurtosis(data), "\n")
png("../LaTex/kolos2_1.png")
hist(data, xlab = "x", ylab = "prob", main = "wbl(2, 2000)", prob = TRUE)
y = seq(0, max(data), by = 0.1)
lines(y, dweibull(y, 2, 2000), col = "red")
dev.off()

# wbl(3, 2000)
data = read.csv("../LaTex/kolos2_2.csv", colClasses = "numeric")
data = data[[1]]
cat("mean : ", mean(data), " var : ", var(data), " s : ", sqrt(var(data)), " skew : ", skewness(data), "kurt : ", kurtosis(data), "\n")
png("../LaTex/kolos2_2.png")
hist(data, xlab = "x", ylab = "prob", main = "wbl(3, 2000)", prob = TRUE)
y = seq(0, max(data), by = 0.1)
lines(y, dweibull(y, 3, 2000), col = "red")
dev.off()

# wbl(4, 2000)
data = read.csv("../LaTex/kolos2_3.csv", colClasses = "numeric")
data = data[[1]]
cat("mean : ", mean(data), " var : ", var(data), " s : ", sqrt(var(data)), " skew : ", skewness(data), "kurt : ", kurtosis(data), "\n")
png("../LaTex/kolos2_3.png")
hist(data, xlab = "x", ylab = "prob", main = "wbl(4, 2000)", prob = TRUE)
y = seq(0, max(data), by = 0.1)
lines(y, dweibull(y, 4, 2000), col = "red")
dev.off()