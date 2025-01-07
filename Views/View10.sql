
CREATE VIEW PasienBelumLunas AS
SELECT 
    p.id_pasien,
    p.nama_pasien,
    p.jenis_kelamin,
    p.alamat_pasien,
    p.no_telepon_pasien,
    t.no_tagihan,
    t.total_tagihan,
    t.status_pembayaran
FROM Pasien p
JOIN Tagihan t ON p.id_pasien = t.id_pasien
WHERE t.status_pembayaran = 'belum lunas';