# Airport Activity as a Predictor of Regional Economic Development

Included are all the `R-markdown` files that were exported as Word documents.

### Goal
I developed a model to predict a city’s economic growth given its airport’s activity.

### Data
All of the airport-level datasets were sourced from the Government of Canada’s Open Data Portal and were structured. The economic-level datasets were sourced from a third-party and were unstructured.

- [Total number of aircraft movements per city (monthly)](https://www150.statcan.gc.ca/t1/tbl1/en/tv.action?pid=2310000201)

- [Airport activity per city (yearly), i.e., the number of passengers departing and arriving at an airport](https://www150.statcan.gc.ca/n1/en/catalogue/51-203-X)

- [Median income per city (yearly)](https://www150.statcan.gc.ca/t1/tbl1/en/tv.action?pid=1110023901)

- [Number of employed persons per city in thousands (yearly)](https://www150.statcan.gc.ca/t1/tbl1/en/tv.action?pid=1410031201)

- [GDP of Canadian Cities (yearly)](https://www.statista.com/statistics/652751/real-gdp-of-toronto-ontario/)

### Method
1. Clean the structured and unstructured datasets using `R`.
2. Select attributes in `Weka`.
3. Apply multiple linear regressions in `R`.
4. Visualize the results in `R` and `Excel`.

### Results
It was determined that in major Canadian cities, with all else equal, a 10% increase in passenger activity produces a 1%-4% increase in individual median income and a 0.5%-1% increase in employment.
