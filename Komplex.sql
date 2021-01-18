-----------------------------------------------------------------
select
	first_name,
	last_name,
	address,
	city,
	country
from
	customer
		join address using(address_id)
		join city using(city_id)
		join country using(country_id)
;

-----------------------------------------------------------------
select
	first_name,
	last_name
from
	actor
		join film_actor using(actor_id)
		join film using(film_id)
where
	title = "HARRY IDAHO"
;
-----------------------------------------------------------------
select
	name,
	count(film_id)
from
	film
		join film_category using(film_id)
		right join category using(category_id)
group by
	category_id
;

-----------------------------------------------------------------
select
	name,
	count(film_id)
from
	film
		join film_category using(film_id)
		right join category using(category_id)
group by
	category_id
having
	count(film_id) < 60
;

-----------------------------------------------------------------
select
	country,
	count(*)
from
	city
		join country using(country_id)
group by
	country
having
	count(*) > 30
;

-----------------------------------------------------------------
select
	avg(length)
from
	film
		join film_category using(film_id)
		join category using(category_id)
where
	name = "Comedy" and
	rating = "PG-13"
;
		
-----------------------------------------------------------------
select
	sum(amount)
from
	payment
		join rental using(rental_id)
		join inventory using(inventory_id)
		join film using(film_id)
where
	rating = "NC-17"
;
-----------------------------------------------------------------
update
	customer
		join address using(address_id)
		join city using(city_id)
		join rental using(customer_id)
set
	return_date = current_timestamp
where
	first_name = "Tammy" and
	last_name = "Sanders" and
	city = "Changhwa" and
	return_date is null
;

-----------------------------------------------------------------
delete
	film_category
from
	film
		join film_actor using(film_id)
		join actor using(actor_id)
		join film_category using(film_id)
		join category using (category_id)
where
	name = 'Drama' and
	first_name = 'DAN' and
	last_name = 'TORN'
;

-----------------------------------------------------------------
select
	title,
	length
from
	film
where
	length = (select max(length) from film)
;