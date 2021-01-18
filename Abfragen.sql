-----------------------------------------------------------------
select * from produkt;

-----------------------------------------------------------------
select * from kategorie;

-----------------------------------------------------------------
select
	vorname,
	nachname,
	email
from
	kunde
;

-----------------------------------------------------------------
select
	*
from
	bestellung
order by
	eingang
;
	
-----------------------------------------------------------------
select
	*
from
	produkt
order by
	preis desc
;

-----------------------------------------------------------------
select
	*
from
	produkt
order by
	preis desc
limit
	3
;

-----------------------------------------------------------------
select
	*
from
	produkt
order by
	preis
limit
	3
;