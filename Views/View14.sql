
CREATE VIEW PasienRawatInap AS
SELECT
    p.id_pasien,
    p.nama_pasien,
    p.alamat_pasien AS alamat,
    p.tanggal_lahir,
    p.jenis_kelamin,
    p.status_pasien,
    r.no_ruang
FROM
    Pasien p
JOIN
    Rekam_Medis rm ON p.id_pasien = rm.id_pasien
JOIN
    Poliklinik poli ON rm.id_poli = poli.id_poli
JOIN
    Ruang_RS r ON poli.id_ruang = r.id_ruang
WHERE
    p.status_pasien = 'Rawat Inap';