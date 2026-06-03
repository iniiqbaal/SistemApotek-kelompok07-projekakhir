-- create database sistem_apotek;
-- use sistem_apotek;

-- -- 1
-- create table kategori (
-- id_kategori int primary key,
-- nama_kategori varchar (50)
-- );

-- -- 2
-- create table karyawan (
-- id_karyawan int primary key,
-- nama_karyawan varchar(100),
-- shift varchar (20)
-- );

-- -- 3
-- create table supplier (
-- id_supplier int primary key,
-- nama_supplier varchar (100),
-- alamat varchar (200),
-- no_telpon varchar (12)
-- );

-- -- 4
-- create table pelanggan (
-- id_pelanggan int primary key,
-- nama_pelanggan varchar (100),
-- no_hp varchar(12)
-- );

-- -- 5
-- create table obat (
-- id_obat int primary key,
-- nama_obat varchar (100),
-- harga int,
-- stok int,
-- id_kategori int,
-- id_supplier int,
-- foreign key (id_kategori) references kategori (id_kategori),
-- foreign key (id_supplier) references supplier (id_supplier)
-- );

-- -- 6
-- create table penjualan (
-- id_penjualan int primary key,
-- tgl_penjualan date,
-- id_karyawan int,
-- id_pelanggan int,
-- foreign key (id_karyawan) references karyawan (id_karyawan),
-- foreign key (id_pelanggan) references pelanggan (id_pelanggan) 
-- );

-- -- 7 
-- create table detail_penjualan (
-- id_detail int primary key,
-- id_penjualan int,
-- id_obat int,
-- jumlah int,
-- foreign key (id_penjualan) references penjualan (id_penjualan),
-- foreign key (id_obat) references obat (id_obat)
-- );

-- insert into kategori values
-- (1, 'obat bebas'),
-- (2, 'obat bebas terbatas'),
-- (3, 'obat keras'),
-- (4, 'vitamin'),
-- (5, 'alat kesehatan'),
-- (6, 'perawatan bayi'),
-- (7, 'perawatan kulit'),
-- (8, 'obat herbal'),
-- (9, 'obat tetes'),
-- (10, 'sirup anak');

-- insert into karyawan values
-- (1, 'ujang', 'pagi'),
-- (2, 'surya', 'siang'),
-- (3, 'pertiwi', 'malam'),
-- (4, 'ahmad', 'pagi'),
-- (5, 'fauzi', 'siang'),
-- (6, 'nur', 'malam'),
-- (7, 'hazizah', 'pagi'),
-- (8, 'joko', 'siang'),
-- (9, 'dina', 'malam'),
-- (10, 'ayu', 'pagi');

-- insert into supplier values
-- (1, 'pt kimia farma', 'bangkalan', '08111111111'),
-- (2, 'pt kalbe farma', 'surabaya', '08222222222'),
-- (3, 'pt sanbe farma', 'sidoarjo', '08333333333'),
-- (4, 'pt dexa medica', 'surabaya', '08444444444'),
-- (5, 'pt pharos', 'bangkalan', '08555555555'),
-- (6, 'pt tempo scan', 'surabaya', '08666666666'),
-- (7, 'pt soho global', 'malang', '08777777777'),
-- (8, 'pt konimex', 'surabaya', '08888888888'),
-- (9, 'pt meprofarm', 'sidoarjo', '08999999999'),
-- (10, 'pt bio farma', 'surabaya', '08101010101');

-- insert into obat values
-- (1, 'paracetamol 500mg', 5000, 50, 1, 1),
-- (2, 'promag', 8000, 30, 1, 2),
-- (3, 'amoxicillin 500mg', 15000, 40, 3, 3),
-- (4, 'vitamin c ipi', 6000, 100, 4, 4),
-- (5, 'tolak angin cair', 3500, 120, 8, 5),
-- (6, 'insto reguler', 14000, 25, 9, 6),
-- (7, 'sanmol sirup', 20000, 15, 10, 7),
-- (8, 'termometer digital', 35000, 10, 5, 8),
-- (9, 'minyak telon konitu', 18000, 45, 6, 8),
-- (10, 'bedak salicyl', 12000, 20, 7, 9);

-- insert into pelanggan values
-- (1, 'iqbal', '08123456789'),
-- (2, 'lyviana', '08123456780'),
-- (3, 'aisom', '08123456781'),
-- (4, 'zamzami', '08123456782'),
-- (5, 'dandy', '08123456783'),
-- (6, 'reza', '08123456784'),
-- (7, 'nanda', '08123456785'),
-- (8, 'rizky', '08123456786'),
-- (9, 'maya', '08123456787'),
-- (10, 'bayu', '08123456788');

-- insert into penjualan values
-- (1, '2026-06-01', 1, 1),
-- (2, '2026-06-01', 2, 2),
-- (3, '2026-06-02', 3, 3),
-- (4, '2026-06-02', 4, 4),
-- (5, '2026-06-03', 1, 5),
-- (6, '2026-06-03', 2, 6),
-- (7, '2026-06-04', 3, 7),
-- (8, '2026-06-04', 4, 8),
-- (9, '2026-06-05', 1, 9),
-- (10, '2026-06-05', 2, 10);

-- insert into detail_penjualan values
-- (1, 1, 1, 2),
-- (2, 1, 4, 1),
-- (3, 2, 2, 1),
-- (4, 3, 3, 1),
-- (5, 3, 5, 5),
-- (6, 4, 6, 2),
-- (7, 5, 7, 1),
-- (8, 6, 8, 1),
-- (9, 6, 9, 2),
-- (10, 7, 10, 1),
-- (11, 8, 1, 3),
-- (12, 9, 2, 2),
-- (13, 10, 4, 1),
-- (14, 10, 5, 2);

-- mdl 3
-- select nama_obat, harga, stok
-- from obat
-- where harga < 10000;

-- select nama_obat, stok,
-- case
--     when stok > 30 then 'stok aman'
--     when stok >= 15 then 'stok menipis'
--     else 'stok sedikit segera restock!'
-- end as status_stok
-- from obat;

-- mdl4
-- select obat.nama_obat, obat.harga, kategori.nama_kategori 
-- from obat 
-- join kategori on obat.id_kategori = kategori.id_kategori;

-- select penjualan.id_penjualan, penjualan.tgl_penjualan, karyawan.nama_karyawan, pelanggan.nama_pelanggan
-- from penjualan 
-- join karyawan on penjualan.id_karyawan = karyawan.id_karyawan
-- join pelanggan on penjualan.id_pelanggan = pelanggan.id_pelanggan;

-- mdl 5
-- select kategori.nama_kategori, count(obat.id_obat) as jumlah_macam_obat
-- from kategori
-- join obat on kategori.id_kategori = obat.id_kategori
-- group by kategori.nama_kategori;

-- select obat.nama_obat, sum(detail_penjualan.jumlah) as total_terjual
-- from detail_penjualan
-- join obat on detail_penjualan.id_obat = obat.id_obat
-- group by obat.nama_obat
-- having total_terjual > 1;

-- mdl6
-- select nama_obat, harga
-- from obat
-- where harga > (select avg(harga) from obat);

-- create view laporan_penjualan as
-- select p.id_penjualan, p.tgl_penjualan, o.nama_obat, dp.jumlah, o.harga, (dp.jumlah * o.harga) as total_harga
-- from penjualan p
-- join detail_penjualan dp on p.id_penjualan = dp.id_penjualan
-- join obat o on dp.id_obat = o.id_obat;