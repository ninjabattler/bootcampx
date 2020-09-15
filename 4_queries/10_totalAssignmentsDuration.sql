SELECT day, COUNT(*) AS assignments, SUM(duration) AS duration
FROM assignments
GROUP BY day
ORDER BY day;