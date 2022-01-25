# Vector / List Review

# Make the 4 values below into a vector and assign to Rainier visits
rainier_visits <- c(1518491, 1501621, 1160754, NA)

# Calculate the sum total of Rainier visits
sum(rainier_visits, na.rm = TRUE)

# Make the values below into a list and assign to the variable wa_visits
wa_visits <- list(rainier = c(1518491, 1501621, 1160754), cascades = c(30085, 38208, 30885))

# Calculate the sum total visits for each National Park,
# then assign to the variable summed visits
summed_visits <- sapply(wa_visits, sum)