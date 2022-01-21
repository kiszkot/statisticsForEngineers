library(pracma)

X = "ERL(2,1)"
X1 = "ELR(2,5)"

erl = function(x,a,b) {
	erl = b^a*x^(a-1)/gamma(a)*exp(-b*x)
}

x = seq(0,10,by = 0.01)
y = erl(x,2,1)
y1 = erl(x,2,5)

Y <- function(x) erl(x,2,1) #x/gamma(2)*exp(-x)
Y1 <- function(x) erl(x,2,5) #5^2*x^(1)/gamma(2)*exp(-5*x)

png(file = "../LaTex/zad2_27_f1.png")
plot(x,y1,type = "l", xlab = "x", ylab = "y")
lines(x,y, col ="green")
dev.off()

p = integral(Y,1,2, method = "Kron")
p1 = integral(Y1,1,2, method = "Kron")
cat(X," P(1<X<2) = ",p,"\n")
cat(X1," P(1<X<2) = ",p1,"\n")