-------Pendaftaran Pasien-------
CREATE PROCEDURE PP_PendaftaranPasien
    @waliID bigint,
    @nama varchar(50),
    @jenis_kelamin char(1),
    @usia int,
    @alamat varchar(75),
    @tgl date,
    @notlpn varchar(75),
    @golonganDarah char(3),
    @status varchar(15),
    @nik char(16)
AS
BEGIN
        INSERT INTO Pasien (id_wali_pasien, nama_pasien, jenis_kelamin, 
            usia_pasien, alamat_pasien, tanggal_lahir, no_telepon_pasien, 
            golongan_darah, status_pasien, nik_pasien)
        VALUES (@waliID, @nama, @jenis_kelamin, @usia, @alamat, 
            @tgl, @notlpn, @golonganDarah, @status, @nik);
        PRINT 'Data telah berhasil dimasukkan.' 
END;
EXEC PP_PendaftaranPasien
    @waliID = 1,      
    @nama = 'Jane Doe',        
    @jenis_kelamin = 'P',       
    @usia = 25,                 
    @alamat = 'Jl. Merdeka No. 12, Jakarta', 
    @tgl = '1999-10-10',        -
    @notlpn = '081234567890',   
    @golonganDarah = 'O',      
    @status = 'rawat inap',          
    @nik = '1234567890123456';  
SELECT * FROM Pasien WHERE nama_pasien = 'Jane Doe';

select * from Pasien where id_wali_pasien = 1;