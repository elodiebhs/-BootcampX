---Get each day with the total number of assignments and the total duration of the assignments.

SELECT day, count(assignments.*) as number_of_assignments, sum(assignments.duration)
FROM assignments
GROUP BY day
ORDER BY day;