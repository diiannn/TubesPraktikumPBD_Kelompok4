
CREATE VIEW viewstatistikjeniskelamin AS
SELECT 
    pasien.jenis_kelamin,
    COUNT(pasien.id_pasien) AS jumlah_pasien
FROM 
    pasien
GROUP BY 
    pasien.jenis_kelamin;