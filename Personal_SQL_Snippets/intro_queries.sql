--USE sampledb --this is a test comment; context for our db code
--SELECT * FROM dbo.people -- shows all the columns in the table

--USE sampledb
--SELECT Title, FirstName, LastName FROM dbo.people --shows only the title, first name and last name

USE sampledb
SELECT title, FirstName as 'First Name', LastName as 'Last Name' FROM dbo.people