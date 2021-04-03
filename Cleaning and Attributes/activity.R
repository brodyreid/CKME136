# AIRPORT ACTIVITY ATTRIBUTE
# We use the library "SQLdf" for this EDA.

# Load file.
activity <- read.csv("C:/Users/Brody/Documents/CKME136/AIRPORT ACTIVITY/activity.csv")

# Rename and select desired columns.
names(activity)[1] <- "Date"
activity <- activity[, -c(4:7)]

# Filter by date range and make units of Activity be 1000 passengers.
activity_clean <- sqldf("SELECT * FROM activity WHERE NOT Date = '2000' AND NOT Date = '2017'")
activity_clean[,3] <- sapply(activity_clean[,3], function(x) round(x/1000, digits = 0))

# Select by city.
toronto_activity <- sqldf("SELECT Date, SUM(Value) as Activity FROM activity_clean WHERE Geo GLOB 'TORONTO*' GROUP BY Date")

vancouver_activity <- sqldf("SELECT Date, SUM(Value) as Activity FROM activity_clean WHERE Geo GLOB 'VANCOUVER*' GROUP BY Date")

montreal_activity <- sqldf("SELECT Date, SUM(Value) as Activity FROM activity_clean WHERE Geo GLOB 'MONTR*' GROUP BY Date")
