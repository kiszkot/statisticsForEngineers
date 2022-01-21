x = seq(0,10, by = 0.2)
X1 = "gamma(1,2)"
X2 = "gamma(2,2)"
X3 = "gamma(2,0.5)"

y1 = dgamma(x,1,rate=2)
y2 = dgamma(x,2,rate=2)
y3 = dgamma(x,2,scale = 2)

png(file = "../LaTex/zad2_24_fx.png")
plot(x,y1,type = "l",xlab = "x", ylab = "y")
lines(x,y2,col = "red")
lines(x,y3, col = "blue")
legend(x = "topright", legend = c(X1,X2,X3),col = c("black","red","blue"),lty = 1)
dev.off()

Y1 = pgamma(x,1,rate=2)
Y2 = pgamma(x,2,rate=2)
Y3 = pgamma(x,2,scale = 2)

png(file = "../LaTex/zad2_24_f.png")
plot(x,Y1,type = "l",xlab = "x", ylab = "y")
lines(x,Y2,col = "red")
lines(x,Y3, col = "blue")
legend(x = "topright", legend = c(X1,X2,X3),col = c("black","red","blue"),lty = 1)
dev.off()