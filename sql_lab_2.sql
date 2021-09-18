#SQL LAB 2

#1
select * from sakila.actor;
#2
select * from sakila.actor where first_name in ('Scarlett');
#3
select * from sakila.actor where last_name in ('Johansson');
#4
select count(*) from sakila.rental;


#5
SELECT * FROM sakila.film;
select min(rental_duration) from sakila.film;
select max(rental_duration) from sakila.film;




#7 & 8
select (avg(length)) from sakila.film;
select floor(avg(length)/60) as hours, ceiling(avg(length)%60) as minutes from sakila.film;

select (avg(length)) from sakila.film;
select floor(avg(length)/60) as hours, ceiling(avg(length)%60) as minutes from sakila.film;

select concat(floor(avg(length)/60) ," hours and " , ceiling(avg(length)%60), " minutes " ) as Duration
From sakila.film;

#9
SELECT count(*) FROM sakila.film
where length > 180;

#11
select max(length) from sakila.film;

