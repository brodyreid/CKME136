# MOVEMENTS ATTIRUBTE
# We use the library "SQLdf" for this EDA.

# Load file.
movements <- read.csv("C:/Users/Brody/Documents/CKME136/AIR CANADA REPORTS/Aircraft Movement/movements.csv")

# Rename columns.
names(movements)[1] <- "Date"
names(movements)[5] <- "Type"
names(movements)[6] <- "Peak"
names(movements)[13] <- "Value"

# Select only used columns.
movements <- movements[, c("Date", "Airports", "Type", "Peak", "Value")]

# Change Date to string.
movements$Date <- as.character(movements$Date)

# Select total movements from each city.
number_of_movements <- sqldf("SELECT * FROM movements WHERE Type = 'Total, itinerant and local movements' AND Peak = 'Number of movements'")

# Per year by city.
date_1997 <- sqldf("SELECT Date, Airports, SUM(VALUE) FROM number_of_movements WHERE Date GLOB '1997-*' GROUP BY Airports ORDER BY Airports")

date_1998 <- sqldf("SELECT Date, Airports, SUM(VALUE) FROM number_of_movements WHERE Date GLOB '1998-*' GROUP BY Airports ORDER BY Airports")

date_1999 <- sqldf("SELECT Date, Airports, SUM(VALUE) FROM number_of_movements WHERE Date GLOB '1999-*' GROUP BY Airports ORDER BY Airports")

date_2000 <- sqldf("SELECT Date, Airports, SUM(VALUE) FROM number_of_movements WHERE Date GLOB '2000-*' GROUP BY Airports ORDER BY Airports")

date_2001 <- sqldf("SELECT Date, Airports, SUM(VALUE) FROM number_of_movements WHERE Date GLOB '2001-*' GROUP BY Airports ORDER BY Airports")

date_2002 <- sqldf("SELECT Date, Airports, SUM(VALUE) FROM number_of_movements WHERE Date GLOB '2002-*' GROUP BY Airports ORDER BY Airports")

date_2003 <- sqldf("SELECT Date, Airports, SUM(VALUE) FROM number_of_movements WHERE Date GLOB '2003-*' GROUP BY Airports ORDER BY Airports")

date_2004 <- sqldf("SELECT Date, Airports, SUM(VALUE) FROM number_of_movements WHERE Date GLOB '2004-*' GROUP BY Airports ORDER BY Airports")

date_2005 <- sqldf("SELECT Date, Airports, SUM(VALUE) FROM number_of_movements WHERE Date GLOB '2005-*' GROUP BY Airports ORDER BY Airports")

date_2006 <- sqldf("SELECT Date, Airports, SUM(VALUE) FROM number_of_movements WHERE Date GLOB '2006-*' GROUP BY Airports ORDER BY Airports")

date_2007 <- sqldf("SELECT Date, Airports, SUM(VALUE) FROM number_of_movements WHERE Date GLOB '2007-*' GROUP BY Airports ORDER BY Airports")

date_2008 <- sqldf("SELECT Date, Airports, SUM(VALUE) FROM number_of_movements WHERE Date GLOB '2008-*' GROUP BY Airports ORDER BY Airports")

date_2009 <- sqldf("SELECT Date, Airports, SUM(VALUE) FROM number_of_movements WHERE Date GLOB '2009-*' GROUP BY Airports ORDER BY Airports")

date_2010 <- sqldf("SELECT Date, Airports, SUM(VALUE) FROM number_of_movements WHERE Date GLOB '2010-*' GROUP BY Airports ORDER BY Airports")

date_2011 <- sqldf("SELECT Date, Airports, SUM(VALUE) FROM number_of_movements WHERE Date GLOB '2011-*' GROUP BY Airports ORDER BY Airports")

date_2012 <- sqldf("SELECT Date, Airports, SUM(VALUE) FROM number_of_movements WHERE Date GLOB '2012-*' GROUP BY Airports ORDER BY Airports")

date_2013 <- sqldf("SELECT Date, Airports, SUM(VALUE) FROM number_of_movements WHERE Date GLOB '2013-*' GROUP BY Airports ORDER BY Airports")

date_2014 <- sqldf("SELECT Date, Airports, SUM(VALUE) FROM number_of_movements WHERE Date GLOB '2014-*' GROUP BY Airports ORDER BY Airports")

date_2015 <- sqldf("SELECT Date, Airports, SUM(VALUE) FROM number_of_movements WHERE Date GLOB '2015-*' GROUP BY Airports ORDER BY Airports")

date_2016 <- sqldf("SELECT Date, Airports, SUM(VALUE) FROM number_of_movements WHERE Date GLOB '2016-*' GROUP BY Airports ORDER BY Airports")

date_2017 <- sqldf("SELECT Date, Airports, SUM(VALUE) FROM number_of_movements WHERE Date GLOB '2017-*' GROUP BY Airports ORDER BY Airports")

#Combine years.
number_of_movements_clean <- rbind.fill(date_2001, date_2002, date_2003, date_2004, date_2005, date_2006, date_2007, date_2008, date_2009, date_2010, date_2011, date_2012, date_2013, date_2014, date_2015, date_2016)     
names(number_of_movements_clean)[3] <- "Value"

#Select by city.
toronto_movements <- sqldf("SELECT Date, SUM(Value) as Movements FROM number_of_movements_clean WHERE Airports GLOB 'Toronto*' GROUP BY Date")

vancouver_movements <- sqldf("SELECT Date, SUM(Value) as Movements FROM number_of_movements_clean WHERE Airports GLOB 'Vancouver*' GROUP BY Date")

montreal_movements <- sqldf("SELECT Date, SUM(Value) as Movements FROM number_of_movements_clean WHERE Airports GLOB 'Montr*' GROUP BY Date")
