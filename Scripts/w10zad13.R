library("MASS")
library("EnvStats")
# data = round(rtri(100,725,1075,(1075-725)/2 + 725), digits = 2)
# N(900, 50)
# alpha = 0.05

# Norm
data = read.csv("../LaTex/w10zad13.csv")
x = data[[2]]
m = mean(x)
s2 = var(x)
s = sqrt(s2)
cat("Mean ", mean(x), ", Var ", var(x), "\n")

test = function(a) {
	test = pnorm(a, 900, 50)
}

med = median(x)

#histfit
png("../LaTex/w10zad13_histfit_N.png")
n = fitdistr(data[[2]], "normal")
hist(data[[2]], prob = TRUE, main = "histfit N(900, 50)", xlab = "N(900, 50)")
lines(seq(750, 1050, by = 10), dnorm(seq(750, 1050, by = 10), n$estimate[[1]], n$estimate[[2]]), col = "red")
dev.off()

#normplot
png("../LaTex/w10zad13_normPlot.png")
qqplot(data[[1]], rnorm(100, n$estimate[[1]], n$estimate[[2]]), xlab = "dane", ylab = "estymacja", main = "Normal Probability Plot N")
dev.off()

# random ?
y = c()
for(i in x) {
	if(i < med) y = c(y,-1)
	else if(i > med) y = c(y,1)
	else y = c(y,0)
}
k = length(which(y == 1))
print(length(which(y == -1)))
cat("k ", k, "\n")
ks.test(x,test)#, alternative = "greater")

y = data[[2]]
dataQ = data

# TR
data = read.csv("../LaTex/w10zad13_TR.csv")
x = data[[2]]
m = mean(x)
s2 = var(x)
s = sqrt(s2)
cat("Mean ", mean(x), ", Var ", var(x), "\n")

test = function(a) {
	test = pnorm(a, m, s)
}

med = median(x)

#histfit
png("../LaTex/w10zad13_histfit_TR.png")
hist(data[[2]], prob = TRUE, main = "histfit TR(725, 1075)", xlab = "TR(725, 1075)")
lines(seq(700, 1100, by = 10), dtri(seq(700, 1100, by = 10), 725,1075,(1075-725)/2 + 725), col = "red")
dev.off()

#normplot
n = fitdistr(data[[2]], "normal")
png("../LaTex/w10zad13_normPlot_TR.png")
qqplot(data[[1]], rnorm(100, n$estimate[[1]], n$estimate[[2]]), xlab = "dane", ylab = "estymacja", main = "Normal Probability Plot TR")
dev.off()

# same ?

ks.test(x,y)

# random ?
y = c()
for(i in x) {
	if(i < med) y = c(y,-1)
	else if(i > med) y = c(y,1)
	else y = c(y,0)
}
k = length(which(y == 1))
print(length(which(y == -1)))
cat("k ", k, "\n")
ks.test(x,test)

#plot
png("../LaTex/w10zad13.png")
qqplot(data[[2]], dataQ[[2]], xlab = "N(900, 50)", ylab = "TR(725, 1075)", main = "Q-Q Plot")
dev.off()