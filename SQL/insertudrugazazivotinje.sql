use udrugazazivotinje;

DELETE FROM sticenici;
DELETE FROM osobe;
DELETE FROM prostori;


select * from osobe;
SELECT COUNT(*) FROM osobe;

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


select * from prostori;
SELECT COUNT(*) FROM prostori;
insert into prostori (naziv, vrsta) values
('Glavno sklonište', 'Sklonište'),
('Karantena A', 'Karantena'),
('Ured udruge', 'Ured'),
('Ambulanta', 'Ambulanta'),
('Prostor za mačke', 'Privremeni smještaj'),
('Vanjsko igralište', 'Vanjski prostor'),
('Magacin hrane', 'Skladište'),
('Operacijska sala', 'Operacijski prostor'),
('Skladište', 'Skladište'),
('Volonterska soba', 'Edukacijski prostor'),
('Prostor za udomljavanje', 'Prostor za posjetitelje'),
('Privremeni smještaj', 'Privremeni smještaj'),
('Prostor za pse', 'Privremnei smještaj'),
('Prostor za ostale životinje', 'Privremeni smještaj');

select * from sticenici;
SELECT COUNT(*) FROM sticenici;

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

