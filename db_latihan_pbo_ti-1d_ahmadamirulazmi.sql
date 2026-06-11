-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 11, 2026 at 07:23 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_latihan_pbo_ti-1d_ahmadamirulazmi`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_tiket`
--

CREATE TABLE `tabel_tiket` (
  `id_tiket` int NOT NULL,
  `nama_film` varchar(255) NOT NULL,
  `jadwal_tayang` datetime NOT NULL,
  `jumlah_kursi` int NOT NULL,
  `harga_dasar_tiket` decimal(12,2) NOT NULL,
  `jenis_studio` enum('Regular','IMAX','Velvet') NOT NULL,
  `tipe_audio` varchar(50) DEFAULT NULL,
  `lokasi_baris` varchar(10) DEFAULT NULL,
  `kacamata_3d_id` varchar(50) DEFAULT NULL,
  `efek_gerak_fitur` varchar(100) DEFAULT NULL,
  `bantar_selimut_pack` varchar(100) DEFAULT NULL,
  `layanan_butler` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tabel_tiket`
--

INSERT INTO `tabel_tiket` (`id_tiket`, `nama_film`, `jadwal_tayang`, `jumlah_kursi`, `harga_dasar_tiket`, `jenis_studio`, `tipe_audio`, `lokasi_baris`, `kacamata_3d_id`, `efek_gerak_fitur`, `bantar_selimut_pack`, `layanan_butler`) VALUES
(1, 'The Batman Part II', '2026-06-12 13:00:00', 2, '40000.00', 'Regular', 'Dolby Atmos', 'G10', NULL, NULL, NULL, NULL),
(2, 'Siksa Kubur 2', '2026-06-12 15:30:00', 1, '40000.00', 'Regular', 'Dolby Digital 5.1', 'F5', NULL, NULL, NULL, NULL),
(3, 'Avengers: Doomsday', '2026-06-12 18:00:00', 4, '45000.00', 'Regular', 'Dolby Atmos', 'Sweetbox 1', NULL, NULL, NULL, NULL),
(4, 'The Batman Part II', '2026-06-13 12:00:00', 2, '50000.00', 'Regular', 'Dolby Atmos', 'A1', NULL, NULL, NULL, NULL),
(5, 'Gundala: Putra Petir', '2026-06-13 14:45:00', 2, '50000.00', 'Regular', NULL, 'B12', NULL, NULL, NULL, NULL),
(6, 'Detektif Conan Movie', '2026-06-13 17:15:00', 1, '35000.00', 'Regular', 'Dolby Digital 5.1', 'E3', NULL, NULL, NULL, NULL),
(7, 'Avatar: Fire and Ash', '2026-06-13 20:00:00', 2, '50000.00', 'Regular', 'Dolby Atmos', 'Sweetbox 3', NULL, NULL, NULL, NULL),
(8, 'Avatar: Fire and Ash', '2026-06-12 11:00:00', 2, '75000.00', 'IMAX', 'IMAX 12-Channel', 'D14', 'IMAX-3D-A2', NULL, NULL, NULL),
(9, 'Avatar: Fire and Ash', '2026-06-12 14:15:00', 2, '75000.00', 'IMAX', 'IMAX 12-Channel', 'E15', 'IMAX-3D-A2', NULL, NULL, NULL),
(10, 'Interstellar (Re-Release)', '2026-06-12 17:30:00', 1, '75000.00', 'IMAX', 'IMAX 6-Channel', 'C10', NULL, NULL, NULL, NULL),
(11, 'The Batman Part II', '2026-06-12 20:45:00', 2, '85000.00', 'IMAX', 'IMAX 12-Channel', 'F8', NULL, NULL, NULL, NULL),
(12, 'Dune: Part Three', '2026-06-13 10:30:00', 2, '85000.00', 'IMAX', 'IMAX 12-Channel', 'D12', 'IMAX-3D-B1', NULL, NULL, NULL),
(13, 'Dune: Part Three', '2026-06-13 13:45:00', 4, '85000.00', 'IMAX', 'IMAX 12-Channel', 'E11', 'IMAX-3D-B1', NULL, NULL, NULL),
(14, 'Interstellar (Re-Release)', '2026-06-13 19:00:00', 2, '85000.00', 'IMAX', 'IMAX 6-Channel', 'B5', NULL, NULL, NULL, NULL),
(15, 'Inception', '2026-06-12 13:30:00', 2, '120000.00', 'Velvet', 'Dolby Atmos', 'V01', NULL, NULL, 'Sprei + 2 Bantal + Selimut Tebal', 'Full Butler Service (On-Call)'),
(16, 'Inception', '2026-06-12 16:30:00', 2, '120000.00', 'Velvet', 'Dolby Atmos', 'V03', NULL, NULL, 'Sprei + 2 Bantal + Selimut Tebal', 'Full Butler Service (On-Call)'),
(17, 'KKN di Desa Penari 2', '2026-06-12 19:30:00', 2, '150000.00', 'Velvet', 'Dolby Atmos', 'V02', NULL, NULL, 'Standard Pillow & Blanket', 'Standard Butler'),
(18, 'The Batman Part II', '2026-06-13 14:00:00', 2, '150000.00', 'Velvet', 'Dolby Atmos', 'V05', NULL, NULL, 'Sprei + 2 Bantal + Selimut Tebal', 'Full Butler Service (On-Call)'),
(19, 'Avatar: Fire and Ash', '2026-06-13 17:00:00', 2, '150000.00', 'Velvet', 'Dolby Atmos', 'V04', NULL, NULL, 'Standard Pillow & Blanket', 'Standard Butler'),
(20, 'Dune: Part Three', '2026-06-13 21:00:00', 2, '150000.00', 'Velvet', 'Dolby Atmos', 'V01', NULL, NULL, 'Sprei + 2 Bantal + Selimut Tebal', 'Full Butler Service (On-Call)');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_tiket`
--
ALTER TABLE `tabel_tiket`
  ADD PRIMARY KEY (`id_tiket`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_tiket`
--
ALTER TABLE `tabel_tiket`
  MODIFY `id_tiket` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
