-- First query, we will select all the records from the actor table
select * from actor 

-- Query for first_name and last_name in the actor table
select first_name, last_name 
from actor;

-- Query for a first_name that equals Nick using the WHERE clause
select first_name, last_name
from actor 
where first_name like 'Nick';

-- Query for all first_name data that starts with a J using LIKE and WHERE clauses with a wildcard
select first_name, actor_id
from actor 
where first_name like 'J%';

-- Query for all first_name data that starts with a K and has 2 letters after the K again using LIKE and WHERE clauses and the underscore
select first_name, actor_id
from actor 
where first_name like 'K__';

-- Query for all the first_name data that starts with K and ends in th
-- We will use the LIKE and WHERE clauses using both the wildcard and the underscre
select first_name, last_name, actor_id
from actor 
where first_name like 'K__%th';

-- Comparing operators 
-- >, <, >=, <=,<> 

-- Explore data with select all query so that we can change into a new table
select * from payment
 
-- Query for data that shows customers who paid an amount greater than $2
select customer_id, amount
from payment 
where amount > 2.00;

-- Query for data that shows customers who paid an amount less thatn $7.99
select customer_id, amount
from payment
where amount < 7.99;

-- Query for less than or equal to 7.99 
select customer_id, amount
from payment
where amount <= 7.99;

-- Query for greater than or equal to 2
select customer_id, amount
from payment 
where amount >= 2.00;

-- Query for data that shows cutomers who paid an amount <> 0 ordered in DESENDING order
select customer_id, amount
from payment 
where amount <> 0.00
order by amount desc;


-- SQL Aggregate Functions! Sum, avg, count, min, max
-- Queary to display the sum of amounts paid that are greater than 5.99
select sum(amount)
from payment 
where amount > 5.99;


-- Query to display the average of amounts paid greater than 5.99
select avg(amount)
from payment 
where amount > 5.99;

-- Query to display the count of amounts paid greater than 5.99
select count(amount) from payment  where amount > 5.99;

-- Query to display the count of DISTINCT amounts paid greater than 5.99
select count(distinct amount) from payment  where amount > 5.99;

-- Query to display the minimum amount greater than 7,99
select min(amount) as min_num_payments
from payment 
where amount > 7.99;

-- Query to display the maximum amount greater than 7,99
select max(amount) as max_num_payments
from payment 
where amount > 7.99;


-- Demo of groupby
select amount
from payment 
where amount = 7.99;

-- Query to display different amounts grouped together 
-- and count the amounts
select amount, count(amount)
from payment
group by amount 
order by amount;

-- Query to display customer ids with the summed amounts for each customer id 
select customer_id, sum(amount)
from payment 
group by customer_id
order by customer_id desc;





















