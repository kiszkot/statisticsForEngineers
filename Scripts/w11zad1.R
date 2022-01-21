# a
data = read.csv("../LaTex/w11zad1a.csv")
x = data[[1]]
y = data[[2]]

png("../LaTex/w11zad1a.png")
plot(x,y, type = "p", col = "red", main = "Dane a)")
dev.off()
cat(length(x), "\n")

mx = mean(x)
my = mean(y)

SSxy = sum(x*y) - sum(x)*sum(y)/length(x)
SSxx = sum(x^2) - sum(x)^2/length(x)
SSyy = sum(y^2) - sum(y)^2/length(y)

cat(SSxx, SSyy, SSxy, "\n")

rxy = SSxy/sqrt(SSxx*SSyy)
cat("r = ", rxy, "\n")

b1 = SSxy/SSxx # Y of X
b0 = mean(y) - b1*mean(x)
cat("y = ", b0, " + ", b1, "x", "\n")
Y = function(x) {
	Y = b0 + b1*x
}
SSE = sum((y - Y(x))^2)
cat("SSE = ", SSE, "\n")
kor2 = 1 - SSE/SSyy
cat("r^2 = ", kor2, "\n")
cat("S^2 = ", SSE/(length(x)-2), "\n")

b1 = SSxy/SSyy # X of Y
b0 = mean(x) - b1*mean(y)
cat("x = ", b0, " + ", b1, "y", "\n")
X = function(y) {
	X = b0 + b1*y
}
SSE = sum((x - X(y))^2)
cat("SSE = ", SSE, "\n")
kor2 = 1 - SSE/SSxx
cat("r^2 = ", kor2, "\n")
cat("S^2 = ", SSE/(length(x)-2), "\n")

U = 1/2*log((1+rxy)/(1-rxy), exp(1))
Z = U*sqrt(length(x)-3)
p = 1 - pnorm(Z, 0, 1)
cat("U = ", U, " Z = ", Z, " p = ", p, " \n")

png("../LaTex/w11zad1a_r.png")
plot(x,y, type = "p", col = "red", main = "a)")
lines(x,Y(x), col = "green")
lines(X(y), y, col = "blue")
legend("topleft", col = c("red", "green", "blue"), legend = c("dane", "y(x)", "x(y)"), lty = 1)
dev.off()

# b ----------------------------------------------------------------------------------------------
data = read.csv("../LaTex/w11zad1b.csv")
x = data[[1]]
y = data[[2]]

png("../LaTex/w11zad1b.png")
plot(x,y, type = "p", col = "red", main = "Dane b)")
dev.off()
cat(length(x), "\n")

mx = mean(x)
my = mean(y)

SSxy = sum(x*y) - sum(x)*sum(y)/length(x)
SSxx = sum(x^2) - sum(x)^2/length(x)
SSyy = sum(y^2) - sum(y)^2/length(y)

cat(SSxx, SSyy, SSxy, "\n")

rxy = SSxy/sqrt(SSxx*SSyy)
cat("r = ", rxy, "\n")

b1 = SSxy/SSxx # Y of X
b0 = mean(y) - b1*mean(x)
cat("y = ", b0, " + ", b1, "x", "\n")
Y = function(x) {
	Y = b0 + b1*x
}
SSE = sum((y - Y(x))^2)
cat("SSE = ", SSE, "\n")
kor2 = 1 - SSE/SSyy
cat("r^2 = ", kor2, "\n")
cat("S^2 = ", SSE/(length(x)-2), "\n")

b1 = SSxy/SSyy # X of Y
b0 = mean(x) - b1*mean(y)
cat("x = ", b0, " + ", b1, "y", "\n")
X = function(y) {
	X = b0 + b1*y
}
SSE = sum((x - X(y))^2)
cat("SSE = ", SSE, "\n")
kor2 = 1 - SSE/SSxx
cat("r^2 = ", kor2, "\n")
cat("S^2 = ", SSE/(length(x)-2), "\n")

U = 1/2*log((1+rxy)/(1-rxy), exp(1))
Z = U*sqrt(length(x)-3)
p = 1 - pnorm(Z, 0, 1)
cat("U = ", U, " Z = ", Z, " p = ", p, " \n")

png("../LaTex/w11zad1b_r.png")
plot(x,y, type = "p", col = "red", main = "b)")
lines(x,Y(x), col = "green")
lines(X(y), y, col = "blue")
legend("topleft", col = c("red", "green", "blue"), legend = c("dane", "y(x)", "x(y)"), lty = 1)
dev.off()