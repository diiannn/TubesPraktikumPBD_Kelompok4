
CREATE VIEW PasienRekammedisTerbaru AS
SELECT
    p.id_pasien,
    p.nama_pasien,
    rm.id_rekam_medis,
    rm.tanggal_kunjungan AS tanggal_rekam_medis,
    rm.diagnosis,
    rm.tindakan
FROM
    Pasien p
JOIN
    Rekam_Medis rm ON p.id_pasien = rm.id_pasien
WHERE
    rm.tanggal_kunjungan = (
        SELECT MAX(tanggal_kunjungan)
        FROM Rekam_Medis
        WHERE id_pasien = p.id_pasien
    );