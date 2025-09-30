-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 30, 2025 at 06:44 AM
-- Server version: 8.4.3
-- PHP Version: 8.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sidinyam`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('khansakhalda1604@gmail.com|127.0.0.1', 'i:1;', 1759114305),
('khansakhalda1604@gmail.com|127.0.0.1:timer', 'i:1759114305;', 1759114305);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deseases`
--

CREATE TABLE `deseases` (
  `kode_penyakit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_penyakit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail_penyakit` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deseases`
--

INSERT INTO `deseases` (`kode_penyakit`, `nama_penyakit`, `detail_penyakit`, `created_at`, `updated_at`) VALUES
('P01', 'Demam Berdarah Dengue (DBD)', '<p>Demam Berdarah Dengue (DBD) adalah penyakit infeksi virus yang disebabkan oleh virus dengue yang masuk ke dalam tubuh manusia melalui gigitan nyamuk Aedes aegypti atau Aedes albopictus. Virus ini menyerang pembuluh darah dan sistem kekebalan tubuh, sehingga menyebabkan kebocoran pembuluh darah kapiler dan penurunan jumlah trombosit secara drastis. Proses infeksi dimulai ketika nyamuk yang telah menghisap darah seseorang yang terinfeksi virus dengue menggigit orang lain, lalu menyebarkan virus tersebut ke dalam aliran darah. Penyakit ini berkembang cepat dan dapat menyebabkan komplikasi serius seperti syok dan perdarahan internal jika tidak ditangani dengan cepat.</p>', '2025-05-21 21:42:55', '2025-05-22 01:17:58'),
('P02', 'Malaria', 'Malaria adalah penyakit menular yang disebabkan oleh parasit Plasmodium, yang ditularkan ke manusia melalui gigitan nyamuk Anopheles betina yang terinfeksi. Parasit ini masuk ke dalam aliran darah dan kemudian menyerang sel-sel hati untuk berkembang biak sebelum kembali ke aliran darah dan menginfeksi sel darah merah. Siklus infeksi ini menyebabkan gejala demam yang muncul secara berkala, bersamaan dengan menggigil, keringat berlebih, dan kelelahan. Parasit malaria merusak sel darah merah sehingga dapat menyebabkan anemia berat dan komplikasi berbahaya pada organ-organ vital.', '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
('P03', 'Chikungunya', 'Chikungunya merupakan penyakit virus yang ditularkan ke manusia melalui gigitan nyamuk Aedes aegypti atau Aedes albopictus yang terinfeksi virus chikungunya. Setelah virus masuk ke dalam tubuh, sistem kekebalan tubuh merespons dengan peradangan yang menyebabkan demam tinggi dan nyeri sendi parah, terutama pada tangan, kaki, dan pergelangan. Virus ini menyerang jaringan sendi dan otot sehingga menyebabkan pembengkakan dan kekakuan yang bisa berlangsung berminggu-minggu atau bahkan berbulan-bulan. Meskipun tidak menyebabkan kematian, chikungunya dapat sangat mengganggu aktivitas sehari-hari.', '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
('P04', 'Encephalitis', 'Encephalitis atau radang otak adalah kondisi peradangan pada jaringan otak yang disebabkan oleh infeksi virus, salah satunya adalah virus ensefalitis Jepang. Virus ini ditularkan oleh nyamuk Culex yang telah membawa virus dari hewan perantara seperti babi atau burung. Setelah masuk ke dalam tubuh manusia melalui gigitan nyamuk, virus menyebar melalui aliran darah dan menyerang sistem saraf pusat, terutama otak. Hal ini menimbulkan gejala yang sangat serius seperti kejang, kebingungan, kehilangan kesadaran, dan bahkan koma. Encephalitis merupakan kondisi yang berpotensi fatal dan memerlukan penanganan medis intensif.', '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
('P05', 'Zika', 'Zika adalah penyakit yang disebabkan oleh virus Zika yang ditularkan melalui gigitan nyamuk Aedes aegypti. Setelah memasuki tubuh manusia, virus ini menyebar melalui darah dan memicu respons imun yang menyebabkan demam ringan, ruam, nyeri otot, dan konjungtivitis. Zika juga memiliki kemampuan menembus sawar darah-otak dan plasenta, sehingga berisiko tinggi bagi ibu hamil karena dapat menginfeksi janin. Infeksi Zika pada kehamilan awal dapat menyebabkan mikrosefali, yaitu kelainan perkembangan otak pada bayi yang menyebabkan ukuran kepala lebih kecil dari normal.', '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
('P06', 'Filariasis', 'Filariasis, atau yang lebih dikenal dengan sebutan kaki gajah, merupakan penyakit parasit kronis yang disebabkan oleh cacing filaria seperti Wuchereria bancrofti. Parasit ini masuk ke dalam tubuh manusia melalui gigitan nyamuk yang membawa larva cacing tersebut. Setelah masuk ke dalam tubuh, larva berkembang dan menetap di saluran limfatik (getah bening), menyebabkan penyumbatan dan peradangan kronis. Akibatnya, bagian tubuh seperti kaki, lengan, atau alat kelamin mengalami pembengkakan ekstrem yang berlangsung lama dan bersifat progresif. Penyakit ini bersifat menahun dan dapat menyebabkan disabilitas permanen jika tidak ditangani.', '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
('P07', 'Demam Kuning', 'Demam Kuning adalah penyakit virus akut yang disebabkan oleh virus demam kuning dan ditularkan ke manusia melalui gigitan nyamuk Aedes aegypti yang terinfeksi. Virus ini menyerang sel-sel hati, ginjal, dan jantung, sehingga menyebabkan kerusakan organ dan gangguan fungsi sistem tubuh. Setelah infeksi, penderita akan mengalami gejala awal seperti demam, nyeri otot, dan mual, kemudian memasuki fase toksik yang lebih serius seperti penyakit kuning (ikterus), perdarahan, dan kerusakan organ. Infeksi berat dari demam kuning dapat berakibat fatal jika tidak segera mendapatkan penanganan medis.', '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
('P08', 'Demam Berdarah Dengue (DBD)', 'Demam Berdarah Dengue (DBD) adalah penyakit infeksi virus yang disebabkan oleh virus dengue yang masuk ke dalam tubuh manusia melalui gigitan nyamuk Aedes aegypti atau Aedes albopictus. Virus ini menyerang pembuluh darah dan sistem kekebalan tubuh, sehingga menyebabkan kebocoran pembuluh darah kapiler dan penurunan jumlah trombosit secara drastis. Proses infeksi dimulai ketika nyamuk yang telah menghisap darah seseorang yang terinfeksi virus dengue menggigit orang lain, lalu menyebarkan virus tersebut ke dalam aliran darah. Penyakit ini berkembang cepat dan dapat menyebabkan komplikasi serius seperti syok dan perdarahan internal jika tidak ditangani dengan cepat.', '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
('P09', 'Malaria', 'Malaria adalah penyakit menular yang disebabkan oleh parasit Plasmodium, yang ditularkan ke manusia melalui gigitan nyamuk Anopheles betina yang terinfeksi. Parasit ini masuk ke dalam aliran darah dan kemudian menyerang sel-sel hati untuk berkembang biak sebelum kembali ke aliran darah dan menginfeksi sel darah merah. Siklus infeksi ini menyebabkan gejala demam yang muncul secara berkala, bersamaan dengan menggigil, keringat berlebih, dan kelelahan. Parasit malaria merusak sel darah merah sehingga dapat menyebabkan anemia berat dan komplikasi berbahaya pada organ-organ vital.', '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
('P10', 'Chikungunya', 'Chikungunya merupakan penyakit virus yang ditularkan ke manusia melalui gigitan nyamuk Aedes aegypti atau Aedes albopictus yang terinfeksi virus chikungunya. Setelah virus masuk ke dalam tubuh, sistem kekebalan tubuh merespons dengan peradangan yang menyebabkan demam tinggi dan nyeri sendi parah, terutama pada tangan, kaki, dan pergelangan. Virus ini menyerang jaringan sendi dan otot sehingga menyebabkan pembengkakan dan kekakuan yang bisa berlangsung berminggu-minggu atau bahkan berbulan-bulan. Meskipun tidak menyebabkan kematian, chikungunya dapat sangat mengganggu aktivitas sehari-hari.', '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
('P11', 'Encephalitis', 'Encephalitis atau radang otak adalah kondisi peradangan pada jaringan otak yang disebabkan oleh infeksi virus, salah satunya adalah virus ensefalitis Jepang. Virus ini ditularkan oleh nyamuk Culex yang telah membawa virus dari hewan perantara seperti babi atau burung. Setelah masuk ke dalam tubuh manusia melalui gigitan nyamuk, virus menyebar melalui aliran darah dan menyerang sistem saraf pusat, terutama otak. Hal ini menimbulkan gejala yang sangat serius seperti kejang, kebingungan, kehilangan kesadaran, dan bahkan koma. Encephalitis merupakan kondisi yang berpotensi fatal dan memerlukan penanganan medis intensif.', '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
('P12', 'Zika', 'Zika adalah penyakit yang disebabkan oleh virus Zika yang ditularkan melalui gigitan nyamuk Aedes aegypti. Setelah memasuki tubuh manusia, virus ini menyebar melalui darah dan memicu respons imun yang menyebabkan demam ringan, ruam, nyeri otot, dan konjungtivitis. Zika juga memiliki kemampuan menembus sawar darah-otak dan plasenta, sehingga berisiko tinggi bagi ibu hamil karena dapat menginfeksi janin. Infeksi Zika pada kehamilan awal dapat menyebabkan mikrosefali, yaitu kelainan perkembangan otak pada bayi yang menyebabkan ukuran kepala lebih kecil dari normal.', '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
('P13', 'Filariasis', 'Filariasis, atau yang lebih dikenal dengan sebutan kaki gajah, merupakan penyakit parasit kronis yang disebabkan oleh cacing filaria seperti Wuchereria bancrofti. Parasit ini masuk ke dalam tubuh manusia melalui gigitan nyamuk yang membawa larva cacing tersebut. Setelah masuk ke dalam tubuh, larva berkembang dan menetap di saluran limfatik (getah bening), menyebabkan penyumbatan dan peradangan kronis. Akibatnya, bagian tubuh seperti kaki, lengan, atau alat kelamin mengalami pembengkakan ekstrem yang berlangsung lama dan bersifat progresif. Penyakit ini bersifat menahun dan dapat menyebabkan disabilitas permanen jika tidak ditangani.', '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
('P14', 'Demam Kuning', 'Demam Kuning adalah penyakit virus akut yang disebabkan oleh virus demam kuning dan ditularkan ke manusia melalui gigitan nyamuk Aedes aegypti yang terinfeksi. Virus ini menyerang sel-sel hati, ginjal, dan jantung, sehingga menyebabkan kerusakan organ dan gangguan fungsi sistem tubuh. Setelah infeksi, penderita akan mengalami gejala awal seperti demam, nyeri otot, dan mual, kemudian memasuki fase toksik yang lebih serius seperti penyakit kuning (ikterus), perdarahan, dan kerusakan organ. Infeksi berat dari demam kuning dapat berakibat fatal jika tidak segera mendapatkan penanganan medis.', '2025-09-28 20:11:45', '2025-09-28 20:11:45');

-- --------------------------------------------------------

--
-- Table structure for table `diagnoses`
--

CREATE TABLE `diagnoses` (
  `diagnosis_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_pengguna` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int NOT NULL DEFAULT '5',
  `kode_pengguna` bigint UNSIGNED NOT NULL,
  `alamat_pengguna` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_penyakit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai_akhir` double NOT NULL,
  `hasil` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `gejala` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `indications`
--

CREATE TABLE `indications` (
  `kode_gejala` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_gejala` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `indications`
--

INSERT INTO `indications` (`kode_gejala`, `nama_gejala`, `created_at`, `updated_at`) VALUES
('G01', 'Demam', '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
('G02', 'Sakit kepala', '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
('G03', 'Lemas dan lelah', '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
('G04', 'Nafsu makan menurun', '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
('G05', 'Mual dan muntah', '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
('G06', 'Tubuh merasa dingin', '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
('G07', 'Bintik merah pada kulit', '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
('G08', 'Seluruh tubuh terasa sakit', '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
('G09', 'Tubuh pegal linu', '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
('G10', 'Sendi bengkak', '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
('G11', 'Sakit tenggorokan saat menelan', '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
('G12', 'Sakit perut', '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
('G13', 'Otot terasa sakit dan kaku saat disentuh', '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
('G14', 'Stamina menurun', '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
('G15', 'Denyut nadi terasa lemah', '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
('G16', 'Sendi terasa nyeri terutama saat digerakkan', '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
('G17', 'Leher dan punggung terasa kaku', '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
('G18', 'Mengantuk', '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
('G19', 'Mudah terangsang kejang atau kaku', '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
('G20', 'Mata merah', '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
('G21', 'Ruam kulit', '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
('G22', 'Nyeri dan pembengkakan pada area kelenjar getah bening', '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
('G23', 'Demam', '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
('G24', 'Sakit kepala', '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
('G25', 'Lemas dan lelah', '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
('G26', 'Nafsu makan menurun', '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
('G27', 'Mual dan muntah', '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
('G28', 'Tubuh merasa dingin', '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
('G29', 'Bintik merah pada kulit', '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
('G30', 'Seluruh tubuh terasa sakit', '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
('G31', 'Tubuh pegal linu', '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
('G32', 'Sendi bengkak', '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
('G33', 'Sakit tenggorokan saat menelan', '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
('G34', 'Sakit perut', '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
('G35', 'Otot terasa sakit dan kaku saat disentuh', '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
('G36', 'Stamina menurun', '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
('G37', 'Denyut nadi terasa lemah', '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
('G38', 'Sendi terasa nyeri terutama saat digerakkan', '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
('G39', 'Leher dan punggung terasa kaku', '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
('G40', 'Mengantuk', '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
('G41', 'Mudah terangsang kejang atau kaku', '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
('G42', 'Mata merah', '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
('G43', 'Ruam kulit', '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
('G44', 'Nyeri dan pembengkakan pada area kelenjar getah bening', '2025-09-28 20:11:45', '2025-09-28 20:11:45');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_04_12_134249_create_indications_table', 1),
(5, '2024_04_12_163641_create_deseases_table', 1),
(6, '2024_04_12_172927_create_rules_table', 1),
(7, '2024_04_18_103355_create_permission_tables', 1),
(8, '2024_04_20_034745_create_diagnoses_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3),
(2, 'App\\Models\\User', 4),
(1, 'App\\Models\\User', 5),
(2, 'App\\Models\\User', 6),
(3, 'App\\Models\\User', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2025-05-21 21:42:53', '2025-05-21 21:42:53'),
(2, 'user', 'web', '2025-05-21 21:42:53', '2025-05-21 21:42:53'),
(3, 'pakar', 'web', '2025-05-21 21:42:53', '2025-05-21 21:42:53');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rules`
--

CREATE TABLE `rules` (
  `kode_pengetahuan` bigint UNSIGNED NOT NULL,
  `kode_gejala` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_penyakit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cf_pakar` double NOT NULL,
  `mb_pakar` double NOT NULL,
  `md_pakar` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rules`
--

INSERT INTO `rules` (`kode_pengetahuan`, `kode_gejala`, `kode_penyakit`, `cf_pakar`, `mb_pakar`, `md_pakar`, `created_at`, `updated_at`) VALUES
(1, 'G01', 'P01', 1, 1, 0, '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
(2, 'G02', 'P01', 0.6, 0.7, 0.1, '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
(3, 'G03', 'P01', 0.6, 0.7, 0.1, '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
(4, 'G06', 'P01', 0.6, 0.7, 0.1, '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
(5, 'G07', 'P01', 0.4, 0.4, 0, '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
(6, 'G08', 'P01', 1, 1, 0, '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
(7, 'G11', 'P01', 0, 0, 0, '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
(8, 'G01', 'P02', 1, 1, 0, '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
(9, 'G02', 'P02', 1, 1, 0, '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
(10, 'G03', 'P02', 0.5, 0.5, 0, '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
(11, 'G05', 'P02', 0.6, 0.7, 0.1, '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
(12, 'G06', 'P02', 1, 1, 0, '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
(13, 'G16', 'P02', 0.1, 0.1, 0, '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
(14, 'G01', 'P03', 0.6, 0.7, 0.1, '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
(15, 'G04', 'P03', 0.1, 0.1, 0, '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
(16, 'G09', 'P03', 0.8, 0.9, 0.1, '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
(17, 'G10', 'P03', 0, 0, 0, '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
(18, 'G14', 'P03', 0.4, 0.4, 0, '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
(19, 'G15', 'P03', 0, 0, 0, '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
(20, 'G16', 'P03', 0.8, 0.9, 0.1, '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
(21, 'G01', 'P04', 1, 1, 0, '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
(22, 'G02', 'P04', 1, 1, 0, '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
(23, 'G05', 'P04', 0.6, 0.7, 0.1, '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
(24, 'G16', 'P04', 0.1, 0.1, 0, '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
(25, 'G17', 'P04', 0.6, 0.7, 0.1, '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
(26, 'G18', 'P04', 0.2, 0.2, 0, '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
(27, 'G19', 'P04', 0.4, 0.4, 0, '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
(28, 'G01', 'P05', 1, 1, 0, '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
(29, 'G02', 'P05', 0.5, 0.6, 0.1, '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
(30, 'G03', 'P05', 0.4, 0.5, 0.1, '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
(31, 'G12', 'P05', 0.6, 0.7, 0.1, '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
(32, 'G13', 'P05', 0.5, 0.6, 0.1, '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
(33, 'G16', 'P05', 0.6, 0.6, 0, '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
(34, 'G20', 'P05', 0.9, 0.9, 0, '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
(35, 'G21', 'P05', 0.6, 0.7, 0.1, '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
(36, 'G01', 'P06', 0.7, 0.7, 0, '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
(37, 'G02', 'P06', 0.5, 0.6, 0.1, '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
(38, 'G03', 'P06', 0.4, 0.5, 0.1, '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
(39, 'G13', 'P06', 1, 1, 0, '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
(40, 'G16', 'P06', 0.9, 0.9, 0, '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
(41, 'G21', 'P06', 0.4, 0.5, 0.1, '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
(42, 'G22', 'P06', 0.8, 0.8, 0, '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
(43, 'G01', 'P07', 1, 1, 0, '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
(44, 'G02', 'P07', 0.7, 0.7, 0, '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
(45, 'G04', 'P07', 0.5, 0.6, 0.1, '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
(46, 'G05', 'P07', 0.5, 0.6, 0.1, '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
(47, 'G06', 'P07', 0.7, 0.7, 0, '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
(48, 'G13', 'P07', 0.9, 0.9, 0, '2025-05-21 21:42:55', '2025-05-21 21:42:55'),
(50, 'G01', 'P01', 1, 1, 0, '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
(51, 'G02', 'P01', 0.6, 0.7, 0.1, '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
(52, 'G03', 'P01', 0.6, 0.7, 0.1, '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
(53, 'G06', 'P01', 0.6, 0.7, 0.1, '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
(54, 'G07', 'P01', 0.4, 0.4, 0, '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
(55, 'G08', 'P01', 1, 1, 0, '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
(56, 'G11', 'P01', 0, 0, 0, '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
(57, 'G01', 'P02', 1, 1, 0, '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
(58, 'G02', 'P02', 1, 1, 0, '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
(59, 'G03', 'P02', 0.5, 0.5, 0, '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
(60, 'G05', 'P02', 0.6, 0.7, 0.1, '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
(61, 'G06', 'P02', 1, 1, 0, '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
(62, 'G16', 'P02', 0.1, 0.1, 0, '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
(63, 'G01', 'P03', 0.6, 0.7, 0.1, '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
(64, 'G04', 'P03', 0.1, 0.1, 0, '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
(65, 'G09', 'P03', 0.8, 0.9, 0.1, '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
(66, 'G10', 'P03', 0, 0, 0, '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
(67, 'G14', 'P03', 0.4, 0.4, 0, '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
(68, 'G15', 'P03', 0, 0, 0, '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
(69, 'G16', 'P03', 0.8, 0.9, 0.1, '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
(70, 'G01', 'P04', 1, 1, 0, '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
(71, 'G02', 'P04', 1, 1, 0, '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
(72, 'G05', 'P04', 0.6, 0.7, 0.1, '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
(73, 'G16', 'P04', 0.1, 0.1, 0, '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
(74, 'G17', 'P04', 0.6, 0.7, 0.1, '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
(75, 'G18', 'P04', 0.2, 0.2, 0, '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
(76, 'G19', 'P04', 0.4, 0.4, 0, '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
(77, 'G01', 'P05', 1, 1, 0, '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
(78, 'G02', 'P05', 0.5, 0.6, 0.1, '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
(79, 'G03', 'P05', 0.4, 0.5, 0.1, '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
(80, 'G12', 'P05', 0.6, 0.7, 0.1, '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
(81, 'G13', 'P05', 0.5, 0.6, 0.1, '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
(82, 'G16', 'P05', 0.6, 0.6, 0, '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
(83, 'G20', 'P05', 0.9, 0.9, 0, '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
(84, 'G21', 'P05', 0.6, 0.7, 0.1, '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
(85, 'G01', 'P06', 0.7, 0.7, 0, '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
(86, 'G02', 'P06', 0.5, 0.6, 0.1, '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
(87, 'G03', 'P06', 0.4, 0.5, 0.1, '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
(88, 'G13', 'P06', 1, 1, 0, '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
(89, 'G16', 'P06', 0.9, 0.9, 0, '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
(90, 'G21', 'P06', 0.4, 0.5, 0.1, '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
(91, 'G22', 'P06', 0.8, 0.8, 0, '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
(92, 'G01', 'P07', 1, 1, 0, '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
(93, 'G02', 'P07', 0.7, 0.7, 0, '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
(94, 'G04', 'P07', 0.5, 0.6, 0.1, '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
(95, 'G05', 'P07', 0.5, 0.6, 0.1, '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
(96, 'G06', 'P07', 0.7, 0.7, 0, '2025-09-28 20:11:45', '2025-09-28 20:11:45'),
(97, 'G13', 'P07', 0.9, 0.9, 0, '2025-09-28 20:11:45', '2025-09-28 20:11:45');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('zSSnX83YLpRr5zVgbnmlEyxpWXxW9gI8gQRdb0sR', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNmhBTzRuT0w1bmJFQzh4ZUdqVFI4VVRxdE5YSDBMTnQwcTkwc25XVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1759212091);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int NOT NULL DEFAULT '0',
  `number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `age`, `number`, `email`, `address`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'admin', 20, '085731013100', 'dzakyalfikridesember@gmail.com', 'Purwokerto', '2025-09-28 20:11:44', '$2y$12$H1Y/ucO0UHTI8DDxxGIwLOMwMPUy2fnOvEWox9mwSrJ47fOYQwzZS', 'mBNP3KNhMIEdVoL5ku4WmxqvR11Xu7a7x8FemRjjNrEBfYdnFD1lKmNy9PUd', '2025-09-28 20:11:44', '2025-09-28 20:11:44'),
(6, 'user', 20, '085731013101', 'dzaky.alfikri@mhs.unsoed.ac.id', 'Purbalingga', '2025-09-28 20:11:44', '$2y$12$QFK4m6P5YCpcL2MuoyVt2ueT1pgsgTvWw/avphvqCeNcE3cydpN92', 'PJXIV9Xhvw', '2025-09-28 20:11:44', '2025-09-28 20:11:44'),
(7, 'pakar', 30, '081234567890', 'alfiproduction28@gmail.com', 'Yogyakarta', '2025-09-28 20:11:44', '$2y$12$ZIxZ6rlFA7U1/N9K.qbIMO5s9agwvzUXSWbn6fayGiEsLk7S5ffSa', 'IHkjtbNFYp', '2025-09-28 20:11:45', '2025-09-28 20:11:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `deseases`
--
ALTER TABLE `deseases`
  ADD PRIMARY KEY (`kode_penyakit`);

--
-- Indexes for table `diagnoses`
--
ALTER TABLE `diagnoses`
  ADD PRIMARY KEY (`diagnosis_id`),
  ADD KEY `diagnoses_kode_pengguna_foreign` (`kode_pengguna`),
  ADD KEY `diagnoses_kode_penyakit_foreign` (`kode_penyakit`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `indications`
--
ALTER TABLE `indications`
  ADD PRIMARY KEY (`kode_gejala`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `rules`
--
ALTER TABLE `rules`
  ADD PRIMARY KEY (`kode_pengetahuan`),
  ADD KEY `rules_kode_penyakit_foreign` (`kode_penyakit`),
  ADD KEY `rules_kode_gejala_foreign` (`kode_gejala`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_number_unique` (`number`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rules`
--
ALTER TABLE `rules`
  MODIFY `kode_pengetahuan` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `diagnoses`
--
ALTER TABLE `diagnoses`
  ADD CONSTRAINT `diagnoses_kode_pengguna_foreign` FOREIGN KEY (`kode_pengguna`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `diagnoses_kode_penyakit_foreign` FOREIGN KEY (`kode_penyakit`) REFERENCES `deseases` (`kode_penyakit`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rules`
--
ALTER TABLE `rules`
  ADD CONSTRAINT `rules_kode_gejala_foreign` FOREIGN KEY (`kode_gejala`) REFERENCES `indications` (`kode_gejala`),
  ADD CONSTRAINT `rules_kode_penyakit_foreign` FOREIGN KEY (`kode_penyakit`) REFERENCES `deseases` (`kode_penyakit`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
