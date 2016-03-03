--1. Display the names and city of customers who live in any city that makes the most different kinds of products 
--(There are two cities that make the most different products. Return the name and City of customers from either on of those.)
Select name, city 
from Customers 
where city in (Select city 
	       from products 
	       group by city 
	       having count(city)= (Select count (city) 
				     from products 
				     group by city 
				     order by count (city) DESC 
				     limit 1))


--2. Display the names of products where priceUSD is strictly above the average price USD in reverse
--alphabetical order 
Select name 
From Products 
where priceUSD > (Select avg(priceUSD)
		  from products)

--3. Display thhe customers name, pid ordered, and the total of all ordered sorted by highest to lowest. 
Select c.name, o.pid, sum (o.dollars)
from customers c
Inner join orders o ON c.cid = o.cid 
Group by c.name , o.pid
Order by sum(o.dollars) DESC;
--4. Display all customers names (in alphabetical order) and their total ordered and nothing more. Use coalesce to avoid showing "NULLs".
Select c.name, o.pid ,COALESCE(sum(o.dollars),0.00)
from customers c 
Inner Join orders o 
On c.cid=o.cid
Group By o.pid, c.name
Order by sum (o.dollars) DESC;
--5. Diplay the names of all custumers who bought products from agents base in tokyo along with the name of the product there ordered 
--and the name of the agents who sold it to them
Select customers.name , products.name, agents.name 
from customers 
Inner Join orders 
on Customers.cid=orders.cid
Inner Join products
on orders.pid=products.pid 
Inner join agents 
on agents.aid= orders.aid 
Where agents.city ='Tokyo';

--6. Write a query to check the accuracy of the dollar column in the Orders Table. 
--This means calculating Orders.totalUSD from data in the others table and comparing those values to the values in Orders.totalUSD. 
--Display all rows in Orders where Orders.totalUSD in incorrect (if any).
Select dollars, o.qty*priceUSD*(1-(discount/100)) AS truetotal
From orders o 
Inner Join Products p ON o.pid = p.pid 
Inner join customers c on o.cid = c.cid 
Where dollars not in (Select o.qty*p.priceUSD*(1-discount/100)
			from orders o
			inner join products p on o.pid =p.pid 
			inner join customers c on o.cid=c.cid);

--7. What is the difference between a Left OUter Join and a Right outer Join. 
--Give example queries in SQL to demonstrate. (Feel free to use the Cap2 database to make your points here.)

Select * 
from Products 