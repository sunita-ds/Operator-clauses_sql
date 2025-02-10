use mavenmovies;
# fetch the data of the movies where rating is G.
select * from film
where rating="G";
# fetch the data of the movies whose length>100
select * from film
where length>=100;
# fetch the data for both rating G and length>100
select * from film
where rating="G" and length>100;
select * from payment;
# fetch the data where payment greater than 5 and who made transaction id with staff id 1
select * from payment
where amount>5 and staff_id=1;

-- fetch the data of customer id 5 and customer id 6 from payment table
select * from payment
where customer_id=5 or customer_id=6;
-- fetch the data of customer id 5,6,7,8,9
select * from payment
where customer_id between 5 and 9;
-- fetch the data of customer id 5,6,8,9
select * from payment
where customer_id in(5,6,8,9);
-- fetch the data of movies whose rating is G,PG,NC-17
select * from film
where rating in("G","PG","NC-17");
use mavenmovies;
# fetch the data of films by sorting duration in descending order
select * from film
order by length desc;
# fetch the data in ascending order
select * from film
order by length asc;
-- display the details of payment by sorting amount in descending order
select * from payment
order by amount desc;
-- ascending order
select * from payment
order by amount asc;
-- display the details of payment by sorting amount in descending order
-- but we want only staff id 1
select * from payment
where staff_id=1
order by amount desc;
-- sort the payment table for both customer id and amount in descnding order
select * from payment
order by customer_id,amount desc;
-- limit clause
select * from film
limit 10;
-- display the top 10 amount from payment
select * from payment
order by amount desc
limit 10;
-- bottom 20 amount
select * from payment
order by amount asc
limit 20;
use sql7;
select * from employees;
-- top 3 employees salary details
select * from employees
order by salary desc
limit 3;
use mavenmovies;
select * from film
limit 5;
select * from film
limit 2,3;
select * from film
limit 2,1;
# display the second lowest amount from payment
select * from payment
order by amount asc
limit 1,1;
-- highest salary of the employees
use sql7;
select * from employees
order by salary desc
limit 3;
select * from employees
order by salary desc
limit 1,2;
-- fetch the top 20 tranactions from payment table,but display only staff id 1 data
use mavenmovies;
select * from payment
where staff_id=1
order by amount desc
limit 20;
select * from payment;
select distinct staff_id from payment;
select distinct customer_id from payment;
-- fetch the details of the actor whose name starts with m
use mavenmovies;
select * from actor
where first_name like "m%";
-- fetch the details where the name ends with m
select * from actor
where first_name like "%m";
-- fetch the details where start and end name is m
select * from actor
where first_name like "m%m";