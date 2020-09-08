SELECT COUNT(*)
FROM countries
WHERE continent = 'Africa';

SELECT *
FROM population_years
LIMIT 20;

SELECT *
FROM countries
LIMIT 10;

SELECT SUM(population)
FROM population_years
JOIN countries
ON population_years.country_id = countries.id
WHERE countries.continent = 'Oceania' AND population_years.year = 2005;

SELECT ROUND(AVG(population),3)
FROM population_years
JOIN countries
ON population_years.country_id = countries.id
WHERE countries.continent = 'South America' AND population_years.year = 2003;

SELECT countries.name, MIN(population)
FROM population_years
JOIN countries
ON population_years.country_id = countries.id
WHERE population_years.year = 2007;

SELECT ROUND(AVG(population),3)
FROM population_years
JOIN countries
ON population_years.country_id = countries.id
WHERE countries.name = 'Poland';

SELECT COUNT(DISTINCT countries.name) AS 'Countries with "the"'
FROM population_years
JOIN countries
ON population_years.country_id = countries.id
WHERE countries.name LIKE '%the';

SELECT continent, SUM(population) AS 'Total population'
FROM population_years
JOIN countries
ON population_years.country_id = countries.id
WHERE year = 2010
GROUP BY continent;













