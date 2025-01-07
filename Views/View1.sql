CREATE VIEW JmlPasienBerdasarkanStatus AS
SELECT status_pasien, COUNT(id_pasien) AS jumlah_pasien
FROM Pasien
GROUP BY status_pasien;