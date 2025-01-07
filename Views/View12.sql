
CREATE VIEW V_Tagihan_Resep AS
SELECT 
    Tagihan.no_tagihan,
    Tagihan.tanggal_tagihan,
    Pasien.nama_pasien,
    Resep_Obat.nama_resep,
    Tagihan.jenis_layanan,
    Tagihan.total_tagihan,
    Tagihan.status_pembayaran
FROM Tagihan
JOIN Pasien ON Tagihan.id_pasien = Pasien.id_pasien
JOIN Resep_Obat ON Tagihan.id_resep = Resep_Obat.id_resep;