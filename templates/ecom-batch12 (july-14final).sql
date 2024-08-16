-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2024 at 10:21 PM
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
-- Database: `ecom-batch12`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(4, 'brand', 'brand des', 'uploads/brand-images/U.jpeg', 1, '2024-07-07 09:13:37', '2024-07-14 03:41:33'),
(7, 'HP', 'HP description', 'uploads/brand-images/images.png', 1, '2024-07-14 03:43:17', '2024-07-14 03:45:06'),
(8, 'Dell', 'Dell Description', 'uploads/brand-images/Screenshot_2.jpg', 1, '2024-07-14 03:46:17', '2024-07-14 03:46:17'),
(9, 'Radhuni', 'Radhuni Description', 'uploads/brand-images/0d25f4166999531.Y3JvcCw4MTYsNjM4LDIxMiwyMA.jpg', 1, '2024-07-14 03:58:28', '2024-07-14 03:58:28'),
(10, 'Pran', 'Pran Description', 'uploads/brand-images/new_project_1.jpg', 1, '2024-07-14 03:59:37', '2024-07-14 03:59:37'),
(11, 'Arong', 'Arong description', 'uploads/brand-images/unnamed.png', 1, '2024-07-14 04:37:59', '2024-07-14 04:37:59');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('e10fd735ad88f21f45ee9e47870c152d', 'i:1;', 1721063229),
('e10fd735ad88f21f45ee9e47870c152d:timer', 'i:1721063229;', 1721063229);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(10, 'cat2', 'Debitis vitae hic it', 'uploads/category-images/images.png', 1, '2024-07-11 04:46:52', '2024-07-14 04:48:18'),
(12, 'cat1', 'adsfdsf', 'uploads/category-images/0030000133112.webp', 1, '2024-07-11 04:48:10', '2024-07-14 04:48:29'),
(16, 'Electronics', 'Electronics devices description', 'uploads/category-images/electronics.webp', 1, '2024-07-14 03:33:05', '2024-07-14 03:33:05'),
(17, 'Food', 'Food description', 'uploads/category-images/Screenshot_3.jpg', 1, '2024-07-14 03:52:37', '2024-07-14 03:52:37'),
(18, 'Fashion', 'Fashion description', 'uploads/category-images/0120000035557.webp', 1, '2024-07-14 04:35:44', '2024-07-14 04:35:44');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

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
(4, '2024_07_02_144301_add_two_factor_columns_to_users_table', 1),
(5, '2024_07_02_144325_create_personal_access_tokens_table', 1),
(6, '2024_07_07_124520_create_categories_table', 2),
(7, '2024_07_07_143629_create_brands_table', 3),
(8, '2024_07_09_124422_create_units_table', 4),
(9, '2024_07_09_140343_create_sub_categories_table', 5),
(10, '2024_07_11_123207_create_products_table', 6),
(11, '2024_07_11_125419_create_product_images_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
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
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `short_description` text DEFAULT NULL,
  `long_description` longtext DEFAULT NULL,
  `regular_price` int(11) NOT NULL,
  `selling_price` int(11) NOT NULL,
  `stock_amount` int(11) NOT NULL,
  `meta_title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `image` text NOT NULL,
  `hit_count` int(11) NOT NULL DEFAULT 0,
  `sales_count` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `brand_id`, `unit_id`, `name`, `code`, `short_description`, `long_description`, `regular_price`, `selling_price`, `stock_amount`, `meta_title`, `meta_description`, `image`, `hit_count`, `sales_count`, `status`, `created_at`, `updated_at`) VALUES
(4, 16, 10, 7, 7, 'HP 250 G8', '33127', 'The HP 250 G8 Intel Celeron', '<p><span style=\"color: rgb(1, 19, 45); font-family: &quot;Trebuchet MS&quot;, sans-serif; font-size: 15px; text-align: justify;\">The HP&nbsp;</span><span style=\"margin: 0px; padding: 0px; color: rgb(1, 19, 45); font-family: &quot;Trebuchet MS&quot;, sans-serif; font-size: 15px; text-align: justify; font-weight: bold;\">250 G8</span><span style=\"color: rgb(1, 19, 45); font-family: &quot;Trebuchet MS&quot;, sans-serif; font-size: 15px; text-align: justify;\">&nbsp;Intel Celeron N4020 15.6\" FHD Laptop is a dependable and cost-effective computing option for everyday work.&nbsp;</span><br></p>', 37000, 32500, 10, 'HP 250 G8', 'HP 250 G8 Intel Celeron', 'uploads/product-images/250-g8-ash-black-01-500x500.webp', 0, 0, 1, '2024-07-14 04:04:36', '2024-07-14 04:04:36'),
(5, 16, 11, 8, 7, 'Dell P2422H', '18646', 'The Dell P2422H 24\" Full HD IPS Monitor features', '<p><span style=\"color: rgb(1, 19, 45); font-family: &quot;Trebuchet MS&quot;, sans-serif; font-size: 15px; text-align: justify;\">The&nbsp;Dell P2422H 24\" Full HD IPS Monitor features&nbsp;vibrant colors across a wide viewing angle enabled by In-Plane Switching (IPS) technology. It has a 5 ms typical response rate.</span><br></p>', 28210, 26500, 20, 'Dell P2422H', 'Dell P2422H 24', 'uploads/product-images/p2422h-01-500x500.jpg', 0, 0, 1, '2024-07-14 04:07:35', '2024-07-14 04:07:35'),
(6, 17, 12, 9, 6, 'China Fuji Apple', 'P4257', 'Apples are some of the most popular and delicious fruits on the planet.', '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;segoe ui&quot;, Helvetica, &quot;droid sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif; font-size: 14px;\">Apples are some of the most popular and delicious fruits on the planet. There are more than 7,500 varieties of this delicious fruit.</span><br></p>', 350, 319, 100, 'China Fuji Apple', 'China Fuji Apple delicious fruits', 'uploads/product-images/china-fuji-apple-1-kg.webp', 0, 0, 1, '2024-07-14 04:16:19', '2024-07-14 04:16:19'),
(7, 17, 13, 10, 6, 'Broiler Chicken', 'B45847', 'Broiler chickens are raised', '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;segoe ui&quot;, Helvetica, &quot;droid sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif; font-size: 14px;\">Broiler chickens are raised primarily for meat rather than to lay eggs. These poultry are often white and are bred to be large</span><br></p>', 300, 250, 50, 'Broiler chickens', 'Broiler chickens are raised', 'uploads/product-images/broiler-chicken-skin-off-50-gm-1-kg.webp', 0, 0, 1, '2024-07-14 04:28:09', '2024-07-14 04:28:09'),
(8, 18, 14, 11, 7, 'Grey Printed Cotton T-Shirt', 'T4545', 'Grey Printed Cotton T-Shirt', '<div class=\"page-title-wrapper product\" style=\"margin: 0px; padding: 0px;\"><h1 class=\"page-title\" style=\"margin-bottom: 15px; padding: 0px; font-size: 3rem;\"><span class=\"base\" data-ui-id=\"page-title-wrapper\" itemprop=\"name\" style=\"margin: 0px; padding: 0px;\">Grey Printed Cotton T-Shirt</span></h1><div><span class=\"base\" data-ui-id=\"page-title-wrapper\" itemprop=\"name\" style=\"margin: 0px; padding: 0px;\"><br></span></div></div><div class=\"product-info-price\" style=\"margin: 0px; padding: 0px; color: rgb(87, 87, 87); border: 0px; display: table; width: 476px; max-width: 100%;\"><div class=\"price-box price-final_price\" data-role=\"priceBox\" data-product-id=\"2620639\" data-price-box=\"product-id-2620639\" style=\"margin: 0px; padding: 0px 0px 10px; display: inline-block; vertical-align: top; width: auto;\"><span class=\"normal-price\" style=\"margin: 0px; padding: 0px; display: inline-block;\"><span class=\"price-container price-final_price tax weee\" itemprop=\"offers\" itemscope=\"\" itemtype=\"http://schema.org/Offer\" style=\"margin: 0px; padding: 0px; font-size: 21px;\"><span style=\"font-family: futura-pt, sans-serif;\"></span></span></span></div></div>', 1000, 800, 30, 'Grey Printed Cotton T-Shirt', 'Grey Printed Cotton T-Shirt', 'uploads/product-images/0120000035167.webp', 0, 0, 1, '2024-07-14 04:40:49', '2024-07-14 04:40:49'),
(9, 18, 15, 11, 8, 'Pastel Green Embroidered', 'P4879', 'Pastel Green Embroidered', '<div class=\"page-title-wrapper product\" style=\"margin: 0px; padding: 0px;\"><h1 class=\"page-title\" style=\"margin-bottom: 15px; padding: 0px; font-size: 3rem;\"><span class=\"base\" data-ui-id=\"page-title-wrapper\" itemprop=\"name\" style=\"margin: 0px; padding: 0px;\">Pastel Green Embroidered Viscose-Cotton Panjabi</span></h1><div><span class=\"base\" data-ui-id=\"page-title-wrapper\" itemprop=\"name\" style=\"margin: 0px; padding: 0px;\"><br></span></div></div><div class=\"product-info-price\" style=\"margin: 0px; padding: 0px; color: rgb(87, 87, 87); border: 0px; display: table; width: 476px; max-width: 100%;\"><div class=\"price-box price-final_price\" data-role=\"priceBox\" data-product-id=\"2506331\" data-price-box=\"product-id-2506331\" style=\"margin: 0px; padding: 0px 0px 10px; display: inline-block; vertical-align: top; width: auto;\"><span class=\"normal-price\" style=\"margin: 0px; padding: 0px; display: inline-block;\"><span class=\"price-container price-final_price tax weee\" itemprop=\"offers\" itemscope=\"\" itemtype=\"http://schema.org/Offer\" style=\"margin: 0px; padding: 0px; font-size: 21px;\"><span style=\"font-family: futura-pt, sans-serif;\"></span></span></span></div></div>', 2000, 1500, 25, 'Pastel Green Embroidered Viscose-Cotton Panjabi', 'Pastel Green Embroidered Viscose-Cotton Panjabi', 'uploads/product-images/0030000130572.webp', 0, 0, 1, '2024-07-14 04:44:36', '2024-07-14 04:44:36'),
(13, 18, 14, 11, 8, 'Maverick Men\'s T-Shirt', 'T8971', 'Maverick Men\'s T-Shirt short', '<h3 class=\"page-heading font-medium transition-all max-sm:text-3xl mb-2 leading-tight\" style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; outline: none; scrollbar-color: rgb(211, 211, 211) rgb(241, 241, 241); scrollbar-width: thin; font-size: 2rem; margin-right: 0px; margin-left: 0px; transition-property: all; transition-timing-function: cubic-bezier(0.4, 0, 0.2, 1); transition-duration: 0.5s; color: rgb(0, 0, 0); font-family: __Figtree_d7e390, __Figtree_Fallback_d7e390, &quot;Segoe UI&quot;, sans-serif;\">Maverick Men\'s T-Shirt long</h3>', 2000, 1500, 52, 'sm', 'lm', 'uploads/product-images/8d264cc6-81fb-45cf-aeba-23daec81090a.jpg', 0, 0, 1, '2024-07-15 14:12:48', '2024-07-15 14:13:24');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(8, 4, 'uploads/product-other-images/250-g8-ash-black-05-500x500.webp', '2024-07-14 04:04:36', '2024-07-14 04:04:36'),
(9, 4, 'uploads/product-other-images/250-g8-ash-black-03-500x500.webp', '2024-07-14 04:04:36', '2024-07-14 04:04:36'),
(10, 4, 'uploads/product-other-images/250-g8-ash-black-02-500x500.webp', '2024-07-14 04:04:36', '2024-07-14 04:04:36'),
(11, 5, 'uploads/product-other-images/p2422h-04-500x500.jpg', '2024-07-14 04:07:35', '2024-07-14 04:07:35'),
(12, 5, 'uploads/product-other-images/p2422h-03-500x500.jpg', '2024-07-14 04:07:35', '2024-07-14 04:07:35'),
(13, 5, 'uploads/product-other-images/p2422h-02-500x500.jpg', '2024-07-14 04:07:35', '2024-07-14 04:07:35'),
(14, 6, 'uploads/product-other-images/china-fuji-apple-1-kg.webp', '2024-07-14 04:16:19', '2024-07-14 04:16:19'),
(15, 6, 'uploads/product-other-images/china-fuji-apple-50-gm-1-kg.webp', '2024-07-14 04:16:19', '2024-07-14 04:16:19'),
(16, 7, 'uploads/product-other-images/cock-chicken-skin-off-25-gm-500-gm.webp', '2024-07-14 04:28:09', '2024-07-14 04:28:09'),
(17, 7, 'uploads/product-other-images/broiler-chicken-skin-on-50-gm-1-kg.webp', '2024-07-14 04:28:09', '2024-07-14 04:28:09'),
(18, 7, 'uploads/product-other-images/china-fuji-apple-1-kg.webp', '2024-07-14 04:28:09', '2024-07-14 04:28:09'),
(19, 8, 'uploads/product-other-images/0120000035167.webp', '2024-07-14 04:40:49', '2024-07-14 04:40:49'),
(20, 8, 'uploads/product-other-images/0120000035627.webp', '2024-07-14 04:40:49', '2024-07-14 04:40:49'),
(21, 8, 'uploads/product-other-images/0120000034112.webp', '2024-07-14 04:40:49', '2024-07-14 04:40:49'),
(22, 9, 'uploads/product-other-images/0030000133112.webp', '2024-07-14 04:44:36', '2024-07-14 04:44:36'),
(23, 9, 'uploads/product-other-images/0030000130572.webp', '2024-07-14 04:44:36', '2024-07-14 04:44:36'),
(35, 13, 'uploads/product-other-images/8982cd3e-2b2f-4c8f-9c87-d1439b0a1e65.jpg', '2024-07-15 14:13:14', '2024-07-15 14:13:14'),
(36, 13, 'uploads/product-other-images/8d264cc6-81fb-45cf-aeba-23daec81090a.jpg', '2024-07-15 14:13:14', '2024-07-15 14:13:14');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

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
('YguHvZ9K2MPQYJQRRayZvBh1dV9PpR1se6m86cSQ', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoieTBmbmhHc29FSlRUNkVCZ3VMUGJuSGZ5Qm5xdU5Ud3JoV0RZY3pabiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0L2luZGV4Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMiRvOXBjWExycC5SRDdZZHBkekZuM2plZnl1Tk15WVR5dDFNNHI4WkVJdjMvdE9seHRFWlJMSyI7fQ==', 1721074842);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(10, 16, 'Laptop', 'Laptop description', 'uploads/subcategory-images/laptop.jpg', 1, '2024-07-14 03:36:01', '2024-07-14 03:36:01'),
(11, 16, 'Monitor', 'Monitor  description', 'uploads/subcategory-images/mp223-06-500x500.webp', 1, '2024-07-14 03:37:36', '2024-07-14 03:37:36'),
(12, 17, 'Fruits & Vegetables', 'Fruits & Vegetables description', 'uploads/subcategory-images/Screenshot_4.jpg', 1, '2024-07-14 03:53:35', '2024-07-14 03:53:35'),
(13, 17, 'Meat & Fish', 'Meat & Fish description', 'uploads/subcategory-images/Screenshot_5.jpg', 1, '2024-07-14 03:54:41', '2024-07-14 03:54:41'),
(14, 18, 'T-Shirts', 'T-shirts description', 'uploads/subcategory-images/0120000034112.webp', 1, '2024-07-14 04:37:02', '2024-07-14 04:37:02'),
(15, 18, 'Panjabi', 'Panjabi DES', 'uploads/subcategory-images/0030000130572.webp', 1, '2024-07-14 04:42:08', '2024-07-14 04:42:08');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `code`, `description`, `status`, `created_at`, `updated_at`) VALUES
(2, 'one u', 'one code u', 'one des u', 0, '2024-07-09 07:03:28', '2024-07-09 07:55:17'),
(5, 'Amount', 'Amount', 'Amount description', 1, '2024-07-14 03:50:04', '2024-07-14 03:50:04'),
(6, 'KG', 'KG', 'KG description', 1, '2024-07-14 03:50:33', '2024-07-14 03:50:33'),
(7, 'Unit', 'Unit', 'Unit Description', 1, '2024-07-14 04:00:03', '2024-07-14 04:00:03'),
(8, 'Quantity', 'Quantity', 'Quantity des', 1, '2024-07-14 04:43:00', '2024-07-14 04:43:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'user1', 'user1@gmail.com', NULL, '$2y$12$o9pcXLrp.RD7YdpdzFn3jefyuNMyYTyt1M4r8ZEIv3/tOlxtEZRLK', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-02 08:50:15', '2024-07-02 08:50:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_name_unique` (`name`);

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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

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
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sub_categories_name_unique` (`name`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `units_name_unique` (`name`),
  ADD UNIQUE KEY `units_code_unique` (`code`);

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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
