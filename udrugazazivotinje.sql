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
pozicija varchar(50)
);


create table prostori(
sifra int not null primary key identity(1,1),
naziv varchar(50),
vrsta varchar(50)
);

create table sticenici(
sifra int not null primary key identity (1,1),
ime varchar(50),
vrsta varchar(50),
spol varchar(50),
osoba int not null references osobe(sifra),
prostor int not null references prostori(sifra)
);
