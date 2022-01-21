f = function(t) {
	f = 1 - exp(-t/3)
}

d = function(t) {
	d = exp(-t/3)/3
}

p = f(2)-f(1)
cat("P(1<T<2) = ",p)

x = seq(0,10, by = 0.2)
y = d(x)

png(file = "../LaTex/zad2_26.png")
plot(x,y,type = "l")
dev.off()