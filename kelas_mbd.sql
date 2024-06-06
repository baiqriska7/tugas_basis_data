-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2024 at 11:39 AM
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
-- Database: `kelas_mbd`
--

-- --------------------------------------------------------

--
-- Table structure for table `eksportir`
--

CREATE TABLE `eksportir` (
  `id_eksportir` int(11) NOT NULL,
  `nama_eksportir` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `eksportir`
--

INSERT INTO `eksportir` (`id_eksportir`, `nama_eksportir`) VALUES
(1, 'asdfsadf'),
(2, 'ijoejw'),
(3, 'kjskldv');

-- --------------------------------------------------------

--
-- Table structure for table `kelompok_komoditi`
--

CREATE TABLE `kelompok_komoditi` (
  `id_kelompok` int(15) NOT NULL,
  `nama_kelompok` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `komoditi`
--

CREATE TABLE `komoditi` (
  `id_komoditi` int(11) NOT NULL,
  `id_kelompok` int(11) NOT NULL,
  `nama_kelompok` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(2, 'nadiaa', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `negara_tujuan`
--

CREATE TABLE `negara_tujuan` (
  `id_negara_tujuan` int(11) NOT NULL,
  `nama_nergara` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pelabuhan`
--

CREATE TABLE `pelabuhan` (
  `id_pelabuhan` int(11) NOT NULL,
  `nama_pelabuhan` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trx_exsport`
--

CREATE TABLE `trx_exsport` (
  `id_` int(11) NOT NULL,
  `id_komoditi` int(11) NOT NULL,
  `id_eksportir` int(11) NOT NULL,
  `id_negara_tujuan` int(11) NOT NULL,
  `id_pelabuhan` int(11) NOT NULL,
  `nama_importir` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `volumen_ton` int(11) NOT NULL,
  `nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `eksportir`
--
ALTER TABLE `eksportir`
  ADD PRIMARY KEY (`id_eksportir`);

--
-- Indexes for table `kelompok_komoditi`
--
ALTER TABLE `kelompok_komoditi`
  ADD PRIMARY KEY (`id_kelompok`);

--
-- Indexes for table `komoditi`
--
ALTER TABLE `komoditi`
  ADD PRIMARY KEY (`id_komoditi`),
  ADD KEY `id_kelompok` (`id_kelompok`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `negara_tujuan`
--
ALTER TABLE `negara_tujuan`
  ADD PRIMARY KEY (`id_negara_tujuan`);

--
-- Indexes for table `pelabuhan`
--
ALTER TABLE `pelabuhan`
  ADD PRIMARY KEY (`id_pelabuhan`);

--
-- Indexes for table `trx_exsport`
--
ALTER TABLE `trx_exsport`
  ADD PRIMARY KEY (`id_`),
  ADD KEY `id_komoditi` (`id_komoditi`),
  ADD KEY `id_eksportir` (`id_eksportir`),
  ADD KEY `id_pelabuhan` (`id_pelabuhan`),
  ADD KEY `id_negara_tujuan` (`id_negara_tujuan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `eksportir`
--
ALTER TABLE `eksportir`
  MODIFY `id_eksportir` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kelompok_komoditi`
--
ALTER TABLE `kelompok_komoditi`
  MODIFY `id_kelompok` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `komoditi`
--
ALTER TABLE `komoditi`
  MODIFY `id_komoditi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `negara_tujuan`
--
ALTER TABLE `negara_tujuan`
  MODIFY `id_negara_tujuan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pelabuhan`
--
ALTER TABLE `pelabuhan`
  MODIFY `id_pelabuhan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trx_exsport`
--
ALTER TABLE `trx_exsport`
  MODIFY `id_` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `komoditi`
--
ALTER TABLE `komoditi`
  ADD CONSTRAINT `komoditi_ibfk_1` FOREIGN KEY (`id_kelompok`) REFERENCES `kelompok_komoditi` (`id_kelompok`);

--
-- Constraints for table `trx_exsport`
--
ALTER TABLE `trx_exsport`
  ADD CONSTRAINT `trx_exsport_ibfk_1` FOREIGN KEY (`id_komoditi`) REFERENCES `komoditi` (`id_komoditi`),
  ADD CONSTRAINT `trx_exsport_ibfk_2` FOREIGN KEY (`id_eksportir`) REFERENCES `eksportir` (`id_eksportir`),
  ADD CONSTRAINT `trx_exsport_ibfk_3` FOREIGN KEY (`id_pelabuhan`) REFERENCES `pelabuhan` (`id_pelabuhan`),
  ADD CONSTRAINT `trx_exsport_ibfk_4` FOREIGN KEY (`id_negara_tujuan`) REFERENCES `negara_tujuan` (`id_negara_tujuan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
