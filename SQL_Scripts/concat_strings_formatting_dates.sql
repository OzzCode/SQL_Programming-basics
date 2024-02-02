USE sampledb
SELECT FirstName+' '+LastName AS 'Full Name', -- combines two columns (string concat)
FORMAT(ModifiedDate, 'D') AS 'Cleaned Date' -- small d for shortened date
FROM peoplewithsalary


USE sampledb
SELECT
	FirstName + ' ' + LastName AS 'Full Name'
   , -- combines two columns (string concat)
	FORMAT(ModifiedDate, 'd', 'de-de') AS 'Cleaned Date' -- small d for shortened date, de-de for German standard
FROM peoplewithsalary


USE sampledb
SELECT
	FirstName + ' ' + LastName AS 'Full Name'
   , -- combines two columns (string concat)
	FORMAT(Salary, 'C') AS 'Cleaned Currency' -- C used for currency
FROM peoplewithsalary


USE sampledb
SELECT
	FirstName + ' ' + LastName AS 'Full Name'
   , -- combines two columns (string concat)
	FORMAT(Salary, 'C', 'en-gb') AS 'Cleaned Currency' -- C used for currency, and format currency type (gb; Great Britain)
FROM peoplewithsalary