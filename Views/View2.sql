
CREATE VIEW  JmlPegawaiperJabatan AS
SELECT 
    Jabatan.nama_jabatan,
    COUNT(Pegawai.id_pegawai) AS jumlah_pegawai
FROM 
    Jabatan
JOIN 
    Pegawai ON Jabatan.id_jabatan = Pegawai.id_jabatan
GROUP BY 
    Jabatan.nama_jabatan;