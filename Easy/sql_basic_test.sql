SELECT i.employee_id, i.name
FROM employee_information i
INNER JOIN last_quarter_bonus b ON i.employee_ID = b.employee_ID
WHERE (b.bonus >= 5000) AND (i.division = 'HR')


SELECT s.roll_number, s.name
FROM student_information s
JOIN (SELECT roll_number, subject_one + subject_two + subject_three as mark FROM examination_marks) as m ON s.roll_number = m.roll_number
WHERE m.mark < 100