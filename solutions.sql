-- 1. Select all the actors with the first name ‘Scarlett’.
select * from actor
limit 10;
select * from actor
where first_name = 'Scarlett';

-- 2. Select all the actors with the last name ‘Johansson’.
select * from actor
where last_name = 'Johansson';

-- 3. How many films (movies) are available for rent? (Total amount of movies)
select film_id from film;

-- 4. How many films have been rented?
select * from inventory;

-- 5. What is the shortest and longest rental period?
-- select * 
-- from film
-- where rental_duration = '3';
-- select *
-- from film 
-- where rental_duration = '7';
select max(rental_duration) from sakila.film;
select min(rental_duration) from sakila.film;

-- 6. What are the shortest and longest movie duration? Name the values max_duration and min_duration.
select max(length) from sakila.film as max_duration;
select min(length) from sakila.film as min_duration; 
-- 7. What's the average movie duration?
select floor(avg(length)) as average_movie_duration from sakila.film;

-- 8. What's the average movie duration expressed in format (hours, minutes)?
select * from film;
-- select date_format(convert(length,date), '%i-%S') from sakila.film;
select title, length, convert(length,date) from sakila.film; -- cast(date as date)
-- i don't now


-- 9. How many movies longer than 3 hours?
select * from film;
select title, film_id, length as duration from film
where length > 184;

-- 10. Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
select * from customer;
select *, lower(first_name), upper(last_name) from sakila.customer;



-- 11. What's the length of the longest film title?
select *, length(title) as 'Symbol_length' from sakila.film
where 'Symbol_length' < 25;



