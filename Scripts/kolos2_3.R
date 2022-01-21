library("MASS")

data = read.csv("../LaTex/kolos2_1.csv", colClasses = "numeric")
data = sort(data[[1]])
X = c()
s = 0
for(i in data) {
	s = length(which(data <= i))/length(data)
	X = c(X, s)
}
#gamma
cat("Dane 1 Gamma ?\n")
estimate = fitdistr(data,"gamma", lower = c(0,0))
alpha = estimate[[1]][1]
sigma = estimate[[1]][2]
# Y = function(x) {
	# pgamma(x, alpha, rate = sigma)
# }
Y = pgamma(data, alpha, rate = sigma)

png("../LaTex/kolos2_R1.png")
plot(data,1-Y, xlab = "x", ylab = "prob", main = "R = 1 - F1", col = "red", type = "l")
lines(data, 1-X, col = "green")
legend("topright", legend = c("fit","empiric"), col = c("red","green"), lty = 1)
dev.off()

# wbl(3, 2000)
data = read.csv("../LaTex/kolos2_2.csv", colClasses = "numeric")
data = sort(data[[1]])
X = c()
s = 0
for(i in data) {
	s = length(which(data <= i))/length(data)
	X = c(X, s)
}
#normal
cat("Dane 2 Normal ?\n")
estimate = fitdistr(data,"normal")
m = estimate[[1]][1]
s = estimate[[1]][2]
Y = pnorm(data, m, s)
png("../LaTex/kolos2_R2.png")
plot(data,1-Y, xlab = "x", ylab = "prob", main = "R = 1 - F2", col = "red", type = "l")
lines(data, 1-X, col = "green")
legend("topright", legend = c("fit","empiric"), col = c("red","green"), lty = 1)
dev.off()

# wbl(4, 2000)
data = read.csv("../LaTex/kolos2_3.csv", colClasses = "numeric")
data = sort(data[[1]])
X = c()
s = 0
for(i in data) {
	s = length(which(data <= i))/length(data)
	X = c(X, s)
}
# Weibull
cat("Dane 3 Weibull ?\n")
estimate = fitdistr(data,"weibull", lower = c(0,0))
k = estimate[[1]][1]
lambda = estimate[[1]][2]
Y = pweibull(data, k, lambda)
png("../LaTex/kolos2_R3.png")
plot(data,1-Y, xlab = "x", ylab = "prob", main = "R = 1 - F3", col = "red", type = "l")
lines(data, 1-X, col = "green")
legend("topright", legend = c("fit","empiric"), col = c("red","green"), lty = 1)
dev.off()