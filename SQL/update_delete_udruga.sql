use udrugazazivotinje;

select * from osobe where sifra=230;

update osobe 
set ime ='Mrav'
where sifra=231;

update osobe
set prezime ='Koška'
where sifra=224;

update osobe
set pozicija ='nezaposlen'
where sifra=226;

select * from prostori;

update prostori
set naziv ='zatvor',
vrsta ='kavez-kazna'
where sifra=120;

select * from sticenici;

update sticenici
set ime ='Leptir',
vrsta ='modri leptir',
spol='transvestit',
osoba=233,
prostor=115
where sifra = 80;


select * from osobe;

delete sticenici where sifra = 80;