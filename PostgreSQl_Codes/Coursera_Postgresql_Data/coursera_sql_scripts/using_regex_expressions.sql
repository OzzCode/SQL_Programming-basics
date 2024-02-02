select customerid, contactname, country
from customers
where country != 'Brazil';


select productid, productname, unitprice
from products
where unitprice < 60;


select customerid, contactname, country
from customers
where contactname like 'M%';  -- % means any character after the initial request of 'M' (case matters)

select customerid, contactname, country
from customers
where contactname like '_a%';   -- using like with the _ returns a letter 'a' at the second index


select productid, productname, unitprice, supplierid
from products
where supplierid in (2, 4, 6, 8);


-- Strining conditions using Booleans with parentheses; using no paraentheses will query different results
select productname, supplierid, categoryid, unitprice, unitsinstock
from products
where supplierid = 1 AND (categoryid = 2 OR categoryid = 3 AND unitprice >20) OR
	unitsinstock < 12;

