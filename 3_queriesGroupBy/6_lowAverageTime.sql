SELECT students.name AS student, AVG(assignment_submissions.duration) AS average_duration, AVG(assignments.duration) AS average_expected_duration
FROM students
JOIN assignment_submissions ON assignment_submissions.student_id = students.id
JOIN assignments ON assignment_submissions.assignment_id = assignments.id
WHERE students.endDate IS null
GROUP BY students.name
HAVING AVG(assignment_submissions.duration) < AVG(assignments.duration)
ORDER BY average_duration;