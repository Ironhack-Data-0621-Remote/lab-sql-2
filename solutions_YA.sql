-- 1. Select all the actors with the first name ‘Scarlett’.
-- A. 2
use sakila;
select first_name from sakila.actor
where first_name = 'SCARLETT';

select * from sakila.actor
where first_name = 'SCARLETT';

-- 2. Select all the actors with the last name ‘Johansson’.
-- A: 3
select last_name from actor
where last_name = 'JOHANSSON';

-- 3. How many films (movies) are available for rent? (Total amount of movies)
-- A:1000
select count(title)
from film;

-- 4. How many films have been rented?
-- A: 16044
select *
from sakila.rental;

select count(rental_id)
from rental;

-- 5. What is the shortest and longest rental period?
-- A. min reantal duration = 3, max rental duration = 7
select min(rental_duration), max(rental_duration) from film;


select *, convert(substring_index(rental_date, ' ', 1), date) as new_rent_date,
convert(substring_index(return_date, ' ', 1), date) as new_return_date
from rental;

-- CHECK AGAIN
select period_diff(convert(substring_index(rental_date, ' ', 1), date) as new_rent_date,
convert(substring_index(return_date, ' ', 1), date) as new_return_date)
from rental;

select *, convert(substring_index(rental_date, ' ', 1), date) as new_rent_date,
convert(substring_index(return_date, ' ', 1), date) as new_return_date,
period_diff(new_rent_date, new_return_date)
from rental;

-- 6. What are the shortest and longest movie duration? Name the values max_duration and min_duration.
-- A: min:46, max:185
select min(length) as min_duration, max(length) as max_duration
from film;


-- 7. What's the average movie duration?
-- A: 115.2720
select avg(length) as average_duration
from film;


-- 8. What's the average movie duration expressed in format (hours, minutes)?

-- initial thought is below
select floor(avg(length)/60) from film;
select avg(length), concat(floor(avg(length)/60), 'h', round(avg(length)%60), 'm') as avg_hrs
from film;

-- solution from classmates in slack
select sec_to_time(round(avg(length))*60) as duration_average from film;

-- 9. How many movies longer than 3 hours?
-- A: 39
select * from film;

select count(*) 
from film
where length > 180
order by title asc;

-- 10. Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
use sakila;

select concat(upper(substr(first_name, 1, 1)), lower(substr(first_name,2))), 
last_name,
lower(email) as new_email from customer;




select *, lower('e-mail') from customer;

select lower(first_name, e-mail)
from customer;


-- 11. What's the length of the longest film title?
-- A: 27

select * from film;

select *, length(title)
from film;

select max(length(title))
from film;

