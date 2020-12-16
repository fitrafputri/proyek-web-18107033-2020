-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2020 at 06:39 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dtb_praktikum`
--

-- --------------------------------------------------------

--
-- Table structure for table `fakultas`
--

CREATE TABLE `fakultas` (
  `id_fk` int(11) NOT NULL,
  `nm_fk` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fakultas`
--

INSERT INTO `fakultas` (`id_fk`, `nm_fk`) VALUES
(1, 'Ekonomi'),
(2, 'ILKOM'),
(3, 'Kedokteran'),
(4, 'FMIPA');

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` int(11) NOT NULL,
  `kd_jurusan` varchar(255) NOT NULL,
  `id_fakultas` int(11) NOT NULL,
  `nm_jurusan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `kd_jurusan`, `id_fakultas`, `nm_jurusan`) VALUES
(1, 'MENE', 1, 'Manajemen'),
(2, 'TIF', 2, 'Teknik Informatika'),
(3, 'AKUN', 1, 'Akuntansi'),
(4, 'SIF', 2, 'Sistem Informasi'),
(5, 'drg', 3, 'Dokter Gigi'),
(6, 'drh', 3, 'Dokter Hewan'),
(7, 'Math', 4, 'Matematika'),
(8, 'CHEMICAL', 4, 'Kimia');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_mahasiswa` int(11) NOT NULL,
  `nim` int(11) NOT NULL,
  `nm_mahasiswa` varchar(255) NOT NULL,
  `tempat` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `id_fakultas` int(11) NOT NULL,
  `id_jurusan` int(11) NOT NULL,
  `ipk` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_mahasiswa`, `nim`, `nm_mahasiswa`, `tempat`, `tanggal`, `id_fakultas`, `id_jurusan`, `ipk`) VALUES
(11, 18107033, 'Fitra Fatimah Putri', 'Ambon', '2000-03-11', 2, 2, 3.2),
(12, 18107010, 'Muhammad Rafif', 'Jakarta', '1999-12-24', 2, 2, 3),
(13, 2831383, 'Maudy Ayunda', 'Jakarta', '1999-11-18', 3, 6, 3.5),
(14, 3745182, 'Ardhito Pramono', 'Jakarta', '2000-07-21', 4, 8, 3.2),
(15, 61326, 'Pamungkas', 'Depok', '1999-03-12', 1, 3, 3.6),
(16, 4254264, 'Nia Ramadhani', 'Padang', '1997-02-18', 3, 5, 3.6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fakultas`
--
ALTER TABLE `fakultas`
  ADD PRIMARY KEY (`id_fk`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`),
  ADD KEY `Jurusan` (`id_fakultas`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`),
  ADD KEY `Fakultas` (`id_fakultas`),
  ADD KEY `Jurusann` (`id_jurusan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fakultas`
--
ALTER TABLE `fakultas`
  MODIFY `id_fk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id_jurusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id_mahasiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD CONSTRAINT `Jurusan` FOREIGN KEY (`id_fakultas`) REFERENCES `fakultas` (`id_fk`);

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `Fakultas` FOREIGN KEY (`id_fakultas`) REFERENCES `fakultas` (`id_fk`),
  ADD CONSTRAINT `Jurusann` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusan` (`id_jurusan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
