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
datum datetime,
lokacija varchar (100) not null,
vozac int not null references vozaci(sifra)
);

create table putnici(
sifra int not null primary key identity(1,1),
ime varchar (50),
prezime varchar (50),
kontaktbroj varchar (50) not null,
voznja int not null references voznje(sifra),
);

insert into vozaci(ime, prezime)
values
('Ivan', 'Horvat'),
('Marko', 'Kovačević'),
('Petar', 'Barišić'),
('Luka', 'Vuković'),
('Ante', 'Marić'),
('Tomislav', 'Jurić'),
('Nikola', 'Perić'),
('Dario', 'Bošnjak'),
('Karlo', 'Šimić'),
('Josip', 'Radić');

insert into vozila(registracija, marka, vozac)
values
('OS1234AB', 'Volkswagen Golf', 1),
('OS5678CD', 'Renault Clio', 2),
('OS1122EF', 'Opel Astra', 3),
('OS3344GH', 'Peugeot 208', 4),
('OS5566IJ', 'Fiat Punto', 5),
('OS7788KL', 'Ford Focus', 6),
('OS9900MN', 'Toyota Corolla', 7),
('OS1111OP', 'Škoda Octavia', 8),
('OS2222QR', 'Hyundai i30', 9),
('OS3333ST', 'Citroen C3', 10);

insert into voznje(datum, lokacija, vozac)
values
('2025-01-01 08:30:00', 'Antunovac', 1),
('2025-02-02 10:15:00', 'Čepin', 2),
('2025-03-05 12:00:00', 'Tenja', 3),
('2025-04-12 09:00:00', 'Bilje', 4),
('2025-05-02 11:30:00', 'Darda', 5),
('2025-07-03 07:45:00', 'Vuka', 6),
('2025-08-10 18:15:00', 'Đakovo', 7),
('2025-09-09 22:00:00', 'Višnjevac', 8),
('2025-10-04 14:00:00', 'Kopačevo', 9),
('2025-11-05 20:00:00', 'Osijek - Jug II', 10);

insert into putnici(ime, prezime, kontaktbroj, voznja)
values
('Ana', 'Kovač', '0911234567', 1),
('Ivan', 'Perić', '0927654321', 2),
('Lana', 'Jurić', '0951122334', 3),
('Marko', 'Barišić', '0989988776', 4),
('Petra', 'Novak', '0913344556', 5),
('Toni', 'Horvat', '0925566778', 6),
('Mia', 'Šimić', '0956677889', 7),
('Nikola', 'Bošnjak', '0917788990', 8),
('Lucija', 'Radić', '0981234567', 9),
('Domagoj', 'Vuković', '0923344556', 10);

