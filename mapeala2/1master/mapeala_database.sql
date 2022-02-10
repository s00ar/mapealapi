-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2018 at 07:23 AM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pp_hospital_finder`
--

-- --------------------------------------------------------

--
-- Table structure for table `hospitals`
--

CREATE TABLE `hospitals` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `speciality` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hospitals`
--

INSERT INTO `hospitals` (`id`, `name`, `speciality`, `img`, `address`, `contact`, `created_at`, `updated_at`) VALUES
(1, 'Irwin Thiel', 'Malika Lueilwitz', 'c8416240b7d3a8ab517f16b2418380a6.jpg', '9180 Considine Shoal\nBerneiceport, OK 01527', '881.756.5592', '2018-11-07 00:32:30', '2018-11-07 00:32:30'),
(2, 'Grayson Jacobi', 'Vergie Mayer', '03ace6666f5f91d5cee8b0c5918692c3.jpg', '809 Fay Dale Apt. 943\nMaxwellmouth, NV 49170-1049', '+17403885751', '2018-11-07 00:32:30', '2018-11-07 00:32:30'),
(3, 'Bridget Rowe', 'Marjolaine Willms', '106434994ab786375732a3887e3fe7da.jpg', '6905 Steuber Falls\nPort Cydney, AR 61962', '749-832-3794 x37879', '2018-11-07 00:32:30', '2018-11-07 00:32:30'),
(4, 'Cameron Muller', 'Rudy Blanda', '359ebfd81dac5e5df730466cfb89d899.jpg', '6901 Alek Extensions\nLake Josefinaside, CO 52922-9185', '(550) 323-6640 x912', '2018-11-07 00:32:30', '2018-11-07 00:32:30'),
(5, 'Pietro McCullough Jr.', 'Marjolaine Mitchell II', 'c8ba6b207c39ce99647fe4e51bedd0aa.jpg', '183 Terry Loaf Apt. 449\nTiannachester, OK 12990-5520', '(649) 792-7577', '2018-11-07 00:32:31', '2018-11-07 00:32:31'),
(6, 'Gerald Carter', 'Tremaine Macejkovic Sr.', '3038c161c0a2a72cf87846cefa662631.jpg', '35938 Toy Wells Suite 860\nParkerfort, NM 31951-6019', '348.224.9853', '2018-11-07 00:32:31', '2018-11-07 00:32:31'),
(7, 'Emmanuel Boehm Jr.', 'Jayda Reynolds', '2d46a82debb3f917c798a8fef9e999ea.jpg', '102 Nikolaus Prairie Suite 610\nCreminland, OR 44124', '(447) 545-7814 x726', '2018-11-07 00:32:31', '2018-11-07 00:32:31'),
(8, 'Cleveland Spinka', 'Breana Pouros', '4f27b80865fab7c806d2c5060e285f94.jpg', '68591 Asa Plain\nNorth Emerystad, LA 33726-2106', '1-686-481-8958', '2018-11-07 00:32:31', '2018-11-07 00:32:31'),
(9, 'Grover Cummerata', 'Max O\'Conner', '084e0f744203e33a5931a2a3f93ce111.jpg', '481 Koch Groves\nLake Maxie, HI 98347', '1-371-973-3080', '2018-11-07 00:32:31', '2018-11-07 00:32:31'),
(10, 'Ms. Felicita Hane', 'Roxane Rosenbaum', '35f09047500eb1f025cedce415355e80.jpg', '150 Kozey Plains Suite 980\nDaughertyshire, LA 67883-9002', '390.291.2479 x3886', '2018-11-07 00:32:31', '2018-11-07 00:32:31'),
(11, 'Theodora Osinski', 'Marjory Wisozk', '0c7a058098a7ad359a5663e13e476921.jpg', '400 Von Villages Apt. 574\nThielville, NC 43876-7023', '208.688.4882 x5317', '2018-11-07 00:32:31', '2018-11-07 00:32:31'),
(12, 'Darian Walker', 'Prof. Henderson Kuhn', '8abeb01e188e13799cd6d57f10252f26.jpg', '6660 Alva Grove\nBernhardland, OK 70071-8299', '(974) 255-4952 x329', '2018-11-07 00:32:31', '2018-11-07 00:32:31'),
(13, 'Brycen Bins V', 'Prof. Dax Beier', '39befad2191adcf79c9715bad9e9a44d.jpg', '5029 Tillman Key Suite 692\nPort Doug, WI 55720-7447', '+16947939949', '2018-11-07 00:32:31', '2018-11-07 00:32:31'),
(14, 'Kenton McGlynn', 'Okey Sanford', 'e1210af5496caedae5af2a17d9deed28.jpg', '564 Bahringer Trafficway Suite 283\nEast Chauncey, NC 66298-3138', '+1.867.204.9166', '2018-11-07 00:32:31', '2018-11-07 00:32:31'),
(15, 'Maribel Lesch', 'Ceasar Watsica Jr.', '31d5e596676bb4de1e3aef9150265061.jpg', '45832 Catherine Fall\nAishafurt, MD 01464-6028', '(254) 507-2602 x0015', '2018-11-07 00:32:31', '2018-11-07 00:32:31'),
(16, 'Prof. Vladimir Murphy DDS', 'Alexys Stracke', '4e1c805ab6ca5cef8c1019d9033e2991.jpg', '44293 Yundt Fords\nKesslerhaven, CO 23528-7304', '529.838.9474', '2018-11-07 00:32:31', '2018-11-07 00:32:31'),
(17, 'Mazie Lynch', 'Chanel Homenick', 'fb20670caf3a2e4f87dbb6ac122a1a6e.jpg', '23227 Kessler Road Suite 709\nLavonneton, MN 13645', '1-821-406-7074', '2018-11-07 00:32:31', '2018-11-07 00:32:31'),
(18, 'Enoch Wolff', 'Miss Dandre Strosin II', 'b940845a8edb246614c096f67a65123e.jpg', '24049 O\'Reilly Center\nSouth Hoytview, VT 44370-3360', '+1.917.677.5405', '2018-11-07 00:32:31', '2018-11-07 00:32:31'),
(19, 'Bart Price', 'Ms. Liana Konopelski', '005f21f8ef8b9da5734dedeab7edcd79.jpg', '5556 Tomasa Summit Suite 198\nMayertton, OR 29666', '729-600-5820', '2018-11-07 00:32:31', '2018-11-07 00:32:31'),
(20, 'Gerardo Skiles', 'Jeanne Schiller PhD', 'cf5c98a94acef803ac9ec150093b6f63.jpg', '278 Yazmin Spurs\nSipestown, WY 89330-1428', '867.820.6867', '2018-11-07 00:32:31', '2018-11-07 00:32:31'),
(21, 'Elinor Daniel', 'Mr. Lorenz Terry Sr.', 'ad13d545c7f58489e1d609323e6d0ecf.jpg', '594 Sammy Street\nMarianberg, IL 16762-5944', '480.303.6169', '2018-11-07 00:32:32', '2018-11-07 00:32:32'),
(22, 'Ethan Hilpert', 'Cole Predovic', 'a304eb3aa0c59e2a027bdbcb3d06fad7.jpg', '407 Henri Points\nFeltonhaven, SC 65800', '(258) 898-4705', '2018-11-07 00:32:32', '2018-11-07 00:32:32'),
(23, 'Myrl DuBuque', 'Crystel Lesch', 'bb7f14d77c85f79c655c410a4c091650.jpg', '85897 Shields Plain Suite 685\nNorth Retta, HI 61985', '1-829-655-3508 x874', '2018-11-07 00:32:32', '2018-11-07 00:32:32'),
(24, 'Alfredo Kovacek I', 'Dahlia Veum I', '19c324ac5d5e4843f3566970a947960d.jpg', '43013 Beverly Trafficway Apt. 583\nOthashire, AR 85637-4945', '863-788-3309 x5313', '2018-11-07 00:32:32', '2018-11-07 00:32:32'),
(25, 'Deven Bernier', 'Prof. Cristopher Baumbach PhD', 'd7995b73338d83048d0f45da7b977de5.jpg', '7985 Rosenbaum Highway\nLake Claudemouth, NV 02789-6636', '1-927-302-0075', '2018-11-07 00:32:32', '2018-11-07 00:32:32'),
(26, 'Mrs. Angelita Herzog', 'Ms. Eloise Romaguera', 'a7bc2e744a02d3cce7e744dd9e13c1a4.jpg', '899 Ricardo Ridge Apt. 459\nTrompside, FL 41251-7589', '1-240-345-9874 x50828', '2018-11-07 00:32:32', '2018-11-07 00:32:32'),
(27, 'Ed Tremblay', 'Raina Harris', '1765daedb5d061d80baf19d448a24fb9.jpg', '3043 Fred Parkways Apt. 178\nNew Amiyaberg, NV 98632-3413', '1-560-374-1759 x7167', '2018-11-07 00:32:32', '2018-11-07 00:32:32'),
(28, 'Nicholaus Dach IV', 'Peter Blanda', '03b8dd0a6bcb16e859fab8fbd3ea0720.jpg', '45890 Ferry Overpass Apt. 349\nSteuberburgh, MS 68256', '928.279.8024', '2018-11-07 00:32:32', '2018-11-07 00:32:32'),
(29, 'Agustina Bergstrom', 'Otho Grimes', 'b5ed2634c7516140df1cd8022d36aa32.jpg', '74395 Gibson Mission Apt. 168\nLake Jamel, KY 96856-1150', '1-408-995-1661', '2018-11-07 00:32:32', '2018-11-07 00:32:32'),
(30, 'Estell Predovic', 'Hailey Reilly DDS', 'eb9099cbd00cb9f0689754f05f0f8444.jpg', '36502 Eugene Flat\nArmstrongfurt, PA 57483', '+1.947.448.1245', '2018-11-07 00:32:32', '2018-11-07 00:32:32'),
(31, 'Marty Toy', 'Fernando Lebsack', '5eaedab9efdf782a51bc746ca0070e1c.jpg', '16650 Lori Lodge\nAdrainville, MT 79678-4175', '613.767.0076', '2018-11-07 00:32:32', '2018-11-07 00:32:32'),
(32, 'Prof. Donald Crooks V', 'Dr. Evalyn Hills III', '6ef60103f6cbae6f3ed96a49557cb8a1.jpg', '9165 Misael Shore Suite 597\nWest Webstershire, LA 27498-5671', '424.422.9996 x23728', '2018-11-07 00:32:32', '2018-11-07 00:32:32'),
(33, 'Astrid Murazik', 'Dr. Diana Jacobi', '01a2ac6df37a832421fa7324ffedb103.jpg', '747 Germaine Mountain\nFlatleyfurt, WI 97862', '654.351.5843', '2018-11-07 00:32:32', '2018-11-07 00:32:32'),
(34, 'Madyson Mayer', 'Cassandra Gusikowski MD', 'c07441c14b6a06019029a23eadd93141.jpg', '13542 Keeling Courts\nAgnesland, MA 39905', '(687) 423-1628 x7622', '2018-11-07 00:32:32', '2018-11-07 00:32:32'),
(35, 'Nick Schulist', 'Al Lockman', '4f6db0a638dfc614cb5c520232dcf907.jpg', '440 Lydia Hills\nGreenfelderstad, ND 62649', '+1.961.440.0666', '2018-11-07 00:32:33', '2018-11-07 00:32:33'),
(36, 'Bonita Conroy', 'Miss Adelle Klein III', '16f1b1a1175ca66d03b17edf35ece4d0.jpg', '13186 Becker Causeway Apt. 483\nOkunevastad, KS 27813-5887', '(447) 407-9620 x879', '2018-11-07 00:32:33', '2018-11-07 00:32:33'),
(37, 'Issac Aufderhar', 'Jude Cartwright', 'f8936a506e0f0ce9aad6317f85ba1f2d.jpg', '162 Ciara Creek Suite 283\nEast Ike, TX 30077', '557-773-1527', '2018-11-07 00:32:33', '2018-11-07 00:32:33'),
(38, 'Dr. Urban Fay', 'Emerson Pollich', 'd39e246bde910d70761daf4491f9cb43.jpg', '572 Balistreri Walk\nEast Adeliaport, NH 69788-9333', '+1.594.848.5879', '2018-11-07 00:32:33', '2018-11-07 00:32:33'),
(39, 'Prof. Billie Oberbrunner PhD', 'Miss Lillian O\'Connell III', 'a4a767400fa5099bb61e7601237376fd.jpg', '83023 Doris Light Apt. 875\nSchimmelhaven, NV 58932-6765', '1-758-788-1714 x26201', '2018-11-07 00:32:33', '2018-11-07 00:32:33'),
(40, 'Kennedy Tillman', 'Chester Cartwright', 'b5870f9fbbbeafe53577901674e80a97.jpg', '842 Frami Viaduct Suite 922\nLake Irvingmouth, WY 18677', '(696) 809-4473', '2018-11-07 00:32:33', '2018-11-07 00:32:33');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 1),
(7, '2018_11_03_063155_create_hospitals_table', 1),
(8, '2018_11_04_172338_add_img_to_hospitals', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hospitals`
--
ALTER TABLE `hospitals`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hospitals`
--
ALTER TABLE `hospitals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
