use master;
go
drop database if exists taksi_sluzba;
go 
create database taksi_sluzba;
go
use taksi_sluzba;


create table vozaci(
sifra int not null primary key identity(1,1),
ime varchar (50) not null,
prezime varchar (50) not null
);

create table vozila(
sifra int not null primary key identity(1,1),
registracija varchar (20) not null,
marka varchar (20) not null,
vozac int unique references vozaci(sifra)
);


create table voznje(
sifra int not null primary key identity(1,1),
datum datetime not null,
vrijeme time not null,
lokacija varchar (100) not null,
vozac int not null references vozaci(sifra)
);

create table putnici(
sifra int not null primary key identity(1,1),
ime varchar (50),
prezime varchar (50),
kontakt varchar (50) not null,
voznja int not null references voznje(sifra),
--voznja int unique references voznje(sifra)
);

