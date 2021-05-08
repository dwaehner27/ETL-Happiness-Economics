# How to Run ETL Process

## Extract

1. Create a 'happiness_versus_population' database in pgAdmin 4 and then create the following two tables within the database:

    * A 'happiness' table that contains the columns 'id', 'country_name', 'region', 'score', 'gdp_per_capita', 'social_support', and 'corruption_perception'.
    
    * A 'population' table that contains the columns 'id', 'country_name', 'population', 'density', 'land_area', and 'migrants'.
    
    * Make sure to assign the 'id' columns as primary key and assign the correct data types (text, float, int) to the other columns.
    

2. In Jupyter Notebook, import the dependencies and extract data from the CSV files into a pandas DataFrame.

## Transform

1. Copy the necessary columns into a new DataFrame.

2. Rename columns to match the tables created in the database.

3. Reset index and rename index to id to match the primary key id column in the database tables.

4. Check for duplicates by running value counts on country name in descending order.

## Load

1. Create a connection to the database.

2. Check for connection to the database and confirm that the tables have been created.

3. Append the DataFrames to the tables and set index as false to use the previously created 'id' field as the primary key.

4. Confirm that the load was done successfully by querying the database.

* Join the two tables on country name and select the all columns from both tables.

