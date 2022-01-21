#nbinom(3,0.1) 

prob = rpois(100,5)
prob = sort(prob)

#prob = table(prob)

png("../LaTex/lab7zad6_c.png")
hist(prob,xlab = "k", main = "Possion(5)") #breaks = seq(0,20,by = 2)
dev.off()

m = mean(prob)
v = var(prob)

print(prob)

cat("mean ", m, " variance ", v,"\n")

write.csv(prob, file = "../LaTex/lab7zad6_c.csv")