-------Update Jadwal Praktek Dokter -------
CREATE PROCEDURE PP_UpdateJadwalDokter
    @ID BIGINT,               
    @jadwalBaru DATETIME                
AS
BEGIN
    -- Menyisipkan data penugasan dokter ke dalam tabel PenugasanDokter
    UPDATE Dokter
    SET 
        jadwal_praktek = @jadwalBaru
    WHERE id_dokter = @ID;
    PRINT 'Jadwal baru berhasil tersimpan.';
END;
EXEC PP_UpdateJadwalDokter
    @ID = 3, 
    @jadwalBaru = '2025-01-07';
SELECT * FROM Dokter WHERE id_dokter = 3;
Select * from Farmasi