-- Q.1 All customers not in USA
select customerid, companyname, country
from customers
where country != 'USA';

-- Q.2 Products with Total Value for productys greater than $100
select productname, unitprice, unitsinstock, (unitsinstock * unitprice) as total_value
from products
where total_value > 100;

-- @.3 Get quantityperunit for products that come in bottles
select productid, productname, quantityperunit
from products
where quantityperunit like '%bottle%';


-- Q.4 Products whose categoryid is an ODD number
select productid, productname, unitprice, categoryid
from products
where categoryid % 2 = 1;


-- Q.5 Orders shipped to Canada in Dec 1996 through Jan 1997
select orderid, customerid, shippeddate
from orders
where shipcountry = 'Canada' 
AND shippeddate BETWEEN '1996-12-01' AND '1997-01-31';
