-----------------------------------------------------------------
select
	sqrt(preis)
from
	produkt
;

-----------------------------------------------------------------
select
	eingang,
	month(eingang),
	monthname(eingang)
from
	bestellung
;

-----------------------------------------------------------------
select
	vorname,
	length(vorname)
from 
	kunde
;

-----------------------------------------------------------------
select
	email,
	substring_index(email, '@', 1) as Account,
	substring_index(email, '@', -1) as Domain
from 
	kunde
;

-----------------------------------------------------------------
select
	vorname,
	nachname,
	concat(left(vorname, 1), left(nachname, 1)) as Initialen
from 
	kunde
;

-----------------------------------------------------------------
select
	preis,
	round(preis / 108 * 8, 2)
from
	produkt
;

-----------------------------------------------------------------
select
	preis,
	round(round(preis / 108 * 8 * 2, 1) / 2, 2)
from
	produkt
;

-----------------------------------------------------------------
	count(*)
from
	produkt
;

-----------------------------------------------------------------
	min(preis),
	max(preis),
	avg(preis)
from
	produkt
;