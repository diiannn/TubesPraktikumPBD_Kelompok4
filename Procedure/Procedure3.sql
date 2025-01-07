-----Ubah Jadwal Shif-----
CREATE PROCEDURE PP_UbahJadwalShif
    @pegawaiID INT,
    @shifBaru NVARCHAR(10)
AS
BEGIN
    -- Memperbarui data pegawai berdasarkan JabatanID
    UPDATE Pegawai
    SET 
        shift_kerja = @shifBaru
    WHERE id_pegawai = @pegawaiID;
    PRINT 'Data pegawai berhasil diperbarui.';
END;
EXEC PP_UbahJadwalShif 
    @PegawaiID = 8,  
    @shifBaru = 'pagi';
SELECT * FROM Pegawai WHERE id_pegawai = 7;