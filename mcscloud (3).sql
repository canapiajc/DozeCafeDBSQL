-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2023 at 06:41 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mcscloud`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `histories`
--

CREATE TABLE `histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(5, '2023_05_21_082826_create_products_table', 2),
(6, '2023_05_27_071347_create_carts_table', 3),
(7, '2023_06_03_090708_create_orders_table', 4),
(8, '2023_06_12_094545_create_orderings_table', 5),
(9, '2023_06_21_153115_create_toships_table', 6),
(10, '2023_06_21_153144_create_toreceives_table', 6),
(11, '2023_06_21_153210_create_histories_table', 6),
(12, '2023_06_23_190512_create_toshippeds_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `orderings`
--

CREATE TABLE `orderings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Total` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `baranggay` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `phone`, `address`, `product_name`, `quantity`, `price`, `Total`, `status`, `baranggay`, `zip`, `created_at`, `updated_at`) VALUES
(95, 'Junatan Canapia', '09928822199', 'Bautista Street Quiapo Manila', 'FLAT WHITE', '(1)', '₱40', '₱40', 'shipped', 'dwadawd', 'awdawd', '2023-06-20 08:23:36', '2023-06-23 09:13:10'),
(96, 'Junatan Canapia', '09928822199', 'Bautista Street Quiapo Manila', 'CAPPUCCINO', '(1)', '₱35', '₱35', 'Delivered', '393', '1001', '2023-06-21 08:11:00', '2023-06-23 01:44:55'),
(97, 'Junatan Canapia', '09928822199', 'Bautista Street Quiapo Manila', 'LONG MACCHIATO', '(1)', '₱65', '₱65', 'Pending...', '399', '1001', '2023-06-23 01:43:58', '2023-06-23 01:43:58'),
(98, 'Junatan Canapia', '09928822199', 'Bautista Street Quiapo Manila', 'FLAT WHITE', '(3)', '₱40', '₱120', 'Pending...', '393', '1001', '2023-06-23 07:32:27', '2023-06-23 07:32:27');

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `description`, `quantity`, `image`, `created_at`, `updated_at`) VALUES
(11, 'CAPPUCCINO', '35', 'This creamy coffee drink is usually consumed at breakfast time in Italy and is loved in the United States as well. It is usually associated with indulgence and comfort because of its thick foam layer and additional flavorings that can be added to it.', '50', '1687061254.jpg', '2023-06-17 20:07:34', '2023-06-17 20:07:34'),
(12, 'FLAT WHITE', '40', 'A flat white is a blend of micro-foamed milk poured over a single or double shot of espresso. This microfoam is steamed milk infused with air, to create a smooth and velvety texture and creamy taste. Precise pouring and steaming of the microfoam is essential in making a flat white.', '50', '1687061459.jpg', '2023-06-17 20:10:59', '2023-06-18 21:24:50'),
(13, 'AMERICANO', '85', 'Americanos are popular breakfast drinks and thought tand most of the glass left empty.o have originated during World War II. a double shot of espresso with a dash of textured milkCaffè Americano is a type of coffee drink prepared by diluting an espresso with hot water.  also called a Caffe Americano', '50', '1687152619.jpg', '2023-06-18 21:27:13', '2023-06-23 06:18:13'),
(14, 'LONG MACCHIATO', '65', 'Often confused with a standard macchiato, the long macchiato is a taller version and will usually be identifiable by its distinct layers of coffee and steamed milk.A traditional long macchiato is a double shot of espresso with a dash of textured milk and most of the glass left empty.', '50', '1687152561.jpg', '2023-06-18 21:29:21', '2023-06-23 06:13:53'),
(15, 'MOCHA', '30', 'Coffee, chocolate, milk... Anything else? Well actually no, since this is all you will need to make this combination of cocoa and milk foam!', '10', '1687529392.png', '2023-06-23 06:09:52', '2023-06-23 06:09:52'),
(16, 'REVERSO', '75', 'The Reverso is where cold milk combines with the distinctive and generous crema of a Vertuo coffee to create a soft, smooth and creamy treat.', '50', '1687529563.png', '2023-06-23 06:11:42', '2023-06-23 06:16:20'),
(17, 'ESPRESSO MACCHIATO', '75', 'Macchiato refers to ‘staining’ the coffee with a dash of stiff frothed milk placed on the rich, dark crema of the Espresso .', '60', '1687530052.png', '2023-06-23 06:19:59', '2023-06-23 06:21:22');

-- --------------------------------------------------------

--
-- Table structure for table `toshippeds`
--

CREATE TABLE `toshippeds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baranggay` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `toshippeds`
--

INSERT INTO `toshippeds` (`id`, `name`, `phone`, `address`, `product_name`, `quantity`, `price`, `total`, `status`, `baranggay`, `zip`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'wdaawd', NULL, NULL, '2023-06-23 11:07:42', '2023-06-23 11:07:42'),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'wdaawd', NULL, NULL, '2023-06-23 11:08:15', '2023-06-23 11:08:15'),
(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'wdaawd', NULL, NULL, '2023-06-23 11:08:53', '2023-06-23 11:08:53'),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'wdaawd', NULL, NULL, '2023-06-23 11:10:48', '2023-06-23 11:10:48'),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'wdaawd', NULL, NULL, '2023-06-23 11:12:50', '2023-06-23 11:12:50'),
(6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'wdaawd', NULL, NULL, '2023-06-23 11:14:15', '2023-06-23 11:14:15'),
(7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'wdaawd', NULL, NULL, '2023-06-23 20:32:55', '2023-06-23 20:32:55'),
(8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'wdaawd', NULL, NULL, '2023-06-23 20:33:36', '2023-06-23 20:33:36');

-- --------------------------------------------------------

--
-- Table structure for table `toships`
--

CREATE TABLE `toships` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baranggay` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `toships`
--

INSERT INTO `toships` (`id`, `name`, `phone`, `address`, `product_name`, `quantity`, `total`, `price`, `status`, `baranggay`, `zip`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, '', NULL, 'Pending...', NULL, NULL, '2023-06-21 08:30:38', '2023-06-21 08:30:38'),
(2, 'Junatan Canapia', '09928822199', 'Bautista Street Quiapo Manila', 'FLAT WHITE', '(1)', '₱40', '₱40', 'Pending...', 'dwadawd', '1001', '2023-06-23 09:45:17', '2023-06-23 09:45:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usertype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `usertype`, `phone`, `address`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Junatan Canapia', 'canapia_junatan@yahoo.com', '0', '09928822199', 'Bautista Street Quiapo Manila', NULL, '$2y$10$wt909BbbKNCbAmvpK0MqDeFNiVNbUb1EdAoOMU/hUcEoo67f7Hi3.', 'r9Br0BrwVXKErQ9JzMrYQiMA7aa292CzIsAfEh7fD1jZFmGyLfv3xcUqXWx5', '2023-05-20 05:34:30', '2023-05-20 05:34:30'),
(2, 'admin', 'admin@admin.com', '1', '09928822231', 'admin@admin.com', NULL, '$2y$10$mVpWr9MaMG6CXeYWK2aFOO5NBYHt42j7UJnThfxUbwZyZWtZxwJUW', NULL, '2023-05-20 05:36:14', '2023-05-20 05:36:14'),
(3, 'Johairah Canapia', 'JohairaKhalid@yahoo.com', '0', '09928222199', 'JohairaKhalid@yahoo.com', NULL, '$2y$10$KxFYrJMf0au1vdwVDRYvmO1gBWlMpdvE.63l2SPs5y19SWF0wE41e', NULL, '2023-06-10 12:54:01', '2023-06-10 12:54:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `histories`
--
ALTER TABLE `histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderings`
--
ALTER TABLE `orderings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toshippeds`
--
ALTER TABLE `toshippeds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toships`
--
ALTER TABLE `toships`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `histories`
--
ALTER TABLE `histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orderings`
--
ALTER TABLE `orderings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `toshippeds`
--
ALTER TABLE `toshippeds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `toships`
--
ALTER TABLE `toships`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
