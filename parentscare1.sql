-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Nov 2023 pada 15.12
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `babydaycare2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bayi`
--

CREATE TABLE `bayi` (
  `id_penitipan` int(11) NOT NULL,
  `nama_bayi` varchar(30) NOT NULL,
  `usia_bayi` varchar(20) NOT NULL,
  `nama_ortu` varchar(30) NOT NULL,
  `alergi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `bayi`
--

INSERT INTO `bayi` (`id_penitipan`, `nama_bayi`, `usia_bayi`, `nama_ortu`, `alergi`) VALUES
(4, 'Bryan', '7 bulan', 'Omar Ardiansyah', 'Alergi susu kambing'),
(5, 'El Barack', '2 tahun', 'Marshanda', 'Alergi seafood'),
(6, 'Navasya', '5 bulan', 'Ardhito Pramono', 'Alergi susu sapi'),
(7, 'Tobby', '8 bulan', 'Bambang', 'Alergi bulu kucing'),
(8, 'Sisca', '1 tahun', 'Keisya Farasya', 'Tidak ada alergi'),
(9, 'Moana', '6 bulan', 'Ratu Purnama', 'Tidak ada alergi'),
(14, 'bsss x', '12', 'sedxa', 'saxa'),
(15, 'aaa', 'aa', 'aaa', 'aa'),
(16, 'aaa', 'aaa', 'aaa', 'aaaa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_alergi`
--

CREATE TABLE `data_alergi` (
  `Nama_alergi` varchar(50) DEFAULT NULL,
  `Cara_penanganan` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_alergi`
--

INSERT INTO `data_alergi` (`Nama_alergi`, `Cara_penanganan`) VALUES
('Alergi susu sapi', 'Berikan susu ASI yang sudah di sediakan orangtua'),
('Alergi susu kambing', 'Berikan susu formula'),
('Alergi dingin', 'Hindari ruangan ber-AC'),
('Alergi seafood', 'Hindari makanan mengandung seafood'),
('Alergi bulu kucing', 'Jauhi bayi dari kucing');

-- --------------------------------------------------------

--
-- Struktur dari tabel `parent`
--

CREATE TABLE `parent` (
  `nama` varchar(30) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `gender` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `parent`
--

INSERT INTO `parent` (`nama`, `alamat`, `gender`) VALUES
('Celine Syah', 'Jl. Pahlawan No. 22', 'Perempuan'),
('Marisya Caca', 'Jl. Gatot Subroto No. 10', 'Perempuan'),
('Joni Amber', 'Jl. Merpati No. 5', 'Laki-Laki'),
('Oemar Ardiansyah', 'Jl. Biola No. 24', 'Laki-Laki'),
('Marshanda', 'Jl. Kenanga No. 1', 'Perempuan'),
('Ardhito Pramono', 'Jl. Mawar No. 22', 'Laki-Laki'),
('Keisya Farasya', 'Jl. Abdul Hasan No. 30', 'Perempuan'),
('Ratu Purnama', 'Jl. Sungai Kunjang No. 7', 'Perempuan'),
('Friandany', 'Jl. Soetomo No. 3', 'Perempuan'),
('Bambang', 'Jl. Ahmad Yani No. 27', 'Laki-Laki');

-- --------------------------------------------------------

--
-- Struktur dari tabel `suster`
--

CREATE TABLE `suster` (
  `nama` varchar(30) NOT NULL,
  `usia` varchar(20) DEFAULT NULL,
  `alamat` varchar(50) NOT NULL,
  `lama_kerja` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `suster`
--

INSERT INTO `suster` (`nama`, `usia`, `alamat`, `lama_kerja`) VALUES
('Dewi Safitri', '24 tahun', 'Jl. KH. Abdurrahman No. 23', '6 jam'),
('Puspita Sari', '30 tahun', 'Jl. Pahlawan No. 1', '3 jam'),
('Ratna Puspita', '22 tahun', 'Jl. Sungai Dama No. 15', '4 jam'),
('Putri Indriani', '25 tahun', 'Jl. Langsat No. 70', '8 jam'),
('Nadira Amalia', '22 tahun', 'Jl. Piano No. 22', '7 jam');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`username`, `password`) VALUES
('arind', '123'),
('yaya', '123'),
('wilda', '123'),
('arind', '123'),
('yaya', '123'),
('wilda', '123');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bayi`
--
ALTER TABLE `bayi`
  ADD PRIMARY KEY (`id_penitipan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bayi`
--
ALTER TABLE `bayi`
  MODIFY `id_penitipan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
