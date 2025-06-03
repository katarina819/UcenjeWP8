select count (*) from Artikli;

select distinct artikl from ArtikliNaPrimci order by 1;

select a.*
from Artikli a left join ArtikliNaPrimci b on
a.sifra = b.artikl where b.artikl is null;

delete Artikli where sifra in(90661,79102);


--koliko kupaca živi u Osijeku?

select b.*
from Mjesta a inner join Kupci b
on a.sifra=b.mjesto
where a.naziv='Osijek';