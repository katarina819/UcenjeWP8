select b.naziv as smjer, a.naziv as grupa, a.predavac
from grupe a inner join smjerovi b
on a.smjer=b.sifra;

select * from smjerovi;

select a.naziv as smjer, b.naziv as grupa
from smjerovi a left join
grupe b on b.smjer=a.sifra;

select 
b.naziv as smjer, a.naziv as grupa, a.predavac, d.ime, d.prezime
from grupe a inner join smjerovi b
on a.smjer=b.sifra
inner join clanovi c on a.sifra=c.grupa
inner join polaznici d on c.polaznik=d.sifra
where b.sifra=1;

select c.ime, c.prezime
from grupe a inner join clanovi b
on a.sifra=b.grupa
inner join polaznici c
on c.sifra=b.polaznik
where a.naziv='S1';


use knjiznica;

--naslov katalog - autori - rođeni 1980
--imena autora i datume njihov rodjenja
--najmanji/najveći datum po redu

select b.naslov, a.ime, a.datumrodenja
from autor a inner join katalog b
on a.sifra=b.autor
where a.datumrodenja between '1980-01-01' and '1980-12-31'
order by 3;

--ispiši sve izdavače koji su društvo s ograničenom odgovornošću

select * from izdavac
where naziv like '%d.o.o.%' and aktivan=1 and naziv like '%os%';

--dodajte sebe kao autora (insert)



SELECT TOP 10 * from autor;

insert into autor(sifra,ime, prezime)
values(4, 'Katarina', 'Zivkovic');


--luna je okrutna ljubavnica postavite sebe kao autora

select  * from katalog where naslov like '%luna%'

update katalog set autor=4 where sifra=2938;

--luna u lana...

update katalog set naslov='Lana je okrutna ljubavnica'  
where sifra=2938;

select * from katalog where sifra=2938;

--obrisati lana...

delete katalog  where sifra=2938;

use svastara;

select a.redniBroj, c.naziv, sum(b.cijena * b.kolicina) as ukupno
from primke a inner join ArtikliNaPrimci b
on a.sifra=b.primka
inner join dobavljaci c on a.dobavljac=c.sifra
--where a.redniBroj='1/2008'
group by a.redniBroj, c.naziv
having  sum(b.cijena * b.kolicina)>15000000;




