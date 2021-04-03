# INCOME ATTRIBUTE
# We use the library "SQLdf" for this EDA.

# Load file.
income <- read.csv("C:/Users/Brody/Documents/CKME136/DATASETS FOR ECONOMIC SUCCESS/income/income.csv")

# Rename columns.
names(income)[1] <- "Date"
names(income)[2] <- "Geo"
names(income)[5] <- "Type"
names(income)[12] <- "Value"

# Select attributes we want and use SQLdf to filter by all sexes and median income.
income <- income[, c("Date", "Geo", "Sex", "Type", "Value")]
income <- sqldf("SELECT Date, Geo, Value FROM income WHERE Sex = 'Both sexes' AND Type = 'Median total income of tax filers with total income' AND NOT Date = '2000' AND NOT Date = '2017'")

# Select by city.
toronto_income <- sqldf("SELECT Date, Value as Income FROM income WHERE Geo GLOB 'Toronto*' GROUP BY Date")

vancouver_income <- sqldf("SELECT Date, Value as Income FROM income WHERE Geo GLOB 'Vancouver*' GROUP BY Date")

montreal_income <- sqldf("SELECT Date, Value as Income FROM income WHERE Geo GLOB 'Montr*' GROUP BY Date")

