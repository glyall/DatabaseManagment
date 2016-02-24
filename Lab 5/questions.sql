--1 Show the cities of agents booking an order for a customers whose id is 'c002'.
--Use Jions no subqueries.
Select a.city
From agents a
Inner join orders o
On a.aid = o.aid
Where o.cid = 'c002'; 

--2 Show the IDs of products (pid) orders through any agent who makes at least one order from a customers in 
--Dallas, sorted by PID from highest to lowest. Use Joins; no subquery
Select  distinct o.pid
From orders o
Inner join customers c
On o.cid = c.cid
Where c.city in ('Dallas') 
Order by PID DESC;

--3 Show the names of customers who have never placed an order. Use a subquery
Select c.name
from customers c
where c.cid not in (Select  o.cid
	     from orders o);

-- 4 Show the names of customers who have never placed an order 
--Use an outer join 
Select c.name 
from Customers c	 
Full outer join orders o    
On c.cid = o.cid 
where o.cid is null;

--5 Show the names of customers who placed at least one order though 
--an agents in their own city along with those agent's names. 
Select c.name 
from Customers c 
inner join agents a 
on c.city = a.city 
where c.city = a.city 


--6 SHow the names of customers and agents living in the same city 
-- along with the name of the shared city, regardless of whether or not 
-- the customer has ever placed an order with that agent

Select c.name , a.name 
from customers  c, agents a
where c.city = a.city 

--7 Show the name and city of customers who live in the city that makes the fewest different 
--kinds of products.(Hint:Use count and group b on the products table.)


