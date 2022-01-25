# Dataframe Practice

# Load the CSV file from the URL
# https://raw.githubusercontent.com/melaniewalsh/Neat-Datasets/main/1979-2020-National-Park-Visits-By-State.csv

np_data <- read.csv("https://raw.githubusercontent.com/melaniewalsh/Neat-Datasets/main/1979-2020-National-Park-Visits-By-State.csv")

# Find the number of rows in the dataframe
nrow(np_data)

# Extract the column ParkName
parks <- np_data$ParkName

# Extract the column RecreationVisits
visits <- np_data$RecreationVisits

# Extract the column Region
regions <- np_data$Region

# Filter the regions vector to get only regions that match "Pacific West"
# Then count how many values are present in the variable west1
# You will probably get 0 — do you know why?

west1 <- regions[regions == "Pacific West "]

length(west1)

# Let's try a different approach
# Install and load stringr package
install.packages(stringr)
library(stringr)

# Now use str_detect to filter for "Pacific West" or "West" in the regions vectors
west2 <- regions[str_detect(regions, "Pacific West")]

length(west2)

# Find the max visit value in the dataset
max_visit <- max(visits)

# Find the min visit value in the dataset
min_visit <- min(visits)

# Find the values when the max value occurred
np_data[np_data$RecreationVisits == max_visit,]

# Find the values when the min value occurred
np_data[np_data$RecreationVisits == min_visit,]


# Plotting Visits Over Time — Just For Fun!
# remove scientific notation
options(scipen=999)
plot(x=np_data$Year, y=np_data$RecreationVisits, col='blue')

# Plotting Visits Over Time by Park
# Fill in a park name of your choice here
park_filter <- str_detect(np_data$ParkName, "North Cascades")

plot(x=np_data$Year[park_filter], y=np_data$RecreationVisits[park_filter], col='blue')
