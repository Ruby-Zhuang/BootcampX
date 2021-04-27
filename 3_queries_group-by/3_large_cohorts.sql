-- Get all cohorts with 18 or more students.
SELECT cohorts.name as cohort_name, count(students.*) AS student_count 
FROM cohorts
JOIN students ON cohorts.id = cohort_id
GROUP BY cohort_name 
HAVING count(students.*) >= 18  -- HAVING clause is evaluated before the SELECT so we can't use the alias
ORDER BY student_count;
