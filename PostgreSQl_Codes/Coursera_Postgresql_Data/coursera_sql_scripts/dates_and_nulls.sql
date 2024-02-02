-- DATES and NULLS
select Now(); -- returns current date

-- age() is a function in postgres
select lastname, firstname, age(hiredate, birthdate) as hire_date from employees;

-- ::text is used to cast to text
select lastname, firstname, age(hiredate, birthdate)::text as hire_date from employees;

-- extract returns the year from the hiredate
select lastname, firstname, extract(year from hiredate) from employees;

-- date_part returns the year from the hiredate
select lastname, firstname, date_part('year', hiredate) from employees;

-- extracts the year from the hiredate
select lastname, firstname, extract(year from hiredate) from employees;

-- text formatting to a date
select to_date('20201231', 'YYYYMMDD');


update products
set discontinued = NULL
where discontinued = '0';

select productid, productname, discontinued
from products
where discontinued is NOT NULL;
