DROP TABLE happiness;
DROP TABLE population;

-- Create tables for raw data to be loaded into
CREATE TABLE happiness (
    id INT PRIMARY KEY,
    country_name TEXT,
    region TEXT,
    score FLOAT,
    gdp_per_capita FLOAT,
    social_support FLOAT,
    corruption_perception FLOAT
);

CREATE TABLE population (
    id INT PRIMARY KEY,
    country_name TEXT,
    population FLOAT,
    density INT,
    land_area FLOAT,
    migrants FLOAT
);


-- Joins tables
SELECT h.country_name, h.region, h.gdp_per_capita, h.social_support, h.corruption_perception, p.population, p.density, p.land_area, p.migrants, p.urban_pop
FROM happiness h
JOIN population p
ON happiness.country_name = population.country_name
