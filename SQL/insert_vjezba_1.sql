use obitelj;

drop table punac;
drop table cura;
drop table sestra;
drop table zena;
drop table muskarac;
drop table mladic;
drop table svekar;
drop table sestra_svekar;

select * from punac;

insert into punac(ogrlica, gustoca, hlace)
values
(2, 1.234567, 'plave traperice'),
(1, 0.987654, 'sive lanene'),
(3, 2.500000, 'crne sportske');

select * from cura;

insert into cura(novcica, gustoca, lipa, ogrlica, bojakose, suknja, punac)
values
(1234.56, 1.234567, 0.12, 1, 'smeđa', 'crna kožna', 1),
(9876.00, 2.000000, 10.56, 2, 'plava', 'crvena s volanima', 2),
(5432.12, 3.141593, 9.87, 3, 'zelena', 'bijela lanena', 3);


select * from sestra;

insert into sestra(introvertno, haljina, maraka, hlace, narukvica)
values
( 1, 'plava haljina', 155.45, 'crne traperice', 1),
( 0, 'crvena s cvjetićima', 200.00, 'bijele lanene', 2),
( 1, 'zelena haljina', 100.10, 'sive sportske', 3);

select * from zena;

insert into zena(treciputa, hlace, kratkamajica, jmbag, bojaociju, haljina, sestra)
values
('2023-05-14 12:30:00', 'traperice', 'bijela', '12345678901', 'smeđa', 'plava', 1),
('2024-01-10 08:15:00', 'crne', 'crvena', '23456789012', 'zelena', 'žuta', 2),
('2025-06-01 18:00:00', 'zelene', 'siva', '34567890123', 'plava', 'crna', 3);

select * from muskarac;

insert into muskarac (bojaociju, hlace, modelnaocala, maraka, zena)
values
('plava', 'traperice', 'Ray-Ban', 230.50, 1),
('zelena', 'crne', 'Oakley', 125.00, 2),
('smeđa', 'zelene', 'Polaroid', 89.99, 3);


select * from mladic;

insert into mladic(suknja, kuna, drugiputa, asocijalno, ekstroventno, dukserica, muskarac)
values
('plava s uzorkom', 123.45, '2024-05-15 14:30:00', 1, 0, 'crna s kapuljačom', 1),
('crna kožna', 999.99, '2024-8-15 14:30:00', 0, 1, 'siva sportska', 2),
('crvena na točkice', 10.50, '2023-11-03 09:00:00', 1, 1, 'bijela pamučna', 3);


select * from svekar;

insert into svekar(bojaociju, prstena, dukserica, lipa, eura, majica)
values
('smeđa', 2, 'siva s kapuljačom', 15.75, 87.35, 'bijela pamučna'),
('plava', 3, 'crna sportska', 8.25, 123.99, 'plava slim fit'),
('zelena', 1, 'roza sportska', 50.00, 55.00, 'siva s printom');


select * from sestra_svekar;

insert into sestra_svekar (sestra, svekar)
values
(1, 1),
(2, 2),
(3, 3);





