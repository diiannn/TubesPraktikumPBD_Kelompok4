-- Tabel Jabatan
CREATE TABLE Jabatan (
    id_jabatan INT PRIMARY KEY IDENTITY(1,1),
    nama_jabatan VARCHAR(50) NOT NULL
);

-- Insert Data Tabel Jabatan
	INSERT INTO Jabatan (nama_jabatan) VALUES
		('Komite'),
		('Perawat'),
		('Apoteker'),
		('Administrasi'),
		('Keamanan'),
		('Resepsionis'),
		('Petugas Kebersihan'),
		('Kasir'),
		('Bidan'),
		('Customer Service'),
		('Manajer');



-- Tabel Pegawai
CREATE TABLE Pegawai (
    id_pegawai BIGINT PRIMARY KEY IDENTITY(1,1),
    id_jabatan INT NOT NULL,
    nama_pegawai VARCHAR(50) NOT NULL,
    tanggal_lahir DATE NOT NULL,
    jenis_kelamin CHAR(1) NOT NULL,
    alamat_pegawai VARCHAR(75) NOT NULL,
    no_telepon VARCHAR(15) NOT NULL,
    shift_kerja NVARCHAR(10) NOT NULL CHECK (shift_kerja IN ('pagi', 'siang', 'malam')),
    create_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    update_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_jabatan) REFERENCES Jabatan(id_jabatan)
);

-- Insert Data Tabel Pegawai
	INSERT INTO Pegawai (id_jabatan, nama_pegawai, tanggal_lahir, jenis_kelamin, alamat_pegawai, no_telepon, shift_kerja)
VALUES	(1, 'Angga', '1981-01-01', 'L', 'Jl. Merdeka No. 20', '081234567890', 'malam'),
		(1, 'Neuver', '1990-02-12', 'L', 'Jl. Merdeka No. 11', '081234567890', 'siang'),
		(1, 'Wahyu', '1990-07-04', 'L', 'Jl. Merdeka No. 31', '081234567890', 'pagi'),
		(1, 'Ucup', '1988-01-01', 'L', 'Jl. Merdeka No. 41', '081234567890', 'malam'),
		(1, 'Andi', '1980-01-01', 'L', 'Jl. Merdeka No. 1', '081234567890', 'pagi'),
		(2, 'Siti', '1990-02-02', 'P', 'Jl. Sudirman No. 2', '081234567891', 'siang'),
		(3, 'Budi', '1985-03-03', 'L', 'Jl. Thamrin No. 3', '081234567892', 'malam'),
		(4, 'Rina', '1992-04-04', 'P', 'Jl. Gatot Subroto No. 4', '081234567893', 'pagi'),
		(5, 'Tono', '1988-05-05', 'L', 'Jl. Ahmad Yani No. 5', '081234567894', 'siang'),
		(6, 'Dewi', '1995-06-06', 'P', 'Jl. Sisingamangaraja No. 6', '081234567895', 'malam'),
		(7, 'Agus', '1983-07-07', 'L', 'Jl. Diponegoro No. 7', '081234567896', 'pagi'),
		(8, 'Lina', '1991-08-08', 'P', 'Jl. Imam Bonjol No. 8', '081234567897', 'siang'),
		(9, 'Rudi', '1987-09-09', 'L', 'Jl. HOS Cokroaminoto No. 9', '081234567898', 'malam'),
		(10, 'Maya', '1993-10-10', 'P', 'Jl. Teuku Umar No. 10', '081234567899', 'pagi'),
		(11, 'Dr. Fadli', '1980-11-12', 'L', 'Jl. Mawar 6', '082234567891', 'siang'),
		(2, 'Dr. Maya', '1985-03-18', 'P', 'Jl. Melati 4', '082223344556', 'pagi'),
		(3, 'Rina Sari', '1990-07-25', 'P', 'Jl. Anggrek 9', '082334455667', 'malam'),
		(4, 'Sinta Dewi', '1987-02-28', 'P', 'Jl. Kenanga 11', '082445566778', 'pagi'),
		(5, 'Budi Pratama', '1992-01-05', 'L', 'Jl. Flamboyan 13', '082556677889', 'siang'),
		(6, 'Aulia Syifa', '1995-06-14', 'P', 'Jl. Teratai 8', '082667788990', 'malam'),
		(7, 'Ahmad Dani', '1983-03-05', 'L', 'Jl. Kamboja 3', '082778899001', 'pagi'),
		(8, 'Heri Kurniawan', '1988-08-12', 'L', 'Jl. Dahlia 7', '082889900112', 'siang'),
		(9, 'Nurul Arini', '1993-11-10', 'P', 'Jl. Tulip 10', '082990011223', 'malam'),
		(10, 'Dani Pratama', '1997-12-18', 'L', 'Jl. Cempaka 2', '083001122334', 'pagi'),
		(10, 'Lestari Fitri', '1985-01-12', 'P', 'Jl. Melati 14', '083112345678', 'pagi'),
		(9, 'Arif Wijaya', '1987-02-15', 'L', 'Jl. Dahlia 16', '083223456789', 'siang'),
		(8, 'Rini Wulandari', '1992-03-20', 'P', 'Jl. Tulip 18', '083334567890', 'malam'),
		(7, 'Dedi Kurniawan', '1989-04-10', 'L', 'Jl. Anggrek 19', '083445678901', 'pagi'),
		(6, 'Siti Aminah', '1993-05-30', 'P', 'Jl. Kenanga 20', '083556789012', 'siang'),
		(5, 'Faisal Rahman', '1990-06-12', 'L', 'Jl. Flamboyan 21', '083667890123', 'malam'),
		(4, 'Indah Pertiwi', '1988-07-25', 'P', 'Jl. Mawar 22', '083778901234', 'pagi'),
		(3, 'Ridwan Satria', '1985-08-05', 'L', 'Jl. Melati 23', '083889012345', 'siang'),
		(2, 'Risa Anggraeni', '1991-09-15', 'P', 'Jl. Teratai 24', '083990123456', 'malam'),
		(2, 'Nurul Hidayah', '1983-10-20', 'P', 'Jl. Mawar 25', '084001234567', 'pagi');

-- Tabel Wali_Pasien
CREATE TABLE Wali_Pasien (
    id_wali_pasien BIGINT PRIMARY KEY IDENTITY(1,1),
    nama_wali_pasien VARCHAR(50) NOT NULL,
    no_tlp_wali VARCHAR(15) NOT NULL,
    hubungan_wali VARCHAR(15) NOT NULL
);

-- Insert Data Wali pasien
	INSERT INTO Wali_Pasien (nama_wali_pasien, no_tlp_wali, hubungan_wali) VALUES
		('Ahmad', '081234567800', 'Ayah'),
		('Budi', '081234567801', 'Ibu'),
		('Citra', '081234567802', 'Saudara'),
		('Dewi', '081234567803', 'Saudara'),
		('Eko', '081234567804', 'Ayah'),
		('Fajar', '081234567805', 'Ibu'),
		('Gita', '081234567806', 'Saudara'),
		('Hadi', '081234567807', 'Saudara'),
		('Indra', '081234567808', 'Ayah'),
		('Joseph', '081234567809', 'Ayah'),
		('Slamet Riyadi', '081234123456', 'Ayah'),
		('Tuti Nurhaliza', '081334556677', 'Ibu'),
		('Darmawan', '081445667788', 'Kakak'),
		('Sri Mulyani', '081556778899', 'Bibi'),
		('Bambang Hermawan', '081667889900', 'Paman'),
		('Yuli Astuti', '081778990011', 'Ibu'),
		('Andi Rahman', '081889001122', 'Ayah'),
		('Rini Handayani', '081990112233', 'Saudara'),
		('Supriyadi', '082001223344', 'Kakek'),
		('Fatimah', '082112334455', 'Nenek'),
		('Siti Aminah', '082334123457', 'Ibu'),
		('Samsul Arifin', '082334556678', 'Ayah'),
		('Darmono', '082445667889', 'Paman'),
		('Sri Ayu', '082556778900', 'Bibi'),
		('Bambang Yudhistira', '082667889011', 'Kakek'),
		('Yuni Sari', '082778990122', 'Nenek'),
		('Andi Budi', '082889001233', 'Kakak'),
		('Rini Wulandari', '082990112344', 'Saudara'),
		('Slamet Sudiro', '083001223455', 'Orang Tua'),
		('Fatimah Azzahra', '083112334566', 'Istri');

-- Tabel Pasien
CREATE TABLE Pasien (
    id_pasien BIGINT PRIMARY KEY IDENTITY(1,1),
    id_wali_pasien BIGINT,
    nama_pasien VARCHAR(50) NOT NULL,
    jenis_kelamin CHAR(1) NOT NULL,
    usia_pasien INT NOT NULL,
    alamat_pasien VARCHAR(75) NOT NULL,
    tanggal_lahir DATE NOT NULL,
    no_telepon_pasien VARCHAR(15) NOT NULL,
    golongan_darah CHAR(3) NOT NULL,
    status_pasien NVARCHAR(15) NOT NULL CHECK (status_pasien IN ('rawat jalan', 'rawat inap', 'rujukan' )),
    nik_pasien CHAR(16) NOT NULL,
	create_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    update_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_wali_pasien) REFERENCES Wali_Pasien(id_wali_pasien)
);

-- Insert Data Pasien
	INSERT INTO Pasien (id_wali_pasien, nama_pasien, jenis_kelamin, usia_pasien, alamat_pasien, tanggal_lahir, no_telepon_pasien, golongan_darah, status_pasien, nik_pasien) VALUES
		(1, 'Andi Saputra', 'L', '35', 'Jl. Merpati 1', '1988-02-15', '081223344556', 'O', 'rawat jalan', '3201010201010001'),
		(2, 'Rina Sari', 'P', '29', 'Jl. Elang 2', '1994-07-20', '081334455667', 'A', 'rawat inap', '3201010201020002'),
		(3, 'Budi Santoso', 'L', '40', 'Jl. Rajawali 3', '1983-11-05', '081445566778', 'B', 'rujukan', '3201010201030003'),
		(4, 'Siti Nurhaliza', 'P', '25', 'Jl. Kenari 4', '1998-03-25', '081556677889', 'AB', 'rawat jalan', '3201010201040004'),
		(5, 'Ahmad Fauzi', 'L', '50', 'Jl. Garuda 5', '1973-08-10', '081667788990', 'O', 'rawat inap', '3201010201050005'),
		(6, 'Dewi Ayu', 'P', '31', 'Jl. Cenderawasih 6', '1992-12-11', '081778899001', 'A', 'rujukan', '3201010201060006'),
		(7, 'Slamet Riyadi', 'L', '45', 'Jl. Perkutut 7', '1978-05-30', '081889900112', 'B', 'rawat inap', '3201010201070007'),
		(8, 'Putri Anggraeni', 'P', '37', 'Jl. Jalak 8', '1986-10-25', '081990011223', 'AB', 'rawat jalan', '3201010201080008'),
		(9, 'Nurul Aini', 'P', '27', 'Jl. Kasuari 9', '1996-01-15', '082001122334', 'O', 'rawat inap', '3201010201090009'),
		(10, 'Dani Saputra', 'L', '30', 'Jl. Kutilang 10', '1993-06-18', '082112334455', 'A', 'rujukan', '3201010201100010'),
		(11, 'Ayu', 'P', '25', 'Jl. Merdeka No. 1', '1995-01-01', '081234567810', 'A', 'rawat jalan', '3201010201101210'),
		(12, 'Budi', 'L', '30', 'Jl. Sudirman No. 2', '1990-02-02', '081234567811', 'B', 'rawat inap', '3201010201100311'),
		(13, 'Citra', 'P', '20', 'Jl. Thamrin No. 3', '2000-03-03', '081234567812', 'O', 'rujukan', '3201010201100123'),
		(14, 'Dewi', 'P', '35', 'Jl. Gatot Subroto No. 4', '1985-04-04', '081234567813', 'AB', 'rujukan', '3201010201106610'),
		(15, 'Eko', 'L', '40', 'Jl. Ahmad Yani No. 5', '1980-05-05', '081234567814', 'A', 'rawat inap', '3201010201010211'),
		(16, 'Fajar', 'L', '45', 'Jl. Sisingamangaraja No. 6', '1975-06-06', '081234567815', 'B', 'rujukan', '3201010201011111'),
		(17, 'Gita', 'P', '50', 'Jl. Diponegoro No. 7', '1970-07-07', '081234567816', 'O', 'rawat jalan', '3201010201010421'),
		(18, 'Hadi', 'L', '55', 'Jl. Imam Bonjol No. 8', '1965-08-08', '081234567817', 'AB', 'rawat inap', '3201010201019841'),
		(19, 'Indra', 'L', '60', 'Jl. HOS Cokroaminoto No. 9', '1960-09-09', '081234567818', 'A', 'rujukan', '3201010201010071'),
		(20, 'Joko', 'L', '65', 'Jl. Teuku Umar No. 10', '1955-10-10', '081234567819', 'B', 'rawat jalan', '3201010201010911'),
		(21, 'Andika Putra', 'L', '28', 'Jl. Merpati 11', '1995-01-15', '083223344556', 'A', 'rawat jalan', '3201010202010001'),
		(22, 'Rina Wijaya', 'P', '30', 'Jl. Elang 12', '1993-06-20', '083334455667', 'B', 'rawat inap', '3201010202020002'),
		(23, 'Bambang Satria', 'L', '40', 'Jl. Rajawali 13', '1983-03-05', '083445566778', 'O', 'rawat inap', '3201010202030003'),
		(24, 'Ayu Sari', 'P', '25', 'Jl. Kenari 14', '1998-07-25', '083556677889', 'AB', 'rujukan', '3201010202040004'),
		(25, 'Fajar Susilo', 'L', '35', 'Jl. Garuda 15', '1988-10-10', '083667788990', 'A', 'rujukan', '3201010202050005'),
		(26, 'Dewi Lestari', 'P', '30', 'Jl. Cenderawasih 16', '1993-09-10', '083778899001', 'B', 'rujukan', '3201010202060006'),
		(27, 'Rama Putri', 'P', '31', 'Jl. Perkutut 17', '1992-02-11', '083889900112', 'AB', 'rawat jalan', '3201010202070007'),
		(28, 'Dani Wijaya', 'L', '27', 'Jl. Jalak 18', '1996-11-15', '083990011223', 'O', 'rawat inap', '3201010202080008'),
		(29, 'Nur Hayati', 'P', '37', 'Jl. Kasuari 19', '1986-05-25', '084001122334', 'A', 'rawat jalan', '3201010202090009'),
		(30, 'Andi Saputri', 'L', '50', 'Jl. Kutilang 20', '1973-03-15', '084112334455', 'B', 'rawat inap', '3201010202100010');


-- Tabel Spesialis
CREATE TABLE Spesialis (
    id_spesialis INT PRIMARY KEY IDENTITY(1,1),
    nama_spesialis VARCHAR(70) NULL
);

-- Insert Data Spesialis
	INSERT INTO Spesialis (nama_spesialis) VALUES
		('Penyakit Dalam'),
		('Bedah Umum'),
		('Anak'),
		('Kebidanan dan Kandungan'),
		('Jantung'),
		('Paru'),
		('Mata'),
		('Saraf'),
		('Kulit dan Kelamin'),
		('THT'),
		('Gigi dan Mulut'),
		('Ortopedi'),
		('Psikiatri'),
		('Rehabilitasi Medis'),
		('Usus'),
		('Hematologi'),
		('Onkologi'),
		('Endokrinologi'),
		('Gastroenterologi'),
		('Nefrologi'),	
		('Kardiologi'),
		('Gastroenterologi'),
		('Endokrinologi'),
		('Hematologi'),
		('Nefrologi'),
		('Onkologi'),
		('Geriatri'),
		('Rehabilitasi Medis'),
		('Psikiatri'),
		('Toksikologi');

-- Tabel Ruang_RS
CREATE TABLE Ruang_RS (
    id_ruang INT PRIMARY KEY IDENTITY(1,1),
    no_ruang CHAR(10) NOT NULL,
    tipe_ruang VARCHAR(50) NOT NULL,
    status_ruang NVARCHAR(20) NOT NULL CHECK (status_ruang IN ('tersedia', 'terpakai', 'perbaikan')),
    lokasi_ruang VARCHAR(20) NOT NULL
);

-- Insert Data Ruang_RS
	INSERT INTO Ruang_RS (no_ruang, tipe_ruang, status_ruang, lokasi_ruang) VALUES
		('001', 'Ruang Penyakit Dalam', 'tersedia', 'Lantai 1'),
		('002', 'Ruang Jantung', 'terpakai', 'Lantai 1'),
		('003', 'Ruang Paru', 'tersedia', 'Lantai 1'),
		('004', 'Ruang Mata', 'tersedia', 'Lantai 1'),
		('005', 'Ruang Saraf', 'terpakai', 'Lantai 1'),
		('006', 'Ruang Kulit dan Kelamin', 'tersedia', 'Lantai 1'),
		('007', 'Ruang THT', 'tersedia', 'Lantai 1'),
		('008', 'Ruang Gigi dan Mulut', 'tersedia', 'Lantai 1'),
		('009', 'Ruang Ortopedi', 'terpakai', 'Lantai 1'),
		('010', 'Ruang Psikiatri', 'tersedia', 'Lantai 1'),
		('101', 'Ruang Rehabilitas Medis', 'tersedia', 'Lantai 2'),
		('102', 'Ruang Geriatri', 'terpakai', 'Lantai 2'),
		('103', 'Ruang Hematologi', 'tersedia', 'Lantai 2'),
		('104', 'Ruang Onkologi', 'tersedia', 'Lantai 2'),
		('105', 'Ruang Endokrinologi', 'terpakai', 'Lantai 2'),
		('106', 'Ruang Gastroenterolog', 'tersedia', 'Lantai 2'),
		('107', 'Ruang Nefrologi', 'tersedia', 'Lantai 2'),
		('108', 'Ruang Kardiologi', 'tersedia', 'Lantai 2'),
		('109', 'Ruang Bedah Umum', 'tersedia', 'Lantai 2'),
		('110', 'Ruang Usus', 'tersedia', 'Lantai 2'),
		('201', 'Ruang Toksilogi', 'tersedia', 'Lantai 3'),
		('202', 'Kelas 1', 'terpakai', 'Lantai 3'),
		('203', 'Kelas 1', 'terpakai', 'Lantai 3'),
		('204', 'Kelas 1', 'tersedia', 'Lantai 3'),
		('205', 'Kelas 1', 'tersedia', 'Lantai 3'),
		('206', 'Kelas 2', 'tersedia', 'Lantai 3'),
		('207', 'Kelas 2', 'tersedia', 'Lantai 3'),
		('208', 'Kelas 2', 'terpakai', 'Lantai 3'),
		('209', 'Kelas 2', 'tersedia', 'Lantai 3'),
		('210', 'Kelas 2', 'tersedia', 'Lantai 3');

-- Tabel Dokter
CREATE TABLE Dokter (
    id_dokter BIGINT PRIMARY KEY IDENTITY(1,1),
    id_spesialis INT NULL,
    nama_dokter VARCHAR(50) NOT NULL,
    jenis_kelamin CHAR(1) NOT NULL,
    no_telepon_dokter VARCHAR(15) NOT NULL,
    alamat_dokter VARCHAR(75) NOT NULL,
    jadwal_praktek DATE NOT NULL,
    create_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    update_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_spesialis) REFERENCES Spesialis(id_spesialis)
);

-- Insert Data Dokter
INSERT INTO Dokter (id_spesialis, nama_dokter, jenis_kelamin, no_telepon_dokter, alamat_dokter, jadwal_praktek) VALUES
		(1, 'Dr. Hari Susilo', 'L', '081234567890', 'Jl. Anggrek 1', '2025-01-01'),
		(2, 'Dr. Rani Wijaya', 'P', '081334556677', 'Jl. Melati 2', '2025-01-02'),
		(NULL, 'Dr. Anisa Putri', 'P', '081445667788', 'Jl. Mawar 3', '2025-01-03'),
		(NULL, 'Dr. Budi Hartono', 'L', '081556778899', 'Jl. Kamboja 4', '2025-01-04'),
		(30, 'Dr. Fatimah Zahra', 'P', '081667889900', 'Jl. Dahlia 5', '2025-01-05'),
		(4, 'Dr. Rizky Anwar', 'L', '081778990011', 'Jl. Teratai 6', '2025-01-06'),
		(NULL, 'Dr. Siti Aisyah', 'P', '081889001122', 'Jl. Tulip 7', '2025-01-07'),
		(NULL, 'Dr. Andi Wijaya', 'L', '081990112233', 'Jl. Kenanga 8', '2025-01-08'),
		(5, 'Dr. Nurul Hayati', 'P', '082001223344', 'Jl. Flamboyan 9', '2025-01-09'),
		(NULL, 'Dr. Dani Saputra', 'L', '082112334455', 'Jl. Kenari 10', '2025-01-10'),
		(6, 'Dr. Haryono', 'L', '084223344556', 'Jl. Melati 11', '2025-01-11'),
		(7, 'Dr. Maya Sari', 'P', '084334455667', 'Jl. Mawar 12', '2025-01-12'),
		(8, 'Dr. Rendra Wijaya', 'L', '084445566778', 'Jl. Anggrek 13', '2025-01-13'),
		(9, 'Dr. Andi Fauzi', 'L', '084556677889', 'Jl. Kenanga 14', '2025-01-14'),
		(10, 'Dr. Rina Astuti', 'P', '084667788990', 'Jl. Dahlia 15', '2025-01-15'),
		(NULL, 'Dr. Rizki Putri', 'P', '084778899001', 'Jl. Kamboja 16', '2025-01-16'),
		(NULL, 'Dr. Arif Rahman', 'L', '084889900112', 'Jl. Tulip 17', '2025-01-17'),
		(11, 'Dr. Dewi Sari', 'P', '084990011223', 'Jl. Flamboyan 18', '2025-01-18'),
		(12, 'Dr. Budi Kurniawan', 'L', '085001122334', 'Jl. Teratai 19', '2025-01-19'),
		(13, 'Dr. Lestari Indah', 'P', '085112334455', 'Jl. Cempaka 20', '2025-01-20'),
		(14, 'Dr. Aditya Kusuma', 'L', '085223344556', 'Jl. Melati 26', '2025-01-21'),
		(NULL, 'Dr. Fitri Aulia', 'P', '085334455667', 'Jl. Mawar 27', '2025-01-22'),
		(NULL, 'Dr. Rama Putra', 'L', '085445566778', 'Jl. Anggrek 28', '2025-01-23'),
		(NULL, 'Dr. Siti Lestari', 'P', '085556677889', 'Jl. Kenanga 29', '2025-01-24'),
		(15, 'Dr. Fahri Rahman', 'L', '085667788990', 'Jl. Dahlia 30', '2025-01-25'),
		(16, 'Dr. Indah Maharani', 'P', '085778899001', 'Jl. Kamboja 31', '2025-01-26'),
		(17, 'Dr. Rian Kurniawan', 'L', '085889900112', 'Jl. Tulip 32', '2025-01-27'),
		(18, 'Dr. Wulan Setiawati', 'P', '085990011223', 'Jl. Flamboyan 33', '2025-01-28'),
		(19, 'Dr. Raka Satria', 'L', '086001122334', 'Jl. Teratai 34', '2025-01-29'),
		(20, 'Dr. Anisa Rahayu', 'P', '086112334455', 'Jl. Mawar 35', '2025-01-30');


-- Tabel Obat
CREATE TABLE Obat (
    id_obat BIGINT PRIMARY KEY IDENTITY(1,1),
    nama_obat VARCHAR(20) NOT NULL,
    kategori_obat VARCHAR(10) NOT NULL,
    dosis TEXT NOT NULL,
    harga_obat DECIMAL(10, 2) NOT NULL,
    stok_obat INT
);

-- Insert Data Obat
	INSERT INTO Obat (nama_obat, kategori_obat, dosis, harga_obat, stok_obat) VALUES
		('Paracetamol', 'Analgesik', '500 mg', 1500.00, 200),
		('Ibuprofen', 'Anflamasi', '200 mg', 3000.00, 150),
		('Amoxicillin', 'Antibiotik', '250 mg', 5000.00, 100),
		('Ranitidine', 'Antasida', '150 mg', 4000.00, 80),
		('Cetirizine', 'Antistamin', '10 mg', 2500.00, 120),
		('Vitamin C', 'Suplemen', '500 mg', 2000.00, 300),
		('Losartan', 'Anhiperten', '50 mg', 7000.00, 50),
		('Metformin', 'Andiabetik', '500 mg', 6000.00, 60),
		('Amlodipine', 'Anhiperten', '10 mg', 5000.00, 70),
		('Salbutamol', 'Bronkodila', '2 mg', 3500.00, 90),
		('Antasida', 'Antasida', '10 mg', 2500.00, 300),
		('Omeprazole', 'Antiasam', '20 mg', 4000.00, 100),
		('Simvastatin', 'Ankolest', '40 mg', 3000.00, 150),
		('Paracetamol Syrup', 'Analgesik', '125 mg/5ml', 3500.00, 200),
		('Vitamin D', 'Suplemen', '400 IU', 4500.00, 250),
		('Furosemide', 'Diuretik', '40 mg', 3000.00, 120),
		('Ciprofloxacin', 'Antibiotik', '500 mg', 5000.00, 80),
		('Prednisolone', 'Kortikoste', '5 mg', 4000.00, 100),
		('Ketoconazole', 'Antijamur', '200 mg', 3500.00, 90),
		('Lansoprazole', 'Antiasam', '30 mg', 4000.00, 150),
		('Ibuprofen Syrup', 'Aninflamas', '100 mg/5ml', 4500.00, 120),
		('Amoxicillin Syrup', 'Antibiotik', '250 mg/5ml', 5000.00, 100),
		('Cetirizine Syrup', 'Anhistamin', '10 mg/5ml', 4000.00, 110),
		('Vitamin B Complex', 'Suplemen', '500 mg', 6000.00, 150),
		('Ranitidine Syrup', 'Antasida', '150 mg/5ml', 3000.00, 90),
		('Metformin Syrup', 'Andiabetik', '500 mg/5ml', 8000.00, 70),
		('Losartan Potassium', 'Anhiperten', '50 mg', 7000.00, 60),
		('Amlodipine Syrup', 'Anhiperten', '10 mg/5ml', 9000.00, 50),
		('Salbutamol Syrup', 'Bronkodila', '2 mg/5ml', 4000.00, 130),
		('Ketoprofen', 'Aninflamas', '50 mg', 7500.00, 80);


-- Tabel Poliklinik
CREATE TABLE Poliklinik (
    id_poli INT PRIMARY KEY IDENTITY(1,1),
    id_ruang INT NOT NULL,
    id_dokter BIGINT NOT NULL,
    id_pegawai BIGINT NOT NULL,
    nama_poli VARCHAR(15) NOT NULL,
    FOREIGN KEY (id_ruang) REFERENCES Ruang_RS(id_ruang),
    FOREIGN KEY (id_dokter) REFERENCES Dokter(id_dokter),
    FOREIGN KEY (id_pegawai) REFERENCES Pegawai(id_pegawai)
);

-- Insert Data Poliklink
	INSERT INTO Poliklinik (id_ruang, id_dokter, id_pegawai, nama_poli ) VALUES
		(1, 1, 6, 'Penyakit Dalam'),
		(2, 2, 6, 'Bedah Umum' ),
		(3, 11, 6, 'Paru'),
		(4, 13, 33, 'Saraf'),
		(2, 11, 6, 'Paru'),
		(6, 15, 33, 'Usus'),
		(7, 9, 33, 'Jantung'),
		(8, 12, 33, 'Mata'),
		(9, 14, 34, 'Kulit'),
		(10, 15, 34, 'THT'),
		(11, 18, 34, 'Gigi dan Mulut'),
		(12, 19, 34, 'Ortopedi'),
		(13, 20, 33, 'Psikiatri'),
		(14, 21, 33, 'Rehab Medis'),
		(15, 25, 34, 'Geriatri'),
		(16, 26, 33, 'Hematologi'),
		(17, 27, 34, 'Onkologi'),
		(18, 28, 6, 'Endokrinologi'),
		(19, 29, 6, 'Gastroenterolog'),
		(20, 30, 6, 'Nefrologi'),
		(21, 4, 6, 'Kardiologi'),
		(22, 28, 6, 'Endokrinologi'),
		(23, 27, 6, 'Onkologi'),
		(24, 26, 6, 'Hematologi'),
		(25, 20, 6, 'Psikiatri'),
		(26, 21, 16, 'Rehab Medis'),
		(27, 17, 16, 'Geriatri'),
		(28, 28, 16, 'Nefrologi'),
		(29, 22, 16, 'Gastroenterolog'),
		(30, 5, 16, 'Toksikologi');

-- Tabel Resep_Obat
CREATE TABLE Resep_Obat (
    id_resep BIGINT PRIMARY KEY IDENTITY(1,1),
    id_obat BIGINT NOT NULL,
    nama_resep TEXT NOT NULL,
    tanggal_resep DATE NOT NULL,
    jenis_resep VARCHAR(50) NOT NULL,
    takaran_dosis VARCHAR(50) NOT NULL,
    FOREIGN KEY (id_obat) REFERENCES Obat(id_obat)
);

-- Insert Data Resep_Obat
INSERT INTO Resep_Obat (id_obat, nama_resep, tanggal_resep, jenis_resep, takaran_dosis) VALUES
		(1, 'Demam', '2025-01-01', 'Reguler', '3x1 tablet'),
		(2, 'Infeksi', '2025-01-02', 'Reguler', '2x1 kapsul'),
		(3, 'Asam Lambung', '2025-01-03', 'Reguler', '2x1 tablet'),
		(4, 'Anti nyeri', '2025-01-04', 'Reguler', '3x1 tablet'),
		(5, 'Antihistamin', '2025-01-05', 'Reguler', '2x1 tablet'),
		(6, 'Suplemen', '2025-01-06', 'Reguler', '1x1 tablet'),
		(7, 'Hipertensi', '2025-01-07', 'Reguler', '1x1 tablet'),
		(8, 'Diabetes', '2025-01-08', 'Reguler', '2x1 tablet'),
		(9, 'Bronkodilator', '2025-01-09', 'Reguler', '3x1 tablet'),
		(10, 'Antihipertensi', '2025-01-10', 'Reguler', '1x1 tablet'),
		(11, 'Obat Gigi', '2025-01-11', 'Reguler', '3x1 tablet'),
		(12, 'Relaksan Otot', '2025-01-12', 'Reguler', '2x1 tablet'),
		(13, 'Antidepresan', '2025-01-13', 'Reguler', '1x1 tablet'),
		(14, 'Vitamin dan Suplemen', '2025-01-14', 'Reguler', '2x1 tablet'),
		(15, 'Antihipertensi', '2025-01-15', 'Reguler', '1x1 tablet'),
		(16, 'Antibiotik Luka', '2025-01-16', 'Reguler', '2x1 tablet'),
		(17, 'Obat Tumor', '2025-01-17', 'Reguler', '3x1 tablet'),
		(18, 'Obat Hormon', '2025-01-18', 'Reguler', '1x1 tablet'),
		(19, 'Antasida', '2025-01-19', 'Reguler', '2x1 tablet'),
		(20, 'Obat Ginjal', '2025-01-20', 'Reguler', '3x1 tablet'),
		(21, 'Obat Jantung', '2025-01-21', 'Reguler', '1x1 tablet'),
		(22, 'Obat Hormon', '2025-01-22', 'Reguler', '1x1 tablet'),
		(23, 'Obat Tumor', '2025-01-23', 'Reguler', '2x1 tablet'),
		(24, 'Obat Anemia', '2025-01-24', 'Reguler', '1x1 tablet'),
		(25, 'Antidepresan', '2025-01-25', 'Reguler', '1x1 tablet'),
		(26, 'Obat Cedera', '2025-01-26', 'Reguler', '2x1 tablet'),
		(27, 'Obat Paru', '2025-01-27', 'Reguler', '3x1 tablet'),
		(28, 'Antibiotik Ginjal', '2025-01-28', 'Reguler', '2x1 tablet'),
		(29, 'Antasida', '2025-01-29', 'Reguler', '2x1 tablet'),
		(30, 'Antitoksin', '2025-01-30', 'Reguler', '2x1 tablet');

-- Tabel Rekam_Medis
CREATE TABLE Rekam_Medis (
    id_rekam_medis BIGINT PRIMARY KEY IDENTITY(1,1),
    id_pasien BIGINT NOT NULL,
    id_poli INT NOT NULL,
    id_resep BIGINT NOT NULL,
    no_rekam_medis VARCHAR(35) UNIQUE NOT NULL,
    tanggal_kunjungan DATE NOT NULL,
    keluhan TEXT NOT NULL,
    riwayat_penyakit TEXT NULL,
    diagnosis TEXT NOT NULL,
    tindakan TEXT NOT NULL,
    deskripsi_rm TEXT NOT NULL,
    create_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    update_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_pasien) REFERENCES Pasien(id_pasien),
    FOREIGN KEY (id_poli) REFERENCES Poliklinik(id_poli),
    FOREIGN KEY (id_resep) REFERENCES Resep_Obat(id_resep)
);

-- Insert Data Rekam_Medis
INSERT INTO Rekam_Medis (id_pasien, id_poli, id_resep, no_rekam_medis, tanggal_kunjungan, keluhan, riwayat_penyakit, diagnosis, tindakan, deskripsi_rm) VALUES
		(1, 1, 1, 'RM001', '2025-01-01', 'Demam tinggi', 'Demam berdarah', 'Dengue', 'Rawat inap', 'Observasi di ruang ICU'),
		(2, 2, 2, 'RM002', '2025-01-02', 'Nyeri perut', 'Radang usus', 'Apendisitis', 'Operasi', 'Operasi usus buntu'),
		(3, 3, 3, 'RM003', '2025-01-03', 'Batuk lama', 'Bronkitis', 'Infeksi paru', 'Terapi obat', 'Pemberian antibiotik'),
		(4, 4, 4, 'RM004', '2025-01-04', 'Sakit kepala', 'Migrain', 'Gangguan saraf', 'Konsultasi', 'Pemberian obat penghilang nyeri'),
		(5, 5, 5, 'RM005', '2025-01-05', 'Sesak napas', 'Asma', 'Penyakit paru', 'Nebulizer', 'Pengobatan asma'),
		(6, 6, 6, 'RM006', '2025-01-06', 'Mual muntah', 'Keracunan makanan', 'Gastroenteritis', 'Infus cairan', 'Pemulihan kondisi'),
		(7, 7, 7, 'RM007', '2025-01-07', 'Nyeri dada', 'Angina', 'Penyakit jantung', 'EKG', 'Pemeriksaan lanjutan'),
		(8, 8, 8, 'RM008', '2025-01-08', 'Mata merah', 'Infeksi mata', 'Konjungtivitis', 'Obat tetes', 'Pengobatan lokal'),
		(9, 9, 9, 'RM009', '2025-01-09', 'Ruam kulit', 'Alergi', 'Dermatitis', 'Antihistamin', 'Pemberian salep'),
		(10, 10, 10, 'RM010', '2025-01-10', 'Sakit tenggorokan', 'Radang', 'Infeksi tenggorokan', 'Obat antibiotik', 'Pemberian antibiotik'),
		(11, 11, 11, 'RM011', '2025-01-11', 'Gigi berlubang', 'Tidak ada', 'Karies gigi', 'Penambalan', 'Penambalan gigi depan'),
		(12, 12, 12, 'RM012', '2025-01-12', 'Sakit pinggang', 'Cedera lama', 'HNP', 'Terapi', 'Konsultasi lanjutan'),
		(13, 13, 13, 'RM013', '2025-01-13', 'Cemas berlebihan', 'Tidak ada', 'Gangguan kecemasan', 'Psikoterapi', 'Terapi relaksasi'),
		(14, 14, 14, 'RM014', '2025-01-14', 'Kesulitan berjalan', 'Patah tulang', 'Rehabilitasi', 'Terapi fisik', 'Latihan kekuatan'),
		(15, 15, 15, 'RM015', '2025-01-15', 'Lemah badan', 'Hipertensi', 'Hipertensi lanjut usia', 'Pemberian obat', 'Pemantauan tekanan darah'),
		(16, 16, 16, 'RM016', '2025-01-16', 'Luka sulit sembuh', 'Diabetes', 'Infeksi luka', 'Pembersihan luka', 'Perawatan luka diabetes'),
		(17, 17, 17, 'RM017', '2025-01-17', 'Benjolan pada leher', 'Tidak ada', 'Tumor jinak', 'Biopsi', 'Pemeriksaan lanjutan tumor'),
		(18, 18, 18, 'RM018', '2025-01-18', 'Kelelahan kronis', 'Hipotiroid', 'Gangguan hormonal', 'Pemberian obat', 'Peningkatan hormon tiroid'),
		(19, 19, 19, 'RM019', '2025-01-19', 'Sakit perut', 'Gastritis', 'Infeksi lambung', 'Endoskopi', 'Pemberian antibiotik'),
		(20, 20, 20, 'RM020', '2025-01-20', 'Kencing berdarah', 'Batu ginjal', 'Urolitiasis', 'Penghancuran batu', 'Prosedur ESWL'),
		(21, 21, 21, 'RM021', '2025-01-21', 'Nyeri dada', 'Hipertensi', 'Angina Pektoris', 'EKG', 'Pemeriksaan jantung rutin'),
		(22, 22, 22, 'RM022', '2025-01-22', 'Kelelahan', 'Hipotiroid', 'Gangguan hormonal', 'Pemberian obat', 'Peningkatan hormon tiroid'),
		(23, 23, 23, 'RM023', '2025-01-23', 'Benjolan leher', 'Tidak ada', 'Tumor jinak', 'Biopsi', 'Observasi tumor'),
		(24, 24, 24, 'RM024', '2025-01-24', 'Pucat dan lemah', 'Anemia', 'Kekurangan zat besi', 'Transfusi darah', 'Peningkatan kadar hemoglobin'),
		(25, 25, 25, 'RM025', '2025-01-25', 'Cemas berat', 'Tidak ada', 'Gangguan kecemasan', 'Psikoterapi', 'Konsultasi psikologi'),
		(26, 26, 26, 'RM026', '2025-01-26', 'Sulit berjalan', 'Cedera lama', 'Rehabilitasi', 'Terapi fisik', 'Latihan kekuatan kaki'),
		(27, 27, 27, 'RM027', '2025-01-27', 'Sesak napas', 'Penyakit paru', 'Penyakit paru obstruktif kronis', 'Nebulizer', 'Pemeriksaan lanjutan paru-paru'),
		(28, 28, 28, 'RM028', '2025-01-28', 'Gangguan buang air kecil', 'Infeksi ginjal', 'Pyelonefritis', 'Antibiotik', 'Infeksi ginjal teratasi'),
		(29, 29, 29, 'RM029', '2025-01-29', 'Sakit perut', 'Maag kronis', 'Gastritis erosif', 'Endoskopi', 'Perawatan intensif lambung'),
		(30, 30, 30, 'RM030', '2025-01-30', 'Keracunan', 'Tidak ada', 'Intoksikasi makanan', 'Detoksifikasi', 'Pemberian cairan infus');

-- Tabel Tagihan
CREATE TABLE Tagihan (
    id_tagihan BIGINT PRIMARY KEY IDENTITY(1,1),
    id_pasien BIGINT NOT NULL,
    id_resep BIGINT NOT NULL,
    no_tagihan INT UNIQUE NOT NULL,
    tanggal_tagihan DATE NOT NULL,
    tanggal_masuk DATE NOT NULL,
    tanggal_keluar DATE NOT NULL,
    jenis_layanan VARCHAR (50) NOT NULL,
    rincian_tagihan TEXT NOT NULL,
    total_tagihan DECIMAL(10, 2) NOT NULL,
    status_pembayaran NVARCHAR(20) NOT NULL CHECK (status_pembayaran IN ('lunas', 'belum lunas')),
    create_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    update_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_pasien) REFERENCES Pasien(id_pasien),
    FOREIGN KEY (id_resep) REFERENCES Resep_Obat(id_resep)
);

-- Insert Data Tagihan
INSERT INTO Tagihan (id_pasien, id_resep, no_tagihan, tanggal_tagihan, tanggal_masuk, tanggal_keluar, jenis_layanan, rincian_tagihan, total_tagihan, status_pembayaran) VALUES
		(1, 1, 1001, '2025-01-01', '2025-01-01', '2025-01-02', 'rawat jalan', 'Konsultasi dan obat', 150000.00, 'lunas'),
		(2, 2, 1002, '2025-01-02', '2025-01-02', '2025-01-04', 'rawat inap', 'Operasi dan rawat inap', 500000.00, 'belum lunas'),
		(3, 3, 1003, '2025-01-03', '2025-01-02', '2025-01-02', 'rawat jalan', 'Pemeriksaan dan obat', 120000.00, 'lunas'),
		(4, 4, 1004, '2025-01-04', '2025-01-03', '2025-01-03', 'rawat jalan', 'Konsultasi saraf dan obat', 200000.00, 'lunas'),
		(5, 5, 1005, '2025-01-05', '2025-01-05', '2025-01-07', 'rawat inap', 'Observasi asma', 300000.00, 'belum lunas'),
		(6, 6, 1006, '2025-01-06', '2025-01-06', '2025-01-06', 'rawat jalan', 'Pengobatan keracunan makanan', 250000.00, 'lunas'),
		(7, 7, 1007, '2025-01-07', '2025-01-07', '2025-01-08', 'rawat inap', 'Pemeriksaan jantung', 400000.00, 'belum lunas'),
		(8, 8, 1008, '2025-01-08', '2025-01-08', '2025-01-08', 'rawat jalan', 'Obat tetes mata', 100000.00, 'lunas'),
		(9, 9, 1009, '2025-01-09', '2025-01-08', '2025-01-08', 'rawat jalan', 'Obat salep kulit', 150000.00, 'lunas'),
		(10, 10, 1010, '2025-01-10', '2025-01-08', '2025-01-08', 'rawat jalan', 'Obat antibiotik', 180000.00, 'lunas'),
		(11, 11, 1011, '2025-01-11', '2025-01-09', '2025-01-09', 'rawat jalan', 'Perawatan gigi dan obat', 100000.00, 'lunas'),
		(12, 12, 1012, '2025-01-12', '2025-01-12', '2025-01-14', 'rawat inap', 'Operasi kecil dan rawat inap', 500000.00, 'belum lunas'),
		(13, 13, 1013, '2025-01-13', '2025-01-13', '2025-01-13', 'rawat jalan', 'Psikoterapi dan obat', 200000.00, 'lunas'),
		(14, 14, 1014, '2025-01-14', '2025-01-14', '2025-01-16', 'rawat inap', 'Terapi fisik', 300000.00, 'belum lunas'),
		(15, 15, 1015, '2025-01-15', '2025-01-14', '2025-01-14', 'rawat jalan', 'Konsultasi lansia dan obat', 150000.00, 'lunas'),
		(16, 16, 1016, '2025-01-16', '2025-01-16', '2025-01-18', 'rawat inap', 'Perawatan luka diabetes', 400000.00, 'belum lunas'),
		(17, 17, 1017, '2025-01-17', '2025-01-16', '2025-01-16', 'rawat jalan', 'Biopsi tumor dan konsultasi', 350000.00, 'lunas'),
		(18, 18, 1018, '2025-01-18', '2025-01-18', '2025-01-18', 'rawat jalan', 'Obat hormon', 200000.00, 'lunas'),
		(19, 19, 1019, '2025-01-19', '2025-01-19', '2025-01-21', 'rawat inap', 'Endoskopi dan pengobatan', 500000.00, 'belum lunas'),
		(20, 20, 1020, '2025-01-20', '2025-01-20', '2025-01-20', 'rawat jalan', 'Prosedur penghancuran batu ginjal', 600000.00, 'lunas'),
		(21, 21, 1021, '2025-01-21', '2025-01-22', '2025-01-22', 'rawat jalan', 'Pemeriksaan jantung dan obat', 300000.00, 'lunas'),
		(22, 22, 1022, '2025-01-22', '2025-01-23', '2025-01-23', 'rawat jalan', 'Pengobatan hormonal', 250000.00, 'lunas'),
		(23, 23, 1023, '2025-01-23', '2025-01-23', '2025-01-24', 'rawat inap', 'Biopsi dan observasi tumor', 450000.00, 'belum lunas'),
		(24, 24, 1024, '2025-01-24', '2025-01-24', '2025-01-24', 'rawat jalan', 'Transfusi darah dan konsultasi', 400000.00, 'lunas'),
		(25, 25, 1025, '2025-01-25', '2025-01-24', '2025-01-24', 'rawat jalan', 'Psikoterapi dan obat', 200000.00, 'lunas'),
		(26, 26, 1026, '2025-01-26', '2025-01-26', '2025-01-27', 'rawat inap', 'Terapi fisik', 500000.00, 'belum lunas'),
		(27, 27, 1027, '2025-01-27', '2025-01-28', '2025-01-28', 'rawat jalan', 'Nebulizer dan pemeriksaan lanjutan', 300000.00, 'lunas'),
		(28, 28, 1028, '2025-01-28', '2025-01-28', '2025-01-30', 'rawat inap', 'Pengobatan infeksi ginjal', 550000.00, 'belum lunas'),
		(29, 29, 1029, '2025-01-29', '2025-01-28', '2025-01-28', 'rawat jalan', 'Endoskopi dan obat lambung', 350000.00, 'lunas'),
		(30, 30, 1030, '2025-01-30', '2025-01-30', '2025-01-30', 'rawat jalan', 'Detoksifikasi dan cairan infus', 250000.00, 'lunas');

-- Tabel Pendaftaran
CREATE TABLE Pendaftaran (
    id_pendaftaran BIGINT PRIMARY KEY IDENTITY(1,1),
    id_pegawai BIGINT NOT NULL,
    id_pasien BIGINT NOT NULL,
    id_poli INT NOT NULL,
    id_rekam_medis BIGINT,
    no_antri INT NOT NULL,
    no_pendaftaran INT NOT NULL,
    tanggal_pendaftaran DATE NOT NULL,
    create_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    update_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_pegawai) REFERENCES Pegawai(id_pegawai),
    FOREIGN KEY (id_pasien) REFERENCES Pasien(id_pasien),
    FOREIGN KEY (id_poli) REFERENCES Poliklinik(id_poli),
    FOREIGN KEY (id_rekam_medis) REFERENCES Rekam_Medis(id_rekam_medis)
);

-- Insert Data Pendaftaran
INSERT INTO Pendaftaran (id_pegawai, id_pasien, id_poli, id_rekam_medis, no_antri, no_pendaftaran, tanggal_pendaftaran) VALUES
		(8, 1, 1, 1, 1, '0001', '2025-01-01',),
		(8, 2, 2, 2, 2, '0002', '2025-01-02',),
		(8, 3, 3, 3, 3, '0003', '2025-01-03',),
		(8, 4, 4, 4, 4, '0004', '2025-01-04',),
		(13, 5, 5, 5, 5, '0005', '2025-01-05',),
		(13, 6, 6, 6, 6, '0006', '2025-01-06',),
		(13, 7, 7, 7, 7, '0007', '2025-01-07',),
		(13, 8, 8, 8, 8, '0008', '2025-01-08',),
		(13, 9, 9, 9, 9, '0009', '2025-01-09',),
		(31, 10, 10, 10, 10, '0010', '2025-01-10',),
		(31, 11, 11, 11, 11, '0011', '2025-01-11',),
		(8, 12, 12, 12, 12, '0012', '2025-01-12', ),
		(8, 13, 13, 13, 13, '0013', '2025-01-13', ),
		(31, 14, 14, 14, 14, '0014', '2025-01-14',),
		(13, 15, 15, 15, 15, '0015', '2025-01-15',),
		(8, 16, 16, 16, 16, '0016', '2025-01-16',),
		(8, 17, 17, 17, 17, '0017', '2025-01-17',),
		(31, 18, 18, 18, 18, '0018', '2025-01-18',),
		(13, 19, 19, 19, 19, '0019', '2025-01-19',),
		(13, 20, 20, 20, 20, '0020', '2025-01-20',),
		(13, 21, 21, 21, 21, '0021', '2025-01-21',),
		(31, 22, 22, 22, 22, '0022', '2025-01-22',),
		(31, 23, 23, 23, 23, '0023', '2025-01-23',),
		(31, 24, 24, 24, 24, '0024', '2025-01-24',),
		(31, 25, 25, 25, 25, '0025', '2025-01-25',),
		(8, 26, 26, 26, 26, '0026', '2025-01-26',),
		(8, 27, 27, 27, 27, '0027', '2025-01-27',),
		(8, 28, 28, 28, 28, '0028', '2025-01-28',),
		(31, 29, 29, 29, 29, '0029', '2025-01-29',),
		(13, 30, 30, 30, 30, '0030', '2025-01-30',);

-- Tabel Farmasi
CREATE TABLE Farmasi (
    id_farmasi INT PRIMARY KEY IDENTITY(1,1),
    id_resep BIGINT NOT NULL,
    id_pegawai BIGINT NOT NULL,
    nama_farmasi CHAR(20) NOT NULL,
    jadwal_pelayanan TIME NOT NULL,
    FOREIGN KEY (id_resep) REFERENCES Resep_Obat(id_resep),
    FOREIGN KEY (id_pegawai) REFERENCES Pegawai(id_pegawai)
);

-- Insert Data Farmasi
		INSERT INTO Farmasi (id_resep, id_pegawai, nama_farmasi, jadwal_pelayanan) VALUES
		(1, 7, 'Apotek Sehat Berkah', '00:00:00'),
		(2, 7, 'Apotek Sehat Berkah', '00:00:00'),
		(3, 7, 'Apotek Sehat Berkah', '00:00:00'),
		(4, 7, 'Apotek Sehat Berkah', '00:00:00'),
		(5, 17, 'Apotek Sehat Berkah', '00:00:00'),
		(6, 17, 'Apotek Sehat Berkah', '00:00:00'),
		(7, 17, 'Apotek Sehat Berkah', '00:00:00'),
		(8, 17, 'Apotek Sehat Berkah', '00:00:00'),
		(9, 32, 'Apotek Sehat Berkah', '00:00:00'),
		(10, 32, 'Apotek Sehat Berkah', '00:00:00'),
		(11, 32, 'Apotek Sehat Berkah', '00:00:00'),
		(12, 32, 'Apotek Sehat Berkah', '00:00:00'),
		(13, 17, 'Apotek Sehat Berkah', '00:00:00'),
		(14, 7, 'Apotek Sehat Berkah', '00:00:00'),
		(15, 17, 'Apotek Sehat Berkah', '00:00:00'),
		(16, 7, 'FApotek Sehat Berkah', '00:00:00'),
		(17, 7, 'Apotek Sehat Berkah', '00:00:00'),
		(18, 32, 'Apotek Sehat Berkah', '00:00:00'),
		(19, 32, 'Apotek Sehat Berkah', '00:00:00'),
		(20, 32, 'Apotek Sehat Berkah', '00:00:00'),
		(21, 7, 'Apotek Sehat Berkah', '00:00:00'),
		(22, 17, 'Apotek Sehat Berkah', '00:00:00'),
		(23, 17, 'Apotek Sehat Berkah', '00:00:00'),
		(24, 17, 'Apotek Sehat Berkah', '00:00:00'),
		(25, 7, 'Apotek Sehat Berkah', '00:00:00'),
		(26, 32, 'Apotek Sehat Berkah', '00:00:00'),
		(27, 32, 'Apotek Sehat Berkah', '00:00:00'),
		(28, 32, 'Apotek Sehat Berkah', '00:00:00'),
		(29, 32, 'Apotek Sehat Berkah', '00:00:00'),
		(30, 32, 'Apotek Sehat Berkah', '00:00:00');

-- Tabel Pemeriksaan
CREATE TABLE Pemeriksaan (
    id_pemeriksaan BIGINT PRIMARY KEY IDENTITY(1,1),
    id_dokter BIGINT NOT NULL,
    id_poli INT NOT NULL,
    id_rekam_medis BIGINT NOT NULL,
    tanggal_pemeriksaan DATE NOT NULL,
    jenis_pemeriksaan VARCHAR(50) NOT NULL,
    hasil_pemeriksaan TEXT NOT NULL,
    catatan_pemeriksaan TEXT NOT NULL,
    create_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    update_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_dokter) REFERENCES Dokter(id_dokter),
    FOREIGN KEY (id_poli) REFERENCES Poliklinik(id_poli),
    FOREIGN KEY (id_rekam_medis) REFERENCES Rekam_Medis(id_rekam_medis)
);

-- Insert Data Pemeriksaan
	INSERT INTO Pemeriksaan (id_dokter, id_poli, id_rekam_medis, tanggal_pemeriksaan, jenis_pemeriksaan, hasil_pemeriksaan, catatan_pemeriksaan) VALUES
		(1, 1, 1, '2025-01-01', 'General Checkup', 'Demam', 'Pasien memerlukan istirahat dan obat demam'),
		(2, 2, 2, '2025-01-02', 'Operasi', 'Sukses', 'Pasien dalam masa pemulihan'),
		(3, 3, 3, '2025-01-03', 'Konsultasi', 'Infeksi paru', 'Lanjutan terapi antibiotik'),
		(4, 4, 4, '2025-01-04', 'Konsultasi', 'Migrain', 'Konsultasi berlanjut dengan neurologi'),
		(5, 5, 5, '2025-01-05', 'EKG', 'Normal', 'Tidak ada indikasi masalah jantung'),
		(6, 6, 6, '2025-01-06', 'Tes Lab', 'Keracunan makanan', 'Pemulihan cepat'),
		(7, 7, 7, '2025-01-07', 'Observasi', 'Asma terkendali', 'Perlu kontrol bulanan'),
		(8, 8, 8, '2025-01-08', 'Konsultasi', 'Infeksi mata sembuh', 'Tidak ada komplikasi'),
		(9, 9, 9, '2025-01-09', 'Konsultasi', 'Alergi ringan', 'Salep berhasil mengatasi gejala'),
		(10, 10, 10, '2025-01-10', 'Checkup', 'Infeksi tenggorokan sembuh', 'Pasien sembuh total'),
		(11, 11, 11, '2025-01-11', 'Penambalan Gigi', 'Sukses', 'Pasien tidak merasakan nyeri lagi'),
		(12, 12, 12, '2025-01-12', 'Terapi Fisik', 'Pemulihan baik', 'Pasien direkomendasikan kontrol'),
		(13, 13, 13, '2025-01-13', 'Konsultasi Psikologi', 'Gangguan terkendali', 'Pasien direkomendasikan terapi lanjutan'),
		(14, 14, 14, '2025-01-14', 'Latihan Rehabilitasi', 'Kemajuan positif', 'Pasien direkomendasikan melanjutkan latihan di rumah'),
		(15, 15, 15, '2025-01-15', 'Pemeriksaan Tekanan Darah', 'Tekanan darah stabil', 'Pasien memerlukan pengobatan jangka panjang'),
		(16, 16, 16, '2025-01-16', 'Perawatan Luka', 'Infeksi membaik', 'Pasien disarankan menjaga kebersihan luka'),
		(17, 17, 17, '2025-01-17', 'Pemeriksaan Tumor', 'Tumor jinak', 'Pasien direkomendasikan untuk observasi rutin'),
		(18, 18, 18, '2025-01-18', 'Pemeriksaan Hormon', 'Gangguan hormon stabil', 'Pasien melanjutkan terapi'),
		(19, 19, 19, '2025-01-19', 'Endoskopi Lambung', 'Infeksi ditemukan', 'Pasien diberikan antibiotik'),
		(20, 20, 20, '2025-01-20', 'Prosedur ESWL', 'Batu ginjal berhasil dihancurkan', 'Pasien diminta kontrol 1 bulan ke depan'),
		(21, 21, 21, '2025-01-21', 'EKG', 'Normal', 'Tidak ada indikasi penyakit serius'),
		(22, 22, 22, '2025-01-22', 'Tes Hormon', 'Stabil', 'Pasien disarankan kontrol rutin'),
		(23, 23, 23, '2025-01-23', 'Biopsi', 'Tumor jinak', 'Pengobatan tidak diperlukan'),
		(24, 24, 24, '2025-01-24', 'Tes Darah', 'Anemia membaik', 'Konsultasi lanjutan disarankan'),
		(25, 25, 25, '2025-01-25', 'Konseling Psikiatri', 'Kondisi terkendali', 'Terapi lanjutan diperlukan'),
		(26, 26, 26, '2025-01-26', 'Rehabilitasi Fisik', 'Kemajuan baik', 'Latihan di rumah disarankan'),
		(27, 27, 27, '2025-01-27', 'Spirometri', 'Baik', 'Nebulizer cukup efektif'),
		(28, 28, 28, '2025-01-28', 'Tes Ginjal', 'Infeksi membaik', 'Pasien disarankan banyak minum air'),
		(29, 29, 29, '2025-01-29', 'Endoskopi', 'Lambung iritasi ringan', 'Pengobatan dilanjutkan'),
		(30, 30, 30, '2025-01-30', 'Tes Racun', 'Negatif', 'Detoks berhasil dilakukan');