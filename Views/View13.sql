
CREATE VIEW TipeDokter AS
SELECT 
    Dokter.id_dokter, 
    Dokter.nama_dokter, 
    Dokter.jenis_kelamin, 
    Dokter.jadwal_praktek, 
    Dokter.no_telepon_dokter, 
    Dokter.alamat_dokter, 
    Spesialis.nama_spesialis,
    CASE 
        WHEN Dokter.id_spesialis IS NULL THEN 'DOKTER UMUM'
        ELSE 'DOKTER SPESIALIS'
    END AS Tipe_Dokter
FROM 
    Dokter 
LEFT JOIN 
    Spesialis 
ON 
    Dokter.id_spesialis = Spesialis.id_spesialis;