(SELECT city, LENGTH(city)
FROM station
WHERE LENGTH(city) = (SELECT min(LENGTH(city)) FROM station)
ORDER BY city ASC
LIMIT 1)
UNION
(SELECT city, LENGTH(city)
FROM station
WHERE LENGTH(city) = (SELECT max(LENGTH(city)) FROM station)
ORDER BY city ASC
LIMIT 1)