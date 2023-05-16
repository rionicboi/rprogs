data(mammals)
cor(mammals$bodywt, mammals$brainwt, method = "pearson")

cor(mammals$bodywt, mammals$brainwt, method = "spearman")

plot(mammals$bodywt, mammals$brainwt,
     xlab = "Body weight (kg)",
     ylab = "Brain weight (g)",
     main = "Body weight versus brain weight")

plot(log(mammals$bodywt), log(mammals$brainwt),
     xlab = "Log(body weight)",
     ylab = "Log(brain weight)",
     main = "Log-transformed body weight versus brain weight")