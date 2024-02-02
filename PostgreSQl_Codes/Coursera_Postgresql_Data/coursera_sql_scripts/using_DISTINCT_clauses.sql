-- Using the COUNT funtion with DISTINCT
select count(*)
from customers;

select count(country)
from customers;

select count(distinct(country)) from customers; -- Takes into account duplicate countries and skips the count


select productname, unitprice
from products
order by unitprice; -- order by is ascending by default (use desc after column to group by for decending)

-- Using limit (limit number of rows)
select productname, unitprice
from products
order by unitprice desc limit 5;


/*
Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u)
from STATION. Your result cannot contain duplicates.
*/
select distinct CITY
from STATION
where lower(substr(CITY, 1, 1)) in ('a','e','i','o','u');

-- Query the list of CITY names ending with vowels (a, e, i, o, u)
-- from STATION. Your result cannot contain duplicates.
select distinct CITY
from STATION
where lower(substr(CITY, -1, 1)) in ('a', 'e', 'i', 'o', 'u');

/*
Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u)
as both their first and last characters. Your result cannot contain duplicates.
*/
select distinct CITY
from STATION
where substr(CITY, 1, 1) IN ('a', 'e', 'i', 'o', 'u') and substr(CITY, -1) in ('a', 'e', 'i', 'o', 'u');

/*
Query the list of CITY names from STATION that either do not start with vowels
or do not end with vowels. Your result cannot contain duplicates.
*/
select distinct CITY
from STATION
where substr(CITY, 1, 1) not in ('A', 'E', 'I', 'O', 'U') or substr(CITY, -1) not in ('a', 'e', 'i', 'o', 'u');


/*
Query the list of CITY names from STATION that either do not start with vowels
AND do not end with vowels. Your result cannot contain duplicates.
*/
select distinct CITY
from STATION
where substr(CITY, 1, 1) not in ('A', 'E', 'I', 'O', 'U') and substr(CITY, -1) not in ('a', 'e', 'i', 'o', 'u');
