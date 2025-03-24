-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 24 Mar 2025 pada 04.52
-- Versi server: 8.4.3
-- Versi PHP: 8.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jadwal_pelajaran1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `id_guru` int NOT NULL,
  `nama_guru` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nip` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_general_ci,
  `no_telepon` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`id_guru`, `nama_guru`, `nip`, `alamat`, `no_telepon`) VALUES
(1, 'A.TENRITTE, S.Pd', '12345', 'Alamat A', '0811111111'),
(2, 'Ibrahim Mallombassang, S.Pd', '54321', 'Alamat B', '0811111112'),
(3, 'DRA. WAROYAH, M.Pd', '56789', 'Alamat C', '0811111113'),
(4, 'Moh.Saleh Burhan, S.Pd, M.Pdi', '98765', 'Alamat D', '0811111114'),
(5, 'Dra. Anis Dwi Kartika Wati', '11122', 'Alamat E', '0811111115'),
(6, 'Adrianty. S.Kom', '22333', 'Alamat F', '0811111116'),
(7, 'Muhammad Fajar Shiddiq AD, S.Kom', '33444', 'Alamat G', '0811111117'),
(8, 'Hasnidar, S.Ag', '44555', 'Alamat H', '0811111118'),
(9, 'Andi Asrawati Sut, S.TP, S.Pd', '55666', 'Alamat I', '0811111119'),
(10, 'Andi Muh.Agussalim, S.Pd', '66777', 'Alamat J', '0811111120'),
(11, 'Hasannuddin S.Pd', NULL, NULL, NULL),
(12, 'Aswar S.Pd', NULL, NULL, NULL),
(13, 'Ardiansyah, S.Pd', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal_pelajaran`
--

CREATE TABLE `jadwal_pelajaran` (
  `id_jadwal` int NOT NULL,
  `id_kelas` int DEFAULT NULL,
  `hari` enum('Senin','Selasa','Rabu','Kamis','Jumat') COLLATE utf8mb4_general_ci NOT NULL,
  `id_jam_pelajaran` int DEFAULT NULL,
  `id_mapel` int DEFAULT NULL,
  `id_guru` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jadwal_pelajaran`
--

INSERT INTO `jadwal_pelajaran` (`id_jadwal`, `id_kelas`, `hari`, `id_jam_pelajaran`, `id_mapel`, `id_guru`) VALUES
(1, 1, 'Senin', 11, 1, 1),
(2, 1, 'Senin', 12, 1, 1),
(3, 1, 'Senin', 13, 2, 3),
(4, 1, 'Senin', 14, 2, 3),
(5, 1, 'Senin', 15, 3, 2),
(6, 1, 'Senin', 16, 3, 2),
(7, 1, 'Senin', 17, 3, 2),
(8, 1, 'Senin', 18, 5, 9),
(9, 1, 'Senin', 19, 5, 9),
(10, 1, 'Senin', 20, 5, 9),
(11, 1, 'Senin', 21, 5, 9),
(12, 2, 'Senin', 11, 5, 9),
(13, 2, 'Senin', 12, 5, 9),
(14, 2, 'Senin', 13, 5, 9),
(15, 2, 'Senin', 14, 5, 9),
(16, 2, 'Senin', 14, 1, 1),
(17, 2, 'Senin', 15, 1, 1),
(18, 2, 'Senin', 17, 2, 1),
(19, 2, 'Senin', 18, 2, 3),
(20, 2, 'Senin', 19, 3, 2),
(21, 2, 'Senin', 20, 3, 2),
(22, 2, 'Senin', 21, 3, 2),
(23, 1, 'Selasa', 11, 1, 1),
(24, 1, 'Selasa', 12, 2, 1),
(25, 1, 'Selasa', 13, 3, 2),
(26, 1, 'Selasa', 14, 3, 2),
(27, 1, 'Selasa', 15, 5, 3),
(28, 1, 'Selasa', 16, 6, 3),
(29, 1, 'Selasa', 17, 7, 4),
(30, 1, 'Selasa', 18, 8, 4),
(31, 1, 'Selasa', 19, 9, 5),
(32, 1, 'Selasa', 20, 10, 5),
(33, 1, 'Selasa', 21, 11, 5),
(34, 2, 'Selasa', 11, 1, 1),
(35, 2, 'Selasa', 12, 2, 1),
(36, 2, 'Selasa', 13, 3, 2),
(37, 2, 'Selasa', 14, 3, 2),
(38, 2, 'Selasa', 15, 5, 3),
(39, 2, 'Selasa', 16, 6, 3),
(40, 2, 'Selasa', 17, 7, 4),
(41, 2, 'Selasa', 18, 8, 4),
(42, 2, 'Selasa', 19, 9, 5),
(43, 2, 'Selasa', 20, 10, 5),
(44, 2, 'Selasa', 21, 11, 5),
(45, 1, 'Rabu', 11, 1, 1),
(46, 1, 'Rabu', 12, 2, 1),
(47, 1, 'Rabu', 13, 3, 2),
(48, 1, 'Rabu', 14, 3, 2),
(49, 1, 'Rabu', 15, 5, 3),
(50, 1, 'Rabu', 16, 6, 3),
(51, 1, 'Rabu', 17, 7, 4),
(52, 1, 'Rabu', 18, 8, 4),
(53, 1, 'Rabu', 19, 9, 5),
(54, 1, 'Rabu', 20, 10, 5),
(55, 1, 'Rabu', 21, 11, 5),
(56, 2, 'Rabu', 11, 1, 1),
(57, 2, 'Rabu', 12, 2, 1),
(58, 2, 'Rabu', 13, 3, 2),
(59, 2, 'Rabu', 14, 3, 2),
(60, 2, 'Rabu', 15, 5, 3),
(61, 2, 'Rabu', 16, 6, 3),
(62, 2, 'Rabu', 17, 7, 4),
(63, 2, 'Rabu', 18, 8, 4),
(64, 2, 'Rabu', 19, 9, 5),
(65, 2, 'Rabu', 20, 10, 5),
(66, 2, 'Rabu', 21, 11, 5),
(67, 1, 'Kamis', 11, 1, 1),
(68, 1, 'Kamis', 12, 2, 1),
(69, 1, 'Kamis', 13, 3, 2),
(70, 1, 'Kamis', 14, 3, 2),
(71, 1, 'Kamis', 15, 5, 3),
(72, 1, 'Kamis', 16, 6, 3),
(73, 1, 'Kamis', 17, 7, 4),
(74, 1, 'Kamis', 18, 8, 4),
(75, 1, 'Kamis', 19, 9, 5),
(76, 1, 'Kamis', 20, 10, 5),
(77, 1, 'Kamis', 21, 11, 5),
(78, 2, 'Kamis', 11, 1, 1),
(79, 2, 'Kamis', 12, 2, 1),
(80, 2, 'Kamis', 13, 3, 2),
(81, 2, 'Kamis', 14, 3, 2),
(82, 2, 'Kamis', 15, 5, 3),
(83, 2, 'Kamis', 16, 6, 3),
(84, 2, 'Kamis', 17, 7, 4),
(85, 2, 'Kamis', 18, 8, 4),
(86, 2, 'Kamis', 19, 9, 5),
(87, 2, 'Kamis', 20, 10, 5),
(88, 2, 'Kamis', 21, 11, 5),
(89, 1, 'Jumat', 11, 1, 1),
(90, 1, 'Jumat', 12, 2, 1),
(91, 1, 'Jumat', 13, 3, 2),
(92, 1, 'Jumat', 14, 3, 2),
(93, 1, 'Jumat', 15, 5, 3),
(94, 1, 'Jumat', 16, 6, 3),
(95, 1, 'Jumat', 17, 7, 4),
(96, 1, 'Jumat', 18, 8, 4),
(97, 1, 'Jumat', 19, 9, 5),
(98, 1, 'Jumat', 20, 10, 5),
(99, 1, 'Jumat', 21, 11, 5),
(100, 2, 'Jumat', 11, 1, 1),
(101, 2, 'Jumat', 12, 2, 1),
(102, 2, 'Jumat', 13, 3, 2),
(103, 2, 'Jumat', 14, 3, 2),
(104, 2, 'Jumat', 15, 5, 3),
(105, 2, 'Jumat', 16, 6, 3),
(106, 2, 'Jumat', 17, 7, 4),
(107, 2, 'Jumat', 18, 8, 4),
(108, 2, 'Jumat', 19, 9, 5),
(109, 2, 'Jumat', 20, 10, 5),
(110, 2, 'Jumat', 21, 11, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jam_pelajaran`
--

CREATE TABLE `jam_pelajaran` (
  `id` int NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jam_pelajaran`
--

INSERT INTO `jam_pelajaran` (`id`, `jam_mulai`, `jam_selesai`) VALUES
(11, '07:45:00', '08:30:00'),
(12, '08:30:00', '09:15:00'),
(13, '09:15:00', '10:00:00'),
(14, '10:00:00', '10:45:00'),
(15, '10:45:00', '11:30:00'),
(16, '11:30:00', '12:15:00'),
(17, '12:15:00', '13:00:00'),
(18, '13:00:00', '13:45:00'),
(19, '13:45:00', '14:30:00'),
(20, '14:30:00', '15:15:00'),
(21, '15:15:00', '16:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int NOT NULL,
  `nama_kelas` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tingkat` int DEFAULT NULL,
  `id_wali_guru` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`, `tingkat`, `id_wali_guru`) VALUES
(1, '10 PPLG', 10, 2),
(2, '11 PPLG', 11, 4),
(3, 'RPL 1', 12, 1),
(4, 'RPL 2', 12, 8),
(5, 'MPLB 1', 10, 5),
(6, 'MPLB 1', 11, 6),
(7, 'AP 1', 12, 7),
(8, 'AK 1', 10, 3),
(9, 'AK 1', 11, 9),
(10, 'AK 1', 12, 10),
(11, 'PS 1', 10, 11),
(12, 'PS 1', 11, 12),
(13, 'PS 1', 12, 13);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mata_pelajaran`
--

CREATE TABLE `mata_pelajaran` (
  `id_mapel` int NOT NULL,
  `nama_mapel` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deskripsi` text COLLATE utf8mb4_general_ci,
  `id_guru` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mata_pelajaran`
--

INSERT INTO `mata_pelajaran` (`id_mapel`, `nama_mapel`, `deskripsi`, `id_guru`) VALUES
(1, 'Matematika', '', 1),
(2, 'Bahasa Indonesia', '', 3),
(3, 'Basis Data', '', 2),
(4, 'Pemograman Web', '', 2),
(5, 'Produk Kreatif dan Kewirausahaan', '', 9),
(6, 'PPKn', '', 5),
(7, 'Pemodelan Perangkat Lunak', '', 6),
(8, 'PBO', '', 7),
(9, 'Pendidikan Agama Islam', '', 4),
(10, 'Bahasa Inggris', '', 8),
(11, 'PJOK', '', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int NOT NULL,
  `nama_siswa` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nis` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_general_ci,
  `no_telepon` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_kelas` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nama_siswa`, `nis`, `alamat`, `no_telepon`, `id_kelas`) VALUES
(1, 'ABD.Rahman ', 'NIS001', 'Alamat 1', '0812111111', 3),
(2, 'Ahmad Anugrah Satya', 'NIS002', 'Alamat 2', '0812111112', 3),
(3, 'Ahsan Putra Ahyar', 'NIS003', 'Alamat 3', '0812111113', 3),
(4, 'Andi Ashadela Maharani Anil', 'NIS004', 'Alamat 4', '0812111114', 3),
(5, 'Andi Muh Raihan Alkawsar', 'NIS005', 'Alamat 5', '0812111115', 3),
(6, 'Chairil Abizali', 'NIS006', 'Alamat 6', '0812111116', 3),
(7, 'Fachri Ramadhan', 'NIS007', 'Alamat 7', '0812111117', 3),
(8, 'Fatsa Akhwani', 'NIS008', 'Alamat 8', '0812111118', 3),
(9, 'Jordan', 'NIS009', 'Alamat 9', '0812111119', 3),
(10, 'Hansar', 'NIS010', 'Alamat 10', '0812111120', 3),
(11, 'Yuli', 'NIS011', 'Alamat 11', '08121111111', 1),
(12, 'Afifah', 'NIS012', 'Alamat 12', '08121111112', 1),
(13, 'Abdi', 'NIS013', 'Alamat 13', '08121111113', 1),
(14, 'Marzuq', 'NIS014', 'Alamat 14', '08121111114', 2),
(15, 'Maria', 'NIS015', 'Alamat 15', '08121111115', 2),
(16, 'Putri', 'NIS016', 'Alamat 16', '08121111116', 2),
(17, 'Farel', 'NIS017', 'Alamat 17', '08121111117', 2),
(18, 'Falen', 'NIS018', 'Alamat 18', '08121111118', 4),
(19, 'Fahri', 'NIS019', 'Alamat 19', '08121111119', 4),
(20, 'Arfa', 'NIS020', 'Alamat 20', '08121111120', 4),
(21, 'Suci', 'NIS021', 'Alamat 21', '08121111121', 4),
(22, 'Ica', 'NIS022', 'Alamat 22', '08121111122', 4),
(23, 'Reski', 'NIS023', 'Alamat 23', '08121111123', 8),
(24, 'Saskia', 'NIS024', 'Alamat 24', '08121111124', 8),
(25, 'Nurul', 'NIS025', 'Alamat 25', '08121111125', 9),
(26, 'Amel', 'NIS026', 'Alamat 26', '08121111126', 10),
(27, 'Suci', 'NIS027', 'Alamat 27', '08121111127', 10),
(28, 'Sarah', 'NIS028', 'Alamat 28', '08121111128', 10),
(29, 'Andani', 'NIS029', 'Alamat 29', '08121111129', 10),
(30, 'Farhan', 'NIS030', 'Alamat 30', '08121111130', 7),
(31, 'Rehan', 'NIS031', 'Alamat 31', '08121111131', 7),
(32, 'Afira', 'NIS032', 'Alamat 32', '08121111132', 6),
(33, 'Kirana', 'NIS033', 'Alamat 33', '08121111133', 6),
(34, 'Alfath', 'NIS034', 'Alamat 34', '08121111134', 6),
(35, 'Nurul', 'NIS035', 'Alamat 35', '08121111135', 5),
(36, 'Wisnu', 'NIS036', 'Alamat 36', '08121111136', 5),
(37, 'Jihan', 'NIS037', 'Alamat 37', '08121111137', 11),
(38, 'Asril', 'NIS038', 'Alamat 38', '08121111138', 12),
(39, 'Adriana', 'NIS039', 'Alamat 39', '08121111139', 12),
(40, 'Rina', 'NIS040', 'Alamat 40', '08121111140', 13),
(41, 'Andini', 'NIS041', 'Alamat 41', '08121111141', 13);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `role` set('guru') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'guru'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `role`) VALUES
(1, 'guru', 'b47c6e71ca3a5e23cab99c2e9da03046', 'guru'),
(3, 'dimas', '88f13362f06546beb6951706cb769cf1', 'guru'),
(4, 'hans', 'bc9dcb837506c3d5892bec66b1dba936', 'guru');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indeks untuk tabel `jadwal_pelajaran`
--
ALTER TABLE `jadwal_pelajaran`
  ADD PRIMARY KEY (`id_jadwal`) USING BTREE,
  ADD KEY `id_jadwal` (`id_jadwal`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_mapel` (`id_mapel`),
  ADD KEY `jadwal_pelajaran_ibfk_3` (`id_guru`),
  ADD KEY `id_jam_pelajaran` (`id_jam_pelajaran`);

--
-- Indeks untuk tabel `jam_pelajaran`
--
ALTER TABLE `jam_pelajaran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`),
  ADD KEY `kelas_ibfk_1` (`id_wali_guru`);

--
-- Indeks untuk tabel `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
  ADD PRIMARY KEY (`id_mapel`),
  ADD KEY `relasi1` (`id_guru`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `jadwal_pelajaran`
--
ALTER TABLE `jadwal_pelajaran`
  MODIFY `id_jadwal` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT untuk tabel `jam_pelajaran`
--
ALTER TABLE `jam_pelajaran`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `jadwal_pelajaran`
--
ALTER TABLE `jadwal_pelajaran`
  ADD CONSTRAINT `jadwal_pelajaran_ibfk_1` FOREIGN KEY (`id_mapel`) REFERENCES `mata_pelajaran` (`id_mapel`),
  ADD CONSTRAINT `jadwal_pelajaran_ibfk_2` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jadwal_pelajaran_ibfk_3` FOREIGN KEY (`id_guru`) REFERENCES `guru` (`id_guru`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jadwal_pelajaran_ibfk_4` FOREIGN KEY (`id_jam_pelajaran`) REFERENCES `jam_pelajaran` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD CONSTRAINT `kelas_ibfk_1` FOREIGN KEY (`id_wali_guru`) REFERENCES `guru` (`id_guru`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
  ADD CONSTRAINT `relasi1` FOREIGN KEY (`id_guru`) REFERENCES `guru` (`id_guru`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
