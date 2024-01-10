.import --csv city.csv city
.headers on
.mode csv
.separator |
SELECT timezone, COUNT(*) AS city_count
FROM city
GROUP BY timezone
ORDER BY city_count DESC;
