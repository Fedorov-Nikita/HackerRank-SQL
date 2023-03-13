(SELECT CONCAT(o.name, '(', SUBSTR(o.occupation, 1, 1), ')') AS str
FROM occupations o)
UNION ALL
(SELECT CONCAT('There are a total of ', COUNT(o.name), ' ', LOWER(o.occupation), 's.') as str
FROM occupations o
GROUP BY o.occupation)
ORDER BY str ASC