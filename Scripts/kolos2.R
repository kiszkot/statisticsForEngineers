library("moments")
library("randtests")
library("MASS")

oldw <- getOption("warn")
options(warn = -1)

data = read.csv("../LaTex/sprawozdanie2.csv", colClasses = c("numeric", "factor"))

w1 = data[data$technologia == "1", 1]
w2 = data[data$technologia == "2", 1]
w3 = data[data$technologia == "3", 1]

D1 = 0.21017
D2 = 0.29407
D3 = 0.18845

# W1
cat("W1 Weibull?\n")
estimate = fitdistr(w1,"weibull")
print(estimate)
k = estimate[[1]][1]
lambda = estimate[[1]][2]
W = function(x) {
	W = pweibull(x, k, lambda)
}
ks.test(w1, W)

cat("W1 Normal?\n")
estimate = fitdistr(w1,"normal")
print(estimate)
k = estimate[[1]][1]
lambda = estimate[[1]][2]
W = function(x) {
	W = pnorm(x, k, lambda)
}
ks.test(w1, W)

# W2
cat("W2 Normal?\n")
estimate = fitdistr(w2,"normal")
print(estimate)
k = estimate[[1]][1]
lambda = estimate[[1]][2]
W = function(x) {
	W = pnorm(x, k, lambda)
}
ks.test(w2, W)

cat("W2 Weibull?\n")
estimate = fitdistr(w2,"weibull")
print(estimate)
k = estimate[[1]][1]
lambda = estimate[[1]][2]
W = function(x) {
	W = pweibull(x, k, lambda)
}
ks.test(w2, W)

cat("W2 Gamma?\n")
estimate = fitdistr(w2,"gamma")
print(estimate)
alpha = estimate[[1]][1]
sigma = estimate[[1]][2]
W = function(x) {
	W = pgamma(x, alpha, rate = sigma)
}
ks.test(w2, W)

cat("W2 Lognormal?\n")
estimate = fitdistr(w2,"lognormal")
print(estimate)
meanlog = estimate[[1]][1]
sdlog = estimate[[1]][2]
W = function(x) {
	W = plnorm(x, meanlog, sdlog)
}
ks.test(w2, W)

# W3
cat("W3 Weibull?\n")
estimate = fitdistr(w3,"weibull")
print(estimate)
k = estimate[[1]][1]
lambda = estimate[[1]][2]
W = function(x) {
	W = pweibull(x, k, lambda)
}
ks.test(w3, W)

cat("W3 Normal?\n")
estimate = fitdistr(w3,"normal")
print(estimate)
k = estimate[[1]][1]
lambda = estimate[[1]][2]
W = function(x) {
	W = pnorm(x, k, lambda)
}
ks.test(w3, W)

len = length(which(w3 >= 865))
cat("n1 = ", len, " n0 = ", 50 - len, " P = ", len/50, "\n")

options(warn = oldw)

# W = c()
# for(i in w1) {
	# s = length(which(w1 <= i))/length(w1)
	# W = c(W, s)
# }
# w = pweibull(w1, k, lambda)
# d0 = max(abs(W - w))
# cat("D w1 = ", D1, " d0 = ", d0, "\n")
# W = function(x) {
	# W = pweibull(x, k, lambda)
# }
# ks.test(w1, W)

# W = c()
# for(i in w2) {
	# s = length(which(w2 <= i))/length(w2)
	# W = c(W, s)
# }
# estimate = fitdistr(w2,"weibull")
# k = estimate[[1]][1]
# lambda = estimate[[1]][2]
# w = pweibull(w2, k, lambda)
# d0 = max(abs(W - w))
# cat("D w1 = ", D2, " d0 = ", d0, "\n")

# W = c()
# for(i in w3) {
	# s = length(which(w3 <= i))/length(w3)
	# W = c(W, s)
# }
# estimate = fitdistr(w3,"weibull")
# k = estimate[[1]][1]
# lambda = estimate[[1]][2]
# w = pweibull(w3, k, lambda)
# d0 = max(abs(W - w))
# cat("D w1 = ", D1, " d0 = ", d0, "\n")