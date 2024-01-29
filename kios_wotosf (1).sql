-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Jan 2024 pada 10.12
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
-- Database: `kios_wotosf`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `jk` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `jk`) VALUES
(1, 'Burung Kicau'),
(2, 'Makanan Burung');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `kategori_id` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `harga` double DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `ketersediaan_stok` enum('habis','tersedia') DEFAULT 'tersedia'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id`, `kategori_id`, `nama`, `harga`, `foto`, `detail`, `ketersediaan_stok`) VALUES
(9, 1, 'murai', 250000, 'murai.jpg', '<br>\r\nsuara : kenceng tidak serak <br>\r\nisian : kenari, lovebird, kapastembak, ciblek, kolibri <br>\r\numur  : 1 tahun 2 bulan <br>\r\npanjang ekor : 20cm <br>\r\nsilsilah : ternakan murai medan ekor panjang \r\n', 'tersedia'),
(10, 1, 'kapastembak', 1500000, 'kapastembak.jpg', '                        burung 2                    ', 'tersedia'),
(11, 1, 'lovebird', 200000, 'lovebird.jpg', 'burung 3', 'tersedia'),
(12, 1, 'cucakcungko', 3000000, 'cucakcungko.jpg', 'burung 4', 'tersedia'),
(13, 1, 'kenari', 2300000, 'kenari.jpg', 'buurng5', 'tersedia'),
(14, 1, 'cucakkeling', 500000, 'cucakkeling.jpg', 'jkbdasbisk', 'tersedia'),
(15, 2, 'milet', 30000, 'fKENKK2ST4j7LwyFhcGD.jpg', '<br>\r\nPAKAN JEBOL BIRAHI <br>\r\n\r\nPakan konslet untuk jebol birahi jantan dan betina.<br>\r\nDosis tinggi extra kecubung<br>\r\n\r\nRacikan dari milllet murni, ginseng, merah, wallet hutan rempah, kecubung dan herbal pilihan yg berfungsi penjebol birahi agar durasi dan gacor dalam waktu singkat & cepat\r\nKeterangan lebih lanjut tertera dikemasan botol.<br>\r\n\r\nCara pakai :<br>\r\nUntuk lovebird dewasa sebelum lomba dipakai\r\nUntuk lovebird baby berikan berturut sampai ngekek maksimal\r\nPemakaian harus disesuaikan dengan karakter dan kondisi burung kwalitas terlaris no 1<br>\r\n\r\n\r\nIsi 200 gram\r\n', 'tersedia'),
(16, 2, 'kenari set', 15000, 'KBkb0piCq44SXWK5cdME.jpg', '                                                \r\nKegunaan:\r\nMemenuhi kebutuhan gizi burung\r\nMembuat burung rajin manggung\r\nMembuat burung lincah\r\nMenjaga stamina\r\nMenjaga daya tahan tubuh burung\r\n\r\nMengandung bahan: Millet putih, millet merah, canary grass, biji niger, biji sawi, vitamin (A, D3, E, B1, B6, B12, K3, Folic Acid, Biotin, Nicotinic Acid, Pantothenic Acid, Choline), Mineral (Ca, P, Na, Cu, Zn, Mn, Fe, Mg, K, I, Se), Protein, lemak, serat, mineral, dll                                       ', 'tersedia'),
(17, 2, 'Pur Topsong', 14000, 'Tsm6qVQcBg4nJWYDnJOz.jpg', '<br>\r\nIsi Bersih Kurang Lebih 400gram<br>\r\n\r\nManfaat :<br>\r\n• Meningkatkan metabolisme burung<br>\r\n• Memperbaiki sistem pencernaan<br>\r\n• Membuat bulu halus dan mengkilap<br>\r\n• Meningkatkan volume suara burung<br>\r\n• Memenuhi kebutuhan nutrisi harian burung<br>\r\n• Menambah stamina burung<br>\r\n• Sebagai anti stress burung<br>\r\n• Mencerahkan warna bulu burung<br>\r\n• Menjaga kondisi burung selalu prima<br>\r\n• Sebagai sumber energi burung<br>\r\n', 'tersedia'),
(18, 2, 'Kroto', 5000, 'TyRIFQfCVJiSEOdkyIdW.jpg', '<br>\r\nmanfaat kroto untuk burung kicauan:<br>\r\nPemberian kroto dapat membantu menjaga kondisi burung kicauan agar tetap bugar, fit, dan rajin bunyi.<br>\r\nPada burung yang masih muda / trotolan, apalagi masih dalam tahap pemasteran, pemberian kroto sangat bermanfaat dan membantu perkembangan otak, sehingga burung lebih cepat merekam dan menguasai lagu-lagu masterannya. Karena itulah, kroto tidak bisa dilepaskan dalam perawatan hariannya.<br>\r\nBagi burung dewasa yang mengalami macet bunyi, stres, dan selalu terlihat lesu, ditandai dengan bulu-bulu yang mengembang, pemberian kroto secara rutin setiap hari bisa membantu mengatasi masalah tersebut.<br>\r\nBagi kicaumania yang sudah berpengalaman, kroto juga bisa menjadi obat yang tepat dalam mengatasi aneka masalah yang dihadapi oleh burung piaraannya.<br>', 'tersedia'),
(19, 2, 'Jangkrik', 5000, 'QC67o7VEqYDfcYaiw6Hx.jpg', '<br>\r\nManfaat Jangkrik untuk burung kicau<br>\r\nJangkrik mengandung banyak nutrisi yang baik untuk burung antara lain:<br>\r\nprotein<br>\r\nkalsium<br>\r\nlemak<br>\r\nkarbohidrat<br>\r\n', 'tersedia'),
(20, 1, 'Crucukan', 100000, 'nIYqJt9zs5oFGlisDePc.jpg', '', 'tersedia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2b$10$LuBph9mb/gAg5iaS8Y1yB.LJqUNdmMwTYm4HDJfFOfsTZcaDn12yO');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nama` (`nama`),
  ADD KEY `kategori_produk` (`kategori_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `kategori_produk` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
