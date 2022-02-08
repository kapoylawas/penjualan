-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 28, 2021 at 02:08 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tokoku`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(10) UNSIGNED NOT NULL,
  `nama_kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `created_at`, `updated_at`) VALUES
(1, 'Makanan', '2021-06-25 06:32:22', '2021-06-25 06:37:50'),
(2, 'Minuman', '2021-06-26 17:46:31', '2021-06-26 17:46:31'),
(3, 'Lain-lain', '2021-06-26 17:48:10', '2021-06-26 17:48:10');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_member` int(10) UNSIGNED NOT NULL,
  `kode_member` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci,
  `telepon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_member`, `kode_member`, `nama`, `alamat`, `telepon`, `created_at`, `updated_at`) VALUES
(1, '00001', 'Sangga', 'Sidoarjo', '0856312313131', '2021-06-26 18:06:17', '2021-06-26 18:06:17');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_06_06_191300_tambah_kolom_baru_to_users_table', 1),
(7, '2021_06_07_061223_buat_kategori_table', 1),
(8, '2021_06_07_061616_buat_produk_table', 1),
(9, '2021_06_07_062030_buat_member_table', 1),
(10, '2021_06_07_064649_buat_supplier_table', 1),
(11, '2021_06_07_065745_buat_pembelian_detail_table', 1),
(12, '2021_06_07_065824_buat_penjualan_table', 1),
(13, '2021_06_07_065841_buat_pembelian_table', 1),
(14, '2021_06_07_065946_buat_penjualan_detail_table', 1),
(15, '2021_06_07_070010_buat_setting_table', 1),
(16, '2021_06_07_073522_buat_pengeluaran_table', 1),
(17, '2021_06_08_111515_create_sessions_table', 1),
(18, '2021_06_10_135501_tambah_foreign_key_to_produk_table', 1),
(19, '2021_06_10_154620_tambah_kode_produk_to_produk_table', 1),
(20, '2021_06_15_071937_tambah_diskon_to_setting_table', 1),
(21, '2021_06_16_135431_edit_id_member_to_penjualan_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `id_pembelian` int(10) UNSIGNED NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `total_item` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `diskon` tinyint(4) NOT NULL DEFAULT '0',
  `bayar` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`id_pembelian`, `id_supplier`, `total_item`, `total_harga`, `diskon`, `bayar`, `created_at`, `updated_at`) VALUES
(2, 1, 100, 750000, 0, 750000, '2021-06-26 18:07:59', '2021-06-26 18:08:18');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian_detail`
--

CREATE TABLE `pembelian_detail` (
  `id_pembelian_detail` int(10) UNSIGNED NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pembelian_detail`
--

INSERT INTO `pembelian_detail` (`id_pembelian_detail`, `id_pembelian`, `id_produk`, `harga_beli`, `jumlah`, `subtotal`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 5000, 50, 250000, '2021-06-26 18:08:03', '2021-06-26 18:08:07'),
(2, 2, 2, 10000, 50, 500000, '2021-06-26 18:08:11', '2021-06-26 18:08:14');

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id_pengeluaran` int(10) UNSIGNED NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci,
  `nominal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(10) UNSIGNED NOT NULL,
  `id_member` int(11) DEFAULT NULL,
  `total_item` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `diskon` int(11) NOT NULL DEFAULT '0',
  `bayar` int(11) NOT NULL DEFAULT '0',
  `diterima` int(11) NOT NULL DEFAULT '0',
  `id_user` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `id_member`, `total_item`, `total_harga`, `diskon`, `bayar`, `diterima`, `id_user`, `created_at`, `updated_at`) VALUES
(1, NULL, 20, 180000, 0, 180000, 200000, 1, '2021-06-26 18:08:34', '2021-06-26 18:08:57'),
(2, NULL, 1, 6000, 0, 6000, 6000, 1, '2021-06-26 18:09:38', '2021-06-26 18:11:27'),
(3, NULL, 3, 30000, 0, 30000, 50000, 3, '2021-06-27 06:19:24', '2021-06-27 06:19:57'),
(4, NULL, 10, 120000, 0, 120000, 150000, 3, '2021-06-27 13:18:02', '2021-06-27 13:18:22'),
(5, NULL, 10, 60000, 0, 60000, 60000, 3, '2021-06-29 04:03:17', '2021-06-29 04:03:35'),
(6, 1, 10, 120000, 5, 114000, 115000, 3, '2021-06-29 18:04:24', '2021-06-29 18:04:56'),
(7, NULL, 0, 0, 0, 0, 0, 1, '2021-07-02 03:04:46', '2021-07-02 03:04:46');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan_detail`
--

CREATE TABLE `penjualan_detail` (
  `id_penjualan_detail` int(10) UNSIGNED NOT NULL,
  `id_penjualan` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `diskon` int(11) NOT NULL DEFAULT '0',
  `subtotal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penjualan_detail`
--

INSERT INTO `penjualan_detail` (`id_penjualan_detail`, `id_penjualan`, `id_produk`, `harga_jual`, `jumlah`, `diskon`, `subtotal`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 6000, 10, 0, 60000, '2021-06-26 18:08:39', '2021-06-26 18:08:42'),
(2, 1, 2, 12000, 10, 0, 120000, '2021-06-26 18:08:46', '2021-06-26 18:08:48'),
(3, 2, 1, 6000, 1, 0, 6000, '2021-06-26 18:09:43', '2021-06-26 18:09:43'),
(4, 3, 2, 12000, 2, 0, 24000, '2021-06-27 06:19:41', '2021-06-27 06:19:46'),
(5, 3, 1, 6000, 1, 0, 6000, '2021-06-27 06:19:49', '2021-06-27 06:19:49'),
(6, 4, 2, 12000, 10, 0, 120000, '2021-06-27 13:18:07', '2021-06-27 13:18:11'),
(7, 5, 1, 6000, 10, 0, 60000, '2021-06-29 04:03:22', '2021-06-29 04:03:24'),
(8, 6, 2, 12000, 10, 0, 120000, '2021-06-29 18:04:28', '2021-06-29 18:04:31'),
(9, 7, 2, 12000, 1, 0, 12000, '2021-07-02 03:04:50', '2021-07-02 03:04:50');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'kapoylawas', '39d1ee4da20a1124d90a3546294fb01cb90862be443e4ab93de398fc5d35f40c', '[\"*\"]', '2021-06-26 23:56:57', '2021-06-26 23:38:43', '2021-06-26 23:56:57'),
(2, 'App\\Models\\User', 1, 'kapoylawas', '9389215d3c3609bf79b3ef04e87cc610f6312ac25895f09974e978cabe578c51', '[\"*\"]', NULL, '2021-06-27 00:04:30', '2021-06-27 00:04:30'),
(3, 'App\\Models\\User', 1, 'kapoylawas', 'e35e05cdcb219e3118321474007c80c7b025cce3ad6c2605d13100a6c8b34d67', '[\"*\"]', '2021-06-27 05:54:02', '2021-06-27 05:51:21', '2021-06-27 05:54:02');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(10) UNSIGNED NOT NULL,
  `id_kategori` int(10) UNSIGNED NOT NULL,
  `kode_produk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_produk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `harga_beli` int(11) NOT NULL,
  `diskon` tinyint(4) NOT NULL DEFAULT '0',
  `harga_jual` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `id_kategori`, `kode_produk`, `nama_produk`, `merk`, `harga_beli`, `diskon`, `harga_jual`, `stok`, `created_at`, `updated_at`) VALUES
(1, 1, 'P000001', 'Oreo', '-', 5000, 0, 6000, 28, '2021-06-26 17:46:50', '2021-06-29 04:03:35'),
(2, 3, 'P000002', 'Minyak goreng', 'Bioli', 10000, 0, 12000, 18, '2021-06-26 18:07:03', '2021-06-29 18:04:56');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('TWgyTcwYvx5cyinqBS3lE8PVHwojBXpHB7xE2Cz3', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiMWxwWkswTEMwZkJMdXlRZlJHQjl1a3pOOU9hRFVVU0FtQXFkZW5OMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly90b2tva3UudGVzdC9tZW1iZXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkSFE1T1NPT1BvNmRaRXIvZExLeEI3dVJtZ0ZRdG80d2ZXYkpOeDVST3V0dHdBWmJqNXpaWmkiO30=', 1626871978);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id_setting` int(10) UNSIGNED NOT NULL,
  `nama_perusahaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci,
  `telepon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipe_nota` tinyint(4) NOT NULL,
  `diskon` smallint(6) NOT NULL DEFAULT '0',
  `path_logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path_kartu_member` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id_setting`, `nama_perusahaan`, `alamat`, `telepon`, `tipe_nota`, `diskon`, `path_logo`, `path_kartu_member`, `created_at`, `updated_at`) VALUES
(1, 'Toko Saya', 'Jl. Banjarpoh utara, Ds.Banjarbendo', '08123456789', 1, 5, '/img/shopping.png', '/img/member.png', NULL, '2021-06-27 06:25:15');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci,
  `telepon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama`, `alamat`, `telepon`, `created_at`, `updated_at`) VALUES
(1, 'PT. MAKANAN SIDOARJO', 'SIDOARJO, SUKODONO', '0812372323', '2021-06-25 06:30:25', '2021-06-26 18:07:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` tinyint(4) NOT NULL DEFAULT '0',
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `foto`, `level`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Toko Kapoy', 'kapoy@gmail.com', NULL, '$2y$10$HQ5OSOOPo6dZEr/dLKxB7uRmgFQto4wfWbJNx5ROuttwAZbj5zZZi', '/img/logo-20210625112127.png', 1, NULL, NULL, NULL, NULL, NULL, '2021-06-07 21:33:52', '2021-06-25 04:22:21'),
(2, 'User', 'user@gmail.com', NULL, '$2y$10$VWeVIQvJ6US0r3MpaAckRegGPFKIFJLpweDeZiq42Bsy4vRvDr3fK', NULL, 2, NULL, NULL, NULL, NULL, NULL, '2021-06-07 21:38:48', '2021-06-07 21:38:48'),
(3, 'Kasir', 'kasir@gmail.com', NULL, '$2y$10$ATTtZxwmFI5oaIMSfeNoj.CceCgZJR8lli.cJP1kqbbnW7xfXUpK6', '/img/logo-20210625112345.png', 2, NULL, NULL, NULL, NULL, NULL, '2021-06-25 04:22:09', '2021-06-25 04:23:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`),
  ADD UNIQUE KEY `kategori_nama_kategori_unique` (`nama_kategori`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`),
  ADD UNIQUE KEY `member_kode_member_unique` (`kode_member`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indexes for table `pembelian_detail`
--
ALTER TABLE `pembelian_detail`
  ADD PRIMARY KEY (`id_pembelian_detail`);

--
-- Indexes for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id_pengeluaran`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indexes for table `penjualan_detail`
--
ALTER TABLE `penjualan_detail`
  ADD PRIMARY KEY (`id_penjualan_detail`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD UNIQUE KEY `produk_nama_produk_unique` (`nama_produk`),
  ADD UNIQUE KEY `produk_kode_produk_unique` (`kode_produk`),
  ADD KEY `produk_id_kategori_foreign` (`id_kategori`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id_pembelian` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pembelian_detail`
--
ALTER TABLE `pembelian_detail`
  MODIFY `id_pembelian_detail` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id_pengeluaran` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `penjualan_detail`
--
ALTER TABLE `penjualan_detail`
  MODIFY `id_penjualan_detail` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id_setting` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_supplier` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_id_kategori_foreign` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
