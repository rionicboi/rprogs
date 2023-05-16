#a)
library(DMwR)
# Load the Algae dataset
data(algae)

# Plot the distribution of algae a6
hist(algae$a6, main = "Distribution of Algae a6", xlab = "Algae a6 Values", ylab = "Frequency")


# b) Plot the distribution of size 3
hist(algae$size3, main = "Distribution of Size 3", xlab = "Size 3 Values", ylab = "Frequency")



# c) Plot a histogram and a normal distribution curve
hist(algae$oPO4, main = "Distribution of oPO4", xlab = "oPO4 Values", ylab = "Frequency", prob = TRUE)
curve(dnorm(x, mean = mean(algae$oPO4), sd = sd(algae$oPO4)), add = TRUE, col = "blue")

#d)
# Install and load the 'ggplot2' package for more advanced plotting
install.packages("ggplot2")
library(ggplot2)

# Create a scatter plot to visualize the relationship between NO3 and size1
ggplot(algae, aes(x = size1, y = NO3)) + geom_point() + labs(title = "Distribution of NO3 across River Sizes", x = "River Size", y = "NO3 Values")


# e) Create a boxplot to compare the distribution of a1 across speed categories
ggplot(algae, aes(x = speed, y = a1)) + geom_boxplot() + labs(title = "Distribution of Algae a1 across River Speeds", x = "River Speed", y = "Algae a1 Values")


# f) Compute the frequencies of algae a1 and a6
a1_freq <- table(algae$a1)
a6_freq <- table(algae$a6)

# Create a bar plot to visualize the frequencies
barplot(rbind(a1_freq, a6_freq), beside = TRUE, legend.text = c("Algae a1", "Algae a6"),
        main = "Frequency Relationship between Algae a1 and a6", xlab = "Algae", ylab = "Frequency") 
