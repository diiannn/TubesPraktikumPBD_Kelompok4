
CREATE VIEW RiwayatMedisPerPoli AS
SELECT 
    r.id_rekam_medis,
    p.nama_pasien,
    poli.nama_poli,
    r.tanggal_kunjungan,
    r.keluhan,
    r.diagnosis,
    r.tindakan
FROM 
    Rekam_Medis r
JOIN 
    Pasien p ON r.id_pasien = p.id_pasien
JOIN 
    Poliklinik poli ON r.id_poli = poli.id_poli;
