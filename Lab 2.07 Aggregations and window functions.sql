-- 1
select last_name, count(last_name) as LastName from sakila.actor
group by last_name
having LastName = '1';

-- 2
select last_name, count(last_name) as LastName from sakila.actor
group by last_name
having LastName > '1';

-- 3 
select staff_id, count(staff_id) as Staff from sakila.rental
group by staff_id;

-- 4
select release_year, count(film_id) as NumberFilms from sakila.film
group by release_year;

select distinct release_year from sakila.film;

-- 5
select rental_rate, count(film_id) as NumberFilms from sakila.film
group by rental_rate;

select distinct rental_rate from sakila.film;

-- 6
select rental_rate, round(avg(length),2), count(film_id) as NumberFilms from sakila.film
group by rental_rate;

-- 7

select rating, round(avg(length),2) as duration, count(film_id) as NumberFilms from sakila.film
group by rating
having duration > 120;