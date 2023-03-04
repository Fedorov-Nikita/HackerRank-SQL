SELECT ROUND(avg(median), 4) as median_value
FROM (SELECT lat_n as median
  FROM station
  ORDER BY lat_n ASC
  LIMIT (2 - (SELECT COUNT(lat_n) FROM station) % 2)
  OFFSET (SELECT ((count(lat_n) - 1) / 2) FROM station)
) as subquery;