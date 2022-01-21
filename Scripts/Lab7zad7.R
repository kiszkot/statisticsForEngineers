#lnorm(2.3,0.5)

prob = rlnorm(100,2.3,0.5)
prob = sort(prob)

#prob = table(prob)

png("../LaTex/lab7zad7.png")
hist(prob,xlab = "k", main = "Norm(2.3,0.5)") #breaks = seq(0,20,by = 2)
dev.off()

m = mean(prob)
v = var(prob)

print(prob)

cat("mean ", m, " variance ", v,"\n")

write.csv(prob, file = "../LaTex/lab7zad7.csv")