-----------------------------------------------------------------
select
	bezeichnung,
	preis
from
	produkt
where
	preis > (select avg(preis) from produkt)
;

-----------------------------------------------------------------
select
	bezeichnung,
	preis
from
	produkt
where
	preis < (select avg(preis) from produkt)
;

-----------------------------------------------------------------
select
	bezeichnung,
	preis
from
	produkt
where
	preis = (select max(preis) from produkt)
;

-----------------------------------------------------------------
select
	avg(bestellungen)
from
	(
		select
			count(bestellung.id) as bestellungen
		from
			kunde
				left join bestellung on kunde_id = kunde.id
		group by
			kunde.id
	) as temp
;