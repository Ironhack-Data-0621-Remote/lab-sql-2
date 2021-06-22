-- 1. Select all the actors with the first name ‘Scarlett’.
select * from actor
where first_name = 'Scarlett';

-- 2. Select all the actors with the last name ‘Johansson’.
select * from actor
where last_name = 'Johansson';

-- 3. How many films (movies) are available for rent? (Total amount of movies)
select count(distinct film_id) from film;

-- 4. How many films have been rented?
select count(DISTINCT rental_id) from rental;

-- 5. What is the shortest and longest rental period?
select max(rental_duration), min(rental_duration) from film;

-- 6. What are the shortest and longest movie duration? Name the values max_duration and min_duration.
select max(length) as max_duration, min(length) as min_duration from film;

-- 7. What's the average movie duration?
select round(avg(length)) from film;

-- 8. What's the average movie duration expressed in format (hours, minutes)?
-- select length, convert(hour_minute(round(avg(length))) from film;
select sec_to_time(round(avg(length))*60) from film;

-- 9. How many movies longer than 3 hours?
select count(length) from film
where length > 180;

-- 10. Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
select concat(upper(substr(first_name,1,1)), lower(substr(first_name,2)), ' ', last_name, ' - ', (lower(email))) as concat from customer;

-- 11. What's the length of the longest film title?
select title, max(length(title)) as title_length from film;
