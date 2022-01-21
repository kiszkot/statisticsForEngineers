library("MASS")
library("moments")
D = 1.3581/sqrt(100)

# wbl(2, 2000)
data = read.csv("../LaTex/kolos2_1.csv", colClasses = "numeric")
data = sort(data[[1]])
X = c()
s = 0
for(i in data) {
	s = length(which(data <= i))/length(data)
	X = c(X, s)
}
# Weibull
cat("Dane 1 Weibull ?\n")
estimate = fitdistr(data, "weibull", lower = c(0, 0))
print(estimate)
k = estimate[[1]][1]
lambda = estimate[[1]][2]
# Y = function(x) {
	# pweibull(x, k, lambda)
# }
Y = pweibull(data, k, lambda)
d0 = max(abs(X-Y))
cat("D0 = ", d0, " D = ", D, "\n")

#gamma
cat("Dane 1 Gamma ?\n")
estimate = fitdistr(data,"gamma", lower = c(0,0))
print(estimate)
alpha = estimate[[1]][1]
sigma = estimate[[1]][2]
# Y = function(x) {
	# pgamma(x, alpha, rate = sigma)
# }
Y = pgamma(data, alpha, rate = sigma)
d0 = max(abs(X-Y))
cat("D0 = ", d0, " D = ", D, "\n")

#lognormal
cat("Dane 1 Lnorm ?\n")
estimate = fitdistr(data,"lognormal")
print(estimate)
meanlog = estimate[[1]][1]
sdlog = estimate[[1]][2]
# Y = function(x) {
	# plnorm(x, meanlog, sdlog)
# }
Y = plnorm(data, meanlog, sdlog)
d0 = max(abs(X-Y))
cat("D0 = ", d0, " D = ", D, "\n")

#normal
cat("Dane 1 Normal ?\n")
estimate = fitdistr(data,"normal")
print(estimate)
m = estimate[[1]][1]
s = estimate[[1]][2]
# Y = function(x) {
	# Y = pnorm(x, m, s)
# }
Y = pnorm(data, m, s)
d0 = max(abs(X-Y))
cat("D0 = ", d0, " D = ", D, "\n")

# wbl(3, 2000)
data = read.csv("../LaTex/kolos2_2.csv", colClasses = "numeric")
data = sort(data[[1]])
X = c()
s = 0
for(i in data) {
	s = length(which(data <= i))/length(data)
	X = c(X, s)
}
# Weibull
cat("Dane 2 Weibull ?\n")
estimate = fitdistr(data,"weibull", lower = c(0,0))
print(estimate)
k = estimate[[1]][1]
lambda = estimate[[1]][2]
# Y = function(x) {
	# pweibull(x, k, lambda)
# }
Y = pweibull(data, k, lambda)
d0 = max(abs(X-Y))
cat("D0 = ", d0, " D = ", D, "\n")

#gamma
cat("Dane 2 Gamma ?\n")
estimate = fitdistr(data,"gamma", lower = c(0,0))
print(estimate)
alpha = estimate[[1]][1]
sigma = estimate[[1]][2]
# Y = function(x) {
	# pgamma(x, alpha, rate = sigma)
# }
Y = pgamma(data, alpha, rate = sigma)
d0 = max(abs(X-Y))
cat("D0 = ", d0, " D = ", D, "\n")

#lognormal
cat("Dane 2 Lnorm ?\n")
estimate = fitdistr(data,"lognormal")
print(estimate)
meanlog = estimate[[1]][1]
sdlog = estimate[[1]][2]
# Y = function(x) {
	# plnorm(x, meanlog, sdlog)
# }
Y = plnorm(data, meanlog, sdlog)
d0 = max(abs(X-Y))
cat("D0 = ", d0, " D = ", D, "\n")

#normal
cat("Dane 2 Normal ?\n")
estimate = fitdistr(data,"normal")
print(estimate)
m = estimate[[1]][1]
s = estimate[[1]][2]
# Y = function(x) {
	# Y = pnorm(x, m, s)
# }
Y = pnorm(data, m, s)
d0 = max(abs(X-Y))
cat("D0 = ", d0, " D = ", D, "\n")

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
print(estimate)
k = estimate[[1]][1]
lambda = estimate[[1]][2]
# Y = function(x) {
	# pweibull(x, k, lambda)
# }
Y = pweibull(data, k, lambda)
d0 = max(abs(X-Y))
cat("D0 = ", d0, " D = ", D, "\n")

#normal
cat("Dane 3 Normal ?\n")
estimate = fitdistr(data,"normal")
print(estimate)
m = estimate[[1]][1]
s = estimate[[1]][2]
# Y = function(x) {
	# Y = pnorm(x, m, s)
# }
Y = pnorm(data, m, s)
d0 = max(abs(X-Y))
cat("D0 = ", d0, " D = ", D, "\n")