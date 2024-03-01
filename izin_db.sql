-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2024 at 01:41 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `izin_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `bk`
--

CREATE TABLE `bk` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bk`
--

INSERT INTO `bk` (`id`, `nama`, `username`, `password`) VALUES
(1, 'Bangun Parikesit, S.Pd.', 'parikesit', '12345'),
(2, 'Ratna Widyaningsih, S.Psi.', 'ratnawidya', '12345'),
(3, 'Sri Yuniati, S.Pd.', 'yuniatii', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `mapel` varchar(50) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id`, `nama`, `mapel`, `username`, `password`, `nip`, `foto`) VALUES
(1, 'Rumini, M.Or.', 'PJOK', 'rumini', '12345', '197412172014062002', 'rumini.jpg'),
(2, 'Muharor, S.Pd.I.', 'PAIBP', 'charorhsn', '12345', '199301012023211012', 'muharor.jpg'),
(3, 'Subarna, S.Pd.', 'PPKN', 'soebarna', '12345', '197305111999031003', 'subarna.jpg'),
(4, 'Eka Nur Ahmad Romadhoni, S.Pd.', 'SIJA', 'ekaanur', '12345', '199303012019031011', 'ekanur.jpg'),
(5, 'Dra. Catarina Setyawati Marsiana', 'MATEMATIKA', 'catarinar', '12345', '196508012005012003', 'catarina.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `izin`
--

CREATE TABLE `izin` (
  `id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `guru_id` int(11) DEFAULT NULL,
  `bk_id` int(11) DEFAULT NULL,
  `alasan` varchar(200) NOT NULL,
  `kode` varchar(5) NOT NULL,
  `waktu` varchar(8) NOT NULL,
  `tanggal` datetime NOT NULL DEFAULT current_timestamp(),
  `is_approved` int(11) NOT NULL DEFAULT 0,
  `file_pendukung` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `izin`
--

INSERT INTO `izin` (`id`, `siswa_id`, `guru_id`, `bk_id`, `alasan`, `kode`, `waktu`, `tanggal`, `is_approved`, `file_pendukung`) VALUES
(1, 2, 1, 1, 'Buat KTP', '', '5-6', '2024-02-16 08:43:29', 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `nama_setting` varchar(20) NOT NULL,
  `value` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `nama_setting`, `value`) VALUES
(1, 'pembatasan', '12');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `nis` varchar(6) NOT NULL,
  `jurusan` varchar(5) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `nama`, `kelas`, `nis`, `jurusan`, `username`, `password`, `foto`) VALUES
(1, 'Pembayun Maya Riyani', '11 SIJA B', '20441', 'SIJA', 'pembayun', '12345', 'pembayun.jpg'),
(2, 'Yumna Putri Nurjanah', '11 SIJA B', '20458', 'SIJA', 'yumzna', '12345', 'yumna.jpg'),
(3, 'Hanifah Nur Aini', '11 GP A', '20345', 'GP', 'hniaini', '12345', 'hanifah.jpg'),
(4, 'Ivan Langit Suryaning Bumi', '11 GP A', '20351', 'GP', 'ivaans', '12345', 'langit.jpg'),
(5, 'Aulia Dewi Utami', '11 KA A', '19975', 'KA', 'auliadewi', '12345', 'aulia.jpg'),
(6, 'Salasatun Arabiah Nurrohmah', '11 KA B', '20018', 'KA', 'salasatun', '12345', 'caca.jpg'),
(7, 'Setiaji Fajar Nurochman', '11 DPIB B', '19773', 'DPIB', 'setiaji', '12345', 'ajik.jpg'),
(8, 'Carolina Sesary Ratriana Puspa Dewi', '11 TKI A', '20043', 'TKI', 'carolinasr', '12345', 'rara.jpg'),
(9, 'Fathan Raffi Ahmad Stiawan', '11 TEK A', '19804', 'TEK', 'fathaanrs', '12345', 'raffi.jpg'),
(10, 'Gizza Aulia Putri Kanentakaren ', '11 TEK A', '19808', 'TEK', 'gizzaulia', '12345', 'gizza.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bk`
--
ALTER TABLE `bk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `izin`
--
ALTER TABLE `izin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode` (`kode`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bk`
--
ALTER TABLE `bk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `izin`
--
ALTER TABLE `izin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
