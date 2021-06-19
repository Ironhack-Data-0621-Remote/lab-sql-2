use sakila;

-- 1. Select all the actors with the first name ‘Scarlett’.
select * from actor
where first_name = "Scarlett";

-- 2. Select all the actors with the last name ‘Johansson’.
select * from actor
where last_name = "Johansson";

-- 3. How many films (movies) are available for rent? (Total amount of movies)
select count(rental_id) from rental
where return_date is not null;

-- 4. How many films have been rented?
select count(rental_id) from rental
where return_date is null;

-- 5. What is the shortest and longest rental period?
select max(datediff(return_date, rental_date)) as max_rental_period, min(datediff(return_date, rental_date)) as min_rental_period
from rental
where return_date is not null;

-- 6. What are the shortest and longest movie duration? Name the values max_duration and min_duration.
select max(film.length) as max_duration, min(film.length) as min_duration
from film;

-- 7. What's the average movie duration?
select round(avg(film.length)) as avg_duration
from film;

-- 8. What's the average movie duration expressed in format (hours, minutes)?
select convert(avg(film.length), time)
from film;

-- 9. How many movies longer than 3 hours?
select count(film.length)
from film
where film.length > 180;

-- 10. Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
select *, lower(email) as correct_email_format 
from customer;

-- 11. What's the length of the longest film title?
select max(length(title)) 
from film;
