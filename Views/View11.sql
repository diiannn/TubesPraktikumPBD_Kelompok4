
CREATE VIEW PasienPenyakitKronis AS
SELECT 
    Pasien.id_pasien,
    Pasien.nama_pasien,
    Pasien.jenis_kelamin,
    Pasien.alamat_pasien,
    Pasien.no_telepon_pasien,
    Rekam_Medis.diagnosis,
    Wali_Pasien.nama_wali_pasien,
    Wali_Pasien.no_tlp_wali
FROM Pasien
JOIN Rekam_Medis ON Pasien.id_pasien = Rekam_Medis.id_pasien
JOIN Wali_Pasien ON Pasien.id_wali_pasien = Wali_Pasien.id_wali_pasien
WHERE Rekam_Medis.diagnosis LIKE '%Ginjal%' 
   OR Rekam_Medis.diagnosis LIKE '%Saraf%' 
   OR Rekam_Medis.diagnosis LIKE '%Jantung%' 
   OR Rekam_Medis.diagnosis LIKE '%Paru%' 
   OR Rekam_Medis.diagnosis LIKE '%Tinggi%'
   OR Rekam_Medis.diagnosis LIKE '%Apen%';