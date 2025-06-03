use master;
go
drop database if exists udrugazazivotinje;
go 
create database udrugazazivotinje;
go
use udrugazazivotinje;

create table osobe(
sifra int not null primary key identity (1,1),
ime varchar(50),
prezime varchar(50),
pozicija varchar(100)
);


create table prostori(
sifra int not null primary key identity(1,1),
naziv varchar(100),
vrsta varchar(100)
);

create table sticenici(
sifra int not null primary key identity (1,1),
ime varchar(50),
vrsta varchar(50),
spol varchar(50),
osoba int not null references osobe(sifra),
prostor int not null references prostori(sifra)
);


--1     -> ovo je šifra koju će dodijeliti baza
insert into osobe (ime, prezime, pozicija)
values 
('Mirela', 'Kloštar', 'predsjednik udruge'),
('Kristina','Begović', 'dopredsjednik'),
('Martina','Lukić', 'tajnik'),
('Marija','Srnić', 'voditelj skloništa'),
('Elizabeta' , 'Modrić', 'veterinar'),
('Karolina','Srna', 'asistent veterinara'),
('Matej','Rajković', 'terenski volonter'),
('Petar' ,'Smutni', 'transportni vozač'),
('Denis' , 'Pažin', 'fotograf životinja'),
('Ivan', 'Ramljak', 'osoba za odnos s javnošću'),
('Miroslav','Nekić', 'administator'),
('Jasmin','Černeli', 'promotor na društvenim mrežama'),
('Josip','Lukić', 'voditelj edukacija i radionica'),
('Grga','Presečan', 'privremeni skrbnik');

insert into prostori (naziv, vrsta) values
('Glavno sklonište', 'Sklonište za štićenike'),
('Karantena A', 'Karantena za štićenike'),
('Ured udruge', 'Ured za osobe'),
('Ambulanta', 'Ambulanta za štićenike'),
('Prostor za mačke', 'Privremeni smještaj za štićenike'),
('Vanjsko igralište', 'Vanjski prostor za štićenike i osobe'),
('Skladište hrane', 'Skladište za čuvanje hrane'),
('Operacijska sala', 'Operacijski prostor za štićenike'),
('Skladište', 'Skladište za ostale stvari'),
('Volonterska soba', 'Edukacijski prostor za osobe'),
('Prostor za udomljavanje', 'Prostor za posjetitelje'),
('Privremeni smještaj', 'Privremeni smještaj za štićenike'),
('Prostor za pse', 'Privremeni smještaj za štićenike'),
('Prostor za ostale životinje', 'Privremeni smještaj za štićenike');


insert into sticenici(ime, vrsta, spol, osoba, prostor) values
('Luna', 'Pas', 'Žensko', 1, 1),
('Max', 'Pas', 'Muško', 2, 2),
('Maca', 'Mačka', 'Žensko', 3, 3),
('Miki', 'Mačka', 'Muško', 4, 4),
('Žućo', 'Pas', 'Muško', 5, 5),
('Cuki', 'Zec', 'Žensko', 6, 6),
('Rex', 'Pas', 'Muško', 7, 7),
('Tigra', 'Mačka', 'Žensko', 8, 8),
('Lola', 'Pas', 'Žensko', 9, 9),
('Bela', 'Mačka', 'Žensko', 10, 10),
('Čupko', 'Pas', 'Muško', 11, 11),
('Lizi', 'Zec', 'Žensko', 12, 12),
('Dora', 'Pas', 'Žensko', 13, 13),
('Floki', 'Pas', 'Muško', 14, 14);