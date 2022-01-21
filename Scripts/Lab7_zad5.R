f = function(x) {
	f = 4*sqrt(x)
}

prob = c();
for(i in 1:50) {
	prob = c(prob, f(runif(1,0,1)))
}
prob = sort(prob)

#prob = table(prob)
df = data.frame(name = c(1:50), value = prob)
pl = table(cut(df$value, breaks = c(0,1,2,3,4)))
png("../LaTex/lab7zad5.png")
plot(pl,type = "h",xlab = "x", ylab = "n")
dev.off()

m = mean(prob)
ssq = 0;

for(i in 1:50) {
	ssq = ssq + (prob[i] - m)^2 
}
v = ssq/49

cat("mean ", m, " variance ", v, "\n")

print(summary(prob))

var(prob)

write.csv(df, file = "../LaTex/lab7zad5.csv")