-----------------------------------------------------------------
select
	first_name,
	last_name,
	address,
	sum(amount)
from
	staff
		join address using(address_id)
		join payment using (staff_id)
where
	month(payment_date) = 2 and
	year(payment_date) = 2014
order by
	sum(amount) desc
limit
	1
;

-----------------------------------------------------------------
	address,
	city,
	first_name,
	last_name,
	sum(amount)
from
	store
		join address using(address_id)
		join city using(city_id)
		join staff on manager_staff_id = staff_id
		join payment using(staff_id)
group by
	store.store_id
;

-----------------------------------------------------------------
select
	first_name,
	last_name,
	sum(amount)
from
	customer
		join payment using(customer_id)
group by
	customer_id
order by
	sum(amount) desc
limit
	10
;

-----------------------------------------------------------------
select
	city,
	count(*)
from
	customer,
		join address using(address_id)
		join city using(city_id)
group by
	city_id
having
	count(*) > 1
;

-----------------------------------------------------------------
select
	first_name,
	last_name,
	count(*)
from
	actor
		join film_actor using(actor_id)
group by
	actor_id
order by
	count(*) desc
limit
	1
;
-----------------------------------------------------------------
select
	first_name,
	last_name,
	count(*)
from
	actor
		join film_actor using(actor_id)
group by
	actor_id
having
	count(*) = (
		select
			max(c)
		from
			(
				select
					count(*) c
				from
					actor
						join film_actor using(actor_id)
				group by
					actor_id
			) as temp
	)
;

-----------------------------------------------------------------
select
	title,
	count(*)
from
	film
		join film_actor using(film_id)
group by
	film_id
order by
	count(*) desc
limit
	1
;

-----------------------------------------------------------------
select
	title,
	count(*)
from
	film
		join film_actor using(film_id)
group by
	film_id
having
	count(*) = (
		select
			max(c)
		from
			(
				select
					count(*) c
				from
					film
						join film_actor using(film_id)
				group by
					film_id
			) as temp
	)
;

-----------------------------------------------------------------
select
	avg(c)
from
	(
		select
			count(*) c
		from
			film
				join film_actor using(film_id)
		group by
			film_id
	) as temp
;

-----------------------------------------------------------------
insert into
	film_category (category_id, film_id)
select distinct
	(select category_id from category where name = "Art"),
	film_id
from
	film
		join film_actor using(film_id)
		join actor using(actor_id)
where
	(first_name = "Matthew" and last_name = "Carrey") or
	(first_name = "Jessica" and last_name = "Bailey")
;
	
-----------------------------------------------------------------
set foreign_key_checks = 0;
delete
	rental,
	inventory,
	film_category,
	film_actor,
	film
from
	actor
		join film_actor using(actor_id)
		join film_category using(film_id)
		join inventory using(film_id)
		join film using(film_id)
		join rental using(inventory_id)
where
	first_name = "Warren" and
	last_name = "Nolte"
;
set foreign_key_checks = 1;

-----------------------------------------------------------------
select
	title,
	city,
	count(distinct inventory_id) as Exemplare,
	count(*) as Ausleihen,
	sum(return_date is not null) as Retour,
	sum(return_date is null) as Offen,
	count(distinct inventory_id) - sum(return_date is null) as 'Verfügbar'
from
	film
		join inventory using(film_id)
		join store using(store_id)
		join address using(address_id)
		join city using(city_id)
		join rental using(inventory_id)
where
	title = "CREATURES SHAKESPEARE" and
	city = "Lethbridge"
group by
	film_id,
	store_id
;