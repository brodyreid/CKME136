# GDP ATTRIBUTE
# We use the library "SQLdf" for this EDA.

# Load files.
toronto_gdp <- read.csv("C:/Users/Brody/Documents/CKME136/DATASETS FOR ECONOMIC SUCCESS/gdp/toronto gdp.csv")
vancouver_gdp <- read.csv("C:/Users/Brody/Documents/CKME136/DATASETS FOR ECONOMIC SUCCESS/gdp/vancouver gdp.csv")
montreal_gdp <- read.csv("C:/Users/Brody/Documents/CKME136/DATASETS FOR ECONOMIC SUCCESS/gdp/montreal gdp.csv")

# Rename Date column.
names(toronto_gdp)[1] <- "Date"
names(vancouver_gdp)[1] <- "Date"
names(montreal_gdp)[1] <- "Date"
