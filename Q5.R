# Load the MASS library and the UScereal dataset
library(MASS)
data(UScereal)


# Create a scatterplot of shelf vs. manufacturer
plot(UScereal$mfr, UScereal$shelf, xlab = "Manufacturer", ylab = "Shelf")

# Create a stacked barplot of fat vs. vitamins
plot(UScereal$vitamins, UScereal$fat,
        xlab = "Vitamins", ylab = "Fats")

# Create a boxplot of fat vs. shelf
boxplot(UScereal$fat, UScereal$shelf, xlab = "Shelf", ylab = "Fat")

# Create a scatterplot of carbohydrates vs. sugars
plot(UScereal$carbo, UScereal$sugars, xlab = "Carbohydrates", ylab = "Sugars")

# Create a stacked barplot of fibre vs. manufacturer
barplot(t(as.matrix(table(UScereal$fibre, UScereal$mfr))), col = rainbow(8), 
        xlab = "Fiber", ylab = "Count")

# Create a scatterplot of sodium vs. sugars
plot(UScereal$sodium, UScereal$sugars, xlab = "Sodium", ylab = "Sugars")
