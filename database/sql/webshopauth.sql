-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2026 at 01:43 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webshopauth`
--
-- CREATE DATABASE IF NOT EXISTS `webshopauth` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `if0_42320341_webshop2`;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `naziv` varchar(255) NOT NULL,
  `opis` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `naziv`, `opis`, `created_at`, `updated_at`) VALUES
(1, 'Mobiteli', 'Pametni telefoni i mobilni uređaji.', '2026-06-25 13:09:36', '2026-06-25 13:09:36'),
(2, 'Laptopi', 'Prijenosna računala za rad, školu i gaming.', '2026-06-25 13:09:36', '2026-06-25 13:18:36'),
(3, 'Monitori', 'Računalni monitori različitih veličina.', '2026-06-25 13:09:36', '2026-06-25 13:09:36'),
(4, 'Tipkovnice', 'Žičane, bežične i gaming tipkovnice.', '2026-06-25 13:09:36', '2026-06-25 13:09:36'),
(5, 'Miševi', 'Računalni miševi za ured i gaming.', '2026-06-25 13:09:36', '2026-06-25 13:09:36'),
(6, 'Slušalice', 'Slušalice s mikrofonom i bez mikrofona.', '2026-06-25 13:09:36', '2026-06-25 13:09:36'),
(7, 'Printeri', 'Laserski i tintni pisači.', '2026-06-25 13:09:36', '2026-06-25 13:09:36'),
(8, 'Tableti', 'Tableti za zabavu, školu i posao.', '2026-06-25 13:09:36', '2026-06-25 13:09:36'),
(9, 'Komponente', 'Procesori, memorije, diskovi i grafičke kartice.', '2026-06-25 13:09:36', '2026-06-25 13:09:36'),
(10, 'Dodaci', 'Kablovi, punjači, torbe i ostala oprema.', '2026-06-25 13:09:36', '2026-06-25 13:09:36'),
(11, 'Televizori', 'Smart TV, LCD', '2026-06-25 13:21:15', '2026-06-25 13:21:28'),
(12, 'Beauty', 'Kategorija dohvaćena sa DummyJSON servisa.', '2026-06-29 07:48:32', '2026-06-29 07:49:05'),
(13, 'home-decoration', 'Kategorija dohvaćena sa DummyJSON servisa.', '2026-06-29 08:47:01', '2026-06-29 08:47:01');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
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
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_06_25_102111_add_fields_to_users_table', 1),
(5, '2026_06_25_150603_create_categories_table', 2),
(6, '2026_06_25_153545_create_products_table', 3),
(7, '2026_06_29_094001_add_izvor_to_products_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `naziv` varchar(255) NOT NULL,
  `opis` text DEFAULT NULL,
  `cijena` decimal(10,2) NOT NULL,
  `kolicina` int(11) NOT NULL DEFAULT 0,
  `izvor` varchar(255) NOT NULL DEFAULT 'custom',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `naziv`, `opis`, `cijena`, `kolicina`, `izvor`, `created_at`, `updated_at`) VALUES
(1, 1, 'Samsung Galaxy A55', 'Pametni telefon srednje klase.', 429.99, 16, 'custom', '2026-06-25 13:42:06', '2026-06-25 13:47:28'),
(2, 1, 'iPhone 15', 'Apple pametni telefon.', 899.99, 8, 'custom', '2026-06-25 13:42:06', '2026-06-25 13:42:06'),
(3, 2, 'Lenovo ThinkPad E14', 'Poslovni laptop.', 749.99, 12, 'custom', '2026-06-25 13:42:06', '2026-06-25 13:42:06'),
(4, 2, 'HP ProBook 450', 'Laptop za uredski rad.', 699.99, 10, 'custom', '2026-06-25 13:42:06', '2026-06-25 13:42:06'),
(5, 3, 'Dell 27 Monitor', 'Monitor dijagonale 27 inča.', 219.99, 20, 'custom', '2026-06-25 13:42:06', '2026-06-25 13:42:06'),
(6, 3, 'LG UltraWide 34', 'Široki monitor za produktivnost.', 399.99, 6, 'custom', '2026-06-25 13:42:06', '2026-06-25 13:42:06'),
(7, 4, 'Logitech MX Keys', 'Bežična tipkovnica.', 119.99, 18, 'custom', '2026-06-25 13:42:06', '2026-06-25 13:42:06'),
(8, 4, 'Redragon K552', 'Mehanička gaming tipkovnica.', 59.99, 25, 'custom', '2026-06-25 13:42:06', '2026-06-25 13:42:06'),
(9, 5, 'Logitech MX Master 3S', 'Premium bežični miš.', 99.99, 14, 'custom', '2026-06-25 13:42:06', '2026-06-25 13:42:06'),
(10, 5, 'Razer DeathAdder', 'Gaming miš.', 69.99, 16, 'custom', '2026-06-25 13:42:06', '2026-06-25 13:42:06'),
(11, 11, 'LCD Smart', 'Ovo je novi smart TV', 479.89, 100, 'custom', '2026-06-25 13:48:11', '2026-06-25 13:48:11'),
(12, 12, 'Powder Canister', 'The Powder Canister is a finely milled setting powder designed to set makeup and control shine. With a lightweight and translucent formula, it provides a smooth and matte finish.', 14.99, 89, 'servis', '2026-06-29 07:48:32', '2026-06-29 07:48:32'),
(13, 13, 'Plant Pot', 'The Plant Pot is a stylish container for your favorite plants. With a sleek design, it complements your indoor or outdoor garden, adding a modern touch to your plant display.', 14.99, 59, 'servis', '2026-06-29 08:47:01', '2026-06-29 08:47:01'),
(14, 13, 'Table Lamp', 'The Table Lamp is a functional and decorative lighting solution for your living space. With a modern design, it provides both ambient and task lighting, enhancing the atmosphere.', 49.99, 9, 'servis', '2026-06-29 08:47:30', '2026-06-29 08:47:30');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('RGIgWSIfxqTEE6vNMlTbIkPvygZaAWdO8ouH44oQ', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiOTYwNXlWanFrcEY5YUVRbXdOMm5Oc2dRamIxeVVmQ0kzSEpYcU00TSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjI6e3M6MzoidXJsIjtzOjMyOiJodHRwOi8vbG9jYWxob3N0OjgwMDAvcHJvZHVjdHNEYiI7czo1OiJyb3V0ZSI7czoxMToicHJvZHVjdHMuZGIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1782906064),
('tM3PSpm5PRQttxY3RbJLv6pffEGyRRToX8a9ybQZ', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZXNrYlpNUmc0RjBpbXBtNERnQUtMemtaQmszRXdGQUx1VklVNE54dSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9wcm9kdWN0c0RiIjtzOjU6InJvdXRlIjtzOjExOiJwcm9kdWN0cy5kYiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1782900487);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `isAdmin` tinyint(1) NOT NULL DEFAULT 0,
  `datum_rod` date DEFAULT NULL,
  `placa` decimal(10,2) NOT NULL DEFAULT 0.00,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `isAdmin`, `datum_rod`, `placa`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@tester.com', NULL, '$2y$12$tvM6UB.UNnLgICJ.SSCwGuai7a1c7nzJ1a.evwChged76chO4GbSe', 1, '1980-01-15', 3500.00, NULL, '2026-06-25 08:31:41', '2026-06-25 08:31:41'),
(2, 'Pero Horvatkovoić', 'pero@tester.com', NULL, '$2y$12$CK.SEkdpQGAcXKSoREMqXe9jAXCeTkQMf/7V.dwatxAzvQ7.9fBMq', 0, '1990-03-22', 1855.00, NULL, '2026-06-25 08:31:41', '2026-06-25 11:42:54'),
(3, 'Ivanko Ivić', 'ivan@tester.com', NULL, '$2y$12$HcpsB2fy/0Fp0.fp.ShBleSCCV02hWFrOGmgGQlHARFhSX7a8hRyO', 1, '1992-10-15', 1920.00, NULL, '2026-06-25 08:31:42', '2026-06-25 11:43:35'),
(4, 'Ana Anić', 'ana@tester.com', NULL, '$2y$12$Xql9vXpN2bvKYtn.OkDAeOaC9UOjp0h53Fuusm5Fdyg6IeYviEP8u', 0, '1983-09-16', 4350.00, NULL, '2026-06-25 08:39:20', '2026-06-25 08:39:20'),
(5, 'Dora Dorić', 'dora@tester.com', NULL, '$2y$12$38YegjWO35NPy2uUD9TuP.IoPsnb.7tJzUASRbxMD7ncfljuGKXAa', 0, '1995-01-01', 1200.00, NULL, '2026-06-25 11:13:15', '2026-06-25 11:13:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

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
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
