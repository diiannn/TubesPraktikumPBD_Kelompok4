-------Tambah Dokter-------
CREATE PROCEDURE PP_TambahDokter
    @spesialisID INT,
    @nama VARCHAR(50),
    @gender CHAR(1),
    @notlpn VARCHAR(75),
    @alamat VARCHAR(75),
    @jadwalPraktek DATE
AS
BEGIN
    -- Menyisipkan data ke dalam tabel Dokter
    INSERT INTO Dokter (id_spesialis, nama_dokter, jenis_kelamin, 
        no_telepon_dokter, alamat_dokter, jadwal_praktek)
    VALUES ( @spesialisID, @nama, @gender, 
        @notlpn, @alamat, @jadwalPraktek);
    PRINT 'Data dokter berhasil dimasukkan.';
END;
EXEC PP_TambahDokter 
    @spesialisID = 1, 
    @nama = 'Dr. Jaiden', 
    @gender = 'L', 
    @notlpn = '081234567892', 
    @alamat = 'Jl. Merdeka No. 13, Jakarta', 
    @jadwalPraktek = '2025-05-06';

SELECT * FROM Dokter WHERE nama_dokter = 'Dr. Jaiden';
select* from Dokter where id_spesialis = 1;