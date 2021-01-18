-----------------------------------------------------------------
select
	count(*)
from
	payment
;
-----------------------------------------------------------------
select
	count(*)
from
	actor
where
	first_name = 'Julia'
;

-----------------------------------------------------------------
select
	count(*)
from
	customer
where
	not active
;

-----------------------------------------------------------------
select
	avg(length)
from
	film
where
	rating = 'PG'
;

-----------------------------------------------------------------
select
	rental_id,
	date_format(rental_date, "%d.%m.%Y") Ausleihdatum
from
	rental
where
	return_date is null
order by
	rental_date
;

-----------------------------------------------------------------
select
	avg(datediff(return_date, rental_date))
from
	rental
;

-----------------------------------------------------------------
select distinct
	first_name,
	last_name
from
	actor
where
	first_name like '___'
;

-----------------------------------------------------------------
select distinct
	first_name,
	last_name
from
	actor
where 	
	last_name like 'b%e_'
;

-----------------------------------------------------------------
update
	rental
set
	rental_date = rental_date + interval 12 year,
	return_date = return_date + interval 12 year
;

-- Erstellen Sie eine neue Kategorie namens "Art"
insert into category(name) values ("Art");