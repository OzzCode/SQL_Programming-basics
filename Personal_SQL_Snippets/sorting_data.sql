-- Show the data sorted by salary from low to high
USE sampledb

SELECT * FROM people$
ORDER BY Salary -- Auto sort from low to high


USE sampledb

SELECT * FROM people$
ORDER BY Salary desc -- desc is in descending order


USE sampledb

SELECT * FROM people$
ORDER BY FirstName, Salary -- Orders by Name then by Salary (low to high)


-- Sort people whose last name begins with 'G', then sort by salary
USE sampledb

SELECT * FROM people$
WHERE LastName like ('G%')
ORDER BY Salary

