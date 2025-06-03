use master;
go
drop database if exists obitelj;
go
create database obitelj;
go
use obitelj;

create table punac(
sifra int not null primary key identity(1,1),
ogrlica int,
gustoca decimal(14,9),
hlace varchar(41) not null);

create table cura(
sifra int not null primary key identity(1,1),
novcica decimal(16,5) not null,
gustoca decimal(18,6) not null,
lipa decimal (13,10),
ogrlica int not null,
bojakose varchar(38),
suknja varchar(36),
punac int references punac(sifra)--YES ide
);

create table sestra(
sifra int not null primary key identity(1,1),
introvertno bit,
haljina varchar (31) not null,
maraka decimal (16,6),
hlace varchar(46) not null,
narukvica int not null
);

create table zena(
sifra int not null primary key identity(1,1),
treciputa datetime,
hlace varchar(46),
kratkamajica varchar(31) not null,
jmbag char(11) not null,
bojaociju  varchar(39) not null,
haljina varchar(44),
sestra int not null references sestra(sifra)
);

create table muskarac(
sifra int not null primary key identity(1,1),
bojaociju varchar(50) not null,
hlace varchar(30),
modelnaocala varchar(43),
maraka decimal (14,5) not null,
zena int not null references zena(sifra)
);

create table mladic(
sifra int not null primary key identity(1,1),
suknja varchar(50) not null,
kuna decimal (16,8) not null,
drugiputa datetime,
asocijalno bit,
ekstroventno bit not null,
dukserica varchar(48) not null,
muskarac int references muskarac(sifra) --YES
);

create table svekar(
sifra int not null primary key identity(1,1),
bojaociju varchar(40) not null,
prstena int,
dukserica varchar(41),
lipa decimal (13,8),
eura decimal (12,7),
majica varchar(35)
);

create table sestra_svekar(
sifra int not null primary key identity(1,1),
sestra int not null references sestra (sifra),
svekar int not null references svekar (sifra)
);

insert into punac(ogrlica, gustoca, hlace)
values
(2, 1.234567, 'plave traperice'),
(1, 0.987654, 'sive lanene'),
(3, 2.500000, 'crne sportske');


insert into cura(novcica, gustoca, lipa, ogrlica, bojakose, suknja, punac)
values
(1234.56, 15.77, 0.12, 1, 'smeđa', 'crna kožna', 1),
(9876.00, 15.77, 10.56, 2, 'plava', 'crvena s volanima', 2),
(5432.12, 15.77, 9.87, 3, 'zelena', 'bijela lanena', 3);


insert into sestra(introvertno, haljina, maraka, hlace, narukvica)
values
( 1, 'plava haljina', 155.45, 'crne traperice', 1),
( 0, 'crvena s cvjetićima', 200.00, 'bijele lanene', 2),
( 1, 'zelena haljina', 100.10, 'sive sportske', 3);


insert into zena(treciputa, hlace, kratkamajica, jmbag, bojaociju, haljina, sestra)
values
('2023-05-14 12:30:00', 'traperice', 'bijela', '12345678901', 'smeđa', 'plava', 1),
('2024-01-10 08:15:00', 'crne', 'crvena', '23456789012', 'zelena', 'žuta', 2),
('2025-06-01 18:00:00', 'zelene', 'siva', '34567890123', 'plava', 'crna', 3);


insert into muskarac (bojaociju, hlace, modelnaocala, maraka, zena)
values
('plava', 'traperice', 'Ray-Ban', 230.50, 1),
('zelena', 'crne', 'Oakley', 125.00, 2),
('smeđa', 'zelene', 'Polaroid', 89.99, 3);


insert into mladic(suknja, kuna, drugiputa, asocijalno, ekstroventno, dukserica, muskarac)
values
('plava s uzorkom', 12.45, '2024-05-15 14:30:00', 1, 0, 'crna s kapuljačom', 1),
('crna kožna', 9.99, '2024-8-15 14:30:00', 0, 1, 'siva sportska', 2),
('crvena na točkice', 10.50, '2023-11-03 09:00:00', 1, 1, 'bijela pamučna', 3);


insert into svekar(bojaociju, prstena, dukserica, lipa, eura, majica)
values
('smeđa', 2, 'siva s kapuljačom', 15.75, 87.35, 'bijela pamučna'),
('plava', 3, 'crna sportska', 8.25, 123.99, 'plava slim fit'),
('zelena', 1, 'roza sportska', 50.00, 55.00, 'siva s printom');


insert into sestra_svekar (sestra, svekar)
values
(1, 1),
(2, 2),
(3, 3);
