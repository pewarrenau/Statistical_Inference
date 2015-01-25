set.seed(1819)
library(ggplot2)

numSims <- 1000

lambda <- 0.2
#hist(rexp(1000, 0.2), breaks = 25)

df1 <- as.data.frame(rexp(1000, lambda))
names(df1) <- "randExp"

g1 <- ggplot(df1, aes(randExp))
g1 <- g1 + geom_histogram(binwidth=1, aes(y = ..density..), fill="blue", col="black")
g1
