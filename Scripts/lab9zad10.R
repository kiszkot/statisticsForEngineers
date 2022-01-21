#N(170, 23.881025)

x = round(rnorm(26, 170, 23.881025), digits = 5)
df <- data.frame("Lp" = c(1:26), "Vart" = x)

write.csv(df, file = "../LaTex/lab9zad10.csv", row.names = FALSE)