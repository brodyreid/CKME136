# EMPLOYMENT ATTRIBUTE
# We use the library "SQLdf" for this EDA.

# Load file.
employment <- read.csv("C:/Users/Brody/Documents/CKME136/DATASETS FOR ECONOMIC SUCCESS/employed/employed.csv")

# Rename columns.
names(employment)[1] <- "Date"
names(employment)[2] <- "Geo"
names(employment)[4] <- "Type"
names(employment)[11] <- "Value"

# Select desired columns and desired date range.
employment <- employment[, c("Date", "Geo", "Type", "Value")]
employment <- sqldf("SELECT * FROM employment WHERE Type = 'Total employed, all occupations' AND NOT Date = '2017' AND NOT Date = '2018' AND NOT Date = '2019'")

# Select by city.
toronto_employed <- sqldf("SELECT Date, Value as Employed FROM employment WHERE Geo GLOB 'Toronto*'")

vancouver_employed <- sqldf("SELECT Date, Value as Employed FROM employment WHERE Geo GLOB 'Vancouver*'")

montreal_employed <- sqldf("SELECT Date, Value as Employed FROM employment WHERE Geo GLOB 'Montr*'")
