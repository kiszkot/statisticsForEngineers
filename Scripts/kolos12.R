x1 = 0.5
x2 = 1.5
p1 = 0.2
p2 = 0.8

k = log(log(1-p1, exp(1)) / log(1-p2, exp(1)))/ (log(x1,exp(1)) - log(x2,exp(1)))
lambda = x1 / (-log(1-p1, exp(1)))^(1/k)

cat(k,lambda)

x = seq(0,3,by = 0.01)
y = dweibull(x,k,lambda)
png("../LaTex/kolosW.png")
plot(x,y, xlab = "x", ylab = "y", col = "red", type = "l", main = "gestosc")
dev.off()