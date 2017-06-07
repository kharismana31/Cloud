-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2017 at 08:13 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fpcloud`
--

-- --------------------------------------------------------

--
-- Table structure for table `ambil_matakuliah`
--

CREATE TABLE `ambil_matakuliah` (
  `nrp` varchar(100) NOT NULL,
  `idjadwal` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `idjadwal` int(100) NOT NULL,
  `idmk` int(100) NOT NULL,
  `idruang` int(100) NOT NULL,
  `hari` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`idjadwal`, `idmk`, `idruang`, `hari`) VALUES
(1, 1, 1, 'Senin'),
(2, 2, 2, 'Selasa'),
(3, 3, 4, 'Rabu'),
(4, 4, 5, 'Kamis'),
(5, 5, 6, 'Jumat'),
(6, 6, 7, 'Senin'),
(7, 7, 8, 'Selasa'),
(8, 8, 6, 'Senin');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nrp` varchar(100) NOT NULL,
  `namamhs` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nrp`, `namamhs`, `password`) VALUES
('5114100024', 'Setyassida Novian Putra D', '8a5edf84bec5187e0598a58c88e65f19');

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `idmk` int(100) NOT NULL,
  `namamk` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`idmk`, `namamk`) VALUES
(1, 'Keamanan Informasi Jaringan'),
(2, 'Manajemen Proyek Perangkat Lunak'),
(3, 'Rekayasa Kebutuhan'),
(4, 'Komputasi Awan'),
(5, 'Interaksi Manusia dan Komputer'),
(6, 'Teknologi Antar Jaringan'),
(7, 'Pengolahan Citra Digital'),
(8, 'Sistem Digital');

-- --------------------------------------------------------

--
-- Table structure for table `ruang`
--

CREATE TABLE `ruang` (
  `idruang` int(100) NOT NULL,
  `namaruang` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ruang`
--

INSERT INTO `ruang` (`idruang`, `namaruang`) VALUES
(1, 'IF-101'),
(2, 'IF-102'),
(4, 'IF-103'),
(5, 'IF-104'),
(6, 'IF-105a'),
(7, 'IF-105b'),
(8, 'IF-106'),
(9, 'IF-108');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ambil_matakuliah`
--
ALTER TABLE `ambil_matakuliah`
  ADD KEY `FK_NRP` (`nrp`),
  ADD KEY `FK_IDJADWAL` (`idjadwal`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`idjadwal`),
  ADD KEY `FK_IDMK` (`idmk`),
  ADD KEY `FK_IDRUANG` (`idruang`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nrp`);

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`idmk`);

--
-- Indexes for table `ruang`
--
ALTER TABLE `ruang`
  ADD PRIMARY KEY (`idruang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `idjadwal` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `matakuliah`
--
ALTER TABLE `matakuliah`
  MODIFY `idmk` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `ruang`
--
ALTER TABLE `ruang`
  MODIFY `idruang` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `ambil_matakuliah`
--
ALTER TABLE `ambil_matakuliah`
  ADD CONSTRAINT `FK_IDJADWAL` FOREIGN KEY (`idjadwal`) REFERENCES `jadwal` (`idjadwal`),
  ADD CONSTRAINT `FK_NRP` FOREIGN KEY (`nrp`) REFERENCES `mahasiswa` (`nrp`);

--
-- Constraints for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `FK_IDMK` FOREIGN KEY (`idmk`) REFERENCES `matakuliah` (`idmk`),
  ADD CONSTRAINT `FK_IDRUANG` FOREIGN KEY (`idruang`) REFERENCES `ruang` (`idruang`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
