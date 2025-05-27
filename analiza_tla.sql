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