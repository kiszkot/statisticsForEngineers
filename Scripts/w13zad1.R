data1 = data.frame(czas = c(round(rnorm(1,16000,2500)),
							round(rnorm(1,13000,2500)),
							round(rnorm(1,15000,2500)),
							round(rnorm(1,12000,2500)),
							round(rnorm(1,9000,2500)),
							round(rnorm(1,11000,2500))),
					maszyna = rep(c("A1","A2"), each = 3),
					uszczelka = rep(c("B1","B2","B3"), times = 2))

data2 = data.frame(czas = c(round(rnorm(1,16000,2500)),
							round(rnorm(1,16000,2500)),
							round(rnorm(1,17000,2500)),
							round(rnorm(1,11000,2500)),
							round(rnorm(1,9300,2500)),
							round(rnorm(1,15000,2500))),
					maszyna = rep(c("A1","A2"), each = 3),
					uszczelka = rep(c("B1","B2","B3"), times = 2))
					
data3 = data.frame(czas = data1$czas + data2$czas, maszyna = data1$maszyna, uszczelka = data1$uszczelka)

write.csv(data1, "../LaTex/w13zad1_i.csv", row.names = FALSE)
write.csv(data2, "../LaTex/w13zad1_ii.csv", row.names = FALSE)
write.csv(data3, "../LaTex/w13zad1.csv", row.names = FALSE)

model = aov(czas~maszyna+uszczelka, data1)
png("../LaTex/w13zad1_i.png")
par(mfrow=c(2,2))
plot(model)
par(mfrow=c(1,1))
dev.off()

model = aov(czas~maszyna+uszczelka, data2)
png("../LaTex/w13zad1_ii.png")
par(mfrow=c(2,2))
plot(model)
par(mfrow=c(1,1))
dev.off()

model = aov(czas~maszyna+uszczelka, data3)
png("../LaTex/w13zad1.png")
par(mfrow=c(2,2))
plot(model)
par(mfrow=c(1,1))
dev.off()