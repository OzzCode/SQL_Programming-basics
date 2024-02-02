-- Code summarized salaries by persons title
USE sampledb

SELECT title, SUM(salary) FROM people$
GROUP BY Title

-- Find the avg amount earned by title category
USE sampledb

SELECT title, AVG(salary) AS 'Average Salary' FROM	people$
GROUP BY Title
ORDER BY [Average Salary] -- sorts the data from low to high


-- Find the avg amount earned by title category
USE sampledb

SELECT title, AVG(salary) AS 'Average Salary' FROM	people$
GROUP BY Title
HAVING AVG(Salary) > 67000 -- Only pulls people with salary greater than 67000
