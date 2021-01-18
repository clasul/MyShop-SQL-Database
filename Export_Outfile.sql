-----------------------------------------------------------------
select
	first_name,
	last_name,
	address,
	postal_code,
	city
from
	customer
		join address using (address_id)
		join city using(city_id)
into outfile
	'c:/_temp/address.csv' 
;

-----------------------------------------------------------------
	first_name,
	last_name,
	address,
	postal_code,
	city
from
	customer
		join address using (address_id)
		join city using(city_id)
into outfile
	'c:/_temp/address-excel.csv'
fields terminated by
	';'
enclosed by
	'"'
;