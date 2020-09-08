#World Populations II Challenge Project (SQL)#

-- How many entries in the database are from Africa? A: 56.
SELECT COUNT(*) AS '# of African Countries'
FROM countries
WHERE continent = 'Africa';

-- What was the total population of Oceania in 2005? A: 32.664 (in millions).
SELECT ROUND(SUM(population),3) AS 'Total Population'
FROM population_years
JOIN countries
ON population_years.country_id = countries.id
WHERE countries.continent = 'Oceania' AND population_years.year = 2005;

-- What is the average population of countries in South America in 2003? A: 25.891 (in millions).
SELECT ROUND(AVG(population),3) AS 'Average Population'
FROM population_years
JOIN countries
ON population_years.country_id = countries.id
WHERE countries.continent = 'South America' AND population_years.year = 2003;

-- What country had the smallest population in 2007? A: Niue, with 2160 people. 
SELECT countries.name, MIN(population) AS 'Smallest Population'
FROM population_years
JOIN countries
ON population_years.country_id = countries.id
WHERE population_years.year = 2007;

-- What is the average population of Poland during the time period covered by this dataset? A: 38.561 (in millions).
SELECT name, ROUND(AVG(population),3) AS 'Average Population'
FROM population_years
JOIN countries
ON population_years.country_id = countries.id
WHERE countries.name = 'Poland';

-- How many countries have the word “The” in their name? A: Two countries (The Bahamas & The Gambia).
SELECT COUNT(*) AS 'Countries with "the"'
FROM countries
WHERE countries.name LIKE '%the';

-- What was the total population of each continent in 2010? A: Africa	1015.478, Asia 4133.091, Europe 723.060, North America 539.795, Oceania 34.957, and South America	396.582.
SELECT continent, SUM(population) AS 'Total Population'
FROM population_years
JOIN countries
ON population_years.country_id = countries.id
WHERE year = 2010
GROUP BY continent;













