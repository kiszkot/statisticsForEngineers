n1 = round(rnorm(80, 900, 50), digits = 2)
n2 = round(rnorm(60, 1000, 60), digits = 2)

cat("N1", mean(n1), " ", var(n1), file = "../LaTex/W9zad9.txt")
cat("N2", mean(n2), " ", var(n2), file = "../LaTex/W9zad9.txt", append = TRUE)

df <- data.frame("Lp" = c(1:80), "N1" = n1)
write.csv(df, file = "../LaTex/W9zad9.csv", row.names = FALSE)

df <- data.frame("Lp" = c(1:60), "N2" = n2)
write.csv(df, file = "../LaTex/W9zad9_1.csv", row.names = FALSE)