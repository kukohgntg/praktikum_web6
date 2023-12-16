-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Des 2023 pada 13.40
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `praktikum_web5-1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `hewans`
--

CREATE TABLE `hewans` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `jenis_makanan_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `hewans`
--

INSERT INTO `hewans` (`id`, `nama`, `jenis_makanan_id`) VALUES
(1, 'Singa', 2),
(2, 'Kuda', 3),
(3, 'Beruang', 1),
(6, 'Capibara', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenismakanans`
--

CREATE TABLE `jenismakanans` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jenismakanans`
--

INSERT INTO `jenismakanans` (`id`, `nama`) VALUES
(1, 'Omnivora'),
(2, 'Karnivora'),
(3, 'Herbivora');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `hewans`
--
ALTER TABLE `hewans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jenis_makanan_id` (`jenis_makanan_id`);

--
-- Indeks untuk tabel `jenismakanans`
--
ALTER TABLE `jenismakanans`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `hewans`
--
ALTER TABLE `hewans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `jenismakanans`
--
ALTER TABLE `jenismakanans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `hewans`
--
ALTER TABLE `hewans`
  ADD CONSTRAINT `hewan_ibfk_1` FOREIGN KEY (`jenis_makanan_id`) REFERENCES `jenismakanans` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
