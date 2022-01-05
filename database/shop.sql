-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2021 at 06:42 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '2021-02-02 15:36:52', '$2y$10$jMpKEXI7/23Gn78XFm/.yuDTPgHmtegPUK89X1QG5lWrzgSCBO8By', 'ztvxz71YIwC87MIibet0NKfupsJ5dFztg0teTOVEj2l5x4CAOpEFlQq4fDmu', NULL, NULL, '2021-02-02 15:36:52', '2021-02-02 15:36:52');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_name_ban` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_slug_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_slug_ban` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name_en`, `brand_name_ban`, `brand_slug_en`, `brand_slug_ban`, `brand_image`, `created_at`, `updated_at`) VALUES
(1, 'Samsung', 'স্যামসাং', 'samsung', 'স্যামসাং', 'upload/brand/1711517316720255.png', NULL, NULL),
(2, 'Adidas', 'এডিডাস', 'adidas', 'এডিডাস', 'upload/brand/1711517391903923.png', NULL, NULL),
(3, 'Toyota', 'কাুািবতবুকাবু', 'toyota', 'কাুািবতবুকাবু', 'upload/brand/1711517677718261.jpg', NULL, NULL),
(4, 'CocaCola', 'কোকাকোলা', 'cocacola', 'কোকাকোলা', 'upload/brand/1711517733734002.png', NULL, NULL),
(5, 'Puma', 'পুমা', 'puma', 'পুমা', 'upload/brand/1711517765965525.jpg', NULL, NULL),
(6, 'Nike', 'নিক', 'nike', 'নিক', 'upload/brand/1711517967002966.png', NULL, NULL),
(7, 'Dell', 'ডেল', 'dell', 'ডেল', 'upload/brand/1711519282960918.png', NULL, NULL),
(8, 'Apple', 'এপল', 'apple', 'এপল', 'upload/brand/1711519307992101.png', NULL, NULL),
(9, 'B M W', 'বি এম ডাব্লিউ', 'b-m-w', 'বি-এম-ডাব্লিউ', 'upload/brand/1711519334029684.png', NULL, NULL),
(10, 'pepsi', 'পেপসি', 'pepsi', 'পেপসি', 'upload/brand/1711519372313938.png', NULL, NULL),
(11, 'Decent Mart', 'ডিসেন্ট মার্ট', 'decent-mart', 'ডিসেন্ট-মার্ট', 'upload/brand/1711519399490264.jpg', NULL, NULL),
(12, 'Decent Mart1', 'ডিসেন্ট মার্ট--', 'decent-mart1', 'ডিসেন্ট-মার্ট--', 'upload/brand/1711808459882259.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_name_ban` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_slug_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_slug_ban` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name_en`, `category_name_ban`, `category_slug_en`, `category_slug_ban`, `category_icon`, `created_at`, `updated_at`) VALUES
(2, 'Health & Beauty', 'স্বাস্থ্য এবং সৌন্দর্য', 'health-&-beauty', 'স্বাস্থ্য-এবং-সৌন্দর্য', 'upload/category/1711775525373652.jpg', NULL, NULL),
(3, 'Babies & Toys', 'শিশু ও খেলনা', 'babies-&-toys', 'শিশু-ও-খেলনা', 'upload/category/1711775623555685.jpg', NULL, NULL),
(4, 'Home & Lifestyle', 'বাড়ি এবং জীবনধারা', 'home-&-lifestyle', 'বাড়ি-এবং-জীবনধারা', 'upload/category/1711775709962173.png', NULL, NULL),
(5, 'Women\'s Fashion', 'মহিলাদের ফ্যাশন', 'women\'s-fashion', 'মহিলাদের-ফ্যাশন', 'upload/category/1711775777336649.png', NULL, NULL),
(6, 'Men\'s Fashion', 'পুরুষদের ফ্যাশন', 'men\'s-fashion', 'পুরুষদের-ফ্যাশন', 'upload/category/1711775884106766.jpg', NULL, NULL),
(7, 'Electronics', 'ইলেকট্রনিক্স', 'electronics', 'ইলেকট্রনিক্স', 'upload/category/1711783904305523.jpg', NULL, NULL),
(8, 'Sports & Outdoor', 'খেলাধুলা এবং আউটডোর', 'sports-&-outdoor', 'খেলাধুলা-এবং-আউটডোর', 'upload/category/1711807931387655.jpg', NULL, NULL),
(9, 'House Hold', 'হাউজ হোল্ড', 'house-hold', 'হাউজ-হোল্ড', 'upload/category/1711807993682799.jpg', NULL, NULL),
(10, 'Vehicles', 'যানবাহন', 'vehicles', 'যানবাহন', 'upload/category/1711808078964394.jpg', NULL, NULL),
(11, 'Medicines', 'ঔষধ', 'medicines', 'ঔষধ', 'upload/category/1711808163085486.jpg', NULL, NULL),
(12, 'Personal Accessories', 'ব্যক্তিগত জিনিসপত্র', 'personal-accessories', 'ব্যক্তিগত-জিনিসপত্র', 'upload/category/1711808343477051.jpg', NULL, NULL);

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_02_02_203839_create_sessions_table', 1),
(7, '2021_02_02_212221_create_admins_table', 1),
(8, '2021_09_15_125759_create_brands_table', 2),
(9, '2021_09_21_074103_create_categories_table', 3),
(10, '2021_09_24_095121_create_subcategories_table', 4),
(11, '2021_09_24_171212_create_sub_sub_categories_table', 5);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('Hj9ZW8QJDp4ixo2DnaJeYHOAYvTtR1HSfCuYag3e', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieFVkaDl3QUNpVFZCcXhVbHJHMWxRZDBYS2VrUGs0SUZhZlcwcW42WSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zdWJjYXRlZ29yeS9zdWIvc3ViL3ZpZXciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633279273);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_name_ban` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_slug_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_slug_ban` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `subcategory_name_en`, `subcategory_name_ban`, `subcategory_slug_en`, `subcategory_slug_ban`, `created_at`, `updated_at`) VALUES
(15, 6, 'Mens Shoes', 'মেনস জুতা', 'mens-shoes', 'মেনস-জুতা', NULL, NULL),
(20, 7, 'Computer and Accessories', 'কম্পিউটার এবং আনুষাঙ্গিক', 'computer-and-accessories', 'ল্যাপটপ', NULL, '2021-10-03 09:07:02'),
(24, 5, 'Womens Shoes', 'উইমেনস জুতা', 'womens-shoes', 'উইমেনস-জুতা', NULL, NULL),
(25, 5, 'Womens Jeans Pant', 'উইমেনস জিন্স প্যান্ট', 'womens-jeans-pant', 'উইমেনস-জিন্স-প্যান্ট', NULL, NULL),
(26, 7, 'Smart Phones', 'স্মার্ট ফোন', 'smart-phones', 'স্মার্ট-ফোন', NULL, NULL),
(27, 3, 'Baby Cycles', 'বেবি সাইকেল', 'baby-cycles', 'বেবি-সাইকেল', NULL, NULL),
(28, 3, 'Dolls', 'পুতুল', 'dolls', 'পুতুল', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_sub_categories`
--

CREATE TABLE `sub_sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `subsubcategory_name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subsubcategory_name_ban` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subsubcategory_slug_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subsubcategory_slug_ban` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_sub_categories`
--

INSERT INTO `sub_sub_categories` (`id`, `category_id`, `subcategory_id`, `subsubcategory_name_en`, `subsubcategory_name_ban`, `subsubcategory_slug_en`, `subsubcategory_slug_ban`, `created_at`, `updated_at`) VALUES
(3, 7, 20, 'Desktop Computers', 'ডেস্কটপ কম্পিউটার', 'desktop-computers', 'ডেস্কটপ-কম্পিউটার', NULL, NULL),
(4, 7, 20, 'Laptop Computers', 'ল্যাপটপ কম্পিউটার', 'laptop-computers', 'ল্যাপটপ-কম্পিউটার', NULL, NULL),
(5, 6, 15, 'Sneakers', 'স্নিকার্স', 'sneakers', 'স্নিকার্স', NULL, NULL),
(6, 6, 15, 'Casual Shoes-', 'ক্যাজুয়াল সু-e', 'casual-shoes-', 'ক্যাজুয়াল-সু', NULL, '2021-10-03 10:19:04'),
(7, 6, 15, 'Loafer-২', 'লোফার-৩৪৪', 'loafer-২', 'লোফার', NULL, '2021-10-03 10:21:56'),
(8, 7, 20, 'TEST-1', 'টেস্ট', 'test-1', 'টেস্টনবেোবৃিুবাৃে', NULL, '2021-10-03 10:24:56'),
(9, 3, 27, '4 Wheel Cycles', '৪ চাকা সাইকেল', '4-wheel-cycles', '৪-চাকা-সাইকেল', NULL, '2021-10-03 10:35:19');

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
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
