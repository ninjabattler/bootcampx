SELECT 
  cohorts.name,
  AVG(assistance_requests.completed_at - assistance_requests.started_at) AS average_assistance_request_duration
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = students.cohortId
GROUP BY cohorts.name
ORDER BY average_assistance_request_duration DESC
LIMIT 1;