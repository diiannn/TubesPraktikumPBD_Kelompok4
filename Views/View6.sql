
CREATE VIEW PasienDanWali AS
SELECT 
    p.id_pasien, 
    p.nama_pasien, 
    p.alamat_pasien, 
    p.no_telepon_pasien, 
    w.nama_wali_pasien, 
    w.hubungan_wali, 
    w.no_tlp_wali
FROM 
    Pasien p
JOIN 
    Wali_Pasien w ON p.id_wali_pasien = w.id_wali_pasien;
