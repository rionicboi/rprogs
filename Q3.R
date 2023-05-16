#a)
# Read the CSV file
data <- read.csv("Coweeta.CSV")

# Count the number of observations per species
species_count <- table(data$species)
species_count

# b) Filter the data to include species with at least 10 observations
filtered_data <- subset(data, species_count[species] >= 10)

#c) Make a scatter plot of biomass versus height

plot(filtered_data$height, filtered_data$log_biomass, pch = 15, col = ifelse(filtered_data$species == "acru", "blue", filtered_data$species),
     xlab = "Height", ylab = "Log-transformed Biomass", main = expression(italic("Scatter Plot of Log-transformed Biomass vs Height")))


#d) 
# Log-transform biomass
filtered_data$log_biomass <- log(filtered_data$biomass)

# Redraw the scatter plot with log-transformed biomass
plot(filtered_data$height, filtered_data$log_biomass, pch = 15, col = filtered_data$species,
     xlab = "Height", ylab = "Log-transformed Biomass", main = expression(italic("Scatter Plot of Log-transformed Biomass vs Height")))
