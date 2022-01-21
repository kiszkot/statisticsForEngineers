#nbinom(3,0.1) 

prob = rnbinom(100,3,0.1)
prob = sort(prob)

#prob = table(prob)

png("../LaTex/lab7zad6_b.png")
hist(prob,xlab = "k") #breaks = seq(0,20,by = 2)
dev.off()

m = mean(prob)
v = var(prob)

print(prob)

cat("mean ", m, " variance ", v,"\n")

write.csv(prob, file = "../LaTex/lab7zad6_b.csv")