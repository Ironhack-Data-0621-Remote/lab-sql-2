-- 1. Select all the actors with the first name ‘Scarlett’.
use sakila;
select * from actor
 where first_name = 'Scarlett';
-- 2. Select all the actors with the last name ‘Johansson’.
select * from actor
where last_name= 'Johansson';
-- 3. How many films (movies) are available for rent? (Total amount of movies) 1000
select count(*) from film;
-- 4. How many films have been rented? 16044
select count(*) from rental;
-- 5. What is the shortest (3) and longest (7) rental period?
select min(rental_duration) from film;
select max(rental_duration) from film;

-- 6. What are the shortest (46) and longest (185) movie duration? Name the values max_duration and min_duration.
select min(length) from film; 
select max(length) from film;
-- 7. What's the average movie duration? (115.2720)
select avg(length) from film;

-- 8. What's the average movie duration expressed in format (hours, minutes)?
-- minutes
-- 9. How many movies longer than 3 hours? 39
select count(*) from film
where length > 180;
-- 10. Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
select *, lower(email) from customer;

-- 11. What's the length of the longest film title? 27
select max(length(title)) from film