SELECT 
CASE 
	WHEN (t.A = t.B) AND (t.B = t.C) AND ((t.A + t.B) > t.C) AND ((t.C + t.B) > t.A) AND ((t.A + t.C) > t.B) THEN 'Equilateral'
	WHEN ((t.A = t.B) OR (t.C = t.B) OR (t.A = t.C)) AND (((t.A + t.B) > t.C) AND ((t.C + t.B) > t.A) AND ((t.A + t.C) > t.B)) THEN 'Isosceles'
	WHEN ((t.A + t.B) > t.C) AND ((t.C + t.B) > t.A) AND ((t.A + t.C) > t.B) THEN 'Scalene'
	ELSE 'Not A Triangle'
END AS triangle_type
FROM triangles t