
CREATE VIEW TotalStokObatPerKategori AS
SELECT
    kategori_obat, 
    SUM(stok_obat) AS TotalStok
FROM Obat
GROUP BY kategori_obat;

select * from  TotalStokObatPerKategori