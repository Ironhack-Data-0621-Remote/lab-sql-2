-- lab-sql-2
USE sakila;

select * from sakila.actor
where first_name = 'Scarlett';

select * from sakila.actor
where last_name = 'Johansson';

SELECT sum(film_id)
FROM sakila.film;

SELECT sum(rental_id)
FROM sakila.rental;

select rental_duration as short_rent from sakila.film
order by rental_duration asc
limit 1;

select rental_duration as long_rent from sakila.film
order by rental_duration desc
limit 1;

select min(length) as min_duration from sakila.film;

select max(length) as max_duration from sakila.film;

select avg(length) from sakila.film;

-- What's the average movie duration expressed in format (hours, minutes)?
 -- select date_format(convert(avg(length), '%H- from sakila.film; STUCK

SELECT sum(length)
FROM sakila.film
where length > 90;

-- 10. ???

select max(length) from sakila.film;
