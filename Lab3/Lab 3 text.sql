--1. List the ordno and dollars of all orders 
Select ordno, dollars 
from orders;

--2. List the name and city of agents named Smith
Select name, city 
from agents 
where name = 'Smith';

--3. List the pid, name and priceUSD of products with quantity more then 208,000
Select pid, name, priceUSD 
from products 
where quantity > 208000;


--4 List the names and cities of customers in Dalls
Select name, city 
from customers 
where city = 'Dallas';

--5 List the names of agents not in New York and not in Tokyo
Select name 
from agents 
where city <> 'New York' and  city <> 'Tokyo';

--6 List all the data from products not in Dallas or Duluth that cost US $1 or more
Select *  
from products  
where city <> 'Dallas' and city <> 'Duluth';

--7 List all data for orders in January or March
Select * 
from orders 
where mon in ('jan','mar');

--8 List all data for orders in February less then US $500.
Select * 
from orders 
where mon =('feb') and dollars <500
-- 9 list all orders from customers whose cid is C005
Select * 
from customers 
where cid = 'C005';

