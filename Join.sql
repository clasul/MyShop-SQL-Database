-----------------------------------------------------------------
select
	vorname,
	nachname,
	strasse,
	plz,
	ort
from
	kunde
		join plz on plz_id = plz.id
;

-----------------------------------------------------------------
select
	kategorie,
	bezeichnung,
	preis
from
	produkt
		join kategorie on kategorie_id = kategorie.id
;

-----------------------------------------------------------------
select
	vorname,
	nachname,
	strasse,
	plz,
	ort,
	eingang,
	geliefert
from
	plz
		join kunde on plz_id = plz.id
		join bestellung on kunde_id = kunde.id
;
-----------------------------------------------------------------
select
	email,
	eingang,
	bezeichnung,
	produkt_bestellung.preis,
	anzahl,
	produkt_bestellung.preis * anzahl
from
	kunde
		join bestellung on kunde_id = kunde.id
		join produkt_bestellung on bestellung_id = bestellung.id
		join produkt on produkt_id = produkt.id
;

-----------------------------------------------------------------
select
	kategorie,
	count(*)
from
	kategorie
		join produkt on kategorie_id = kategorie.id
group by
	kategorie
;
	
-----------------------------------------------------------------
select
	vorname,
	nachname,
	count(*)
from
	kunde
		join bestellung on kunde_id = kunde.id
group by
	kunde.id
;

-----------------------------------------------------------------
update
	produkt
		join kategorie on kategorie_id = kategorie.id
set
	preis = preis * 1.1
where
	kategorie = 'Salate'
;

-----------------------------------------------------------------
delete
	bestellung
from
	bestellung
		join kunde on kunde_id = kunde.id
		join plz on plz_id = plz.id
where
	plz = 8051
;