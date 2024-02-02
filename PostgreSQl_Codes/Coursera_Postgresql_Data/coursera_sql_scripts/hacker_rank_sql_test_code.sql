select productname, quantityperunit, unitprice, unitsinstock, total_value
from products
where unitsinstock >= 10 and total_value >= 100;


/*
Query the two cities in STATION with the shortest and longest CITY names, 
as well as their respective lengths (i.e.: number of characters in the name). 
If there is more than one smallest or largest city, choose the one that comes 
first when ordered alphabetically.
*/

select CITY, length(CITY) as city_length
from STATION
order by city_length, CITY limit 1;

select CITY, length(CITY) as city_length
from STATION
order by city_length desc, CITY limit 1;


/*Query the Name of any student in STUDENTS who scored higher than  Marks. Order your output by the 
last three characters of each name. If two or more students both have names ending in the same last 
three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.
*/
select NAME
from STUDENTS
where MARKS > 75 order by right(NAME, 3), ID asc;


/*
Write a query that prints a list of employee names (i.e.: the name attribute) 
for employees in Employee having a salary greater than  per month who 
have been employees for less than  months. Sort your result by ascending employee_id.
*/
select name
from Employee
where salary > 2000 and months < 10
order by employee_id;

/*
You are given three tables: Students, Friends and Packages. Students contains two columns: ID and Name. 
Friends contains two columns: ID and Friend_ID (ID of the ONLY best friend). Packages contains 
two columns: ID and Salary (offered salary in $ thousands per month).

Write a query to output the names of those students whose best friends got offered a higher salary 
than them. Names must be ordered by the salary amount offered to the best friends. It is 
guaranteed that no two students got same salary offer.
*/
select name 
from Students
inner join Friends on Friends.ID = Students.ID
inner join Packages P1 on P1.ID = Students.ID
inner join Packages P2 on P2.ID = Friends.Friend_ID
where P2.Salary > P1.Salary
order by P2.Salary;


/*
Two pairs (X1, Y1) and (X2, Y2) are said to be symmetric pairs if X1 = Y2 and X2 = Y1.
Write a query to output all such symmetric pairs in ascending order by the value of X. 
List the rows such that X1 ≤ Y1.
*/
SELECT f1.X, f1.Y FROM Functions AS f1 
WHERE f1.X = f1.Y AND
(SELECT COUNT(*) FROM Functions WHERE X = f1.X AND Y = f1.Y) > 1
UNION
SELECT f1.X, f1.Y from Functions AS f1
WHERE EXISTS(SELECT X, Y FROM Functions WHERE f1.X = Y AND f1.Y = X AND f1.X < X)
ORDER BY X;

