-----TRIGGER----
CREATE TRIGGER TR_Ruang_Terpakai_After_Pemeriksaan
ON Pemeriksaan
AFTER INSERT
AS
BEGIN
    -- Update status ruang menjadi "terpakai" setelah ada pemeriksaan
    UPDATE Ruang_RS
    SET status_ruang = 'terpakai'
    WHERE id_ruang IN (SELECT id_ruang 
                        FROM Poliklinik 
                        WHERE id_poli IN (SELECT id_poli FROM inserted));
END;


INSERT INTO Pemeriksaan (id_dokter, id_poli, id_rekam_medis, tanggal_pemeriksaan, jenis_pemeriksaan, hasil_pemeriksaan, catatan_pemeriksaan)
VALUES 
(25, 29, 26, '2025-01-06', 'Check-up', 'Normal', 'Tidak ada keluhan');