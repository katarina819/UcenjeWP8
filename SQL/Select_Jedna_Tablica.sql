﻿use edunovawp8;

select * from smjerovi
where sifra=2;

-- minimalna select naredba

select getdate();


-- filtriranje po kolonama (između select i from)
-- * označava sve kolone
-- naziv kolone odvojen ,
-- konstanta
-- izraz
select sifra, naziv, sifra, *, 1, 'Osijek', getdate() from smjerovi;


select ime, prezime from polaznici;

-- slaganje podataka (order by)

select ime, prezime from polaznici order by prezime desc, ime asc;

select ime, prezime from polaznici order by 2 desc, 1;


-- zadatak: Izlistajte nazive grupa

select naziv from grupe;

-- filtriranje redova
-- ide u where dio
-- operatori:
-- uspoređivanja: =, <, >, >=, <= i != (različito - <>)
-- logički operatori: and, or i not


select * from smjerovi
where not (sifra=2 or sifra>3);

-- ostali operatori
-- like (% za bilo koji znak)

select * from polaznici where ime='Barbara';

select * from polaznici where ime like 'B%' and ime like '%a';

select * from polaznici where ime like 'B%a';

-- unijeti polaznika Borna Ungar
insert into polaznici (ime, prezime) values ('Borna','Ungar');

-- operator between
select * from smjerovi where 
datumpokretanja between '2024-01-01' and '2024-12-31';

-- postavite na smjer Web programiranje 
-- da je datum početka 15. rujan 2024.

update smjerovi set datumpokretanja='2024-09-15'
where sifra=1;

-- operator in
-- odaberi sve grupe čiji smjerovi počinju s slovom W
select * from grupe
where smjer in (select sifra from smjerovi where naziv like 'W%');

select * from smjerovi where sifra in (1,3,4);

-- operatori: is null i is not null

select * from smjerovi where cijena is null or cijena=0;

select naziv, cijena from smjerovi where cijena is not null;


-- zamjensko ime kolone: as

select sifra as id, naziv as smjer, 'Osijek' as grad from smjerovi;

-- zamjensko ime tablice
select * from smjerovi a where a.sifra=2;

select * from polaznici;


use knjiznica;

-- koliko u tablici ima redova?
select * from autor; -- ne ići ovako

select count(*) from autor;

-- Ispišite prezimena autora koji se zovu kao i Vi

select prezime from autor where ime='Tomislav';

-- Ispišite sve autore koji su rođeni na dan Vašeg rođenja

-- limitiranje podataka

select top 10 * from autor;

use svastara;


select count(*) from artikli;

-- idete u svatove i kupujete poklon u vrijednost 200 do 300 EUR
-- Koji su to sve artikli koje možete kupiti?

select * from artikli where cijena between 200 and 300
and duginaziv like '%peril%';

select top 10 * from artikli;

update artikli set cijena = cijena / 7.5345;

