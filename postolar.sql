use master;
go
drop database if exists postolar;
go
create database postolar;
go
use postolar;

create table korisnici(
sifra int not null primary key identity(1,1),
ime varchar(50),
prezime varchar(50),
email varchar (100) not null 
);

create table obuce(
sifra int not null primary key identity(1,1),
korisnik int not null references korisnici(sifra),
velicina int not null,
tip varchar(50) not null
);


create table segrti(
sifra int not null primary key identity (1,1),
ime varchar(50),
prezime varchar(50)
);

create table popravci(
sifra int not null primary key identity(1,1),
obuca int not null references obuce(sifra),
segrt int not null references segrti(sifra),
datum datetime,
opiskvara varchar(100)
);