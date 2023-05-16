set.seed(0)
sim1 <- rbinom(n = 1, size = 100, prob = 0.5)
set.seed(1)
sim2 <- rbinom(n = 1, size = 100, prob = 0.5)

print(paste("Simulation 1: ", sim1))
print(paste("Simulation 2: ", sim2))


set.seed(1)
p <- rnorm(n = 10, mean = 10, sd = 10)
set.seed(0)
q <- rnorm(n = 10, mean = 100, sd = 100)

print("Simulation 1: ")
print(p)
print("Simulation 2: ")
print(q)

