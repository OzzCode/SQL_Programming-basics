USE sampleDB

SELECT title, Salary, FirstName, LastName, -- Chooses basic fields to display
avg(Salary) OVER(PARTITION BY title) AS 'Average', -- partitions the avg salary by persons title
salary/AVG(salary) OVER(PARTITION BY title) AS 'Ratio' -- shows the percentage of persons salary ratio compared to avg
from peoplewithsalary
