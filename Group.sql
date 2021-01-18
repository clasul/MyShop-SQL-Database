-----------------------------------------------------------------
select
	kategorie_id,
	count(*)
from
	produkt
group by
	kategorie_id
;
-----------------------------------------------------------------
select
	plz_id,
	count(*)
from
	Kunde
group by
	plz_id
;

-----------------------------------------------------------------
select
	kategorie_id,
	max(preis),
	min(preis),
	avg(preis)
from
	produkt
group by
	kategorie_id
;

-----------------------------------------------------------------
select
	avg(preis)
from
	produkt
where 
	kategorie_id = 2
;

-----------------------------------------------------------------
select
	kategorie_id,
	avg(preis)
from
	produkt
group by
	kategorie_id
having
	avg(preis) > 13.04
;

-----------------------------------------------------------------
select
	kategorie_id,
	avg(preis)
from
	produkt
group by
	kategorie_id
having
	avg(preis) > (select avg(preis) from produkt)
;