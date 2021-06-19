use sakila;

-- 1. Select all the actors with the first name ‘Scarlett’.
select * from actor
where first_name='SCARLETT';

-- 2. Select all the actors with the last name ‘Johansson’.
select * from actor
where last_name='JOHANSSON';

-- 3. How many films (movies) are available for rent? (Total amount of movies)
select count(film_id) from film;

-- 4. How many films have been rented?
select count(rental_id) from rental;

-- 5. What is the shortest and longest rental period?
select min(rental_duration) as shortest, max(rental_duration) as longest
from film;

-- 6. What are the shortest and longest movie duration? Name the values max_duration and min_duration.
select min(length) as min_duration, max(length) as max_duration
from film;

-- 7. What's the average movie duration?
select avg(length) as average_duration
from film;

-- 8. What's the average movie duration expressed in format (hours, minutes)?
select concat(floor((avg(length))/60),'h',round((avg(length))%60),'m') as average_duration
from film;

-- 9. How many movies longer than 3 hours?
select count(length) from film
where length>180;

-- 10. Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
select concat(left(first_name,1), substr(lower(first_name), 2, 30),' ', last_name, ' - ', lower(email)) as formatted_info
from customer;

-- 11. What's the length of the longest film title?
select concat(floor((max(length))/60),'h',round((max(length))%60),'m')
from film;