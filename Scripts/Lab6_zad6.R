# EX = 5000, lambda = 1/5000, var = 5000^2, DX = 5000
# N(5000, 5000/sqrt(n))

sim = c(5,10,30)
# exp(1/5000)
# u(0,15)
means = c()
Means = c()

for(i in 1:10000){
	means = c(means,round(mean(rexp(5,1/5000))))
	Means = c(Means,round(mean(runif(5,0,15))))
}
means = table(means)
Means = table(Means)
png("../LaTex/n5.png")
plot(means,type = "h", col = "red", xlab = "mean", ylab = "n", main = "n = 5, exp(1/5000)")
dev.off()
png("../LaTex/n5_1.png")
plot(Means,type = "h", col = "red", xlab = "mean", ylab = "n", main = "n = 5, unif(0,15)")
dev.off()
write.table(means,file = "../LaTex/n5.csv", sep = ",")
write.table(Means,file = "../LaTex/n5.csv", sep = ",", append = TRUE)

# n = 10
means = c()
Means = c()
for(i in 1:10000){
	means = c(means,round(mean(rexp(10,1/5000))))
	Means = c(Means,round(mean(runif(10,0,15))))
}
means = table(means)
Means = table(Means)
png("../LaTex/n10.png")
plot(means,type = "h", col = "blue", xlab = "mean", ylab = "n", main = "n = 10, exp(1/5000)")
dev.off()
png("../LaTex/n10_1.png")
plot(Means,type = "h", col = "red", xlab = "mean", ylab = "n", main = "n = 10, unif(0,15)")
dev.off()
write.table(means,file = "../LaTex/n10.csv", sep = ",")
write.table(Means,file = "../LaTex/n10.csv", sep = ",", append = TRUE)


# n = 30
means = c()
Means = c()
for(i in 1:10000){
	means = c(means,round(mean(rexp(30,1/5000))))
	Means = c(Means,round(mean(runif(30,0,15))))
}
means = table(means)
Means = table(Means)
png("../LaTex/n30.png")
plot(means,type = "h", col = "green", xlab = "mean", ylab = "n", main = "n = 30, exp(1/5000)")
dev.off()
png("../LaTex/n30_1.png")
plot(Means,type = "h", col = "red", xlab = "mean", ylab = "n", main = "n = 30, unif(0,15)")
dev.off()
write.table(means,file = "../LaTex/n30.csv", sep = ",")
write.table(Means,file = "../LaTex/n30.csv", sep = ",", append = TRUE)


#cat(means, file = "means.txt")