-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Nov 2023 pada 07.44
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uts_2023`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_17_015635_create_news_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `url` varchar(255) NOT NULL,
  `url_image` varchar(255) NOT NULL,
  `published_at` datetime NOT NULL,
  `category` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `news`
--

INSERT INTO `news` (`id`, `title`, `author`, `description`, `content`, `url`, `url_image`, `published_at`, `category`, `created_at`, `updated_at`) VALUES
(1, 'Dramatis! Final Liga Champions Berakhir dengan Penentuan Lewat Adu Penalti', 'John Doe', 'The soccer match concludes with suspense', 'In a thrilling turn of events, the winning team emerges after an exciting penalty shootout, making history for the club.', 'http://example.com/sport/champions-league', 'http://example.com/images/sport-image.jpg', '2023-11-17 08:00:00', 'sport', '2023-11-16 19:42:54', '2023-11-16 23:23:19'),
(2, 'Saham Teknologi Menguat di Pasar', 'Jane Smith', 'Saham teknologi terkini mengalami kenaikan', 'Investor merayakan kinerja positif saham teknologi. Perusahaan teknologi utama melaporkan pertumbuhan laba yang luar biasa, menciptakan optimisme di pasar keuangan.', 'http://contoh.com/finance/saham-teknologi', 'http://contoh.com/images/finance-image.jpg', '2023-11-17 09:30:00', 'finance', '2023-11-16 19:46:45', '2023-11-16 23:25:28'),
(3, 'Mobil Listrik Mendominasi Industri Otomotif', 'Mark Johnson', 'Perubahan lanskap otomotif', 'Mobil listrik mulai mengambil alih pangsa pasar. Produsen otomotif terkemuka meluncurkan model terbaru yang ramah lingkungan, mendukung revolusi transportasi global.', 'http://contoh.com/automotive/mobil-listrik', 'http://contoh.com/images/auto-image.jpg', '2023-11-17 11:15:00', 'automotive', '2023-11-16 19:47:07', '2023-11-16 23:26:57'),
(4, 'Kejutan di Turnamen Tenis!', 'Emily Williams', 'Pemain tanpa unggulan menciptakan kejutan di dunia tenis', 'Outsider berhasil memenangkan turnamen tenis besar. Prestasi ini mengguncang peringkat dan memberikan inspirasi bagi pecinta tenis di seluruh dunia.', 'http://contoh.com/sport/kejutan-tenis', 'http://contoh.com/images/sport-image.jpg', '2023-11-17 13:45:00', 'sport', '2023-11-16 19:47:38', '2023-11-16 23:27:18'),
(5, 'Tren Ekonomi Global untuk Tahun Ini', 'Michael Anderson', 'Menganalisis perkiraan ekonomi global untuk 2023', 'Para ahli memberikan pandangan mereka tentang tren ekonomi global. Proyeksi pertumbuhan ekonomi dan peluang investasi menjadi sorotan utama dalam laporan ini.', 'http://contoh.com/finance/tren-global', 'http://contoh.com/images/finance-image.jpg', '2023-11-17 15:20:00', 'finance', '2023-11-16 19:48:03', '2023-11-16 23:27:42'),
(6, 'Masa Depan Kendaraan Listrik Terungkap', 'Sarah Lee', 'Produsen mobil terkemuka mengungkap rencana mereka', 'Dapatkan sekilas tentang masa depan kendaraan listrik. Inovasi terbaru dalam teknologi baterai dan desain membuat mobil listrik semakin menarik bagi konsumen.', 'http://contoh.com/automotive/masa-depan-ev', 'http://contoh.com/images/auto-image.jpg', '2023-11-17 17:00:00', 'automotive', '2023-11-16 19:48:18', '2023-11-16 23:28:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 5, 'auth_token', 'abb0d7105dd7151152c22df90abc786751d91b88d9841d0dd82b531924308949', '[\"*\"]', '2023-11-16 21:15:48', NULL, '2023-11-16 21:13:09', '2023-11-16 21:15:48'),
(2, 'App\\Models\\User', 6, 'auth_token', '9532961b72a970cf7c0620fdf0306ea353c674fd112ed08d8462f4649ef128fd', '[\"*\"]', '2023-11-16 23:28:03', NULL, '2023-11-16 21:18:47', '2023-11-16 23:28:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Arya', 'arya1@gmail.com', NULL, '$2y$12$/Auwqz8li985S3ugHmB/LOFMRtDQCMlU7GJBTu2nq8dDUTLxsZoqC', NULL, '2023-11-16 21:12:54', '2023-11-16 21:12:54'),
(6, 'Arya', 'aryaisnaidi01@gmail.com', NULL, '$2y$12$Xbhlw59ASFm4MbVVmCgZp.WFxkJq3bultXeJhgEvwebNYYWp/.KTu', NULL, '2023-11-16 21:18:18', '2023-11-16 21:18:18');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
