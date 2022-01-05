-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2021 at 02:44 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

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
(1, 'Admin', 'admin@gmail.com', '2021-02-02 15:36:52', '$2y$10$jMpKEXI7/23Gn78XFm/.yuDTPgHmtegPUK89X1QG5lWrzgSCBO8By', 'F1Z6mocbxpputl7y0glUy4NDK5EtjR5lIl103rZRlh0aFQBMgAQxEcjXWD4G', NULL, NULL, '2021-02-02 15:36:52', '2021-02-02 15:36:52');

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
(2, 'Addidas', 'এডিডাস', 'addidas', 'এডিডাস', 'upload/brand/1711575361462281.png', NULL, '2021-09-21 22:37:42'),
(3, 'Toyota', 'টয়োটা', 'toyota', 'কাুািবতবুকাবু', 'upload/brand/1711574918585032.jpg', NULL, '2021-09-21 22:30:40'),
(4, 'CocaCola', 'কোকাকোলা', 'cocacola', 'কোকাকোলা', 'upload/brand/1711517733734002.png', NULL, NULL),
(5, 'Puma', 'পুমা', 'puma', 'পুমা', 'upload/brand/1711517765965525.jpg', NULL, NULL),
(6, 'Nike', 'নিক', 'nike', 'নিক', 'upload/brand/1711517967002966.png', NULL, NULL),
(7, 'Casio', 'ক্যাসিও', 'casio', 'ক্যাসিও', 'upload/brand/1711575858277813.png', NULL, NULL),
(8, 'VIVO', 'ভিভো', 'vivo', 'ভিভো', 'upload/brand/1711575892290949.png', NULL, NULL),
(9, 'Raddo', 'রাডো', 'raddo', 'রাডো', 'upload/brand/1711575938469962.png', NULL, NULL),
(10, 'Kitchen', 'কিচেন', 'kitchen', 'কিচেন', 'upload/brand/1711575964417698.jpg', NULL, NULL),
(11, 'MI', 'এম আই', 'mi', 'এম-আই', 'upload/brand/1711575993060066.png', NULL, NULL),
(12, 'Oppo', 'অপ্পো', 'oppo', 'অপ্পো', 'upload/brand/1711576029062795.jpg', NULL, NULL),
(13, 'Huawei', 'হুয়াওয়ে', 'huawei', 'হুয়াওয়ে', 'upload/brand/1711576079043133.jpg', NULL, NULL),
(14, 'Lecia', 'লেসিয়া', 'lecia', 'লেসিয়া', 'upload/brand/1711576113994491.png', NULL, NULL),
(15, 'Spice', 'স্পাইস', 'spice', 'স্পাইস', 'upload/brand/1711576159471230.jpg', NULL, NULL),
(17, 'test', 'টেস্ট', 'test', 'টেস্ট', 'upload/brand/1712501488512134.jpg', NULL, NULL);

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
(15, 'Fashion', 'ফ্যাশন', 'fashion', 'ফ্যাশন', 'upload/category/1712778300190794.jpg', NULL, NULL),
(16, 'Electronics', 'ইলেকট্রনিক্স', 'electronics', 'ইলেকট্রনিক্স', 'upload/category/1712778379682217.jpg', NULL, NULL),
(17, 'Sweet Home', 'সুইট হোম', 'sweet-home', 'সুইট-হোম', 'upload/category/1712778449666552.jpg', NULL, NULL),
(18, 'Appliances', 'যন্ত্রপাতি', 'appliances', 'যন্ত্রপাতি', 'upload/category/1712778515422467.jpg', NULL, NULL),
(19, 'Beauty', 'সৌন্দর্য', 'beauty', 'সৌন্দর্য', 'upload/category/1712778607291475.png', NULL, NULL);

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
(11, '2021_09_24_171212_create_sub_sub_categories_table', 4),
(13, '2021_10_04_040351_create_multi_imgs_table', 5),
(17, '2021_10_04_033749_create_products_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `multi_imgs`
--

CREATE TABLE `multi_imgs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `photo_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multi_imgs`
--

INSERT INTO `multi_imgs` (`id`, `product_id`, `photo_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'upload/products/multi-image/1712861570320198.jpg', '2021-10-06 03:21:27', NULL),
(2, 2, 'upload/products/multi-image/1712862164573341.jpg', '2021-10-06 03:30:54', NULL),
(3, 3, 'upload/products/multi-image/1712870245095454.jpg', '2021-10-06 05:39:20', NULL),
(4, 4, 'upload/products/multi-image/1712870940739413.jpg', '2021-10-06 05:50:23', NULL);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `subsubcategory_id` int(11) NOT NULL,
  `product_name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name_ban` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_slug_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_slug_ban` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_tags_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_tags_ban` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_size_ban` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_color_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_color_ban` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buying_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `selling_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_descp_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_descp_ban` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_descp_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_descp_ban` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_thambnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hot_deals` int(11) DEFAULT NULL,
  `featured` int(11) DEFAULT NULL,
  `special_offer` int(11) DEFAULT NULL,
  `special_deals` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `category_id`, `subcategory_id`, `subsubcategory_id`, `product_name_en`, `product_name_ban`, `product_slug_en`, `product_slug_ban`, `product_code`, `product_qty`, `product_tags_en`, `product_tags_ban`, `product_size_en`, `product_size_ban`, `product_color_en`, `product_color_ban`, `buying_price`, `selling_price`, `discount_price`, `short_descp_en`, `short_descp_ban`, `long_descp_en`, `long_descp_ban`, `product_thambnail`, `hot_deals`, `featured`, `special_offer`, `special_deals`, `status`, `created_at`, `updated_at`) VALUES
(2, 2, 15, 10, 26, 'Sport shoe', 'খেলাধুলার জুতা', 'sport-shoe', 'খেলাধুলার-জুতা', '1234', '২০', 'Tag-1, Tag-2, Tag-3', 'ট্যাগ-১, ট্যাগ-২, ট্যাগ-৩', '40, 41, 42,43', '৪০, ৪১,৪২,৪৩', NULL, NULL, '1500', '2000', '1600', 'DescripPolice are investigating a case of conspiracy to commit rape after WhatsApp', 'আফ্রিকান ডেমোক্রেটিক চেঞ্জ (এডিইসি) পার্টি তার 68 নং ওয়ার্ড \r\nআফ্রিকান ডেমোক্রেটিক চেঞ্জ (এডিইসি) পার্টি তার 68 নং ওয়ার্ড', '<p>Police are investigating a case of conspiracy to commit rape after WhatsApp voice notes in which a Durban ward councillor candidate discusses sexual acts with minor girls, aged 6, 9 and 16, went viral on social media.<br><br>The African Democratic Change (ADeC) party suspended its Ward 68 candidate, Wayne Solomon, pending an inquiry into the two voice notes in which he and another woman allegedly arranged sex with a 6-year-old, 9-year-old and 16-year-old. The party said it would also be guided by the police investigation.<br><br>Solomon strongly denied committing any criminal conduct and said he was trying to entrap the woman because he believed she was abusive towards the minors. The woman allegedly made the recording, which Solomon claimed she used to try to extort R10 000 from him.<br><br>He has since lodged his own complaints with the police.<br></p>', '<pre class=\"tw-data-text tw-text-large XcVN5d tw-ta\" data-placeholder=\"Translation\" id=\"tw-target-text\" style=\"text-align:left\" dir=\"ltr\"><span class=\"Y2IQFc\" lang=\"bn\">হোয়াটসঅ্যাপ ভয়েস নোটের পরে ধর্ষণের ষড়যন্ত্রের একটি মামলার তদন্ত করছে পুলিশ, যেখানে একটি ডারবান ওয়ার্ড কাউন্সিলর প্রার্থী minor, and ও ১ aged বছর বয়সী নাবালিকা মেয়েদের সঙ্গে যৌনকর্ম নিয়ে আলোচনা করে সোশ্যাল মিডিয়ায় ভাইরাল হয়েছে।\r\n\r\nআফ্রিকান ডেমোক্রেটিক চেঞ্জ (এডিইসি) পার্টি তার 68 নং ওয়ার্ড প্রার্থী ওয়াইন সলোমনকে সাসপেন্ড করেছে, দুটি ভয়েস নোটের তদন্তের অপেক্ষায় যেখানে তিনি এবং অন্য এক মহিলা allegedly বছর বয়সী,-বছর বয়সী এবং ১ 16- বছর পুরনো. দলটি বলেছে যে এটি পুলিশ তদন্ত দ্বারাও নির্দেশিত হবে।\r\n\r\nসলোমন কোন অপরাধমূলক আচরণ করাকে দৃ strongly়ভাবে অস্বীকার করেছিলেন এবং বলেছিলেন যে তিনি মহিলাকে ফাঁসানোর চেষ্টা করছেন কারণ তিনি বিশ্বাস করেছিলেন যে তিনি অপ্রাপ্তবয়স্কদের প্রতি দুর্ব্যবহার করছেন। মহিলা অভিযোগ করেছিলেন যে রেকর্ডিংটি করেছিলেন, যা সলোমন দাবি করেছিলেন যে তিনি তার কাছ থেকে R10 000 চাঁদাবাজির চেষ্টা করতেন।\r\n\r\nএরপর থেকে তিনি পুলিশের কাছে নিজের অভিযোগ দায়ের করেছেন।</span></pre>', 'upload/products/thambnail/1712862162165252.jpg', 1, 1, NULL, NULL, 1, '2021-10-06 03:30:51', NULL),
(3, 8, 16, 18, 31, 'Vivo V20 SE', 'Vivo V20 SE', 'vivo-v20-se', 'Vivo-V20-SE', 'sm0001233', '20', 'usuud, dudus, dfhjffj', 'usuud, dudus, dfhjffj', 'NA', 'NA', NULL, NULL, '22500', '25000', '24500', 'Description EnReleased 2020, October 13\r\n171g, 7.8mm thickness\r\nAndroid 10, Funtouch 11\r\n128GB storage, microSDXCg', 'Description EngReleased 2020, October 13\r\n171g, 7.8mm thickness\r\nAndroid 10, Funtouch 11\r\n128GB storage, microSDXC', '<p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n	\r\n\r\n	\r\n\r\n\r\n\r\n\r\n\r\n</p><table cellspacing=\"0\">\r\n<tbody><tr>\r\n<th rowspan=\"2\" scope=\"row\">Launch</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=phone-life-cycle\">Announced</a></td>\r\n<td class=\"nfo\" data-spec=\"year\">2020, September 24</td>\r\n</tr>	\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=phone-life-cycle\">Status</a></td>\r\n<td class=\"nfo\" data-spec=\"status\">Available. Released 2020, October 13</td>\r\n</tr>\r\n</tbody></table>\r\n\r\n\r\n<table cellspacing=\"0\">\r\n<tbody><tr>\r\n<th rowspan=\"6\" scope=\"row\">Body</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/vivo_v20_se-10467.php#\">Dimensions</a></td>\r\n<td class=\"nfo\" data-spec=\"dimensions\">161 x 74.1 x 7.8 mm (6.34 x 2.92 x 0.31 in)</td>\r\n</tr><tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/vivo_v20_se-10467.php#\">Weight</a></td>\r\n<td class=\"nfo\" data-spec=\"weight\">171 g (6.03 oz)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=build\">Build</a></td>\r\n<td class=\"nfo\" data-spec=\"build\">Glass front, plastic back, plastic frame</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=sim\">SIM</a></td>\r\n<td class=\"nfo\" data-spec=\"sim\">Dual SIM (Nano-SIM, dual stand-by)</td>\r\n</tr>\r\n		\r\n</tbody></table>\r\n\r\n\r\n<table cellspacing=\"0\">\r\n<tbody><tr>\r\n<th rowspan=\"5\" scope=\"row\">Display</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=display-type\">Type</a></td>\r\n<td class=\"nfo\" data-spec=\"displaytype\">AMOLED</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/vivo_v20_se-10467.php#\">Size</a></td>\r\n<td class=\"nfo\" data-spec=\"displaysize\">6.44 inches, 100.1 cm<sup>2</sup> (~83.9% screen-to-body ratio)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=resolution\">Resolution</a></td>\r\n<td class=\"nfo\" data-spec=\"displayresolution\">1080 x 2400 pixels, 20:9 ratio (~409 ppi density)</td>\r\n</tr>\r\n		\r\n</tbody></table>\r\n\r\n\r\n<table cellspacing=\"0\">\r\n<tbody><tr>\r\n<th rowspan=\"4\" scope=\"row\">Platform</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=os\">OS</a></td>\r\n<td class=\"nfo\" data-spec=\"os\">Android 10, Funtouch 11</td>\r\n</tr>\r\n<tr><td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=chipset\">Chipset</a></td>\r\n<td class=\"nfo\" data-spec=\"chipset\">Qualcomm SDM665 Snapdragon 665 (11 nm)</td>\r\n</tr>\r\n<tr><td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=cpu\">CPU</a></td>\r\n<td class=\"nfo\" data-spec=\"cpu\">Octa-core (4x2.0 GHz Kryo 260 Gold &amp; 4x1.8 GHz Kryo 260 Silver)</td>\r\n</tr>\r\n<tr><td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=gpu\">GPU</a></td>\r\n<td class=\"nfo\" data-spec=\"gpu\">Adreno 610</td>\r\n</tr>\r\n</tbody></table>\r\n\r\n\r\n<table cellspacing=\"0\">\r\n<tbody><tr>\r\n<th rowspan=\"5\" scope=\"row\">Memory</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=memory-card-slot\">Card slot</a></td>\r\n\r\n\r\n<td class=\"nfo\" data-spec=\"memoryslot\">microSDXC (dedicated slot)</td></tr>\r\n\r\n	\r\n\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=dynamic-memory\">Internal</a></td>\r\n<td class=\"nfo\" data-spec=\"internalmemory\">128GB 8GB RAM</td>\r\n</tr>\r\n	\r\n\r\n			\r\n\r\n\r\n</tbody></table>\r\n\r\n\r\n	<table cellspacing=\"0\">\r\n	<tbody><tr>\r\n	<th rowspan=\"4\" scope=\"row\" class=\"small-line-height\">Main Camera</th>\r\n		<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=camera\">Triple</a></td>\r\n	<td class=\"nfo\" data-spec=\"cam1modules\">48 MP, f/1.8, 25mm (wide), 1/2.0\", 0.8µm, PDAF<br>\r\n8 MP, f/2.2, 16mm (ultrawide), 1/4.0\", 1.12µm, AF<br>\r\n2 MP, f/2.4, (depth)</td>\r\n	</tr>\r\n		<tr>\r\n	<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=camera\">Features</a></td>\r\n	<td class=\"nfo\" data-spec=\"cam1features\">Dual-LED dual-tone flash, HDR, panorama</td>\r\n	</tr>\r\n		<tr>\r\n	<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=camera\">Video</a></td>\r\n	<td class=\"nfo\" data-spec=\"cam1video\">1080p@30fps</td>\r\n	</tr>\r\n		</tbody></table>\r\n\r\n\r\n	<table cellspacing=\"0\">\r\n	<tbody><tr>\r\n	<th rowspan=\"4\" scope=\"row\" class=\"small-line-height\">Selfie camera</th>\r\n		<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=secondary-camera\">Single</a></td>\r\n	<td class=\"nfo\" data-spec=\"cam2modules\">32 MP, f/2.0, (wide), 1/2.8\", 0.8µm</td>\r\n	</tr>\r\n		<tr>\r\n	<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=secondary-camera\">Features</a></td>\r\n	<td class=\"nfo\" data-spec=\"cam2features\">HDR</td>\r\n	</tr>\r\n		<tr>\r\n	<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=secondary-camera\">Video</a></td>\r\n	<td class=\"nfo\" data-spec=\"cam2video\">1080p@30fps</td>\r\n	</tr>\r\n		</tbody></table>\r\n\r\n\r\n\r\n<table cellspacing=\"0\">\r\n<tbody><tr>\r\n<th rowspan=\"3\" scope=\"row\">Sound</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=loudspeaker\">Loudspeaker</a> </td>\r\n<td class=\"nfo\">Yes</td>\r\n</tr>\r\n\r\n	\r\n\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=audio-jack\">3.5mm jack</a> </td>\r\n<td class=\"nfo\">Yes</td>\r\n</tr>\r\n	\r\n\r\n	\r\n</tbody></table>\r\n\r\n\r\n<table cellspacing=\"0\">\r\n<tbody><tr>\r\n<th rowspan=\"9\" scope=\"row\">Comms</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=wi-fi\">WLAN</a></td>\r\n<td class=\"nfo\" data-spec=\"wlan\">Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=bluetooth\">Bluetooth</a></td>\r\n<td class=\"nfo\" data-spec=\"bluetooth\">5.0, A2DP, LE</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=gps\">GPS</a></td>\r\n<td class=\"nfo\" data-spec=\"gps\">Yes, with A-GPS, GLONASS, GALILEO, BDS</td>\r\n</tr>  \r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=nfc\">NFC</a></td>\r\n<td class=\"nfo\" data-spec=\"nfc\">Yes (market/region dependent)</td>\r\n</tr>\r\n	\r\n	\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=fm-radio\">Radio</a></td>\r\n<td class=\"nfo\" data-spec=\"radio\">FM radio</td>\r\n</tr>\r\n   \r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=usb\">USB</a></td>\r\n<td class=\"nfo\" data-spec=\"usb\">USB Type-C 2.0, USB On-The-Go</td>\r\n</tr>\r\n</tbody></table>\r\n\r\n\r\n<table cellspacing=\"0\">\r\n<tbody><tr>\r\n<th rowspan=\"9\" scope=\"row\">Features</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=sensors\">Sensors</a></td>\r\n<td class=\"nfo\" data-spec=\"sensors\">Fingerprint (under display, optical), accelerometer, gyro, proximity, compass</td>\r\n</tr>\r\n\r\n\r\n 	\r\n\r\n 	\r\n 	\r\n	\r\n</tbody></table>\r\n\r\n\r\n<table cellspacing=\"0\">\r\n<tbody><tr>\r\n<th rowspan=\"7\" scope=\"row\">Battery</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=rechargeable-battery-types\">Type</a></td>\r\n<td class=\"nfo\" data-spec=\"batdescription1\">Li-Po 4100 mAh, non-removable</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=battery-charging\">Charging</a></td>\r\n<td class=\"nfo\">Fast charging 33W, 62% in 30 min (advertised)</td>\r\n</tr>\r\n\r\n\r\n</tbody></table>\r\n\r\n\r\n<table cellspacing=\"0\">\r\n<tbody><tr>\r\n<th rowspan=\"6\" scope=\"row\">Misc</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=build\">Colors</a></td>\r\n<td class=\"nfo\" data-spec=\"colors\">Gravity Black, Oxygen Blue</td>\r\n</tr>\r\n\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=models\">Models</a></td>\r\n<td class=\"nfo\" data-spec=\"models\">V2022, V2023</td>\r\n</tr>\r\n\r\n\r\n\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=price\">Price</a></td>\r\n<td class=\"nfo\" data-spec=\"price\">About 250 EUR</td>\r\n</tr>\r\n</tbody></table>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<strong>Disclaimer.</strong> We can not guarantee that the information on this page is 100% correct.<table cellspacing=\"0\"><tbody><tr class=\"tr-hover\"><th rowspan=\"15\" scope=\"row\">Network</th><td class=\"ttl\"><a href=\"https://www.gsmarena.com/network-bands.php3\">Technology</a></td><td class=\"nfo\"><a href=\"https://www.gsmarena.com/vivo_v20_se-10467.php#\" class=\"link-network-detail collapse\" data-spec=\"nettech\">GSM / HSPA / LTE</a></td></tr></tbody></table>', '<p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n	\r\n\r\n	\r\n\r\n\r\n\r\n\r\n\r\n</p><table cellspacing=\"0\">\r\n<tbody><tr>\r\n<th rowspan=\"2\" scope=\"row\">Launch</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=phone-life-cycle\">Announced</a></td>\r\n<td class=\"nfo\" data-spec=\"year\">2020, September 24</td>\r\n</tr>	\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=phone-life-cycle\">Status</a></td>\r\n<td class=\"nfo\" data-spec=\"status\">Available. Released 2020, October 13</td>\r\n</tr>\r\n</tbody></table>\r\n\r\n\r\n<table cellspacing=\"0\">\r\n<tbody><tr>\r\n<th rowspan=\"6\" scope=\"row\">Body</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/vivo_v20_se-10467.php#\">Dimensions</a></td>\r\n<td class=\"nfo\" data-spec=\"dimensions\">161 x 74.1 x 7.8 mm (6.34 x 2.92 x 0.31 in)</td>\r\n</tr><tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/vivo_v20_se-10467.php#\">Weight</a></td>\r\n<td class=\"nfo\" data-spec=\"weight\">171 g (6.03 oz)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=build\">Build</a></td>\r\n<td class=\"nfo\" data-spec=\"build\">Glass front, plastic back, plastic frame</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=sim\">SIM</a></td>\r\n<td class=\"nfo\" data-spec=\"sim\">Dual SIM (Nano-SIM, dual stand-by)</td>\r\n</tr>\r\n		\r\n</tbody></table>\r\n\r\n\r\n<table cellspacing=\"0\">\r\n<tbody><tr>\r\n<th rowspan=\"5\" scope=\"row\">Display</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=display-type\">Type</a></td>\r\n<td class=\"nfo\" data-spec=\"displaytype\">AMOLED</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/vivo_v20_se-10467.php#\">Size</a></td>\r\n<td class=\"nfo\" data-spec=\"displaysize\">6.44 inches, 100.1 cm<sup>2</sup> (~83.9% screen-to-body ratio)</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=resolution\">Resolution</a></td>\r\n<td class=\"nfo\" data-spec=\"displayresolution\">1080 x 2400 pixels, 20:9 ratio (~409 ppi density)</td>\r\n</tr>\r\n		\r\n</tbody></table>\r\n\r\n\r\n<table cellspacing=\"0\">\r\n<tbody><tr>\r\n<th rowspan=\"4\" scope=\"row\">Platform</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=os\">OS</a></td>\r\n<td class=\"nfo\" data-spec=\"os\">Android 10, Funtouch 11</td>\r\n</tr>\r\n<tr><td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=chipset\">Chipset</a></td>\r\n<td class=\"nfo\" data-spec=\"chipset\">Qualcomm SDM665 Snapdragon 665 (11 nm)</td>\r\n</tr>\r\n<tr><td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=cpu\">CPU</a></td>\r\n<td class=\"nfo\" data-spec=\"cpu\">Octa-core (4x2.0 GHz Kryo 260 Gold &amp; 4x1.8 GHz Kryo 260 Silver)</td>\r\n</tr>\r\n<tr><td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=gpu\">GPU</a></td>\r\n<td class=\"nfo\" data-spec=\"gpu\">Adreno 610</td>\r\n</tr>\r\n</tbody></table>\r\n\r\n\r\n<table cellspacing=\"0\">\r\n<tbody><tr>\r\n<th rowspan=\"5\" scope=\"row\">Memory</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=memory-card-slot\">Card slot</a></td>\r\n\r\n\r\n<td class=\"nfo\" data-spec=\"memoryslot\">microSDXC (dedicated slot)</td></tr>\r\n\r\n	\r\n\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=dynamic-memory\">Internal</a></td>\r\n<td class=\"nfo\" data-spec=\"internalmemory\">128GB 8GB RAM</td>\r\n</tr>\r\n	\r\n\r\n			\r\n\r\n\r\n</tbody></table>\r\n\r\n\r\n	<table cellspacing=\"0\">\r\n	<tbody><tr>\r\n	<th rowspan=\"4\" scope=\"row\" class=\"small-line-height\">Main Camera</th>\r\n		<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=camera\">Triple</a></td>\r\n	<td class=\"nfo\" data-spec=\"cam1modules\">48 MP, f/1.8, 25mm (wide), 1/2.0\", 0.8µm, PDAF<br>\r\n8 MP, f/2.2, 16mm (ultrawide), 1/4.0\", 1.12µm, AF<br>\r\n2 MP, f/2.4, (depth)</td>\r\n	</tr>\r\n		<tr>\r\n	<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=camera\">Features</a></td>\r\n	<td class=\"nfo\" data-spec=\"cam1features\">Dual-LED dual-tone flash, HDR, panorama</td>\r\n	</tr>\r\n		<tr>\r\n	<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=camera\">Video</a></td>\r\n	<td class=\"nfo\" data-spec=\"cam1video\">1080p@30fps</td>\r\n	</tr>\r\n		</tbody></table>\r\n\r\n\r\n	<table cellspacing=\"0\">\r\n	<tbody><tr>\r\n	<th rowspan=\"4\" scope=\"row\" class=\"small-line-height\">Selfie camera</th>\r\n		<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=secondary-camera\">Single</a></td>\r\n	<td class=\"nfo\" data-spec=\"cam2modules\">32 MP, f/2.0, (wide), 1/2.8\", 0.8µm</td>\r\n	</tr>\r\n		<tr>\r\n	<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=secondary-camera\">Features</a></td>\r\n	<td class=\"nfo\" data-spec=\"cam2features\">HDR</td>\r\n	</tr>\r\n		<tr>\r\n	<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=secondary-camera\">Video</a></td>\r\n	<td class=\"nfo\" data-spec=\"cam2video\">1080p@30fps</td>\r\n	</tr>\r\n		</tbody></table>\r\n\r\n\r\n\r\n<table cellspacing=\"0\">\r\n<tbody><tr>\r\n<th rowspan=\"3\" scope=\"row\">Sound</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=loudspeaker\">Loudspeaker</a> </td>\r\n<td class=\"nfo\">Yes</td>\r\n</tr>\r\n\r\n	\r\n\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=audio-jack\">3.5mm jack</a> </td>\r\n<td class=\"nfo\">Yes</td>\r\n</tr>\r\n	\r\n\r\n	\r\n</tbody></table>\r\n\r\n\r\n<table cellspacing=\"0\">\r\n<tbody><tr>\r\n<th rowspan=\"9\" scope=\"row\">Comms</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=wi-fi\">WLAN</a></td>\r\n<td class=\"nfo\" data-spec=\"wlan\">Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=bluetooth\">Bluetooth</a></td>\r\n<td class=\"nfo\" data-spec=\"bluetooth\">5.0, A2DP, LE</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=gps\">GPS</a></td>\r\n<td class=\"nfo\" data-spec=\"gps\">Yes, with A-GPS, GLONASS, GALILEO, BDS</td>\r\n</tr>  \r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=nfc\">NFC</a></td>\r\n<td class=\"nfo\" data-spec=\"nfc\">Yes (market/region dependent)</td>\r\n</tr>\r\n	\r\n	\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=fm-radio\">Radio</a></td>\r\n<td class=\"nfo\" data-spec=\"radio\">FM radio</td>\r\n</tr>\r\n   \r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=usb\">USB</a></td>\r\n<td class=\"nfo\" data-spec=\"usb\">USB Type-C 2.0, USB On-The-Go</td>\r\n</tr>\r\n</tbody></table>\r\n\r\n\r\n<table cellspacing=\"0\">\r\n<tbody><tr>\r\n<th rowspan=\"9\" scope=\"row\">Features</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=sensors\">Sensors</a></td>\r\n<td class=\"nfo\" data-spec=\"sensors\">Fingerprint (under display, optical), accelerometer, gyro, proximity, compass</td>\r\n</tr>\r\n\r\n\r\n 	\r\n\r\n 	\r\n 	\r\n	\r\n</tbody></table>\r\n\r\n\r\n<table cellspacing=\"0\">\r\n<tbody><tr>\r\n<th rowspan=\"7\" scope=\"row\">Battery</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=rechargeable-battery-types\">Type</a></td>\r\n<td class=\"nfo\" data-spec=\"batdescription1\">Li-Po 4100 mAh, non-removable</td>\r\n</tr>\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=battery-charging\">Charging</a></td>\r\n<td class=\"nfo\">Fast charging 33W, 62% in 30 min (advertised)</td>\r\n</tr>\r\n\r\n\r\n</tbody></table>\r\n\r\n\r\n<table cellspacing=\"0\">\r\n<tbody><tr>\r\n<th rowspan=\"6\" scope=\"row\">Misc</th>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=build\">Colors</a></td>\r\n<td class=\"nfo\" data-spec=\"colors\">Gravity Black, Oxygen Blue</td>\r\n</tr>\r\n\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=models\">Models</a></td>\r\n<td class=\"nfo\" data-spec=\"models\">V2022, V2023</td>\r\n</tr>\r\n\r\n\r\n\r\n<tr>\r\n<td class=\"ttl\"><a href=\"https://www.gsmarena.com/glossary.php3?term=price\">Price</a></td>\r\n<td class=\"nfo\" data-spec=\"price\">About 250 EUR</td>\r\n</tr>\r\n</tbody></table>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<strong>Disclaimer.</strong> We can not guarantee that the information on this page is 100% correct.<table cellspacing=\"0\"><tbody><tr class=\"tr-hover\"><th rowspan=\"15\" scope=\"row\">Network</th><td class=\"ttl\"><a href=\"https://www.gsmarena.com/network-bands.php3\">Technology</a></td><td class=\"nfo\"><a href=\"https://www.gsmarena.com/vivo_v20_se-10467.php#\" class=\"link-network-detail collapse\" data-spec=\"nettech\">GSM / HSPA / LTE</a></td></tr></tbody></table>', 'upload/products/thambnail/1712870244477718.jpg', 1, 1, 1, 1, 1, '2021-10-06 05:39:19', NULL),
(4, 1, 18, 16, 16, 'Smart TV', 'স্মার্ট টিভি', 'smart-tv', 'স্মার্ট-টিভি', 'SMTV000012', '10', 'Lorem,Ipsum,Amet', 'asaset,dsfdf,f dff', 'NA', 'NA', NULL, NULL, '25000', '30000', '26500', 'Description EngBSTI officials say they will accept the kind of standards that Muslim countries', 'বিএসটিআইয়ের কর্মকর্তারা বলছেন যে তারা হালাল পণ্যের ক্ষেত্রে বিশ্বব্যাপী মুসলিম দেশগুলো যে ধরনের মান বজায় রাখে তা', '<p>BSTI officials say they will accept the kind of standards that Muslim countries around the world maintain with respect to halal products. That is because the export market is the main target of those who will receive the certificates from BSTI. &nbsp;<br><br>BSTI has a 13-member committee that verifies the standard of various products and issues certificates accordingly.<br></p>', '<pre class=\"tw-data-text tw-text-large XcVN5d tw-ta\" data-placeholder=\"Translation\" id=\"tw-target-text\" style=\"text-align:left\" dir=\"ltr\"><span class=\"Y2IQFc\" lang=\"bn\">বিএসটিআইয়ের কর্মকর্তারা বলছেন যে তারা হালাল পণ্যের ক্ষেত্রে বিশ্বব্যাপী <b>মুসলিম দেশগুলো যে ধরনের মান বজায় রাখে তা মেনে নেবে। কারণ বিএসটিআই থেকে যারা সার্টিফিকেট পাবে তাদের প্রধান লক্ষ্য রপ্তানি বাজার।\r\n</b>\r\nবিএসটিআই-এর একটি 13 সদস্যের কমিটি রয়েছে যা বিভিন্ন পণ্যের মান যাচাই করে এবং সেই অনুযায়ী সার্টিফিকেট প্রদান করে।</span></pre>', 'upload/products/thambnail/1712870940266886.jpg', 1, 1, 1, 1, 1, '2021-10-06 05:50:23', NULL);

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
('2mz43lTSovxruXiNbqFTq2QWsKYbxuCBuFS9tiT8', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQXFrNXRIN0hjMXB3QkhuanVWVVhxZlNzdVFjYktXOWM0U2VjT3pmTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0L2VkaXQvNCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTI6ImxvZ2luX2FkbWluXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1633524236);

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
(8, 15, 'Mens Top Ware', 'মেনস টপ ওয়্যার', 'mens-top-ware', 'মেনস-টপ-ওয়্যার', NULL, NULL),
(9, 15, 'Mens Bottom Ware', 'মেনস বটম ওয়্যার', 'mens-bottom-ware', 'মেনস-বটম-ওয়্যার', NULL, NULL),
(10, 15, 'Mens Footwear', 'পুরুষদের পাদুকা', 'mens-footwear', 'পুরুষদের-পাদুকা', NULL, NULL),
(11, 15, 'Women Footwear', 'মহিলাদের পাদুকা', 'women-footwear', 'মহিলাদের-পাদুকা', NULL, NULL),
(12, 16, 'Computer Peripherals', 'কম্পিউটার পেরিফেরাল', 'computer-peripherals', 'কম্পিউটার-পেরিফেরাল', NULL, NULL),
(13, 16, 'Mobile Accessory', 'মোবাইল আনুষঙ্গিক', 'mobile-accessory', 'মোবাইল-আনুষঙ্গিক', NULL, NULL),
(14, 16, 'Gaming', 'গেমিং', 'gaming', 'গেমিং', NULL, NULL),
(15, 17, 'Home Furnishings', 'বাড়ির আসবাবপত্র', 'home-furnishings', 'বাড়ির-আসবাবপত্র', NULL, NULL),
(16, 18, 'Televisions', 'টেলিভিশন', 'televisions', 'টেলিভিশন', NULL, NULL),
(17, 19, 'Beauty and Personal Care', 'সৌন্দর্য এবং ব্যক্তিগত যত্ন', 'beauty-and-personal-care', 'সৌন্দর্য-এবং-ব্যক্তিগত-যত্ন', NULL, NULL),
(18, 16, 'Smart Phone', 'স্মার্টফোন', 'smart-phone', 'স্মার্টফোন', NULL, NULL),
(19, 18, 'Freezer', 'ফ্রিজার', 'freezer', 'ফ্রিজার', NULL, NULL);

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
(15, 18, 16, 'Big Screen TVs', 'বড় পর্দার টিভি', 'big-screen-tvs', 'বড়-পর্দার-টিভি', NULL, NULL),
(16, 18, 16, 'Smart TV', 'স্মার্ট টিভি', 'smart-tv', 'স্মার্ট-টিভি', NULL, NULL),
(17, 18, 16, 'OLED TV', 'OLED টিভি', 'oled-tv', 'OLED-টিভি', NULL, NULL),
(18, 19, 17, 'Eys Makeup', 'চোখের মেকআপ', 'eys-makeup', 'চোখের-মেকআপ', NULL, NULL),
(19, 15, 8, 'Mans T-shirt', 'পুরুষদের টি-শার্ট', 'mans-t-shirt', 'পুরুষদের-টি-শার্ট', NULL, NULL),
(20, 15, 8, 'Mens Casual Shirts', 'পুরুষদের ক্যাজুয়াল শার্ট', 'mens-casual-shirts', 'পুরুষদের-ক্যাজুয়াল-শার্ট', NULL, NULL),
(21, 15, 8, 'Mens Kurtas', 'পুরুষদের কুর্তা', 'mens-kurtas', 'পুরুষদের-কুর্তা', NULL, NULL),
(22, 15, 9, 'Mens Jeans', 'পুরুষদের জিন্স', 'mens-jeans', 'পুরুষদের-জিন্স', NULL, NULL),
(23, 15, 9, 'Mens Trousers', 'পুরুষদের ট্রাউজার্স', 'mens-trousers', 'পুরুষদের-ট্রাউজার্স', NULL, NULL),
(24, 15, 9, 'Mens Cargos', 'মেনস কার্গোস', 'mens-cargos', 'মেনস-কার্গোস', NULL, NULL),
(25, 15, 10, 'Mens Sports Shoes', 'পুরুষদের ক্রীড়া জুতা', 'mens-sports-shoes', 'পুরুষদের-ক্রীড়া-জুতা', NULL, '2021-10-05 05:47:47'),
(26, 15, 10, 'Mens Casual Shoes', 'পুরুষদের নৈমিত্তিক জুতা', 'mens-casual-shoes', 'পুরুষদের-নৈমিত্তিক-জুতা', NULL, '2021-10-05 05:48:04'),
(27, 15, 10, 'Mens Formal Shoes', 'পুরুষদের আনুষ্ঠানিক জুতা', 'mens-formal-shoes', 'পুরুষদের-আনুষ্ঠানিক-জুতা', NULL, NULL),
(28, 15, 11, 'Women Flats', 'মহিলাদের ফ্ল্যাট', 'women-flats', 'মহিলাদের-ফ্ল্যাট', NULL, NULL),
(29, 15, 11, 'Women Heels', 'মহিলাদের হিল', 'women-heels', 'মহিলাদের-হিল', NULL, NULL),
(30, 15, 11, 'Woman Sheakers', 'মহিলা শেকার্স', 'woman-sheakers', 'মহিলা-শেকার্স', NULL, NULL),
(31, 16, 18, 'Vivo Smart Phones', 'ভিভো স্মার্ট ফোন', 'vivo-smart-phones', 'ভিভো-স্মার্ট-ফোন', NULL, NULL),
(32, 16, 18, 'Samsung Smart Phones', 'স্যামসাং স্মার্ট ফোন', 'samsung-smart-phones', 'স্যামসাং-স্মার্ট-ফোন', NULL, NULL),
(33, 18, 19, 'Deep Freezer', 'ডিপ ফ্রিজার', 'deep-freezer', 'ডিপ-ফ্রিজার', NULL, NULL),
(34, 18, 19, 'Normal Freezer', 'নরমাল ফ্রিজার', 'normal-freezer', 'নরমাল-ফ্রিজার', NULL, NULL),
(35, 18, 16, 'Smart TV', 'স্মার্ট টিভি', 'smart-tv', 'স্মার্ট-টিভি', NULL, NULL),
(36, 18, 16, 'Big Screen TVs', 'বড় পর্দার টিভি', 'big-screen-tvs', 'বড়-পর্দার-টিভি', NULL, NULL);

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
-- Indexes for table `multi_imgs`
--
ALTER TABLE `multi_imgs`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `multi_imgs`
--
ALTER TABLE `multi_imgs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
