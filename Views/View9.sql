
CREATE VIEW DataPegawaiJabatan AS
SELECT 
    pegawai.id_pegawai,
    pegawai.nama_pegawai,
    pegawai.tanggal_lahir,
    pegawai.jenis_kelamin,
    pegawai.alamat_pegawai,
    pegawai.no_telepon,
    pegawai.shift_kerja,
    jabatan.nama_jabatan
FROM Pegawai pegawai
JOIN Jabatan jabatan ON pegawai.id_jabatan = jabatan.id_jabatan;
