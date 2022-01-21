
data1 = read.csv("../LaTex/kolos2_1.csv", colClasses = "numeric")
data2 = read.csv("../LaTex/kolos2_2.csv", colClasses = "numeric")
data3 = read.csv("../LaTex/kolos2_3.csv", colClasses = "numeric")

data = data.frame(dane = c(data1[[1]], data2[[1]], data3[[1]]), zestaw = as.factor(rep(c("1","2","3"), each = 100)))
data
model = aov(dane~zestaw, data)
summary(model)
TukeyHSD(model)