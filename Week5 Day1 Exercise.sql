--1.How many actors are there with the last name ‘Wahlberg’?
select*
from actor
where last_name like 'Wahlberg'
--Answer: 2

--2. How many payments were made between $3.99 and $5.99?
select count(*)
from payment
where amount >='3.99' and amount <= '5.99'
--Answer:5607

--3. What films have exactly 7 copies? (search in inventory)
SELECT film_id,Count(*) as num_in_stock
FROM inventory
GROUP BY film_id
HAVING COUNT(*) = 7;
--Answer:116

--4.How many customers have the first name ‘Willie’?
select Count(*) 
from customer
where first_name like 'Willie'

--5. What store employee (get the id) sold the most rentals (use the rental table)?
SELECT staff_id, COUNT(*) as rental_count
FROM rental
GROUP BY staff_id
ORDER BY rental_count desc
limit 1;



--6. How many unique district names are there?
select count(Distinct district)
from address

select district 
from address
group by district;


--7. What film has the most actors in it? (use film_actor table and get film_id)
select film_id,count(*) as num_actors
from film_actor;
group by film_id
order by num_actors desc
limit 1;
--Answer :588


--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
select count(*)
from customer
where store_id = 1 and last_name like ' %es';

--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers with ids between 380 and 430? (use group by and having > 250)
select amount,count(*)
from payment
where customer_id between 380 and 430
group by amount
having count(*) > 250;
--Amswer:3


--10. Within the film table, how many rating categories are there? And what rating has the most movies total?
select rating, count(*)
from film
group by rating
order by count(*) desc;
--Answer 5 categories, PG-13 with most movies