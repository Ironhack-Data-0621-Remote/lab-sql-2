-- 1. Select all the actors with the first name ‘Scarlett’.
use sakila;
select * from sakila.actor
where  first_name = 'Scarlett';
-- 2. Select all the actors with the last name ‘Johansson’.
select * from sakila.actor
where last_name = 'Johansson';
-- 3. How many films (movies) are available for rent? (Total amount of movies)
select * from sakila.inventory limit 10;
select count(film_id) as films from inventory;
-- 4. How many films have been rented?
select count(rental_id) as filmsrented from rental;
-- 5. What is the shortest and longest rental period?
select min(rental_duration) as min_rental_duration from film;
select max(rental_duration) as max_rental_duration from film;
-- or 
select min(timediff(convert(return_date, datetime), convert(rental_date, datetime))) as shortest_rental, 
	max(timediff(convert(return_date, datetime), convert(rental_date, datetime))) as longest_rental
from rental;
-- 6. What are the shortest and longest movie duration? Name the values max_duration and min_duration.
select min(length) as min_duration from film;
select max(length) as max_duration from film;
-- 7. What's the average movie duration?
select ceiling(avg(length)) as avg_movie_duration from film;
-- 8. What's the average movie duration expressed in format (hours, minutes)?
select sec_to_time(round(avg(length)*60)) as avg_duration
from film;
-- 9. How many movies longer than 3 hours?
select * from film
where length > 180;
-- 10. Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
select concat(upper(substr(first_name,1,1)), lower(substr(first_name,2)), ' ', last_name, ' - ', (lower(email))) as IDs from customer;
-- 11. What's the length of the longest film title?
select max(length(title)) as longest_title
from film;