use master;
go
drop database if exists analiza_tla;
go
create database analiza_tla;
go
use analiza_tla;

create table lokacije(
sifra int not null primary key identity(1,1),
mjestouzorkovanja varchar (100) not null
);

create table uzorcitla(
sifra int not null primary key identity (1,1),
masauzorka decimal (18,2) not null,
vrstatla varchar (50) not null,
datum datetime,
lokacija int not null references lokacije(sifra)
);


create table analiticari(
sifra int not null primary key identity (1,1),
ime varchar (20) not null,
prezime varchar (20) not null,
kontakt varchar (50) not null,
strucnasprema varchar (100)
);

create table analize(
sifra int not null primary key identity(1,1),
datum datetime,
uzoraktla int not null references uzorcitla(sifra),
analiticar int not null references analiticari(sifra),
rezultatanalize decimal (18,2) not null
);


insert into lokacije (mjestouzorkovanja)
values
('Osijek'),
('Vinkovci'),
('Našice'),
('Đakovo'),
('Slavonski Brod'),
('Vukovar'),
('Ilok'),
('Valpovo'),
('Beli Manastir'),
('Županja');

insert into uzorcitla(masauzorka, vrstatla, datum, lokacija)
values
(2.50, 'Glina', '2025-04-01', 1),
(3.10, 'Pjeskovito', '2025-04-02', 2),
(1.85, 'Ilovasta', '2025-04-05', 3),
(2.00, 'Kamenito', '2025-04-10', 4),
(2.75, 'Crnica', '2025-04-12', 5),
(3.20, 'Humusna', '2025-04-15', 6),
(2.10, 'Smeđa tla', '2025-04-18', 7),
(1.95, 'Pjeskovita glina','2025-04-20', 8),
(2.30, 'Siva tla', '2025-04-22', 9),
(2.80, 'Crnica','2025-04-25', 10);

insert into analiticari(ime, prezime, kontakt, strucnasprema)
values
('Ana', 'Kovačević', 'ana.kovacevic@email.com', 'Magistar agronomije'),
('Ivan', 'Horvat', 'ivan.horvat@email.com', 'Diplomirani inženjer kemije'),
('Petra', 'Marić', 'petra.maric@email.com', 'Magistar biologije'),
('Marko', 'Novak',  'marko.novak@email.com', 'Kemijski tehničar'),
('Lucija', 'Babić', 'lucija.babic@email.com', 'Poljoprivredni tehničar'),
('Filip', 'Jurić', 'filip.juric@email.com', 'Diplomirani inženjer agronomije'),
('Matea', 'Grgić', 'matea.grgic@email.com', 'Magistar kemije'),
('Tomislav', 'Perić', 'tomislav.peric@email.com', 'Poljoprivredni tehničar'),
('Ema', 'Tomić', 'ema.tomic@email.com', 'Agronomski tehničar'),
('Dario', 'Knežević', 'dario.knezevic@email.com', 'Diplomirani inženjer zaštite okoliša');

insert into analize(datum, analiticar, uzoraktla, rezultatanalize)
values
('2025-04-05', 1, 1, 5.75),
('2025-04-06', 2, 2, 6.20),
('2025-04-08', 3, 3, 5.90),
('2025-04-10', 4, 4, 6.45),
('2025-04-12', 5, 5, 7.10),
('2025-04-15', 6, 6, 6.80),
('2025-04-18', 7, 7, 5.50),
('2025-04-20', 8, 8, 6.25),
('2025-04-23', 9, 9, 7.00),
('2025-04-25', 10, 10, 6.60);