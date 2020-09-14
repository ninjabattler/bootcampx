SELECT students.name AS student, AVG(assignment_submissions.duration) AS average_duration
FROM students
JOIN assignment_submissions ON assignment_submissions.student_id = students.id
WHERE students.endDate IS null
GROUP BY students.name
ORDER BY average_duration DESC;