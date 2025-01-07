
CREATE VIEW PasienDokter AS
SELECT 
    Pasien.id_pasien,
    Pasien.nama_pasien,
    Pasien.jenis_kelamin AS jenis_kelamin_pasien,
    Pasien.usia_pasien,
    Pasien.alamat_pasien,
    Pasien.no_telepon_pasien,
    Dokter.nama_dokter,
    Pemeriksaan.tanggal_pemeriksaan,
    Pemeriksaan.jenis_pemeriksaan,
    Pemeriksaan.hasil_pemeriksaan
FROM 
    Pasien
JOIN 
    Rekam_Medis ON Pasien.id_pasien = Rekam_Medis.id_pasien
JOIN 
    Pemeriksaan ON Rekam_Medis.id_rekam_medis = Pemeriksaan.id_rekam_medis
JOIN 
    Dokter ON Pemeriksaan.id_dokter = Dokter.id_dokter;
