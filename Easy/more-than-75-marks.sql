SELECT s.name
FROM students s
WHERE s.marks > 75
ORDER BY substr(s.name, length(s.name)-2) ASC, id ASC