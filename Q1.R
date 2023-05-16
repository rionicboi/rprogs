sdata <- rnorm(n = 100, mean = 100, sd = 5)
hist(sdata, breaks = 100, main = "Histogram")
plot(density(sdata), main = "Density Plot")
boxplot(sdata, main = "Box Plot")
plot(sdata, main = "Scatter Plot")

t.test(sdata, mu = 100)
wilcox.test(sdata, mu = 90, alternative = "two.sided")