#binom(20,0.8) 

prob = rbinom(100,20,0.8)
prob = sort(prob)

#prob = table(prob)

png("../LaTex/lab7zad6_a.png")
hist(prob, breaks = seq(0,20,by = 2),xlab = "k")
dev.off()

m = mean(prob)
v = var(prob)
ssq = 0
for(i in prob) {
	ssq = ssq + i^2
}
p = (m^2-m^3)/(ssq + m^2)
p = 1 - v/m

cat("mean ", m, " variance ", v, " p ", p, "\n")

write.csv(prob, file = "../LaTex/lab7zad6_a.csv")