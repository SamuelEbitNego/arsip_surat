-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2024 at 02:48 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arsip_surat`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `surat_keluar`
--

CREATE TABLE `surat_keluar` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomor_surat` varchar(255) DEFAULT NULL,
  `nama_surat` varchar(255) NOT NULL,
  `kode_klasifikasi` varchar(255) NOT NULL,
  `tanggal_surat` date NOT NULL,
  `kurun_waktu` varchar(255) DEFAULT NULL,
  `tingkat_perkembangan` varchar(255) DEFAULT NULL,
  `jumlah` varchar(255) DEFAULT NULL,
  `no_filling_cabinet` varchar(255) DEFAULT NULL,
  `no_laci` varchar(255) DEFAULT NULL,
  `no_folder` varchar(255) DEFAULT NULL,
  `keterangan_biasa` text DEFAULT NULL,
  `keterangan_terbatas` text DEFAULT NULL,
  `keterangan_rahasia` text DEFAULT NULL,
  `keterangan_sangat_rahasia` text DEFAULT NULL,
  `jangka_simpan` varchar(255) DEFAULT NULL,
  `tanggal_retensi` date DEFAULT NULL,
  `retensi_expired` tinyint(1) NOT NULL DEFAULT 0,
  `disposisi` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `created_at` timestamp(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_at` timestamp(3) NOT NULL DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `surat_masuk`
--

CREATE TABLE `surat_masuk` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomor_surat` varchar(255) DEFAULT NULL,
  `dari` varchar(255) DEFAULT NULL,
  `nama_surat` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `kode_klasifikasi` varchar(255) DEFAULT NULL,
  `tanggal_surat` date NOT NULL,
  `kurun_waktu` varchar(255) DEFAULT NULL,
  `tingkat_perkembangan` varchar(255) DEFAULT NULL,
  `jumlah` varchar(255) DEFAULT NULL,
  `no_filling_cabinet` varchar(255) DEFAULT NULL,
  `no_laci` varchar(255) DEFAULT NULL,
  `no_folder` varchar(255) DEFAULT NULL,
  `keterangan_biasa` text DEFAULT NULL,
  `keterangan_terbatas` text DEFAULT NULL,
  `keterangan_rahasia` text DEFAULT NULL,
  `keterangan_sangat_rahasia` text DEFAULT NULL,
  `jangka_simpan` varchar(255) DEFAULT NULL,
  `tanggal_retensi` date DEFAULT NULL,
  `retensi_expired` tinyint(1) NOT NULL DEFAULT 0,
  `disposisi` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `created_at` timestamp(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_at` timestamp(3) NOT NULL DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Samuel', 'samuelebitnego13@gmail.com', '$2y$10$TedbzIG/gUxx8nPOu/ongugDRMsILTemFwr1TTHcyG594CdKvERKq', 'superadmin', NULL, '2024-11-07 19:41:50', '2024-11-30 06:30:43'),
(2, 'Samss', 'samuelebitnego23@gmail.com', '$2y$10$/SbndPZhiOIJFGxACTA7TOP1MdgIOAu80OXlrV6u48338Kb/sjDwG', 'admin', NULL, '2024-11-07 19:43:40', '2024-12-03 20:05:20'),
(3, 'orag', 'oran@gmail.com', '$2y$10$fbE0zVg6iNmQVUtYBWuGQu0MdDP1KszuRxVCG0HmFrejc0YNw0iXa', 'admin', NULL, '2024-12-03 20:20:26', '2024-12-03 20:20:26'),
(4, 'andhika', 'andhika@gmail.com', '$2y$10$cD/OUvetTk7Olarqq21wpePdONOh0z/Q/jKtFw50KuG.kM8euMNwq', 'admin', NULL, '2024-12-12 18:36:03', '2024-12-12 18:36:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surat_keluar`
--
ALTER TABLE `surat_keluar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surat_masuk`
--
ALTER TABLE `surat_masuk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `surat_keluar`
--
ALTER TABLE `surat_keluar`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `surat_masuk`
--
ALTER TABLE `surat_masuk`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
