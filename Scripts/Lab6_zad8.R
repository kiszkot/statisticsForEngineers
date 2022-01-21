# f(x) = 2(𝑥 − 1)𝕀(1; 2)(𝑥),F^-1(y) = 1 + sqrt(y)
# 𝑓(𝑥) = 2𝑥 exp(−𝑥^2), F(x) = -exp(-x^2) + c, F^-1(y) = sqrt(-ln(1-x))

x = c()
F1 = function(x) {
	if(x < 0) { F1 = 0 }
	if(x > 1) { F1 = 0 }
	if(0 <= x && x <= 1) { F1 = 1 + sqrt(x) }
}

for(i in 1:5){
	x = c(x, F1(runif(1,0,1)))
}

print(x)

p = c()
for(i in 1:10000) {
	p = c(p, signif(F1(runif(1,0,1)), digits = 3))
}
p = table(p)
png("../LaTex/zad8a.png")
plot(x, type = "h", main = "5 liczb wedlug 2(x-1)")
dev.off()

x1 = c()
F2 = function(x) {
	a = 1-x
	if(x < 0) { F2 = 0 }
	if(x > 1) { F2 = 0 }
	if(x <= 1 && x >= 0) {F2 = sqrt(-log(a, base = exp(1)))}
}

for(i in 1:5){
	x1 = c(x1, F2(runif(1,0,1)))
}

print(x1)

p = c()
for(i in 1:30000) {
	a = F2(runif(1,0,1))
	if(a < 1) { p = c(p, signif(a, digits = 2)) }
	else { p = c(p, signif(a, digits = 3)) }
	#p = c(p, signif(F2(runif(1,0,1)), digits = 5))
}
p = table(p)
png("../LaTex/zad8b.png")
plot(x1, type = "h", main = "5 liczb wedlug 2x exp(-x^2)")
dev.off()