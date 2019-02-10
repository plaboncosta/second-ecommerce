-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 10, 2019 at 10:43 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `second-ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2019-02-10 07:54:48', '2019-02-10 07:54:48'),
(2, NULL, 1, 'Category 2', 'category-2', '2019-02-10 07:54:48', '2019-02-10 07:54:48');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Laptops', 'laptops', '2019-02-10 07:48:39', '2019-02-10 08:37:30'),
(2, 'Desktops', 'desktops', '2019-02-10 07:48:39', '2019-02-10 07:48:39'),
(3, 'Mobile Phones', 'mobile-phones', '2019-02-10 07:48:39', '2019-02-10 07:48:39'),
(4, 'Tablets', 'tablets', '2019-02-10 07:48:39', '2019-02-10 07:48:39'),
(5, 'TVs', 'tvs', '2019-02-10 07:48:39', '2019-02-10 07:48:39'),
(6, 'Digital Cameras', 'digital-cameras', '2019-02-10 07:48:39', '2019-02-10 07:48:39'),
(7, 'Appliances', 'appliances', '2019-02-10 07:48:39', '2019-02-10 07:48:39');

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

CREATE TABLE `category_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` (`id`, `product_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 3, 1, NULL, NULL),
(4, 4, 1, NULL, NULL),
(5, 5, 1, NULL, NULL),
(6, 6, 1, NULL, NULL),
(7, 7, 1, NULL, NULL),
(8, 8, 1, NULL, NULL),
(9, 9, 1, NULL, NULL),
(10, 10, 1, NULL, NULL),
(11, 11, 1, NULL, NULL),
(12, 12, 1, NULL, NULL),
(13, 13, 1, NULL, NULL),
(14, 14, 1, NULL, NULL),
(15, 15, 1, NULL, NULL),
(16, 16, 1, NULL, NULL),
(17, 17, 1, NULL, NULL),
(18, 18, 1, NULL, NULL),
(19, 19, 1, NULL, NULL),
(20, 20, 1, NULL, NULL),
(21, 21, 1, NULL, NULL),
(22, 22, 1, NULL, NULL),
(23, 23, 1, NULL, NULL),
(24, 24, 1, NULL, NULL),
(25, 25, 1, NULL, NULL),
(26, 26, 1, NULL, NULL),
(27, 27, 1, NULL, NULL),
(28, 28, 1, NULL, NULL),
(29, 29, 1, NULL, NULL),
(30, 30, 1, NULL, NULL),
(31, 1, 2, NULL, NULL),
(32, 31, 2, NULL, NULL),
(33, 32, 2, NULL, NULL),
(34, 33, 2, NULL, NULL),
(35, 34, 2, NULL, NULL),
(36, 35, 2, NULL, NULL),
(37, 36, 2, NULL, NULL),
(38, 37, 2, NULL, NULL),
(39, 38, 2, NULL, NULL),
(40, 39, 2, NULL, NULL),
(41, 40, 3, NULL, NULL),
(42, 41, 3, NULL, NULL),
(43, 42, 3, NULL, NULL),
(44, 43, 3, NULL, NULL),
(45, 44, 3, NULL, NULL),
(46, 45, 3, NULL, NULL),
(47, 46, 3, NULL, NULL),
(48, 47, 3, NULL, NULL),
(49, 48, 3, NULL, NULL),
(50, 49, 4, NULL, NULL),
(51, 50, 4, NULL, NULL),
(52, 51, 4, NULL, NULL),
(53, 52, 4, NULL, NULL),
(54, 53, 4, NULL, NULL),
(55, 54, 4, NULL, NULL),
(56, 55, 4, NULL, NULL),
(57, 56, 4, NULL, NULL),
(58, 57, 4, NULL, NULL),
(59, 58, 5, NULL, NULL),
(60, 59, 5, NULL, NULL),
(61, 60, 5, NULL, NULL),
(62, 61, 5, NULL, NULL),
(63, 62, 5, NULL, NULL),
(64, 63, 5, NULL, NULL),
(65, 64, 5, NULL, NULL),
(66, 65, 5, NULL, NULL),
(67, 66, 5, NULL, NULL),
(68, 67, 6, NULL, NULL),
(69, 68, 6, NULL, NULL),
(70, 69, 6, NULL, NULL),
(71, 70, 6, NULL, NULL),
(72, 71, 6, NULL, NULL),
(73, 72, 6, NULL, NULL),
(74, 73, 6, NULL, NULL),
(75, 74, 6, NULL, NULL),
(76, 75, 6, NULL, NULL),
(77, 76, 7, NULL, NULL),
(78, 77, 7, NULL, NULL),
(79, 78, 7, NULL, NULL),
(80, 79, 7, NULL, NULL),
(81, 80, 7, NULL, NULL),
(82, 81, 7, NULL, NULL),
(83, 82, 7, NULL, NULL),
(84, 83, 7, NULL, NULL),
(85, 84, 7, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) DEFAULT NULL,
  `percent_off` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `percent_off`, `created_at`, `updated_at`) VALUES
(1, 'abc123', 'fixed', 100, NULL, '2019-02-10 07:49:03', '2019-02-10 07:49:03'),
(2, 'abc456', 'percent_off', NULL, 30, '2019-02-10 07:49:00', '2019-02-10 08:53:52'),
(3, 'plabon21', 'percent_off', NULL, 25, '2019-02-10 08:53:24', '2019-02-10 08:53:24');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'locale', 'text', 'Locale', 0, 1, 1, 1, 1, 0, NULL, 12),
(12, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(13, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(14, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(15, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(16, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(17, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(18, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(19, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(20, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(21, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(22, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(23, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(24, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(25, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(26, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(27, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(28, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(29, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(30, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(31, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(32, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(33, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(34, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(35, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(36, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(37, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(38, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(39, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(40, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(41, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(42, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(43, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(44, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(45, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(46, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(47, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(48, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(49, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(50, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(51, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(52, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(53, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(54, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(55, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(56, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(68, 8, 'id', 'hidden', 'Id', 1, 1, 1, 1, 1, 0, '{}', 1),
(69, 8, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(70, 8, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{}', 3),
(71, 8, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 4),
(72, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(73, 9, 'id', 'hidden', 'Id', 1, 1, 1, 1, 1, 0, '{}', 1),
(74, 9, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(75, 9, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{}', 3),
(76, 9, 'details', 'text_area', 'Details', 0, 1, 1, 1, 1, 1, '{}', 4),
(77, 9, 'price', 'number', 'Price', 1, 1, 1, 1, 1, 1, '{}', 5),
(78, 9, 'description', 'rich_text_box', 'Description', 1, 1, 1, 1, 1, 1, '{}', 6),
(79, 9, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, '{\"on\":\"Yes\",\"off\":\"No\"}', 7),
(80, 9, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 8),
(81, 9, 'images', 'multiple_images', 'Images', 0, 1, 1, 1, 1, 1, '{}', 9),
(82, 9, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 10),
(83, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(84, 10, 'id', 'hidden', 'Id', 1, 1, 1, 1, 1, 0, '{}', 1),
(85, 10, 'code', 'text', 'Code', 1, 1, 1, 1, 1, 1, '{}', 2),
(86, 10, 'type', 'select_dropdown', 'Type', 1, 1, 1, 1, 1, 1, '{\"default\":\"fixed\",\"options\":{\"fixed\":\"Fixed value\",\"percent_off\":\"Percent Off\"}}', 3),
(87, 10, 'value', 'number', 'Value', 0, 1, 1, 1, 1, 1, '{\"null\":\"\"}', 4),
(88, 10, 'percent_off', 'number', 'Percent Off', 0, 1, 1, 1, 1, 1, '{\"null\":\"\"}', 5),
(89, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(90, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(91, 11, 'id', 'hidden', 'Id', 1, 1, 1, 1, 1, 0, '{}', 1),
(92, 11, 'product_id', 'number', 'Product Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(93, 11, 'category_id', 'number', 'Category Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(94, 11, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 4),
(95, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, NULL, '2019-02-10 07:54:37', '2019-02-10 07:54:37'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-02-10 07:54:37', '2019-02-10 07:54:37'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-02-10 07:54:38', '2019-02-10 07:54:38'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2019-02-10 07:54:46', '2019-02-10 07:54:46'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2019-02-10 07:54:48', '2019-02-10 07:54:48'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2019-02-10 07:54:50', '2019-02-10 07:54:50'),
(8, 'category', 'category', 'Category', 'Categories', 'voyager-categories', 'App\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-02-10 08:13:40', '2019-02-10 08:13:40'),
(9, 'products', 'products', 'Product', 'Products', 'voyager-bag', 'App\\Product', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-02-10 08:19:49', '2019-02-10 08:31:23'),
(10, 'coupons', 'coupons', 'Coupon', 'Coupons', 'voyager-dollar', 'App\\Coupon', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-02-10 08:51:00', '2019-02-10 08:51:00'),
(11, 'category_product', 'category-product', 'Category Product', 'Category Products', 'voyager-tag', 'App\\CategoryProduct', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-02-10 08:59:13', '2019-02-10 08:59:13');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-02-10 07:54:40', '2019-02-10 07:54:40'),
(2, 'main', '2019-02-10 09:05:10', '2019-02-10 09:05:10'),
(3, 'footer', '2019-02-10 09:40:15', '2019-02-10 09:40:15');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2019-02-10 07:54:40', '2019-02-10 07:54:40', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 8, '2019-02-10 07:54:40', '2019-02-10 08:59:40', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 7, '2019-02-10 07:54:40', '2019-02-10 08:59:47', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 6, '2019-02-10 07:54:40', '2019-02-10 08:59:46', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 12, '2019-02-10 07:54:40', '2019-02-10 08:59:38', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2019-02-10 07:54:40', '2019-02-10 08:11:29', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2019-02-10 07:54:40', '2019-02-10 08:11:29', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2019-02-10 07:54:40', '2019-02-10 08:11:29', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2019-02-10 07:54:40', '2019-02-10 08:11:29', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 13, '2019-02-10 07:54:40', '2019-02-10 08:59:38', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 11, '2019-02-10 07:54:47', '2019-02-10 08:59:41', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 9, '2019-02-10 07:54:49', '2019-02-10 08:59:41', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 10, '2019-02-10 07:54:52', '2019-02-10 08:59:41', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2019-02-10 07:55:00', '2019-02-10 08:11:29', 'voyager.hooks', NULL),
(16, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 3, '2019-02-10 08:13:41', '2019-02-10 08:20:57', 'voyager.category.index', NULL),
(17, 1, 'Products', '', '_self', 'voyager-bag', NULL, NULL, 2, '2019-02-10 08:19:49', '2019-02-10 08:20:57', 'voyager.products.index', NULL),
(18, 1, 'Coupons', '', '_self', 'voyager-dollar', NULL, NULL, 5, '2019-02-10 08:51:00', '2019-02-10 08:59:46', 'voyager.coupons.index', NULL),
(19, 1, 'Category Products', '', '_self', 'voyager-tag', NULL, NULL, 4, '2019-02-10 08:59:14', '2019-02-10 08:59:46', 'voyager.category-product.index', NULL),
(20, 2, 'Shop', '', '_self', NULL, '#000000', NULL, 14, '2019-02-10 09:08:23', '2019-02-10 09:08:23', 'shop.index', NULL),
(21, 2, 'About', '#', '_self', NULL, '#000000', NULL, 15, '2019-02-10 09:10:22', '2019-02-10 09:10:22', NULL, ''),
(23, 3, 'fa-globe', 'https://www.facebook.com/plabon.costa.9', '_blank', NULL, '#000000', NULL, 2, '2019-02-10 09:40:47', '2019-02-10 09:43:08', NULL, ''),
(24, 3, 'fa-github', 'https://www.github.com/plaboncosta', '_blank', NULL, '#000000', NULL, 3, '2019-02-10 09:41:26', '2019-02-10 09:43:08', NULL, ''),
(25, 3, 'fa-twitter', 'https://www.facebook.com/plabon.costa.9', '_blank', NULL, '#000000', NULL, 4, '2019-02-10 09:41:39', '2019-02-10 09:43:08', NULL, ''),
(26, 3, 'fa-youtube', 'https://www.github.com/plaboncosta', '_blank', NULL, '#000000', NULL, 5, '2019-02-10 09:41:56', '2019-02-10 09:43:09', NULL, ''),
(27, 3, 'Follow Me:', '#', '_self', NULL, '#000000', NULL, 1, '2019-02-10 09:42:58', '2019-02-10 09:43:08', NULL, '');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(17, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(18, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(19, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(20, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(21, '2017_08_05_000000_add_group_to_settings_table', 1),
(22, '2017_11_26_013050_add_user_role_relationship', 1),
(23, '2017_11_26_015000_create_user_roles_table', 1),
(24, '2018_03_11_000000_add_user_settings', 1),
(25, '2018_03_14_000000_add_details_to_data_types_table', 1),
(26, '2018_03_16_000000_make_settings_value_nullable', 1),
(27, '2019_01_17_115104_create_products_table', 1),
(28, '2019_01_19_040932_create_category_table', 1),
(29, '2019_01_19_114441_create_category_product_table', 1),
(30, '2019_01_19_200729_create_coupons_table', 1),
(31, '2019_01_22_152854_add_image_to_products_table', 1),
(32, '2019_01_22_173953_add_images_to_products_table', 1),
(33, '2019_01_30_102454_create_orders_table', 1),
(34, '2019_01_30_105428_create_order_product_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `billing_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_province` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_postalcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_name_on_card` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_discount` int(11) NOT NULL DEFAULT '0',
  `billing_discount_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_subtotal` int(11) NOT NULL,
  `billing_tax` int(11) NOT NULL,
  `billing_total` int(11) NOT NULL,
  `payment_gateway` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'stripe',
  `shipped` tinyint(1) NOT NULL DEFAULT '0',
  `error` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `billing_email`, `billing_name`, `billing_address`, `billing_city`, `billing_province`, `billing_postalcode`, `billing_phone`, `billing_name_on_card`, `billing_discount`, `billing_discount_code`, `billing_subtotal`, `billing_tax`, `billing_total`, `payment_gateway`, `shipped`, `error`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin@blog.com', 'Admin', 'Mohakhali', 'Dhaka', 'Dhaka', '1212', '1796811679', 'Admin', 0, NULL, 17377, 2259, 19636, 'stripe', 0, NULL, '2019-02-10 09:20:56', '2019-02-10 09:20:56');

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`id`, `order_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 28, 1, '2019-02-10 09:20:56', '2019-02-10 09:20:56');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2019-02-10 07:54:53', '2019-02-10 07:54:53');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2019-02-10 07:54:41', '2019-02-10 07:54:41'),
(2, 'browse_bread', NULL, '2019-02-10 07:54:41', '2019-02-10 07:54:41'),
(3, 'browse_database', NULL, '2019-02-10 07:54:41', '2019-02-10 07:54:41'),
(4, 'browse_media', NULL, '2019-02-10 07:54:41', '2019-02-10 07:54:41'),
(5, 'browse_compass', NULL, '2019-02-10 07:54:41', '2019-02-10 07:54:41'),
(6, 'browse_menus', 'menus', '2019-02-10 07:54:41', '2019-02-10 07:54:41'),
(7, 'read_menus', 'menus', '2019-02-10 07:54:41', '2019-02-10 07:54:41'),
(8, 'edit_menus', 'menus', '2019-02-10 07:54:41', '2019-02-10 07:54:41'),
(9, 'add_menus', 'menus', '2019-02-10 07:54:41', '2019-02-10 07:54:41'),
(10, 'delete_menus', 'menus', '2019-02-10 07:54:41', '2019-02-10 07:54:41'),
(11, 'browse_roles', 'roles', '2019-02-10 07:54:41', '2019-02-10 07:54:41'),
(12, 'read_roles', 'roles', '2019-02-10 07:54:42', '2019-02-10 07:54:42'),
(13, 'edit_roles', 'roles', '2019-02-10 07:54:42', '2019-02-10 07:54:42'),
(14, 'add_roles', 'roles', '2019-02-10 07:54:42', '2019-02-10 07:54:42'),
(15, 'delete_roles', 'roles', '2019-02-10 07:54:42', '2019-02-10 07:54:42'),
(16, 'browse_users', 'users', '2019-02-10 07:54:42', '2019-02-10 07:54:42'),
(17, 'read_users', 'users', '2019-02-10 07:54:42', '2019-02-10 07:54:42'),
(18, 'edit_users', 'users', '2019-02-10 07:54:42', '2019-02-10 07:54:42'),
(19, 'add_users', 'users', '2019-02-10 07:54:42', '2019-02-10 07:54:42'),
(20, 'delete_users', 'users', '2019-02-10 07:54:42', '2019-02-10 07:54:42'),
(21, 'browse_settings', 'settings', '2019-02-10 07:54:43', '2019-02-10 07:54:43'),
(22, 'read_settings', 'settings', '2019-02-10 07:54:43', '2019-02-10 07:54:43'),
(23, 'edit_settings', 'settings', '2019-02-10 07:54:43', '2019-02-10 07:54:43'),
(24, 'add_settings', 'settings', '2019-02-10 07:54:43', '2019-02-10 07:54:43'),
(25, 'delete_settings', 'settings', '2019-02-10 07:54:43', '2019-02-10 07:54:43'),
(26, 'browse_categories', 'categories', '2019-02-10 07:54:47', '2019-02-10 07:54:47'),
(27, 'read_categories', 'categories', '2019-02-10 07:54:47', '2019-02-10 07:54:47'),
(28, 'edit_categories', 'categories', '2019-02-10 07:54:47', '2019-02-10 07:54:47'),
(29, 'add_categories', 'categories', '2019-02-10 07:54:47', '2019-02-10 07:54:47'),
(30, 'delete_categories', 'categories', '2019-02-10 07:54:47', '2019-02-10 07:54:47'),
(31, 'browse_posts', 'posts', '2019-02-10 07:54:49', '2019-02-10 07:54:49'),
(32, 'read_posts', 'posts', '2019-02-10 07:54:49', '2019-02-10 07:54:49'),
(33, 'edit_posts', 'posts', '2019-02-10 07:54:49', '2019-02-10 07:54:49'),
(34, 'add_posts', 'posts', '2019-02-10 07:54:50', '2019-02-10 07:54:50'),
(35, 'delete_posts', 'posts', '2019-02-10 07:54:50', '2019-02-10 07:54:50'),
(36, 'browse_pages', 'pages', '2019-02-10 07:54:52', '2019-02-10 07:54:52'),
(37, 'read_pages', 'pages', '2019-02-10 07:54:52', '2019-02-10 07:54:52'),
(38, 'edit_pages', 'pages', '2019-02-10 07:54:52', '2019-02-10 07:54:52'),
(39, 'add_pages', 'pages', '2019-02-10 07:54:52', '2019-02-10 07:54:52'),
(40, 'delete_pages', 'pages', '2019-02-10 07:54:52', '2019-02-10 07:54:52'),
(41, 'browse_hooks', NULL, '2019-02-10 07:55:00', '2019-02-10 07:55:00'),
(42, 'browse_category', 'category', '2019-02-10 08:13:40', '2019-02-10 08:13:40'),
(43, 'read_category', 'category', '2019-02-10 08:13:40', '2019-02-10 08:13:40'),
(44, 'edit_category', 'category', '2019-02-10 08:13:40', '2019-02-10 08:13:40'),
(45, 'add_category', 'category', '2019-02-10 08:13:40', '2019-02-10 08:13:40'),
(46, 'delete_category', 'category', '2019-02-10 08:13:40', '2019-02-10 08:13:40'),
(47, 'browse_products', 'products', '2019-02-10 08:19:49', '2019-02-10 08:19:49'),
(48, 'read_products', 'products', '2019-02-10 08:19:49', '2019-02-10 08:19:49'),
(49, 'edit_products', 'products', '2019-02-10 08:19:49', '2019-02-10 08:19:49'),
(50, 'add_products', 'products', '2019-02-10 08:19:49', '2019-02-10 08:19:49'),
(51, 'delete_products', 'products', '2019-02-10 08:19:49', '2019-02-10 08:19:49'),
(52, 'browse_coupons', 'coupons', '2019-02-10 08:51:00', '2019-02-10 08:51:00'),
(53, 'read_coupons', 'coupons', '2019-02-10 08:51:00', '2019-02-10 08:51:00'),
(54, 'edit_coupons', 'coupons', '2019-02-10 08:51:00', '2019-02-10 08:51:00'),
(55, 'add_coupons', 'coupons', '2019-02-10 08:51:00', '2019-02-10 08:51:00'),
(56, 'delete_coupons', 'coupons', '2019-02-10 08:51:00', '2019-02-10 08:51:00'),
(57, 'browse_category_product', 'category_product', '2019-02-10 08:59:13', '2019-02-10 08:59:13'),
(58, 'read_category_product', 'category_product', '2019-02-10 08:59:13', '2019-02-10 08:59:13'),
(59, 'edit_category_product', 'category_product', '2019-02-10 08:59:13', '2019-02-10 08:59:13'),
(60, 'add_category_product', 'category_product', '2019-02-10 08:59:13', '2019-02-10 08:59:13'),
(61, 'delete_category_product', 'category_product', '2019-02-10 08:59:13', '2019-02-10 08:59:13');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-02-10 07:54:50', '2019-02-10 07:54:50'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-02-10 07:54:50', '2019-02-10 07:54:50'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-02-10 07:54:50', '2019-02-10 07:54:50'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-02-10 07:54:50', '2019-02-10 07:54:50');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `details`, `price`, `description`, `featured`, `image`, `images`, `created_at`, `updated_at`) VALUES
(1, 'Laptop 1', 'laptop-1', '14 inch,1 TB SSD, 32GB ROM', 21775, 'Lorem 1 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 1, NULL, NULL, '2019-02-10 07:48:40', '2019-02-10 07:48:40'),
(2, 'Laptop 2', 'laptop-2', '13 inch,2 TB SSD, 32GB ROM', 16443, 'Lorem 2 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:42', '2019-02-10 07:48:42'),
(3, 'Laptop 3', 'laptop-3', '14 inch,1 TB SSD, 32GB ROM', 21054, 'Lorem 3 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:42', '2019-02-10 07:48:42'),
(4, 'Laptop 4', 'laptop-4', '13 inch,2 TB SSD, 32GB ROM', 22719, 'Lorem 4 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:42', '2019-02-10 07:48:42'),
(5, 'Laptop 5', 'laptop-5', '13 inch,2 TB SSD, 32GB ROM', 18544, 'Lorem 5 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:43', '2019-02-10 07:48:43'),
(6, 'Laptop 6', 'laptop-6', '14 inch,1 TB SSD, 32GB ROM', 17115, 'Lorem 6 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:43', '2019-02-10 07:48:43'),
(7, 'Laptop 7', 'laptop-7', '14 inch,2 TB SSD, 32GB ROM', 20519, 'Lorem 7 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:43', '2019-02-10 07:48:43'),
(8, 'Laptop 8', 'laptop-8', '13 inch,1 TB SSD, 32GB ROM', 21247, 'Lorem 8 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:43', '2019-02-10 07:48:43'),
(9, 'Laptop 9', 'laptop-9', '15 inch,1 TB SSD, 32GB ROM', 19306, 'Lorem 9 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:44', '2019-02-10 07:48:44'),
(10, 'Laptop 10', 'laptop-10', '13 inch,3 TB SSD, 32GB ROM', 20496, 'Lorem 10 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:44', '2019-02-10 07:48:44'),
(11, 'Laptop 11', 'laptop-11', '15 inch,3 TB SSD, 32GB ROM', 22174, 'Lorem 11 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:44', '2019-02-10 07:48:44'),
(12, 'Laptop 12', 'laptop-12', '13 inch,1 TB SSD, 32GB ROM', 21030, 'Lorem 12 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:44', '2019-02-10 07:48:44'),
(13, 'Laptop 13', 'laptop-13', '13 inch,2 TB SSD, 32GB ROM', 17563, 'Lorem 13 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:45', '2019-02-10 07:48:45'),
(14, 'Laptop 14', 'laptop-14', '13 inch,3 TB SSD, 32GB ROM', 16017, 'Lorem 14 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:45', '2019-02-10 07:48:45'),
(15, 'Laptop 15', 'laptop-15', '14 inch,2 TB SSD, 32GB ROM', 22038, 'Lorem 15 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:45', '2019-02-10 07:48:45'),
(16, 'Laptop 16', 'laptop-16', '13 inch,3 TB SSD, 32GB ROM', 22413, 'Lorem 16 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:45', '2019-02-10 07:48:45'),
(17, 'Laptop 17', 'laptop-17', '14 inch,1 TB SSD, 32GB ROM', 22578, 'Lorem 17 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:45', '2019-02-10 07:48:45'),
(18, 'Laptop 18', 'laptop-18', '13 inch,2 TB SSD, 32GB ROM', 19785, 'Lorem 18 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:46', '2019-02-10 07:48:46'),
(19, 'Laptop 19', 'laptop-19', '15 inch,2 TB SSD, 32GB ROM', 22961, 'Lorem 19 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:46', '2019-02-10 07:48:46'),
(20, 'Laptop 20', 'laptop-20', '15 inch,1 TB SSD, 32GB ROM', 18918, 'Lorem 20 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:46', '2019-02-10 07:48:46'),
(21, 'Laptop 21', 'laptop-21', '14 inch,3 TB SSD, 32GB ROM', 24390, 'Lorem 21 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:46', '2019-02-10 07:48:46'),
(22, 'Laptop 22', 'laptop-22', '15 inch,2 TB SSD, 32GB ROM', 19179, 'Lorem 22 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:47', '2019-02-10 07:48:47'),
(23, 'Laptop 23', 'laptop-23', '15 inch,3 TB SSD, 32GB ROM', 22372, 'Lorem 23 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:47', '2019-02-10 07:48:47'),
(24, 'Laptop 24', 'laptop-24', '13 inch,2 TB SSD, 32GB ROM', 20077, 'Lorem 24 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:47', '2019-02-10 07:48:47'),
(25, 'Laptop 25', 'laptop-25', '13 inch,3 TB SSD, 32GB ROM', 18228, 'Lorem 25 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:48', '2019-02-10 07:48:48'),
(26, 'Laptop 26', 'laptop-26', '15 inch,2 TB SSD, 32GB ROM', 20536, 'Lorem 26 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:48', '2019-02-10 07:48:48'),
(27, 'Laptop 27', 'laptop-27', '14 inch,1 TB SSD, 32GB ROM', 24473, 'Lorem 27 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:48', '2019-02-10 07:48:48'),
(28, 'Laptop 28', 'laptop-28', '14 inch,2 TB SSD, 32GB ROM', 17377, 'Lorem 28 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 1, NULL, NULL, '2019-02-10 07:48:48', '2019-02-10 07:48:48'),
(29, 'Laptop 29', 'laptop-29', '15 inch,2 TB SSD, 32GB ROM', 21174, 'Lorem 29 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:49', '2019-02-10 07:48:49'),
(30, 'Laptop 30', 'laptop-30', '13 inch,1 TB SSD, 32GB ROM', 18289, 'Lorem 30 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:49', '2019-02-10 07:48:49'),
(31, 'Desktops 1', 'desktop-1', '15 inch,3 TB SSD, 32GB ROM', 54952, 'Lorem 1 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:49', '2019-02-10 07:48:49'),
(32, 'Desktops 2', 'desktop-2', '15 inch,2 TB SSD, 32GB ROM', 50934, 'Lorem 2 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:49', '2019-02-10 07:48:49'),
(33, 'Desktops 3', 'desktop-3', '13 inch,3 TB SSD, 32GB ROM', 55163, 'Lorem 3 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:49', '2019-02-10 07:48:49'),
(34, 'Desktops 4', 'desktop-4', '13 inch,2 TB SSD, 32GB ROM', 51566, 'Lorem 4 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:49', '2019-02-10 07:48:49'),
(35, 'Desktops 5', 'desktop-5', '15 inch,2 TB SSD, 32GB ROM', 55114, 'Lorem 5 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:50', '2019-02-10 07:48:50'),
(36, 'Desktops 6', 'desktop-6', '13 inch,3 TB SSD, 32GB ROM', 55290, 'Lorem 6 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:50', '2019-02-10 07:48:50'),
(37, 'Desktops 7', 'desktop-7', '14 inch,3 TB SSD, 32GB ROM', 51689, 'Lorem 7 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:50', '2019-02-10 07:48:50'),
(38, 'Desktops 8', 'desktop-8', '13 inch,2 TB SSD, 32GB ROM', 45016, 'Lorem 8 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:51', '2019-02-10 07:48:51'),
(39, 'Desktops 9', 'desktop-9', '14 inch,3 TB SSD, 32GB ROM', 58488, 'Lorem 9 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:51', '2019-02-10 07:48:51'),
(40, 'Mobile Phones 1', 'phone-1', '15 inch,1 TB SSD, 32GB ROM', 21691, 'Lorem 1 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:52', '2019-02-10 07:48:52'),
(41, 'Mobile Phones 2', 'phone-2', '14 inch,3 TB SSD, 32GB ROM', 16691, 'Lorem 2 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 1, NULL, NULL, '2019-02-10 07:48:52', '2019-02-10 07:48:52'),
(42, 'Mobile Phones 3', 'phone-3', '14 inch,1 TB SSD, 32GB ROM', 17743, 'Lorem 3 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:52', '2019-02-10 07:48:52'),
(43, 'Mobile Phones 4', 'phone-4', '14 inch,3 TB SSD, 32GB ROM', 19068, 'Lorem 4 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:52', '2019-02-10 07:48:52'),
(44, 'Mobile Phones 5', 'phone-5', '15 inch,1 TB SSD, 32GB ROM', 21237, 'Lorem 5 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:53', '2019-02-10 07:48:53'),
(45, 'Mobile Phones 6', 'phone-6', '13 inch,1 TB SSD, 32GB ROM', 25949, 'Lorem 6 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:53', '2019-02-10 07:48:53'),
(46, 'Mobile Phones 7', 'phone-7', '15 inch,3 TB SSD, 32GB ROM', 20239, 'Lorem 7 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:53', '2019-02-10 07:48:53'),
(47, 'Mobile Phones 8', 'phone-8', '15 inch,3 TB SSD, 32GB ROM', 18813, 'Lorem 8 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:54', '2019-02-10 07:48:54'),
(48, 'Mobile Phones 9', 'phone-9', '15 inch,2 TB SSD, 32GB ROM', 25680, 'Lorem 9 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:54', '2019-02-10 07:48:54'),
(49, 'Tablets 1', 'tablet-1', '15 inch,3 TB SSD, 32GB ROM', 50746, 'Lorem 1 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:54', '2019-02-10 07:48:54'),
(50, 'Tablets 2', 'tablet-2', '15 inch,1 TB SSD, 32GB ROM', 55243, 'Lorem 2 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 1, NULL, NULL, '2019-02-10 07:48:55', '2019-02-10 07:48:55'),
(51, 'Tablets 3', 'tablet-3', '15 inch,2 TB SSD, 32GB ROM', 56171, 'Lorem 3 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 1, 'tablet-3.jpg', NULL, '2019-02-10 07:48:55', '2019-02-10 07:48:55'),
(52, 'Tablets 4', 'tablet-4', '13 inch,3 TB SSD, 32GB ROM', 45966, 'Lorem 4 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 1, 'tablet-3.jpg', NULL, '2019-02-10 07:48:55', '2019-02-10 07:48:55'),
(53, 'Tablets 5', 'tablet-5', '14 inch,2 TB SSD, 32GB ROM', 53598, 'Lorem 5 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:55', '2019-02-10 07:48:55'),
(54, 'Tablets 6', 'tablet-6', '13 inch,1 TB SSD, 32GB ROM', 52298, 'Lorem 6 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:56', '2019-02-10 07:48:56'),
(55, 'Tablets 7', 'tablet-7', '15 inch,2 TB SSD, 32GB ROM', 55481, 'Lorem 7 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:56', '2019-02-10 07:48:56'),
(56, 'Tablets 8', 'tablet-8', '13 inch,2 TB SSD, 32GB ROM', 45858, 'Lorem 8 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:56', '2019-02-10 07:48:56'),
(57, 'Tablets 9', 'tablet-9', '14 inch,3 TB SSD, 32GB ROM', 56957, 'Lorem 9 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:56', '2019-02-10 07:48:56'),
(58, 'TVs 1', 'tv-1', '15 inch,3 TB SSD, 32GB ROM', 23394, 'Lorem 1 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:57', '2019-02-10 07:48:57'),
(59, 'TVs 2', 'tv-2', '14 inch,1 TB SSD, 32GB ROM', 21686, 'Lorem 2 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:57', '2019-02-10 07:48:57'),
(60, 'TVs 3', 'tv-3', '13 inch,1 TB SSD, 32GB ROM', 20612, 'Lorem 3 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:57', '2019-02-10 07:48:57'),
(61, 'TVs 4', 'tv-4', '13 inch,3 TB SSD, 32GB ROM', 18809, 'Lorem 4 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:57', '2019-02-10 07:48:57'),
(62, 'TVs 5', 'tv-5', '15 inch,2 TB SSD, 32GB ROM', 22698, 'Lorem 5 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:57', '2019-02-10 07:48:57'),
(63, 'TVs 6', 'tv-6', '13 inch,3 TB SSD, 32GB ROM', 19238, 'Lorem 6 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:58', '2019-02-10 07:48:58'),
(64, 'TVs 7', 'tv-7', '15 inch,3 TB SSD, 32GB ROM', 21393, 'Lorem 7 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 1, 'tablet-3.jpg', NULL, '2019-02-10 07:48:58', '2019-02-10 07:48:58'),
(65, 'TVs 8', 'tv-8', '15 inch,3 TB SSD, 32GB ROM', 18621, 'Lorem 8 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:58', '2019-02-10 07:48:58'),
(66, 'TVs 9', 'tv-9', '15 inch,2 TB SSD, 32GB ROM', 24269, 'Lorem 9 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 1, NULL, NULL, '2019-02-10 07:48:58', '2019-02-10 07:48:58'),
(67, 'Digital Cameras 1', 'camera-1', '14 inch,3 TB SSD, 32GB ROM', 23838, 'Lorem 1 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:59', '2019-02-10 07:48:59'),
(68, 'Digital Cameras 2', 'camera-2', '14 inch,3 TB SSD, 32GB ROM', 23445, 'Lorem 2 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:48:59', '2019-02-10 07:48:59'),
(69, 'Digital Cameras 3', 'camera-3', '14 inch,1 TB SSD, 32GB ROM', 24017, 'Lorem 3 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:49:00', '2019-02-10 07:49:00'),
(70, 'Digital Cameras 4', 'camera-4', '13 inch,2 TB SSD, 32GB ROM', 24304, 'Lorem 4 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 1, 'tablet-3.jpg', NULL, '2019-02-10 07:49:00', '2019-02-10 07:49:00'),
(71, 'Digital Cameras 5', 'camera-5', '14 inch,1 TB SSD, 32GB ROM', 22721, 'Lorem 5 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:49:00', '2019-02-10 07:49:00'),
(72, 'Digital Cameras 6', 'camera-6', '15 inch,1 TB SSD, 32GB ROM', 21048, 'Lorem 6 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:49:00', '2019-02-10 07:49:00'),
(73, 'Digital Cameras 7', 'camera-7', '14 inch,1 TB SSD, 32GB ROM', 21509, 'Lorem 7 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:49:01', '2019-02-10 07:49:01'),
(74, 'Digital Cameras 8', 'camera-8', '13 inch,3 TB SSD, 32GB ROM', 22701, 'Lorem 8 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:49:01', '2019-02-10 07:49:01'),
(75, 'Digital Cameras 9', 'camera-9', '15 inch,1 TB SSD, 32GB ROM', 23831, 'Lorem 9 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:49:01', '2019-02-10 07:49:01'),
(76, 'Appliances 1', 'appliance-1', '15 inch,3 TB SSD, 32GB ROM', 17487, 'Lorem 1 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:49:01', '2019-02-10 07:49:01'),
(77, 'Appliances 2', 'appliance-2', '15 inch,1 TB SSD, 32GB ROM', 15849, 'Lorem 2 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:49:01', '2019-02-10 07:49:01'),
(78, 'Appliances 3', 'appliance-3', '14 inch,3 TB SSD, 32GB ROM', 22194, 'Lorem 3 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:49:02', '2019-02-10 07:49:02'),
(79, 'Appliances 4', 'appliance-4', '15 inch,2 TB SSD, 32GB ROM', 17369, 'Lorem 4 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:49:02', '2019-02-10 07:49:02'),
(80, 'Appliances 5', 'appliance-5', '13 inch,2 TB SSD, 32GB ROM', 10641, 'Lorem 5 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:49:02', '2019-02-10 07:49:02'),
(81, 'Appliances 6', 'appliance-6', '13 inch,2 TB SSD, 32GB ROM', 11589, 'Lorem 6 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:49:02', '2019-02-10 07:49:02'),
(82, 'Appliances 7', 'appliance-7', '15 inch,1 TB SSD, 32GB ROM', 23464, 'Lorem 7 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:49:02', '2019-02-10 07:49:02'),
(83, 'Appliances 8', 'appliance-8', '15 inch,1 TB SSD, 32GB ROM', 13089, 'Lorem 8 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:49:03', '2019-02-10 07:49:03'),
(84, 'Appliances 9', 'appliance-9', '14 inch,2 TB SSD, 32GB ROM', 20050, 'Lorem 9 ipsum dolor sit amet, consectetur adipisicing elit. Aut, earum molestias, velit quo, nemo dolore fugit quia dolorum magni nam possimus. Tempore ullam blanditiis quam deserunt delectus ut aliquid nulla.', 0, NULL, NULL, '2019-02-10 07:49:03', '2019-02-10 07:49:03');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2019-02-10 07:54:40', '2019-02-10 07:54:40'),
(2, 'user', 'Normal User', '2019-02-10 07:54:41', '2019-02-10 07:54:41');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Laravel Ecommerce', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to laravel ecommerce site !', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2019-02-10 07:54:53', '2019-02-10 07:54:53'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2019-02-10 07:54:53', '2019-02-10 07:54:53'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2019-02-10 07:54:53', '2019-02-10 07:54:53'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2019-02-10 07:54:53', '2019-02-10 07:54:53'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2019-02-10 07:54:53', '2019-02-10 07:54:53'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2019-02-10 07:54:53', '2019-02-10 07:54:53'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2019-02-10 07:54:54', '2019-02-10 07:54:54'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2019-02-10 07:54:54', '2019-02-10 07:54:54'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2019-02-10 07:54:54', '2019-02-10 07:54:54'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2019-02-10 07:54:54', '2019-02-10 07:54:54'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2019-02-10 07:54:54', '2019-02-10 07:54:54'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2019-02-10 07:54:54', '2019-02-10 07:54:54'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2019-02-10 07:54:54', '2019-02-10 07:54:54'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2019-02-10 07:54:54', '2019-02-10 07:54:54'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2019-02-10 07:54:54', '2019-02-10 07:54:54'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2019-02-10 07:54:55', '2019-02-10 07:54:55'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2019-02-10 07:54:55', '2019-02-10 07:54:55'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2019-02-10 07:54:55', '2019-02-10 07:54:55'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2019-02-10 07:54:55', '2019-02-10 07:54:55'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2019-02-10 07:54:55', '2019-02-10 07:54:55'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2019-02-10 07:54:56', '2019-02-10 07:54:56'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2019-02-10 07:54:56', '2019-02-10 07:54:56'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2019-02-10 07:54:57', '2019-02-10 07:54:57'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2019-02-10 07:54:57', '2019-02-10 07:54:57'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2019-02-10 07:54:57', '2019-02-10 07:54:57'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2019-02-10 07:54:57', '2019-02-10 07:54:57'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2019-02-10 07:54:57', '2019-02-10 07:54:57'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2019-02-10 07:54:58', '2019-02-10 07:54:58'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2019-02-10 07:54:58', '2019-02-10 07:54:58'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2019-02-10 07:54:58', '2019-02-10 07:54:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Plabon Costa', 'plabon@gmail.com', 'users/default.png', NULL, '$2y$10$FmGewLyKBwQYWkUzGX1X8OaK7bHjtLkRNmTJTpL67H2oJ5SL2UEgS', 'awdU2F1QX4hLkV65duCx2unE2LfD9Rk6uUhUzbkYUGvjyvIjuTrYAS0Wcund', NULL, '2019-02-10 07:50:49', '2019-02-10 07:50:49');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_name_unique` (`name`),
  ADD UNIQUE KEY `category_slug_unique` (`slug`);

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_product_product_id_foreign` (`product_id`),
  ADD KEY `category_product_category_id_foreign` (`category_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_product_order_id_foreign` (`order_id`),
  ADD KEY `order_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `category_product`
--
ALTER TABLE `category_product`
  ADD CONSTRAINT `category_product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `order_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
