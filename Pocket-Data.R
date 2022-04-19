# Load the pocket size data from the Pudding

# Read more about the data here: https://github.com/the-pudding/data/blob/master/pockets/measurements.csv

pocket_df <- read.csv("Pudding-pockets-salty.csv", stringsAsFactors = FALSE)

# Extract the column "menWomen" from the dataframe and save as the variable `gender`
Your code here

# How many men's pockets vs women's pockets are in this data?
# First, try to filter the gender vector for only "men." (Hint: your first approach might not work, and you might have to use a built-in function to clean the data!) Then find out how many values correspond to "men"
Your code here


# Try to filter the gender vector for only "women." (Hint: your first approach might not work, and you might have to use a built-in function to clean the data!) Then find out how many values correspond to "women"
Your code here

# Extract the column "maxHeightFront" from the dataframe and save as the variable `front_pockets`
Your code here

# What is the average height of front pockets in the dataset?
Your code here

# What is the maximum height of front pockets in the dataset "maxHeightFront"?
Your code here

# What is the minimum height of front pockets in the dataset "maxHeightFront"?
Your code here

# Remove everything after the first percentage sign in the column "fabric," including the percentage sign (Hint: you can use gsub()!)
Your code here

# Extract the colum brand into the variable all_brands
Your code here

# Write a function report_brand() that reports how many pockets from each brand are included in the data
# The function should return a message that reads "There are [X] brands that match [Name of Brand] in the dataset." 
Your code here


# Call your function and test it on the brand "Guess"
Your code here


# Call your function and test it on the brand "Abercrombie"
Your code here

# Call your function on the entire column brand with sapply()
Your code here


