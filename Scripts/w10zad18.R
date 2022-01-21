library("moments")
library("MASS")

data = read.csv("../LaTex/data.csv")
x = sort(data[[1]])
D = 1.3581/sqrt(length(x))

cat("Skewness = ", skewness(x), "\n")

# Dystrybuanta empiryczna
X = c()
s = 0
for(i in x) {
	s = length(which(x <= i))/length(x)
	X = c(X, s)
}

# Weibull
estimate = fitdistr(x,"weibull")
k = estimate[[1]][1]
lambda = estimate[[1]][2]
Y = pweibull(x, k, lambda)
d0 = max(abs(X-Y))
cat("D0 = ", d0, " D = ", D, "\n")

#gamma
estimate = fitdistr(x,"gamma")
alpha = estimate[[1]][1]
sigma = estimate[[1]][2]
Y = pgamma(x, alpha, rate = sigma)
d0 = max(abs(X-Y))
cat("D0 = ", d0, " D = ", D, "\n")

#lognormal
estimate = fitdistr(x,"lognormal")
print(estimate)
meanlog = estimate[[1]][1]
sdlog = estimate[[1]][2]
Y = plnorm(x, meanlog, sdlog)
d0 = max(abs(X-Y))
cat("D0 = ", d0, " D = ", D, "\n")