prob1 = rweibull(20, 2, 8)
prob1 = table(cut(prob1, breaks = seq(0,20,by = 2)))
write.csv(prob1, "../LaTex/w8zad2_a.csv")

prob2 = rweibull(100, 2, 8)
prob2 = table(cut(prob2, breaks = seq(0,20,by = 2)))
write.csv(prob2, "../LaTex/w8zad2_b.csv")