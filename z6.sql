CREATE TABLE cities (
city_name TEXT,
latitude REAL,
longitude REAL
);
INSERT INTO cities (city_name, latitude, longitude)
VALUES
 ('Самара', 53.11, 50.07),
 ('Тольятти', 53.53, 49.34),
 ('Пенза', 53.2, 45.0),
 ('Саратов', 51.32, 46.0),
 ('Саранск', 54.18, 45.17);
SELECT city_name
FROM cities
WHERE city_name != 'Самара'
ORDER BY ABS(latitude - (SELECT latitude FROM cities WHERE city_name = 'Самара')) + ABS(longitude - (SELECT longitude FROM cities WHERE city_name = 'Самара'))
LIMIT 3;
