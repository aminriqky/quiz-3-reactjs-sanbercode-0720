-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Okt 2020 pada 11.55
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mara`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '{}', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '{}', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Pilih Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 0, 1, 1, 1, 1, 1, '{}', 9),
(72, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 1, 1, 1, 1, 1, '{}', 6),
(104, 18, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(105, 18, 'nama_lokasi', 'text', 'Nama Lokasi', 0, 1, 1, 1, 1, 1, '{}', 2),
(106, 18, 'deskripsi', 'text_area', 'Deskripsi', 0, 1, 1, 1, 1, 1, '{}', 3),
(107, 18, 'foto', 'multiple_images', 'Foto', 0, 1, 1, 1, 1, 1, '{}', 4),
(108, 18, 'suhu', 'number', 'Suhu (Derajat Celcius)', 0, 1, 1, 1, 1, 1, '{}', 5),
(110, 18, 'created_at', 'timestamp', 'Waktu di buat', 0, 1, 1, 0, 0, 1, '{}', 8),
(111, 18, 'updated_at', 'timestamp', 'Waktu di update', 0, 0, 0, 0, 0, 0, '{}', 9),
(112, 19, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(113, 19, 'nama_lokasi', 'text', 'Nama Lokasi', 0, 1, 1, 1, 1, 1, '{}', 2),
(114, 19, 'deskripsi', 'text_area', 'Deskripsi', 0, 1, 1, 1, 1, 1, '{}', 3),
(115, 19, 'foto', 'multiple_images', 'Foto', 0, 1, 1, 1, 1, 1, '{}', 4),
(116, 19, 'ketinggian', 'number', 'Ketinggian (Cm)', 0, 1, 1, 1, 1, 1, '{}', 5),
(117, 19, 'durasi', 'number', 'Durasi (Detik)', 0, 1, 1, 1, 1, 1, '{}', 6),
(119, 19, 'created_at', 'timestamp', 'Waktu di buat', 0, 1, 1, 0, 0, 1, '{}', 9),
(120, 19, 'updated_at', 'timestamp', 'Waktu di update', 0, 0, 0, 0, 0, 0, '{}', 10),
(121, 20, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(122, 20, 'nama_lokasi', 'text', 'Nama Lokasi', 0, 1, 1, 1, 1, 1, '{}', 2),
(123, 20, 'deskripsi', 'text_area', 'Deskripsi', 0, 1, 1, 1, 1, 1, '{}', 3),
(124, 20, 'horizontal', 'number', 'Horizontal (Cm)', 0, 1, 1, 1, 1, 1, '{}', 5),
(125, 20, 'vertikal', 'number', 'Vertikal (Cm)', 0, 1, 1, 1, 1, 1, '{}', 6),
(127, 20, 'created_at', 'timestamp', 'Waktu di buat', 0, 1, 1, 0, 0, 1, '{}', 9),
(128, 20, 'updated_at', 'timestamp', 'Waktu di update', 0, 0, 0, 0, 0, 0, '{}', 10),
(129, 20, 'foto', 'multiple_images', 'Foto', 0, 1, 1, 1, 1, 1, '{}', 4),
(130, 18, 'latitude', 'number', 'Latitude', 0, 1, 1, 1, 1, 1, '{}', 6),
(131, 18, 'longtitude', 'number', 'Longtitude', 0, 1, 1, 1, 1, 1, '{}', 7),
(132, 19, 'latitude', 'number', 'Latitude', 0, 1, 1, 1, 1, 1, '{}', 7),
(133, 19, 'longtitude', 'text', 'Longtitude', 0, 1, 1, 1, 1, 1, '{}', 8),
(134, 20, 'latitude', 'number', 'Latitude', 0, 1, 1, 1, 1, 1, '{}', 7),
(135, 20, 'longtitude', 'number', 'Longtitude', 0, 1, 1, 1, 1, 1, '{}', 8),
(143, 24, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(144, 24, 'nama', 'text', 'Nama', 0, 1, 1, 1, 1, 1, '{}', 2),
(145, 24, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 3),
(146, 24, 'password', 'password', 'Password', 0, 1, 1, 1, 1, 1, '{}', 4),
(147, 24, 'profile', 'text', 'Profile', 0, 1, 1, 1, 1, 1, '{}', 5),
(148, 24, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(149, 24, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2020-07-08 06:28:18', '2020-07-13 23:58:22'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-07-08 06:28:18', '2020-07-08 06:28:18'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2020-07-08 06:28:18', '2020-07-08 06:28:18'),
(18, 'flames', 'flames', 'Flame', 'Flames', 'voyager-fire', 'App\\Flame', NULL, 'App\\Http\\Controllers\\FlameController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-09-21 15:30:09', '2020-10-11 09:50:27'),
(19, 'floods', 'floods', 'Flood', 'Floods', 'voyager-droplet', 'App\\Flood', NULL, 'App\\Http\\Controllers\\FloodController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-09-21 15:31:40', '2020-10-11 09:51:39'),
(20, 'grounds', 'grounds', 'Ground', 'Grounds', 'voyager-trees', 'App\\Ground', NULL, 'App\\Http\\Controllers\\GroundController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-09-21 15:34:47', '2020-10-11 09:52:54'),
(22, 'persons', 'persons', 'User', 'Users', 'voyager-people', 'App\\Person', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-10-10 04:33:20', '2020-10-10 04:33:20'),
(24, 'people', 'people', 'Person', 'People', 'voyager-people', 'App\\People', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-10-11 01:48:35', '2020-10-11 01:48:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `favorites`
--

CREATE TABLE `favorites` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `favorite_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `flames`
--

CREATE TABLE `flames` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_lokasi` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `suhu` float DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `longtitude` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `flames`
--

INSERT INTO `flames` (`id`, `nama_lokasi`, `deskripsi`, `foto`, `suhu`, `latitude`, `created_at`, `updated_at`, `longtitude`) VALUES
(1, 'Prabumulih', 'Lokasi nya di dekat sungai', '[\"flames\\\\October2020\\\\Y6qsGLiCJh5LvWTY1AYv.png\",\"flames\\\\October2020\\\\NmCthoKGyXWG4EwkSBoc.png\"]', 60, 0.2, '2020-10-11 02:17:55', '2020-10-11 02:17:55', 0.3),
(2, 'Pagaralam1', 'di deket gunung', '[\"flames\\\\October2020\\\\U60WH9AWsjppMQ45MakR.png\",\"flames\\\\October2020\\\\ZGo7jjuJqUONPiOB7dt3.png\"]', 130, 0.3, '2020-10-11 02:21:00', '2020-10-11 09:49:38', 0.4),
(3, 'Lahat', 'Di padang rumput', '[\"flames\\\\October2020\\\\P07llLW6NrGffTAmmyHv.png\"]', 230, 0.3, '2020-10-11 02:22:17', '2020-10-11 02:22:17', 0.2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `floods`
--

CREATE TABLE `floods` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_lokasi` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ketinggian` float DEFAULT NULL,
  `durasi` float DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `longtitude` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `floods`
--

INSERT INTO `floods` (`id`, `nama_lokasi`, `deskripsi`, `foto`, `ketinggian`, `durasi`, `latitude`, `created_at`, `updated_at`, `longtitude`) VALUES
(1, 'Prabumulih1', 'dasdad', '[\"floods\\\\October2020\\\\cWZkMM0gyQic6C9Kodpv.png\"]', 130, 90, 0.4, '2020-10-11 02:23:23', '2020-10-11 09:51:58', 0.5),
(2, 'Pagaralam', 'adadsdd', '[\"floods\\\\October2020\\\\XiGmcYdf33pXwockel6D.png\"]', 20, 20, 0.9, '2020-10-11 02:23:43', '2020-10-11 02:23:43', 0.8),
(3, 'Lahat', 'addwad', '[\"floods\\\\October2020\\\\NTcOmcmqwKqonEYyPzsj.png\"]', 230, 420, 0.5, '2020-10-11 02:24:09', '2020-10-11 02:24:09', 0.6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `grounds`
--

CREATE TABLE `grounds` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_lokasi` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `horizontal` float DEFAULT NULL,
  `vertikal` float DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `foto` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `longtitude` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `grounds`
--

INSERT INTO `grounds` (`id`, `nama_lokasi`, `deskripsi`, `horizontal`, `vertikal`, `created_at`, `updated_at`, `foto`, `latitude`, `longtitude`) VALUES
(1, 'Prabumulih', 'sdfs', 70, 60, '2020-10-11 03:02:04', '2020-10-11 03:02:04', '[\"grounds\\\\October2020\\\\1V6Fd6bhoT0bRE8iSRj8.png\",\"grounds\\\\October2020\\\\bCtpBb3nGoSTKf3y9C8s.png\"]', 0.4, 0.5),
(2, 'Pagaralam', 'asdsad', 130, 110, '2020-10-11 03:02:29', '2020-10-11 03:02:29', '[\"grounds\\\\October2020\\\\aVbR9fw5QOP9CHe9WBQQ.png\"]', 0.4, 0.5),
(3, 'Lahat', 'asdasd', 400, 360, '2020-10-11 03:02:49', '2020-10-11 03:02:49', '[\"grounds\\\\October2020\\\\y0AvUaMEzd9RZkYoetgI.png\"]', 0.9, 0.1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-07-08 06:28:18', '2020-07-08 06:28:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2020-07-08 06:28:18', '2020-07-08 06:28:18', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 8, '2020-07-08 06:28:18', '2020-10-10 04:33:38', 'voyager.media.index', NULL),
(3, 1, 'Admin', '', '_self', 'voyager-person', '#000000', NULL, 2, '2020-07-08 06:28:18', '2020-10-10 04:33:46', 'voyager.users.index', 'null'),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 3, '2020-07-08 06:28:18', '2020-10-10 04:33:46', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2020-07-08 06:28:18', '2020-10-10 04:33:38', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2020-07-08 06:28:18', '2020-07-08 07:05:35', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2020-07-08 06:28:18', '2020-07-08 07:05:35', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2020-07-08 06:28:18', '2020-07-08 07:05:35', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2020-07-08 06:28:18', '2020-10-09 02:40:11', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 10, '2020-07-08 06:28:18', '2020-10-10 04:33:38', 'voyager.settings.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2020-07-08 06:28:21', '2020-10-09 02:40:11', 'voyager.hooks', NULL),
(26, 1, 'Flames', '', '_self', 'voyager-fire', NULL, NULL, 5, '2020-09-21 15:30:09', '2020-10-10 04:33:40', 'voyager.flames.index', NULL),
(27, 1, 'Floods', '', '_self', 'voyager-droplet', NULL, NULL, 6, '2020-09-21 15:31:41', '2020-10-10 04:33:38', 'voyager.floods.index', NULL),
(28, 1, 'Grounds', '', '_self', 'voyager-trees', NULL, NULL, 7, '2020-09-21 15:34:47', '2020-10-10 04:33:38', 'voyager.grounds.index', NULL),
(32, 1, 'People', '', '_self', 'voyager-people', NULL, NULL, 4, '2020-10-11 01:48:35', '2020-10-11 01:49:05', 'voyager.people.index', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_id` bigint(20) NOT NULL,
  `to_id` bigint(20) NOT NULL,
  `body` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `messages`
--

INSERT INTO `messages` (`id`, `type`, `from_id`, `to_id`, `body`, `attachment`, `seen`, `created_at`, `updated_at`) VALUES
(1868393140, 'user', 1, 1, 'asdasd', NULL, 1, '2020-07-22 10:48:44', '2020-07-22 10:48:45'),
(2092787137, 'user', 1, 1, 'hai', NULL, 1, '2020-07-29 02:59:04', '2020-07-29 02:59:05'),
(2106282985, 'user', 15, 1, 'Baik kok', NULL, 1, '2020-07-29 03:00:00', '2020-07-29 03:00:00'),
(2157148780, 'user', 15, 1, 'hi jugaa', NULL, 1, '2020-07-29 02:59:39', '2020-07-29 02:59:39'),
(2161420168, 'user', 1, 15, 'cb liat iinii', '2aae39de-91f7-4b53-9227-744a6f8c14f6.jpg,depositphotos_53089957-stock-photo-woman-hand-making-stop-sign.jpg', 1, '2020-07-29 03:00:31', '2020-07-29 03:00:32'),
(2276284184, 'user', 1, 15, 'kamu apa kabar?', NULL, 1, '2020-07-29 02:59:48', '2020-07-29 02:59:49'),
(2413675267, 'user', 15, 1, 'njir apaan tuh', NULL, 1, '2020-07-29 03:00:44', '2020-07-29 03:00:45'),
(2561626951, 'user', 1, 15, 'hi', NULL, 1, '2020-07-29 02:59:26', '2020-07-29 02:59:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2016_01_01_000000_add_voyager_user_fields', 1),
(3, '2016_01_01_000000_create_data_types_table', 1),
(4, '2016_05_19_173453_create_menu_table', 1),
(5, '2016_10_21_190000_create_roles_table', 1),
(6, '2016_10_21_190000_create_settings_table', 1),
(7, '2016_11_30_135954_create_permission_table', 1),
(8, '2016_11_30_141208_create_permission_role_table', 1),
(9, '2016_12_26_201236_data_types__add__server_side', 1),
(10, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(11, '2017_01_14_005015_create_translations_table', 1),
(12, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(13, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(14, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(15, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(16, '2017_08_05_000000_add_group_to_settings_table', 1),
(17, '2017_11_26_013050_add_user_role_relationship', 1),
(18, '2017_11_26_015000_create_user_roles_table', 1),
(19, '2018_03_11_000000_add_user_settings', 1),
(20, '2018_03_14_000000_add_details_to_data_types_table', 1),
(21, '2018_03_16_000000_make_settings_value_nullable', 1),
(22, '2019_08_19_000000_create_failed_jobs_table', 1),
(23, '2016_01_01_000000_create_pages_table', 2),
(24, '2016_01_01_000000_create_posts_table', 2),
(25, '2016_02_15_204651_create_categories_table', 2),
(26, '2017_04_11_000000_alter_post_nullable_fields_table', 2),
(27, '2019_09_22_192348_create_messages_table', 3),
(28, '2019_10_16_211433_create_favorites_table', 3),
(29, '2019_10_18_223259_add_avatar_to_users', 3),
(30, '2019_10_20_211056_add_messenger_color_to_users', 3),
(31, '2019_10_22_000539_add_dark_mode_to_users', 3),
(32, '2019_10_25_214038_add_active_status_to_users', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `people`
--

CREATE TABLE `people` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `people`
--

INSERT INTO `people` (`id`, `nama`, `email`, `password`, `profile`, `created_at`, `updated_at`) VALUES
(1, 'Muhammad Shidqi', 'shidqi@gmail.com', '12345678', 'default.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2020-07-08 06:28:18', '2020-07-08 06:28:18'),
(2, 'browse_bread', NULL, '2020-07-08 06:28:18', '2020-07-08 06:28:18'),
(3, 'browse_database', NULL, '2020-07-08 06:28:18', '2020-07-08 06:28:18'),
(4, 'browse_media', NULL, '2020-07-08 06:28:18', '2020-07-08 06:28:18'),
(5, 'browse_compass', NULL, '2020-07-08 06:28:18', '2020-07-08 06:28:18'),
(6, 'browse_menus', 'menus', '2020-07-08 06:28:18', '2020-07-08 06:28:18'),
(7, 'read_menus', 'menus', '2020-07-08 06:28:18', '2020-07-08 06:28:18'),
(8, 'edit_menus', 'menus', '2020-07-08 06:28:18', '2020-07-08 06:28:18'),
(9, 'add_menus', 'menus', '2020-07-08 06:28:18', '2020-07-08 06:28:18'),
(10, 'delete_menus', 'menus', '2020-07-08 06:28:18', '2020-07-08 06:28:18'),
(11, 'browse_roles', 'roles', '2020-07-08 06:28:18', '2020-07-08 06:28:18'),
(12, 'read_roles', 'roles', '2020-07-08 06:28:18', '2020-07-08 06:28:18'),
(13, 'edit_roles', 'roles', '2020-07-08 06:28:18', '2020-07-08 06:28:18'),
(14, 'add_roles', 'roles', '2020-07-08 06:28:18', '2020-07-08 06:28:18'),
(15, 'delete_roles', 'roles', '2020-07-08 06:28:18', '2020-07-08 06:28:18'),
(16, 'browse_users', 'users', '2020-07-08 06:28:18', '2020-07-08 06:28:18'),
(17, 'read_users', 'users', '2020-07-08 06:28:19', '2020-07-08 06:28:19'),
(18, 'edit_users', 'users', '2020-07-08 06:28:19', '2020-07-08 06:28:19'),
(19, 'add_users', 'users', '2020-07-08 06:28:19', '2020-07-08 06:28:19'),
(20, 'delete_users', 'users', '2020-07-08 06:28:19', '2020-07-08 06:28:19'),
(21, 'browse_settings', 'settings', '2020-07-08 06:28:19', '2020-07-08 06:28:19'),
(22, 'read_settings', 'settings', '2020-07-08 06:28:19', '2020-07-08 06:28:19'),
(23, 'edit_settings', 'settings', '2020-07-08 06:28:19', '2020-07-08 06:28:19'),
(24, 'add_settings', 'settings', '2020-07-08 06:28:19', '2020-07-08 06:28:19'),
(25, 'delete_settings', 'settings', '2020-07-08 06:28:19', '2020-07-08 06:28:19'),
(41, 'browse_hooks', NULL, '2020-07-08 06:28:21', '2020-07-08 06:28:21'),
(82, 'browse_flames', 'flames', '2020-09-21 15:30:09', '2020-09-21 15:30:09'),
(83, 'read_flames', 'flames', '2020-09-21 15:30:09', '2020-09-21 15:30:09'),
(84, 'edit_flames', 'flames', '2020-09-21 15:30:09', '2020-09-21 15:30:09'),
(85, 'add_flames', 'flames', '2020-09-21 15:30:09', '2020-09-21 15:30:09'),
(86, 'delete_flames', 'flames', '2020-09-21 15:30:09', '2020-09-21 15:30:09'),
(87, 'browse_floods', 'floods', '2020-09-21 15:31:40', '2020-09-21 15:31:40'),
(88, 'read_floods', 'floods', '2020-09-21 15:31:40', '2020-09-21 15:31:40'),
(89, 'edit_floods', 'floods', '2020-09-21 15:31:40', '2020-09-21 15:31:40'),
(90, 'add_floods', 'floods', '2020-09-21 15:31:40', '2020-09-21 15:31:40'),
(91, 'delete_floods', 'floods', '2020-09-21 15:31:40', '2020-09-21 15:31:40'),
(92, 'browse_grounds', 'grounds', '2020-09-21 15:34:47', '2020-09-21 15:34:47'),
(93, 'read_grounds', 'grounds', '2020-09-21 15:34:47', '2020-09-21 15:34:47'),
(94, 'edit_grounds', 'grounds', '2020-09-21 15:34:47', '2020-09-21 15:34:47'),
(95, 'add_grounds', 'grounds', '2020-09-21 15:34:47', '2020-09-21 15:34:47'),
(96, 'delete_grounds', 'grounds', '2020-09-21 15:34:47', '2020-09-21 15:34:47'),
(102, 'browse_persons', 'persons', '2020-10-10 04:33:20', '2020-10-10 04:33:20'),
(103, 'read_persons', 'persons', '2020-10-10 04:33:20', '2020-10-10 04:33:20'),
(104, 'edit_persons', 'persons', '2020-10-10 04:33:20', '2020-10-10 04:33:20'),
(105, 'add_persons', 'persons', '2020-10-10 04:33:20', '2020-10-10 04:33:20'),
(106, 'delete_persons', 'persons', '2020-10-10 04:33:20', '2020-10-10 04:33:20'),
(112, 'browse_people', 'people', '2020-10-11 01:48:35', '2020-10-11 01:48:35'),
(113, 'read_people', 'people', '2020-10-11 01:48:35', '2020-10-11 01:48:35'),
(114, 'edit_people', 'people', '2020-10-11 01:48:35', '2020-10-11 01:48:35'),
(115, 'add_people', 'people', '2020-10-11 01:48:35', '2020-10-11 01:48:35'),
(116, 'delete_people', 'people', '2020-10-11 01:48:35', '2020-10-11 01:48:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
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
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2020-07-08 06:28:18', '2020-07-08 06:28:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'MARA', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Ketahui perkembangan bencana alam di mana pun dan kapan pun', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings/October2020/kAMd1DInCZrdWQd6vI1A.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings/October2020/mEJKaLpEKdsAuXZUtaqE.png', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'MARA', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Selamat datang di halaman login Admin', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings/October2020/O1etY4fmy7FnVqRV9rsh.png', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings/October2020/38VYyEg8RFzVab8PRZBP.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2020-07-08 06:28:21', '2020-07-08 06:28:21'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2020-07-08 06:28:21', '2020-07-08 06:28:21'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2020-07-08 06:28:21', '2020-07-08 06:28:21'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2020-07-08 06:28:21', '2020-07-08 06:28:21'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2020-07-08 06:28:21', '2020-07-08 06:28:21'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2020-07-08 06:28:21', '2020-07-08 06:28:21'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2020-07-08 06:28:21', '2020-07-08 06:28:21'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2020-07-08 06:28:21', '2020-07-08 06:28:21'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2020-07-08 06:28:21', '2020-07-08 06:28:21'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2020-07-08 06:28:21', '2020-07-08 06:28:21'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2020-07-08 06:28:21', '2020-07-08 06:28:21'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2020-07-08 06:28:21', '2020-07-08 06:28:21'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2020-07-08 06:28:21', '2020-07-08 06:28:21'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2020-07-08 06:28:21', '2020-07-08 06:28:21'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2020-07-08 06:28:21', '2020-07-08 06:28:21'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2020-07-08 06:28:21', '2020-07-08 06:28:21'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2020-07-08 06:28:21', '2020-07-08 06:28:21'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2020-07-08 06:28:21', '2020-07-08 06:28:21'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2020-07-08 06:28:21', '2020-07-08 06:28:21'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2020-07-08 06:28:21', '2020-07-08 06:28:21'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2020-07-08 06:28:21', '2020-07-08 06:28:21'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2020-07-08 06:28:21', '2020-07-08 06:28:21'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2020-07-08 06:28:21', '2020-07-08 06:28:21'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2020-07-08 06:28:21', '2020-07-08 06:28:21'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2020-07-08 06:28:21', '2020-07-08 06:28:21'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2020-07-08 06:28:21', '2020-07-08 06:28:21'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2020-07-08 06:28:21', '2020-07-08 06:28:21'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2020-07-08 06:28:21', '2020-07-08 06:28:21'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2020-07-08 06:28:21', '2020-07-08 06:28:21'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2020-07-08 06:28:21', '2020-07-08 06:28:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT 0,
  `dark_mode` tinyint(1) NOT NULL DEFAULT 0,
  `messenger_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#2180f3',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `active_status`, `dark_mode`, `messenger_color`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Muhammad Shidqi', 'admin@admin.com', 1, 0, '#2180f3', 'users/July2020/xYM9YnxVccdx3QfTSKdB.jpg', NULL, '$2y$10$rzpxhCeqkhGkGFCFPZuiTeWD.8KdQbFazi8D0kUmNdnVsc1QdMzCi', 'ytb6ZHKmQ5d3YFIB7KJvxLB2Uyi8yOViKM1X6tHFDwlaPVfYJ1X7UhtjnOwz', '{\"locale\":\"id\"}', '2020-07-08 06:28:20', '2020-07-30 06:56:41'),
(15, 1, 'Alwi 110', 'm.shidqi810@gmail.com', 0, 0, '#2180f3', 'users/October2020/x5cBhshfxsWsTwrmgnBt.jpg', NULL, '$2y$10$LQ5kWo8nnwp/2dUdAUkq5uWBnGg7rA5P/IqJXi4uWCGtc5KmjFHqW', '4QlA4JRmy3zzpVwobEmeLvmPs2XnqaTOKsx0p3kfHF5bEfGi1trDuAjtvqky', '{\"locale\":\"id\"}', '2020-07-28 13:18:50', '2020-10-11 03:44:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(10, 1),
(10, 4),
(10, 6);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indeks untuk tabel `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `flames`
--
ALTER TABLE `flames`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `floods`
--
ALTER TABLE `floods`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `grounds`
--
ALTER TABLE `grounds`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indeks untuk tabel `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indeks untuk tabel `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indeks untuk tabel `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indeks untuk tabel `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT untuk tabel `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `flames`
--
ALTER TABLE `flames`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `floods`
--
ALTER TABLE `floods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `grounds`
--
ALTER TABLE `grounds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `people`
--
ALTER TABLE `people`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
