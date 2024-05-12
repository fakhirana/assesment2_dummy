-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 12, 2024 at 08:33 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `detail_kamar`
--

-- --------------------------------------------------------

--
-- Table structure for table `detailkamar`
--

CREATE TABLE `detailkamar` (
  `id` int(11) NOT NULL,
  `nama_kamar` varchar(255) NOT NULL,
  `tipe_kamar` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `fasilitas` text DEFAULT NULL,
  `stok` int(11) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `gambar_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detailkamar`
--

INSERT INTO `detailkamar` (`id`, `nama_kamar`, `tipe_kamar`, `harga`, `fasilitas`, `stok`, `deskripsi`, `gambar_url`, `created_at`, `updated_at`) VALUES
(1, 'Kamar Deluxe', 'Deluxe', 15000000, 'AC, TV, Kamar Mandi Dalam, WiFi, Meja Belajar, Bangku, Lemari, Kasur Single Bed', 5, 'Kamar mewah dengan pemandangan indah', 'https://example.com/kamar-deluxe.jpg', '2024-05-11 11:40:47', '2024-05-11 11:40:47'),
(2, 'Kamar Suite', 'Suite', 10000000, 'AC, WiFi, Meja Belajar, Bangku, Lemari, Kasur Single Bed', 7, 'Kamar mewah dengan fasilitas VIP', 'https://example.com/kamar-suite.jpg', '2024-05-11 11:40:47', '2024-05-11 11:40:47'),
(3, 'Kamar Standard', 'Standard', 9000000, 'WiFi, Meja Belajar, Bangku, Lemari, Kasur Single Bed', 8, 'Kamar standar dengan harga terjangkau', 'https://example.com/kamar-standard.jpg', '2024-05-11 11:40:47', '2024-05-11 11:40:47'),
(4, 'Kamar Superior', 'Superior', 500000, 'AC, TV, Kamar Mandi Dalam, WiFi', 10, 'Kamar dengan fasilitas lengkap dan nyaman', 'https://example.com/kamar-superior.jpg', '2024-05-12 05:53:44', '2024-05-12 05:53:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detailkamar`
--
ALTER TABLE `detailkamar`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detailkamar`
--
ALTER TABLE `detailkamar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
