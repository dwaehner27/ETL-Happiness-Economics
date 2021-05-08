# ETL-Happiness-Economics
## ETL Project
Data Sources: 
* https://www.kaggle.com/eng0mohamed0nabil/population-by-country-2020
* https://www.kaggle.com/mathurinache/world-happiness-report?select=2020.csv

Proposal:
Our two datasources are predicated on the concept of happiness by country and the population of the country. Our plan is to join these two datasets by country. We will do this by loading the CSVs into our python script, clean and combine in python utilizing pandas and then load it into our postgres database.

### Extract: your original data sources and how the data was formatted (CSV, JSON, pgAdmin4, etc)
### Transform: what data cleansing or transformation was brequired
### Load: the final database, table/collections and why this was chosen

## Population by country dataset: https://www.kaggle.com/eng0mohamed0nabil/population-by-country-2020
* This dataset includes the column names: Country (or dependency), Population (2020),	Yearly Change,	Net Change,	Density (P/KmÂ²),	Land Area (KmÂ²),	Migrants (net),	Fert. Rate,	Med. Age,	Urban Pop %, and World Share
## Happiness by country dataset: https://www.kaggle.com/mathurinache/world-happiness-report?select=2020.csv
* This dataset includes the column names: Country name,	Regional indicator,	Ladder score,	Standard error of ladder score,	upperwhisker,	lowerwhisker,	Logged GDP per capita,	Social support,	Healthy life expectancy,	Freedom to make life choices,	Generosity,	Perceptions of corruption,	Ladder score in Dystopia,	Explained by: Log GDP per capita,	Explained by: Social support,	Explained by: Healthy life expectancy,	Explained by: Freedom to make life choices,	Explained by: Generosity,	Explained by: Perceptions of corruption,	Dystopia + residual,

## Combined dataset for database:
Our final dataset includes the column names: country_name,	population,	density,	land_area,	migrants, region,	score,	gdp_per_capita,	social_support, and	corruption_perception
