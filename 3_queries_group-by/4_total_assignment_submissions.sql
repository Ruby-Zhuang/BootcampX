-- Get the total number of assignment submissions for each cohort.
SELECT cohorts.name AS cohort, count(assignment_submissions.*) AS total_submissions
FROM assignment_submissions
JOIN students ON students.id = assignment_submissions.student_id
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohorts.id -- could be cohorts.name
ORDER BY total_submissions DESC;