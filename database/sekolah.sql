-- Database Sekolah
create database sekolah;


-- Tabel Siswa
DROP TABLE IF EXISTS nilai CASCADE;
DROP TABLE IF EXISTS siswa CASCADE;

CREATE TABLE siswa (
    id SERIAL PRIMARY KEY,
    nama VARCHAR(100) NOT NULL,
    umur INT,
    jurusan VARCHAR(50)
);

-- Table Nilai
CREATE TABLE nilai (
    id SERIAL PRIMARY KEY,
    siswa_id INT REFERENCES siswa(id) ON DELETE CASCADE,
    mata_pelajaran VARCHAR(100),
    nilai INT
);


-- Isi Data
INSERT INTO siswa (nama, umur, jurusan)
VALUES 
('Andi', 16, 'IPA'),
('Budi', 17, 'IPS');

INSERT INTO nilai (siswa_id, mata_pelajaran, nilai)
VALUES 
(1, 'Matematika', 85),
(2, 'Bahasa Inggris', 90);

-- Hasil
SELECT * FROM siswa;
SELECT * FROM nilai;