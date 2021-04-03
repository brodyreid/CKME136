# Combine data for each city. This is just for Toronto, but the same process was done on Montreal and Vancouver as well.

# TORONTO
toronto_full <- data.frame(cbind(toronto_income$Income, toronto_activity$Activity, toronto_movements$Movements, toronto_employed$Employed, toronto_gdp$GDP))
names(toronto_full)[1] <- "Income"
names(toronto_full)[2] <- "Activity"
names(toronto_full)[3] <- "Movements"
names(toronto_full)[4] <- "Employed"
names(toronto_full)[5] <- "GDP"

# Define RMSE function.
RMSE <- function(x){
  sqrt(c(sum(x^2))/length(x))
}

pairs(toronto_full)
