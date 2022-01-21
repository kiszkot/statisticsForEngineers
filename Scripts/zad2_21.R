load("../LaTex/zad2_21.RData")

x = seq(0,1,by = 0.01)

y1 = dbeta(x,2,4)
y2 = dbeta(x,2,2)
y3 = dbeta(x,3,3)
y4 = dbeta(x,2.5,3.5)


png(file = "../LaTex/zad2_21_fx.png")
plot(x,y1,type = "l",xlab = "x", ylab = "y")
lines(x,y2,col = "red")
lines(x,y3, col = "blue")
lines(x,y4,col = "green")
legend(x = "topright", legend = c(X1,X2,X3,X4),col = c("black","red","blue","green"),lty = 1)
dev.off()

Y1 = pbeta(x,2,4)
Y2 = pbeta(x,2,2)
Y3 = pbeta(x,3,3)
Y4 = pbeta(x,2.5,3.5)

png(file = "../LaTex/zad2_21_F.png")
plot(x,Y1,type = "l",xlab = "x", ylab = "y")
lines(x,Y2,col = "red")
lines(x,Y3, col = "blue")
lines(x,Y4,col = "green")
legend(x = "topright", legend = c(X1,X2,X3,X4),col = c("black","red","blue","green"),lty = 1)
dev.off()