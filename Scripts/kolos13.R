x1 = 0.5
x2 = 1.5
p1 = 0.2
p2 = 0.8

lambda = function(k) {
	lambda = ((x1^k+x2^k)/2)^(1/k)
}

l = c(lambda(1),lambda(2),lambda(3),lambda(4),lambda(5))
cat(l)

x = seq(0,3,by = 0.01)
y = dweibull(x, 5, l[5])
cols = c("red","green","blue","violet","black")

png("../LaTex/kolosWy.png")
plot(x,y, type = "l", xlab = "x", ylab = "y", main = "estymacja")

for(i in 1:4) {
	y = dweibull(x, i, l[i])
	lines(x,y, col = cols[i])
}

legend(x = "topright", legend = c(1:5), col = cols, lty = 1)
dev.off()