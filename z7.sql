import --csv city.csv city
SELECT timezone, COUNT(*) AS city_count
from city
GROUP BY timezone
ORDER BY city_count DESC;
