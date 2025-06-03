use trgovina;

select * from racuni;

insert into racuni(broj, kupac)
values
('R-2025-001', 1),
('R-2025-002', 2),
('R-2025-003', 3),
('R-2025-004', 4),
('R-2025-005', 5),
('R-2025-006', 6),
('R-2025-007', 7),
('R-2025-008', 8),
('R-2025-009', 9),
('R-2025-010', 10);

select * from proizvodi;

insert into proizvodi(naziv, cijena)
values
('Kruh bijeli 500g', 1.29),
('Mlijeko 1L', 1.05),
('Jaja 10 kom', 2.49),
('Sir Gauda 250g', 3.75),
('Šunka za pizzu 150g', 2.10),
('Tjestenina špageti 500g', 1.20),
('Riža dugozrnata 1kg', 2.00),
('Čokolada mliječna 100g', 1.09),
('Sok naranča 1.5L', 1.99),
('Ulje suncokretovo 1L', 2.79);

select * from stavke;

insert into stavke(racun, proizvod, kolicina)
values
(1, 3, 2),
(2, 7, 1),
(3, 1, 1),
(4, 5, 3),
(5, 4, 2),
(6, 2, 1),
(7, 6, 2),
(8, 9, 4),
(9, 10, 1),
(10, 8, 2);