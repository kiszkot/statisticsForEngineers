load("../LaTex/lab2zad3.RData")

print("P(X>144)")
print(p1)

print("Kwartyle")
print(c(qwart1,qwart2,qwart3))

pdf(file = "Distribution.pdf")
plot(x,y)
title(main = "Distribution")

pdf(file = "Cumulative Distribution.pdf")
plot(x,Y)
title(main = "Cumulative Distribution")

print("Procent myszek traci zdatność w 2 lata")
print(procentMyszek)

print("Najprawdopodobna ze 100 myszek w 2 lata")
print(EX100)

print("P(X>144|X>52)")
print(pwar)

print("Oczekiwana pod warunkiem że X>52")
print(Z)
print(EZ)