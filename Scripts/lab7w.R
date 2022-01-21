F = rnorm(100,4.4, sqrt(0.0013))
F = table(cut(F, breaks = seq(4.35, 4.45, by = 0.02)))
#prob = table(prob, dnn = c("Lp", "F"))

#df <- data.frame(Lp = c(1:100), F = prob)
write.csv(F, "../LaTex/lab7w.csv")