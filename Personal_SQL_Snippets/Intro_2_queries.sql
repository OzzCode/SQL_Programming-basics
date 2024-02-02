--USE sampledb
--SELECT * FROM dbo.people$
--WHERE Title='Ms.' -- Ensures only records with Ms. are in the title field

USE sampledb
SELECT * FROM dbo.people$
WHERE Title<>'Null' -- Ensures that Null data isn't included




USE sampledb
SELECT FirstName as 'First Name' FROM dbo.people$
WHERE Salary >= 85000 -- Shows only persons that make >= $85,000


-- People with Ms. as title and make over $85,000
USE sampledb
SELECT * FROM people$
WHERE Title='Ms.' and Salary >= 85000


-- Find people that include a 'J' in the first name, first letter
USE sampledb
SELECT * FROM people$
WHERE FirstName like ('J%') 


USE sampledb
SELECT * FROM people$
WHERE FirstName like ('%J%') -- % allows for any characters before and after J


-- Use 'in' to select specific items
USE sampledb
SELECT * FROM people$
WHERE FirstName in ('James', 'John')