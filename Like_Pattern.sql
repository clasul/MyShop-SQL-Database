-----------------------------------------------------------------
select
	vorname,
	nachname
from
	kunde
where
	nachname like 'm%'
;

-----------------------------------------------------------------
select
	vorname,
	nachname
from
	kunde
where
	nachname like '%r'
;

-----------------------------------------------------------------
select
	vorname,
	nachname
from
	kunde
where
	nachname like '%e%'
;

-----------------------------------------------------------------
select
	vorname,
	nachname
from
	kunde
where
	vorname like '_____'
;

-----------------------------------------------------------------
select
	vorname,
	nachname
from
	kunde
where
	nachname like '%e_'
;