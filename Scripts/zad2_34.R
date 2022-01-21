
x = seq(0,50,by = 0.01)
y1 = dchisq(x,5)
y2 = dchisq(x,10)
y3 = dchisq(x,25)

png("../LaTex/chi_gestosc.png")
plot(x, y1, xlab = "x", ylab = "y", type = "l", main = "Gestosc")
lines(x, y2, col = "green")
lines(x, y3, col = "red")
legend(x = "topright", legend = c("chisq(5)","chisq(10)","chisq(25)"), col = c("black","green","red"), lty = 1)
dev.off()

y1 = pchisq(x,5)
y2 = pchisq(x,10)
y3 = pchisq(x,25)

png("../LaTex/chi_dystrybuanta.png")
plot(x, y1, xlab = "x", ylab = "y", type = "l", main = "Dystrybuanta")
lines(x, y2, col = "green")
lines(x, y3, col = "red")
legend(x = "bottomright", legend = c("chisq(5)","chisq(10)","chisq(25)"), col = c("black","green","red"), lty = 1)
dev.off()

# $(X < 15)$, $(X > 25)$, $(20 < X < 30)$
p1 = pchisq(15, 25)
p2 = 1 - pchisq(25, 25)
p3 = pchisq(30, 25) - pchisq(20, 25)
cat("P(X < 15) = ", p1, "P(X > 25) = ", p2, "P(20 < X < 30) = ", p3, "\n", file = "../LaTex/zad2_34.txt")

q1 = qchisq(0.25, 25)
q2 = qchisq(0.5, 25)
q3 = qchisq(0.75, 25)
cat("q0.25 = ", q1, "q0.5 = ", q2, "q0.75 = ", q3, file = "../LaTex/zad2_34.txt", append = TRUE)