#World Populations II Challenge Project (SQL)#

SELECT COUNT(*) AS '# of African Countries'
FROM countries
WHERE continent = 'Africa';

SELECT ROUND(SUM(population),3) AS 'Total Population'
FROM population_years
JOIN countries
ON population_years.country_id = countries.id
WHERE countries.continent = 'Oceania' AND population_years.year = 2005;

SELECT ROUND(AVG(population),3) AS 'Average Population'
FROM population_years
JOIN countries
ON population_years.country_id = countries.id
WHERE countries.continent = 'South America' AND population_years.year = 2003;

SELECT countries.name, MIN(population) AS 'Smallest Population'
FROM population_years
JOIN countries
ON population_years.country_id = countries.id
WHERE population_years.year = 2007;

SELECT name, ROUND(AVG(population),3) AS 'Average Population'
FROM population_years
JOIN countries
ON population_years.country_id = countries.id
WHERE countries.name = 'Poland';

SELECT COUNT(DISTINCT countries.name) AS 'Countries with "the"'
FROM population_years
JOIN countries
ON population_years.country_id = countries.id
WHERE countries.name LIKE '%the';

SELECT continent, SUM(population) AS 'Total Population'
FROM population_years
JOIN countries
ON population_years.country_id = countries.id
WHERE year = 2010
GROUP BY continent;













