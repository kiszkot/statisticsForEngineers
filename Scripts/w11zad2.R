data = read.csv("../LaTex/w11zad2.csv")
x = data[[1]]
y = data[[2]]

png("../LaTex/w11zad2.png")
plot(x,y, type = "p", col = "red")
dev.off()

mx = mean(x)
my = mean(y)

SSxy = sum(x*y) - sum(x)*sum(y)/length(x)
SSxx = sum(x^2) - sum(x)^2/length(x)
SSyy = sum(y^2) - sum(y)^2/length(y)

cat(SSxx, SSyy, SSxy, "\n")

rxy = SSxy/sqrt(SSxx*SSyy)
cat("r = ", rxy, "\n")

b1 = SSxy/SSxx
b0 = mean(y) - b1*mean(x)
cat("y = ", b0, " + ", b1, "x", "\n")
Y = function(x) {
	Y = b0 + b1*x
}
SSE = sum((y - Y(x))^2)
cat("SSE = ", SSE, "\n")
print(SSyy - b1*SSxy)

kor2 = 1 - SSE/SSyy
cat("r^2 = ", kor2, "\n")