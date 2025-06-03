use postolar;

select * from korisnici;

insert into korisnici(ime, prezime, email)
values
('Anamarija', 'Marić', 'anamarija.maric@example.com'),
('Josip', 'Horvat', 'josip.horvat@example.com'),
('Ivan', 'Kovač', 'ivan.kovac@example.com'),
('Manuel', 'Babić', 'manuel.babic@example.com'),
('Jasmin', 'Jurić', 'jasmin.juric@example.com'),
('Dora', 'Perić', 'dora.peric@example.com'),
('Selma', 'Novak', 'selma.novak@example.com'),
('Darko', 'Božić', 'darko.bozic@example.com'),
('Monika', 'Radić', 'monika.radic@example.com'),
('Nikolina', 'Vuković', 'nikolina.vukovic@example.com');

select * from obuce;

insert into obuce(korisnik, velicina, tip)
values
(1, 42, 'Tenisice'),
(2, 38, 'Čizme'),
(3, 40, 'Sandale'),
(4, 43, 'Cipele'),
(5, 37, 'Papuče'),
(6, 44, 'Sandale'),
(7, 39, 'Čizme'),
(8, 41, 'Patike'),
(9, 36, 'Papuče'),
(10, 45, 'Cipele');

select * from segrti;

insert into segrti(ime, prezime)
values
('Lea', 'Knežević'),
('David', 'Grgić'),
('Mia', 'Barišić'),
('Luka', 'Kralj'),
('Nina', 'Dominković'),
('Karlo', 'Rogić'),
('Ema', 'Šarić'),
('Petar', 'Majer'),
('Ivana', 'Blagojević'),
('Marko', 'Zadro');

select * from popravci;

insert into popravci(obuca, segrt, datum, opiskvara)
values
(1, 3, '2025-05-10', 'Puknuti đon'),
(2, 5, '2025-05-12', 'Ulazak vode kroz đon'),
(3, 1, '2025-05-13', 'Napuknuta potplata'),
(4, 7, '2025-05-14', 'Puknuta vezica i ogrebotine'),
(5, 2, '2025-05-15', 'Istrošen đon'),
(6, 9, '2025-05-16', 'Napuknuta potplata'),
(7, 6, '2025-05-17', 'Napuknuta potplata'),
(8, 4, '2025-05-18', 'Potrgane vezice'),
(9, 10, '2025-05-19', 'Istrošen đon'),
(10, 8, '2025-05-20', 'Puknuta vezica i ogrebotine');