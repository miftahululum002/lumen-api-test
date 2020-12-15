-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2020 at 06:34 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pustakadb`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` smallint(6) NOT NULL,
  `kode_buku` varchar(15) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `pengarang` varchar(60) NOT NULL,
  `penerbit` varchar(60) NOT NULL,
  `tahun_terbit` smallint(6) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `kode_buku`, `judul`, `pengarang`, `penerbit`, `tahun_terbit`, `created_at`, `updated_at`) VALUES
(1, 'B0001', 'Lentera Kehidupan', 'Gading Pesantren', 'Gading Press', 2009, '2020-08-19 17:00:00', '2020-12-13 15:26:37'),
(2, 'B0002', 'Rekayasa Web', 'Simartmata', 'Republika', 2009, '2020-12-15 04:47:41', '2020-12-15 04:47:41'),
(3, 'B0003', 'Tutorial Framework Laravel', 'Miftahul Ulum', 'Praktisi Press', 2018, '2020-12-15 04:50:16', '2020-12-15 04:50:16'),
(4, 'B0004', 'Rest API dengan Lumen Framework', 'Ulum Miftahul', 'Praktisi Press', 2019, '2020-12-15 04:51:36', '2020-12-15 04:51:36'),
(5, 'B0005', 'Tutorial Framework CI', 'Miftahul Ulum, S.Pd.', 'Praktisi Press', 2017, '2020-12-15 04:58:53', '2020-12-15 04:58:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_buku` (`kode_buku`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
