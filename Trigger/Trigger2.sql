------TRIGGGERRRR BERHASILLL------
CREATE TRIGGER trg_Update_Tanggal_Kunjungan_Rekam_Medis
ON Rekam_Medis
FOR UPDATE
AS
BEGIN
    DECLARE @id_rekam_medis BIGINT, @tanggal_kunjungan_lama DATE, 
	@tanggal_kunjungan_baru DATE;

    -- Mengambil data lama dan baru
    SELECT 
        @id_rekam_medis = i.id_rekam_medis,
        @tanggal_kunjungan_baru = i.tanggal_kunjungan,
        @tanggal_kunjungan_lama = d.tanggal_kunjungan
    FROM inserted i
    JOIN deleted d ON i.id_rekam_medis = d.id_rekam_medis;

    -- Memeriksa jika tanggal kunjungan berubah
    IF @tanggal_kunjungan_baru <> @tanggal_kunjungan_lama
    BEGIN
        PRINT 'Tanggal kunjungan rekam medis dengan ID ' + CAST(@id_rekam_medis AS VARCHAR) + 
              ' telah berubah dari ' + CAST(@tanggal_kunjungan_lama AS VARCHAR) + 
              ' menjadi ' + CAST(@tanggal_kunjungan_baru AS VARCHAR);
    END
END;

SELECT * FROM Rekam_Medis WHERE id_rekam_medis = 3;
UPDATE Rekam_Medis
SET tanggal_kunjungan = '2025-01-15'  
WHERE id_rekam_medis = 3;  