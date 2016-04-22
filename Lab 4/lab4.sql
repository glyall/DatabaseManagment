--1 get cities of agents booking an order from a customers whose cid is 'c002'.
Select city 
from agents 
where aid in (select aid
	      from orders 
	      where cid = 'c002');
-- 2 Get the ids of products orders through any agent who takes at least one order from customers in Dallas, 
-- sorted by pid from highest to lowest (This is not the same as asking for ids of products ordered by customers in dallas
Select  distinct pid 
from orders 
where aid in (select aid 
             from orders 
             where cid in ( select cid 
			   from customers 
			   where city = 'Dallas'))
			   order by pid Desc;	

--3 Get the ids and names of customers who did not place an order throught agent a01. 

Select cid , name
from customers
where cid  not in (select cid 
		  from orders 
		  where aid =  ('a01'));
--4 get the ids of customers who ordered both prodcts p01 and po7. 
 Select cid
 from orders 
 where pid  = 'p01' INTERSECT 
	                       (Select cid
	                       from orders 
	                       where pid = 'p07');

--5 Get the ids of products no ordered by any customers who placed any order through agents ao7 in pid 
--order from highest to lowest 
Select distinct pid 
from orders 
where cid not in (select cid
                  from orders 
                  where aid= 'a07')
order by pid Desc;

--6 get the name discount and city for all customers who plac order throught agents in London or New York
Select name, discount, city 
from customers 
where cid in  (Select cid
              from orders 
              where aid in (select aid 
                            from agents 
                            where city = 'London' or city = 'New York'));

--7 Get all the customers who have the same discount as that of any customers in Dallas or London 
Select name, discount  
from customers 
where discount = ( select Discount 
                  from customers 
                  where city = 'London' or city ='Dallas');
          

--8 What is a check Constraint? What are they? What are they good for? What is the advantage of 
--putting that sort of thing inside the database? 


