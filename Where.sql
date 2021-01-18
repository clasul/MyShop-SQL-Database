-----------------------------------------------------------------
select
	*
from
	produkt
where
	id = 5
;

-----------------------------------------------------------------
select
	*
from
	kunde
where
	id < 3
;
-----------------------------------------------------------------
select
	*
from
	kunde
where
	id < 3 or id > 8
;

-----------------------------------------------------------------
select
	*
from
	kunde
where
	id > 3 and id < 7
;

-----------------------------------------------------------------
select
	*
from
	kunde
where
	id between 3 and 7 -- ACHTUNG BETWEEN: id >= 3 and id <= 7
;

-----------------------------------------------------------------
select
	*
from
	kunde
where
	id = 1 or
	id = 3 or
	id = 5 or
	id = 6
;

select
	*
from
	kunde
where
	id in (1, 3, 5, 6)
;

-----------------------------------------------------------------
select
	*
from
	bestellung
where
	geliefert is null 
;
-----------------------------------------------------------------
select
	avg(preis)
from
	produkt
;

-----------------------------------------------------------------
select
	bezeichnung,
	preis
from
	produkt
where
	preis > 13.04;

-----------------------------------------------------------------
select
	bezeichnung,
	preis
from
	produkt
where
	preis > (select avg(preis) from produkt)
;