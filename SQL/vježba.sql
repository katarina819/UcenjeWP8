use edunovawp8;

select * from smjerovi;
where sifra=2;


select  getdate();

select sifra, naziv, sifra, *, 1, 'Osijek', getdate() from smjerovi;

select ime, prezime from polaznici;

select ime, prezime from polaznici order by prezime desc, ime asc;

select ime, prezime from polaznici order by 2 desc, 1;

select naziv from grupe;

select * from smjerovi
where not(sifra=2 or sifra>3);

select * from polaznici where ime='Barbara';

select * from polaznici where ime like 'B%' and ime like '%a';

select * from polaznici where ime like 'B%a';

insert into polaznici(ime, prezime) values('Borna', 'Ungar');

select * from smjerovi where
datumpokretanja between '2024-01-01' and '2024-12-31';

update smjerovi set
datumpokretanja='2024-09-15'
where sifra=1;

select * from grupe 
where smjer in (select sifra from smjerovi where naziv like 'W%');

select * from smjerovi
where sifra in (1,3,4);

select * from smjerovi where cijena is null or cijena=0;

select naziv, cijena from smjerovi where cijena is not null;

select sifra as id, naziv as smjer, 'Osijek' as grad from smjerovi;

select * from smjerovi a where a.sifra=2;

select * from polaznici;

use knjiznica;

select * from autor; --ne ići ovako

select count (*) from autor;

select prezime from autor where ime ='Katarina';

select * from autor where datumrodenja ='2000-05-27';

select top 10 * from autor;








