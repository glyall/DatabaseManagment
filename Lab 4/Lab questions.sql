--1 get cities of agents booking an order from a customers whose cid is 'c002'.
Select city 
from agents 
where aid in (select aid
	      from orders 
	      where cid = 'c002');