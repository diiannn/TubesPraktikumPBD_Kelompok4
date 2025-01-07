-------Update Status Pasien------
CREATE PROCEDURE PP_UpdateStatusPasien
    @ID BIGINT,              
    @statusBaru NVARCHAR(15)     
AS
BEGIN
    -- Memperbarui data pasien berdasarkan ID
    UPDATE Pasien
    SET 
        status_pasien = @statusBaru
    WHERE id_pasien = @ID;
    PRINT 'Data status pasien berhasil diperbarui.';
END;
EXEC PP_UpdateStatusPasien
    @ID = 10, 
    @statusBaru = 'rujukan';
SELECT * FROM Pasien WHERE id_pasien = 10;
DROP PROCEDURE PP_UpdateStatusPasien