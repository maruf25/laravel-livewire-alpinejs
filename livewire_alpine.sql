-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2023 at 03:56 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `livewire_alpine`
--

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Class1', '2023-02-12 06:52:55', '2023-02-12 06:52:55'),
(2, 'Class2', '2023-02-12 06:52:55', '2023-02-12 06:52:55'),
(3, 'Class3', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(4, 'Class4', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(5, 'Class5', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(6, 'Class6', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(7, 'Class7', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(8, 'Class8', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(9, 'Class9', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(10, 'Class10', '2023-02-12 06:52:56', '2023-02-12 06:52:56');

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_02_12_130137_create_classes_table', 1),
(6, '2023_02_12_130332_create_sections_table', 1),
(7, '2023_02_12_131050_create_students_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `class_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Section A', '2023-02-12 06:52:55', '2023-02-12 06:52:55'),
(2, 1, 'Section B', '2023-02-12 06:52:55', '2023-02-12 06:52:55'),
(3, 2, 'Section A', '2023-02-12 06:52:55', '2023-02-12 06:52:55'),
(4, 2, 'Section B', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(5, 3, 'Section A', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(6, 3, 'Section B', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(7, 4, 'Section A', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(8, 4, 'Section B', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(9, 5, 'Section A', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(10, 5, 'Section B', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(11, 6, 'Section A', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(12, 6, 'Section B', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(13, 7, 'Section A', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(14, 7, 'Section B', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(15, 8, 'Section A', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(16, 8, 'Section B', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(17, 9, 'Section A', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(18, 9, 'Section B', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(19, 10, 'Section A', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(20, 10, 'Section B', '2023-02-12 06:52:56', '2023-02-12 06:52:56');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_id` bigint(20) UNSIGNED NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `class_id`, `section_id`, `name`, `email`, `phone_number`, `address`, `created_at`, `updated_at`) VALUES
(6, 1, 2, 'Cassandra White', 'kunze.agustina@example.com', '+16207481927', '5513 Gaylord Center\nNew Shania, NH 85827-8167', '2023-02-12 06:52:55', '2023-02-12 06:52:55'),
(7, 1, 2, 'Prof. Rubie Ruecker', 'torey60@example.com', '(956) 517-8169', '226 Gerhold Glens\nNew Marcuschester, CT 18020-9172', '2023-02-12 06:52:55', '2023-02-12 06:52:55'),
(8, 1, 2, 'Prof. Heloise Hills', 'gladys.cronin@example.com', '628.507.7482', '70311 Verdie Crest Suite 732\nNew Myrna, DE 72497', '2023-02-12 06:52:55', '2023-02-12 06:52:55'),
(9, 1, 2, 'Ona Bogan', 'evalyn24@example.org', '520-736-7332', '22280 Jalon Wall\nNorth Cliftonstad, DC 89995', '2023-02-12 06:52:55', '2023-02-12 06:52:55'),
(10, 1, 2, 'Antoinette Watsica', 'catherine91@example.net', '+1 (458) 298-6503', '781 Mills Mission Apt. 707\nNew Haroldtown, IL 25927', '2023-02-12 06:52:55', '2023-02-12 06:52:55'),
(11, 2, 3, 'Burnice Renner', 'kdare@example.org', '+1-614-490-3217', '9060 Price Summit Apt. 249\nPort Abe, AK 99469', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(12, 2, 3, 'Melany Thiel', 'ziemann.gerhard@example.net', '(573) 924-8453', '4724 Olin Stream Suite 991\nSmithamview, MI 20603', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(13, 2, 3, 'Maxine Stanton', 'sframi@example.net', '+17202772990', '6106 Brown Circle\nNorth Tatumshire, MA 21509', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(14, 2, 3, 'Mrs. Eleonore Reichel I', 'reichel.jane@example.com', '+1-934-772-3973', '2122 Jody Flats Suite 812\nWest Ardithview, NC 89260-1475', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(15, 2, 3, 'Robin Greenholt Sr.', 'iliana94@example.org', '361-443-9169', '499 Bauch Haven\nWest Joeland, NY 16372-0738', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(16, 2, 4, 'Jazlyn Berge DDS', 'okon.anika@example.com', '+1-475-907-5479', '182 Kunde Cape Suite 563\nEast Lera, IN 22303-4944', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(17, 2, 4, 'Dr. Akeem Thiel', 'fred48@example.com', '754.690.6395', '809 Conner Canyon\nSouth Valentina, WY 53258-6548', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(18, 2, 4, 'Allene Hamill', 'acorwin@example.org', '1-413-538-0074', '2752 Teagan Turnpike Apt. 250\nBatzport, WY 00148-9374', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(19, 2, 4, 'Jarvis Koch', 'kozey.alexandria@example.org', '(360) 543-8139', '294 Parisian Gateway\nColtview, NV 87388-9942', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(20, 2, 4, 'Mr. Tyrique Gusikowski V', 'kiarra08@example.com', '+1-346-750-5515', '843 Towne Roads Suite 572\nSouth Albertville, NV 71356-9503', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(21, 3, 5, 'Ladarius Morissette', 'tdickinson@example.net', '+15869856113', '119 Ashlee Motorway\nPort Raphaelle, ME 81039-1200', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(22, 3, 5, 'Prof. Dallin Frami Sr.', 'ahmed28@example.net', '+1-872-868-0561', '159 DuBuque Fork Suite 632\nGibsonchester, KY 80596', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(23, 3, 5, 'Noemy Beahan', 'flatley.kris@example.com', '1-469-300-6209', '100 Antonette Villages\nRobertstown, MI 82634-6999', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(24, 3, 5, 'Prof. Bennett Ruecker', 'schimmel.doris@example.com', '+1-502-242-5204', '44873 Briana Branch\nEast Lydiaberg, NE 48236-0926', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(25, 3, 5, 'Chesley Homenick', 'fanny.lubowitz@example.com', '1-260-724-4511', '38532 Liza Forges\nNorth Velda, GA 30042-2941', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(26, 3, 6, 'Alyce Kovacek', 'cyril07@example.org', '+1-984-409-5599', '7273 Jared Landing\nWaelchistad, IN 46656', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(27, 3, 6, 'Prof. Oswald Crist Jr.', 'jberge@example.net', '1-402-638-3360', '813 Bernita Ville Suite 766\nNew Zackeryberg, WI 59715-6017', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(28, 3, 6, 'Sarai Wolf', 'taylor91@example.org', '458-425-7161', '431 Dietrich Coves Suite 298\nNorth Carmeloborough, ME 03838-1707', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(29, 3, 6, 'Aurelio Gusikowski', 'leuschke.rudolph@example.net', '+1-352-850-1616', '47412 Alisha Ramp\nFishertown, IL 61856-8997', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(30, 3, 6, 'Elisa Cole DVM', 'hickle.vernice@example.org', '1-651-533-4746', '3161 Beau Estate\nPort Nick, NV 77621-5792', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(31, 4, 7, 'Zechariah Ferry', 'kuvalis.bradly@example.net', '517.234.8080', '2867 Hammes Island Apt. 792\nNorth Brookside, CT 63567-5788', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(32, 4, 7, 'Solon Boehm', 'isaiah.damore@example.org', '+1-240-828-3150', '34957 Kristy Harbors\nSylvesterborough, TN 92016-6238', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(33, 4, 7, 'Delphine McKenzie', 'edmond.schuster@example.org', '+1-559-576-8386', '96656 Zboncak Estates\nEast Katlynn, OH 71713', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(34, 4, 7, 'Prof. Zechariah Gerlach', 'reggie66@example.org', '(302) 955-5709', '46841 Wolf Station\nKundeshire, AL 89549-2110', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(35, 4, 7, 'Dr. Frederik Ernser', 'shayna.ohara@example.net', '+1-561-343-9162', '54763 Elinor Club Suite 352\nNorth Elvera, PA 14098', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(36, 4, 8, 'Pearlie Cormier', 'kerluke.clarabelle@example.com', '+1.341.453.9324', '2854 Sawayn Mission\nWest Americo, TX 92453', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(37, 4, 8, 'Otho Batz', 'nhaley@example.com', '774-486-7664', '625 Jody Lake Apt. 768\nSheldonstad, VA 03561', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(38, 4, 8, 'Dr. Eduardo Brekke', 'ward.nelle@example.org', '+1.253.445.9781', '3399 Melba Shores Suite 387\nPort Jessie, MI 21362-3723', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(39, 4, 8, 'Earnestine Huels', 'tjohns@example.net', '803-716-9272', '9849 Franz Terrace\nPort Elainaton, WI 26381', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(40, 4, 8, 'Mrs. Destini Haag', 'brown.cassandra@example.net', '(360) 752-2446', '93134 Taylor Keys Suite 023\nJarredville, RI 76765', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(41, 5, 9, 'Mr. Tomas Robel', 'valentine.lind@example.net', '+1-678-613-6221', '4466 Gino Parks\nWest Myriamland, NV 58698-6405', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(42, 5, 9, 'Alexandria Lubowitz', 'qsimonis@example.com', '+1.959.776.3441', '95673 Chesley Islands Apt. 703\nNew Gerhard, VA 90690-9463', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(43, 5, 9, 'Prof. Burley Quigley', 'gerhard.hoeger@example.org', '1-828-330-1977', '70994 Jade Springs Apt. 651\nColemantown, SD 97132-3998', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(44, 5, 9, 'Prof. Earnest Kemmer', 'eileen.swift@example.com', '347.303.3125', '1526 Lueilwitz Ports\nKuphalburgh, CT 77895-6840', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(45, 5, 9, 'Mr. August Bins PhD', 'ashlee.muller@example.net', '+1.747.302.1715', '79208 Percy Ford\nPort Raphaelle, PA 21549', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(46, 5, 10, 'Toney Wisozk', 'ybrekke@example.net', '+1 (623) 735-9291', '788 Lyric Branch Apt. 232\nLake Joesph, NM 78604', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(47, 5, 10, 'Alverta Olson', 'ashlynn.rau@example.org', '1-678-997-0101', '1357 Bud Wall Apt. 952\nZulauffort, MD 33152', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(48, 5, 10, 'Demetris Bahringer', 'qkihn@example.net', '1-314-409-7350', '88834 Parker Wall Suite 038\nFeilborough, NY 65991', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(49, 5, 10, 'Jacques Gottlieb III', 'ellsworth.pagac@example.net', '(351) 217-5163', '8087 Tremaine Ranch\nJanicefort, DC 09544', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(50, 5, 10, 'Cruz Cronin', 'cboyle@example.com', '210-334-6108', '43860 Samir Trace\nSouth Javonte, FL 57962-1024', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(51, 6, 11, 'Jarod Tremblay', 'medhurst.pascale@example.org', '+1-973-732-4916', '987 Hegmann Bridge\nEast Edmond, WI 09124', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(52, 6, 11, 'Mrs. Amy Conroy', 'santiago83@example.net', '(336) 842-5407', '399 Gordon Club\nO\'Connellland, NE 84993-2005', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(53, 6, 11, 'Alexane Kertzmann', 'evelyn.bayer@example.org', '+14459186679', '6405 Brenda Track Suite 643\nDestinimouth, NV 43881', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(54, 6, 11, 'Mrs. Destany Wyman', 'lsipes@example.com', '1-561-972-3826', '866 Lane Way Apt. 155\nPort Baylee, UT 35098', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(55, 6, 11, 'Waldo Halvorson III', 'reichel.pearlie@example.com', '+18287982851', '8456 Spinka Rest\nBorischester, VT 09300', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(56, 6, 12, 'Conner Larkin I', 'osinski.kamren@example.net', '+17752657542', '19284 McLaughlin Brooks Apt. 220\nNorth Raymundoview, MD 53492-1506', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(57, 6, 12, 'Aiden Hill', 'dock.bayer@example.org', '(785) 293-5227', '56742 Leannon Common Suite 229\nNorth Maximeport, DC 74082', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(58, 6, 12, 'Clement Will Jr.', 'auer.merlin@example.net', '740.540.7963', '95954 Myrtle Trafficway Apt. 470\nDooleyfort, MN 62517-0843', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(59, 6, 12, 'Dr. Enoch Tillman', 'rempel.julian@example.org', '678.475.1589', '98872 Johns Village\nSkileschester, WV 70750', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(60, 6, 12, 'Raymundo Corwin', 'klocko.danyka@example.com', '(615) 324-3740', '109 Miller Burg\nChamplinside, MO 80663', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(61, 7, 13, 'Caterina Mayer', 'ian36@example.com', '315.303.9492', '969 Ethyl Islands\nWillmsstad, NJ 93208', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(62, 7, 13, 'Josiane O\'Keefe I', 'skiles.syble@example.net', '1-949-544-0902', '426 Sophie Knolls\nHoppefort, MO 99621', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(63, 7, 13, 'Nestor Schowalter', 'sschimmel@example.net', '1-984-737-2436', '3565 Franecki Divide Suite 796\nHellerview, TX 01106-1717', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(64, 7, 13, 'Johanna Rodriguez', 'beahan.cameron@example.net', '+1 (781) 633-1973', '82119 Alvena Spurs\nWest Armandobury, NM 98290', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(65, 7, 13, 'Yadira Stamm IV', 'rafaela07@example.org', '240.284.3351', '65670 Wehner Burg\nPort Israelshire, WY 49180-6062', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(66, 7, 14, 'Evie Gorczany', 'estefania.breitenberg@example.com', '(680) 538-8600', '5918 Koelpin Lodge\nMaxfurt, NH 00271-7182', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(67, 7, 14, 'Donnie Weissnat', 'dbeatty@example.net', '704-548-8385', '637 Hodkiewicz Garden\nSandyport, WV 34152', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(68, 7, 14, 'Julien Wiegand', 'amayert@example.net', '+1 (515) 859-6829', '843 Bennie Corner\nBlandaside, OH 25769-9724', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(69, 7, 14, 'Mrs. Vicenta Corwin', 'jones.clinton@example.org', '(716) 903-4640', '847 Nienow Rapids Apt. 497\nWilkinsonstad, KS 24916', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(70, 7, 14, 'Flossie Kiehn', 'theo.luettgen@example.net', '445.712.4335', '83857 Haley Expressway\nWest Alexandreashire, NM 04847-7286', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(71, 8, 15, 'Maritza Kris', 'brown.price@example.net', '(301) 496-2791', '440 Hessel Port Suite 390\nMaximusborough, SD 93148-0509', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(72, 8, 15, 'Sibyl Johnston', 'hwill@example.org', '+1-931-297-1367', '343 Jazmin Spring\nLake Aglae, UT 00067-1144', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(73, 8, 15, 'Jasmin Conroy', 'telly84@example.net', '732.916.4032', '80972 Rodriguez Crossroad\nEast Arlo, TN 84080-2091', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(74, 8, 15, 'Cale Hammes DDS', 'carroll.devon@example.net', '+18069605825', '230 Chelsie Path Suite 693\nNorth Maximus, KY 77131-4205', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(75, 8, 15, 'Alexandre Terry', 'owest@example.net', '281.318.2938', '4874 Roy Lodge Suite 494\nRolfsonberg, RI 86815-4995', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(76, 8, 16, 'Mrs. Queen Tillman Jr.', 'gerard.strosin@example.com', '+15087487365', '7728 Nikolaus Locks\nCarterview, SC 94357-8636', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(77, 8, 16, 'Rae Ullrich', 'douglas.johathan@example.com', '336-816-3690', '248 Dickens Harbor\nEast Vernaborough, OK 92313-5526', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(78, 8, 16, 'Quinn Doyle V', 'kassandra01@example.org', '209.410.2656', '86963 Kraig Drives Apt. 397\nSouth Meagan, NV 79963-7622', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(79, 8, 16, 'Leonie Boyer', 'sheridan99@example.com', '610.334.9838', '456 Powlowski Plaza\nVirgiehaven, RI 87518', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(80, 8, 16, 'Amaya Ebert', 'boreilly@example.com', '+1-650-572-0384', '3825 Orn Valley\nLake Obiemouth, UT 98082-0031', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(81, 9, 17, 'Camren Rohan Jr.', 'sigurd88@example.com', '+1 (208) 684-3157', '331 Bins Fords Suite 875\nLake Okey, SC 85169-1221', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(82, 9, 17, 'Frank Cormier', 'pdach@example.net', '872.593.3103', '787 Fadel Knolls\nSchoenchester, CO 16108', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(83, 9, 17, 'Karlee Zemlak Sr.', 'lilian40@example.net', '+1-385-452-6619', '91441 Block Views Suite 661\nSouth Consuelo, MA 21544', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(84, 9, 17, 'Jeramy Brakus', 'reece.robel@example.net', '(317) 825-8603', '2012 Augustine Ways\nZiemebury, MN 79383', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(85, 9, 17, 'Quincy Schuster II', 'qbatz@example.com', '(925) 502-2331', '511 Katlyn Path\nEast Sidton, MN 62813', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(86, 9, 18, 'Prof. Anahi Dietrich', 'elmo.shanahan@example.net', '+1-979-322-3518', '66693 Champlin Common Apt. 634\nCristobalside, NM 64025-9614', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(87, 9, 18, 'Dr. Jack Mante', 'wuckert.kaci@example.org', '279-292-3988', '5989 Friesen Unions Suite 944\nWest Clarestad, CT 11382', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(88, 9, 18, 'Melvina Steuber', 'emoen@example.org', '1-737-689-9011', '268 Dach Fall\nSouth Domenicmouth, MA 58564', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(89, 9, 18, 'Mrs. Loyce Effertz DDS', 'coralie64@example.net', '1-223-485-6054', '2049 Schinner Common Apt. 017\nLake Haleigh, NM 97260', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(90, 9, 18, 'Demarco Schroeder', 'mabshire@example.com', '1-908-518-8600', '4335 Crona Drive\nPowlowskiville, DE 05353', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(91, 10, 19, 'Dr. Emilia Sanford III', 'odessa.stanton@example.com', '+1-575-272-0139', '701 Pfannerstill Grove Apt. 180\nNew Kendra, TN 18189', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(92, 10, 19, 'Wilmer Bayer', 'alycia78@example.org', '+1.743.588.4674', '16722 Mohamed Lodge\nLake Coleborough, AK 69195', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(93, 10, 19, 'Prof. Shanel Swift I', 'garnett97@example.com', '+1-346-912-3399', '857 Schmidt Union\nPort Rowlandbury, NV 42733-8372', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(94, 10, 19, 'Rae Sauer', 'langosh.camylle@example.com', '(669) 429-1128', '5731 Dickens Mount\nDarianaside, MS 27542-8392', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(95, 10, 19, 'Kade Schumm', 'eaufderhar@example.org', '(352) 954-3321', '609 Pouros Lodge Apt. 503\nPort Florianside, NV 17310', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(96, 10, 20, 'Prof. Kody Ullrich', 'king11@example.org', '608-462-3893', '980 Nicklaus Mills\nEast Dannieburgh, UT 75227', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(97, 10, 20, 'Tre Blanda III', 'orlando49@example.org', '(252) 556-6374', '43681 Patricia Walks Suite 156\nPort Glen, AR 51980', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(98, 10, 20, 'Ivory Blick', 'muriel.bednar@example.net', '+1-848-428-8367', '91798 Goyette Extension Suite 064\nBrennatown, MI 91290-4843', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(99, 10, 20, 'Alysha Grant I', 'nora.kohler@example.net', '+1-928-868-3938', '27944 Hamill Pine\nColbyberg, AK 35632-0819', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(100, 10, 20, 'Edna Hahn', 'rachelle52@example.net', '689.490.2239', '59381 Heaney Crescent Suite 509\nBradtkeborough, MD 97736-2090', '2023-02-12 06:52:56', '2023-02-12 06:52:56'),
(101, 1, 1, 'susil', 'susilo@gamil.com', '872123', 'cemani', '2023-02-13 23:15:04', '2023-02-13 23:15:04'),
(108, 3, 6, 'susil', 'susilo1@gamil.com', '872123123123', 'cemani', '2023-02-13 23:45:25', '2023-02-13 23:45:25'),
(110, 1, 1, 'susil', 'susilo2@gamil.com', '8721231231123', 'cemani', '2023-02-14 02:31:16', '2023-02-14 02:31:16'),
(111, 1, 1, 'mnja', 'mnja@gmail.com', '910832', 'adskkl', '2023-02-14 06:44:48', '2023-02-14 06:44:48'),
(112, 10, 19, 'war', 'we@gail.com', '89172', 'mkal', '2023-02-14 07:08:10', '2023-02-14 19:34:32'),
(113, 9, 17, 'asd', 'asd@gmail.com', 'asd', 'asd', '2023-02-16 04:06:14', '2023-02-16 04:06:14'),
(114, 5, 9, 'john doe', 'johndoe@gmail.com', '123123', 'klajsdajlkasdl', '2023-02-16 07:11:33', '2023-02-16 07:11:33');

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sections_class_id_foreign` (`class_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_email_unique` (`email`),
  ADD UNIQUE KEY `students_phone_number_unique` (`phone_number`),
  ADD KEY `students_class_id_foreign` (`class_id`),
  ADD KEY `students_section_id_foreign` (`section_id`);

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
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `sections_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `students_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
