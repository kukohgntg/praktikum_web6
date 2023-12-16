-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Des 2023 pada 18.24
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12
SET
  SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

START TRANSACTION;

SET
  time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `praktikum_web6`
--
-- --------------------------------------------------------
--
-- Struktur dari tabel `failed_jobs`
--
CREATE TABLE
  `failed_jobs` (
    `id` bigint (20) UNSIGNED NOT NULL,
    `uuid` varchar(255) NOT NULL,
    `connection` text NOT NULL,
    `queue` text NOT NULL,
    `payload` longtext NOT NULL,
    `exception` longtext NOT NULL,
    `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

-- --------------------------------------------------------
--
-- Struktur dari tabel `hewans`
--
CREATE TABLE
  `hewans` (
    `id` int (11) NOT NULL,
    `nama` varchar(255) DEFAULT NULL,
    `jenis_makanan_id` int (11) DEFAULT NULL,
    `created_at` timestamp NULL DEFAULT NULL,
    `updated_at` timestamp NULL DEFAULT NULL
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

--
-- Dumping data untuk tabel `hewans`
--
INSERT INTO
  `hewans` (
    `id`,
    `nama`,
    `jenis_makanan_id`,
    `created_at`,
    `updated_at`
  )
VALUES
  (1, 'Singa', 2, NULL, NULL),
  (2, 'Kuda', 3, NULL, NULL),
  (3, 'Beruang', 1, NULL, NULL),
  (
    7,
    'Kucing',
    1,
    '2023-12-16 09:05:35',
    '2023-12-16 09:05:35'
  );

-- --------------------------------------------------------
--
-- Struktur dari tabel `jenismakanans`
--
CREATE TABLE
  `jenismakanans` (
    `id` int (11) NOT NULL,
    `nama` varchar(255) DEFAULT NULL
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jenismakanans`
--
INSERT INTO
  `jenismakanans` (`id`, `nama`)
VALUES
  (1, 'Omnivora'),
  (2, 'Karnivora'),
  (3, 'Herbivora');

-- --------------------------------------------------------
--
-- Struktur dari tabel `migrations`
--
CREATE TABLE
  `migrations` (
    `id` int (10) UNSIGNED NOT NULL,
    `migration` varchar(255) NOT NULL,
    `batch` int (11) NOT NULL
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--
INSERT INTO
  `migrations` (`id`, `migration`, `batch`)
VALUES
  (1, '2014_10_12_000000_create_users_table', 1),
  (
    2,
    '2014_10_12_100000_create_password_reset_tokens_table',
    1
  ),
  (
    3,
    '2019_08_19_000000_create_failed_jobs_table',
    1
  ),
  (
    4,
    '2019_12_14_000001_create_personal_access_tokens_table',
    1
  );

-- --------------------------------------------------------
--
-- Struktur dari tabel `password_reset_tokens`
--
CREATE TABLE
  `password_reset_tokens` (
    `email` varchar(255) NOT NULL,
    `token` varchar(255) NOT NULL,
    `created_at` timestamp NULL DEFAULT NULL
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

-- --------------------------------------------------------
--
-- Struktur dari tabel `personal_access_tokens`
--
CREATE TABLE
  `personal_access_tokens` (
    `id` bigint (20) UNSIGNED NOT NULL,
    `tokenable_type` varchar(255) NOT NULL,
    `tokenable_id` bigint (20) UNSIGNED NOT NULL,
    `name` varchar(255) NOT NULL,
    `token` varchar(64) NOT NULL,
    `abilities` text DEFAULT NULL,
    `last_used_at` timestamp NULL DEFAULT NULL,
    `expires_at` timestamp NULL DEFAULT NULL,
    `created_at` timestamp NULL DEFAULT NULL,
    `updated_at` timestamp NULL DEFAULT NULL
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `personal_access_tokens`
--
INSERT INTO
  `personal_access_tokens` (
    `id`,
    `tokenable_type`,
    `tokenable_id`,
    `name`,
    `token`,
    `abilities`,
    `last_used_at`,
    `expires_at`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    1,
    'App\\Models\\User',
    1,
    'API TOKEN',
    '772f4328050e982ccd3ce31dffe226cfae9466c91a10b4a432c4088a974c7c42',
    '[\"*\"]',
    NULL,
    NULL,
    '2023-12-16 10:14:50',
    '2023-12-16 10:14:50'
  ),
  (
    2,
    'App\\Models\\User',
    1,
    'API TOKEN',
    '6f41a3704d7ce5e7bc7bafc4ddfd6fc74e3cb21594c6f03fbfe22406d58927fc',
    '[\"*\"]',
    NULL,
    NULL,
    '2023-12-16 10:16:26',
    '2023-12-16 10:16:26'
  );

-- --------------------------------------------------------
--
-- Struktur dari tabel `users`
--
CREATE TABLE
  `users` (
    `id` bigint (20) UNSIGNED NOT NULL,
    `name` varchar(255) NOT NULL,
    `email` varchar(255) NOT NULL,
    `email_verified_at` timestamp NULL DEFAULT NULL,
    `password` varchar(255) NOT NULL,
    `remember_token` varchar(100) DEFAULT NULL,
    `created_at` timestamp NULL DEFAULT NULL,
    `updated_at` timestamp NULL DEFAULT NULL
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--
INSERT INTO
  `users` (
    `id`,
    `name`,
    `email`,
    `email_verified_at`,
    `password`,
    `remember_token`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    1,
    'kukoh',
    'kukohfr@gmail.com',
    NULL,
    '$2y$12$YP6CKTxzFED3bRvrXJD1/.0s4TGS0CWirmkXhHOCwp61PqnAkejFq',
    NULL,
    '2023-12-16 10:14:50',
    '2023-12-16 10:14:50'
  );

--
-- Indexes for dumped tables
--
--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs` ADD PRIMARY KEY (`id`),
ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `hewans`
--
ALTER TABLE `hewans` ADD PRIMARY KEY (`id`),
ADD KEY `jenis_makanan_id` (`jenis_makanan_id`);

--
-- Indeks untuk tabel `jenismakanans`
--
ALTER TABLE `jenismakanans` ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations` ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens` ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens` ADD PRIMARY KEY (`id`),
ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`, `tokenable_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users` ADD PRIMARY KEY (`id`),
ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--
--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs` MODIFY `id` bigint (20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `hewans`
--
ALTER TABLE `hewans` MODIFY `id` int (11) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 8;

--
-- AUTO_INCREMENT untuk tabel `jenismakanans`
--
ALTER TABLE `jenismakanans` MODIFY `id` int (11) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 4;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations` MODIFY `id` int (10) UNSIGNED NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 5;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens` MODIFY `id` bigint (20) UNSIGNED NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users` MODIFY `id` bigint (20) UNSIGNED NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--
--
-- Ketidakleluasaan untuk tabel `hewans`
--
ALTER TABLE `hewans` ADD CONSTRAINT `hewan_ibfk_1` FOREIGN KEY (`jenis_makanan_id`) REFERENCES `jenismakanans` (`id`);

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;