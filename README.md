# ETL: Happiness Economics
## ETL Project
* See other README file for the steps to generate your own dataset with this information

Data Sources: 
* https://www.kaggle.com/eng0mohamed0nabil/population-by-country-2020
* https://www.kaggle.com/mathurinache/world-happiness-report?select=2020.csv

Proposal:
Our two datasources are predicated on the concept of happiness by country and the population of the country. Our plan is to join these two datasets by country. We will do this by loading the CSVs into our python script, clean and combine in python utilizing pandas and then load it into our postgres database.

# Dataset Overview

## Population by country dataset: https://www.kaggle.com/eng0mohamed0nabil/population-by-country-2020
* This dataset includes the column names: Country (or dependency), Population (2020),	Yearly Change,	Net Change,	Density (P/Km²),	Land Area (Km²),	Migrants (net),	Fert. Rate,	Med. Age,	Urban Pop %, and World Share
## Happiness by country dataset: https://www.kaggle.com/mathurinache/world-happiness-report?select=2020.csv
* This dataset includes the column names: Country name,	Regional indicator,	Ladder score,	Standard error of ladder score,	upperwhisker,	lowerwhisker,	Logged GDP per capita,	Social support,	Healthy life expectancy,	Freedom to make life choices,	Generosity,	Perceptions of corruption,	Ladder score in Dystopia,	Explained by: Log GDP per capita,	Explained by: Social support,	Explained by: Healthy life expectancy,	Explained by: Freedom to make life choices,	Explained by: Generosity,	Explained by: Perceptions of corruption,	Dystopia + residual,

## Combined dataset for database:
Our final dataset includes the column names: country_name,	population,	density,	land_area,	migrants, region,	score,	gdp_per_capita,	social_support, and	corruption_perception

# Our Process
* First, using python, we imported our two files, the happiness dataset and the population dataset.  
* Then we trimmed down each dataset so that the final, combined dataset would be more focused.  We wanted to focus more in economic indicators so the happiness dataset was cut to include country name, country region, happiness score, GDP per capita, social support score, and corruption percentage.  The population dataset was cut to include country, population, population density, land area, and migrants.
* Next, we defined our tables in sql and also defined the joined table.
* After that, we connected to our sql session using sqlalchemy and read our datasets into their tables
* Lastly, we created the final combined dataset which is shown below:

![image](https://user-images.githubusercontent.com/61367502/117545639-3f0ea880-afec-11eb-89ef-49911e691cb2.png)

# How to Run ETL Process

## Extract: your original data sources and how the data was formatted (CSV, JSON, pgAdmin4, etc)

1. Create a 'happiness_versus_population' database in pgAdmin 4 and then create the following two tables within the database:

    * A 'happiness' table that contains the columns 'id', 'country_name', 'region', 'score', 'gdp_per_capita', 'social_support', and 'corruption_perception'.
    
    * A 'population' table that contains the columns 'id', 'country_name', 'population', 'density', 'land_area', and 'migrants'.
    
    * Make sure to assign the 'id' columns as primary key and assign the correct data types (text, float, int) to the other columns.
    

2. In Jupyter Notebook, import the dependencies and extract data from the CSV files into a pandas DataFrame.

## Transform: what data cleansing or transformation was brequired

1. Copy the necessary columns into a new DataFrame.

2. Rename columns to match the tables created in the database.

3. Reset index and rename index to id to match the primary key id column in the database tables.

4. Check for duplicates by running value counts on country name in descending order.

## Load: the final database, table/collections and why this was chosen

1. Create a connection to the database.

2. Check for connection to the database and confirm that the tables have been created.

3. Append the DataFrames to the tables and set index as false to use the previously created 'id' field as the primary key.

4. Confirm that the load was done successfully by querying the database.

* Join the two tables on country name and select the all columns from both tables.
