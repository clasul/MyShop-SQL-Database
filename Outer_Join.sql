-----------------------------------------------------------------
select
	kategorie,
	bezeichnung
from
	kategorie
		left join produkt on kategorie_id = kategorie.id
;
	
-----------------------------------------------------------------
select
	kategorie,
	count(bezeichnung)
from
	kategorie
		left join produkt on kategorie_id = kategorie.id
group by
	kategorie
;

-----------------------------------------------------------------
select
	vorname,
	nachname,
	count(bestellung.id)
from
	bestellung
		right join kunde on kunde_id = kunde.id
group by
	kunde.id
;

-----------------------------------------------------------------
select
	kategorie
from
	kategorie
		left join produkt on kategorie_id = kategorie.id
where
	produkt_id is null
;

-----------------------------------------------------------------
select
	kategorie,
	count(bezeichnung)
from
	kategorie
		left join produkt on kategorie_id = kategorie.id
group by
	kategorie
having
	count(bezeichnung) = 0
;

-----------------------------------------------------------------
select
	bezeichnung,
	produkt.preis
from
	produkt
		left join produkt_bestellung on produkt_id = produkt.id
where
	bestellung_id is null
;