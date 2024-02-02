/*
2.1 List the employeeid, firstname + lastname concatenated as ‘employee’, and the age of the employee  when they were hired.
*/
select employeeid, concat(firstname, ' ', lastname) as employee, age(hiredate, birthdate) as hire_date
from employees;


/*
2.2 Run a query to calculate your age as of today.
*/
select current_date, age(timestamp '1990-09-15');

/*
2.3 List the customerid, companyname and country for all customers whose region is NULL.
*/
select customerid, companyname, country
from customers
where region is NULL;
