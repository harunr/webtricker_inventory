-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 05, 2022 at 09:30 AM
-- Server version: 10.5.12-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u430957945_inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `initial_balance` double DEFAULT NULL,
  `total_balance` double NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `account_no`, `name`, `initial_balance`, `total_balance`, `note`, `is_default`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '11111', 'Sales Account', 1000, 1000, 'this is first account', 1, 1, '2018-12-18 02:58:02', '2022-09-06 14:15:46'),
(3, '21211', 'Sa', NULL, 0, NULL, 0, 1, '2018-12-18 02:58:56', '2022-09-06 14:15:46');

-- --------------------------------------------------------

--
-- Table structure for table `adjustments`
--

CREATE TABLE `adjustments` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_qty` double NOT NULL,
  `item` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `adjustments`
--

INSERT INTO `adjustments` (`id`, `reference_no`, `warehouse_id`, `document`, `total_qty`, `item`, `note`, `created_at`, `updated_at`) VALUES
(11, 'adr-20220820-083043', 1, NULL, 1, 1, NULL, '2022-08-20 20:30:43', '2022-08-20 20:30:43'),
(12, 'adr-20220824-060226', 1, NULL, 20, 1, NULL, '2022-08-24 18:02:26', '2022-08-24 18:02:26'),
(13, 'adr-20220824-060610', 1, NULL, 89, 5, NULL, '2022-08-24 18:06:10', '2022-08-24 18:06:10'),
(14, 'adr-20220825-112327', 1, NULL, 1, 1, NULL, '2022-08-25 11:23:27', '2022-08-25 11:23:27'),
(15, 'adr-20220825-112505', 1, NULL, 1, 1, NULL, '2022-08-25 11:25:05', '2022-08-25 11:25:05'),
(16, 'adr-20220905-024308', 1, NULL, 53, 1, NULL, '2022-09-05 14:43:08', '2022-09-05 14:43:08'),
(17, 'adr-20220905-065648', 1, NULL, 1, 1, NULL, '2022-09-05 18:56:48', '2022-09-05 18:58:10'),
(18, 'adr-20220905-070343', 1, NULL, 6, 2, NULL, '2022-09-05 19:03:43', '2022-09-05 19:03:43'),
(19, 'adr-20220905-070650', 1, NULL, 5, 2, NULL, '2022-09-05 19:06:50', '2022-09-05 19:06:50'),
(20, 'adr-20220905-071355', 1, NULL, 18, 1, NULL, '2022-09-05 19:13:55', '2022-09-05 19:13:55');

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `employee_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `checkin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `date`, `employee_id`, `user_id`, `checkin`, `checkout`, `status`, `note`, `created_at`, `updated_at`) VALUES
(1, '2019-01-02', 1, 1, '10:00am', '6:30pm', 1, NULL, '2019-01-02 03:30:50', '2019-01-02 03:30:50'),
(3, '2019-01-02', 3, 1, '10:15am', '6:30pm', 0, NULL, '2019-01-02 03:57:12', '2019-01-02 03:57:12'),
(6, '2020-02-03', 1, 1, '11:30am', '6:00pm', 0, NULL, '2020-02-03 09:57:30', '2020-02-03 09:57:30');

-- --------------------------------------------------------

--
-- Table structure for table `billers`
--

CREATE TABLE `billers` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `billers`
--

INSERT INTO `billers` (`id`, `email`, `name`, `image`, `company_name`, `vat_number`, `phone_number`, `address`, `city`, `state`, `postal_code`, `country`, `is_active`, `created_at`, `updated_at`) VALUES
(1, NULL, 'yousuf', 'aks.jpg', 'aks', '31123', '442343324', 'halishahar', 'chittagong', NULL, NULL, 'sdgs', 0, '2018-05-12 21:49:30', '2022-05-29 14:08:05'),
(2, NULL, 'tariq', NULL, 'big tree', NULL, '321312', 'khulshi', 'chittagong', NULL, NULL, NULL, 0, '2018-05-12 21:57:54', '2022-05-29 14:08:14'),
(3, NULL, 'test', NULL, 'test', NULL, '3211', 'erewrwqre', 'afsf', NULL, NULL, NULL, 0, '2018-05-30 02:38:58', '2018-05-30 02:39:57'),
(5, NULL, 'modon', 'mogaTel.jpg', 'mogaTel', '', '32321', 'nasirabad', 'chittagong', '', '', 'bd', 0, '2018-09-01 03:59:54', '2022-05-29 14:08:21'),
(6, NULL, 'a', NULL, 'a', NULL, 'q', 'q', 'q', NULL, NULL, NULL, 0, '2018-10-07 02:33:39', '2018-10-07 02:34:18'),
(7, NULL, 'a', NULL, 'a', NULL, 'a', 'a', 'a', NULL, NULL, NULL, 0, '2018-10-07 02:34:36', '2018-10-07 02:36:07'),
(8, NULL, 'x', 'x.png', 'x', NULL, 'x', 'x', 'x', NULL, NULL, NULL, 0, '2019-03-18 11:02:42', '2022-05-29 14:08:26'),
(9, NULL, 'tofael ahmed', 'etotalsports.png', 'etotalsports', '26', '01839974201', 'dhaka', 'jamtoli', 'Jamalpur', '2000', 'Bangladesh', 0, '2022-05-27 16:49:39', '2022-05-27 16:50:04'),
(10, NULL, 'Mimon', 'TheDetailBoss.jpg', 'The Detail Boss', NULL, '01711873583', 'Sui Suta, Doripara', 'Jamalpur', NULL, '2000', NULL, 1, '2022-05-29 14:09:29', '2022-05-29 14:09:29'),
(11, NULL, 'Shojol', NULL, 'Detail Boss Jp', NULL, '0160013027', 'Doripara', 'Jamalpur', NULL, NULL, NULL, 1, '2022-06-01 16:30:12', '2022-06-01 16:30:12'),
(12, NULL, 'Noyon', NULL, 'DJP', NULL, '01768055350', 'Doripara', 'Jamalpur', NULL, NULL, NULL, 1, '2022-06-01 16:31:39', '2022-06-01 16:31:39'),
(13, NULL, 'Masud', NULL, 'DJP1', NULL, '01794447485', 'Beltia', 'Jamalpur', NULL, NULL, NULL, 1, '2022-06-01 16:32:11', '2022-06-01 16:32:11');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `title`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
(3, 'Gulf', '20220525071813.png', 1, '2018-05-12 09:06:14', '2022-05-25 19:18:13'),
(4, 'Gigabyte', '20220512120655.jpg', 0, '2018-05-12 09:08:41', '2022-05-12 06:21:33'),
(5, 'Mobil', '20220525071914.png', 1, '2018-08-31 23:34:49', '2022-05-25 19:19:14'),
(6, 'jjjj', '20201019093419.jpg', 0, '2020-10-19 15:33:52', '2020-10-19 15:35:58'),
(7, 'Lotto', NULL, 0, '2020-11-16 04:13:41', '2022-05-12 06:21:27'),
(8, 'cocacola', NULL, 0, '2022-01-12 13:26:22', '2022-01-12 13:26:30'),
(9, 'pepsi', '20220112072659.jpg', 0, '2022-01-12 13:26:59', '2022-01-12 13:27:07'),
(10, 'Castrol', '20220525071747.png', 1, '2022-05-12 06:22:30', '2022-05-25 19:17:47'),
(11, 'Motul', '20220525071637.png', 1, '2022-05-12 06:22:43', '2022-05-25 19:16:37'),
(12, 'Shell', '20220525071538.png', 1, '2022-05-25 19:15:38', '2022-05-25 19:15:38'),
(13, 'Lube One', '20220806070928.png', 1, '2022-05-25 19:19:30', '2022-08-06 19:09:28'),
(14, 'Liqui Moly', '20220525072049.png', 1, '2022-05-25 19:20:49', '2022-05-25 19:20:49'),
(15, 'BP Super', '20220525072200.png', 1, '2022-05-25 19:22:00', '2022-05-25 19:22:00'),
(16, 'Bajaj DTS-i', '20220525072249.png', 1, '2022-05-25 19:22:49', '2022-05-25 19:22:49'),
(17, 'Hero', '20220525072318.png', 1, '2022-05-25 19:23:18', '2022-05-25 19:23:18'),
(18, 'TVS', '20220525072407.png', 1, '2022-05-25 19:24:07', '2022-05-25 19:24:07'),
(19, 'Caltex', '20220525072505.png', 1, '2022-05-25 19:25:05', '2022-05-25 19:25:05'),
(20, 'Eneos', '20220525072533.jpeg', 1, '2022-05-25 19:25:33', '2022-05-25 19:25:33'),
(21, 'Bizol', '20220525072608.jpeg', 1, '2022-05-25 19:26:08', '2022-05-25 19:26:08'),
(22, 'Yamalube', '20220525073950.gif', 1, '2022-05-25 19:39:50', '2022-05-25 19:39:50'),
(23, 'PTT', '20220525074113.png', 1, '2022-05-25 19:41:13', '2022-05-25 19:41:13'),
(24, 'Mexon', '20220525074249.jpg', 1, '2022-05-25 19:42:49', '2022-05-25 19:42:49'),
(25, 'Endurance', '20220806070838.png', 1, '2022-08-06 19:08:38', '2022-08-06 19:08:38'),
(26, 'Folder Auto Parts Limited', '20220808052008.png', 1, '2022-08-08 17:20:08', '2022-08-08 17:20:08'),
(27, 'Total', '20220824051201.png', 1, '2022-08-24 17:12:01', '2022-08-24 17:12:01'),
(28, 'Toyama', '20220827010006.jpeg', 1, '2022-08-27 13:00:06', '2022-08-27 13:00:06');

-- --------------------------------------------------------

--
-- Table structure for table `cash_registers`
--

CREATE TABLE `cash_registers` (
  `id` int(10) UNSIGNED NOT NULL,
  `cash_in_hand` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cash_registers`
--

INSERT INTO `cash_registers` (`id`, `cash_in_hand`, `user_id`, `warehouse_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 100, 9, 1, 0, '2020-10-13 07:32:54', '2020-10-24 00:27:42'),
(2, 50, 9, 1, 1, '2020-10-13 15:25:26', '2020-10-13 15:25:26'),
(3, 200, 1, 1, 0, '2020-10-22 07:53:07', '2021-06-19 04:52:48'),
(4, 100, 1, 2, 0, '2020-10-24 01:04:39', '2022-03-12 14:18:24'),
(5, 1000, 1, 1, 0, '2021-06-19 04:53:22', '2022-03-12 14:18:31'),
(6, 120, 1, 2, 1, '2022-03-31 05:29:13', '2022-03-31 05:29:13'),
(7, 600, 1, 1, 1, '2022-05-25 20:25:40', '2022-05-25 20:25:40'),
(8, 50, 1, 1, 1, '2022-06-05 12:40:47', '2022-06-05 12:40:47'),
(9, 50, 1, 1, 1, '2022-06-05 12:40:58', '2022-06-05 12:40:58'),
(10, 50, 1, 1, 1, '2022-06-16 18:25:44', '2022-06-16 18:25:44'),
(11, 50, 1, 1, 1, '2022-06-16 18:25:53', '2022-06-16 18:25:53'),
(12, 1, 38, 1, 1, '2022-07-16 15:29:22', '2022-07-16 15:29:22'),
(13, 3520, 1, 1, 1, '2022-08-06 19:20:54', '2022-08-06 19:20:54'),
(14, 3520, 1, 1, 1, '2022-08-06 19:21:12', '2022-08-06 19:21:12'),
(15, 3520, 1, 1, 1, '2022-08-06 19:25:00', '2022-08-06 19:25:00'),
(16, 20, 1, 1, 1, '2022-08-07 16:43:49', '2022-08-07 16:43:49'),
(17, 200, 38, 1, 1, '2022-09-05 19:22:47', '2022-09-05 19:22:47'),
(18, 810, 38, 1, 1, '2022-09-06 13:58:59', '2022-09-06 13:58:59'),
(19, 810, 38, 1, 1, '2022-09-06 13:59:08', '2022-09-06 13:59:08');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `parent_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Fruits', NULL, 9, 0, '2018-05-12 03:27:25', '2022-05-12 05:58:52'),
(2, 'electronics', NULL, NULL, 0, '2018-05-12 03:35:57', '2022-05-12 05:58:39'),
(3, 'Castrol', '20220526040313.png', NULL, 0, '2018-05-12 03:36:08', '2022-05-26 16:03:20'),
(4, 'toy', NULL, NULL, 0, '2018-05-23 22:57:48', '2022-05-12 05:35:54'),
(7, 'jacket', NULL, NULL, 0, '2018-05-27 22:39:51', '2018-05-27 22:40:48'),
(9, 'food', NULL, NULL, 0, '2018-06-25 01:21:40', '2022-05-12 05:58:47'),
(10, 'anda', NULL, NULL, 0, '2018-08-28 23:36:31', '2018-08-28 23:37:34'),
(11, 'anda', NULL, NULL, 0, '2018-08-28 23:48:06', '2018-08-28 23:53:22'),
(12, 'accessories', NULL, NULL, 0, '2018-12-04 23:28:53', '2022-05-12 05:33:37'),
(14, 'nn', NULL, NULL, 0, '2019-04-10 04:22:30', '2019-04-10 05:38:47'),
(15, 'nm', NULL, NULL, 0, '2019-04-10 04:22:36', '2019-04-10 05:41:43'),
(16, 'desktop', NULL, 3, 0, '2020-03-11 10:42:33', '2022-05-12 05:58:30'),
(17, 'tostos', '20200701080042.png', NULL, 0, '2020-07-01 14:00:42', '2020-07-01 15:35:34'),
(19, 'Paracetamol', NULL, NULL, 0, '2021-03-07 07:16:01', '2022-05-12 05:47:50'),
(20, 'Automobile', NULL, NULL, 0, '2021-07-15 12:35:12', '2022-05-12 05:34:10'),
(21, 'test', '20220526040208.png', NULL, 0, '2022-05-12 06:18:46', '2022-05-26 16:02:38'),
(22, 'MOTUL', '20220526011335.png', NULL, 0, '2022-05-12 06:19:41', '2022-05-26 13:13:45'),
(23, 'Gulf', '20220526040254.png', NULL, 0, '2022-05-12 06:21:13', '2022-05-26 16:03:00'),
(24, 'Detailing Service', NULL, NULL, 1, '2022-05-25 13:39:03', '2022-05-25 13:39:03'),
(25, 'Engine Oil', '20220525063355.png', NULL, 1, '2022-05-25 18:33:55', '2022-05-25 18:33:55'),
(26, 'Machine Additive', '20220525063610.jpg', NULL, 1, '2022-05-25 18:36:10', '2022-05-25 18:36:10'),
(27, 'Automobile Parts', '20220525063652.jpg', NULL, 1, '2022-05-25 18:36:52', '2022-05-25 18:36:52'),
(28, 'Accessories', '20220525063854.jpg', NULL, 1, '2022-05-25 18:38:54', '2022-05-25 18:38:54'),
(29, 'test', NULL, NULL, 0, '2022-05-26 15:54:02', '2022-05-26 15:54:10');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `minimum_amount` double DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `used` int(11) NOT NULL,
  `expired_date` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `amount`, `minimum_amount`, `quantity`, `used`, `expired_date`, `user_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'sonar bangla', 'percentage', 20, 0, 100, 4, '2020-11-19', 1, 1, '2018-10-25 22:38:50', '2020-11-18 00:52:39'),
(2, 'i love bangladesh', 'fixed', 200, 1000, 50, 1, '2018-12-31', 1, 1, '2018-10-27 02:59:26', '2019-03-02 05:46:48');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`, `exchange_rate`, `created_at`, `updated_at`) VALUES
(1, 'BD TK', 'BDT', 1, '2020-11-01 00:22:58', '2022-05-11 12:12:24'),
(2, 'Euro', 'Euro', 0.85, '2020-11-01 01:29:12', '2020-11-10 23:15:34'),
(3, 'BD', 'BDT', 2, '2022-05-11 12:12:36', '2022-05-11 12:12:36');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `points` double DEFAULT NULL,
  `deposit` double DEFAULT NULL,
  `opening_due` int(15) NOT NULL,
  `expense` double DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `customer_group_id`, `user_id`, `name`, `company_name`, `email`, `phone_number`, `tax_no`, `address`, `city`, `state`, `postal_code`, `country`, `points`, `deposit`, `opening_due`, `expense`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 22, 'dhiman', 'lioncoders', 'dhiman@gmail.com', '+8801111111101', NULL, 'kajir deuri', 'chittagong', NULL, NULL, 'bd', 38, 190, 0, 20, 0, '2018-05-12 10:00:48', '2022-05-25 18:30:40'),
(2, 2, NULL, 'moinul', 'lioncoders', NULL, '+8801200000001', NULL, 'jamalkhan', 'chittagong', NULL, NULL, 'bd', NULL, 100, 0, 20, 0, '2018-05-12 10:04:51', '2022-05-25 18:30:40'),
(3, 3, NULL, 'tariq', 'big tree', NULL, '3424', NULL, 'khulshi', 'chittagong', NULL, NULL, 'bd', NULL, NULL, 0, NULL, 0, '2018-05-12 10:07:52', '2022-05-25 18:30:40'),
(4, 1, NULL, 'test', NULL, NULL, '4234', NULL, 'frwerw', 'qwerwqr', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '2018-05-30 01:35:28', '2018-05-30 01:37:38'),
(8, 1, NULL, 'anwar', 'smart it', 'anwar@smartit.com', '32321', NULL, 'nasirabad', 'chittagong', NULL, NULL, 'bd', NULL, NULL, 0, NULL, 0, '2018-09-01 03:26:13', '2018-09-01 03:29:55'),
(11, 1, NULL, 'walk-in-customer', NULL, '', '01923000001', '11111', 'mohammadpur', 'dhaka', NULL, NULL, NULL, 274, NULL, 0, 0, 0, '2018-09-02 01:30:54', '2022-05-25 18:30:40'),
(15, 1, NULL, 's', NULL, NULL, '2', NULL, 's', '3e', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '2018-11-05 04:00:39', '2018-11-08 03:37:08'),
(16, 1, NULL, 'asas', NULL, NULL, '2121', NULL, 'dasd', 'asdd', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '2018-12-01 00:07:53', '2018-12-03 21:55:46'),
(17, 1, NULL, 'sadman', NULL, NULL, '312312', NULL, 'khulshi', 'ctg', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '2020-06-22 09:45:35', '2020-06-22 09:45:51'),
(19, 1, 19, 'Ashfaq', 'Digital image', 'shakalaka@gmail.com', '1212', '999', 'Andorkillah', 'Chittagong', 'Chittagong', '1234', 'Bangladesh', 6, NULL, 0, NULL, 0, '2020-11-09 00:07:16', '2022-05-25 18:30:40'),
(21, 1, 21, 'Modon Miya', 'modon company', 'modon@gmail.com', '2222', NULL, 'kuril road', 'Dhaka', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '2020-11-13 07:12:11', '2022-05-25 18:30:40'),
(25, 1, 28, 'Imran miya', NULL, 'imran@gmail.com', '01923000001', NULL, 'kljkj', 'hhjhh', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, '2021-02-04 06:26:47', '2021-02-04 06:26:47'),
(30, 1, NULL, 'Sauth', NULL, NULL, '01304445641', NULL, 'Pathalia', 'Jamalpur', NULL, '2000', NULL, 19, NULL, -20, NULL, 1, '2022-05-25 18:31:59', '2022-09-18 18:26:01'),
(31, 1, NULL, 'Fardin', NULL, NULL, '21454', NULL, 'Doripara', 'Jamalpur', NULL, NULL, NULL, NULL, NULL, 0, NULL, 1, '2022-05-25 20:26:36', '2022-05-25 20:26:36'),
(32, 1, NULL, 'Daily Sell', NULL, NULL, '55456', NULL, 'Bangladesh', 'Jamalpur', NULL, NULL, NULL, 78, NULL, 0, NULL, 0, '2022-05-28 13:07:25', '2022-08-27 17:06:03'),
(33, 1, NULL, 'Daily Sell', 'The Detail Boss', NULL, '00044', NULL, 'Jamalpur', 'Jamalpur', NULL, NULL, NULL, NULL, NULL, 0, NULL, 1, '2022-08-27 15:11:06', '2022-08-27 15:11:06'),
(34, 3, NULL, 'Islam Petrolium', NULL, NULL, '01716022206', NULL, 'New Bypass mor, Medical college road', 'Jamalpur', NULL, NULL, NULL, NULL, NULL, 18932, NULL, 1, '2022-08-27 15:35:22', '2022-08-27 15:35:22'),
(35, 1, NULL, 'Rudro Khan', NULL, NULL, '01746065179', NULL, 'Bisic Area', 'Jamalpur', NULL, NULL, NULL, NULL, NULL, -772, NULL, 1, '2022-08-27 15:38:29', '2022-08-27 15:38:29'),
(36, 1, NULL, 'Hannan Kaka', NULL, NULL, '01751582785', NULL, 'Doripara', 'Jamalpur', NULL, NULL, NULL, NULL, NULL, 1000, NULL, 1, '2022-08-27 15:39:44', '2022-11-05 11:38:39'),
(37, 3, NULL, 'Noyon Motors', NULL, NULL, '01738848371', NULL, 'Fishary mor', 'Jamalpur', NULL, NULL, NULL, NULL, NULL, 295, NULL, 1, '2022-08-27 15:41:07', '2022-08-27 15:41:07'),
(38, 3, NULL, 'Nasir Motors', NULL, NULL, '01918668990', NULL, 'Near Hotel Tushar', 'Jamalpur', NULL, NULL, NULL, NULL, NULL, 10693, NULL, 1, '2022-08-27 15:42:11', '2022-08-27 15:42:11'),
(39, 3, NULL, 'Shawon Motors', NULL, NULL, '01917984343', NULL, 'Near Fire Service', 'Jamalpur', NULL, NULL, NULL, NULL, NULL, 6050, NULL, 1, '2022-08-27 15:43:39', '2022-08-27 15:43:39'),
(40, 1, NULL, 'Sakib', NULL, NULL, '01967265600', NULL, 'Langol jora', 'Jamalpur', NULL, NULL, NULL, NULL, NULL, 830, NULL, 1, '2022-08-27 15:45:18', '2022-08-27 15:45:18'),
(41, 1, NULL, 'Saiful Vai', NULL, NULL, '01767197868', NULL, 'Doripara', 'Jamalpur', NULL, NULL, NULL, NULL, NULL, 20080, NULL, 1, '2022-08-27 15:46:39', '2022-08-27 15:46:39'),
(42, 1, NULL, 'Billal', NULL, NULL, '01704052767', NULL, 'Jigatola', 'Jamalpur', NULL, NULL, NULL, NULL, NULL, 6575, NULL, 1, '2022-08-27 15:47:46', '2022-08-27 15:47:46'),
(43, 1, NULL, 'Babu Mullah', NULL, NULL, '01712400043', NULL, 'Doripara', 'Jamalpur', NULL, NULL, NULL, NULL, NULL, 3500, NULL, 1, '2022-08-27 15:48:51', '2022-08-27 15:48:51'),
(44, 3, NULL, 'Samir Emnterprise', NULL, NULL, '01728532392', NULL, 'New Bypass mor, Medical college road', 'Jamalpur', NULL, NULL, NULL, NULL, NULL, 4626, NULL, 1, '2022-08-27 15:49:53', '2022-08-27 15:49:53'),
(45, 3, NULL, 'Ayan Enterprice', NULL, NULL, '01722644689', NULL, 'New Bypass mor, Medical college road', 'Jamalpur', NULL, NULL, NULL, NULL, NULL, 18640, NULL, 1, '2022-08-27 15:53:30', '2022-08-27 15:53:30'),
(46, 1, NULL, 'Ashekur Rahman Rasel', NULL, NULL, '01711943121', NULL, 'Pathalia', 'Jamalpur', NULL, NULL, NULL, NULL, NULL, 13850, NULL, 1, '2022-08-27 16:41:48', '2022-08-27 16:41:48'),
(47, 3, NULL, 'Habil engineering', NULL, NULL, '01712816208', NULL, 'New Bypass mor, Medical college road', 'Jamalpur', NULL, NULL, NULL, NULL, NULL, 19340, NULL, 1, '2022-08-27 16:43:22', '2022-08-27 16:43:22'),
(48, 3, NULL, 'Muntaha Motors', NULL, NULL, '01731214448', NULL, 'Puraton Bypass mor', 'Jamalpur', NULL, NULL, NULL, NULL, NULL, 19053, NULL, 1, '2022-08-27 16:48:43', '2022-08-27 16:48:43'),
(49, 1, NULL, 'Mosharof Mama', NULL, NULL, '01712377577', NULL, 'Bagerhat', 'Jamalpur', NULL, NULL, NULL, NULL, NULL, 9028, NULL, 1, '2022-08-27 16:51:19', '2022-08-27 16:51:19'),
(50, 3, NULL, 'Rakhma Auto', NULL, NULL, '01956774549', NULL, 'New Bypass mor, Medical college road', 'Jamalpur', NULL, NULL, NULL, NULL, NULL, 1032, NULL, 1, '2022-08-27 16:52:05', '2022-08-27 16:52:05'),
(51, 1, NULL, 'Tarif Flour Mills', NULL, NULL, '01714032727', NULL, 'Bisic Area', 'Jamalpur', NULL, NULL, NULL, NULL, NULL, 670, NULL, 1, '2022-08-27 16:53:56', '2022-08-27 16:53:56'),
(52, 3, NULL, 'Alamin Motors', NULL, NULL, '01770670600', NULL, 'Jigatola', 'Jamalpur', NULL, NULL, NULL, NULL, NULL, 7860, NULL, 1, '2022-08-27 16:58:40', '2022-08-27 16:58:40'),
(53, 1, NULL, 'Shumon Vai Teer', NULL, NULL, '01779925200', NULL, 'Doripara', 'Jamalpur', NULL, NULL, NULL, NULL, NULL, 5460, NULL, 1, '2022-08-27 17:00:17', '2022-08-27 17:00:17'),
(54, 3, NULL, 'Moto Expert', NULL, NULL, '01757323121', NULL, 'Mirza azam Chattar', 'Jamalpur', NULL, NULL, NULL, NULL, NULL, 25095, NULL, 1, '2022-08-27 17:02:14', '2022-08-27 17:02:14'),
(55, 3, NULL, 'Rukon Motors', NULL, NULL, '01710235048', NULL, 'Puraton Bypass mor', 'Jamalpur', NULL, NULL, NULL, NULL, NULL, 15400, NULL, 1, '2022-08-27 17:03:45', '2022-08-27 17:03:45'),
(56, 3, NULL, 'Papri Automobiles', NULL, NULL, '01710025386', NULL, 'New Bypass mor, Medical college road', 'Jamalpur', NULL, NULL, NULL, NULL, NULL, 3055, NULL, 1, '2022-08-27 17:04:37', '2022-08-27 17:04:37'),
(57, 3, NULL, 'Dewangong Biker Shop', NULL, NULL, '01842554343', NULL, 'Dewangong', 'Jamalpur', NULL, NULL, NULL, NULL, NULL, 0, NULL, 1, '2022-08-27 17:08:53', '2022-08-27 17:08:53'),
(58, 1, NULL, 'tofael ahmed', 'etotalsports', 'tofael@webtricker.com', '01839974201', NULL, 'dhaka', 'jamtoli', 'Jamalpur', '2000', 'Bangladesh', NULL, NULL, 0, NULL, 0, '2022-09-06 21:21:09', '2022-09-06 21:21:40');

-- --------------------------------------------------------

--
-- Table structure for table `customer_groups`
--

CREATE TABLE `customer_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_groups`
--

INSERT INTO `customer_groups` (`id`, `name`, `percentage`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'general', '0', 1, '2018-05-12 08:09:36', '2019-03-02 06:01:35'),
(2, 'distributor', '0', 0, '2018-05-12 08:12:14', '2022-09-05 12:32:10'),
(3, 'reseller', '0', 1, '2018-05-12 08:12:26', '2022-09-04 21:55:51'),
(4, 'test', '12', 0, '2018-05-30 01:17:16', '2018-05-30 01:17:57'),
(5, 'test', '0', 0, '2018-08-03 09:10:27', '2018-08-03 09:10:34');

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

CREATE TABLE `deliveries` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivered_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recieved_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deliveries`
--

INSERT INTO `deliveries` (`id`, `reference_no`, `sale_id`, `user_id`, `address`, `delivered_by`, `recieved_by`, `file`, `note`, `status`, `created_at`, `updated_at`) VALUES
(1, 'dr-20180808-044431', 1, 1, 'kajir deuri chittagong bd', 'abul', 'dhiman', NULL, 'Instrument 1', '3', '2018-08-08 10:44:55', '2020-09-26 12:25:39'),
(2, 'dr-20181106-105936', 88, 1, 'mohammadpur dhaka', NULL, NULL, NULL, NULL, '2', '2018-11-06 04:59:43', '2018-11-06 05:10:38'),
(3, 'dr-20181106-111321', 79, 1, 'mohammadpur dhaka', 'Harun', 'Amjad', NULL, NULL, '3', '2018-11-06 05:13:25', '2020-09-26 13:22:11'),
(5, 'dr-20211218-113624', 354, 1, 'mohammadpur dhaka', NULL, NULL, NULL, NULL, '2', '2021-12-18 05:36:30', '2021-12-18 05:36:30');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Sale', 1, '2018-12-27 05:16:47', '2018-12-27 10:40:23'),
(2, 'xyz', 1, '2018-12-27 10:28:47', '2018-12-27 10:28:47');

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` int(10) UNSIGNED NOT NULL,
  `amount` double NOT NULL,
  `customer_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deposits`
--

INSERT INTO `deposits` (`id`, `amount`, `customer_id`, `user_id`, `note`, `created_at`, `updated_at`) VALUES
(1, 90, 1, 1, 'first deposit', '2018-08-25 22:48:23', '2018-08-26 01:18:55'),
(3, 100, 2, 1, NULL, '2018-08-26 00:53:16', '2018-08-26 21:42:39'),
(4, 50, 1, 1, NULL, '2018-09-04 22:56:19', '2018-09-04 22:56:19'),
(5, 50, 1, 1, NULL, '2018-09-10 00:08:40', '2018-09-10 00:08:40');

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applicable_for` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_list` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `valid_from` date NOT NULL,
  `valid_till` date NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double NOT NULL,
  `minimum_qty` double NOT NULL,
  `maximum_qty` double NOT NULL,
  `days` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discounts`
--

INSERT INTO `discounts` (`id`, `name`, `applicable_for`, `product_list`, `valid_from`, `valid_till`, `type`, `value`, `minimum_qty`, `maximum_qty`, `days`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '10% discount', 'Specific', '5,3', '2022-02-03', '2022-12-31', 'percentage', 10, 2, 3, 'Mon,Tue,Wed,Thu,Fri,Sat,Sun', 1, '2022-02-03 13:02:17', '2022-04-23 12:58:26');

-- --------------------------------------------------------

--
-- Table structure for table `discount_plans`
--

CREATE TABLE `discount_plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discount_plans`
--

INSERT INTO `discount_plans` (`id`, `name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'VIP plan', 1, '2022-02-03 12:58:12', '2022-02-03 12:58:12');

-- --------------------------------------------------------

--
-- Table structure for table `discount_plan_customers`
--

CREATE TABLE `discount_plan_customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `discount_plan_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discount_plan_customers`
--

INSERT INTO `discount_plan_customers` (`id`, `discount_plan_id`, `customer_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-02-03 12:58:12', '2022-02-03 12:58:12'),
(2, 1, 19, '2022-02-03 12:58:12', '2022-02-03 12:58:12');

-- --------------------------------------------------------

--
-- Table structure for table `discount_plan_discounts`
--

CREATE TABLE `discount_plan_discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `discount_id` int(11) NOT NULL,
  `discount_plan_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discount_plan_discounts`
--

INSERT INTO `discount_plan_discounts` (`id`, `discount_id`, `discount_plan_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-02-03 13:02:17', '2022-02-03 13:02:17');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `phone_number`, `department_id`, `user_id`, `image`, `address`, `city`, `country`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'john', 'john@gmail.com', '10001', 2, 12, 'johngmailcom.jpg', 'GEC', 'chittagong', 'Bangladesh', 1, '2018-12-30 00:48:37', '2019-03-02 06:50:23'),
(3, 'tests', 'test@test.com', '111', 1, NULL, NULL, NULL, NULL, NULL, 1, '2018-12-30 22:20:51', '2019-01-03 00:03:54');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expense_category_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `amount` double NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `reference_no`, `expense_category_id`, `warehouse_id`, `account_id`, `user_id`, `cash_register_id`, `amount`, `note`, `created_at`, `updated_at`) VALUES
(2, 'er-20180817-012254', 1, 2, 1, 1, NULL, 150, 'first expense...', '2018-08-17 07:22:54', '2018-08-17 07:44:13'),
(3, 'er-20180817-014241', 1, 1, 1, 1, NULL, 125, 'second expense...', '2018-08-17 07:42:41', '2018-08-17 07:43:50'),
(4, 'er-20181022-043609', 2, 1, 1, 1, NULL, 1000, NULL, '2018-10-22 10:36:09', '2018-10-22 10:36:09'),
(5, 'er-20181101-050207', 2, 2, 1, 1, NULL, 1000, NULL, '2018-10-31 23:02:07', '2018-10-31 23:02:07'),
(6, 'er-20181101-050231', 2, 1, 1, 1, NULL, 550, NULL, '2018-10-31 23:02:31', '2018-10-31 23:02:31'),
(7, 'er-20181105-091913', 1, 1, 1, 1, NULL, 2000, NULL, '2018-11-05 03:19:13', '2018-11-05 03:19:13'),
(8, 'er-20181105-091929', 2, 2, 1, 1, NULL, 1000, NULL, '2018-11-05 03:19:29', '2018-11-05 03:19:29'),
(9, 'er-20190101-063342', 2, 1, 1, 1, NULL, 100, NULL, '2019-01-01 00:33:42', '2019-01-01 00:33:42'),
(10, 'er-20190103-070018', 2, 2, 1, 9, NULL, 2000, NULL, '2019-01-03 01:00:18', '2019-01-03 01:00:18'),
(11, 'er-20190209-104656', 2, 2, 1, 1, NULL, 500, NULL, '2019-02-09 04:46:56', '2019-02-09 04:46:56'),
(12, 'er-20190209-104716', 2, 1, 1, 1, NULL, 400, NULL, '2019-02-09 04:47:16', '2019-02-09 04:47:16'),
(14, 'er-20190303-104142', 2, 2, 1, 1, NULL, 250, 'jjj', '2019-03-03 04:41:42', '2019-03-20 09:17:16'),
(15, 'er-20190404-095645', 2, 1, 1, 1, NULL, 200, NULL, '2019-04-04 03:56:45', '2019-04-04 03:56:45'),
(16, 'er-20190528-103306', 2, 1, 1, 1, NULL, 560, NULL, '2019-05-28 04:33:06', '2019-05-28 04:33:06'),
(17, 'er-20190528-103325', 2, 2, 1, 1, NULL, 600, NULL, '2019-05-28 04:33:25', '2019-05-28 04:33:25'),
(19, 'er-20190613-101955', 2, 2, 1, 1, NULL, 800, NULL, '2019-06-13 04:19:55', '2019-06-13 04:19:55'),
(20, 'er-20191019-033149', 2, 1, 1, 1, NULL, 300, NULL, '2019-10-19 09:31:49', '2019-10-19 09:31:49'),
(21, 'er-20191222-023508', 2, 1, 1, 1, NULL, 550, NULL, '2019-12-22 08:35:08', '2019-12-22 08:35:08'),
(22, 'er-20200101-022304', 2, 2, 1, 1, NULL, 500, NULL, '2020-01-01 08:23:04', '2020-01-01 08:23:04'),
(23, 'er-20200204-105938', 1, 1, 1, 1, NULL, 400, NULL, '2020-02-04 16:59:38', '2020-02-04 16:59:38'),
(24, 'er-20200204-105957', 1, 2, 1, 1, NULL, 350, NULL, '2020-02-04 16:59:57', '2020-02-04 16:59:57'),
(25, 'er-20200406-075239', 2, 2, 1, 1, NULL, 750, NULL, '2020-04-06 13:52:39', '2020-04-06 13:52:39'),
(26, 'er-20200506-110112', 2, 2, 1, 1, NULL, 1260, NULL, '2020-05-06 17:01:12', '2020-05-06 17:01:12'),
(27, 'er-20200609-124344', 2, 1, 1, 1, NULL, 500, NULL, '2020-06-09 06:43:44', '2020-06-09 06:43:44'),
(28, 'er-20200609-124406', 2, 2, 1, 1, NULL, 1000, NULL, '2020-06-09 06:44:06', '2020-06-09 06:44:06'),
(29, 'er-20200703-064005', 2, 2, 1, 1, NULL, 630, NULL, '2020-07-03 12:40:05', '2020-07-03 12:40:05'),
(30, 'er-20200812-062947', 1, 2, 1, 1, NULL, 320, NULL, '2020-08-12 12:29:47', '2020-08-12 12:29:47'),
(31, 'er-20200812-063010', 2, 2, 1, 1, NULL, 730, NULL, '2020-08-12 12:30:10', '2020-08-12 12:30:10'),
(32, 'er-20201018-124438', 2, 1, 1, 9, 2, 100, NULL, '2020-10-18 06:44:38', '2020-10-18 06:44:38'),
(33, 'er-20201101-072257', 1, 2, 1, 1, 4, 50, NULL, '2020-11-01 01:22:57', '2020-11-01 01:22:57'),
(34, 'er-20201118-062500', 4, 1, 1, 1, 3, 200, NULL, '2020-11-18 00:25:00', '2020-11-18 00:25:00'),
(37, 'er-20210114-065938', 2, 2, 1, 1, 4, 25.5, NULL, '2021-01-14 00:59:38', '2021-01-14 00:59:38'),
(41, 'er-20220525-062159', 6, 1, 1, 1, NULL, 9800, 'Every month 8-10th', '2022-05-25 18:21:59', '2022-05-25 18:21:59'),
(42, 'er-20220525-062227', 7, 1, 1, 1, NULL, 7000, 'Noyon', '2022-05-25 18:22:27', '2022-05-25 18:22:27'),
(43, 'er-20220525-062252', 7, 1, 1, 1, NULL, 4000, 'Mohon', '2022-05-25 18:22:52', '2022-05-25 18:22:52'),
(44, 'er-20220525-062323', 7, 1, 1, 1, NULL, 0, 'Shojol', '2022-05-25 18:23:23', '2022-05-25 18:23:23');

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expense_categories`
--

INSERT INTO `expense_categories` (`id`, `code`, `name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '16718342', 'washing', 0, '2018-08-16 00:32:48', '2022-05-25 18:17:40'),
(2, '60128975', 'electric bill', 0, '2018-08-16 00:39:18', '2022-05-25 18:17:40'),
(3, '83954970', 'test', 0, '2018-08-16 00:50:28', '2018-08-16 00:51:40'),
(4, '1234', 'snacks', 0, '2018-09-01 02:40:04', '2022-05-25 18:17:40'),
(5, 'M1', 'Electricity', 1, '2022-05-25 18:18:16', '2022-05-25 18:18:16'),
(6, '35276022', 'House Rent', 1, '2022-05-25 18:19:05', '2022-05-25 18:19:05'),
(7, '71080124', 'Staff Salary', 1, '2022-05-25 18:20:13', '2022-05-25 18:20:13'),
(8, '51430579', 'Daily Expense', 1, '2022-05-25 18:20:43', '2022-05-25 18:20:43');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_rtl` tinyint(1) DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_access` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_format` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `developed_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_format` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currency_position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `site_title`, `site_logo`, `is_rtl`, `currency`, `staff_access`, `date_format`, `developed_by`, `invoice_format`, `state`, `theme`, `created_at`, `updated_at`, `currency_position`) VALUES
(1, 'The Detail Boss', '20220525124111.png', 0, '1', 'own', 'd/m/Y', 'Webtricker', 'standard', 1, 'default.css', '2018-07-06 06:13:11', '2022-05-25 12:41:11', 'prefix');

-- --------------------------------------------------------

--
-- Table structure for table `gift_cards`
--

CREATE TABLE `gift_cards` (
  `id` int(10) UNSIGNED NOT NULL,
  `card_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `expense` double NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `expired_date` date DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gift_cards`
--

INSERT INTO `gift_cards` (`id`, `card_no`, `amount`, `expense`, `customer_id`, `user_id`, `expired_date`, `created_by`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '3571097513020486', 1400, 450, 1, NULL, '2020-12-31', 1, 1, '2018-08-18 01:57:40', '2020-10-18 05:14:26'),
(2, '0452297501931931', 500, 100, 2, NULL, '2021-12-31', 1, 1, '2018-08-18 02:46:43', '2021-02-11 07:36:01'),
(3, '123', 13123, 0, 1, NULL, '2018-08-19', 1, 0, '2018-08-18 22:38:21', '2018-08-18 22:38:28'),
(4, '1862381252690499', 100, 0, NULL, 1, '2018-10-04', 1, 0, '2018-09-30 00:16:28', '2018-09-30 00:17:21'),
(5, '2300813717254199', 143, 0, NULL, 1, '2018-10-04', 1, 0, '2018-09-30 00:18:49', '2018-09-30 00:20:20'),
(6, '8327019475026421', 1, 0, 1, NULL, '2018-10-07', 1, 0, '2018-10-07 03:12:41', '2018-10-07 03:12:55'),
(7, '2063379780590151', 1, 0, 1, NULL, '2018-10-23', 1, 0, '2018-10-23 00:23:22', '2018-10-23 00:23:39');

-- --------------------------------------------------------

--
-- Table structure for table `gift_card_recharges`
--

CREATE TABLE `gift_card_recharges` (
  `id` int(10) UNSIGNED NOT NULL,
  `gift_card_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gift_card_recharges`
--

INSERT INTO `gift_card_recharges` (`id`, `gift_card_id`, `amount`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 2, 100, 1, '2018-08-24 23:08:29', '2018-08-24 23:08:29'),
(2, 1, 200, 1, '2018-08-24 23:08:50', '2018-08-24 23:08:50'),
(3, 1, 100, 1, '2018-09-04 23:50:41', '2018-09-04 23:50:41'),
(4, 1, 50, 1, '2018-09-04 23:51:38', '2018-09-04 23:51:38'),
(5, 1, 50, 1, '2018-09-04 23:53:36', '2018-09-04 23:53:36'),
(6, 2, 50, 1, '2018-09-04 23:54:34', '2018-09-04 23:54:34'),
(7, 5, 10, 1, '2018-09-30 00:19:48', '2018-09-30 00:19:48'),
(8, 5, 10, 1, '2018-09-30 00:20:04', '2018-09-30 00:20:04'),
(9, 2, 100, 1, '2018-10-07 03:13:05', '2018-10-07 03:13:05'),
(10, 1, 200, 1, '2018-10-07 03:13:39', '2018-10-07 03:13:39'),
(11, 1, 300, 1, '2018-10-23 00:22:49', '2018-10-23 00:22:49'),
(12, 2, 130, 1, '2021-02-11 07:36:01', '2021-02-11 07:36:01');

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_approved` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hrm_settings`
--

CREATE TABLE `hrm_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `checkin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hrm_settings`
--

INSERT INTO `hrm_settings` (`id`, `checkin`, `checkout`, `created_at`, `updated_at`) VALUES
(1, '10:00am', '6:00pm', '2019-01-02 02:20:08', '2019-01-02 04:20:53');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `code`, `created_at`, `updated_at`) VALUES
(1, 'en', '2018-07-07 22:59:17', '2019-12-24 17:34:20');

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
(3, '2018_02_17_060412_create_categories_table', 1),
(4, '2018_02_20_035727_create_brands_table', 1),
(5, '2018_02_25_100635_create_suppliers_table', 1),
(6, '2018_02_27_101619_create_warehouse_table', 1),
(7, '2018_03_03_040448_create_units_table', 1),
(8, '2018_03_04_041317_create_taxes_table', 1),
(9, '2018_03_10_061915_create_customer_groups_table', 1),
(10, '2018_03_10_090534_create_customers_table', 1),
(11, '2018_03_11_095547_create_billers_table', 1),
(12, '2018_04_05_054401_create_products_table', 1),
(13, '2018_04_06_133606_create_purchases_table', 1),
(14, '2018_04_06_154600_create_product_purchases_table', 1),
(15, '2018_04_06_154915_create_product_warhouse_table', 1),
(16, '2018_04_10_085927_create_sales_table', 1),
(17, '2018_04_10_090133_create_product_sales_table', 1),
(18, '2018_04_10_090254_create_payments_table', 1),
(19, '2018_04_10_090341_create_payment_with_cheque_table', 1),
(20, '2018_04_10_090509_create_payment_with_credit_card_table', 1),
(21, '2018_04_13_121436_create_quotation_table', 1),
(22, '2018_04_13_122324_create_product_quotation_table', 1),
(23, '2018_04_14_121802_create_transfers_table', 1),
(24, '2018_04_14_121913_create_product_transfer_table', 1),
(25, '2018_05_13_082847_add_payment_id_and_change_sale_id_to_payments_table', 2),
(26, '2018_05_13_090906_change_customer_id_to_payment_with_credit_card_table', 3),
(27, '2018_05_20_054532_create_adjustments_table', 4),
(28, '2018_05_20_054859_create_product_adjustments_table', 4),
(29, '2018_05_21_163419_create_returns_table', 5),
(30, '2018_05_21_163443_create_product_returns_table', 5),
(31, '2018_06_02_050905_create_roles_table', 6),
(32, '2018_06_02_073430_add_columns_to_users_table', 7),
(33, '2018_06_03_053738_create_permission_tables', 8),
(36, '2018_06_21_063736_create_pos_setting_table', 9),
(37, '2018_06_21_094155_add_user_id_to_sales_table', 10),
(38, '2018_06_21_101529_add_user_id_to_purchases_table', 11),
(39, '2018_06_21_103512_add_user_id_to_transfers_table', 12),
(40, '2018_06_23_061058_add_user_id_to_quotations_table', 13),
(41, '2018_06_23_082427_add_is_deleted_to_users_table', 14),
(42, '2018_06_25_043308_change_email_to_users_table', 15),
(43, '2018_07_06_115449_create_general_settings_table', 16),
(44, '2018_07_08_043944_create_languages_table', 17),
(45, '2018_07_11_102144_add_user_id_to_returns_table', 18),
(46, '2018_07_11_102334_add_user_id_to_payments_table', 18),
(47, '2018_07_22_130541_add_digital_to_products_table', 19),
(49, '2018_07_24_154250_create_deliveries_table', 20),
(50, '2018_08_16_053336_create_expense_categories_table', 21),
(51, '2018_08_17_115415_create_expenses_table', 22),
(55, '2018_08_18_050418_create_gift_cards_table', 23),
(56, '2018_08_19_063119_create_payment_with_gift_card_table', 24),
(57, '2018_08_25_042333_create_gift_card_recharges_table', 25),
(58, '2018_08_25_101354_add_deposit_expense_to_customers_table', 26),
(59, '2018_08_26_043801_create_deposits_table', 27),
(60, '2018_09_02_044042_add_keybord_active_to_pos_setting_table', 28),
(61, '2018_09_09_092713_create_payment_with_paypal_table', 29),
(62, '2018_09_10_051254_add_currency_to_general_settings_table', 30),
(63, '2018_10_22_084118_add_biller_and_store_id_to_users_table', 31),
(65, '2018_10_26_034927_create_coupons_table', 32),
(66, '2018_10_27_090857_add_coupon_to_sales_table', 33),
(67, '2018_11_07_070155_add_currency_position_to_general_settings_table', 34),
(68, '2018_11_19_094650_add_combo_to_products_table', 35),
(69, '2018_12_09_043712_create_accounts_table', 36),
(70, '2018_12_17_112253_add_is_default_to_accounts_table', 37),
(71, '2018_12_19_103941_add_account_id_to_payments_table', 38),
(72, '2018_12_20_065900_add_account_id_to_expenses_table', 39),
(73, '2018_12_20_082753_add_account_id_to_returns_table', 40),
(74, '2018_12_26_064330_create_return_purchases_table', 41),
(75, '2018_12_26_144210_create_purchase_product_return_table', 42),
(76, '2018_12_26_144708_create_purchase_product_return_table', 43),
(77, '2018_12_27_110018_create_departments_table', 44),
(78, '2018_12_30_054844_create_employees_table', 45),
(79, '2018_12_31_125210_create_payrolls_table', 46),
(80, '2018_12_31_150446_add_department_id_to_employees_table', 47),
(81, '2019_01_01_062708_add_user_id_to_expenses_table', 48),
(82, '2019_01_02_075644_create_hrm_settings_table', 49),
(83, '2019_01_02_090334_create_attendances_table', 50),
(84, '2019_01_27_160956_add_three_columns_to_general_settings_table', 51),
(85, '2019_02_15_183303_create_stock_counts_table', 52),
(86, '2019_02_17_101604_add_is_adjusted_to_stock_counts_table', 53),
(87, '2019_04_13_101707_add_tax_no_to_customers_table', 54),
(89, '2019_10_14_111455_create_holidays_table', 55),
(90, '2019_11_13_145619_add_is_variant_to_products_table', 56),
(91, '2019_11_13_150206_create_product_variants_table', 57),
(92, '2019_11_13_153828_create_variants_table', 57),
(93, '2019_11_25_134041_add_qty_to_product_variants_table', 58),
(94, '2019_11_25_134922_add_variant_id_to_product_purchases_table', 58),
(95, '2019_11_25_145341_add_variant_id_to_product_warehouse_table', 58),
(96, '2019_11_29_182201_add_variant_id_to_product_sales_table', 59),
(97, '2019_12_04_121311_add_variant_id_to_product_quotation_table', 60),
(98, '2019_12_05_123802_add_variant_id_to_product_transfer_table', 61),
(100, '2019_12_08_114954_add_variant_id_to_product_returns_table', 62),
(101, '2019_12_08_203146_add_variant_id_to_purchase_product_return_table', 63),
(102, '2020_02_28_103340_create_money_transfers_table', 64),
(103, '2020_07_01_193151_add_image_to_categories_table', 65),
(105, '2020_09_26_130426_add_user_id_to_deliveries_table', 66),
(107, '2020_10_11_125457_create_cash_registers_table', 67),
(108, '2020_10_13_155019_add_cash_register_id_to_sales_table', 68),
(109, '2020_10_13_172624_add_cash_register_id_to_returns_table', 69),
(110, '2020_10_17_212338_add_cash_register_id_to_payments_table', 70),
(111, '2020_10_18_124200_add_cash_register_id_to_expenses_table', 71),
(112, '2020_10_21_121632_add_developed_by_to_general_settings_table', 72),
(113, '2019_08_19_000000_create_failed_jobs_table', 73),
(114, '2020_10_30_135557_create_notifications_table', 73),
(115, '2020_11_01_044954_create_currencies_table', 74),
(116, '2020_11_01_140736_add_price_to_product_warehouse_table', 75),
(117, '2020_11_02_050633_add_is_diff_price_to_products_table', 76),
(118, '2020_11_09_055222_add_user_id_to_customers_table', 77),
(119, '2020_11_17_054806_add_invoice_format_to_general_settings_table', 78),
(120, '2021_02_10_074859_add_variant_id_to_product_adjustments_table', 79),
(121, '2021_03_07_093606_create_product_batches_table', 80),
(122, '2021_03_07_093759_add_product_batch_id_to_product_warehouse_table', 80),
(123, '2021_03_07_093900_add_product_batch_id_to_product_purchases_table', 80),
(124, '2021_03_11_132603_add_product_batch_id_to_product_sales_table', 81),
(127, '2021_03_25_125421_add_is_batch_to_products_table', 82),
(128, '2021_05_19_120127_add_product_batch_id_to_product_returns_table', 82),
(130, '2021_05_22_105611_add_product_batch_id_to_purchase_product_return_table', 83),
(131, '2021_05_23_124848_add_product_batch_id_to_product_transfer_table', 84),
(132, '2021_05_26_153106_add_product_batch_id_to_product_quotation_table', 85),
(133, '2021_06_08_213007_create_reward_point_settings_table', 86),
(134, '2021_06_16_104155_add_points_to_customers_table', 87),
(135, '2021_06_17_101057_add_used_points_to_payments_table', 88),
(136, '2021_07_06_132716_add_variant_list_to_products_table', 89),
(137, '2021_09_27_161141_add_is_imei_to_products_table', 90),
(138, '2021_09_28_170052_add_imei_number_to_product_warehouse_table', 91),
(139, '2021_09_28_170126_add_imei_number_to_product_purchases_table', 91),
(140, '2021_10_03_170652_add_imei_number_to_product_sales_table', 92),
(141, '2021_10_10_145214_add_imei_number_to_product_returns_table', 93),
(142, '2021_10_11_104504_add_imei_number_to_product_transfer_table', 94),
(143, '2021_10_12_160107_add_imei_number_to_purchase_product_return_table', 95),
(144, '2021_10_12_205146_add_is_rtl_to_general_settings_table', 96),
(145, '2021_10_23_142451_add_is_approve_to_payments_table', 97),
(146, '2022_01_13_191242_create_discount_plans_table', 97),
(147, '2022_01_14_174318_create_discount_plan_customers_table', 97),
(148, '2022_01_14_202439_create_discounts_table', 98),
(149, '2022_01_16_153506_create_discount_plan_discounts_table', 98),
(150, '2022_02_05_174210_add_order_discount_type_and_value_to_sales_table', 99);

-- --------------------------------------------------------

--
-- Table structure for table `money_transfers`
--

CREATE TABLE `money_transfers` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_account_id` int(11) NOT NULL,
  `to_account_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `money_transfers`
--

INSERT INTO `money_transfers` (`id`, `reference_no`, `from_account_id`, `to_account_id`, `amount`, `created_at`, `updated_at`) VALUES
(2, 'mtr-20200228-071852', 1, 3, 100, '2020-02-28 13:18:52', '2020-02-28 13:18:52');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('249beded-5431-40a3-ba1e-d255ffb047a3', 'App\\Notifications\\SendNotification', 'App\\User', 9, '{\"message\":\"Please delete all pending purchase.\"}', '2020-11-01 01:33:32', '2020-11-01 01:33:07', '2020-11-01 01:33:32');

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_reference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `used_points` double DEFAULT NULL,
  `change` double NOT NULL,
  `paying_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `payment_reference`, `user_id`, `purchase_id`, `sale_id`, `cash_register_id`, `account_id`, `amount`, `used_points`, `change`, `paying_method`, `payment_note`, `created_at`, `updated_at`) VALUES
(33, 'spr-20180809-055453', 1, NULL, 2, NULL, 1, 1000, NULL, 0, 'Cash', NULL, '2018-08-08 23:54:53', '2018-08-08 23:54:53'),
(34, 'spr-20180809-055553', 1, NULL, 2, NULL, 1, 1200, NULL, 0, 'Cheque', NULL, '2018-08-08 23:55:53', '2018-08-08 23:56:36'),
(35, 'spr-20180809-063214', 1, NULL, 3, NULL, 1, 897, NULL, 0, 'Cheque', NULL, '2018-08-09 00:32:14', '2018-08-09 00:32:14'),
(36, 'spr-20180825-034836', 1, NULL, 4, NULL, 1, 100, NULL, 0, 'Gift Card', '100 bucks paid...', '2018-08-24 21:48:36', '2018-08-25 00:57:35'),
(39, 'spr-20180825-083634', 1, NULL, 4, NULL, 1, 200, NULL, 0, 'Gift Card', NULL, '2018-08-25 02:36:34', '2018-08-25 02:36:34'),
(41, 'spr-20180826-094836', 1, NULL, 6, NULL, 1, 20, NULL, 0, 'Deposit', '20 bucks paid', '2018-08-26 03:48:36', '2018-08-26 21:42:13'),
(42, 'spr-20180827-073545', 1, NULL, 7, NULL, 1, 880, NULL, 0, 'Cash', NULL, '2018-08-27 01:35:45', '2018-08-27 01:35:45'),
(43, 'ppr-20180830-071637', 1, 13, NULL, NULL, 1, 100, NULL, 0, 'Cash', '100 bucks paid...', '2018-08-30 01:16:37', '2018-08-30 01:16:37'),
(44, 'ppr-20180830-090718', 1, 13, NULL, NULL, 1, 200, NULL, 0, 'Cheque', NULL, '2018-08-30 03:07:18', '2018-08-30 03:07:18'),
(46, 'spr-20180902-053954', 1, NULL, 8, NULL, 1, 3529.8, NULL, 0, 'Cash', 'fully paid', '2018-09-01 23:39:54', '2018-09-01 23:39:54'),
(49, 'spr-20180903-033314', 1, NULL, 9, NULL, 1, 20, NULL, 0, 'Deposit', 'fully paid', '2018-09-02 21:33:14', '2018-09-02 21:33:14'),
(50, 'spr-20180903-050138', 1, NULL, 10, NULL, 1, 200, NULL, 0, 'Gift Card', '50 bucks due...', '2018-09-02 23:01:38', '2018-09-09 21:40:28'),
(51, 'spr-20180903-100821', 1, NULL, 11, NULL, 1, 5500, NULL, 0, 'Cheque', NULL, '2018-09-03 04:08:21', '2018-09-03 04:08:21'),
(53, 'ppr-20180903-101524', 1, 16, NULL, NULL, 1, 1750, NULL, 0, 'Cheque', NULL, '2018-09-03 04:15:24', '2018-10-06 01:09:20'),
(78, 'spr-20180926-092105', 1, NULL, 31, NULL, 1, 560, NULL, 0, 'Cash', NULL, '2018-09-26 03:21:05', '2018-09-26 03:21:05'),
(79, 'spr-20181006-065017', 1, NULL, 30, NULL, 1, 100, NULL, 0, 'Cheque', NULL, '2018-10-06 00:50:17', '2018-10-06 00:51:55'),
(80, 'spr-20181006-065222', 1, NULL, 30, NULL, 1, 20, NULL, 0, 'Cash', NULL, '2018-10-06 00:52:22', '2018-10-06 00:52:22'),
(82, 'ppr-20181006-070935', 1, 16, NULL, NULL, 1, 1600, NULL, 0, 'Cash', NULL, '2018-10-06 01:09:35', '2018-10-06 01:09:35'),
(83, 'spr-20181010-041636', 1, NULL, 41, NULL, 1, 461, NULL, 0, 'Cash', NULL, '2018-10-09 22:16:36', '2018-10-09 22:16:36'),
(84, 'spr-20181010-053456', 1, NULL, 42, NULL, 1, 440, NULL, 0, 'Cash', NULL, '2018-10-09 23:34:56', '2018-10-09 23:34:56'),
(91, 'spr-20181021-065338', 1, NULL, 55, NULL, 1, 250, NULL, 0, 'Cash', NULL, '2018-10-21 00:53:38', '2018-10-21 00:53:38'),
(92, 'spr-20181021-082618', 1, NULL, 57, NULL, 1, 575.2, NULL, 0, 'Cash', NULL, '2018-10-21 02:26:18', '2018-10-21 02:26:18'),
(93, 'spr-20181022-032730', 1, NULL, 58, NULL, 1, 1220, NULL, 0, 'Cash', NULL, '2018-10-22 09:27:30', '2018-10-22 09:27:30'),
(104, 'spr-20181023-071548', 11, NULL, 73, NULL, 1, 5500, NULL, 0, 'Cash', NULL, '2018-10-23 01:15:48', '2018-10-23 01:15:48'),
(105, 'spr-20181023-071648', 1, NULL, 74, NULL, 1, 2320, NULL, 0, 'Cash', NULL, '2018-10-23 01:16:48', '2018-10-23 01:16:48'),
(126, 'spr-20181101-050033', 1, NULL, 75, NULL, 1, 7678, NULL, 0, 'Cash', NULL, '2018-10-31 23:00:33', '2018-10-31 23:00:33'),
(127, 'spr-20181101-050130', 1, NULL, 76, NULL, 1, 1424, NULL, 0, 'Cash', NULL, '2018-10-31 23:01:30', '2018-11-08 03:44:51'),
(129, 'spr-20181105-091523', 1, NULL, 79, NULL, 1, 14454, NULL, 0, 'Cash', NULL, '2018-11-05 03:15:23', '2018-11-05 03:15:23'),
(130, 'spr-20181105-092002', 1, NULL, 80, NULL, 1, 2500, NULL, 0, 'Cash', NULL, '2018-11-05 03:20:02', '2018-11-05 03:20:02'),
(131, 'ppr-20181105-092128', 1, 24, NULL, NULL, 1, 15950, NULL, 0, 'Cash', NULL, '2018-11-05 03:21:28', '2018-11-05 03:21:28'),
(137, 'spr-20181105-095952', 1, NULL, 86, NULL, 1, 1100, NULL, 0, 'Cash', NULL, '2018-11-05 03:59:52', '2018-11-05 03:59:52'),
(138, 'spr-20181105-100310', 1, NULL, 88, NULL, 1, 1100, NULL, 0, 'Cash', NULL, '2018-11-05 04:03:10', '2018-11-05 04:03:10'),
(139, 'spr-20181126-020534', 1, NULL, 94, NULL, 1, 120, NULL, 0, 'Cash', NULL, '2018-11-26 08:05:34', '2018-11-26 08:05:34'),
(140, 'spr-20181128-071515', 1, NULL, 96, NULL, 1, 132, NULL, 0, 'Cash', NULL, '2018-11-28 01:15:15', '2018-11-28 01:15:15'),
(141, 'spr-20181201-060524', 1, NULL, 97, NULL, 1, 200, NULL, 300, 'Cash', NULL, '2018-12-01 00:05:24', '2018-12-04 00:21:05'),
(148, 'ppr-20181204-065932', 1, 23, NULL, NULL, 1, 500, NULL, 500, 'Cash', NULL, '2018-12-04 00:59:32', '2018-12-04 00:59:44'),
(149, 'ppr-20181205-053443', 1, 25, NULL, NULL, 1, 4450, NULL, 550, 'Cash', NULL, '2018-12-04 23:34:43', '2018-12-04 23:34:43'),
(150, 'spr-20181205-053608', 1, NULL, 98, NULL, 1, 800, NULL, 200, 'Cash', NULL, '2018-12-04 23:36:08', '2018-12-04 23:36:08'),
(151, 'spr-20181205-053724', 1, NULL, 99, NULL, 1, 800, NULL, 0, 'Cash', NULL, '2018-12-04 23:37:24', '2018-12-04 23:37:24'),
(152, 'spr-20181208-062032', 1, NULL, 101, NULL, 1, 100, NULL, 400, 'Cash', NULL, '2018-12-08 00:20:32', '2018-12-11 03:19:39'),
(157, 'ppr-20181220-063439', 1, 27, NULL, NULL, 1, 10, NULL, 0, 'Cash', NULL, '2018-12-20 00:34:39', '2018-12-20 00:35:01'),
(159, 'spr-20181224-045832', 1, NULL, 103, NULL, 1, 120, NULL, 0, 'Cash', NULL, '2018-12-23 22:58:32', '2018-12-23 22:58:32'),
(160, 'spr-20190101-054544', 1, NULL, 105, NULL, 1, 21, NULL, 0, 'Cash', NULL, '2018-12-31 23:45:44', '2018-12-31 23:45:44'),
(161, 'spr-20190101-091040', 1, NULL, 106, NULL, 1, 860, NULL, 0, 'Cash', NULL, '2019-01-01 03:10:40', '2019-01-01 03:10:40'),
(162, 'spr-20190103-065627', 1, NULL, 107, NULL, 1, 5040, NULL, 960, 'Cash', NULL, '2019-01-03 00:56:27', '2019-01-03 00:56:27'),
(163, 'spr-20190120-035824', 1, NULL, 108, NULL, 1, 120, NULL, 0, 'Cash', NULL, '2019-01-20 09:58:24', '2019-01-20 09:58:24'),
(164, 'ppr-20190129-100302', 9, 36, NULL, NULL, 1, 650, NULL, 350, 'Cash', NULL, '2019-01-29 04:03:02', '2019-01-29 04:03:02'),
(165, 'ppr-20190129-100324', 9, 34, NULL, NULL, 1, 2860, NULL, 140, 'Cash', NULL, '2019-01-29 04:03:24', '2019-01-29 04:03:24'),
(166, 'spr-20190129-101451', 9, NULL, 109, NULL, 1, 540, NULL, 460, 'Cash', NULL, '2019-01-29 04:14:51', '2019-01-29 04:14:51'),
(167, 'spr-20190129-115048', 9, NULL, 110, NULL, 1, 1700, NULL, 300, 'Cash', NULL, '2019-01-29 05:50:48', '2019-01-29 05:50:48'),
(168, 'spr-20190131-110839', 9, NULL, 111, NULL, 1, 271, NULL, 0, 'Cash', NULL, '2019-01-31 05:08:39', '2019-01-31 05:08:39'),
(169, 'spr-20190202-104045', 1, NULL, 112, NULL, 1, 440, NULL, 0, 'Cash', NULL, '2019-02-02 04:40:45', '2019-02-02 04:40:45'),
(170, 'spr-20190202-114117', 1, NULL, 113, NULL, 1, 350, NULL, 0, 'Cash', NULL, '2019-02-02 05:41:17', '2019-02-02 05:41:17'),
(171, 'spr-20190205-030454', 1, NULL, 114, NULL, 1, 440, NULL, 0, 'Cash', NULL, '2019-02-05 09:04:54', '2019-02-05 09:04:54'),
(176, 'ppr-20190207-125418', 1, 35, NULL, NULL, 1, 50, NULL, 50, 'Cash', NULL, '2019-02-07 06:54:18', '2019-02-07 07:05:23'),
(178, 'ppr-20190207-010640', 1, 35, NULL, NULL, 1, 50, NULL, 50, 'Cheque', NULL, '2019-02-07 07:06:40', '2019-02-07 07:07:04'),
(179, 'spr-20190207-010915', 1, NULL, 120, NULL, 1, 50, NULL, 50, 'Cash', NULL, '2019-02-07 07:09:15', '2019-02-07 07:09:15'),
(180, 'spr-20190209-104816', 1, NULL, 121, NULL, 1, 1272, NULL, 728, 'Cash', NULL, '2019-02-09 04:48:16', '2019-02-09 04:48:16'),
(181, 'ppr-20190209-104940', 1, 38, NULL, NULL, 1, 1660, NULL, 0, 'Cash', NULL, '2019-02-09 04:49:40', '2019-02-09 04:49:40'),
(182, 'ppr-20190209-104959', 1, 39, NULL, NULL, 1, 973.5, NULL, 0, 'Cash', NULL, '2019-02-09 04:49:59', '2019-02-09 04:49:59'),
(183, 'spr-20190219-023214', 1, NULL, 123, NULL, 1, 440, NULL, 0, 'Cash', NULL, '2019-02-19 08:32:14', '2019-02-19 08:32:14'),
(189, 'spr-20190303-104010', 1, NULL, 127, NULL, 1, 2500, NULL, 0, 'Cash', NULL, '2019-03-03 04:40:10', '2019-03-03 04:40:10'),
(190, 'ppr-20190303-104046', 1, 40, NULL, NULL, 1, 100, NULL, 0, 'Cash', NULL, '2019-03-03 04:40:46', '2019-03-03 04:40:46'),
(191, 'ppr-20190303-104222', 1, 37, NULL, NULL, 1, 4000, NULL, 0, 'Cash', NULL, '2019-03-03 04:42:22', '2019-03-03 04:42:22'),
(192, 'ppr-20190303-104414', 1, 41, NULL, NULL, 1, 1000, NULL, 0, 'Cash', NULL, '2019-03-03 04:44:14', '2019-03-03 04:44:14'),
(193, 'spr-20190404-095555', 1, NULL, 128, NULL, 1, 560, NULL, 0, 'Cash', NULL, '2019-04-04 03:55:55', '2019-04-04 03:55:55'),
(194, 'ppr-20190404-095910', 1, 42, NULL, NULL, 1, 300, NULL, 200, 'Cash', NULL, '2019-04-04 03:59:10', '2019-04-13 10:52:38'),
(195, 'spr-20190404-095937', 1, NULL, 129, NULL, 1, 120, NULL, 0, 'Cash', NULL, '2019-04-04 03:59:37', '2019-04-04 03:59:37'),
(196, 'spr-20190421-122124', 1, NULL, 130, NULL, 1, 586, NULL, 0, 'Cash', NULL, '2019-04-21 06:21:24', '2019-04-21 06:21:24'),
(197, 'spr-20190528-103229', 1, NULL, 131, NULL, 1, 2890, NULL, 0, 'Cash', NULL, '2019-05-28 04:32:29', '2019-05-28 04:32:29'),
(198, 'ppr-20190613-101351', 1, 37, NULL, NULL, 1, 2390, NULL, 0, 'Cash', NULL, '2019-06-13 04:13:51', '2019-06-13 04:13:51'),
(199, 'spr-20190613-101637', 1, NULL, 132, NULL, 1, 840, NULL, 0, 'Cash', NULL, '2019-06-13 04:16:37', '2019-06-13 04:16:37'),
(200, 'ppr-20190613-101713', 1, 43, NULL, NULL, 1, 1000, NULL, 0, 'Cash', NULL, '2019-06-13 04:17:13', '2019-06-13 04:17:13'),
(201, 'spr-20190613-101752', 1, NULL, 133, NULL, 1, 2700, NULL, 0, 'Cash', NULL, '2019-06-13 04:17:52', '2019-06-13 04:17:52'),
(202, 'ppr-20191019-032925', 1, 43, NULL, NULL, 1, 3290, NULL, 710, 'Cash', NULL, '2019-10-19 09:29:25', '2019-10-19 09:29:25'),
(203, 'spr-20191019-033028', 1, NULL, 134, NULL, 1, 2940, NULL, 60, 'Cash', NULL, '2019-10-19 09:30:28', '2019-10-19 09:30:28'),
(205, 'spr-20191103-114044', 1, NULL, 139, NULL, 1, 488, NULL, 12, 'Cash', NULL, '2019-11-03 05:40:44', '2019-11-03 05:40:44'),
(206, 'ppr-20191103-114222', 1, 46, NULL, NULL, 1, 200, NULL, 0, 'Cash', NULL, '2019-11-03 05:42:22', '2019-11-03 05:42:22'),
(211, 'spr-20191109-074131', 1, NULL, 144, NULL, 1, 1220, NULL, 0, 'Cash', NULL, '2019-11-09 13:41:31', '2019-11-09 13:41:31'),
(216, 'ppr-20191111-103911', 1, 49, NULL, NULL, 1, 5000, NULL, 0, 'Cheque', NULL, '2019-11-11 04:39:11', '2019-11-11 04:39:11'),
(217, 'spr-20191111-104008', 1, NULL, 147, NULL, 1, 2220, NULL, 780, 'Cash', NULL, '2019-11-11 04:40:08', '2019-11-11 04:40:08'),
(222, 'spr-20191203-115128', 1, NULL, 163, NULL, 1, 3, NULL, 0, 'Cash', NULL, '2019-12-03 05:51:28', '2019-12-03 05:51:28'),
(227, 'ppr-20191204-111124', 1, 57, NULL, NULL, 1, 220, NULL, 280, 'Cash', NULL, '2019-12-04 17:11:24', '2019-12-04 17:11:24'),
(228, 'spr-20191205-092712', 1, NULL, 173, NULL, 1, 621, NULL, 0, 'Cash', NULL, '2019-12-05 03:27:12', '2019-12-05 03:27:12'),
(239, 'spr-20191222-104058', 1, NULL, 187, NULL, 1, 288, NULL, 212, 'Cash', NULL, '2019-12-22 04:40:58', '2019-12-22 04:40:58'),
(241, 'spr-20191223-125946', 1, NULL, 190, NULL, 1, 1100, NULL, 400, 'Cash', NULL, '2019-12-23 06:59:46', '2019-12-23 06:59:46'),
(244, 'ppr-20200101-010750', 1, 61, NULL, NULL, 1, 60, NULL, 0, 'Cash', NULL, '2020-01-01 07:07:50', '2020-01-01 07:07:50'),
(246, 'spr-20200101-022028', 1, NULL, 193, NULL, 1, 1100, NULL, 400, 'Cash', NULL, '2020-01-01 08:20:28', '2020-01-01 08:20:28'),
(247, 'ppr-20200101-022131', 1, 59, NULL, NULL, 1, 6, NULL, 0, 'Cash', NULL, '2020-01-01 08:21:31', '2020-01-01 08:21:31'),
(248, 'ppr-20200101-022137', 1, 58, NULL, NULL, 1, 4, NULL, 0, 'Cash', NULL, '2020-01-01 08:21:37', '2020-01-01 08:21:37'),
(249, 'ppr-20200101-022144', 1, 56, NULL, NULL, 1, 2, NULL, 0, 'Cash', NULL, '2020-01-01 08:21:44', '2020-01-01 08:21:44'),
(250, 'ppr-20200101-022152', 1, 55, NULL, NULL, 1, 4, NULL, 0, 'Cash', NULL, '2020-01-01 08:21:52', '2020-01-01 08:21:52'),
(251, 'ppr-20200101-022225', 1, 49, NULL, NULL, 1, 2000, NULL, 0, 'Cash', NULL, '2020-01-01 08:22:25', '2020-01-01 08:22:25'),
(252, 'spr-20200102-043947', 1, NULL, 194, NULL, 1, 892, NULL, 108, 'Cash', NULL, '2020-01-02 10:39:47', '2020-01-02 10:39:47'),
(258, 'spr-20200203-035256', 1, NULL, 201, NULL, 1, 120, NULL, 880, 'Cash', NULL, '2020-02-03 09:52:56', '2020-02-03 09:52:56'),
(259, 'spr-20200204-105853', 1, NULL, 202, NULL, 1, 1400, NULL, 100, 'Cash', NULL, '2020-02-04 16:58:53', '2020-02-04 16:58:53'),
(260, 'ppr-20200204-110050', 1, 67, NULL, NULL, 1, 300, NULL, 0, 'Cash', NULL, '2020-02-04 17:00:50', '2020-02-04 17:00:50'),
(261, 'spr-20200302-115414', 1, NULL, 203, NULL, 1, 350, NULL, 150, 'Cash', NULL, '2020-03-02 05:54:14', '2020-03-02 05:54:14'),
(262, 'spr-20200302-115741', 1, NULL, 204, NULL, 1, 40, NULL, 10, 'Cash', NULL, '2020-03-02 05:57:41', '2020-03-02 05:57:41'),
(263, 'ppr-20200302-115811', 1, 70, NULL, NULL, 1, 50, NULL, 0, 'Cash', NULL, '2020-03-02 05:58:11', '2020-03-02 05:58:11'),
(264, 'ppr-20200302-115820', 1, 69, NULL, NULL, 1, 50, NULL, 0, 'Cash', NULL, '2020-03-02 05:58:20', '2020-03-02 05:58:20'),
(265, 'spr-20200311-044642', 1, NULL, 205, NULL, 1, 352, NULL, 148, 'Cash', NULL, '2020-03-11 10:46:42', '2020-03-11 10:46:42'),
(266, 'ppr-20200406-073823', 1, 71, NULL, NULL, 1, 2000, NULL, 1000, 'Cash', 'First Payment', '2020-04-06 13:38:23', '2020-04-06 13:38:55'),
(267, 'spr-20200406-074024', 1, NULL, 207, NULL, 1, 500, NULL, 500, 'Cash', NULL, '2020-04-06 13:40:24', '2020-04-06 13:40:24'),
(268, 'spr-20200406-074201', 1, NULL, 207, NULL, 1, 144, NULL, 56, 'Cash', NULL, '2020-04-06 13:42:01', '2020-04-06 13:42:01'),
(269, 'spr-20200506-105950', 1, NULL, 208, NULL, 1, 1540, NULL, 460, 'Cash', NULL, '2020-05-06 16:59:50', '2020-05-06 16:59:50'),
(270, 'spr-20200609-124248', 1, NULL, 209, NULL, 1, 1220, NULL, 780, 'Cash', NULL, '2020-06-09 06:42:48', '2020-06-09 06:42:48'),
(273, 'spr-20200703-063914', 1, NULL, 212, NULL, 1, 2585, NULL, 415, 'Cash', NULL, '2020-07-03 12:39:14', '2020-07-03 12:39:14'),
(274, 'spr-20200712-095153', 1, NULL, 213, NULL, 1, 13, NULL, 37, 'Cash', NULL, '2020-07-12 15:51:53', '2020-07-12 15:51:53'),
(276, 'spr-20200727-083808', 1, NULL, 217, NULL, 1, 385, NULL, 0, 'Cash', NULL, '2020-07-27 14:38:08', '2020-07-27 14:38:08'),
(277, 'spr-20200727-084024', 1, NULL, 218, NULL, 1, 385, NULL, 0, 'Cash', NULL, '2020-07-27 14:40:24', '2020-07-27 14:40:24'),
(278, 'spr-20200727-084645', 1, NULL, 219, NULL, 1, 385, NULL, 0, 'Cash', NULL, '2020-07-27 14:46:45', '2020-07-27 14:46:45'),
(279, 'spr-20200812-062806', 1, NULL, 220, NULL, 1, 760, NULL, 240, 'Cash', NULL, '2020-08-12 12:28:06', '2020-08-12 12:28:06'),
(280, 'ppr-20200812-062853', 1, 62, NULL, NULL, 1, 1650, NULL, 0, 'Cash', NULL, '2020-08-12 12:28:53', '2020-08-12 12:28:53'),
(281, 'spr-20200812-063035', 1, NULL, 221, NULL, 1, 1100, NULL, 0, 'Cash', NULL, '2020-08-12 12:30:35', '2020-08-12 12:30:35'),
(282, 'spr-20200816-100426', 1, NULL, 222, NULL, 1, 23000, NULL, 2000, 'Cash', NULL, '2020-08-16 16:04:26', '2020-08-16 16:04:26'),
(283, 'spr-20200816-100523', 1, NULL, 223, NULL, 1, 300, NULL, 200, 'Cash', NULL, '2020-08-16 16:05:23', '2020-08-16 16:05:23'),
(284, 'spr-20200816-100632', 1, NULL, 223, NULL, 1, 100, NULL, 0, 'Cash', NULL, '2020-08-16 16:06:32', '2020-08-16 16:06:32'),
(285, 'spr-20200816-100735', 1, NULL, 223, NULL, 1, 40, NULL, 0, 'Cash', NULL, '2020-08-16 16:07:35', '2020-08-16 16:07:35'),
(290, 'spr-20201017-092854', 9, NULL, 230, 2, 1, 200, NULL, 0, 'Cash', NULL, '2020-10-17 15:28:54', '2020-10-18 04:48:54'),
(291, 'spr-20201018-105138', 9, NULL, 230, 2, 1, 50, NULL, 0, 'Cash', NULL, '2020-10-18 04:51:38', '2020-10-18 04:51:38'),
(292, 'spr-20201018-111333', 9, NULL, 231, 2, 1, 100, NULL, 0, 'Cash', NULL, '2020-10-18 05:13:33', '2020-10-18 05:13:33'),
(293, 'spr-20201018-111426', 9, NULL, 231, 2, 1, 50, NULL, 0, 'Gift Card', NULL, '2020-10-18 05:14:26', '2020-10-18 05:14:26'),
(294, 'spr-20201018-111651', 9, NULL, 231, 2, 1, 50, NULL, 0, 'Credit Card', NULL, '2020-10-18 05:16:51', '2020-10-18 05:16:51'),
(295, 'spr-20201018-111724', 9, NULL, 231, 2, 1, 50, NULL, 0, 'Cheque', NULL, '2020-10-18 05:17:24', '2020-10-18 05:17:24'),
(296, 'spr-20201022-013018', 9, NULL, 232, 2, 1, 100, NULL, 0, 'Cash', NULL, '2020-10-22 07:30:18', '2020-10-22 07:30:18'),
(297, 'spr-20201022-015606', 1, NULL, 233, 3, 1, 250, NULL, 0, 'Cash', NULL, '2020-10-22 07:56:06', '2020-10-22 07:56:06'),
(298, 'spr-20201024-070508', 1, NULL, 234, 4, 1, 11500, NULL, 0, 'Cash', NULL, '2020-10-24 01:05:08', '2020-10-24 01:05:08'),
(299, 'spr-20201024-070753', 1, NULL, 235, 4, 1, 250, NULL, 0, 'Cash', NULL, '2020-10-24 01:07:53', '2020-10-24 01:07:53'),
(300, 'spr-20201024-034619', 1, NULL, 237, 4, 1, 61900, NULL, 0, 'Cash', NULL, '2020-10-24 09:46:19', '2020-10-24 09:46:19'),
(302, 'spr-20201027-054004', 1, NULL, 239, 3, 1, 2, NULL, 0, 'Cash', NULL, '2020-10-26 23:40:04', '2020-10-26 23:40:04'),
(303, 'spr-20201027-054207', 1, NULL, 240, 3, 1, 6, NULL, 0, 'Cash', NULL, '2020-10-26 23:42:07', '2020-10-26 23:42:07'),
(304, 'spr-20201027-063202', 1, NULL, 241, 4, 1, 250, NULL, 0, 'Cash', NULL, '2020-10-27 00:32:02', '2020-10-27 00:32:02'),
(305, 'spr-20201029-073033', 1, NULL, 242, 4, 1, 250, NULL, 0, 'Cash', NULL, '2020-10-29 01:30:33', '2020-10-29 01:30:33'),
(306, 'spr-20201101-072115', 1, NULL, 243, 4, 1, 250, NULL, 0, 'Cash', NULL, '2020-11-01 01:21:15', '2020-11-01 01:21:15'),
(307, 'spr-20201101-074225', 1, NULL, 245, 3, 1, 1130, NULL, 0, 'Cash', NULL, '2020-11-01 01:42:25', '2020-11-01 01:42:25'),
(308, 'spr-20201101-075019', 1, NULL, 246, 4, 1, 440, NULL, 0, 'Cash', NULL, '2020-11-01 01:50:19', '2020-11-01 01:50:19'),
(310, 'spr-20201106-013042', 1, NULL, 250, 4, 1, 378.4, NULL, 0, 'Cash', NULL, '2020-11-06 07:30:42', '2020-11-06 07:30:42'),
(311, 'spr-20201109-011527', 1, NULL, 251, 4, 1, 500, NULL, 0, 'Cash', NULL, '2020-11-09 07:15:27', '2020-11-09 07:15:27'),
(312, 'spr-20201111-055902', 1, NULL, 252, 3, 1, 229.5, NULL, 0, 'Cash', NULL, '2020-11-10 23:59:02', '2020-11-10 23:59:02'),
(313, 'spr-20201114-064739', 1, NULL, 253, 4, 1, 10242.5, NULL, 0, 'Cash', NULL, '2020-11-14 00:47:39', '2020-11-14 00:47:39'),
(316, 'spr-20201117-064751', 1, NULL, 256, 4, 1, 715, NULL, 0, 'Cash', NULL, '2020-11-17 00:47:51', '2020-11-17 00:47:51'),
(317, 'spr-20201117-070920', 1, NULL, 257, 4, 1, 250, NULL, 0, 'Cash', NULL, '2020-11-17 01:09:20', '2020-11-17 01:09:20'),
(320, 'ppr-20201118-062036', 1, 90, NULL, NULL, 1, 33000, NULL, 0, 'Cash', NULL, '2020-11-18 00:20:36', '2020-11-18 00:20:36'),
(321, 'spr-20201118-065242', 1, NULL, 258, 4, 1, 27200, NULL, 0, 'Cash', NULL, '2020-11-18 00:52:42', '2020-11-18 00:52:42'),
(324, 'spr-20201208-094000', 1, NULL, 263, 4, 1, 300, NULL, 200, 'Cash', NULL, '2020-12-08 03:40:00', '2020-12-08 03:40:00'),
(325, 'spr-20210106-022350', 1, NULL, 263, 4, 1, 50, NULL, 0, 'Cash', NULL, '2021-01-06 08:23:50', '2021-01-06 08:23:50'),
(330, 'spr-20210111-021625', 1, NULL, 271, 3, 1, 1274, NULL, 0, 'Cash', NULL, '2021-01-11 08:16:25', '2021-01-11 08:16:25'),
(332, 'spr-20210113-070243', 1, NULL, 274, 4, 1, 1556, NULL, 0, 'Cash', NULL, '2021-01-13 01:02:43', '2021-01-13 01:02:43'),
(333, 'spr-20210201-023748', 1, NULL, 275, 4, 1, 484, NULL, 0, 'Cash', NULL, '2021-02-01 08:37:48', '2021-02-01 08:37:48'),
(335, 'spr-20210216-070948', 1, NULL, 277, 4, 1, 15156, NULL, 0, 'Cash', NULL, '2021-02-16 01:09:48', '2021-02-16 01:09:48'),
(336, 'spr-20210217-073238', 1, NULL, 278, 4, 1, 26949.9, NULL, 0, 'Cash', NULL, '2021-02-17 01:32:38', '2021-02-17 01:32:38'),
(338, 'spr-20210524-074506', 1, NULL, 290, 3, 1, 250, NULL, 0, 'Cash', NULL, '2021-05-24 13:45:06', '2021-05-24 13:45:06'),
(339, 'spr-20210524-074647', 1, NULL, 290, 3, 1, -130, NULL, 0, 'Cash', NULL, '2021-05-24 13:46:47', '2021-05-24 13:46:47'),
(341, 'spr-20210601-123530', 1, NULL, 294, 4, 1, 440, NULL, 0, 'Cash', NULL, '2021-06-01 06:35:30', '2021-06-01 06:35:30'),
(342, 'spr-20210601-032209', 1, NULL, 295, 3, 1, 2, NULL, 0, 'Cash', NULL, '2021-06-01 09:22:09', '2021-06-01 09:22:09'),
(343, 'spr-20210601-034624', 1, NULL, 296, 3, 1, 2, NULL, 0, 'Cash', NULL, '2021-06-01 09:46:24', '2021-06-01 09:46:24'),
(344, 'spr-20210601-074150', 9, NULL, 297, 2, 1, 250, NULL, 0, 'Cash', NULL, '2021-06-01 13:41:50', '2021-06-01 13:41:50'),
(345, 'spr-20210601-075547', 9, NULL, 298, 2, 1, 2, NULL, 0, 'Cash', NULL, '2021-06-01 13:55:47', '2021-06-01 13:55:47'),
(346, 'spr-20210616-105325', 1, NULL, 299, 4, 1, 1100, NULL, 0, 'Cash', NULL, '2021-06-16 04:53:25', '2021-06-16 04:53:25'),
(347, 'spr-20210616-111044', 1, NULL, 300, 4, 1, 440, NULL, 0, 'Cash', NULL, '2021-06-16 05:10:44', '2021-06-16 05:10:44'),
(348, 'spr-20210616-111120', 1, NULL, 301, 4, 1, 2200, NULL, 0, 'Cash', NULL, '2021-06-16 05:11:20', '2021-06-16 05:11:20'),
(349, 'spr-20210616-080543', 1, NULL, 303, 4, 1, 440, 2, 0, 'Points', NULL, '2021-06-16 14:05:43', '2021-06-16 14:05:43'),
(351, 'spr-20210616-082851', 1, NULL, 305, 4, 1, 440, NULL, 0, 'Cash', NULL, '2021-06-16 14:28:51', '2021-06-16 14:28:51'),
(352, 'spr-20210617-115553', 1, NULL, 306, 3, 1, 1100, 4, 0, 'Points', NULL, '2021-06-17 05:55:53', '2021-06-17 05:55:53'),
(353, 'spr-20210617-121359', 1, NULL, 304, 4, 1, 440, 2, 0, 'Points', NULL, '2021-06-17 06:13:59', '2021-06-17 06:13:59'),
(354, 'spr-20210617-030013', 1, NULL, 307, 3, 1, 100, NULL, 0, 'Cash', NULL, '2021-06-17 09:00:13', '2021-06-17 09:00:13'),
(356, 'spr-20210618-083127', 1, NULL, 308, 4, 1, 1608, NULL, 392, 'Cash', NULL, '2021-06-18 14:31:27', '2021-06-18 14:31:27'),
(357, 'spr-20210618-083254', 1, NULL, 309, 3, 1, 2, NULL, 0, 'Cash', NULL, '2021-06-18 14:32:54', '2021-06-18 14:32:54'),
(359, 'spr-20210619-105121', 1, NULL, 310, 4, 1, 958, NULL, 42, 'Cash', NULL, '2021-06-19 04:51:21', '2021-06-19 04:51:21'),
(360, 'spr-20210619-110231', 1, NULL, 312, 4, 1, 440, 2, 0, 'Points', NULL, '2021-06-19 05:02:31', '2021-06-19 05:02:31'),
(361, 'spr-20210619-110638', 1, NULL, 313, 4, 1, 250, 1, 0, 'Points', NULL, '2021-06-19 05:06:38', '2021-06-19 05:06:38'),
(362, 'spr-20210627-124247', 1, NULL, 314, 4, 1, 1100, NULL, 0, 'Cash', NULL, '2021-06-27 06:42:47', '2021-06-27 06:42:47'),
(364, 'spr-20210707-103455', 1, NULL, 317, 4, 1, 18, NULL, 0, 'Cash', NULL, '2021-07-07 04:34:55', '2021-07-07 04:34:55'),
(367, 'spr-20210814-092805', 1, NULL, 325, 4, 1, 1250, NULL, 0, 'Cash', NULL, '2021-08-14 15:28:05', '2021-08-14 15:28:05'),
(371, 'spr-20210921-010722', 1, NULL, 333, 4, 1, 2, NULL, 0, 'Cash', NULL, '2021-09-21 07:07:22', '2021-09-21 07:07:22'),
(372, 'spr-20210921-035020', 1, NULL, 334, 4, 1, 120, NULL, 0, 'Cash', NULL, '2021-09-21 09:50:20', '2021-09-21 09:50:20'),
(373, 'spr-20210923-024704', 1, NULL, 335, 4, 1, 11, NULL, 0, 'Cash', NULL, '2021-09-23 08:47:04', '2021-09-23 08:47:04'),
(374, 'spr-20211003-051829', 1, NULL, 336, 4, 1, 1220, NULL, 0, 'Cash', NULL, '2021-10-03 11:18:29', '2021-10-03 11:18:29'),
(376, 'spr-20211003-054404', 1, NULL, 338, 4, 1, 1100, NULL, 0, 'Cash', NULL, '2021-10-03 11:44:04', '2021-10-03 11:44:04'),
(378, 'spr-20211007-025229', 1, NULL, 340, 4, 1, 1100, NULL, 0, 'Cash', NULL, '2021-10-07 08:52:29', '2021-10-07 08:52:29'),
(379, 'spr-20211007-033840', 1, NULL, 341, 4, 1, 1100, NULL, 0, 'Cash', NULL, '2021-10-07 09:38:40', '2021-10-07 09:38:40'),
(384, 'spr-20211014-035825', 1, NULL, 348, 4, 1, 1100, NULL, 0, 'Cash', NULL, '2021-10-14 09:58:25', '2021-10-14 09:58:25'),
(385, 'spr-20211020-011209', 1, NULL, 349, 4, 1, 102, NULL, 0, 'Cash', NULL, '2021-10-20 07:12:09', '2021-10-20 07:12:09'),
(386, 'spr-20211114-013929', 1, NULL, 353, 4, 1, 374, NULL, 0, 'Cash', NULL, '2021-11-14 07:39:29', '2021-11-14 07:39:29'),
(387, 'spr-20211124-062858', 1, NULL, 355, 4, 1, 3161, NULL, 0, 'Cash', NULL, '2021-11-24 12:28:58', '2021-11-24 12:28:58'),
(388, 'spr-20211207-070932', 1, NULL, 356, 4, 1, 573, NULL, 0, 'Cash', NULL, '2021-12-07 13:09:32', '2021-12-07 13:09:32'),
(391, 'spr-20211222-070313', 1, NULL, 360, 4, 1, 24, NULL, 0, 'Cash', NULL, '2021-12-22 13:03:13', '2021-12-22 13:03:13'),
(393, 'spr-20220203-035948', 1, NULL, 362, 4, 1, 8.5, NULL, 0, 'Cash', NULL, '2022-02-03 09:59:48', '2022-02-03 09:59:48'),
(394, 'spr-20220203-070602', 1, NULL, 363, 4, 1, 466, NULL, 34, 'Cash', NULL, '2022-02-03 13:06:02', '2022-02-03 13:06:02'),
(395, 'spr-20220205-054526', 1, NULL, 364, 4, 1, 396, NULL, 0, 'Cash', NULL, '2022-02-05 11:45:26', '2022-02-05 11:45:26'),
(396, 'spr-20220205-054616', 1, NULL, 365, 4, 1, 240, NULL, 0, 'Cash', NULL, '2022-02-05 11:46:16', '2022-02-05 11:46:16'),
(403, 'spr-20220227-115905', 1, NULL, 377, 4, 1, 500, 2, 0, 'Points', NULL, '2022-02-27 05:59:05', '2022-02-27 05:59:05'),
(405, 'spr-20220309-115901', 1, NULL, 379, 4, 1, 1790, NULL, 0, 'Cash', NULL, '2022-03-09 05:59:01', '2022-03-09 05:59:01'),
(406, 'spr-20220311-091529', 1, NULL, 377, 4, 1, 10, NULL, 0, 'Cheque', 'cheque payment', '2022-03-11 15:15:29', '2022-03-11 15:15:29'),
(408, 'payment-101', 1, NULL, 377, 4, 1, 11, NULL, 0, 'Cash', NULL, '2022-03-12 13:12:38', '2022-03-12 13:43:28'),
(409, 'spr-20220312-082027', 1, NULL, 380, NULL, 1, 440, NULL, 0, 'Cash', NULL, '2022-03-12 14:20:27', '2022-03-12 14:20:27'),
(410, 'spr-20220312-082452', 1, NULL, 381, NULL, 1, 250, NULL, 0, 'Cash', NULL, '2022-03-12 14:24:52', '2022-03-12 14:24:52'),
(411, 'spr-20220312-082622', 1, NULL, 381, NULL, 1, 100, NULL, 0, 'Cash', NULL, '2022-03-12 14:26:22', '2022-03-12 14:26:22'),
(412, 'spr-20220424-110144', 1, NULL, 382, 6, 1, 1225, NULL, 775, 'Cash', NULL, '2022-04-24 05:01:44', '2022-04-24 05:01:44'),
(413, 'spr-20220525-015527', 1, NULL, 385, 6, 1, 120, NULL, 380, 'Cash', NULL, '2022-05-25 13:55:27', '2022-05-25 13:55:27'),
(414, 'ppr-20220525-062722', 1, 148, NULL, NULL, 1, 10082, NULL, 0, 'Cash', 'Online transfer', '2022-05-25 18:27:22', '2022-05-25 18:27:22'),
(415, 'ppr-20220525-062900', 1, 149, NULL, NULL, 1, 46882, NULL, 0, 'Cash', NULL, '2022-05-25 18:29:00', '2022-05-25 18:29:00'),
(416, 'ppr-20220525-070807', 1, 148, NULL, NULL, 1, 68, NULL, 0, 'Cash', NULL, '2022-05-25 19:08:07', '2022-05-25 19:08:07'),
(417, 'ppr-20220525-070817', 1, 150, NULL, NULL, 1, 27825, NULL, 0, 'Cash', NULL, '2022-05-25 19:08:17', '2022-05-25 19:08:17'),
(418, 'spr-20220525-082817', 1, NULL, 386, 7, 1, 580, NULL, 0, 'Cash', NULL, '2022-05-25 20:28:17', '2022-05-25 20:28:17'),
(419, 'spr-20220601-050047', 1, NULL, 387, 7, 1, 1100, NULL, 0, 'Cash', NULL, '2022-06-01 17:00:47', '2022-06-01 17:00:47'),
(420, 'spr-20220616-062820', 1, NULL, 388, 7, 1, 410, NULL, 90, 'Cash', NULL, '2022-06-16 18:28:20', '2022-06-16 18:28:20'),
(421, 'spr-20220806-070420', 1, NULL, 389, 7, 1, 1, NULL, 19, 'Cash', NULL, '2022-08-06 19:04:20', '2022-08-06 19:04:20'),
(422, 'spr-20220806-072955', 1, NULL, 390, 7, 1, 11200, NULL, 0, 'Cash', NULL, '2022-08-06 19:29:55', '2022-08-06 19:29:55'),
(423, 'spr-20220807-082728', 1, NULL, 391, 7, 1, 2500, NULL, 0, 'Paypal', NULL, '2022-08-07 20:27:28', '2022-08-07 20:27:28'),
(424, 'spr-20220807-082825', 1, NULL, 392, 7, 1, 2500, NULL, 0, 'Paypal', 'kl\'j;ll;l', '2022-08-07 20:28:25', '2022-08-07 20:28:25'),
(425, 'spr-20220807-083003', 1, NULL, 393, 7, 1, 410, NULL, 0, 'Paypal', 'kl\'j;ll;l', '2022-08-07 20:30:03', '2022-08-07 20:30:03'),
(426, 'spr-20220825-113847', 38, NULL, 394, 12, 1, 1050, NULL, 0, 'Paypal', 'test', '2022-08-25 11:38:47', '2022-08-25 11:38:47'),
(427, 'spr-20220825-114005', 38, NULL, 395, 12, 1, 410, NULL, 0, 'Paypal', 'test', '2022-08-25 11:40:05', '2022-08-25 11:40:05'),
(428, 'spr-20220905-072059', 38, NULL, 396, 12, 1, 540, NULL, 60, 'Cash', NULL, '2022-09-05 19:20:59', '2022-09-05 19:20:59'),
(429, 'spr-20220906-020006', 38, NULL, 397, 12, 1, 100, NULL, 0, 'Cash', NULL, '2022-09-06 14:00:06', '2022-09-06 14:00:06'),
(430, 'spr-20220906-040906', 38, NULL, 398, 12, 1, 960, NULL, 0, 'Cash', NULL, '2022-09-06 16:09:06', '2022-09-06 16:09:06');

-- --------------------------------------------------------

--
-- Table structure for table `payment_with_cheque`
--

CREATE TABLE `payment_with_cheque` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(11) NOT NULL,
  `cheque_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_with_cheque`
--

INSERT INTO `payment_with_cheque` (`id`, `payment_id`, `cheque_no`, `created_at`, `updated_at`) VALUES
(1, 19, '23425235235', '2018-07-01 03:09:48', '2018-07-01 03:09:48'),
(2, 24, '3123123123', '2018-07-10 01:21:32', '2018-07-10 01:21:32'),
(3, 31, '767867678', '2018-08-08 10:36:22', '2018-08-08 10:36:22'),
(4, 34, '3123412', '2018-08-08 23:55:54', '2018-08-08 23:55:54'),
(5, 35, '7765', '2018-08-09 00:32:14', '2018-08-09 00:32:14'),
(6, 44, '3124142412', '2018-08-30 03:07:18', '2018-08-30 03:07:18'),
(7, 51, '6576764646', '2018-09-03 04:08:21', '2018-09-03 04:08:21'),
(8, 53, '111111111', '2018-09-03 04:15:24', '2018-09-03 04:15:24'),
(9, 79, '1111', '2018-10-06 00:51:55', '2018-10-06 00:51:55'),
(10, 147, '221133', '2018-12-04 00:58:35', '2018-12-04 00:58:35'),
(11, 175, '1111', '2019-02-07 06:38:23', '2019-02-07 06:38:23'),
(12, 176, '1111', '2019-02-07 06:54:59', '2019-02-07 06:54:59'),
(13, 178, '420', '2019-02-07 07:07:04', '2019-02-07 07:07:04'),
(14, 216, '12344321', '2019-11-11 04:39:11', '2019-11-11 04:39:11'),
(15, 295, '111122222', '2020-10-18 05:17:24', '2020-10-18 05:17:24'),
(16, 406, '13123123', '2022-03-11 15:15:29', '2022-03-11 15:15:29');

-- --------------------------------------------------------

--
-- Table structure for table `payment_with_credit_card`
--

CREATE TABLE `payment_with_credit_card` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_with_credit_card`
--

INSERT INTO `payment_with_credit_card` (`id`, `payment_id`, `customer_id`, `customer_stripe_id`, `charge_id`, `created_at`, `updated_at`) VALUES
(4, 294, 1, 'cus_IDw8z9yJZn4qH3', 'ch_1HdUGJKwOmA8HLXePiqphlky', '2020-10-18 05:16:55', '2020-10-18 05:16:55');

-- --------------------------------------------------------

--
-- Table structure for table `payment_with_gift_card`
--

CREATE TABLE `payment_with_gift_card` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(11) NOT NULL,
  `gift_card_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_with_gift_card`
--

INSERT INTO `payment_with_gift_card` (`id`, `payment_id`, `gift_card_id`, `created_at`, `updated_at`) VALUES
(1, 36, 2, '2018-08-24 21:48:36', '2018-08-25 00:57:35'),
(4, 39, 1, '2018-08-25 02:36:34', '2018-08-25 02:36:34'),
(6, 50, 1, '2018-09-02 23:01:38', '2018-09-02 23:01:38'),
(8, 293, 1, '2020-10-18 05:14:26', '2020-10-18 05:14:26');

-- --------------------------------------------------------

--
-- Table structure for table `payment_with_paypal`
--

CREATE TABLE `payment_with_paypal` (
  `id` int(10) UNSIGNED NOT NULL,
  `mobile_number` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payrolls`
--

CREATE TABLE `payrolls` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `paying_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payrolls`
--

INSERT INTO `payrolls` (`id`, `reference_no`, `employee_id`, `account_id`, `user_id`, `amount`, `paying_method`, `note`, `created_at`, `updated_at`) VALUES
(8, 'payroll-20190101-055231', 1, 1, 1, 100, '0', NULL, '2018-12-31 23:52:31', '2018-12-31 23:52:31'),
(9, 'payroll-20191204-113802', 1, 1, 1, 10000, '0', NULL, '2019-12-04 17:38:02', '2019-12-04 17:38:02'),
(10, 'payroll-20210619-123706', 1, 1, 1, 200, '0', NULL, '2021-06-19 06:37:06', '2021-06-19 06:37:06');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(4, 'products-edit', 'web', '2018-06-03 01:00:09', '2018-06-03 01:00:09'),
(5, 'products-delete', 'web', '2018-06-03 22:54:22', '2018-06-03 22:54:22'),
(6, 'products-add', 'web', '2018-06-04 00:34:14', '2018-06-04 00:34:14'),
(7, 'products-index', 'web', '2018-06-04 03:34:27', '2018-06-04 03:34:27'),
(8, 'purchases-index', 'web', '2018-06-04 08:03:19', '2018-06-04 08:03:19'),
(9, 'purchases-add', 'web', '2018-06-04 08:12:25', '2018-06-04 08:12:25'),
(10, 'purchases-edit', 'web', '2018-06-04 09:47:36', '2018-06-04 09:47:36'),
(11, 'purchases-delete', 'web', '2018-06-04 09:47:36', '2018-06-04 09:47:36'),
(12, 'sales-index', 'web', '2018-06-04 10:49:08', '2018-06-04 10:49:08'),
(13, 'sales-add', 'web', '2018-06-04 10:49:52', '2018-06-04 10:49:52'),
(14, 'sales-edit', 'web', '2018-06-04 10:49:52', '2018-06-04 10:49:52'),
(15, 'sales-delete', 'web', '2018-06-04 10:49:53', '2018-06-04 10:49:53'),
(16, 'quotes-index', 'web', '2018-06-04 22:05:10', '2018-06-04 22:05:10'),
(17, 'quotes-add', 'web', '2018-06-04 22:05:10', '2018-06-04 22:05:10'),
(18, 'quotes-edit', 'web', '2018-06-04 22:05:10', '2018-06-04 22:05:10'),
(19, 'quotes-delete', 'web', '2018-06-04 22:05:10', '2018-06-04 22:05:10'),
(20, 'transfers-index', 'web', '2018-06-04 22:30:03', '2018-06-04 22:30:03'),
(21, 'transfers-add', 'web', '2018-06-04 22:30:03', '2018-06-04 22:30:03'),
(22, 'transfers-edit', 'web', '2018-06-04 22:30:03', '2018-06-04 22:30:03'),
(23, 'transfers-delete', 'web', '2018-06-04 22:30:03', '2018-06-04 22:30:03'),
(24, 'returns-index', 'web', '2018-06-04 22:50:24', '2018-06-04 22:50:24'),
(25, 'returns-add', 'web', '2018-06-04 22:50:24', '2018-06-04 22:50:24'),
(26, 'returns-edit', 'web', '2018-06-04 22:50:25', '2018-06-04 22:50:25'),
(27, 'returns-delete', 'web', '2018-06-04 22:50:25', '2018-06-04 22:50:25'),
(28, 'customers-index', 'web', '2018-06-04 23:15:54', '2018-06-04 23:15:54'),
(29, 'customers-add', 'web', '2018-06-04 23:15:55', '2018-06-04 23:15:55'),
(30, 'customers-edit', 'web', '2018-06-04 23:15:55', '2018-06-04 23:15:55'),
(31, 'customers-delete', 'web', '2018-06-04 23:15:55', '2018-06-04 23:15:55'),
(32, 'suppliers-index', 'web', '2018-06-04 23:40:12', '2018-06-04 23:40:12'),
(33, 'suppliers-add', 'web', '2018-06-04 23:40:12', '2018-06-04 23:40:12'),
(34, 'suppliers-edit', 'web', '2018-06-04 23:40:12', '2018-06-04 23:40:12'),
(35, 'suppliers-delete', 'web', '2018-06-04 23:40:12', '2018-06-04 23:40:12'),
(36, 'product-report', 'web', '2018-06-24 23:05:33', '2018-06-24 23:05:33'),
(37, 'purchase-report', 'web', '2018-06-24 23:24:56', '2018-06-24 23:24:56'),
(38, 'sale-report', 'web', '2018-06-24 23:33:13', '2018-06-24 23:33:13'),
(39, 'customer-report', 'web', '2018-06-24 23:36:51', '2018-06-24 23:36:51'),
(40, 'due-report', 'web', '2018-06-24 23:39:52', '2018-06-24 23:39:52'),
(41, 'users-index', 'web', '2018-06-25 00:00:10', '2018-06-25 00:00:10'),
(42, 'users-add', 'web', '2018-06-25 00:00:10', '2018-06-25 00:00:10'),
(43, 'users-edit', 'web', '2018-06-25 00:01:30', '2018-06-25 00:01:30'),
(44, 'users-delete', 'web', '2018-06-25 00:01:30', '2018-06-25 00:01:30'),
(45, 'profit-loss', 'web', '2018-07-14 21:50:05', '2018-07-14 21:50:05'),
(46, 'best-seller', 'web', '2018-07-14 22:01:38', '2018-07-14 22:01:38'),
(47, 'daily-sale', 'web', '2018-07-14 22:24:21', '2018-07-14 22:24:21'),
(48, 'monthly-sale', 'web', '2018-07-14 22:30:41', '2018-07-14 22:30:41'),
(49, 'daily-purchase', 'web', '2018-07-14 22:36:46', '2018-07-14 22:36:46'),
(50, 'monthly-purchase', 'web', '2018-07-14 22:48:17', '2018-07-14 22:48:17'),
(51, 'payment-report', 'web', '2018-07-14 23:10:41', '2018-07-14 23:10:41'),
(52, 'warehouse-stock-report', 'web', '2018-07-14 23:16:55', '2018-07-14 23:16:55'),
(53, 'product-qty-alert', 'web', '2018-07-14 23:33:21', '2018-07-14 23:33:21'),
(54, 'supplier-report', 'web', '2018-07-30 03:00:01', '2018-07-30 03:00:01'),
(55, 'expenses-index', 'web', '2018-09-05 01:07:10', '2018-09-05 01:07:10'),
(56, 'expenses-add', 'web', '2018-09-05 01:07:10', '2018-09-05 01:07:10'),
(57, 'expenses-edit', 'web', '2018-09-05 01:07:10', '2018-09-05 01:07:10'),
(58, 'expenses-delete', 'web', '2018-09-05 01:07:11', '2018-09-05 01:07:11'),
(59, 'general_setting', 'web', '2018-10-19 23:10:04', '2018-10-19 23:10:04'),
(60, 'mail_setting', 'web', '2018-10-19 23:10:04', '2018-10-19 23:10:04'),
(61, 'pos_setting', 'web', '2018-10-19 23:10:04', '2018-10-19 23:10:04'),
(62, 'hrm_setting', 'web', '2019-01-02 10:30:23', '2019-01-02 10:30:23'),
(63, 'purchase-return-index', 'web', '2019-01-02 21:45:14', '2019-01-02 21:45:14'),
(64, 'purchase-return-add', 'web', '2019-01-02 21:45:14', '2019-01-02 21:45:14'),
(65, 'purchase-return-edit', 'web', '2019-01-02 21:45:14', '2019-01-02 21:45:14'),
(66, 'purchase-return-delete', 'web', '2019-01-02 21:45:14', '2019-01-02 21:45:14'),
(67, 'account-index', 'web', '2019-01-02 22:06:13', '2019-01-02 22:06:13'),
(68, 'balance-sheet', 'web', '2019-01-02 22:06:14', '2019-01-02 22:06:14'),
(69, 'account-statement', 'web', '2019-01-02 22:06:14', '2019-01-02 22:06:14'),
(70, 'department', 'web', '2019-01-02 22:30:01', '2019-01-02 22:30:01'),
(71, 'attendance', 'web', '2019-01-02 22:30:01', '2019-01-02 22:30:01'),
(72, 'payroll', 'web', '2019-01-02 22:30:01', '2019-01-02 22:30:01'),
(73, 'employees-index', 'web', '2019-01-02 22:52:19', '2019-01-02 22:52:19'),
(74, 'employees-add', 'web', '2019-01-02 22:52:19', '2019-01-02 22:52:19'),
(75, 'employees-edit', 'web', '2019-01-02 22:52:19', '2019-01-02 22:52:19'),
(76, 'employees-delete', 'web', '2019-01-02 22:52:19', '2019-01-02 22:52:19'),
(77, 'user-report', 'web', '2019-01-16 06:48:18', '2019-01-16 06:48:18'),
(78, 'stock_count', 'web', '2019-02-17 10:32:01', '2019-02-17 10:32:01'),
(79, 'adjustment', 'web', '2019-02-17 10:32:02', '2019-02-17 10:32:02'),
(80, 'sms_setting', 'web', '2019-02-22 05:18:03', '2019-02-22 05:18:03'),
(81, 'create_sms', 'web', '2019-02-22 05:18:03', '2019-02-22 05:18:03'),
(82, 'print_barcode', 'web', '2019-03-07 05:02:19', '2019-03-07 05:02:19'),
(83, 'empty_database', 'web', '2019-03-07 05:02:19', '2019-03-07 05:02:19'),
(84, 'customer_group', 'web', '2019-03-07 05:37:15', '2019-03-07 05:37:15'),
(85, 'unit', 'web', '2019-03-07 05:37:15', '2019-03-07 05:37:15'),
(86, 'tax', 'web', '2019-03-07 05:37:15', '2019-03-07 05:37:15'),
(87, 'gift_card', 'web', '2019-03-07 06:29:38', '2019-03-07 06:29:38'),
(88, 'coupon', 'web', '2019-03-07 06:29:38', '2019-03-07 06:29:38'),
(89, 'holiday', 'web', '2019-10-19 08:57:15', '2019-10-19 08:57:15'),
(90, 'warehouse-report', 'web', '2019-10-22 06:00:23', '2019-10-22 06:00:23'),
(91, 'warehouse', 'web', '2020-02-26 06:47:32', '2020-02-26 06:47:32'),
(92, 'brand', 'web', '2020-02-26 06:59:59', '2020-02-26 06:59:59'),
(93, 'billers-index', 'web', '2020-02-26 07:11:15', '2020-02-26 07:11:15'),
(94, 'billers-add', 'web', '2020-02-26 07:11:15', '2020-02-26 07:11:15'),
(95, 'billers-edit', 'web', '2020-02-26 07:11:15', '2020-02-26 07:11:15'),
(96, 'billers-delete', 'web', '2020-02-26 07:11:15', '2020-02-26 07:11:15'),
(97, 'money-transfer', 'web', '2020-03-02 05:41:48', '2020-03-02 05:41:48'),
(98, 'category', 'web', '2020-07-13 12:13:16', '2020-07-13 12:13:16'),
(99, 'delivery', 'web', '2020-07-13 12:13:16', '2020-07-13 12:13:16'),
(100, 'send_notification', 'web', '2020-10-31 06:21:31', '2020-10-31 06:21:31'),
(101, 'today_sale', 'web', '2020-10-31 06:57:04', '2020-10-31 06:57:04'),
(102, 'today_profit', 'web', '2020-10-31 06:57:04', '2020-10-31 06:57:04'),
(103, 'currency', 'web', '2020-11-09 00:23:11', '2020-11-09 00:23:11'),
(104, 'backup_database', 'web', '2020-11-15 00:16:55', '2020-11-15 00:16:55'),
(105, 'reward_point_setting', 'web', '2021-06-27 04:34:42', '2021-06-27 04:34:42'),
(106, 'revenue_profit_summary', 'web', '2022-02-08 13:57:21', '2022-02-08 13:57:21'),
(107, 'cash_flow', 'web', '2022-02-08 13:57:22', '2022-02-08 13:57:22'),
(108, 'monthly_summary', 'web', '2022-02-08 13:57:22', '2022-02-08 13:57:22'),
(109, 'yearly_report', 'web', '2022-02-08 13:57:22', '2022-02-08 13:57:22'),
(110, 'discount_plan', 'web', '2022-02-16 09:12:26', '2022-02-16 09:12:26'),
(111, 'discount', 'web', '2022-02-16 09:12:38', '2022-02-16 09:12:38'),
(112, 'product-expiry-report', 'web', '2022-03-30 05:39:20', '2022-03-30 05:39:20');

-- --------------------------------------------------------

--
-- Table structure for table `pos_setting`
--

CREATE TABLE `pos_setting` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `product_number` int(11) NOT NULL,
  `keybord_active` tinyint(1) NOT NULL,
  `stripe_public_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_secret_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pos_setting`
--

INSERT INTO `pos_setting` (`id`, `customer_id`, `warehouse_id`, `biller_id`, `product_number`, `keybord_active`, `stripe_public_key`, `stripe_secret_key`, `created_at`, `updated_at`) VALUES
(1, 11, 2, 1, 4, 0, 'pk_test_ITN7KOYiIsHSCQ0UMRcgaYUB', 'sk_test_TtQQaawhEYRwa3mU9CzttrEy', '2018-09-02 03:17:04', '2020-04-17 13:59:54');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barcode_symbology` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `cost` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wholesale_price` int(55) NOT NULL,
  `qty` double DEFAULT NULL,
  `alert_quantity` double DEFAULT NULL,
  `promotion` tinyint(4) DEFAULT NULL,
  `promotion_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `starting_date` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_date` date DEFAULT NULL,
  `tax_id` int(11) DEFAULT NULL,
  `tax_method` int(11) DEFAULT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_variant` tinyint(1) DEFAULT NULL,
  `is_batch` tinyint(1) DEFAULT NULL,
  `is_diffPrice` tinyint(1) DEFAULT NULL,
  `is_imei` tinyint(1) DEFAULT NULL,
  `featured` tinyint(4) DEFAULT NULL,
  `product_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variant_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `code`, `type`, `barcode_symbology`, `brand_id`, `category_id`, `unit_id`, `purchase_unit_id`, `sale_unit_id`, `cost`, `price`, `wholesale_price`, `qty`, `alert_quantity`, `promotion`, `promotion_price`, `starting_date`, `last_date`, `tax_id`, `tax_method`, `image`, `file`, `is_variant`, `is_batch`, `is_diffPrice`, `is_imei`, `featured`, `product_list`, `variant_list`, `qty_list`, `price_list`, `product_details`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Mouse', '63920719', 'standard', 'UPCE', 4, 3, 1, 1, 1, '320', '400', 0, 167, 20, NULL, '350', '2020-06-30', '2020-07-31', 1, 1, 'toponemouse.jpg', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '11:11:30 AMhello world', 0, '2018-05-12 22:23:03', '2022-08-07 20:11:31'),
(2, 'mango', '72782608', 'standard', 'C128', NULL, 1, 1, 3, 2, '8', '12', 0, 3155, 3180, NULL, NULL, NULL, NULL, 2, 2, 'mango.jpg', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', 0, '2018-05-12 22:38:31', '2022-05-19 10:29:06'),
(3, 'Earphone', '85415108', 'standard', 'C128', 4, 2, 1, 1, 1, '200', '250', 0, 138, 25, NULL, '220', '2020-11-02', '2020-11-30', NULL, 1, 'airphonesamsung.jpg', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, 'Earphone with good sound quality.\r\njhjkhjkhjh @@', 0, '2018-05-12 22:39:55', '2022-08-08 17:02:43'),
(4, 'lychee', '38314290', 'standard', 'C128', NULL, 1, 1, 1, 1, '1', '2', 0, 270, 50, NULL, NULL, NULL, NULL, NULL, 1, 'lychee.jpg', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'sweet lychee from kalipur, bashkhali', 0, '2018-05-23 22:54:56', '2022-08-07 20:11:31'),
(5, 'Baby doll', '31261512', 'standard', 'C128', 3, 4, 1, 1, 1, '100', '120', 0, 122, 50, 1, '100', '2020-02-28', '2020-02-29', NULL, 1, 'lalacrybabydoll.jpg', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', 0, '2018-05-23 22:58:20', '2022-05-19 10:29:15'),
(6, 'test', '78041363', 'standard', 'C128', NULL, 2, 1, 1, 1, '12', '21', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2018-05-27 23:50:25', '2022-05-12 05:58:38'),
(10, 'potato', '212132', 'standard', 'C128', NULL, 9, 7, 7, 7, '10', '22', 0, 108.5, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'potato.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2018-06-25 01:34:53', '2022-08-07 20:11:31'),
(13, 'ldms', '40624536', 'digital', 'C128', NULL, 3, 0, 0, 0, '0', '21', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'ldms.jpg', '1532330693.JPG', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'Amazon Prime 1 MonthPrice: 300tk\r\nUser Ability: Max 2 Mobile UserDuration: 1 MonthPackage: Premium', 0, '2018-07-23 01:09:29', '2022-05-26 16:03:20'),
(14, 'ni', '40237871', 'standard', 'C128', NULL, 9, 8, 8, 8, '55', '56', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2018-07-31 22:36:51', '2022-05-12 05:58:47'),
(15, 'edawe', 'awd', 'standard', 'C128', NULL, 1, 4, 4, 4, '312', '132', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2018-08-05 01:26:19', '2022-05-12 05:58:52'),
(16, 'weq', 'eqw', 'digital', 'C128', NULL, 2, 0, 0, 0, '0', '2', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '1533454125.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2018-08-05 01:28:45', '2022-05-12 05:58:38'),
(17, 'et', 'wer', 'standard', 'C128', NULL, 2, 4, 4, 4, '12', '21', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2018-08-06 04:25:43', '2022-05-12 05:58:38'),
(18, 'wre', 'wre', 'standard', 'C128', NULL, 1, 4, 4, 4, '3', '2', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2018-08-06 04:45:42', '2022-05-12 05:58:52'),
(19, 'ewr', 'wer', 'standard', 'C128', NULL, 2, 4, 4, 4, '3', '23', 0, 0, NULL, 1, NULL, '2018-08-06', '2018-08-10', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2018-08-06 05:41:46', '2022-05-12 05:58:39'),
(20, 'dim', '4234', 'standard', 'C128', NULL, 10, 1, 1, 1, '1', '2', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2018-08-28 23:37:07', '2018-08-28 23:43:18'),
(21, 'dim', '1', 'standard', 'C128', NULL, 11, 1, 1, 1, '1', '2', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2018-08-28 23:49:27', '2018-08-28 23:53:21'),
(22, 'iphone-X', '97103461', 'standard', 'C128', 5, 2, 1, 1, 1, '800', '1000', 0, 33, 20, NULL, NULL, NULL, NULL, 1, 1, 'iphoneX.jpg', NULL, NULL, NULL, 0, 1, 1, NULL, NULL, NULL, NULL, '', 0, '2018-09-03 04:05:17', '2022-05-19 10:29:15'),
(23, 'qwq', '1237920612311a', 'standard', 'C39', NULL, 2, 1, 1, 1, '1', '2', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2018-09-10 23:53:18', '2022-05-12 05:58:39'),
(24, 'chocolate', '84802317', 'standard', 'C128', NULL, 9, 1, 1, 1, '1', '2', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 0, '2018-09-15 21:42:01', '2022-05-12 05:58:47'),
(25, 'Galaxy S9', '72100265', 'standard', 'C128', NULL, 2, 1, 1, 1, '500', '1000', 0, 18, 50, NULL, NULL, NULL, NULL, 1, 1, 'SamsungGalaxyS9.jpg', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', 0, '2018-10-23 01:13:22', '2022-05-19 10:29:06'),
(26, 'Samsung Set', '39053411', 'combo', 'C128', 4, 2, 0, 0, 0, '0', '1250', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '3,25', NULL, '1,1', '250,1000', '', 0, '2018-11-19 03:59:06', '2022-05-12 05:58:39'),
(27, 'mixed fruit juice', '24805187', 'combo', 'C128', NULL, 9, 0, 0, 0, '0', '16', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '4,2', NULL, '3,1', '2,10', '', 0, '2018-11-19 09:39:26', '2022-05-12 05:58:47'),
(28, 'ssaaa', 'sasas', 'standard', 'C128', NULL, 2, 1, 1, 2, '1', '2', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2018-11-20 04:14:12', '2022-05-12 05:58:39'),
(29, 'testcloth', '16055884', 'standard', 'C128', NULL, 4, 10, 10, 10, '10', '15', 0, 0, NULL, NULL, NULL, '2018-11-29', NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2018-11-29 03:49:25', '2022-05-12 05:35:54'),
(30, 'Polo Shirt', '53467102', 'standard', 'C128', NULL, 12, 1, 1, 1, '50', '100', 0, 24, 10, NULL, NULL, NULL, NULL, NULL, 1, 'PoloShirt.jpg', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 0, '2018-12-04 23:29:43', '2022-05-12 05:33:37'),
(31, 'Shoe', '90471412', 'standard', 'C128', NULL, 12, 1, 1, 1, '250', '300', 0, 25, 10, NULL, NULL, NULL, NULL, NULL, 1, 'Shoe.jpg', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 0, '2018-12-04 23:33:09', '2022-05-12 05:33:37'),
(32, 'Toothpaste', '859875003032', 'standard', 'C128', NULL, 12, 1, 1, 1, '5', '10', 0, 29, NULL, NULL, NULL, NULL, NULL, NULL, 1, '1572759415477product-page-fresh-breath.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2018-12-18 23:56:08', '2022-05-12 05:33:37'),
(33, 'tissue', '8941161008066', 'standard', 'C128', NULL, 12, 1, 1, 1, '10', '20', 0, 38, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', 0, '2018-12-23 23:33:58', '2022-05-12 05:33:37'),
(48, 'T-shirt', '93475396', 'standard', 'C128', NULL, 12, 1, 1, 1, '2', '3', 0, 32, NULL, NULL, NULL, NULL, NULL, NULL, 1, '1577165120189220px-Blue_Tshirt.jpg', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', 0, '2019-11-21 07:03:04', '2022-05-19 10:29:06'),
(60, 'testvar', '32081679', 'standard', 'C128', NULL, 12, 1, 1, 1, '1', '2', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, '', 0, '2020-05-18 16:44:14', '2022-05-12 05:33:37'),
(61, 'TV', '32703342', 'standard', 'C128', 4, 2, 1, 1, 1, '3000', '10000', 0, 14, NULL, NULL, NULL, NULL, NULL, 2, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 0, '2020-08-16 15:58:39', '2022-08-07 20:11:31'),
(62, 'Test variant', '81145830', 'standard', 'C128', NULL, 4, 1, 1, 1, '1', '2', 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2020-09-27 06:08:27', '2022-05-12 05:35:54'),
(71, 'Napa', '41930312', 'standard', 'C128', NULL, 19, 1, 1, 1, '1', '2', 0, 20, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, NULL, '', 0, '2021-03-07 08:12:53', '2022-08-07 20:11:31'),
(72, 'Denim Jeans', '19243053', 'standard', 'C128', NULL, 12, 1, 1, 1, '2', '5', 0, -4, 10, NULL, NULL, NULL, NULL, NULL, 1, '16255551802975de6825f-5bbc-4d74-bce9-2aa4ab2311ce.jpg', NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '', 0, '2021-05-31 08:05:38', '2022-05-19 10:29:15'),
(74, 'Medium T shirt and Jeans', '10203123', 'combo', 'C128', NULL, 12, 0, 0, 0, '0', '18', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '48,72', '2,', '1,1', '13,5', '', 0, '2021-07-06 07:31:58', '2022-05-12 05:33:37'),
(75, 'Car Repair', '16972383', 'service', 'C128', NULL, 20, 0, 0, 0, '0', '200', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2021-07-15 12:38:41', '2022-05-12 05:34:09'),
(76, 'dasdas', '32781116', 'standard', 'C128', NULL, 4, 1, 1, 1, '1', '2', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '', 0, '2021-11-09 10:57:02', '2022-05-12 05:35:54'),
(77, 'chukus', '48547006', 'standard', 'C128', NULL, 2, 1, 1, 1, '1', '2', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '163886942338193136640_10156697499916330_2126367939505422336_n.jpg,1638869424762105705782_159243222380186_243702843374862028_o.jpg,202112070415034.jpg,202112070427354.jpg', NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '', 0, '2021-12-07 09:30:43', '2022-05-12 05:58:39'),
(78, 'Mobil 1 5W-30', '8781', 'standard', 'C128', 5, 21, 1, 1, 1, '4500', '5170', 0, 0, 5, NULL, NULL, NULL, NULL, NULL, 1, '202205191020362.png', NULL, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, NULL, '<p>Mobil 1&trade; 5W-30 is an advanced full synthetic motor oil designed to deliver outstanding engine protection to keep your engine running like new. Mobil 1 5W-30 meets or exceeds the industry\'s toughest standards and outperforms our conventional and synthetic blend oils. Mobil 1&trade;, synthetic motor oil technology, comes as standard equipment in many different vehicles, including select high-performance vehicles.</p>', 0, '2022-05-12 06:30:00', '2022-05-26 16:02:38'),
(79, 'Mobil 1 0W-40', '8782', 'standard', 'C128', 5, 21, 1, 1, 1, '4500', '5170', 0, 0, 5, NULL, NULL, NULL, NULL, NULL, 1, '202205191020142.png', NULL, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, NULL, '<p>Mobil 1&trade; is the world&rsquo;s leading synthetic motor oil brand delivering our ultimate performance and protection. Mobil 1&trade; 0W-40 European Car Formula (North America) or Protection Formula (rest of the World) Advanced Full Synthetic Motor Oil is engineered for the latest gasoline and diesel (without Diesel Particulate Filters or DPFs) engine technology delivering excellent all-round performance. It provides exceptional cleaning power,wear protection and overall performance. Mobil 1 0W-40 keeps your engine running like new in all driving conditions</p>', 0, '2022-05-12 06:32:27', '2022-05-26 16:02:38'),
(80, 'Mobil Super 2000 5W-30', '8783', 'standard', 'C128', 5, 21, 1, 1, 1, '2000', '2520', 0, 0, 5, NULL, NULL, NULL, NULL, NULL, 1, '202205191023272.jpg', NULL, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, NULL, '<p>The Mobil Super 2000 range of lubricants are enhanced-premium semi-synthetic engine oils, designed to provide an excellent level of protection and performance.</p>', 0, '2022-05-12 06:34:00', '2022-05-26 16:02:38'),
(81, 'Mobil Super 1000 20W-50', '8784', 'standard', 'C128', 5, 21, 1, 1, 1, '1500', '1880', 0, 0, 5, NULL, NULL, NULL, NULL, NULL, 1, '202205191022462.png', NULL, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, NULL, '<p>The Mobil Super 1000 products are a range of quality premium mineral motor oils designed to provide a high level of performance and protection under most operating conditions.</p>', 0, '2022-05-12 06:35:12', '2022-05-26 16:02:38'),
(82, 'Mobil 1 5W-50 1 Liter', '8785', 'standard', 'C128', 5, 21, 1, 1, 1, '1000', '1365', 0, 0, 5, NULL, NULL, NULL, NULL, NULL, 1, '202205191021152.png', NULL, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, NULL, '<p>Mobil 1&trade; is the world&rsquo;s leading synthetic motor oil brand delivering our ultimate performance and protection. Mobil 1 5W-50 Advanced Full Synthetic Motor Oil is our tried and trusted formulation delivering great all-round performance. Mobil 1 5W-50 keeps your engine performing like new. This race-proven technology is suited for extreme driving conditions and motorsport applications. Racing or normal driving, Mobil 1 5W-50 (Rally Formula) helps to provide heavy-duty engine performance and protection for an outstanding driving experience</p>', 0, '2022-05-12 06:37:29', '2022-05-26 16:02:38'),
(83, 'Mobil 1 0W-20 1 Liter', '8786', 'standard', 'C128', 5, 21, 1, 1, 1, '1000', '1365', 0, 0, 5, NULL, NULL, NULL, NULL, NULL, 1, '202205191019532.png', NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '<p class=@price@>&nbsp;</p>\r\n<p class=@desc@>Mobil 1&trade; 0W-20 is an advanced full synthetic engine oil designed to help deliver outstanding engine protection and enhanced fuel economy. Mobil 1 0W-20 meets or exceeds the requirements of various vehicle manufacturers and industry standards and outperforms conventional oils. Mobil 1 0W-20 is recommended for SAE 0W-20 and 5W-20 applications.</p>', 0, '2022-05-12 06:38:36', '2022-05-26 16:02:38'),
(84, 'Mobil Super 2000 5W-30 1 Liter', '8787', 'standard', 'C128', 5, 21, 1, 1, 1, '600', '650', 0, 0, 5, NULL, NULL, NULL, NULL, NULL, 1, '202205191023512.png', NULL, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, NULL, '<p>The Mobil Super 2000 range of lubricants are enhanced-premium semi-synthetic engine oils, designed to provide an excellent level of protection and performance.</p>', 0, '2022-05-12 06:42:59', '2022-05-26 16:02:38'),
(85, 'Mobil Super 1000 20W-50 1 Liter', '8788', 'standard', 'C128', 5, 21, 1, 1, 1, '400', '485', 0, 0, 5, NULL, NULL, NULL, NULL, NULL, 1, '202205191023072.jpg', NULL, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, NULL, '<p>The Mobil Super 1000 products are a range of quality premium mineral motor oils designed to provide a high level of performance and protection under most operating conditions. ( website)</p>', 0, '2022-05-12 06:44:53', '2022-05-26 16:02:38'),
(86, 'Mobil Special 20W-50 4 Liter', '8789', 'standard', 'C128', 5, 21, 1, 1, 1, '1500', '1740', 0, 0, 5, NULL, NULL, NULL, NULL, NULL, 1, '202205191022222.png', NULL, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, NULL, '<p>Mobil Special&trade; 20W-50 is a high performance motor oil for all types of vehicles. Mobil Special 20W-50 delivers engine protection and cleanliness. Mobil Special 20W-50 is recommended for use in a wide range of applications and operating conditions.</p>', 0, '2022-05-12 06:55:51', '2022-05-26 16:02:38'),
(87, 'Mobil 1 5W-30 1 Liter', '8790', 'standard', 'C128', 5, 21, 1, 1, 1, '1200', '1365', 0, 0, 5, NULL, NULL, NULL, NULL, NULL, 1, '202205191020552.png', NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '<p>Mobil 1&trade; 5W-30 is an advanced full synthetic motor oil designed to deliver outstanding engine protection to keep your engine running like new and protect critical engine parts for up to 10,000 miles between oil changes*. Mobil 1 5W-30 meets or exceeds the industry\'s toughest standards and outperforms our conventional and synthetic blend oils. Mobil 1&trade;, synthetic motor oil technology, comes as standard equipment in many different vehicles, including select high-performance vehicles.</p>', 0, '2022-05-12 06:59:45', '2022-05-26 16:02:38'),
(88, 'Mobil ATF 220 1 Liter', '8791', 'standard', 'C128', 5, 21, 1, 1, 1, '500', '585', 0, 0, 5, NULL, NULL, NULL, NULL, NULL, 1, '202205191021342.png', NULL, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, NULL, '<p>Mobil ATF 220 is a high performance, fluid for automatic transmissions in older vehicles specifying Dexron IID.It is also used as a hydraulic fluid in unique applications.</p>', 0, '2022-05-12 07:01:49', '2022-05-26 16:02:38'),
(89, 'Mobil CVTF 3320 1 Liter', '8792', 'standard', 'C128', 5, 21, 1, 1, 1, '800', '940', 0, 0, 5, NULL, NULL, NULL, NULL, NULL, 1, '202205191021592.png', NULL, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, NULL, '<p>Mobil CVTF 3320 is high performance, continuously variable transmission fluid designed to meet the service fill use for many Japanese designed vehicles. Mobil CVTF 3320 provides smoother, consistent all weather step-less shifting, and all-around lubrication protection of the transmission components to help extend transmission service life and provide a smooth driving experience.</p>', 0, '2022-05-12 07:03:12', '2022-05-26 16:02:38'),
(90, 'Gulf Pride 4T Plus 20W-40', '42098', 'standard', 'C128', 3, 23, 1, 1, 1, '350', '430', 0, 0, 5, NULL, NULL, NULL, NULL, NULL, 1, '202205191017282.png', NULL, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, NULL, '<h2 class=@pdp-mod-section-title outer-title@>PRODUCT DETAILS OF GULF PRIDE 4T PLUS 20W-40</h2>\r\n<div class=@pdp-product-detail@ data-spm=@product_detail@>\r\n<div class=@pdp-product-desc @>\r\n<div class=@html-content pdp-product-highlights@>\r\n<ul class=@@>\r\n<li class=@@>Clean Engine</li>\r\n<li class=@@>SAE Grade: 20W40</li>\r\n<li class=@@>Engine and Gearbox Durability</li>\r\n<li class=@@>Power and Performance</li>\r\n<li class=@@>Protection and value forcleaner, smoother-running engines</li>\r\n</ul>\r\n</div>\r\n<div class=@html-content detail-content@>\r\n<p data-spm-anchor-id=@a2a0e.pdp.product_detail.i0.1f9d79e1o3euin@><strong>Gulf Pride 4T Plus</strong>series are premium quality 4-strokeengine oils developed specifically to meet the requirements of the latest high performance air cooled 4-stroke bike engines. These oils are blended from superior quality<strong>base oils</strong>and<strong>specially selected performance additives (LIFE BOOSTING OXY-BITORS)</strong>. Gulf Pride 4T Plus exceeds the performance requirements of<strong>JASO MA2 and Valve Train Wear requirements of API SM</strong>.</p>\r\n</div>\r\n</div>\r\n</div>', 0, '2022-05-12 08:56:33', '2022-05-26 16:03:00'),
(91, 'GULF 4T PLUS 10W-30 SEMI SYNTHETIC 1L', '44527', 'standard', 'C128', 3, 23, 1, 1, 1, '350', '430', 0, 0, 5, NULL, NULL, NULL, NULL, NULL, 1, '202205191016082.jpg', NULL, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, NULL, '<h4>GULF 4T PLUS 10W-30 SEMI SYNTHETIC 1L</h4>\r\n<ul>\r\n<li>\r\n<p class=@pf-at-a-glance-attributes@><strong>Oil Type:&nbsp;</strong>SEMI-SYNTHETIC</p>\r\n</li>\r\n<li>\r\n<p class=@pf-at-a-glance-attributes@><strong>SAE:&nbsp;</strong>10W-30</p>\r\n</li>\r\n<li>\r\n<p class=@pf-at-a-glance-attributes@><strong>API:&nbsp;</strong>SM</p>\r\n</li>\r\n<li>\r\n<p class=@pf-at-a-glance-attributes@><strong>ACEA:&nbsp;</strong>JASO MA2</p>\r\n</li>\r\n<li>\r\n<p class=@pf-at-a-glance-attributes@><strong>Unit Size:&nbsp;</strong>1L</p>\r\n</li>\r\n<li>\r\n<p class=@pf-at-a-glance-attributes@><strong>Appropriate Use:&nbsp;</strong>For Bike</p>\r\n</li>\r\n</ul>', 0, '2022-05-12 08:58:01', '2022-05-26 16:03:00'),
(92, 'GULF Pride 4T Plus 20W-50 Engine Oil for 4-Stroke Bikes [1 L] - Pack of 1', '8040', 'standard', 'C128', 3, 23, 1, 1, 1, '3600', '4019', 0, 0, 5, NULL, NULL, NULL, NULL, NULL, 1, '202205191017522.jpg', NULL, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, NULL, '<h2 class=@ProductDescription__title@>Description</h2>\r\n<div class=@ProductDescription__text @>\r\n<div>\r\n<div class=@LinesEllipsis  @>\r\n<div>\r\n<div>\r\n<ul>\r\n<li>About this item Premium 4-Stroke Motorcycle Engine Oil Developed specifically to meet the requirements of the latest high performance air cooled 4-stroke bike engines Facilitates FASTER PICK-UP Gulf Pride 4T Plus exceeds the performance requirements of JASO MA2 and Valve Train Wear requirements of API SM.</li>\r\n</ul>\r\n<ul>\r\n<li><span class=@import_india@>Imported from India</span>.</li>\r\n</ul>\r\n<p>OIL</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 0, '2022-05-12 09:09:34', '2022-05-26 16:03:00'),
(93, 'GULF POWERTRAC 4T SAE 15W-50 - Synthetic Engine Oil for Motorcyles [1 L] - Pack of 10', '8041', 'standard', 'C128', 3, 23, 1, 1, 1, '11279', '12279', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '202205191016542.jpg', NULL, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, NULL, '<h2 class=@ProductDescription__title@>Description</h2>\r\n<div class=@ProductDescription__text ProductDescription__text__format@>\r\n<div>\r\n<div class=@LinesEllipsis LinesEllipsis--clamped @>\r\n<div>\r\n<div>\r\n<ul>\r\n<li>Synthetic Four Stroke Engine Oil that delivers Maximum Power Ride after Ride.</li>\r\n<li>Exceptional antiwear properties protect vital engine and gear components leading to reduced maintenance costs.</li>\r\n<li>Controlled frictional properties eliminate clutch slippage leading to increased power/ fuel economy and improves drivability.</li>\r\n<li>These oils meet the requirements of leading global 4-stroke motorcycle manufacturers.</li>\r\n<li>Meets API SL and JASO MA2 Specifications.</li>\r\n</ul>\r\n<ul>\r\n<li><span class=@import_india@>Imported from India</span>.</li>\r\n</ul>\r\n<p>Thermo-oxidative stability minimizes deposits and sludge build-up <wbr /><span class=@LinesEllipsis-ellipsis@>&hellip;</span></p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=@ProductDescription__show-more global__link @>Show More</div>\r\n</div>\r\n</div>', 0, '2022-05-12 09:11:49', '2022-05-26 16:03:00'),
(94, 'Gulf Superfleet Turbo Mini 15W-40 Engine Oil For Mini Trucks', 'BD-115', 'standard', 'C128', 3, 23, 1, 1, 1, '1150', '1350', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '202205191018142.jpg', NULL, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, NULL, '<h2 class=@pdp-mod-section-title outer-title@ data-spm-anchor-id=@a2a0e.pdp.0.i4.4b73crY4crY4w6@>Product details of Gulf Superfleet Turbo Mini 15W-40 Engine Oil For Mini Trucks</h2>\r\n<div class=@pdp-product-detail@ data-spm=@product_detail@>\r\n<div class=@pdp-product-desc @>\r\n<div class=@html-content pdp-product-highlights@>\r\n<ul class=@@>\r\n<li class=@@>Product Type: Engine Oil</li>\r\n<li class=@@>Suitable For: Mini Trucks</li>\r\n<li class=@@>Brand: Gulf</li>\r\n<li class=@@>Grade: 15w-40</li>\r\n<li class=@@>100% Original Product</li>\r\n<li class=@@>3 times protection to engine against overheating</li>\r\n<li class=@@>Longer Engine Life</li>\r\n</ul>\r\n</div>\r\n<div class=@html-content detail-content@>\r\n<p>Gulf Superfleet Turbo Mini 15W-40 is designed with &lsquo;3X Protection&rsquo;** technology against overheating for the unique needs of Mini-Truck engines as they are subjected to frequent acceleration and braking conditions in city traffic condition as well as high speed running on highway for short distances with varying loads.</p>\r\n</div>\r\n</div>\r\n</div>', 0, '2022-05-12 09:17:41', '2022-05-26 16:03:00'),
(95, 'Gulf Multi G+ 20W-50 Engine Oil For Passenger Cars', 'BD-1152', 'standard', 'C128', 3, 23, 1, 1, 1, '390', '490', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '202205191016322.jpg', NULL, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, NULL, '<p>Gulf Multi G+ is a superior technology engine oil designed for high temperature protection, minimising deposits and sludge build-up, and reducing oil consumption. Its special anti-wear technology provides improved wear protection of cam and other components.</p>', 0, '2022-05-12 09:19:58', '2022-05-26 16:03:00'),
(96, 'GULF ULTRASYNTH X 5W-30 FULL SYNTHETIC 4L', 'BD-113', 'standard', 'C128', 3, 23, 1, 1, 1, '2600', '2800', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '202205191019282.jpg', NULL, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, NULL, '<p>Gulf Ultrasynth X 5W-30 is fully synthetic energy conserving oil for turbo charged gasoline engines in passenger cars, sport utility vehicles vans and light duty trucks. These oils are formulated to help improve and retain fuel economy, protect vehicle emission system and turbo charge components. These oils are compatible with convention passenger car motor oil.</p>', 0, '2022-05-12 09:22:18', '2022-05-26 16:03:00'),
(97, 'Castrol_Active_Engine_Oil_4T_20W40', 'BD-1180', 'standard', 'C128', 10, 3, 1, 1, 1, '460', '560', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '202205191012592.jpg', NULL, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, NULL, '<h2 class=@pdp-mod-section-title outer-title@ data-spm-anchor-id=@a2a0e.pdp.0.i2.1262fLxJfLxJKa@>Product details of Castrol_Active_Engine_Oil_4T_20W40</h2>\r\n<div class=@pdp-product-detail@ data-spm=@product_detail@>\r\n<div class=@pdp-product-desc @>\r\n<div class=@html-content pdp-product-highlights@>\r\n<ul class=@@>\r\n<li class=@@>Helps to keep engines clean for smoother operation.</li>\r\n<li class=@@>High quality lubricant detergent particles will help to increase engines durability.</li>\r\n<li class=@@>Good wear and corrosion protection.</li>\r\n<li class=@@>Friction control will be optimized.</li>\r\n<li class=@@>Met the API SG and JASO MA2 specifications.</li>\r\n<li class=@@>Broad viscosity range.</li>\r\n<li class=@@>Helps to get easy gear shifting and smoother clutch control.</li>\r\n<li class=@@>Helps to keep engines clean for smoother operation.</li>\r\n<li class=@@>High quality lubricant detergent particles will help to increase engines durability.</li>\r\n<li class=@@>Good wear and corrosion protection.</li>\r\n<li class=@@>Friction control will be optimized.</li>\r\n<li class=@@>Met the API SG and JASO MA2 specifications.</li>\r\n<li class=@@>Broad viscosity range.</li>\r\n<li class=@@>Helps to get easy gear shifting and smoother clutch control.</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>', 0, '2022-05-12 09:27:07', '2022-05-26 16:03:20'),
(98, 'CASTROOL MAGNATEC 5W-30 FULL SYNTHETIC ENGINE OIL 4Ltr for Petrol, Diesel, and Hybrid Vehicles', 'BD-1151', 'standard', 'C128', 10, 3, 1, 1, 1, '4400', '4900', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '202205191013582.jpg', NULL, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, NULL, '<ul class=@@>\r\n<li class=@@ data-spm-anchor-id=@a2a0e.pdp.product_detail.i1.8da08lZE8lZEY8@>CASTROL MAGNATEC 5W-30 FULL SYNTHETIC ENGINE OIL 4L.for Petrol, Diesel, and Hybrid VehiclesUses fully synthetic technology..Forms a self-healing layer that clings to metal surfaces and protects your engine in busy traffic conditions..Provides continuous protection for all driving conditions, styles and temperatures..Delivers outstanding performance under extreme cold start up conditions. The New Car Engine Motor Oil Today even a normaldriver can stop and start as many as 18,000 times a year. And allthat idling in traffic or waiting at junctions causes microscopicwear in your engine. In the latest industry test, New CastrolMAGNATEC STOP-START 5W-30 A5 gives significantly less wear instop-start operation New Castrol MAGNATEC STOP-START 5W-30 A5 hasintelligent molecules that cling, and form a self-healing layerso it\'s always ready to protect at each of the critical stages ofstop-start driving. Castrol MAGNATEC STOP-START 5W-30 A5. InstantProtection From The Moment You Start. Every Time You Start.</li>\r\n</ul>', 0, '2022-05-12 09:29:25', '2022-05-26 16:03:20'),
(99, 'CastrolActiv 10W30 4stroke engine Oil 1 Liter', 'BD-1130', 'standard', 'C128', 10, 3, 1, 1, 1, '500', '600', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '202205191013222.jpg', NULL, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, NULL, '<p><span data-spm-anchor-id=@a2a0e.pdp.product_detail.i2.3005E9FWE9FWxW@>Vehicle Compatibility: Two Wheelers.Apache RTR,Tvs bikeCB Shine, Crux, Vespa, Gladiator, HF Dawn, Platina, Discover,pulser etc</span></p>\r\n<p>In normal running, deposits build up and impact engine performance. But Castrol Activ fights deposits, providing superior engine cleanliness to ensure smooth running</p>\r\n<p>When the engine stops, oil drains to the sump, leaving parts at risk of corrosion. Castrol Activ with Actibond molecules clings to critical engine parts, for improved corrosion protection, even while the engine is off</p>\r\n<p>Very good thermal resistance and stability</p>\r\n<p>Friction control capability.by rng mart</p>', 0, '2022-05-12 10:08:49', '2022-05-26 16:03:20'),
(100, '4L MAGNATEC 10W-40 Engine Oil', 'BD-1126', 'standard', 'C128', 10, 3, 1, 1, 1, '4000', '4150', 0, -3, NULL, NULL, NULL, NULL, NULL, NULL, 1, '202205191013402.jpg', NULL, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, NULL, '<h2 class=@pdp-mod-section-title outer-title@ data-spm-anchor-id=@a2a0e.pdp.0.i3.75c0aOpiaOpilc@>Product details of 4L MAGNATEC 10W-40 Engine Oil</h2>\r\n<div class=@pdp-product-detail@ data-spm=@product_detail@>\r\n<div class=@pdp-product-desc height-limit@ data-spm-anchor-id=@a2a0e.pdp.product_detail.i2.75c0aOpiaOpilc@>\r\n<div class=@html-content pdp-product-highlights@>\r\n<ul class=@@>\r\n<li class=@@>Applications Castrol Magnatec 10W40 is a high performance multigrade engine lubricant for modern passenger cars. It has been specially formulated for petrol engines and can also be used for normally aspirated or turbo charged diesel engines. 10W grade provides better oil flow properties in colder climates compared to 20W</li>\r\n<li class=@@>Features/ Benefits Castrol Magnatec combines intelligent molecules with synthetic technology for a stronger layer of protection. Whether you&rsquo;re just starting up or on the road in demanding driving conditions, today&rsquo;s cars need more than just oil. They need the advanced protection of liquid engineering. Castrol Magnatec keeps your car at its peak for longer. Its intelligent molecules:</li>\r\n<li class=@@>Provide more protection at start up than other oils</li>\r\n<li class=@@>Cling to your engine forming an extra layer that protects during start up and beyond.</li>\r\n<li class=@@>Bond with metal surfaces to make engine parts more resistant to wear.</li>\r\n<li class=@@>Protect during all driving conditions, styles and temperatures.</li>\r\n<li class=@@>The internationally recognised standards that are used by manufacturers to specify oils for use in their engines, and which Castrol GTX meets includes</li>\r\n<li class=@@>API SL CF</li>\r\n<li class=@@>ACEA A3B3</li>\r\n<li class=@@>VW 505.00</li>\r\n<li class=@@>MB229.1</li>\r\n<li class=@@>Specifications/ Performance</li>\r\n</ul>\r\n</div>\r\n<div class=@html-content detail-content@>\r\n<p>&nbsp;</p>\r\n<div>\r\n<div>\r\n<div>&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 0, '2022-05-12 10:11:05', '2022-05-26 16:03:20'),
(101, 'EDGE 5W-40 FULL SYNTHETIC 4L', 'D-1126', 'standard', 'C128', 10, 3, 1, 1, 1, '5800', '6200', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '202205191014182.jpg', NULL, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, NULL, '<h2 class=@pdp-mod-section-title outer-title@ data-spm-anchor-id=@a2a0e.pdp.0.i3.70c4I1MmI1MmLa@>Product details of EDGE 5W-40 FULL SYNTHETIC 4L</h2>\r\n<div class=@pdp-product-detail@ data-spm=@product_detail@>\r\n<div class=@pdp-product-desc @ data-spm-anchor-id=@a2a0e.pdp.product_detail.i2.70c4I1MmI1MmLa@>\r\n<div class=@html-content pdp-product-highlights@>\r\n<ul class=@@>\r\n<li class=@@>Castrol EDGE 5W-40 gives you the confidence to demand maximum engine performance from today&rsquo;s higher revving, higher output engines that operate under increased pressures requiring lower viscosity oils with higher level of protection.</li>\r\n<li class=@@>Oil Type:FULLY SYNTHETICSAE:5W-40API:SN/CFACEA:A3/B3A3/B4C3Unit Size:4LCountry Of Import:UAECountry Of Origin:UKAppropriate Use:For Car</li>\r\n</ul>\r\n</div>\r\n<div class=@html-content detail-content@>&nbsp;</div>\r\n</div>\r\n</div>', 0, '2022-05-12 10:24:21', '2022-05-26 16:03:20'),
(102, 'GTX Octane 20W50 - Engine Oil - 4L', 'GTX 20', 'standard', 'C128', 10, 3, 1, 1, 1, '3000', '3250', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '202205191015282.jpg', NULL, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, NULL, '<p><strong data-spm-anchor-id=@a2a0e.pdp.product_detail.i1.4242tkHBtkHBJK@>DescriptionCastrol GTX is one of the world&rsquo;s most trusted engine oils.It\'s more than just oil. It&rsquo;s liquid engineering that protects against the problems your engine faces every day.Severe driving conditions can cause the build up of a thick, tar-like substance called sludge. Sludge can block yourengine&rsquo;s vital oilways like cholesterol &ndash; and if untreated it can rob an engine of power and, ultimately, its life.Castrol GTX Double Action formula cleans away old sludge, and protects against new sludge formation better thantough industry standards*.Help extend the life of your engine with Castrol GTX.ApplicationCastrol GTX 20W-50 is suitable for use in automotive gasoline engines where the manufacturer recommends an API SLor earlier specification 20W-50 lubricant.AdvantagesCastrol GTX 20W-50 provides:Superior protection against engine sludge*Advanced protection against viscosity and thermal breakdown.Premium quality base oils and anti wear additives to help extend the life of your engine.Helps minimize oil consumption</strong></p>', 0, '2022-05-12 10:27:14', '2022-05-26 16:03:20'),
(103, 'GTX CNG 20W50 - Engine Oil - 4L', 'BD-101', 'standard', 'C128', 10, 3, 1, 1, 1, '2550', '2700', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '202205191014352.png,202205191015062.jpg', NULL, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, NULL, '<p>Castrol GTX CNG is specially engineered to prevent the harmful build-up of sludge, reduce oil deposits and provide daily protection for your engine. Recommended for lubrication of engines fuelled by CNG/LPG under a wide range of driving conditions for vehicles like taxis, passenger cars, and autos. Provide extra engine protection even at high temperatures. Provide extra protection to your engine even under stressful driving conditions</p>', 0, '2022-05-12 10:29:25', '2022-05-26 16:03:20'),
(104, 'Motul 3100 Gold 10W30 Semi-Synthetic Engine Oil – 1 Litre', 'BD-105', 'standard', 'C128', 11, 22, 1, 1, 1, '580', '650', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '202205191025002.jpg', NULL, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, NULL, '<p>Motul is one of the leading motorcycle oil companies and has been around for over 150 years. Motul started doing their special Ester technology over 30 years ago and as you see today, many competitors have also recently switched to Ester technology. Motul\'s 300V contains a double ester - one ester for friction rubbing and another ester for pressure. The end result is excellent protection without sacrificing performance. Motul\'s 300V offers the best race performance and protection, as it has an extremely high boiling point of 367 degrees. 5W40 and 10W40 are the most popular weights and with Motul\'s ester technology, you have four to five times more film and tensile strength in your oil compared to other brands, which mean cheap insurance for your engine. With Motul, you get the best of both worlds with excellent performance and protection. Motul Motorcycle Oil is what we use in our own race bikes and the same oil used by many other AMA, WSBK and MotoGP teams.</p>', 0, '2022-05-12 10:34:56', '2022-05-26 13:13:51'),
(105, 'Motul 300V 10W40 100% Synthetic Ester Core Racing Quality Engine Oil – 1 Litre', 'BD-104', 'standard', 'C128', 11, 22, 1, 1, 1, '1480', '1550', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '202205191024412.jpg', NULL, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, NULL, '<p>Motul is one of the leading motorcycle oil companies and has been around for over 150 years. Motul started doing their special Ester technology over 30 years ago and as you see today, many competitors have also recently switched to Ester technology. Motul\'s 300V contains a double ester - one ester for friction rubbing and another ester for pressure. The end result is excellent protection without sacrificing performance. Motul\'s 300V offers the best race performance and protection, as it has an extremely high boiling point of 367 degrees. 5W40 and 10W40 are the most popular weights and with Motul\'s ester technology, you have four to five times more film and tensile strength in your oil compared to other brands, which mean cheap insurance for your engine. With Motul, you get the best of both worlds with excellent performance and protection. Motul Motorcycle Oil is what we use in our own race bikes and the same oil used by many other AMA, WSBK and MotoGP teams.</p>', 0, '2022-05-12 10:36:21', '2022-05-26 13:13:51'),
(106, 'MOTUL 7100 10W-30 4T', 'BD-117', 'standard', 'C128', 11, 22, 1, 1, 1, '1120', '1250', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '202205191025382.jpg', NULL, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, NULL, '<h2 class=@pdp-mod-section-title outer-title@ data-spm-anchor-id=@a2a0e.pdp.0.i1.14ddQAM0QAM0R1@>Product details of MOTUL 7100 10W-30 4T</h2>\r\n<div class=@pdp-product-detail@ data-spm=@product_detail@>\r\n<div class=@pdp-product-desc @>\r\n<div class=@html-content pdp-product-highlights@>\r\n<ul class=@@>\r\n<li class=@@>APPLICATION : ENGINE LUBRICANTS</li>\r\n<li class=@@>ENGINE TYPE : 4-STROKE</li>\r\n<li class=@@>PRODUCT TYPE : 7100 4T &amp; 710 2T</li>\r\n<li class=@@>QUALITY : 100% SYNTHETIC</li>\r\n<li class=@@>PRODUCT RANGE : MOTORCYCLE</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>', 0, '2022-05-12 10:38:33', '2022-05-26 13:13:51'),
(107, 'Motul 7100 20W50 synthetic motorcycle engmine oil 1 l Motul 7100 20W50 synthetic motorcycle engmine oil 1 l', 'BD-1059', 'standard', 'C128', 11, 22, 1, 1, 1, '1000', '1100', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '202205191026202.jpg', NULL, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, NULL, '<ul class=@@>\r\n<li class=@@ data-spm-anchor-id=@a2a0e.pdp.product_detail.i1.84a2W2geW2geoE@>Country of origin: France</li>\r\n<li class=@@>100% SYNTHETIC: ESTER Technology</li>\r\n<li class=@@>Perfect for smooth ride</li>\r\n<li class=@@>Reinforced anti-wear ability</li>\r\n<li class=@@>Extends engine life</li>\r\n<li class=@@>High performance additives</li>\r\n<li class=@@>Provide superior engine, clutch and gearbox protection</li>\r\n<li class=@@>Meets standards of (JASO/API), oil consumption &amp; fuel economy</li>\r\n</ul>', 0, '2022-05-12 10:40:48', '2022-05-26 13:13:51'),
(108, 'Motul 4T 3000 Plus 10W40 Mineral Motorcycle Engine Oil, 1 Liter', 'BD-1172', 'standard', 'C128', 11, 22, 1, 1, 1, '350', '480', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '202205191025182.jpg', NULL, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, NULL, '<h2 class=@pdp-mod-section-title outer-title@ data-spm-anchor-id=@a2a0e.pdp.0.i1.68c42RL22RL2e4@>Product details of Motul 4T 3000 Plus 10W40 Mineral Motorcycle Engine Oil, 1 Liter</h2>\r\n<div class=@pdp-product-detail@ data-spm=@product_detail@>\r\n<div class=@pdp-product-desc @>\r\n<div class=@html-content pdp-product-highlights@>\r\n<ul class=@@>\r\n<li class=@@>Mineral based 4-stroke engine oil.</li>\r\n<li class=@@>Formulated with high quality base stocks to improve temperature resistance and engine durability.</li>\r\n<li class=@@>High lubrication properties. Lubricant specially reinforced with extreme pressure additives for gearbox protection and long life of gears.</li>\r\n<li class=@@>High lubricating properties which decrease wear and increase engine life time.</li>\r\n<li class=@@>High detergent and dispersive properties for engine cleanliness.</li>\r\n<li class=@@>Compatible with catalytic converters. JASO MA/MA2 approved to ensure perfect operating conditions for wet clutches.</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>', 0, '2022-05-12 10:42:46', '2022-05-26 13:13:51'),
(109, 'MOTUL 7100 10W-30 4T Full Synthetic Engine Oil 1 Ltr', 'BD-1183', 'standard', 'C128', 11, 22, 1, 1, 1, '980', '1050', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '202205191025582.jpg', NULL, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, NULL, '<h2 class=@pdp-mod-section-title outer-title@ data-spm-anchor-id=@a2a0e.pdp.0.i1.29438ejk8ejkv0@>Product details of MOTUL 7100 10W-30 4T Full Synthetic Engine Oil 1 Ltr</h2>\r\n<div class=@pdp-product-detail@ data-spm=@product_detail@>\r\n<div class=@pdp-product-desc @>\r\n<div class=@html-content pdp-product-highlights@>\r\n<ul class=@@ data-spm-anchor-id=@a2a0e.pdp.product_detail.i1.29438ejk8ejkv0@>\r\n<li class=@@>APPLICATION : ENGINE LUBRICANTS</li>\r\n<li class=@@>ENGINE TYPE : 4-STROKE</li>\r\n<li class=@@>PRODUCT TYPE : 7100 4T &amp; 710 2T</li>\r\n<li class=@@>QUALITY : 100% SYNTHETIC</li>\r\n<li class=@@>PRODUCT RANGE : MOTORCYCLE</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>', 0, '2022-05-12 10:44:58', '2022-05-26 13:13:51'),
(110, 'Bike foam wash', 'S01', 'service', 'C128', NULL, 24, 0, 0, 0, '0', '130', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-05-25 13:54:21', '2022-05-25 13:54:21'),
(111, 'Pride 4T 40/50', 'G1', 'standard', 'C128', 3, 25, 1, 1, 1, '430', '460', 440, 117, 10, NULL, NULL, NULL, NULL, NULL, 2, '1653468186201Gulf-Pride-20W.png', NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '', 1, '2022-05-25 14:43:38', '2022-09-06 13:08:25'),
(112, '3000 1.2L Motul', '30673379', 'standard', 'C128', 11, 25, 1, 1, 1, '561', '650', 600, 1, 5, NULL, NULL, NULL, NULL, NULL, 2, '16534805186102PX1frrXdbiQSc4aT5XmUP8H5z6d15UtVUGe2WLF.jpg', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '<p>Provides excellent cooling properties to engine due to low viscosity. Improved oil film resistance at high temperature. Outstanding anti-wear properties and extended gear life protection.</p>\r\n<p>Specially recommended for Hero, Suzuki, TVS and Honda bikes and scooters upto 150 cc, Increase the life of valves and spark plugs</p>\r\n<p>Enhanced thermal stability, Reinforced anti-wear ability extends engine life</p>', 1, '2022-05-25 18:10:06', '2022-09-06 12:47:10'),
(113, 'SDMO 16L Gulf', '95260318', 'standard', 'C128', 3, 25, 1, 1, 1, '6400', '6700', 6650, 7, 1, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-05-25 19:03:52', '2022-09-06 13:21:29'),
(114, 'Eneos 4T 20w-50', '23978591', 'standard', 'C128', 20, 25, 1, 1, 1, '380', '460', 0, 26, 12, NULL, NULL, NULL, NULL, NULL, 2, '1653486653993IMG_0396-550x550h.jpg', NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-05-25 19:51:17', '2022-08-27 14:51:14'),
(115, 'Eneos 4T 20w-40', '25263618', 'standard', 'C128', 20, 25, 1, 1, 1, '380', '550', 510, 13, 12, NULL, NULL, NULL, NULL, NULL, 1, '1653486768924WhatsApp Image 2022-02-27 at 7.43.36 PM.jpeg', NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-05-25 19:53:00', '2022-09-05 19:33:21'),
(116, 'Eneos 4T 10W-40 Full synthetic', '89963857', 'standard', 'C128', 20, 25, 1, 1, 1, '550', '750', 0, 40, 12, NULL, NULL, NULL, NULL, NULL, 1, '1653486897207ENEOS-4T-SL-MA-10W-40-Cambodia-edit.png', NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-05-25 19:55:17', '2022-08-27 14:51:14'),
(117, 'Shell Mineal 20w-50', '14383710', 'standard', 'C128', NULL, 25, 1, 1, 1, '400', '480', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 2, '1653487072627WhatsApp Image 2022-02-27 at 7.42.53 PM (1).jpeg', NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-05-25 19:58:22', '2022-05-25 19:58:22'),
(118, 'Eneos Touring 20w-50 4L', '77308631', 'standard', 'C128', 20, 25, 1, 1, 1, '1800', '2100', 1900, 23, 4, NULL, NULL, NULL, NULL, NULL, 2, '1653487494139ENEOS-Touring-SN-CF-20W-50-edit.png', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-05-25 20:04:58', '2022-09-05 19:03:43'),
(119, 'Touring 20w-50 5L', '78842731', 'standard', 'C128', 20, 25, 1, 1, 1, '2250', '2450', 2310, 9, 4, NULL, NULL, NULL, NULL, NULL, 2, '1653487639458IMG_0302-550x550h.jpg', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-05-25 20:07:35', '2022-09-05 19:03:43'),
(120, 'Touring 20w-50 15L', '42285531', 'standard', 'C128', 20, 25, 1, 1, 1, '5273', '6200', 0, 0, 1, NULL, NULL, NULL, NULL, NULL, 2, '1653487965979enos pail-550x550w.jpg', NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-05-25 20:13:11', '2022-05-25 20:13:11'),
(121, 'ATF ||| Eneos 1L', '62342108', 'standard', 'C128', 20, 25, 1, 1, 1, '560', '600', 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-05-25 20:22:29', '2022-08-27 14:51:14'),
(122, 'Hero engine oil 900 ml', '69045727', 'standard', 'C128', 17, 25, 1, 1, 1, '325', '450', 400, 0, 5, NULL, NULL, NULL, NULL, NULL, 2, '1653489236969WhatsApp Image 2022-02-27 at 7.42.53 PM (2).jpeg', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-05-25 20:34:25', '2022-09-06 13:06:29'),
(123, 'TVS Engine oil 1L', '83964197', 'standard', 'C128', 18, 25, 1, 1, 1, '405', '470', 0, 20, 5, NULL, NULL, NULL, NULL, NULL, 2, '1653489432805WhatsApp Image 2022-02-27 at 7.42.50 PM.jpeg', NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-05-25 20:37:37', '2022-09-06 13:21:29'),
(124, 'TVS tru4 synthetic 1.2L', '30643947', 'standard', 'C128', 18, 25, 1, 1, 1, '805', '950', 0, 12, 2, NULL, NULL, NULL, NULL, NULL, 2, '1653489550918WhatsApp Image 2022-02-27 at 7.42.49 PM (1).jpeg', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-05-25 20:39:19', '2022-09-06 13:21:29'),
(125, 'Yamalube 10w-40 Mineral', '35842392', 'standard', 'C128', 22, 25, 1, 1, 1, '500', '600', 540, 0, 10, NULL, NULL, NULL, NULL, NULL, 2, '1653490269700WhatsApp Image 2022-02-27 at 7.42.48 PM (1).jpeg', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-05-25 20:51:35', '2022-08-06 18:03:49'),
(126, 'Touring 20w-50 1L', '73540258', 'standard', 'C128', 20, 25, 1, 1, 1, '380', '430', 0, 0, 10, NULL, NULL, NULL, NULL, NULL, 2, '1653490645926IMG_0395-250x250h.jpg', NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-05-25 20:57:34', '2022-05-25 20:57:34'),
(127, 'Super v  20w-50 1L', '69340822', 'standard', 'C128', 15, 25, 1, 1, 1, '537', '550', 0, 0, 12, NULL, NULL, NULL, NULL, NULL, 2, '1653491236386iiol0200011lt01.jpg', NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-05-25 21:08:47', '2022-05-25 21:08:47'),
(128, 'Super v 1L 15w-40', '30546305', 'standard', 'C128', 15, 25, 1, 1, 1, '486', '510', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 2, '1653491692419iiol0200011lt01.jpg', NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-05-25 21:15:03', '2022-05-25 21:15:03'),
(129, 'Super V 20w-50 5L', '07391920', 'standard', 'C128', 15, 25, 1, 1, 1, '2602', '2670', 0, 0, 8, NULL, NULL, NULL, NULL, NULL, 2, '1653492372604super-v-20w-50-4l.jpg', NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-05-25 21:26:52', '2022-05-25 21:26:52'),
(130, 'Super V 15L 20w-50', '42990102', 'standard', 'C128', 15, 25, 1, 1, 1, '7560', '7900', 0, 0, 1, NULL, NULL, NULL, NULL, NULL, 2, '1653492677389iiol0200014lt15_1_1.jpg', NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-05-25 21:34:25', '2022-05-25 21:34:25'),
(131, 'Super V 15w-40 5L', '04780195', 'standard', 'C128', 15, 25, 1, 1, 1, '2226', '2290', 0, 0, 2, NULL, NULL, NULL, NULL, NULL, 2, '1653544985018Super-V-15W40-5-LTR.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-05-26 12:03:14', '2022-05-26 12:03:14'),
(132, 'Visco 3000 1L', '17127082', 'standard', 'C128', 15, 25, 1, 1, 1, '700', '730', 720, 2, 4, NULL, NULL, NULL, NULL, NULL, 2, '1653545264947N15713594A_1.jpg', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-05-26 12:08:06', '2022-09-06 14:01:57'),
(133, 'Visco 3000 4L', '68912301', 'standard', 'C128', 15, 25, 1, 1, 1, '2383', '2480', 0, 4, 3, NULL, NULL, NULL, NULL, NULL, 2, '1653545564120visco-3000-20w-50-4l.jpg', NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-05-26 12:13:23', '2022-09-06 14:01:57'),
(134, 'Castrol Active 4T 10w-30', '96193523', 'standard', 'C128', 10, 25, 1, 1, 1, '556', '630', 615, 0, 3, NULL, NULL, NULL, NULL, NULL, 2, '1653550804817activ-10w30-900ml-50-better.jpg', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-05-26 13:41:40', '2022-09-06 12:55:33'),
(135, 'Castrol Active 4T 20w-40', '24792331', 'standard', 'C128', 10, 25, 1, 1, 1, '556', '630', 615, 0, 3, NULL, NULL, NULL, NULL, NULL, 2, '1653551008002image_1024.jpeg', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-05-26 13:43:39', '2022-09-06 12:56:04'),
(136, 'Castrol Active 4T 20w-50', '80786921', 'standard', 'C128', 10, 25, 1, 1, 1, '556', '630', 615, 0, 4, NULL, NULL, NULL, NULL, NULL, 2, '1653551080945Castrol-Activ-4T-20W50.jpg', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-05-26 13:44:51', '2022-09-06 12:56:39'),
(137, 'Castrol Power 1 Racing', '21000364', 'standard', 'C128', 10, 25, 1, 1, 1, '850', '1100', 1000, 0, NULL, NULL, NULL, NULL, NULL, NULL, 2, '1653551326994WhatsApp Image 2022-02-27 at 7.43.35 PM.jpeg', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-05-26 13:48:51', '2022-09-06 13:02:18'),
(138, 'Castrol GTX cng 20w-50 4L', '95332520', 'standard', 'C128', 10, 25, 1, 1, 1, '2126', '2420', 2370, 0, 1, NULL, NULL, NULL, NULL, NULL, 2, '16535539566746eef2d4bfa3a6390fbbf2736bb0ac272.jpg', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-05-26 14:32:45', '2022-09-06 13:01:28');
INSERT INTO `products` (`id`, `name`, `code`, `type`, `barcode_symbology`, `brand_id`, `category_id`, `unit_id`, `purchase_unit_id`, `sale_unit_id`, `cost`, `price`, `wholesale_price`, `qty`, `alert_quantity`, `promotion`, `promotion_price`, `starting_date`, `last_date`, `tax_id`, `tax_method`, `image`, `file`, `is_variant`, `is_batch`, `is_diffPrice`, `is_imei`, `featured`, `product_list`, `variant_list`, `qty_list`, `price_list`, `product_details`, `is_active`, `created_at`, `updated_at`) VALUES
(139, 'Castrol CRB Turbomax 15w-40 5L', '49302834', 'standard', 'C128', 10, 25, 1, 1, 1, '2553', '2900', 2870, 0, 2, NULL, NULL, NULL, NULL, NULL, 2, '16535548694214cc5065e-3c44-4ec8-b3e4-568a42f5336d.jpg', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-05-26 14:48:09', '2022-09-06 12:59:42'),
(140, 'Castrol CRB Turbomax 20w-50 5L', '61383125', 'standard', 'C128', 10, 25, 1, 1, 1, '2517', '2950', 2820, 0, 2, NULL, NULL, NULL, NULL, NULL, 2, '1653555060690castrol_crb_turbomax_20w50_5l.jpg', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-05-26 14:51:19', '2022-09-06 13:00:36'),
(141, 'SDMO 20L', '39745493', 'standard', 'C128', 3, 23, 1, 1, 1, '6868', '7500', 0, 0, 1, NULL, NULL, NULL, NULL, NULL, 2, '1653555776606index.jpeg', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 0, '2022-05-26 15:03:00', '2022-05-26 16:03:00'),
(142, 'Pride 4T 20w50', '80975729', 'standard', 'C128', 3, 25, 1, 1, 1, '430', '460', 440, 0, 10, NULL, NULL, NULL, NULL, NULL, 2, '1653555905358WhatsApp Image 2022-02-27 at 7.43.35 PM (2).jpeg', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-05-26 15:05:22', '2022-09-06 13:09:43'),
(143, 'Power Trac 10w30', '19761476', 'standard', 'C128', 3, 25, 1, 1, 1, '580', '700', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 2, '1653556157485WhatsApp Image 2022-02-27 at 7.43.33 PM (2).jpeg', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-05-26 15:11:38', '2022-05-26 15:11:38'),
(144, 'syntrac 4T 10w40', '20323509', 'standard', 'C128', 3, 25, 1, 1, 1, '750', '1100', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 2, '1653557013798WhatsApp Image 2022-02-27 at 7.43.35 PM (1).jpeg', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-05-26 15:23:38', '2022-05-26 15:23:38'),
(145, 'SDMO 20w50 20L', '29980917', 'standard', 'C128', 3, 25, 1, 1, 1, '7800', '8100', 8000, 2, 1, NULL, NULL, NULL, NULL, NULL, 2, '1653720181160index.jpeg', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-05-28 12:43:04', '2022-09-06 13:21:29'),
(146, 'Gear oil EP 140', '24432005', 'standard', 'C128', 3, 25, 1, 1, 1, '2100', '2400', 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, 2, '1653720485137product-jpeg-500x500.jpeg', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-05-28 12:48:16', '2022-09-06 14:34:12'),
(147, 'Gerar Oil 90', '23457168', 'standard', 'C128', 3, 25, 1, 1, 1, '1900', '2100', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 2, '1653720685761gulf-harmony-150-500x500.jpg', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-05-28 12:51:28', '2022-05-28 12:51:28'),
(148, 'SDMO 20w50 5L', '19703923', 'standard', 'C128', 3, 25, 1, 1, 1, '2000', '2200', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 2, '1653721537067inddex.jpeg', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-05-28 13:06:17', '2022-05-28 13:06:17'),
(149, '3000 4T 10w30', '30759817', 'standard', 'C128', 11, 25, 1, 1, 1, '476', '550', 510, 0, 5, NULL, NULL, NULL, NULL, NULL, 2, '1653722418392827d369f96d40f18642a7b40ba167f6b.jpg', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-05-28 13:20:53', '2022-09-05 12:04:00'),
(150, '3000 4T 10w40', '75869180', 'standard', 'C128', 11, 25, 1, 1, 1, '501', '570', 540, 9, 10, NULL, NULL, NULL, NULL, NULL, 2, '1653722557938WhatsApp Image 2022-02-27 at 7.42.50 PM (1).jpeg', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-05-28 13:23:10', '2022-09-05 18:58:10'),
(151, '3100 4T 10w30', '95089271', 'standard', 'C128', 11, 25, 1, 1, 1, '535', '630', 580, 3, NULL, NULL, NULL, NULL, NULL, NULL, 2, '1653722704718WhatsApp Image 2022-02-27 at 7.42.56 PM (2).jpeg', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-05-28 13:25:22', '2022-09-05 18:58:10'),
(152, '3100 4T 20w50', '80273302', 'standard', 'C128', 11, 25, 1, 1, 1, '569', '670', 610, 19, NULL, NULL, NULL, NULL, NULL, NULL, 2, '1653722776585WhatsApp Image 2022-02-27 at 7.42.54 PM (2).jpeg', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-05-28 13:26:38', '2022-09-05 12:08:00'),
(153, '5100 10w30', '06985293', 'standard', 'C128', 11, 25, 1, 1, 1, '705', '850', 750, 4, 3, NULL, NULL, NULL, NULL, NULL, 2, '1653722924331WhatsApp Image 2022-02-27 at 7.42.56 PM (2).jpeg', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-05-28 13:29:05', '2022-09-05 18:58:10'),
(154, '5100 10w40', '65819770', 'standard', 'C128', 11, 25, 1, 1, 1, '705', '850', 750, 9, 3, NULL, NULL, NULL, NULL, NULL, 2, '1653723210169index.jpegg.jpeg', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-05-28 13:33:43', '2022-09-05 18:58:10'),
(155, '7100 10w30', '95687506', 'standard', 'C128', 11, 25, 1, 1, 1, '918', '1150', 1010, 13, 2, NULL, NULL, NULL, NULL, NULL, 2, '1653726917579e5e44277f90b8b31b987d0fe415389da.jpg', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-05-28 14:35:38', '2022-09-06 12:50:19'),
(156, '7100 10w40', '91254968', 'standard', 'C128', 11, 25, 1, 1, 1, '918', '1150', 1010, 32, 5, NULL, NULL, NULL, NULL, NULL, 2, '1653727083590WhatsApp Image 2022-02-27 at 7.42.52 PM.jpeg', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-05-28 14:38:15', '2022-09-06 12:50:55'),
(157, '7100 20w50', '25037199', 'standard', 'C128', 11, 25, 1, 1, 1, '918', '1150', 1010, 1, 2, NULL, NULL, NULL, NULL, NULL, 2, '1653727286541WhatsApp Image 2022-02-27 at 7.42.53 PM.jpeg', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-05-28 14:41:59', '2022-09-06 12:51:29'),
(158, '300V 10w40', '58071714', 'standard', 'C128', 11, 25, 1, 1, 1, '1402', '1600', 1500, 1, 1, NULL, NULL, NULL, NULL, NULL, 2, '1653727531646a0.ca.88.H1Motul300VFLRoadRacing10W401L1003761697020.JPG', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-05-28 14:45:59', '2022-09-05 12:05:57'),
(159, '300V 15w50', '39651256', 'standard', 'C128', 11, 25, 1, 1, 1, '1377', '1650', 1500, 0, NULL, NULL, NULL, NULL, NULL, NULL, 2, '1653727687371motul-300v-fl-road-racing-15w50-1l.jpg', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-05-28 14:48:12', '2022-09-05 12:06:48'),
(160, 'Fork Oil 350', '70639886', 'standard', 'C128', 11, 26, 1, 1, 1, '209', '270', 0, 8, NULL, NULL, NULL, NULL, NULL, NULL, 2, '165372786246681F2XjDMnSL._SY679_.jpg', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-05-28 14:51:06', '2022-06-01 16:04:51'),
(161, 'Chain Cleaner 400ml', '43080792', 'standard', 'C128', 11, 25, 1, 1, 1, '696', '800', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 2, '165372825827561eRlALP4jL.jpg', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-05-28 14:57:44', '2022-05-28 14:57:44'),
(162, 'Helmet Interiror Cleaner', '23394390', 'standard', 'C128', 11, 28, 1, 1, 1, '600', '700', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 2, '1653728523645motul-m2-helmet-interior-clean-250ml.jpg', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-05-28 15:02:07', '2022-05-28 15:02:07'),
(163, 'Motocool Expert', '06104909', 'standard', 'C128', 11, 26, 1, 1, 1, '650', '750', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 2, '165372868683761MQ7GGlNGL._SL1500_.jpg', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-05-28 15:04:51', '2022-05-28 15:04:51'),
(164, 'Advance AX5 10w30', '98295201', 'standard', 'C128', 12, 25, 1, 1, 1, '430', '520', 480, 12, 2, NULL, NULL, NULL, NULL, NULL, 2, '1653743972711WhatsApp Image 2022-02-27 at 7.42.48 PM (2).jpeg', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-05-28 19:19:46', '2022-09-06 13:21:29'),
(165, 'Advance AX5 20w40', '52902289', 'standard', 'C128', 12, 25, 1, 1, 1, '440', '520', 480, 12, 3, NULL, NULL, NULL, NULL, NULL, 2, '1653744050248Shell-Advance-AX5-20W40-Limited-Edition.jpg', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-05-28 19:21:03', '2022-09-06 13:21:29'),
(166, 'Advance AX5 20w50', '70703921', 'standard', 'C128', 12, 25, 1, 1, 1, '440', '520', 480, 0, 2, NULL, NULL, NULL, NULL, NULL, 2, '16537441527857-advance.jpg', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-05-28 19:22:44', '2022-09-06 12:54:00'),
(167, 'Long Ride 10w40', '53249287', 'standard', 'C128', 12, 25, 1, 1, 1, '700', '820', 750, 0, 5, NULL, NULL, NULL, NULL, NULL, 2, '1653744954985shell-power-logn-ride-10w40-t-my-en.jpeg', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-05-28 19:36:19', '2022-09-06 13:05:00'),
(168, 'Fuel Save', '93940519', 'standard', 'C128', 12, 25, 1, 1, 1, '700', '820', 750, 0, 4, NULL, NULL, NULL, NULL, NULL, 2, '1653802642723Tw85LHGWbepxuTA3SBPNSNoACnYUmHuW1kYIf8Vx.png', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-05-29 11:39:12', '2022-09-06 13:04:20'),
(169, 'Suku Switch', '90452726', 'standard', 'C39', NULL, 28, 1, 1, 1, '120', '160', 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, 2, '1654074730416036f05099c3b22e395fa3ea7e411f7be.jpg', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-06-01 15:12:55', '2022-06-01 15:45:47'),
(170, 'Steel switch', '96208501', 'standard', 'C39', NULL, 28, 1, 1, 1, '180', '230', 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, 2, '16540749453892c49ccc2ecbb947b4b049c2c16ee10c9.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-06-01 15:15:48', '2022-06-01 15:45:47'),
(171, 'Steel double switch', '81045931', 'standard', 'C39', NULL, 28, 1, 1, 1, '350', '400', 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, 2, '1654075017367a0867419fc3c36446eea660b93453b27.jpg', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-06-01 15:17:00', '2022-06-01 15:45:47'),
(172, 'Domeno Switch', '44915808', 'standard', 'C39', NULL, 28, 1, 1, 1, '280', '280', 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, 2, '165407526317146150752cba9b5c45816b40681d4afb6.jpeg', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-06-01 15:21:07', '2022-06-01 15:45:47'),
(173, 'Happylon Raincoat', '27391451', 'standard', 'C39', NULL, 28, 1, 1, 1, '750', '950', 0, 3, NULL, NULL, NULL, NULL, NULL, NULL, 2, '165407548382712c17cec27e600e8ef4e61c14c22edbd.jpg', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-06-01 15:24:47', '2022-06-01 15:45:47'),
(174, 'Looking Glass R1', '01603418', 'standard', 'C128', NULL, 28, 1, 1, 1, '1320', '1550', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 2, '1654075634312BLACK-CARBON-LED-TURN-SIGNAL-MIRRORS-FOR-YAMAHA-YZF-R6-FZ1-FZ6-600R-R3.jpg', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-06-01 15:27:20', '2022-06-01 15:45:47'),
(175, 'Headlight M8', '26181993', 'standard', 'C39', NULL, 28, 1, 1, 1, '680', '900', 0, 9, NULL, NULL, NULL, NULL, NULL, NULL, 2, '1654075730276c2e101aa18ba7742a015f5e2bc1d6e9f.jpg_300x300q80.jpg_.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-06-01 15:29:19', '2022-09-06 13:37:31'),
(176, 'Universal Side Stand', '02170354', 'standard', 'C39', NULL, 28, 1, 1, 1, '550', '800', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 2, '1654075824896T6063-aluminum-alloy-304-stainless-steel-screws-Motorcycle-Side-Stand-Motorcycle-Scooter-Street-Standard.jpg_640x640.jpg', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-06-01 15:31:14', '2022-06-01 15:45:47'),
(177, 'Shark Mat Guard', '23611273', 'standard', 'C39', NULL, 28, 1, 1, 1, '850', '1100', 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, 2, '16540759794791603374759-1.jpg', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-06-01 15:33:02', '2022-06-01 15:45:47'),
(178, 'Racing Moto Disk Lock', '13688701', 'standard', 'C39', NULL, 28, 1, 1, 1, '800', '1050', 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, 2, '1654076131099tZ3mdAN7PAI7dYneINo1bajepHHrgkbM1lLx9cJL.jpg', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-06-01 15:35:33', '2022-09-06 13:37:31'),
(179, 'Eneos40 20w-50', '85218', 'standard', 'UPCE', 20, 25, 1, 1, 1, '500', '550', 0, 0, 5, 1, '520', '2022-06-09', NULL, NULL, 2, '1654757284551wbt-logo.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '2022-06-09 12:54:48', '2022-06-09 13:24:35'),
(180, '3000 Motul 20w40', '11259203', 'standard', 'C128', 11, 25, 1, 1, 1, '497', '570', 540, 9, 5, NULL, NULL, NULL, NULL, NULL, 2, '16597899696703000_4T_20W40.png', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-08-06 18:46:33', '2022-09-05 19:20:59'),
(181, 'Endurance fork oil 120g', '91796798', 'standard', 'C128', 25, 26, 1, 1, 1, '25', '40', 30, 60, 10, NULL, NULL, NULL, NULL, NULL, 1, '1659791477557a3f4dd731622fc80f32f3bdf672f5c2d.jpg', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-08-06 19:11:27', '2022-08-06 19:29:55'),
(182, 'Brake Oil Dot-3 100 ml', '30722405', 'standard', 'C128', 13, 26, 1, 1, 1, '25', '50', 35, 603, 50, NULL, NULL, NULL, NULL, NULL, 2, '1659868855149index.jpeg', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-08-07 16:41:03', '2022-08-25 11:25:05'),
(183, 'Cabin Filter 87139-30040', '83427198', 'standard', 'C128', 26, 27, 1, 1, 1, '211', '300', 220, 25, 3, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-08-08 17:23:41', '2022-09-06 13:53:29'),
(184, 'Cabin Fiter 87139-52020', '09326907', 'standard', 'C128', 26, 27, 1, 1, 1, '211', '300', 220, 10, 3, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-08-08 17:25:40', '2022-09-06 13:53:29'),
(185, 'Cabin Fiter 87139-52010', '47200659', 'standard', 'C128', 26, 27, 1, 1, 1, '202', '300', 210, 5, 3, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-08-08 17:28:52', '2022-09-06 13:53:29'),
(186, 'Air Filter -pp 17801-30060', '60134923', 'standard', 'C128', 26, 27, 1, 1, 1, '461', '550', 480, 8, 3, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-08-08 17:32:46', '2022-09-06 13:53:29'),
(187, 'Air Filter pp 17801-30070', '35056227', 'standard', 'C128', 26, 27, 1, 1, 1, '480', '560', 500, 9, 3, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-08-08 17:34:12', '2022-09-06 13:53:29'),
(188, 'Air Filter -NV 17801-20130', '51834827', 'standard', 'C128', 26, 27, 1, 1, 1, '192', '280', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-08-08 17:35:28', '2022-08-09 15:17:29'),
(189, 'Air Filter -NV17801-21050', '62261143', 'standard', 'C128', 26, 27, 1, 1, 1, '206', '300', 215, 7, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-08-08 17:38:14', '2022-09-06 13:53:29'),
(190, 'Air Fitrer-NV 17801-22020', '29963418', 'standard', 'C128', 26, 27, 1, 1, 1, '202', '300', 210, 21, 3, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-08-09 15:20:28', '2022-09-06 13:53:29'),
(191, 'Air Filter HV 17801-21060', '45393180', 'standard', 'C128', 26, 27, 1, 1, 1, '259', '350', 270, 4, 3, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-08-09 15:22:39', '2022-09-06 13:53:29'),
(192, 'Oil Fiter 90915-YZZE1', '74081129', 'standard', 'C128', 26, 27, 1, 1, 1, '202', '300', 210, 3, 3, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-08-09 15:24:40', '2022-09-06 13:53:29'),
(193, 'Oil Fiter 90915-YZZE2', '21073056', 'standard', 'C128', 26, 27, 1, 1, 1, '216', '320', 225, 13, 3, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-08-09 15:25:45', '2022-09-06 13:53:29'),
(194, 'Oil Fiter 04152-37010', '79507591', 'standard', 'C128', 26, 27, 1, 1, 1, '192', '280', 200, 10, 3, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-08-09 15:26:59', '2022-09-06 13:53:29'),
(195, 'Oil Fiter 04152-38010', '01285130', 'standard', 'C128', 26, 27, 1, 1, 1, '206', '280', 215, 21, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-08-09 15:28:29', '2022-09-06 13:53:29'),
(196, 'Havoline 4T 10W30', '39596164', 'standard', 'C128', 19, 25, 1, 1, 1, '375', '450', 420, 1, 3, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-08-09 15:45:48', '2022-08-27 15:13:20'),
(197, 'Havoline 4T 20W40', '23754310', 'standard', 'C128', 19, 25, 1, 1, 1, '375', '420', 450, 69, 3, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-08-09 15:47:32', '2022-09-05 19:13:55'),
(198, 'Havoline 4T 20W50', '82319954', 'standard', 'C128', 19, 25, 1, 1, 1, '375', '450', 420, 0, 3, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-08-09 15:48:29', '2022-08-09 15:48:29'),
(199, 'Havoline 4T sami synthetic 10W40', '12751223', 'standard', 'C128', 19, 25, 1, 1, 1, '470', '650', 510, 0, 3, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-08-09 15:50:35', '2022-08-09 15:50:35'),
(200, 'Havoline 4T Full synthetic 5W40 4l.', '64001787', 'standard', 'C128', 19, 25, 1, 1, 1, '3460', '3800', 3560, 0, 3, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-08-09 15:53:48', '2022-08-09 15:53:48'),
(201, 'Havoline 4T Fully synthetic 0W20', '70644739', 'standard', 'C128', 19, 25, 1, 1, 1, '2580', '2800', 2680, 2, 3, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-08-09 15:55:28', '2022-08-27 15:13:20'),
(202, 'Havoline Gas 20W50', '11426032', 'standard', 'C128', 19, 25, 1, 1, 1, '1480', '1700', 1580, 0, 3, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-08-09 15:57:12', '2022-08-09 15:57:12'),
(203, 'Delo Gold Ultre 15W40', '72623531', 'standard', 'C128', 19, 25, 1, 1, 1, '1920', '2220', 2190, 11, 1, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-08-09 15:59:30', '2022-09-06 13:58:02'),
(204, 'Delo Gold Ultre 20W50', '17250980', 'standard', 'C128', 19, 25, 1, 1, 1, '1920', '2120', 2040, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-08-09 16:01:06', '2022-08-09 16:01:06'),
(205, 'Total 3500 1L', '00971172', 'standard', 'C128', 27, 25, 1, 1, 1, '455', '480', 470, 187, 10, NULL, NULL, NULL, NULL, NULL, 2, '16613396880196587495a5576dceae14151fde10ee6ae.jpg', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-08-24 17:15:16', '2022-09-05 14:43:08'),
(206, 'Toyoma Synthetic 10w30 1L', '51200799', 'standard', 'C128', 28, 25, 1, 1, 1, '505', '650', 550, 36, 10, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-08-27 13:03:15', '2022-08-27 13:59:01'),
(207, 'Toyama 10w30 Mineral', '80173823', 'standard', 'C128', 28, 25, 1, 1, 1, '385', '480', 420, 0, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-08-27 13:07:13', '2022-08-27 13:07:13'),
(208, 'Toyama 20w40 Mineral', '15046297', 'standard', 'C128', 28, 25, 1, 1, 1, '385', '480', 420, 95, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-08-27 13:13:31', '2022-08-27 13:59:01'),
(209, 'Toyama synthetic 20w40', '09956934', 'standard', 'C128', 28, 25, 1, 1, 1, '505', '650', 550, 123, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-08-27 13:18:01', '2022-08-27 13:59:01'),
(210, 'Toyama 20w50 Mineral', '67739509', 'standard', 'C128', 28, 25, 1, 1, 1, '385', '480', 420, 24, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-08-27 13:19:50', '2022-08-27 13:59:01'),
(211, 'Toyama  Synthetic 20w50', '81126908', 'standard', 'C128', 28, 25, 1, 1, 1, '505', '650', 550, 22, 10, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-08-27 13:22:21', '2022-08-27 13:59:01'),
(212, 'CNG Expart', '03134621', 'standard', 'C128', 28, 25, 1, 1, 1, '660', '800', 720, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-08-27 13:24:06', '2022-08-27 13:24:06'),
(213, 'Multi 20w50 4L', '09678430', 'standard', 'C128', 28, 25, 1, 1, 1, '1463', '1700', 1596, 0, 2, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-08-27 13:26:02', '2022-08-27 13:26:02'),
(214, 'Multi 20w50 5L', '72951216', 'standard', 'C128', 28, 25, 1, 1, 1, '1815', '2200', 1980, 4, 2, NULL, NULL, NULL, NULL, NULL, 2, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-08-27 13:28:54', '2022-08-27 13:59:01'),
(215, 'Multi 20w50 16L', '07332495', 'standard', 'C128', 28, 25, 1, 1, 1, '5170', '6000', 5640, 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-08-27 13:30:12', '2022-08-27 13:30:12'),
(216, 'Multi 20w50 20L', '53156097', 'standard', 'C128', 28, 25, 1, 1, 1, '6380', '7500', 6960, 0, 1, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-08-27 13:31:11', '2022-08-27 13:31:11'),
(217, 'Liqui Moly 10w40 Mineral', '69104072', 'standard', 'C128', 14, 25, 1, 1, 1, '520', '600', 560, 9, 6, NULL, NULL, NULL, NULL, NULL, 1, '1661587924632image.jpg', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-08-27 14:12:18', '2022-09-05 19:06:50'),
(218, 'Liqui Moly 20w50 Mineral', '51070194', 'standard', 'C128', 14, 25, 1, 1, 1, '520', '600', 560, 1, 6, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-08-27 14:14:22', '2022-08-27 14:44:28'),
(219, 'Liqui Moly 10w30 Semi', '30710126', 'standard', 'C128', 14, 25, 1, 1, 1, '640', '800', 680, 11, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-08-27 14:19:26', '2022-08-27 14:44:28'),
(220, 'Liqui Moly 10w40 Semi', '50939419', 'standard', 'C128', 14, 25, 1, 1, 1, '640', '800', 680, 5, 4, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-08-27 14:20:13', '2022-09-05 19:06:50'),
(221, 'Liqui Moly 10w40 Synthetic', '15290628', 'standard', 'C128', 13, 25, 1, 1, 1, '1040', '1200', 1120, 1, 6, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-08-27 14:22:08', '2022-08-27 14:44:28'),
(222, 'Liqui Moly 20w50 synthetic', '06574085', 'standard', 'C128', 14, 25, 1, 1, 1, '1040', '1200', 1120, 2, 4, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-08-27 14:23:20', '2022-08-27 14:44:28'),
(223, 'Liqui Moly Speed Shooter', '33798397', 'standard', 'C128', 14, 26, 1, 1, 1, '320', '370', 340, 11, 4, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-08-27 14:28:38', '2022-08-27 14:44:28'),
(224, 'Liqui Moly 4T Shooter', '78390811', 'standard', 'C128', 14, 26, 1, 1, 1, '280', '350', 300, 7, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-08-27 14:30:22', '2022-08-27 14:44:28'),
(225, 'Liqui Moly Engine flush', '78662054', 'standard', 'C128', 14, 26, 1, 1, 1, '240', '280', 260, 7, 2, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-08-27 14:31:30', '2022-08-27 14:44:28'),
(226, 'Liqui Moly Mos2', '35923029', 'standard', 'C128', 14, 26, 1, 1, 1, '240', '300', 260, 6, 2, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-08-27 14:32:49', '2022-08-27 14:44:28'),
(227, 'Eneos 15w40 5L', '28973016', 'standard', 'C128', 20, 25, 1, 1, 1, '1700', '2500', 2400, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-08-27 15:01:09', '2022-08-27 15:01:37'),
(228, 'Test', '012', 'standard', 'C128', 3, 24, 1, 1, 1, '1000', '350', 300, 1, 3, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, '', 0, '2022-08-29 10:17:35', '2022-09-05 14:41:52'),
(229, 'Mobil super 4T 20w50', '98825570', 'standard', 'C128', 5, 25, 1, 1, 1, '460', '480', 470, 22, 12, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-09-05 15:06:34', '2022-09-06 16:09:06'),
(230, 'Mexon 20w50 1L', '42667537', 'standard', 'C128', 24, 25, 1, 1, 1, '330', '400', 380, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-09-05 16:05:10', '2022-09-05 16:05:10'),
(231, 'Mexon 20w50 600ml', '92073941', 'standard', 'C128', 24, 25, 1, 1, 1, '0.2', '270', 250, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-09-05 16:06:30', '2022-09-05 16:06:30'),
(232, 'Ptt semi syn 15w50', '89174219', 'standard', 'C128', 23, 25, 1, 1, 1, '395', '600', 530, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-09-05 16:08:31', '2022-09-05 16:08:31'),
(233, 'SDMO 20w50 1L', '30313705', 'standard', 'C128', 3, 25, 1, 1, 1, '460', '480', 470, 12, 2, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-09-06 13:13:24', '2022-09-06 13:21:29'),
(234, 'Gulf LE 15w40 18L', '25278690', 'standard', 'C128', 3, 25, 1, 1, 1, '7400', '7700', 7600, 1, 1, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-09-06 13:15:23', '2022-09-06 13:21:29'),
(235, 'Shell Helix 3.5L', '68312063', 'standard', 'C128', 12, 25, 1, 1, 1, '1400', '1650', 1550, 4, 1, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-09-06 13:19:32', '2022-09-06 13:22:08'),
(236, 'King Fisher Polish', '32107806', 'standard', 'C128', NULL, 28, 1, 1, 1, '158', '200', 180, 3, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-09-06 13:31:13', '2022-09-06 13:37:31'),
(237, 'Getsun Polish', '45283062', 'standard', 'C128', NULL, 28, 1, 1, 1, '185', '200', 180, 3, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-09-06 13:32:05', '2022-09-06 13:37:31'),
(238, 'Gulf Multi 20w50 4L', '07156064', 'standard', 'C128', 3, 25, 1, 1, 1, '1200', '1600', 1500, 3, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-09-06 14:29:36', '2022-09-06 14:30:19'),
(239, 'Gulf gear oil 90', '92509827', 'standard', 'C128', 3, 26, 1, 1, 1, '1920', '2400', 2350, 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-09-06 14:33:19', '2022-09-06 14:34:12'),
(240, 'Bizol 20W50 1L.', '90069302', 'standard', 'C128', 21, 25, 1, 1, 1, '510', '600', 550, 0, 2, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-09-06 14:41:02', '2022-09-06 14:41:02'),
(241, 'Bizol 10W40 1L.', '53338690', 'standard', 'C128', 21, 25, 1, 1, 1, '610', '850', 700, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-09-06 14:43:07', '2022-09-06 14:43:07'),
(242, 'Sanuco 20W50 1L.', '10515190', 'standard', 'C128', 21, 25, 1, 1, 1, '450', '550', 500, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-09-06 14:45:41', '2022-09-06 14:45:41'),
(243, 'Sanuco 10W40 1L.', '20744782', 'standard', 'C128', 21, 25, 1, 1, 1, '550', '700', 650, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-09-06 14:48:07', '2022-09-06 14:48:07'),
(244, 'Oil system clean+o90', '95419980', 'standard', 'C128', 21, 25, 1, 1, 1, '390', '500', 450, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '', 1, '2022-09-06 14:51:31', '2022-09-06 14:51:31');

-- --------------------------------------------------------

--
-- Table structure for table `product_adjustments`
--

CREATE TABLE `product_adjustments` (
  `id` int(10) UNSIGNED NOT NULL,
  `adjustment_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_adjustments`
--

INSERT INTO `product_adjustments` (`id`, `adjustment_id`, `product_id`, `variant_id`, `qty`, `action`, `created_at`, `updated_at`) VALUES
(15, 11, 149, NULL, 1, '-', '2022-08-20 20:30:43', '2022-08-20 20:30:43'),
(16, 12, 150, NULL, 20, '-', '2022-08-24 18:02:26', '2022-08-24 18:02:26'),
(17, 13, 149, NULL, 19, '-', '2022-08-24 18:06:10', '2022-08-24 18:06:10'),
(18, 13, 180, NULL, 20, '-', '2022-08-24 18:06:10', '2022-08-24 18:06:10'),
(19, 13, 158, NULL, 6, '-', '2022-08-24 18:06:10', '2022-08-24 18:06:10'),
(20, 13, 152, NULL, 20, '-', '2022-08-24 18:06:10', '2022-08-24 18:06:10'),
(21, 13, 154, NULL, 24, '-', '2022-08-24 18:06:10', '2022-08-24 18:06:10'),
(22, 14, 182, NULL, 1, '-', '2022-08-25 11:23:27', '2022-08-25 11:23:27'),
(23, 15, 182, NULL, 1, '+', '2022-08-25 11:25:05', '2022-08-25 11:25:05'),
(24, 16, 205, NULL, 53, '-', '2022-09-05 14:43:08', '2022-09-05 14:43:08'),
(32, 17, 157, NULL, 1, '+', '2022-09-05 18:56:48', '2022-09-05 18:58:10'),
(34, 18, 118, NULL, 1, '-', '2022-09-05 19:03:43', '2022-09-05 19:03:43'),
(35, 18, 119, NULL, 5, '-', '2022-09-05 19:03:43', '2022-09-05 19:03:43'),
(36, 19, 220, NULL, 1, '-', '2022-09-05 19:06:50', '2022-09-05 19:06:50'),
(37, 19, 217, NULL, 4, '-', '2022-09-05 19:06:50', '2022-09-05 19:06:50'),
(38, 20, 197, NULL, 18, '-', '2022-09-05 19:13:55', '2022-09-05 19:13:55');

-- --------------------------------------------------------

--
-- Table structure for table `product_batches`
--

CREATE TABLE `product_batches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `batch_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_date` date NOT NULL,
  `qty` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_batches`
--

INSERT INTO `product_batches` (`id`, `product_id`, `batch_no`, `expired_date`, `qty`, `created_at`, `updated_at`) VALUES
(1, 71, '1001', '2023-05-31', 10, '2021-03-07 08:14:05', '2022-08-07 20:11:31'),
(2, 71, '1002', '2023-05-31', 6, '2021-03-07 08:55:06', '2021-06-18 14:32:54'),
(3, 71, '1003', '2023-09-30', -2, '2021-03-09 09:42:13', '2022-05-19 10:29:15'),
(4, 22, '10001', '2021-11-30', 0, '2021-10-20 07:47:09', '2022-05-19 10:29:06'),
(5, 100, '1', '2022-05-14', -1, '2022-05-13 09:09:21', '2022-05-19 10:28:50'),
(6, 100, '2', '2022-07-19', -2, '2022-05-19 10:30:51', '2022-05-19 10:45:22'),
(7, 100, '3', '2022-07-19', 0, '2022-05-19 10:45:22', '2022-05-25 18:17:08');

-- --------------------------------------------------------

--
-- Table structure for table `product_purchases`
--

CREATE TABLE `product_purchases` (
  `id` int(10) UNSIGNED NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` double NOT NULL,
  `recieved` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_purchases`
--

INSERT INTO `product_purchases` (`id`, `purchase_id`, `product_id`, `product_batch_id`, `variant_id`, `imei_number`, `qty`, `recieved`, `purchase_unit_id`, `net_unit_cost`, `discount`, `tax_rate`, `tax`, `total`, `created_at`, `updated_at`) VALUES
(59, 12, 4, NULL, NULL, NULL, 200, 200, 1, 1, 0, 0, 0, 200, '2018-08-08 23:48:36', '2018-08-08 23:48:36'),
(60, 12, 5, NULL, NULL, NULL, 100, 100, 1, 100, 0, 0, 0, 10000, '2018-08-08 23:48:36', '2018-08-08 23:48:36'),
(66, 13, 2, NULL, NULL, NULL, 100, 100, 3, 166.96, 0, 15, 2504.35, 19200, '2018-08-08 23:49:55', '2018-08-08 23:49:55'),
(67, 13, 3, NULL, NULL, NULL, 100, 100, 1, 200, 0, 0, 0, 20000, '2018-08-08 23:49:55', '2018-08-08 23:49:55'),
(68, 13, 1, NULL, NULL, NULL, 150, 150, 1, 320, 0, 10, 4800, 52800, '2018-08-08 23:49:55', '2018-08-08 23:49:55'),
(69, 13, 10, NULL, NULL, NULL, 60, 60, 7, 10, 0, 0, 0, 600, '2018-08-08 23:49:55', '2018-08-08 23:49:55'),
(70, 14, 1, NULL, NULL, NULL, 100, 100, 1, 320, 0, 10, 3200, 35200, '2018-08-09 07:23:48', '2018-08-09 07:23:48'),
(71, 14, 2, NULL, NULL, NULL, 50, 50, 3, 166.96, 0, 15, 1252.17, 9600, '2018-08-09 07:23:48', '2018-08-09 07:23:48'),
(72, 14, 3, NULL, NULL, NULL, 100, 100, 1, 200, 0, 0, 0, 20000, '2018-08-09 07:23:49', '2018-08-09 07:23:49'),
(73, 14, 5, NULL, NULL, NULL, 100, 100, 1, 100, 0, 0, 0, 10000, '2018-08-09 07:23:49', '2018-08-09 07:23:49'),
(74, 14, 10, NULL, NULL, NULL, 50, 50, 7, 10, 0, 0, 0, 500, '2018-08-09 07:23:49', '2018-08-09 07:23:49'),
(76, 15, 22, NULL, NULL, NULL, 20, 20, 1, 800, 0, 10, 1600, 17600, '2018-09-03 04:06:46', '2018-09-03 04:06:46'),
(87, 16, 22, NULL, NULL, NULL, 20, 20, 1, 800, 0, 10, 1600, 17600, '2018-09-20 09:09:12', '2018-09-20 09:09:12'),
(89, 18, 4, NULL, NULL, NULL, 50, 50, 1, 1, 0, 0, 0, 50, '2018-10-22 10:26:25', '2018-10-22 10:26:25'),
(90, 19, 4, NULL, NULL, NULL, 50, 50, 1, 1, 0, 0, 0, 50, '2018-10-22 10:26:52', '2018-10-22 10:26:52'),
(91, 20, 25, NULL, NULL, NULL, 15, 15, 1, 500, 0, 10, 750, 8250, '2018-10-23 01:14:21', '2018-10-23 01:14:21'),
(93, 21, 25, NULL, NULL, NULL, 15, 15, 1, 500, 0, 10, 750, 8250, '2018-10-23 01:14:58', '2018-10-23 01:14:58'),
(94, 22, 22, NULL, NULL, NULL, 5, 5, 1, 800, 0, 10, 400, 4400, '2018-10-31 22:59:03', '2018-10-31 22:59:03'),
(96, 23, 22, NULL, NULL, NULL, 5, 5, 1, 800, 0, 10, 400, 4400, '2018-11-03 03:23:52', '2018-11-03 03:23:52'),
(97, 24, 22, NULL, NULL, NULL, 15, 15, 1, 800, 0, 10, 1200, 13200, '2018-11-05 03:18:19', '2018-11-05 03:18:19'),
(98, 24, 25, NULL, NULL, NULL, 5, 5, 1, 500, 0, 10, 250, 2750, '2018-11-05 03:18:19', '2018-11-05 03:18:19'),
(99, 25, 31, NULL, NULL, NULL, 15, 15, 1, 250, 0, 0, 0, 3750, '2018-12-04 23:34:30', '2018-12-04 23:34:30'),
(100, 25, 30, NULL, NULL, NULL, 15, 15, 1, 50, 0, 0, 0, 750, '2018-12-04 23:34:30', '2018-12-04 23:34:30'),
(101, 26, 31, NULL, NULL, NULL, 15, 15, 1, 250, 0, 0, 0, 3750, '2018-12-04 23:35:08', '2018-12-04 23:35:08'),
(102, 26, 30, NULL, NULL, NULL, 15, 15, 1, 50, 0, 0, 0, 750, '2018-12-04 23:35:08', '2018-12-04 23:35:08'),
(104, 27, 32, NULL, NULL, NULL, 10, 10, 1, 1, 0, 0, 0, 10, '2018-12-18 23:57:41', '2018-12-18 23:57:41'),
(112, 33, 33, NULL, NULL, NULL, 10, 10, 1, 1, 0, 0, 0, 10, '2018-12-24 03:04:21', '2018-12-24 03:04:21'),
(113, 34, 25, NULL, NULL, NULL, 2, 2, 1, 500, 0, 10, 100, 1100, '2019-01-03 01:01:24', '2019-01-03 01:01:24'),
(114, 34, 22, NULL, NULL, NULL, 2, 2, 1, 800, 0, 10, 160, 1760, '2019-01-03 01:01:24', '2019-01-03 01:01:24'),
(115, 35, 31, NULL, NULL, NULL, 2, 2, 1, 250, 0, 0, 0, 500, '2019-01-29 03:54:48', '2019-01-29 03:54:48'),
(116, 35, 30, NULL, NULL, NULL, 2, 2, 1, 50, 0, 0, 0, 100, '2019-01-29 03:54:48', '2019-01-29 03:54:48'),
(117, 36, 30, NULL, NULL, NULL, 3, 3, 1, 50, 0, 0, 0, 150, '2019-01-29 03:55:58', '2019-01-29 03:55:58'),
(118, 36, 31, NULL, NULL, NULL, 2, 2, 1, 250, 0, 0, 0, 500, '2019-01-29 03:55:58', '2019-01-29 03:55:58'),
(121, 39, 1, NULL, NULL, NULL, 2, 2, 1, 315, 10, 10, 63, 693, '2019-02-09 04:44:13', '2019-02-09 04:44:13'),
(122, 39, 2, NULL, NULL, NULL, 1, 1, 3, 192, 0, 0, 0, 192, '2019-02-09 04:44:13', '2019-02-09 04:44:13'),
(123, 38, 32, NULL, NULL, NULL, 10, 10, 1, 1, 0, 0, 0, 10, '2019-02-09 04:45:24', '2019-02-09 04:45:24'),
(124, 38, 25, NULL, NULL, NULL, 3, 3, 1, 500, 0, 10, 150, 1650, '2019-02-09 04:45:24', '2019-02-09 04:45:24'),
(125, 37, 33, NULL, NULL, NULL, 10, 10, 1, 1, 0, 0, 0, 10, '2019-02-09 04:46:22', '2019-02-09 04:46:22'),
(126, 37, 25, NULL, NULL, NULL, 2, 2, 1, 500, 0, 10, 100, 1100, '2019-02-09 04:46:23', '2019-02-09 04:46:23'),
(127, 37, 22, NULL, NULL, NULL, 6, 6, 1, 800, 0, 10, 480, 5280, '2019-02-09 04:46:23', '2019-02-09 04:46:23'),
(128, 40, 33, NULL, NULL, NULL, 10, 10, 1, 10, 0, 0, 0, 100, '2019-03-03 04:39:17', '2019-03-03 04:39:17'),
(129, 41, 33, NULL, NULL, NULL, 5, 5, 1, 10, 0, 0, 0, 50, '2019-03-03 04:43:58', '2019-03-03 04:43:58'),
(130, 41, 1, NULL, NULL, NULL, 10, 10, 1, 320, 0, 10, 320, 3520, '2019-03-03 04:43:59', '2019-03-03 04:43:59'),
(133, 42, 30, NULL, NULL, NULL, 1, 1, 1, 50, 0, 0, 0, 50, '2019-04-13 13:50:08', '2019-04-13 13:50:08'),
(134, 42, 31, NULL, NULL, NULL, 1, 1, 1, 250, 0, 0, 0, 250, '2019-04-13 13:50:08', '2019-04-13 13:50:08'),
(135, 43, 25, NULL, NULL, NULL, 3, 3, 1, 500, 0, 10, 150, 1650, '2019-06-13 04:16:00', '2019-06-13 04:16:00'),
(136, 43, 22, NULL, NULL, NULL, 3, 3, 1, 800, 0, 10, 240, 2640, '2019-06-13 04:16:01', '2019-06-13 04:16:01'),
(137, 44, 25, NULL, NULL, NULL, 1, 1, 1, 500, 0, 10, 50, 550, '2019-10-19 09:31:19', '2019-10-19 09:31:19'),
(138, 44, 22, NULL, NULL, NULL, 1, 1, 1, 800, 0, 10, 80, 880, '2019-10-19 09:31:20', '2019-10-19 09:31:20'),
(140, 46, 33, NULL, NULL, NULL, 10, 10, 1, 10, 0, 0, 0, 100, '2019-11-03 05:39:49', '2019-11-03 05:39:49'),
(141, 46, 32, NULL, NULL, NULL, 10, 10, 1, 5, 0, 0, 0, 50, '2019-11-03 05:39:49', '2019-11-03 05:39:49'),
(142, 47, 1, NULL, NULL, NULL, 2, 2, 1, 315, 10, 10, 63, 693, '2019-11-09 05:25:10', '2019-11-09 05:25:10'),
(143, 47, 2, NULL, NULL, NULL, 1, 1, 3, 192, 0, 0, 0, 192, '2019-11-09 05:25:10', '2019-11-09 05:25:10'),
(144, 48, 4, NULL, NULL, NULL, 100, 100, 1, 1, 0, 0, 0, 100, '2019-11-10 13:02:21', '2019-11-10 13:02:21'),
(149, 49, 22, NULL, NULL, NULL, 10, 10, 1, 800, 0, 10, 800, 8800, '2019-11-11 04:28:59', '2019-11-11 04:28:59'),
(158, 55, 48, NULL, 3, NULL, 1, 1, 1, 2, 0, 0, 0, 2, '2019-11-27 16:28:35', '2019-11-27 16:28:35'),
(159, 55, 48, NULL, 2, NULL, 1, 1, 1, 2, 0, 0, 0, 2, '2019-11-27 16:28:35', '2019-11-27 16:28:35'),
(161, 57, 3, NULL, NULL, NULL, 1, 1, 1, 200, 0, 0, 0, 200, '2019-12-04 17:07:49', '2019-12-04 17:07:49'),
(162, 58, 48, NULL, 2, NULL, 1, 1, 1, 2, 0, 0, 0, 2, '2019-12-05 04:21:10', '2019-12-05 04:21:10'),
(163, 58, 48, NULL, 3, NULL, 1, 1, 1, 2, 0, 0, 0, 2, '2019-12-05 04:21:10', '2019-12-05 04:21:10'),
(169, 59, 48, NULL, 3, NULL, 1, 1, 1, 2, 0, 0, 0, 2, '2019-12-21 10:22:29', '2019-12-21 10:22:29'),
(170, 59, 48, NULL, 2, NULL, 1, 1, 1, 2, 0, 0, 0, 2, '2019-12-21 10:22:29', '2019-12-21 10:22:29'),
(171, 59, 48, NULL, 5, NULL, 1, 1, 1, 2, 0, 0, 0, 2, '2019-12-21 10:22:29', '2019-12-21 10:22:29'),
(174, 56, 48, NULL, 2, NULL, 1, 1, 1, 2, 0, 0, 0, 2, '2019-12-21 13:27:16', '2019-12-21 13:27:16'),
(178, 61, 48, NULL, 3, NULL, 10, 10, 1, 2, 0, 0, 0, 20, '2020-01-01 07:06:31', '2020-01-01 07:06:31'),
(179, 61, 48, NULL, 2, NULL, 10, 10, 1, 2, 0, 0, 0, 20, '2020-01-01 07:06:31', '2020-01-01 07:06:31'),
(180, 61, 48, NULL, 5, NULL, 10, 10, 1, 2, 0, 0, 0, 20, '2020-01-01 07:06:31', '2020-01-01 07:06:31'),
(181, 62, 25, NULL, NULL, NULL, 3, 3, 1, 500, 0, 10, 150, 1650, '2020-01-01 08:24:02', '2020-01-01 08:24:02'),
(209, 67, 31, NULL, NULL, NULL, 1, 1, 1, 250, 0, 0, 0, 250, '2020-02-04 17:00:41', '2020-02-04 17:00:41'),
(210, 67, 30, NULL, NULL, NULL, 1, 1, 1, 50, 0, 0, 0, 50, '2020-02-04 17:00:41', '2020-02-04 17:00:41'),
(212, 69, 4, NULL, NULL, NULL, 50, 50, 1, 1, 0, 0, 0, 50, '2020-03-02 05:55:10', '2020-03-02 05:55:10'),
(213, 70, 4, NULL, NULL, NULL, 50, 50, 1, 1, 0, 0, 0, 50, '2020-03-02 05:56:03', '2020-03-02 05:56:03'),
(214, 71, 25, NULL, NULL, NULL, 3, 3, 1, 500, 0, 10, 150, 1650, '2020-04-06 13:35:12', '2020-04-06 13:35:12'),
(215, 71, 31, NULL, NULL, NULL, 5, 5, 1, 250, 0, 0, 0, 1250, '2020-04-06 13:35:12', '2020-04-06 13:35:12'),
(216, 71, 30, NULL, NULL, NULL, 3, 3, 1, 50, 0, 0, 0, 150, '2020-04-06 13:35:12', '2020-04-06 13:35:12'),
(217, 72, 61, NULL, NULL, NULL, 10, 10, 1, 2500, 5000, 15, 3750, 28750, '2020-08-16 16:02:07', '2020-08-16 16:02:07'),
(219, 73, 62, NULL, 12, NULL, 2, 2, 1, 1, 0, 0, 0, 2, '2020-09-27 09:07:44', '2020-09-27 09:07:44'),
(221, 74, 61, NULL, NULL, NULL, 11, 11, 1, 3000, 0, 15, 4950, 37950, '2020-10-24 01:03:16', '2020-10-24 01:03:16'),
(222, 74, 22, NULL, NULL, NULL, 4, 4, 1, 800, 0, 10, 320, 3520, '2020-10-24 01:03:16', '2020-10-24 01:03:16'),
(232, 83, 60, NULL, 9, NULL, 2, 2, 1, 1, 0, 0, 0, 2, '2020-10-26 22:56:11', '2020-10-26 22:56:11'),
(233, 84, 60, NULL, 9, NULL, 2, 2, 1, 2, 0, 0, 0, 4, '2020-10-26 22:56:58', '2020-10-26 22:56:58'),
(234, 85, 1, NULL, NULL, NULL, 1, 1, 1, 320, 0, 10, 32, 352, '2020-11-02 03:29:52', '2020-11-02 03:29:52'),
(239, 87, 1, NULL, NULL, NULL, 1, 1, 1, 320, 0, 10, 32, 352, '2020-11-02 05:20:34', '2020-11-02 05:20:34'),
(242, 89, 62, NULL, 12, NULL, 1, 1, 1, 1, 0, 0, 0, 1, '2020-11-16 09:01:45', '2020-11-16 09:01:45'),
(243, 89, 1, NULL, NULL, NULL, 1, 1, 1, 320, 0, 10, 32, 352, '2020-11-16 09:01:45', '2020-11-16 09:01:45'),
(244, 90, 61, NULL, NULL, NULL, 10, 10, 1, 3000, 0, 15, 4500, 34500, '2020-11-18 00:15:44', '2020-11-18 00:15:44'),
(271, 98, 71, 1, NULL, NULL, 10, 10, 1, 1, 0, 0, 0, 10, '2021-03-07 08:14:05', '2021-03-07 08:14:05'),
(281, 100, 71, 1, NULL, NULL, 10, 10, 1, 1, 0, 0, 0, 10, '2021-03-09 09:45:19', '2021-03-09 09:45:19'),
(282, 99, 71, 2, NULL, NULL, 5, 5, 1, 1, 0, 0, 0, 5, '2021-03-09 09:46:50', '2021-03-09 09:46:50'),
(283, 102, 71, 1, NULL, NULL, 5, 5, 1, 1, 0, 0, 0, 5, '2021-03-11 03:47:53', '2021-03-11 03:47:53'),
(295, 105, 71, 1, NULL, NULL, 1, 1, 1, 1, 0, 0, 0, 1, '2021-04-09 15:53:48', '2021-04-09 15:53:48'),
(296, 105, 5, NULL, NULL, NULL, 1, 1, 1, 100, 0, 0, 0, 100, '2021-04-09 15:53:48', '2021-04-09 15:53:48'),
(397, 148, 112, NULL, NULL, NULL, 20, 20, 1, 500, 0, 0, 0, 10000, '2022-05-25 18:29:22', '2022-05-25 18:29:22'),
(398, 148, 111, NULL, NULL, NULL, 120, 120, 1, 390, 0, 0, 0, 46800, '2022-05-25 18:29:22', '2022-05-25 18:29:22'),
(399, 148, 113, NULL, NULL, NULL, 5, 5, 1, 5550, 0, 0, 0, 27750, '2022-05-25 19:05:54', '2022-05-25 19:05:54'),
(400, 151, 178, NULL, NULL, NULL, 2, 2, 1, 800, 0, 0, 0, 1600, '2022-06-01 15:45:47', '2022-06-01 15:45:47'),
(401, 151, 177, NULL, NULL, NULL, 2, 2, 1, 850, 0, 0, 0, 1700, '2022-06-01 15:45:47', '2022-06-01 15:45:47'),
(402, 151, 176, NULL, NULL, NULL, 1, 1, 1, 550, 0, 0, 0, 550, '2022-06-01 15:45:47', '2022-06-01 15:45:47'),
(403, 151, 175, NULL, NULL, NULL, 3, 3, 1, 680, 0, 0, 0, 2040, '2022-06-01 15:45:47', '2022-06-01 15:45:47'),
(404, 151, 174, NULL, NULL, NULL, 1, 1, 1, 1320, 0, 0, 0, 1320, '2022-06-01 15:45:47', '2022-06-01 15:45:47'),
(405, 151, 173, NULL, NULL, NULL, 3, 3, 1, 750, 0, 0, 0, 2250, '2022-06-01 15:45:47', '2022-06-01 15:45:47'),
(406, 151, 172, NULL, NULL, NULL, 5, 5, 1, 280, 0, 0, 0, 1400, '2022-06-01 15:45:47', '2022-06-01 15:45:47'),
(407, 151, 171, NULL, NULL, NULL, 4, 4, 1, 350, 0, 0, 0, 1400, '2022-06-01 15:45:47', '2022-06-01 15:45:47'),
(408, 151, 170, NULL, NULL, NULL, 5, 5, 1, 180, 0, 0, 0, 900, '2022-06-01 15:45:47', '2022-06-01 15:45:47'),
(409, 151, 169, NULL, NULL, NULL, 5, 5, 1, 120, 0, 0, 0, 600, '2022-06-01 15:45:47', '2022-06-01 15:45:47'),
(410, 151, 152, NULL, NULL, NULL, 20, 20, 1, 468, 0, 0, 0, 9360, '2022-06-01 16:04:51', '2022-06-01 16:04:51'),
(411, 151, 160, NULL, NULL, NULL, 8, 8, 1, 209, 0, 0, 0, 1672, '2022-06-01 16:04:51', '2022-06-01 16:04:51'),
(412, 151, 158, NULL, NULL, NULL, 6, 6, 1, 1240, 0, 0, 0, 7440, '2022-06-01 16:04:51', '2022-06-01 16:04:51'),
(413, 151, 156, NULL, NULL, NULL, 12, 12, 1, 893, 0, 0, 0, 10716, '2022-06-01 16:04:51', '2022-06-01 16:04:51'),
(414, 151, 155, NULL, NULL, NULL, 12, 12, 1, 893, 0, 0, 0, 10716, '2022-06-01 16:04:51', '2022-06-01 16:04:51'),
(415, 151, 154, NULL, NULL, NULL, 12, 12, 1, 646, 0, 0, 0, 7752, '2022-06-01 16:04:51', '2022-06-01 16:04:51'),
(416, 151, 150, NULL, NULL, NULL, 20, 20, 1, 417, 0, 0, 0, 8340, '2022-06-01 16:04:51', '2022-06-01 16:04:51'),
(417, 151, 149, NULL, NULL, NULL, 20, 20, 1, 417, 0, 0, 0, 8340, '2022-06-01 16:04:51', '2022-06-01 16:04:51'),
(418, 153, 156, NULL, NULL, NULL, 12, 12, 1, 879.5, 0, 0, 0, 10554, '2022-08-06 18:59:25', '2022-08-06 18:59:25'),
(419, 153, 154, NULL, NULL, NULL, 12, 12, 1, 671.5, 0, 0, 0, 8058, '2022-08-06 18:59:25', '2022-08-06 18:59:25'),
(420, 153, 180, NULL, NULL, NULL, 20, 20, 1, 467.5, 0, 0, 0, 9350, '2022-08-06 18:59:26', '2022-08-06 18:59:26'),
(421, 153, 181, NULL, NULL, NULL, 460, 460, 1, 25, 0, 0, 0, 11500, '2022-08-06 19:19:21', '2022-08-06 19:19:21'),
(422, 155, 182, NULL, NULL, NULL, 703, 703, 1, 25, 0, 0, 0, 17575, '2022-08-07 16:43:06', '2022-08-07 16:43:06'),
(429, 156, 214, NULL, NULL, NULL, 4, 4, 1, 1815, 0, 0, 0, 7260, '2022-08-27 13:59:01', '2022-08-27 13:59:01'),
(430, 156, 211, NULL, NULL, NULL, 22, 22, 1, 505, 0, 0, 0, 11110, '2022-08-27 13:59:01', '2022-08-27 13:59:01'),
(431, 156, 210, NULL, NULL, NULL, 24, 24, 1, 385, 0, 0, 0, 9240, '2022-08-27 13:59:01', '2022-08-27 13:59:01'),
(432, 156, 209, NULL, NULL, NULL, 123, 123, 1, 505, 0, 0, 0, 62115, '2022-08-27 13:59:01', '2022-08-27 13:59:01'),
(433, 156, 208, NULL, NULL, NULL, 95, 95, 1, 385, 0, 0, 0, 36575, '2022-08-27 13:59:01', '2022-08-27 13:59:01'),
(434, 156, 206, NULL, NULL, NULL, 36, 36, 1, 505, 0, 0, 0, 18180, '2022-08-27 13:59:01', '2022-08-27 13:59:01'),
(435, 156, 158, NULL, NULL, NULL, 1, 1, 1, 1276, 0, 0, 0, 1276, '2022-08-27 14:06:59', '2022-08-27 14:06:59'),
(436, 156, 156, NULL, NULL, NULL, 8, 8, 1, 879.5, 0, 0, 0, 7036, '2022-08-27 14:06:59', '2022-08-27 14:06:59'),
(437, 156, 155, NULL, NULL, NULL, 2, 2, 1, 879.5, 0, 0, 0, 1759, '2022-08-27 14:06:59', '2022-08-27 14:06:59'),
(438, 156, 154, NULL, NULL, NULL, 9, 9, 1, 671.5, 0, 0, 0, 6043.5, '2022-08-27 14:06:59', '2022-08-27 14:06:59'),
(439, 156, 153, NULL, NULL, NULL, 4, 4, 1, 671.5, 0, 0, 0, 2686, '2022-08-27 14:06:59', '2022-08-27 14:06:59'),
(440, 156, 152, NULL, NULL, NULL, 19, 19, 1, 535.5, 0, 0, 0, 10174.5, '2022-08-27 14:06:59', '2022-08-27 14:06:59'),
(441, 156, 151, NULL, NULL, NULL, 3, 3, 1, 510, 0, 0, 0, 1530, '2022-08-27 14:06:59', '2022-08-27 14:06:59'),
(442, 156, 150, NULL, NULL, NULL, 9, 9, 1, 467.5, 0, 0, 0, 4207.5, '2022-08-27 14:06:59', '2022-08-27 14:06:59'),
(443, 156, 180, NULL, NULL, NULL, 10, 10, 1, 467.5, 0, 0, 0, 4675, '2022-08-27 14:06:59', '2022-08-27 14:06:59'),
(444, 156, 226, NULL, NULL, NULL, 6, 6, 1, 240, 0, 0, 0, 1440, '2022-08-27 14:44:28', '2022-08-27 14:44:28'),
(445, 156, 225, NULL, NULL, NULL, 7, 7, 1, 240, 0, 0, 0, 1680, '2022-08-27 14:44:28', '2022-08-27 14:44:28'),
(446, 156, 224, NULL, NULL, NULL, 7, 7, 1, 280, 0, 0, 0, 1960, '2022-08-27 14:44:28', '2022-08-27 14:44:28'),
(447, 156, 223, NULL, NULL, NULL, 11, 11, 1, 320, 0, 0, 0, 3520, '2022-08-27 14:44:28', '2022-08-27 14:44:28'),
(448, 156, 222, NULL, NULL, NULL, 2, 2, 1, 1040, 0, 0, 0, 2080, '2022-08-27 14:44:28', '2022-08-27 14:44:28'),
(449, 156, 221, NULL, NULL, NULL, 1, 1, 1, 1040, 0, 0, 0, 1040, '2022-08-27 14:44:28', '2022-08-27 14:44:28'),
(450, 156, 220, NULL, NULL, NULL, 6, 6, 1, 640, 0, 0, 0, 3840, '2022-08-27 14:44:28', '2022-08-27 14:44:28'),
(451, 156, 219, NULL, NULL, NULL, 11, 11, 1, 640, 0, 0, 0, 7040, '2022-08-27 14:44:28', '2022-08-27 14:44:28'),
(452, 156, 218, NULL, NULL, NULL, 1, 1, 1, 520, 0, 0, 0, 520, '2022-08-27 14:44:28', '2022-08-27 14:44:28'),
(453, 156, 217, NULL, NULL, NULL, 13, 13, 1, 520, 0, 0, 0, 6760, '2022-08-27 14:44:28', '2022-08-27 14:44:28'),
(454, 156, 121, NULL, NULL, NULL, 4, 4, 1, 560, 0, 0, 0, 2240, '2022-08-27 14:51:14', '2022-08-27 14:51:14'),
(455, 156, 116, NULL, NULL, NULL, 40, 40, 1, 550, 0, 0, 0, 22000, '2022-08-27 14:51:14', '2022-08-27 14:51:14'),
(456, 156, 114, NULL, NULL, NULL, 26, 26, 1, 380, 0, 0, 0, 9880, '2022-08-27 14:51:14', '2022-08-27 14:51:14'),
(457, 156, 115, NULL, NULL, NULL, 13, 13, 1, 380, 0, 0, 0, 4940, '2022-08-27 14:51:14', '2022-08-27 14:51:14'),
(458, 156, 119, NULL, NULL, NULL, 14, 14, 1, 2250, 0, 0, 0, 31500, '2022-08-27 14:56:09', '2022-08-27 14:56:09'),
(459, 156, 118, NULL, NULL, NULL, 24, 24, 1, 1800, 0, 0, 0, 43200, '2022-08-27 14:56:09', '2022-08-27 14:56:09'),
(460, 156, 227, NULL, NULL, NULL, 1, 1, 1, 1700, 0, 0, 0, 1700, '2022-08-27 15:01:37', '2022-08-27 15:01:37'),
(461, 156, 203, NULL, NULL, NULL, 8, 8, 1, 1920, 0, 0, 0, 15360, '2022-08-27 15:13:20', '2022-08-27 15:13:20'),
(462, 156, 201, NULL, NULL, NULL, 2, 2, 1, 2580, 0, 0, 0, 5160, '2022-08-27 15:13:20', '2022-08-27 15:13:20'),
(463, 156, 197, NULL, NULL, NULL, 87, 87, 1, 375, 0, 0, 0, 32625, '2022-08-27 15:13:20', '2022-08-27 15:13:20'),
(464, 156, 196, NULL, NULL, NULL, 1, 1, 1, 375, 0, 0, 0, 375, '2022-08-27 15:13:20', '2022-08-27 15:13:20'),
(465, 156, 205, NULL, NULL, NULL, 240, 240, 1, 455, 0, 0, 0, 109200, '2022-08-27 15:14:29', '2022-08-27 15:14:29'),
(466, 164, 228, NULL, NULL, NULL, 1, 1, 1, 1000, 0, 0, 0, 1000, '2022-08-29 10:46:55', '2022-08-29 10:46:55'),
(467, 165, 112, NULL, NULL, NULL, 1, 1, 1, 510, 0, 0, 0, 510, '2022-08-29 11:54:50', '2022-08-29 11:54:50'),
(468, 166, 229, NULL, NULL, NULL, 24, 24, 1, 460, 0, 0, 0, 11040, '2022-09-06 13:21:29', '2022-09-06 13:21:29'),
(469, 166, 165, NULL, NULL, NULL, 12, 12, 1, 440, 0, 0, 0, 5280, '2022-09-06 13:21:29', '2022-09-06 13:21:29'),
(470, 166, 164, NULL, NULL, NULL, 12, 12, 1, 430, 0, 0, 0, 5160, '2022-09-06 13:21:29', '2022-09-06 13:21:29'),
(471, 166, 124, NULL, NULL, NULL, 12, 12, 1, 820, 0, 0, 0, 9840, '2022-09-06 13:21:29', '2022-09-06 13:21:29'),
(472, 166, 123, NULL, NULL, NULL, 20, 20, 1, 430, 0, 0, 0, 8600, '2022-09-06 13:21:29', '2022-09-06 13:21:29'),
(473, 166, 233, NULL, NULL, NULL, 12, 12, 1, 460, 0, 0, 0, 5520, '2022-09-06 13:21:29', '2022-09-06 13:21:29'),
(474, 166, 234, NULL, NULL, NULL, 1, 1, 1, 7400, 0, 0, 0, 7400, '2022-09-06 13:21:29', '2022-09-06 13:21:29'),
(475, 166, 145, NULL, NULL, NULL, 2, 2, 1, 7800, 0, 0, 0, 15600, '2022-09-06 13:21:29', '2022-09-06 13:21:29'),
(476, 166, 113, NULL, NULL, NULL, 2, 2, 1, 6400, 0, 0, 0, 12800, '2022-09-06 13:21:29', '2022-09-06 13:21:29'),
(477, 166, 235, NULL, NULL, NULL, 4, 4, 1, 1400, 0, 0, 0, 5600, '2022-09-06 13:22:08', '2022-09-06 13:22:08'),
(478, 166, 236, NULL, NULL, NULL, 3, 3, 1, 158, 0, 0, 0, 474, '2022-09-06 13:37:31', '2022-09-06 13:37:31'),
(479, 166, 237, NULL, NULL, NULL, 3, 3, 1, 185, 0, 0, 0, 555, '2022-09-06 13:37:31', '2022-09-06 13:37:31'),
(480, 166, 175, NULL, NULL, NULL, 6, 6, 1, 610, 0, 0, 0, 3660, '2022-09-06 13:37:31', '2022-09-06 13:37:31'),
(481, 166, 178, NULL, NULL, NULL, 3, 3, 1, 730, 0, 0, 0, 2190, '2022-09-06 13:37:31', '2022-09-06 13:37:31'),
(482, 166, 189, NULL, NULL, NULL, 7, 7, 1, 206, 0, 0, 0, 1442, '2022-09-06 13:53:29', '2022-09-06 13:53:29'),
(483, 166, 195, NULL, NULL, NULL, 21, 21, 1, 206, 0, 0, 0, 4326, '2022-09-06 13:53:29', '2022-09-06 13:53:29'),
(484, 166, 194, NULL, NULL, NULL, 10, 10, 1, 192, 0, 0, 0, 1920, '2022-09-06 13:53:29', '2022-09-06 13:53:29'),
(485, 166, 193, NULL, NULL, NULL, 13, 13, 1, 216, 0, 0, 0, 2808, '2022-09-06 13:53:29', '2022-09-06 13:53:29'),
(486, 166, 192, NULL, NULL, NULL, 3, 3, 1, 202, 0, 0, 0, 606, '2022-09-06 13:53:29', '2022-09-06 13:53:29'),
(487, 166, 191, NULL, NULL, NULL, 4, 4, 1, 259, 0, 0, 0, 1036, '2022-09-06 13:53:29', '2022-09-06 13:53:29'),
(488, 166, 190, NULL, NULL, NULL, 21, 21, 1, 202, 0, 0, 0, 4242, '2022-09-06 13:53:29', '2022-09-06 13:53:29'),
(489, 166, 187, NULL, NULL, NULL, 9, 9, 1, 480, 0, 0, 0, 4320, '2022-09-06 13:53:29', '2022-09-06 13:53:29'),
(490, 166, 186, NULL, NULL, NULL, 8, 8, 1, 461, 0, 0, 0, 3688, '2022-09-06 13:53:29', '2022-09-06 13:53:29'),
(491, 166, 185, NULL, NULL, NULL, 5, 5, 1, 202, 0, 0, 0, 1010, '2022-09-06 13:53:29', '2022-09-06 13:53:29'),
(492, 166, 184, NULL, NULL, NULL, 10, 10, 1, 211, 0, 0, 0, 2110, '2022-09-06 13:53:29', '2022-09-06 13:53:29'),
(493, 166, 183, NULL, NULL, NULL, 25, 25, 1, 211, 0, 0, 0, 5275, '2022-09-06 13:53:29', '2022-09-06 13:53:29'),
(494, 166, 203, NULL, NULL, NULL, 3, 3, 1, 1920, 0, 0, 0, 5760, '2022-09-06 13:58:02', '2022-09-06 13:58:02'),
(495, 166, 133, NULL, NULL, NULL, 4, 4, 1, 2383, 0, 0, 0, 9532, '2022-09-06 14:01:57', '2022-09-06 14:01:57'),
(496, 166, 132, NULL, NULL, NULL, 2, 2, 1, 700, 0, 0, 0, 1400, '2022-09-06 14:01:57', '2022-09-06 14:01:57'),
(497, 172, 238, NULL, NULL, NULL, 3, 3, 1, 1200, 0, 0, 0, 3600, '2022-09-06 14:30:19', '2022-09-06 14:30:19'),
(498, 172, 239, NULL, NULL, NULL, 2, 2, 1, 1920, 0, 0, 0, 3840, '2022-09-06 14:34:12', '2022-09-06 14:34:12'),
(499, 172, 146, NULL, NULL, NULL, 3, 3, 1, 1900, 0, 0, 0, 5700, '2022-09-06 14:34:12', '2022-09-06 14:34:12');

-- --------------------------------------------------------

--
-- Table structure for table `product_quotation`
--

CREATE TABLE `product_quotation` (
  `id` int(10) UNSIGNED NOT NULL,
  `quotation_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_quotation`
--

INSERT INTO `product_quotation` (`id`, `quotation_id`, `product_id`, `product_batch_id`, `variant_id`, `qty`, `sale_unit_id`, `net_unit_price`, `discount`, `tax_rate`, `tax`, `total`, `created_at`, `updated_at`) VALUES
(2, 1, 1, NULL, NULL, 1, 2, 5030, 10, 15, 754.5, 5784.5, '2018-08-08 23:52:50', '2018-08-28 00:09:57'),
(3, 1, 4, NULL, NULL, 50, 1, 1.5, 25, 10, 7.5, 82.5, '2018-08-08 23:53:25', '2018-08-28 00:34:36'),
(4, 1, 2, NULL, NULL, 6, 1, 9.55, 0, 10, 5.73, 63, '2018-08-28 01:03:48', '2018-08-28 01:07:07'),
(5, 2, 10, NULL, NULL, 2.5, 7, 22, 0, 0, 0, 55, '2018-09-03 22:02:58', '2018-09-20 10:37:41'),
(6, 2, 13, NULL, NULL, 1, 0, 21, 0, 0, 0, 21, '2018-09-03 22:02:58', '2018-09-03 22:02:58'),
(7, 3, 1, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2018-10-23 00:12:49', '2019-12-21 06:41:37'),
(19, 3, 48, NULL, 2, 1, 1, 13, 0, 0, 0, 13, '2019-12-07 08:50:02', '2019-12-21 06:41:37'),
(27, 11, 61, NULL, NULL, 2, 1, 10000, 0, 15, 3000, 23000, '2020-10-24 03:08:14', '2020-10-24 03:28:35'),
(28, 12, 3, NULL, NULL, 10, 1, 250, 0, 0, 0, 2500, '2020-12-09 23:34:01', '2020-12-09 23:34:01'),
(29, 12, 22, NULL, NULL, 5, 1, 1200, 0, 10, 600, 6600, '2020-12-09 23:34:01', '2020-12-09 23:34:01'),
(30, 13, 2, NULL, NULL, 10, 1, 10.43, 0, 15, 15.65, 120, '2021-01-12 06:58:03', '2021-01-12 06:59:15'),
(32, 13, 1, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2021-01-12 06:58:03', '2021-01-12 06:59:15'),
(33, 13, 22, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2021-01-12 06:59:15', '2021-01-12 06:59:15'),
(37, 15, 71, 1, NULL, 1, 1, 2, 0, 0, 0, 2, '2021-05-29 04:53:56', '2021-05-30 08:04:07'),
(38, 15, 1, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2021-05-29 04:53:56', '2021-05-30 08:04:07'),
(39, 16, 5, NULL, NULL, 1, 1, 120, 0, 0, 0, 120, '2022-02-19 06:20:55', '2022-02-19 06:20:55'),
(40, 17, 1, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2022-02-19 06:41:03', '2022-02-19 06:41:03'),
(41, 18, 1, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2022-02-19 06:46:38', '2022-02-19 06:46:38'),
(42, 19, 75, NULL, NULL, 1, 0, 197, 0, 0, 0, 197, '2022-03-08 10:05:21', '2022-03-13 05:38:58'),
(43, 19, 5, NULL, NULL, 1, 1, 121, 0, 0, 0, 121, '2022-03-08 10:05:21', '2022-03-13 05:38:58'),
(44, 19, 3, NULL, NULL, 1, 1, 248, 0, 0, 0, 248, '2022-03-08 10:06:04', '2022-03-13 05:38:58');

-- --------------------------------------------------------

--
-- Table structure for table `product_returns`
--

CREATE TABLE `product_returns` (
  `id` int(10) UNSIGNED NOT NULL,
  `return_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_returns`
--

INSERT INTO `product_returns` (`id`, `return_id`, `product_id`, `product_batch_id`, `variant_id`, `imei_number`, `qty`, `sale_unit_id`, `net_unit_price`, `discount`, `tax_rate`, `tax`, `total`, `created_at`, `updated_at`) VALUES
(23, 11, 13, NULL, NULL, NULL, 1, 0, 21, 0, 0, 0, 21, '2019-12-24 05:20:29', '2019-12-24 05:20:29');

-- --------------------------------------------------------

--
-- Table structure for table `product_sales`
--

CREATE TABLE `product_sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sales`
--

INSERT INTO `product_sales` (`id`, `sale_id`, `product_id`, `product_batch_id`, `variant_id`, `imei_number`, `qty`, `sale_unit_id`, `net_unit_price`, `discount`, `tax_rate`, `tax`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, NULL, NULL, 1, 2, 104.35, 0, 15, 15.65, 120, '2018-08-08 10:36:23', '2018-08-08 11:13:27'),
(3, 1, 5, NULL, NULL, NULL, 2, 1, 115, 10, 0, 0, 230, '2018-08-08 11:13:28', '2018-08-08 11:13:28'),
(4, 2, 1, NULL, NULL, NULL, 10, 1, 420, 0, 10, 420, 4620, '2018-08-08 23:54:53', '2018-08-08 23:54:53'),
(5, 2, 4, NULL, NULL, NULL, 50, 1, 2.1, 0, 0, 0, 105, '2018-08-08 23:54:53', '2018-08-08 23:54:53'),
(6, 2, 2, NULL, NULL, NULL, 3, 2, 109.57, 0, 15, 49.3, 378, '2018-08-08 23:54:53', '2018-08-08 23:54:53'),
(7, 3, 4, NULL, NULL, NULL, 20, 1, 2.1, 0, 0, 0, 42, '2018-08-09 00:32:15', '2018-08-09 00:32:15'),
(8, 3, 5, NULL, NULL, NULL, 5, 1, 126, 0, 0, 0, 630, '2018-08-09 00:32:15', '2018-08-09 00:32:15'),
(9, 3, 3, NULL, NULL, NULL, 1, 1, 225, 0, 0, 0, 225, '2018-08-09 00:32:15', '2018-08-09 00:32:15'),
(10, 4, 1, NULL, NULL, NULL, 2, 1, 400, 0, 10, 80, 880, '2018-08-24 21:48:37', '2018-08-24 21:48:37'),
(12, 6, 13, NULL, NULL, NULL, 1, 0, 18.9, 0, 0, 0, 18.9, '2018-08-26 03:48:36', '2018-08-26 05:48:05'),
(13, 7, 1, NULL, NULL, NULL, 2, 1, 400, 0, 10, 80, 880, '2018-08-27 01:35:45', '2018-08-27 01:35:45'),
(14, 8, 5, NULL, NULL, NULL, 2, 2, 1440, 0, 10, 288, 3168, '2018-09-01 23:39:54', '2018-09-01 23:39:54'),
(15, 9, 4, NULL, NULL, NULL, 10, 1, 2, 0, 0, 0, 20, '2018-09-02 21:33:14', '2018-09-02 21:33:14'),
(16, 10, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2018-09-02 23:01:39', '2018-09-02 23:01:39'),
(17, 11, 22, NULL, NULL, NULL, 5, 1, 1000, 0, 10, 500, 5500, '2018-09-03 04:08:21', '2018-09-03 04:08:21'),
(18, 12, 22, NULL, NULL, NULL, 10, 1, 1050, 0, 10, 1050, 11550, '2018-09-03 04:10:33', '2018-09-03 04:10:33'),
(46, 29, 5, NULL, NULL, NULL, 1, 1, 120, 0, 0, 0, 120, '2018-09-09 03:38:41', '2018-09-09 03:38:41'),
(47, 30, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2018-09-09 22:57:06', '2018-09-20 09:12:38'),
(48, 31, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2018-09-26 03:20:59', '2018-09-26 03:21:25'),
(49, 31, 2, NULL, NULL, NULL, 1, 2, 104.35, 0, 15, 15.65, 120, '2018-09-26 03:20:59', '2018-09-26 03:21:25'),
(50, 32, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2018-10-04 03:55:48', '2018-10-04 03:55:48'),
(51, 33, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2018-10-04 04:00:23', '2018-10-04 04:00:23'),
(57, 37, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2018-10-07 00:46:05', '2018-10-07 00:46:05'),
(58, 38, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2018-10-07 00:47:19', '2018-10-07 00:47:19'),
(61, 40, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2018-10-07 01:13:12', '2018-10-07 01:13:12'),
(62, 41, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2018-10-09 22:16:21', '2018-10-09 22:16:21'),
(63, 41, 13, NULL, NULL, NULL, 1, 0, 21, 0, 0, 0, 21, '2018-10-09 22:16:21', '2018-10-09 22:16:21'),
(64, 42, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2018-10-09 23:34:51', '2018-10-09 23:34:51'),
(65, 43, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2018-10-15 21:34:35', '2018-10-15 21:34:35'),
(78, 55, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2018-10-21 00:53:34', '2018-10-21 00:53:34'),
(80, 57, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2018-10-21 02:26:12', '2018-10-21 02:26:12'),
(81, 57, 13, NULL, NULL, NULL, 2, 0, 21, 0, 0, 0, 42, '2018-10-21 02:26:13', '2018-10-21 02:26:13'),
(82, 58, 22, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2018-10-22 09:27:24', '2018-10-22 09:27:24'),
(83, 58, 5, NULL, NULL, NULL, 1, 1, 120, 0, 0, 0, 120, '2018-10-22 09:27:24', '2018-10-22 09:27:24'),
(101, 73, 25, NULL, NULL, NULL, 3, 1, 1000, 0, 10, 300, 3300, '2018-10-23 01:15:43', '2018-10-23 01:15:43'),
(102, 73, 22, NULL, NULL, NULL, 2, 1, 1000, 0, 10, 200, 2200, '2018-10-23 01:15:44', '2018-10-23 01:15:44'),
(103, 74, 22, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2018-10-23 01:16:44', '2018-10-23 01:16:44'),
(104, 74, 25, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2018-10-23 01:16:44', '2018-10-23 01:16:44'),
(105, 74, 5, NULL, NULL, NULL, 1, 1, 120, 0, 0, 0, 120, '2018-10-23 01:16:44', '2018-10-23 01:16:44'),
(106, 75, 2, NULL, NULL, NULL, 3, 2, 104.35, 0, 15, 46.96, 360, '2018-10-31 23:00:27', '2018-10-31 23:00:27'),
(107, 75, 22, NULL, NULL, NULL, 2, 1, 1000, 0, 10, 200, 2200, '2018-10-31 23:00:27', '2018-10-31 23:00:27'),
(108, 75, 25, NULL, NULL, NULL, 3, 1, 1000, 0, 10, 300, 3300, '2018-10-31 23:00:27', '2018-10-31 23:00:27'),
(109, 75, 1, NULL, NULL, NULL, 2, 1, 400, 0, 10, 80, 880, '2018-10-31 23:00:27', '2018-10-31 23:00:27'),
(110, 75, 5, NULL, NULL, NULL, 2, 1, 120, 0, 0, 0, 240, '2018-10-31 23:00:27', '2018-10-31 23:00:27'),
(111, 76, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2018-10-31 23:01:26', '2018-11-03 03:28:56'),
(112, 76, 22, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2018-10-31 23:01:27', '2018-11-03 03:28:56'),
(113, 76, 13, NULL, NULL, NULL, 4, 0, 21, 0, 0, 0, 84, '2018-10-31 23:01:27', '2018-11-03 03:28:56'),
(117, 79, 1, NULL, NULL, NULL, 4, 1, 400, 0, 10, 160, 1760, '2018-11-05 03:15:17', '2018-11-05 03:15:17'),
(118, 79, 2, NULL, NULL, NULL, 7, 2, 104.35, 0, 15, 109.57, 840, '2018-11-05 03:15:17', '2018-11-05 03:15:17'),
(119, 79, 3, NULL, NULL, NULL, 7, 1, 250, 0, 0, 0, 1750, '2018-11-05 03:15:17', '2018-11-05 03:15:17'),
(120, 79, 4, NULL, NULL, NULL, 7, 1, 2, 0, 0, 0, 14, '2018-11-05 03:15:17', '2018-11-05 03:15:17'),
(121, 79, 22, NULL, NULL, NULL, 8, 1, 1000, 0, 10, 800, 8800, '2018-11-05 03:15:17', '2018-11-05 03:15:17'),
(122, 79, 13, NULL, NULL, NULL, 10, 0, 21, 0, 0, 0, 210, '2018-11-05 03:15:17', '2018-11-05 03:15:17'),
(123, 79, 5, NULL, NULL, NULL, 9, 1, 120, 0, 0, 0, 1080, '2018-11-05 03:15:17', '2018-11-05 03:15:17'),
(124, 80, 2, NULL, NULL, NULL, 2, 2, 104.35, 0, 15, 31.3, 240, '2018-11-05 03:19:58', '2018-11-05 03:19:58'),
(125, 80, 3, NULL, NULL, NULL, 2, 1, 250, 0, 0, 0, 500, '2018-11-05 03:19:58', '2018-11-05 03:19:58'),
(126, 80, 1, NULL, NULL, NULL, 4, 1, 400, 0, 10, 160, 1760, '2018-11-05 03:19:58', '2018-11-05 03:19:58'),
(132, 86, 22, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2018-11-05 03:59:48', '2018-11-05 03:59:48'),
(134, 88, 22, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2018-11-05 04:02:58', '2018-11-05 04:02:58'),
(142, 94, 2, NULL, NULL, NULL, 1, 2, 104.35, 0, 15, 15.65, 120, '2018-11-26 08:05:34', '2018-11-26 08:05:34'),
(143, 95, 5, NULL, NULL, NULL, 3, 1, 120, 0, 0, 0, 360, '2018-11-27 03:36:08', '2018-11-27 03:36:08'),
(144, 95, 5, NULL, NULL, NULL, 3, 1, 120, 0, 0, 0, 360, '2018-11-27 03:36:08', '2018-11-27 03:36:08'),
(145, 96, 2, NULL, NULL, NULL, 1, 2, 104.35, 0, 15, 15.65, 120, '2018-11-28 01:15:09', '2018-11-28 01:15:09'),
(146, 97, 2, NULL, NULL, NULL, 2, 2, 104.35, 0, 15, 31.3, 240, '2018-12-01 00:05:18', '2018-12-01 00:05:18'),
(147, 97, 10, NULL, NULL, NULL, 1, 7, 22, 0, 0, 0, 22, '2018-12-01 00:05:18', '2018-12-01 00:05:18'),
(148, 98, 30, NULL, NULL, NULL, 2, 1, 100, 0, 0, 0, 200, '2018-12-04 23:35:58', '2018-12-04 23:35:58'),
(149, 98, 31, NULL, NULL, NULL, 2, 1, 300, 0, 0, 0, 600, '2018-12-04 23:35:58', '2018-12-04 23:35:58'),
(150, 99, 30, NULL, NULL, NULL, 2, 1, 100, 0, 0, 0, 200, '2018-12-04 23:37:19', '2018-12-04 23:37:19'),
(151, 99, 31, NULL, NULL, NULL, 2, 1, 300, 0, 0, 0, 600, '2018-12-04 23:37:20', '2018-12-04 23:37:20'),
(153, 101, 30, NULL, NULL, NULL, 1, 1, 100, 0, 0, 0, 100, '2018-12-08 00:20:26', '2018-12-08 00:20:26'),
(155, 103, 2, NULL, NULL, NULL, 1, 2, 104.35, 0, 15, 15.65, 120, '2018-12-23 22:58:32', '2018-12-23 22:58:32'),
(156, 104, 33, NULL, NULL, NULL, 4, 1, 2, 0, 0, 0, 8, '2018-12-24 03:15:27', '2018-12-24 21:55:23'),
(157, 104, 26, NULL, NULL, NULL, 2, 0, 1250, 0, 0, 0, 2500, '2018-12-24 21:47:54', '2018-12-24 21:55:23'),
(158, 105, 13, NULL, NULL, NULL, 1, 0, 21, 0, 0, 0, 21, '2018-12-31 23:45:38', '2018-12-31 23:45:38'),
(159, 106, 2, NULL, NULL, NULL, 1, 2, 104.35, 0, 15, 15.65, 120, '2019-01-01 03:10:40', '2019-01-01 03:10:40'),
(160, 106, 3, NULL, NULL, NULL, 2, 1, 250, 0, 0, 0, 500, '2019-01-01 03:10:40', '2019-01-01 03:10:40'),
(161, 106, 5, NULL, NULL, NULL, 2, 1, 120, 0, 0, 0, 240, '2019-01-01 03:10:40', '2019-01-01 03:10:40'),
(162, 107, 3, NULL, NULL, NULL, 2, 1, 250, 0, 0, 0, 500, '2019-01-03 00:56:27', '2019-01-03 00:56:27'),
(163, 107, 5, NULL, NULL, NULL, 2, 1, 120, 0, 0, 0, 240, '2019-01-03 00:56:27', '2019-01-03 00:56:27'),
(164, 107, 22, NULL, NULL, NULL, 2, 1, 1000, 0, 10, 200, 2200, '2019-01-03 00:56:27', '2019-01-03 00:56:27'),
(165, 107, 25, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2019-01-03 00:56:27', '2019-01-03 00:56:27'),
(166, 107, 1, NULL, NULL, NULL, 2, 1, 400, 0, 10, 80, 880, '2019-01-03 00:56:27', '2019-01-03 00:56:27'),
(167, 107, 2, NULL, NULL, NULL, 1, 2, 104.35, 0, 15, 15.65, 120, '2019-01-03 00:56:27', '2019-01-03 00:56:27'),
(168, 108, 2, NULL, NULL, NULL, 1, 2, 104.35, 0, 15, 15.65, 120, '2019-01-20 09:58:24', '2019-01-20 09:58:24'),
(169, 109, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2019-01-29 04:14:43', '2019-01-29 04:14:43'),
(170, 109, 30, NULL, NULL, NULL, 1, 1, 100, 0, 0, 0, 100, '2019-01-29 04:14:43', '2019-01-29 04:14:43'),
(171, 110, 31, NULL, NULL, NULL, 2, 1, 300, 0, 0, 0, 600, '2019-01-29 05:50:41', '2019-01-29 05:50:41'),
(172, 110, 25, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2019-01-29 05:50:41', '2019-01-29 05:50:41'),
(173, 111, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2019-01-31 05:08:39', '2019-01-31 05:08:39'),
(174, 111, 13, NULL, NULL, NULL, 1, 0, 21, 0, 0, 0, 21, '2019-01-31 05:08:39', '2019-01-31 05:08:39'),
(175, 112, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2019-02-02 04:40:45', '2019-02-02 04:40:45'),
(176, 113, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2019-02-02 05:41:17', '2019-02-02 05:41:17'),
(177, 113, 30, NULL, NULL, NULL, 1, 1, 100, 0, 0, 0, 100, '2019-02-02 05:41:17', '2019-02-02 05:41:17'),
(178, 114, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2019-02-05 09:04:45', '2019-02-05 09:04:45'),
(183, 118, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2019-02-07 05:15:42', '2019-02-07 05:15:42'),
(185, 120, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2019-02-07 05:40:37', '2019-02-07 05:40:37'),
(186, 121, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2019-02-09 04:48:14', '2019-02-09 04:48:14'),
(187, 121, 2, NULL, NULL, NULL, 1, 2, 104.35, 0, 15, 15.65, 120, '2019-02-09 04:48:14', '2019-02-09 04:48:14'),
(188, 121, 4, NULL, NULL, NULL, 10, 1, 2, 0, 0, 0, 20, '2019-02-09 04:48:15', '2019-02-09 04:48:15'),
(189, 121, 13, NULL, NULL, NULL, 2, 0, 21, 0, 0, 0, 42, '2019-02-09 04:48:15', '2019-02-09 04:48:15'),
(190, 121, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2019-02-09 04:48:15', '2019-02-09 04:48:15'),
(191, 121, 31, NULL, NULL, NULL, 1, 1, 300, 0, 0, 0, 300, '2019-02-09 04:48:15', '2019-02-09 04:48:15'),
(192, 121, 30, NULL, NULL, NULL, 1, 1, 100, 0, 0, 0, 100, '2019-02-09 04:48:15', '2019-02-09 04:48:15'),
(194, 123, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2019-02-19 08:32:14', '2019-02-19 08:32:14'),
(198, 127, 31, NULL, NULL, NULL, 1, 1, 300, 0, 0, 0, 300, '2019-03-03 04:40:10', '2019-03-03 04:40:10'),
(199, 127, 25, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2019-03-03 04:40:10', '2019-03-03 04:40:10'),
(200, 127, 22, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2019-03-03 04:40:10', '2019-03-03 04:40:10'),
(201, 128, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2019-04-04 03:55:55', '2019-04-04 03:55:55'),
(202, 128, 2, NULL, NULL, NULL, 1, 2, 104.35, 0, 15, 15.65, 120, '2019-04-04 03:55:55', '2019-04-04 03:55:55'),
(203, 129, 5, NULL, NULL, NULL, 2, 1, 120, 0, 0, 0, 240, '2019-04-04 03:59:37', '2019-04-11 04:50:16'),
(204, 130, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2019-04-21 06:21:24', '2019-04-21 06:21:24'),
(205, 130, 2, NULL, NULL, NULL, 1, 2, 125.22, 0, 15, 18.78, 144, '2019-04-21 06:21:24', '2019-04-21 06:21:24'),
(206, 130, 4, NULL, NULL, NULL, 1, 1, 2, 0, 0, 0, 2, '2019-04-21 06:21:24', '2019-04-21 06:21:24'),
(207, 131, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2019-05-28 04:32:29', '2019-05-28 04:32:29'),
(208, 131, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2019-05-28 04:32:29', '2019-05-28 04:32:29'),
(209, 131, 25, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2019-05-28 04:32:29', '2019-05-28 04:32:29'),
(210, 131, 22, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2019-05-28 04:32:29', '2019-05-28 04:32:29'),
(211, 132, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2019-06-13 04:16:37', '2019-06-13 04:16:37'),
(212, 132, 30, NULL, NULL, NULL, 1, 1, 100, 0, 0, 0, 100, '2019-06-13 04:16:37', '2019-06-13 04:16:37'),
(213, 132, 31, NULL, NULL, NULL, 1, 1, 300, 0, 0, 0, 300, '2019-06-13 04:16:37', '2019-06-13 04:16:37'),
(214, 133, 3, NULL, NULL, NULL, 2, 1, 250, 0, 0, 0, 500, '2019-06-13 04:17:51', '2019-06-13 04:17:51'),
(215, 133, 25, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2019-06-13 04:17:52', '2019-06-13 04:17:52'),
(216, 133, 22, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2019-06-13 04:17:52', '2019-06-13 04:17:52'),
(217, 134, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2019-10-19 09:30:28', '2019-10-19 09:30:28'),
(218, 134, 22, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2019-10-19 09:30:28', '2019-10-19 09:30:28'),
(219, 134, 25, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2019-10-19 09:30:28', '2019-10-19 09:30:28'),
(220, 134, 31, NULL, NULL, NULL, 1, 1, 300, 0, 0, 0, 300, '2019-10-19 09:30:28', '2019-10-19 09:30:28'),
(224, 138, 5, NULL, NULL, NULL, 1, 1, 120, 0, 0, 0, 120, '2019-10-31 06:29:37', '2019-10-31 06:29:37'),
(225, 139, 2, NULL, NULL, NULL, 2, 2, 125.22, 0, 15, 37.57, 288, '2019-11-03 05:40:44', '2019-11-03 05:40:44'),
(226, 139, 4, NULL, NULL, NULL, 100, 1, 2, 0, 0, 0, 200, '2019-11-03 05:40:44', '2019-11-03 05:40:44'),
(236, 144, 22, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2019-11-09 13:41:31', '2019-11-09 13:41:31'),
(237, 144, 5, NULL, NULL, NULL, 1, 1, 120, 0, 0, 0, 120, '2019-11-09 13:41:31', '2019-11-09 13:41:31'),
(241, 147, 22, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2019-11-11 04:40:08', '2019-11-11 04:40:08'),
(242, 147, 25, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2019-11-11 04:40:08', '2019-11-11 04:40:08'),
(243, 147, 4, NULL, NULL, NULL, 10, 1, 2, 0, 0, 0, 20, '2019-11-11 04:40:08', '2019-11-11 04:40:08'),
(282, 172, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2019-12-03 09:46:31', '2019-12-03 09:46:31'),
(283, 173, 3, NULL, NULL, NULL, 1, 1, 225, 0, 0, 0, 225, '2019-12-04 17:19:40', '2019-12-04 17:19:40'),
(284, 173, 1, NULL, NULL, NULL, 1, 1, 360, 0, 10, 36, 396, '2019-12-04 17:19:40', '2019-12-04 17:19:40'),
(306, 187, 2, NULL, NULL, NULL, 2, 2, 125.22, 0, 15, 37.57, 288, '2019-12-22 04:40:58', '2019-12-22 04:40:58'),
(308, 190, 22, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2019-12-23 06:59:46', '2019-12-23 06:59:46'),
(312, 193, 25, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2020-01-01 08:20:28', '2020-01-01 08:20:28'),
(313, 194, 1, NULL, NULL, NULL, 2, 1, 400, 0, 10, 80, 880, '2020-01-02 10:39:47', '2020-01-02 10:39:47'),
(314, 194, 2, NULL, NULL, NULL, 1, 1, 10.43, 0, 15, 1.57, 12, '2020-01-02 10:39:47', '2020-01-02 10:39:47'),
(323, 201, 5, NULL, NULL, NULL, 1, 1, 120, 0, 0, 0, 120, '2020-02-03 09:52:56', '2020-02-03 09:52:56'),
(324, 202, 25, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2020-02-04 16:58:53', '2020-02-04 16:58:53'),
(325, 202, 31, NULL, NULL, NULL, 1, 1, 300, 0, 0, 0, 300, '2020-02-04 16:58:53', '2020-02-04 16:58:53'),
(326, 203, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2020-03-02 05:54:14', '2020-03-02 05:54:14'),
(327, 203, 30, NULL, NULL, NULL, 1, 1, 100, 0, 0, 0, 100, '2020-03-02 05:54:14', '2020-03-02 05:54:14'),
(328, 204, 4, NULL, NULL, NULL, 20, 1, 2, 0, 0, 0, 40, '2020-03-02 05:57:41', '2020-03-02 05:57:41'),
(329, 205, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2020-03-11 10:46:42', '2020-03-11 10:46:42'),
(330, 206, 5, NULL, NULL, NULL, 1, 1, 120, 0, 0, 0, 120, '2020-03-11 10:52:30', '2020-03-11 10:54:04'),
(331, 207, 30, NULL, NULL, NULL, 2, 1, 100, 0, 0, 0, 200, '2020-04-06 13:40:24', '2020-04-06 13:41:11'),
(332, 207, 31, NULL, NULL, NULL, 1, 1, 300, 0, 0, 0, 300, '2020-04-06 13:40:24', '2020-04-06 13:41:11'),
(333, 207, 2, NULL, NULL, NULL, 1, 2, 125.22, 0, 15, 18.78, 144, '2020-04-06 13:41:11', '2020-04-06 13:41:11'),
(334, 208, 25, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2020-05-06 16:59:50', '2020-05-06 16:59:50'),
(335, 208, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2020-05-06 16:59:50', '2020-05-06 16:59:50'),
(336, 209, 5, NULL, NULL, NULL, 1, 1, 120, 0, 0, 0, 120, '2020-06-09 06:42:48', '2020-06-09 06:42:48'),
(337, 209, 25, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2020-06-09 06:42:48', '2020-06-09 06:42:48'),
(340, 212, 1, NULL, NULL, NULL, 1, 1, 350, 0, 10, 35, 385, '2020-07-03 12:39:14', '2020-07-03 12:39:14'),
(341, 212, 25, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2020-07-03 12:39:14', '2020-07-03 12:39:14'),
(342, 212, 22, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2020-07-03 12:39:14', '2020-07-03 12:39:14'),
(343, 213, 48, NULL, 2, NULL, 1, 1, 13, 0, 0, 0, 13, '2020-07-12 15:51:53', '2020-07-12 15:51:53'),
(344, 214, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2020-07-14 05:53:41', '2020-07-14 05:53:41'),
(347, 217, 1, NULL, NULL, NULL, 1, 1, 350, 0, 10, 35, 385, '2020-07-27 14:38:08', '2020-07-27 14:38:08'),
(348, 218, 1, NULL, NULL, NULL, 1, 1, 350, 0, 10, 35, 385, '2020-07-27 14:40:24', '2020-07-27 14:40:24'),
(349, 219, 1, NULL, NULL, NULL, 1, 1, 350, 0, 10, 35, 385, '2020-07-27 14:46:45', '2020-07-27 14:46:45'),
(350, 220, 31, NULL, NULL, NULL, 2, 1, 300, 0, 0, 0, 600, '2020-08-12 12:28:04', '2020-08-12 12:28:04'),
(351, 220, 33, NULL, NULL, NULL, 3, 1, 20, 0, 0, 0, 60, '2020-08-12 12:28:04', '2020-08-12 12:28:04'),
(352, 220, 30, NULL, NULL, NULL, 1, 1, 100, 0, 0, 0, 100, '2020-08-12 12:28:04', '2020-08-12 12:28:04'),
(353, 221, 25, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2020-08-12 12:30:35', '2020-08-12 12:30:35'),
(354, 222, 61, NULL, NULL, NULL, 2, 1, 10000, 0, 15, 3000, 23000, '2020-08-16 16:04:24', '2020-08-16 16:04:24'),
(355, 223, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2020-08-16 16:05:23', '2020-08-16 16:05:23'),
(356, 224, 1, NULL, NULL, NULL, 3, 1, 390, 30, 10, 117, 1287, '2020-08-26 14:01:39', '2020-08-26 14:01:39'),
(362, 230, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2020-10-17 15:28:52', '2020-10-17 15:28:52'),
(363, 231, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2020-10-18 05:13:33', '2020-10-18 05:13:33'),
(364, 232, 30, NULL, NULL, NULL, 1, 1, 100, 0, 0, 0, 100, '2020-10-22 07:30:14', '2020-10-22 07:30:14'),
(365, 233, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2020-10-22 07:56:04', '2020-10-22 07:56:04'),
(366, 234, 61, NULL, NULL, NULL, 1, 1, 10000, 0, 15, 1500, 11500, '2020-10-24 01:05:06', '2020-10-24 01:05:06'),
(367, 235, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2020-10-24 01:07:52', '2020-10-24 01:07:52'),
(369, 237, 25, NULL, NULL, NULL, 2, 1, 1000, 0, 10, 200, 2200, '2020-10-24 09:46:01', '2020-10-24 09:46:01'),
(370, 237, 22, NULL, NULL, NULL, 2, 1, 1000, 0, 10, 200, 2200, '2020-10-24 09:46:01', '2020-10-24 09:46:01'),
(371, 237, 61, NULL, NULL, NULL, 5, 1, 10000, 0, 15, 7500, 57500, '2020-10-24 09:46:01', '2020-10-24 09:46:01'),
(373, 239, 60, NULL, 9, NULL, 1, 1, 2, 0, 0, 0, 2, '2020-10-26 23:40:02', '2020-10-26 23:40:02'),
(374, 240, 60, NULL, 9, NULL, 2, 1, 3, 0, 0, 0, 6, '2020-10-26 23:42:06', '2020-10-26 23:42:06'),
(375, 241, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2020-10-27 00:32:00', '2020-10-27 00:32:00'),
(376, 242, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2020-10-29 01:30:30', '2020-10-29 01:30:30'),
(377, 243, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2020-11-01 01:21:12', '2020-11-01 01:21:12'),
(380, 245, 1, NULL, NULL, NULL, 2, 1, 400, 0, 10, 80, 880, '2020-11-01 01:42:23', '2020-11-01 01:42:23'),
(381, 245, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2020-11-01 01:42:23', '2020-11-01 01:42:23'),
(382, 246, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2020-11-01 01:50:18', '2020-11-02 10:39:17'),
(386, 250, 1, NULL, NULL, NULL, 1, 1, 344, 0, 10, 34.4, 378.4, '2020-11-06 07:30:41', '2020-11-06 07:30:41'),
(387, 251, 1, NULL, NULL, NULL, 1, 1, 344, 0, 10, 34.4, 378.4, '2020-11-09 07:15:24', '2020-11-09 07:15:24'),
(388, 251, 3, NULL, NULL, NULL, 1, 1, 232.2, 0, 0, 0, 232.2, '2020-11-09 07:15:24', '2020-11-09 07:15:24'),
(389, 252, 3, NULL, NULL, NULL, 1, 1, 229.5, 0, 0, 0, 229.5, '2020-11-10 23:58:58', '2020-11-10 23:58:58'),
(390, 253, 3, NULL, NULL, NULL, 1, 1, 212.5, 0, 0, 0, 212.5, '2020-11-14 00:47:36', '2020-11-14 00:47:36'),
(391, 253, 31, NULL, NULL, NULL, 1, 1, 255, 0, 0, 0, 255, '2020-11-14 00:47:36', '2020-11-14 00:47:36'),
(392, 253, 61, NULL, NULL, NULL, 1, 1, 8500, 0, 15, 1275, 9775, '2020-11-14 00:47:36', '2020-11-14 00:47:36'),
(395, 256, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2020-11-17 00:47:48', '2020-11-17 00:47:48'),
(396, 256, 3, NULL, NULL, NULL, 1, 1, 250, 0, 10, 25, 275, '2020-11-17 00:47:48', '2020-11-17 00:47:48'),
(397, 257, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2020-11-17 01:09:19', '2020-11-17 01:09:19'),
(398, 258, 61, NULL, NULL, NULL, 3, 1, 10000, 0, 15, 4500, 34500, '2020-11-18 00:52:39', '2020-11-18 00:52:39'),
(402, 262, 61, NULL, NULL, NULL, 2, 1, 10000, 0, 15, 3000, 23000, '2020-11-28 23:21:30', '2020-11-28 23:21:30'),
(403, 263, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2020-12-08 03:39:57', '2020-12-08 03:39:57'),
(416, 270, 2, NULL, NULL, NULL, 1, 3, 250.43, 0, 15, 37.57, 288, '2021-01-11 07:45:35', '2021-01-11 07:58:44'),
(419, 270, 22, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2021-01-11 07:54:04', '2021-01-11 07:58:44'),
(420, 271, 2, NULL, NULL, NULL, 1, 2, 125.22, 0, 15, 18.78, 144, '2021-01-11 08:16:25', '2021-01-11 08:16:25'),
(421, 271, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2021-01-11 08:16:25', '2021-01-11 08:16:25'),
(422, 271, 1, NULL, NULL, NULL, 2, 1, 400, 0, 10, 80, 880, '2021-01-11 08:16:25', '2021-01-11 08:16:25'),
(429, 274, 2, NULL, NULL, NULL, 10, 1, 10.43, 0, 15, 15.65, 120, '2021-01-13 01:02:43', '2021-01-13 01:02:43'),
(430, 274, 30, NULL, NULL, NULL, 1, 1, 100, 0, 0, 0, 100, '2021-01-13 01:02:43', '2021-01-13 01:02:43'),
(431, 274, 3, NULL, NULL, NULL, 2, 1, 250, 0, 0, 0, 500, '2021-01-13 01:02:43', '2021-01-13 01:02:43'),
(432, 274, 1, NULL, NULL, NULL, 2, 1, 380, 40, 10, 76, 836, '2021-01-13 01:02:43', '2021-01-13 01:02:43'),
(433, 275, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2021-02-01 08:37:48', '2021-02-01 08:37:48'),
(437, 277, 32, NULL, NULL, NULL, 1, 1, 10, 0, 0, 0, 10, '2021-02-16 01:09:48', '2021-02-16 01:09:48'),
(438, 277, 48, NULL, 5, NULL, 1, 1, 53, 0, 0, 0, 53, '2021-02-16 01:09:48', '2021-02-16 01:09:48'),
(439, 277, 48, NULL, 2, NULL, 1, 1, 13, 0, 0, 0, 13, '2021-02-16 01:09:48', '2021-02-16 01:09:48'),
(440, 277, 48, NULL, 3, NULL, 1, 1, 3, 0, 0, 0, 3, '2021-02-16 01:09:48', '2021-02-16 01:09:48'),
(441, 277, 61, NULL, NULL, NULL, 1, 1, 10000, 0, 15, 1500, 11500, '2021-02-16 01:09:48', '2021-02-16 01:09:48'),
(442, 277, 31, NULL, NULL, NULL, 1, 1, 300, 0, 0, 0, 300, '2021-02-16 01:09:48', '2021-02-16 01:09:48'),
(443, 277, 30, NULL, NULL, NULL, 1, 1, 100, 0, 0, 0, 100, '2021-02-16 01:09:48', '2021-02-16 01:09:48'),
(444, 277, 25, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2021-02-16 01:09:48', '2021-02-16 01:09:48'),
(445, 277, 22, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2021-02-16 01:09:48', '2021-02-16 01:09:48'),
(446, 277, 13, NULL, NULL, NULL, 1, 0, 21, 0, 0, 0, 21, '2021-02-16 01:09:48', '2021-02-16 01:09:48'),
(447, 277, 5, NULL, NULL, NULL, 1, 1, 120, 0, 0, 0, 120, '2021-02-16 01:09:48', '2021-02-16 01:09:48'),
(448, 277, 4, NULL, NULL, NULL, 1, 1, 2, 0, 0, 0, 2, '2021-02-16 01:09:48', '2021-02-16 01:09:48'),
(449, 277, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2021-02-16 01:09:48', '2021-02-16 01:09:48'),
(450, 277, 2, NULL, NULL, NULL, 1, 2, 125.22, 0, 15, 18.78, 144, '2021-02-16 01:09:48', '2021-02-16 01:09:48'),
(451, 277, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2021-02-16 01:09:48', '2021-02-16 01:09:48'),
(452, 278, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2021-02-17 01:32:38', '2021-02-17 01:32:38'),
(453, 278, 61, NULL, NULL, NULL, 2, 1, 10000, 0, 15, 3000, 23000, '2021-02-17 01:32:38', '2021-02-17 01:32:38'),
(454, 278, 22, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2021-02-17 01:32:38', '2021-02-17 01:32:38'),
(455, 278, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2021-02-17 01:32:38', '2021-02-17 01:32:38'),
(456, 278, 5, NULL, NULL, NULL, 1, 1, 120, 0, 0, 0, 120, '2021-02-17 01:32:38', '2021-02-17 01:32:38'),
(457, 279, 71, 1, NULL, NULL, 2, 1, 2, 0, 0, 0, 4, '2021-03-11 07:40:34', '2021-03-11 07:40:34'),
(458, 280, 71, 2, NULL, NULL, 1, 1, 2, 0, 0, 0, 2, '2021-03-16 22:14:11', '2021-03-16 22:14:11'),
(459, 282, 71, 1, NULL, NULL, 1, 1, 2, 0, 0, 0, 2, '2021-03-17 23:47:29', '2021-03-20 04:59:57'),
(468, 288, 5, NULL, NULL, NULL, 1, 1, 120, 0, 0, 0, 120, '2021-04-12 07:40:46', '2021-04-12 07:40:46'),
(473, 290, 5, NULL, NULL, NULL, 1, 1, 120, 0, 0, 0, 120, '2021-05-24 13:45:58', '2021-05-24 13:45:58'),
(478, 294, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2021-06-01 06:35:30', '2021-06-01 06:35:30'),
(479, 295, 71, 3, NULL, NULL, 1, 1, 2, 0, 0, 0, 2, '2021-06-01 09:22:09', '2021-06-01 09:22:09'),
(480, 296, 71, 1, NULL, NULL, 1, 1, 2, 0, 0, 0, 2, '2021-06-01 09:46:24', '2021-06-01 09:46:24'),
(481, 297, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2021-06-01 13:41:50', '2021-06-01 13:41:50'),
(482, 298, 71, 3, NULL, NULL, 1, 1, 2, 0, 0, 0, 2, '2021-06-01 13:55:47', '2021-06-01 13:55:47'),
(483, 299, 22, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2021-06-16 04:53:25', '2021-06-16 04:53:25'),
(484, 300, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2021-06-16 05:10:33', '2021-06-16 05:10:33'),
(485, 301, 22, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2021-06-16 05:11:11', '2021-06-16 05:11:11'),
(486, 301, 25, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2021-06-16 05:11:11', '2021-06-16 05:11:11'),
(487, 302, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2021-06-16 14:04:52', '2021-06-16 14:04:52'),
(488, 303, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2021-06-16 14:05:43', '2021-06-16 14:05:43'),
(489, 304, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2021-06-16 14:06:34', '2021-06-16 14:06:34'),
(490, 305, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2021-06-16 14:28:42', '2021-06-16 14:28:42'),
(491, 306, 22, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2021-06-17 05:55:53', '2021-06-17 05:55:53'),
(492, 307, 22, NULL, NULL, NULL, 2, 1, 1000, 0, 10, 200, 2200, '2021-06-17 06:23:49', '2021-06-17 08:59:33'),
(493, 308, 2, NULL, NULL, NULL, 2, 2, 125.22, 0, 15, 37.57, 288, '2021-06-18 14:31:27', '2021-06-18 14:31:27'),
(494, 308, 1, NULL, NULL, NULL, 3, 1, 400, 0, 10, 120, 1320, '2021-06-18 14:31:27', '2021-06-18 14:31:27'),
(495, 309, 71, 2, NULL, NULL, 1, 1, 2, 0, 0, 0, 2, '2021-06-18 14:32:54', '2021-06-18 14:32:54'),
(496, 310, 71, NULL, NULL, NULL, 1, 1, 2, 0, 0, 0, 2, '2021-06-19 04:51:21', '2021-06-19 04:51:21'),
(497, 310, 5, NULL, NULL, NULL, 1, 1, 120, 0, 0, 0, 120, '2021-06-19 04:51:21', '2021-06-19 04:51:21'),
(498, 310, 4, NULL, NULL, NULL, 1, 1, 2, 0, 0, 0, 2, '2021-06-19 04:51:21', '2021-06-19 04:51:21'),
(499, 310, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2021-06-19 04:51:21', '2021-06-19 04:51:21'),
(500, 310, 2, NULL, NULL, NULL, 1, 2, 125.22, 0, 15, 18.78, 144, '2021-06-19 04:51:21', '2021-06-19 04:51:21'),
(501, 310, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2021-06-19 04:51:21', '2021-06-19 04:51:21'),
(502, 311, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2021-06-19 04:53:44', '2021-06-19 04:53:44'),
(503, 312, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2021-06-19 05:02:31', '2021-06-19 05:02:31'),
(504, 313, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2021-06-19 05:06:28', '2021-06-19 05:06:28'),
(505, 314, 22, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2021-06-27 06:42:47', '2021-06-27 06:42:47'),
(508, 317, 74, NULL, NULL, NULL, 1, 0, 18, 0, 0, 0, 18, '2021-07-07 04:34:55', '2021-07-07 04:34:55'),
(536, 325, 26, NULL, NULL, NULL, 2, 0, 1200, 0, 0, 0, 2400, '2021-08-14 15:28:05', '2021-08-14 15:34:27'),
(547, 333, 71, NULL, NULL, NULL, 1, 1, 2, 0, 0, 0, 2, '2021-09-21 07:07:22', '2021-09-21 07:07:22'),
(548, 334, 5, NULL, NULL, NULL, 1, 1, 120, 0, 0, 0, 120, '2021-09-21 09:50:20', '2021-09-21 09:50:20'),
(549, 335, 10, NULL, NULL, NULL, 0.5, 7, 22, 0, 0, 0, 11, '2021-09-23 08:47:04', '2021-09-23 08:47:04'),
(550, 336, 5, NULL, NULL, NULL, 1, 1, 120, 0, 0, 0, 120, '2021-10-03 11:18:29', '2021-10-03 11:18:29'),
(551, 336, 22, NULL, NULL, '1103', 1, 1, 1000, 0, 10, 100, 1100, '2021-10-03 11:18:29', '2021-10-03 11:18:29'),
(553, 338, 22, NULL, NULL, '11103', 1, 1, 1000, 0, 10, 100, 1100, '2021-10-03 11:44:04', '2021-10-03 11:44:04'),
(555, 340, 22, NULL, NULL, '11104', 1, 1, 1000, 0, 10, 100, 1100, '2021-10-07 08:52:29', '2021-10-07 08:52:29'),
(556, 341, 22, NULL, NULL, '91101', 1, 1, 1000, 0, 10, 100, 1100, '2021-10-07 09:38:40', '2021-10-07 09:38:40'),
(557, 342, 25, NULL, NULL, '99901,99902', 2, 1, 1000, 0, 10, 200, 2200, '2021-10-09 06:12:42', '2021-10-09 10:22:39'),
(558, 342, 5, NULL, NULL, NULL, 1, 1, 120, 0, 0, 0, 120, '2021-10-09 10:22:39', '2021-10-09 10:22:39'),
(559, 343, 22, NULL, NULL, '1105,91102', 2, 1, 1000, 0, 10, 200, 2200, '2021-10-09 10:32:32', '2021-10-09 10:32:32'),
(564, 348, 22, NULL, NULL, '11101', 1, 1, 1000, 0, 10, 100, 1100, '2021-10-14 09:58:20', '2021-10-14 09:58:20'),
(565, 349, 5, NULL, NULL, NULL, 1, 1, 102, 0, 0, 0, 102, '2021-10-20 07:12:09', '2021-10-20 07:12:09'),
(568, 353, 1, NULL, NULL, NULL, 1, 1, 340, 0, 10, 34, 374, '2021-11-14 07:39:29', '2021-11-14 07:39:29'),
(569, 354, 22, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2021-11-15 06:03:09', '2021-11-15 06:03:09'),
(570, 354, 71, 1, NULL, NULL, 1, 1, 2, 0, 0, 0, 2, '2021-11-15 06:03:09', '2021-11-15 06:03:09'),
(571, 354, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2021-11-15 06:03:09', '2021-11-15 06:03:09'),
(572, 355, 25, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2021-11-24 12:28:58', '2021-11-24 12:28:58'),
(573, 355, 22, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2021-11-24 12:28:58', '2021-11-24 12:28:58'),
(574, 355, 13, NULL, NULL, NULL, 1, 0, 21, 0, 0, 0, 21, '2021-11-24 12:28:58', '2021-11-24 12:28:58'),
(575, 355, 3, NULL, NULL, NULL, 2, 1, 250, 0, 0, 0, 500, '2021-11-24 12:28:58', '2021-11-24 12:28:58'),
(576, 355, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2021-11-24 12:28:58', '2021-11-24 12:28:58'),
(577, 356, 48, NULL, 2, NULL, 1, 1, 13, 0, 0, 0, 13, '2021-12-07 13:09:32', '2021-12-07 13:09:32'),
(578, 356, 5, NULL, NULL, NULL, 1, 1, 120, 0, 0, 0, 120, '2021-12-07 13:09:32', '2021-12-07 13:09:32'),
(579, 356, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2021-12-07 13:09:32', '2021-12-07 13:09:32'),
(584, 360, 2, NULL, NULL, NULL, 2, 1, 10.43, 0, 15, 3.13, 24, '2021-12-22 13:03:13', '2022-01-30 07:37:54'),
(587, 362, 72, NULL, NULL, NULL, 2, 1, 4.25, 0, 0, 0, 8.5, '2022-02-03 09:59:31', '2022-02-03 09:59:31'),
(588, 363, 5, NULL, NULL, NULL, 2, 1, 118, 0, 0, 0, 236, '2022-02-03 13:05:47', '2022-03-08 08:25:13'),
(589, 363, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2022-02-03 13:05:47', '2022-03-08 08:25:13'),
(590, 364, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2022-02-05 11:45:26', '2022-02-05 13:31:58'),
(591, 365, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2022-02-05 11:46:16', '2022-02-05 13:31:09'),
(598, 372, 5, NULL, NULL, NULL, 1, 1, 120, 0, 0, 0, 120, '2022-02-19 06:08:15', '2022-02-20 15:15:54'),
(603, 376, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2022-02-20 14:36:38', '2022-02-20 15:15:23'),
(604, 377, 3, NULL, NULL, NULL, 2, 1, 250, 0, 0, 0, 500, '2022-02-27 05:59:05', '2022-03-05 06:16:22'),
(608, 377, 5, NULL, NULL, NULL, 1, 1, 120, 0, 0, 0, 120, '2022-03-05 06:12:38', '2022-03-05 06:16:22'),
(609, 363, 13, NULL, NULL, NULL, 1, 0, 15, 0, 0, 0, 15, '2022-03-08 08:25:13', '2022-03-08 08:25:13'),
(610, 363, 75, NULL, NULL, NULL, 1, 0, 20, 0, 0, 0, 20, '2022-03-08 08:25:13', '2022-03-08 08:25:13'),
(611, 379, 22, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2022-03-09 05:59:01', '2022-03-09 05:59:01'),
(612, 379, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2022-03-09 05:59:01', '2022-03-09 05:59:01'),
(613, 379, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2022-03-09 05:59:01', '2022-03-09 05:59:01'),
(614, 380, 1, NULL, NULL, NULL, 1, 1, 400, 0, 10, 40, 440, '2022-03-12 14:20:27', '2022-03-13 05:37:35'),
(615, 381, 3, NULL, NULL, NULL, 1, 1, 250, 0, 0, 0, 250, '2022-03-12 14:24:52', '2022-03-12 14:25:35'),
(616, 381, 5, NULL, NULL, NULL, 1, 1, 110, 0, 0, 0, 110, '2022-03-12 14:25:35', '2022-03-12 14:25:35'),
(617, 382, 5, NULL, NULL, NULL, 1, 1, 120, 0, 0, 0, 120, '2022-04-24 05:01:44', '2022-04-24 05:01:44'),
(618, 382, 72, NULL, NULL, NULL, 1, 1, 5, 0, 0, 0, 5, '2022-04-24 05:01:44', '2022-04-24 05:01:44'),
(619, 382, 25, NULL, NULL, NULL, 1, 1, 1000, 0, 10, 100, 1100, '2022-04-24 05:01:44', '2022-04-24 05:01:44'),
(620, 383, 100, 5, NULL, NULL, 1, 1, 4150, 0, 0, 0, 4150, '2022-05-13 09:10:14', '2022-05-13 09:10:14'),
(621, 384, 100, 6, NULL, NULL, 2, 1, 4150, 0, 0, 0, 8300, '2022-05-19 10:33:27', '2022-05-19 10:33:27'),
(622, 385, 110, NULL, NULL, NULL, 1, 0, 130, 0, 0, 0, 130, '2022-05-25 13:55:27', '2022-05-25 13:55:27'),
(623, 386, 112, NULL, NULL, NULL, 1, 1, 620, 0, 0, 0, 620, '2022-05-25 20:28:17', '2022-05-25 20:28:17'),
(624, 387, 155, NULL, NULL, NULL, 1, 1, 1100, 0, 0, 0, 1100, '2022-06-01 17:00:47', '2022-06-01 17:00:47'),
(625, 388, 111, NULL, NULL, NULL, 1, 1, 410, 0, 0, 0, 410, '2022-06-16 18:28:20', '2022-06-16 18:28:20'),
(626, 389, 112, NULL, NULL, NULL, 19, 1, 610, 0, 0, 0, 11590, '2022-08-06 19:04:20', '2022-08-06 19:04:20'),
(627, 390, 181, NULL, NULL, NULL, 400, 1, 40, 0, 0, 0, 16000, '2022-08-06 19:29:55', '2022-08-06 19:29:55'),
(628, 391, 182, NULL, NULL, NULL, 50, 1, 50, 0, 0, 0, 2500, '2022-08-07 20:27:28', '2022-08-07 20:27:28'),
(629, 392, 182, NULL, NULL, NULL, 50, 1, 50, 0, 0, 0, 2500, '2022-08-07 20:28:25', '2022-08-07 20:28:25'),
(630, 393, 111, NULL, NULL, NULL, 1, 1, 410, 0, 0, 0, 410, '2022-08-07 20:30:03', '2022-08-07 20:30:03'),
(631, 394, 178, NULL, NULL, NULL, 1, 1, 1050, 0, 0, 0, 1050, '2022-08-25 11:38:47', '2022-08-25 11:38:47'),
(632, 395, 111, NULL, NULL, NULL, 1, 1, 410, 0, 0, 0, 410, '2022-08-25 11:40:05', '2022-08-25 11:40:05'),
(633, 396, 180, NULL, NULL, NULL, 1, 1, 540, 0, 0, 0, 540, '2022-09-05 19:20:59', '2022-09-05 19:20:59'),
(634, 397, 110, NULL, NULL, NULL, 1, 0, 130, 0, 0, 0, 130, '2022-09-06 14:00:06', '2022-09-06 14:00:06'),
(635, 398, 229, NULL, NULL, NULL, 2, 1, 480, 0, 0, 0, 960, '2022-09-06 16:09:06', '2022-09-06 16:09:06');

-- --------------------------------------------------------

--
-- Table structure for table `product_transfer`
--

CREATE TABLE `product_transfer` (
  `id` int(10) UNSIGNED NOT NULL,
  `transfer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_transfer`
--

INSERT INTO `product_transfer` (`id`, `transfer_id`, `product_id`, `product_batch_id`, `variant_id`, `imei_number`, `qty`, `purchase_unit_id`, `net_unit_cost`, `tax_rate`, `tax`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 4, NULL, NULL, NULL, 100, 1, 1, 0, 0, 100, '2018-08-08 11:17:10', '2018-12-24 22:16:55'),
(7, 6, 48, NULL, 3, NULL, 1, 1, 2, 0, 0, 2, '2019-12-05 13:55:04', '2019-12-05 14:09:42'),
(11, 8, 5, NULL, NULL, NULL, 10, 1, 100, 0, 0, 1000, '2020-01-22 06:30:59', '2020-01-22 06:30:59'),
(13, 10, 1, NULL, NULL, NULL, 1, 1, 320, 10, 32, 352, '2020-10-08 07:27:35', '2020-10-08 07:29:35'),
(14, 11, 62, NULL, 12, NULL, 1, 1, 1, 0, 0, 1, '2020-10-18 12:17:08', '2020-10-18 12:17:08'),
(15, 12, 61, NULL, NULL, NULL, 10, 1, 3000, 15, 4500, 34500, '2020-10-24 03:01:46', '2020-10-24 03:01:46'),
(32, 21, 5, NULL, NULL, NULL, 5, 1, 100, 0, 0, 500, '2022-03-09 05:44:11', '2022-03-13 06:12:08');

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

CREATE TABLE `product_variants` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `item_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `additional_price` double DEFAULT NULL,
  `qty` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variants`
--

INSERT INTO `product_variants` (`id`, `product_id`, `variant_id`, `position`, `item_code`, `additional_price`, `qty`, `created_at`, `updated_at`) VALUES
(3, 48, 3, 1, 'S-93475396', NULL, 12, '2019-11-21 07:03:04', '2021-07-15 12:25:45'),
(5, 48, 5, 3, 'L-93475396', 50, 10, '2019-11-24 06:07:20', '2022-05-19 10:29:06'),
(6, 48, 2, 2, 'M-93475396', 10, 11, '2019-11-24 07:17:07', '2022-05-19 10:29:06'),
(10, 60, 9, 1, 'a-32081679', NULL, 1, '2020-05-18 16:44:14', '2020-10-26 23:42:06'),
(11, 60, 11, 2, 'b-32081679', NULL, 0, '2020-05-18 16:58:31', '2020-05-18 16:58:31'),
(12, 62, 12, 1, 'variant 1-81145830', NULL, 3, '2020-09-27 06:08:27', '2021-02-11 01:28:16'),
(13, 62, 13, 2, 'variant 2-81145830', NULL, 0, '2020-09-27 06:08:27', '2020-09-27 06:08:27');

-- --------------------------------------------------------

--
-- Table structure for table `product_warehouse`
--

CREATE TABLE `product_warehouse` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warehouse_id` int(11) NOT NULL,
  `qty` double NOT NULL,
  `price` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_warehouse`
--

INSERT INTO `product_warehouse` (`id`, `product_id`, `product_batch_id`, `variant_id`, `imei_number`, `warehouse_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(10, '1', NULL, NULL, NULL, 1, 127.5, NULL, '2018-08-08 08:30:12', '2022-08-07 20:11:31'),
(11, '2', NULL, NULL, NULL, 1, 1368, NULL, '2018-08-08 08:30:12', '2022-05-19 10:29:06'),
(12, '3', NULL, NULL, NULL, 1, 97, NULL, '2018-08-08 08:30:13', '2022-08-08 17:02:43'),
(13, '5', NULL, NULL, NULL, 1, 67, NULL, '2018-08-08 08:30:13', '2022-05-19 10:29:15'),
(14, '4', NULL, NULL, NULL, 1, 151, NULL, '2018-08-08 09:16:09', '2022-08-07 20:11:31'),
(15, '4', NULL, NULL, NULL, 2, 119, NULL, '2018-08-08 11:16:15', '2021-07-15 12:25:45'),
(16, '2', NULL, NULL, NULL, 2, 1787, NULL, '2018-08-08 11:26:49', '2022-05-19 10:29:06'),
(17, '1', NULL, NULL, NULL, 2, 40.5, NULL, '2018-08-08 11:33:33', '2022-05-19 10:29:06'),
(18, '3', NULL, NULL, NULL, 2, 41, NULL, '2018-08-08 23:47:23', '2022-08-07 20:11:31'),
(19, '5', NULL, NULL, NULL, 2, 55, NULL, '2018-08-08 23:48:36', '2022-05-19 10:29:06'),
(20, '10', NULL, NULL, NULL, 1, 50, NULL, '2018-08-08 23:49:29', '2019-12-04 05:49:14'),
(21, '10', NULL, NULL, NULL, 2, 58.5, NULL, '2018-08-08 23:49:55', '2022-08-07 20:11:31'),
(22, '22', NULL, NULL, '7001,11101,11102,11103,', 1, 21, NULL, '2018-09-03 04:06:09', '2022-05-19 10:29:15'),
(23, '22', NULL, NULL, '', 2, 12, NULL, '2018-09-03 04:07:14', '2022-03-09 05:59:01'),
(24, '24', NULL, NULL, NULL, 2, 0, NULL, '2018-09-15 21:49:30', '2018-09-15 21:50:49'),
(25, '25', NULL, NULL, NULL, 1, 14, NULL, '2018-10-23 01:14:21', '2019-03-02 10:06:10'),
(26, '25', NULL, NULL, '', 2, 4, NULL, '2018-10-23 01:14:41', '2022-05-19 10:29:06'),
(27, '31', NULL, NULL, NULL, 1, 14, NULL, '2018-12-04 23:34:30', '2021-01-10 01:04:28'),
(28, '30', NULL, NULL, NULL, 1, 14, NULL, '2018-12-04 23:34:30', '2020-10-22 07:30:14'),
(29, '31', NULL, NULL, NULL, 2, 11, NULL, '2018-12-04 23:35:08', '2021-07-15 12:25:45'),
(30, '30', NULL, NULL, NULL, 2, 10, NULL, '2018-12-04 23:35:08', '2021-07-15 12:25:45'),
(31, '32', NULL, NULL, NULL, 1, 10, NULL, '2018-12-18 23:57:16', '2019-02-09 04:45:23'),
(32, '32', NULL, NULL, NULL, 2, 19, NULL, '2018-12-18 23:57:41', '2021-07-15 12:25:45'),
(33, '33', NULL, NULL, NULL, 1, 16, NULL, '2018-12-24 00:38:40', '2019-03-03 04:39:17'),
(34, '33', NULL, NULL, NULL, 2, 22, NULL, '2019-02-09 04:21:38', '2021-07-15 12:25:45'),
(35, '48', NULL, 3, NULL, 1, 2, NULL, '2019-11-25 14:23:02', '2021-02-11 01:26:56'),
(36, '48', NULL, 2, NULL, 1, 3, NULL, '2019-11-26 06:47:42', '2022-05-19 10:29:06'),
(37, '48', NULL, 3, NULL, 2, 9, NULL, '2019-11-26 08:12:08', '2021-07-15 12:25:45'),
(38, '48', NULL, 2, NULL, 2, 8, NULL, '2019-11-26 08:12:08', '2021-12-07 13:09:32'),
(39, '48', NULL, 5, NULL, 1, 1, NULL, '2019-12-21 10:18:51', '2022-05-19 10:29:06'),
(40, '48', NULL, 5, NULL, 2, 9, NULL, '2019-12-22 08:36:39', '2021-07-15 12:25:45'),
(45, '61', NULL, NULL, NULL, 2, 6, NULL, '2020-08-16 16:02:07', '2022-08-07 20:11:31'),
(46, '62', NULL, 12, NULL, 1, 2, NULL, '2020-09-27 06:55:33', '2020-11-16 09:01:45'),
(47, '62', NULL, 12, NULL, 2, 1, NULL, '2020-10-18 12:17:08', '2021-02-11 01:28:16'),
(48, '61', NULL, NULL, NULL, 1, 8, NULL, '2020-10-24 03:01:46', '2020-11-28 23:21:30'),
(49, '60', NULL, 9, NULL, 1, 1, NULL, '2020-10-26 10:34:05', '2020-10-26 23:42:06'),
(51, '71', 1, NULL, NULL, 1, 15, NULL, '2021-03-07 08:14:05', '2022-08-07 20:11:31'),
(52, '71', 1, NULL, NULL, 2, 4, NULL, '2021-03-07 08:21:16', '2022-03-05 06:16:22'),
(53, '71', 2, NULL, NULL, 1, 3, NULL, '2021-03-07 08:55:06', '2021-06-18 14:32:54'),
(54, '71', 3, NULL, NULL, 1, -2, NULL, '2021-03-09 09:42:13', '2022-05-19 10:29:15'),
(55, '71', 2, NULL, NULL, 2, 0, NULL, '2021-05-23 07:09:03', '2021-05-26 07:38:06'),
(56, '72', NULL, NULL, NULL, 1, 0, NULL, '2021-07-06 07:10:42', '2022-05-19 10:29:15'),
(57, '72', NULL, NULL, NULL, 2, -4, NULL, '2021-07-06 07:11:07', '2022-05-19 10:29:15'),
(58, '22', 4, NULL, NULL, 1, 0, NULL, '2021-10-20 07:47:09', '2022-05-19 10:29:06'),
(59, '100', 5, NULL, NULL, 1, -1, NULL, '2022-05-13 09:09:21', '2022-05-19 10:28:50'),
(60, '100', 6, NULL, NULL, 1, -2, NULL, '2022-05-19 10:30:51', '2022-05-19 10:45:22'),
(61, '100', 7, NULL, NULL, 1, 0, NULL, '2022-05-19 10:45:22', '2022-05-25 18:17:08'),
(62, '111', NULL, NULL, NULL, 1, 117, NULL, '2022-05-25 14:43:38', '2022-09-06 13:08:25'),
(63, '111', NULL, NULL, NULL, 2, 0, 391, '2022-05-25 14:43:38', '2022-05-25 14:51:19'),
(64, '112', NULL, NULL, NULL, 1, 1, NULL, '2022-05-25 18:10:06', '2022-09-05 18:58:10'),
(65, '112', NULL, NULL, NULL, 2, 0, 530, '2022-05-25 18:10:06', '2022-05-25 18:10:06'),
(66, '113', NULL, NULL, NULL, 1, 7, NULL, '2022-05-25 19:05:54', '2022-09-06 13:21:29'),
(67, '114', NULL, NULL, NULL, 1, 26, 460, '2022-05-25 19:51:17', '2022-08-27 14:51:14'),
(68, '114', NULL, NULL, NULL, 2, 0, 399, '2022-05-25 19:51:17', '2022-05-25 19:51:30'),
(69, '115', NULL, NULL, NULL, 1, 13, 460, '2022-05-25 19:53:00', '2022-08-27 14:51:14'),
(70, '115', NULL, NULL, NULL, 2, 0, 400, '2022-05-25 19:53:00', '2022-05-25 19:53:00'),
(71, '116', NULL, NULL, NULL, 1, 40, 750, '2022-05-25 19:55:17', '2022-08-27 14:51:14'),
(72, '116', NULL, NULL, NULL, 2, 0, 600, '2022-05-25 19:55:17', '2022-05-25 19:55:17'),
(73, '117', NULL, NULL, NULL, 1, 0, 480, '2022-05-25 19:58:22', '2022-05-25 19:58:22'),
(74, '117', NULL, NULL, NULL, 2, 0, 420, '2022-05-25 19:58:22', '2022-05-25 19:58:22'),
(75, '120', NULL, NULL, NULL, 1, 0, 6100, '2022-05-25 20:13:11', '2022-05-25 20:13:11'),
(76, '120', NULL, NULL, NULL, 2, 0, 5550, '2022-05-25 20:13:11', '2022-05-25 20:13:11'),
(77, '122', NULL, NULL, NULL, 1, 0, NULL, '2022-05-25 20:34:25', '2022-09-06 13:06:29'),
(78, '122', NULL, NULL, NULL, 2, 0, 340, '2022-05-25 20:34:25', '2022-05-25 20:34:25'),
(79, '123', NULL, NULL, NULL, 1, 20, 470, '2022-05-25 20:37:37', '2022-09-06 13:21:29'),
(80, '123', NULL, NULL, NULL, 2, 0, 425, '2022-05-25 20:37:37', '2022-05-25 20:37:37'),
(81, '125', NULL, NULL, NULL, 1, 0, NULL, '2022-05-25 20:51:35', '2022-08-06 18:03:49'),
(82, '125', NULL, NULL, NULL, 2, 0, 465, '2022-05-25 20:51:35', '2022-05-25 20:51:35'),
(83, '126', NULL, NULL, NULL, 1, 0, 430, '2022-05-25 20:57:34', '2022-05-25 20:57:34'),
(84, '126', NULL, NULL, NULL, 2, 0, 410, '2022-05-25 20:57:34', '2022-05-25 20:57:34'),
(85, '127', NULL, NULL, NULL, 1, 0, 550, '2022-05-25 21:08:47', '2022-05-25 21:08:47'),
(86, '127', NULL, NULL, NULL, 2, 0, 540, '2022-05-25 21:08:47', '2022-05-25 21:08:47'),
(87, '128', NULL, NULL, NULL, 1, 0, 510, '2022-05-25 21:15:03', '2022-05-25 21:15:03'),
(88, '128', NULL, NULL, NULL, 2, 0, 500, '2022-05-25 21:15:03', '2022-05-25 21:15:03'),
(89, '129', NULL, NULL, NULL, 1, 0, 2670, '2022-05-25 21:26:52', '2022-05-25 21:26:52'),
(90, '129', NULL, NULL, NULL, 2, 0, 2670, '2022-05-25 21:26:52', '2022-05-25 21:26:52'),
(91, '130', NULL, NULL, NULL, 1, 0, 7900, '2022-05-25 21:34:25', '2022-05-25 21:34:25'),
(92, '130', NULL, NULL, NULL, 2, 0, 7610, '2022-05-25 21:34:25', '2022-05-25 21:34:25'),
(93, '132', NULL, NULL, NULL, 1, 2, NULL, '2022-05-26 12:08:06', '2022-09-06 14:01:57'),
(94, '132', NULL, NULL, NULL, 2, 0, 630, '2022-05-26 12:08:06', '2022-05-26 12:08:06'),
(95, '133', NULL, NULL, NULL, 1, 4, 2480, '2022-05-26 12:13:23', '2022-09-06 14:01:57'),
(96, '133', NULL, NULL, NULL, 2, 0, 2410, '2022-05-26 12:13:23', '2022-05-26 12:13:23'),
(97, '134', NULL, NULL, NULL, 1, 0, NULL, '2022-05-26 13:41:40', '2022-08-06 19:32:09'),
(98, '134', NULL, NULL, NULL, 2, 0, 570, '2022-05-26 13:41:40', '2022-05-26 13:41:40'),
(99, '135', NULL, NULL, NULL, 1, 0, NULL, '2022-05-26 13:43:39', '2022-08-06 19:31:18'),
(100, '135', NULL, NULL, NULL, 2, 0, 570, '2022-05-26 13:43:39', '2022-05-26 13:43:39'),
(101, '136', NULL, NULL, NULL, 1, 0, NULL, '2022-05-26 13:44:51', '2022-08-06 19:32:38'),
(102, '136', NULL, NULL, NULL, 2, 0, 570, '2022-05-26 13:44:51', '2022-05-26 13:44:51'),
(103, '139', NULL, NULL, NULL, 1, 0, NULL, '2022-05-26 14:48:09', '2022-09-06 12:59:41'),
(104, '139', NULL, NULL, NULL, 2, 0, 2600, '2022-05-26 14:48:09', '2022-05-26 14:48:09'),
(105, '140', NULL, NULL, NULL, 1, 0, NULL, '2022-05-26 14:51:19', '2022-09-06 13:00:36'),
(106, '140', NULL, NULL, NULL, 2, 0, 2600, '2022-05-26 14:51:19', '2022-05-26 14:51:19'),
(107, '142', NULL, NULL, NULL, 1, 0, NULL, '2022-05-26 15:05:22', '2022-09-06 13:09:43'),
(108, '142', NULL, NULL, NULL, 2, 0, 395, '2022-05-26 15:05:22', '2022-05-26 15:05:22'),
(109, '149', NULL, NULL, NULL, 1, 0, NULL, '2022-05-28 13:20:53', '2022-08-24 18:06:10'),
(110, '149', NULL, NULL, NULL, 2, 0, 450, '2022-05-28 13:20:53', '2022-05-28 13:20:53'),
(111, '150', NULL, NULL, NULL, 1, 9, NULL, '2022-05-28 13:23:10', '2022-09-05 18:58:10'),
(112, '150', NULL, NULL, NULL, 2, 0, 440, '2022-05-28 13:23:10', '2022-05-28 13:23:10'),
(113, '151', NULL, NULL, NULL, 1, 3, NULL, '2022-05-28 13:25:22', '2022-09-05 18:58:10'),
(114, '151', NULL, NULL, NULL, 2, 0, 500, '2022-05-28 13:25:22', '2022-05-28 13:25:22'),
(115, '152', NULL, NULL, NULL, 1, 19, NULL, '2022-05-28 13:26:38', '2022-08-27 14:06:59'),
(116, '152', NULL, NULL, NULL, 2, 0, 500, '2022-05-28 13:26:38', '2022-05-28 13:26:38'),
(117, '153', NULL, NULL, NULL, 1, 4, NULL, '2022-05-28 13:29:05', '2022-09-05 18:58:10'),
(118, '153', NULL, NULL, NULL, 2, 0, 700, '2022-05-28 13:29:05', '2022-05-28 13:29:05'),
(119, '154', NULL, NULL, NULL, 1, 9, NULL, '2022-05-28 13:33:43', '2022-09-05 18:58:10'),
(120, '154', NULL, NULL, NULL, 2, 0, 700, '2022-05-28 13:33:43', '2022-05-28 13:33:43'),
(121, '155', NULL, NULL, NULL, 1, 13, NULL, '2022-05-28 14:35:38', '2022-09-05 18:58:10'),
(122, '155', NULL, NULL, NULL, 2, 0, 930, '2022-05-28 14:35:38', '2022-05-28 14:35:38'),
(123, '156', NULL, NULL, NULL, 1, 32, NULL, '2022-05-28 14:38:15', '2022-09-05 18:58:10'),
(124, '156', NULL, NULL, NULL, 2, 0, 930, '2022-05-28 14:38:15', '2022-05-28 14:38:15'),
(125, '157', NULL, NULL, NULL, 1, 1, NULL, '2022-05-28 14:41:59', '2022-09-05 18:58:10'),
(126, '157', NULL, NULL, NULL, 2, 0, 940, '2022-05-28 14:41:59', '2022-05-28 14:41:59'),
(127, '158', NULL, NULL, NULL, 1, 1, NULL, '2022-05-28 14:45:59', '2022-08-27 14:06:59'),
(128, '158', NULL, NULL, NULL, 2, 0, 1300, '2022-05-28 14:45:59', '2022-05-28 14:45:59'),
(129, '164', NULL, NULL, NULL, 1, 12, NULL, '2022-05-28 19:19:46', '2022-09-06 13:21:29'),
(130, '164', NULL, NULL, NULL, 2, 0, 420, '2022-05-28 19:19:46', '2022-05-28 19:19:46'),
(131, '165', NULL, NULL, NULL, 1, 12, NULL, '2022-05-28 19:21:03', '2022-09-06 13:21:29'),
(132, '165', NULL, NULL, NULL, 2, 0, 420, '2022-05-28 19:21:03', '2022-05-28 19:21:03'),
(133, '166', NULL, NULL, NULL, 1, 0, NULL, '2022-05-28 19:22:44', '2022-09-06 12:54:00'),
(134, '166', NULL, NULL, NULL, 2, 0, 420, '2022-05-28 19:22:44', '2022-05-28 19:22:44'),
(135, '167', NULL, NULL, NULL, 1, 0, NULL, '2022-05-28 19:36:19', '2022-09-06 13:05:00'),
(136, '167', NULL, NULL, NULL, 2, 0, 700, '2022-05-28 19:36:19', '2022-05-28 19:36:19'),
(137, '168', NULL, NULL, NULL, 1, 0, NULL, '2022-05-29 11:39:12', '2022-09-06 13:04:20'),
(138, '168', NULL, NULL, NULL, 2, 0, 700, '2022-05-29 11:39:12', '2022-05-29 11:39:12'),
(139, '178', NULL, NULL, NULL, 1, 4, NULL, '2022-06-01 15:45:47', '2022-09-06 13:37:31'),
(140, '177', NULL, NULL, NULL, 1, 2, NULL, '2022-06-01 15:45:47', '2022-06-01 15:45:47'),
(141, '176', NULL, NULL, NULL, 1, 1, NULL, '2022-06-01 15:45:47', '2022-06-01 15:45:47'),
(142, '175', NULL, NULL, NULL, 1, 9, NULL, '2022-06-01 15:45:47', '2022-09-06 13:37:31'),
(143, '174', NULL, NULL, NULL, 1, 1, NULL, '2022-06-01 15:45:47', '2022-06-01 15:45:47'),
(144, '173', NULL, NULL, NULL, 1, 3, NULL, '2022-06-01 15:45:47', '2022-06-01 15:45:47'),
(145, '172', NULL, NULL, NULL, 1, 5, NULL, '2022-06-01 15:45:47', '2022-06-01 15:45:47'),
(146, '171', NULL, NULL, NULL, 1, 4, NULL, '2022-06-01 15:45:47', '2022-06-01 15:45:47'),
(147, '170', NULL, NULL, NULL, 1, 5, NULL, '2022-06-01 15:45:47', '2022-06-01 15:45:47'),
(148, '169', NULL, NULL, NULL, 1, 5, NULL, '2022-06-01 15:45:47', '2022-06-01 15:45:47'),
(149, '160', NULL, NULL, NULL, 1, 8, NULL, '2022-06-01 16:04:51', '2022-06-01 16:04:51'),
(150, '180', NULL, NULL, NULL, 1, 9, NULL, '2022-08-06 18:59:25', '2022-09-05 19:20:59'),
(151, '181', NULL, NULL, NULL, 1, 60, NULL, '2022-08-06 19:19:21', '2022-08-06 19:29:55'),
(152, '182', NULL, NULL, NULL, 1, 603, NULL, '2022-08-07 16:43:06', '2022-08-25 11:25:05'),
(153, '214', NULL, NULL, NULL, 1, 4, NULL, '2022-08-27 13:53:44', '2022-08-27 13:59:01'),
(154, '211', NULL, NULL, NULL, 1, 22, NULL, '2022-08-27 13:53:44', '2022-08-27 13:59:01'),
(155, '210', NULL, NULL, NULL, 1, 24, NULL, '2022-08-27 13:53:44', '2022-08-27 13:59:01'),
(156, '209', NULL, NULL, NULL, 1, 123, NULL, '2022-08-27 13:53:44', '2022-08-27 13:59:01'),
(157, '208', NULL, NULL, NULL, 1, 95, NULL, '2022-08-27 13:53:44', '2022-08-27 13:59:01'),
(158, '206', NULL, NULL, NULL, 1, 36, NULL, '2022-08-27 13:53:44', '2022-08-27 13:59:01'),
(159, '226', NULL, NULL, NULL, 1, 6, NULL, '2022-08-27 14:44:28', '2022-08-27 14:44:28'),
(160, '225', NULL, NULL, NULL, 1, 7, NULL, '2022-08-27 14:44:28', '2022-08-27 14:44:28'),
(161, '224', NULL, NULL, NULL, 1, 7, NULL, '2022-08-27 14:44:28', '2022-08-27 14:44:28'),
(162, '223', NULL, NULL, NULL, 1, 11, NULL, '2022-08-27 14:44:28', '2022-08-27 14:44:28'),
(163, '222', NULL, NULL, NULL, 1, 2, NULL, '2022-08-27 14:44:28', '2022-08-27 14:44:28'),
(164, '221', NULL, NULL, NULL, 1, 1, NULL, '2022-08-27 14:44:28', '2022-08-27 14:44:28'),
(165, '220', NULL, NULL, NULL, 1, 5, NULL, '2022-08-27 14:44:28', '2022-09-05 19:06:50'),
(166, '219', NULL, NULL, NULL, 1, 11, NULL, '2022-08-27 14:44:28', '2022-08-27 14:44:28'),
(167, '218', NULL, NULL, NULL, 1, 1, NULL, '2022-08-27 14:44:28', '2022-08-27 14:44:28'),
(168, '217', NULL, NULL, NULL, 1, 9, NULL, '2022-08-27 14:44:28', '2022-09-05 19:06:50'),
(169, '121', NULL, NULL, NULL, 1, 4, NULL, '2022-08-27 14:51:14', '2022-08-27 14:51:14'),
(170, '119', NULL, NULL, NULL, 1, 9, NULL, '2022-08-27 14:56:09', '2022-09-05 19:03:43'),
(171, '118', NULL, NULL, NULL, 1, 23, NULL, '2022-08-27 14:56:09', '2022-09-05 19:03:43'),
(172, '227', NULL, NULL, NULL, 1, 1, NULL, '2022-08-27 15:01:37', '2022-08-27 15:01:37'),
(173, '203', NULL, NULL, NULL, 1, 11, NULL, '2022-08-27 15:13:20', '2022-09-06 13:58:02'),
(174, '201', NULL, NULL, NULL, 1, 2, NULL, '2022-08-27 15:13:20', '2022-08-27 15:13:20'),
(175, '197', NULL, NULL, NULL, 1, 69, NULL, '2022-08-27 15:13:20', '2022-09-05 19:13:55'),
(176, '196', NULL, NULL, NULL, 1, 1, NULL, '2022-08-27 15:13:20', '2022-08-27 15:13:20'),
(177, '205', NULL, NULL, NULL, 1, 187, NULL, '2022-08-27 15:14:29', '2022-09-05 14:43:08'),
(178, '228', NULL, NULL, NULL, 1, 1, NULL, '2022-08-29 10:46:55', '2022-08-29 10:46:55'),
(179, '229', NULL, NULL, NULL, 1, 22, NULL, '2022-09-06 13:21:29', '2022-09-06 16:09:06'),
(180, '124', NULL, NULL, NULL, 1, 12, NULL, '2022-09-06 13:21:29', '2022-09-06 13:21:29'),
(181, '233', NULL, NULL, NULL, 1, 12, NULL, '2022-09-06 13:21:29', '2022-09-06 13:21:29'),
(182, '234', NULL, NULL, NULL, 1, 1, NULL, '2022-09-06 13:21:29', '2022-09-06 13:21:29'),
(183, '145', NULL, NULL, NULL, 1, 2, NULL, '2022-09-06 13:21:29', '2022-09-06 13:21:29'),
(184, '235', NULL, NULL, NULL, 1, 4, NULL, '2022-09-06 13:22:08', '2022-09-06 13:22:08'),
(185, '236', NULL, NULL, NULL, 1, 3, NULL, '2022-09-06 13:37:31', '2022-09-06 13:37:31'),
(186, '237', NULL, NULL, NULL, 1, 3, NULL, '2022-09-06 13:37:31', '2022-09-06 13:37:31'),
(187, '189', NULL, NULL, NULL, 1, 7, NULL, '2022-09-06 13:53:29', '2022-09-06 13:53:29'),
(188, '195', NULL, NULL, NULL, 1, 21, NULL, '2022-09-06 13:53:29', '2022-09-06 13:53:29'),
(189, '194', NULL, NULL, NULL, 1, 10, NULL, '2022-09-06 13:53:29', '2022-09-06 13:53:29'),
(190, '193', NULL, NULL, NULL, 1, 13, NULL, '2022-09-06 13:53:29', '2022-09-06 13:53:29'),
(191, '192', NULL, NULL, NULL, 1, 3, NULL, '2022-09-06 13:53:29', '2022-09-06 13:53:29'),
(192, '191', NULL, NULL, NULL, 1, 4, NULL, '2022-09-06 13:53:29', '2022-09-06 13:53:29'),
(193, '190', NULL, NULL, NULL, 1, 21, NULL, '2022-09-06 13:53:29', '2022-09-06 13:53:29'),
(194, '187', NULL, NULL, NULL, 1, 9, NULL, '2022-09-06 13:53:29', '2022-09-06 13:53:29'),
(195, '186', NULL, NULL, NULL, 1, 8, NULL, '2022-09-06 13:53:29', '2022-09-06 13:53:29'),
(196, '185', NULL, NULL, NULL, 1, 5, NULL, '2022-09-06 13:53:29', '2022-09-06 13:53:29'),
(197, '184', NULL, NULL, NULL, 1, 10, NULL, '2022-09-06 13:53:29', '2022-09-06 13:53:29'),
(198, '183', NULL, NULL, NULL, 1, 25, NULL, '2022-09-06 13:53:29', '2022-09-06 13:53:29'),
(199, '238', NULL, NULL, NULL, 1, 3, NULL, '2022-09-06 14:30:19', '2022-09-06 14:30:19'),
(200, '239', NULL, NULL, NULL, 1, 2, NULL, '2022-09-06 14:34:12', '2022-09-06 14:34:12'),
(201, '146', NULL, NULL, NULL, 1, 3, NULL, '2022-09-06 14:34:12', '2022-09-06 14:34:12');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `paid_amount` double NOT NULL,
  `status` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `reference_no`, `user_id`, `warehouse_id`, `supplier_id`, `item`, `total_qty`, `total_discount`, `total_tax`, `total_cost`, `order_tax_rate`, `order_tax`, `order_discount`, `shipping_cost`, `grand_total`, `paid_amount`, `status`, `payment_status`, `document`, `note`, `created_at`, `updated_at`) VALUES
(12, 'pr-20180808-051614', 1, 2, 3, 2, 300, 0, 0, 10200, 0, 0, 0, 0, 10200, 0, 1, 1, NULL, NULL, '2018-08-08 11:16:14', '2018-09-22 02:53:24'),
(13, 'pr-20180809-054723', 1, 2, 3, 4, 410, 0, 7304.35, 92600, 10, 9260, 0, 500, 102360, 300, 1, 1, NULL, NULL, '2018-08-08 23:47:23', '2018-08-30 03:07:18'),
(14, 'pr-20180809-012348', 1, 1, 1, 5, 400, 0, 4452.17, 75300, 10, 7480, 500, 1000, 83280, 0, 1, 1, NULL, NULL, '2018-08-09 07:23:48', '2018-08-09 07:23:48'),
(15, 'pr-20180903-100609', 1, 1, 1, 1, 20, 0, 1600, 17600, 0, 0, 0, 100, 17700, 0, 1, 1, NULL, NULL, '2018-09-03 04:06:09', '2018-10-07 22:11:24'),
(16, 'pr-20180903-100714', 1, 2, 3, 1, 20, 0, 1600, 17600, 0, 0, 0, 150, 17750, 3350, 1, 1, NULL, NULL, '2018-09-03 04:07:14', '2018-10-07 00:57:36'),
(18, 'pr-20181022-042625', 1, 1, 1, 1, 50, 0, 0, 50, 0, 0, NULL, NULL, 50, 0, 1, 1, NULL, NULL, '2018-10-22 10:26:25', '2018-10-22 10:26:25'),
(19, 'pr-20181022-042652', 1, 2, 3, 1, 50, 0, 0, 50, 0, 0, NULL, NULL, 50, 0, 1, 1, NULL, NULL, '2018-10-22 10:26:52', '2018-10-22 10:26:52'),
(20, 'pr-20181023-071420', 11, 1, 1, 1, 15, 0, 750, 8250, 0, 0, NULL, NULL, 8250, 0, 1, 1, NULL, NULL, '2018-10-23 01:14:20', '2018-10-23 01:14:20'),
(21, 'pr-20181023-071441', 11, 2, 3, 1, 15, 0, 750, 8250, 0, 0, 0, 0, 8250, 0, 1, 1, NULL, NULL, '2018-10-23 01:14:41', '2018-10-23 01:14:58'),
(22, 'pr-20181101-045903', 1, 1, 1, 1, 5, 0, 400, 4400, 0, 0, NULL, NULL, 4400, 0, 1, 1, NULL, NULL, '2018-10-31 22:59:03', '2018-10-31 22:59:03'),
(23, 'pr-20181101-045928', 1, 2, 3, 1, 5, 0, 400, 4400, 10, 430, 100, 0, 4730, 500, 1, 1, NULL, NULL, '2018-10-31 22:59:28', '2018-12-04 01:01:34'),
(24, 'pr-20181105-091819', 1, 2, 1, 2, 20, 0, 1450, 15950, 0, 0, NULL, NULL, 15950, 15950, 1, 2, NULL, NULL, '2018-11-05 03:18:19', '2018-11-05 03:21:27'),
(25, 'pr-20181205-053429', 1, 1, 1, 2, 30, 0, 0, 4500, 0, 0, 100, 50, 4450, 4450, 1, 2, NULL, NULL, '2018-12-04 23:34:29', '2018-12-04 23:34:43'),
(26, 'pr-20181205-053508', 1, 2, 3, 2, 30, 0, 0, 4500, 0, 0, NULL, NULL, 4500, 0, 1, 1, NULL, NULL, '2018-12-04 23:35:08', '2018-12-10 00:20:52'),
(27, 'pr-20181219-055716', 1, 2, NULL, 1, 10, 0, 0, 10, 0, 0, 0, 0, 10, 10, 1, 2, NULL, NULL, '2018-12-18 23:57:16', '2018-12-20 00:34:39'),
(33, 'pr-20181224-063840', 1, 1, NULL, 1, 10, 0, 0, 10, 0, 0, 0, 0, 10, 0, 1, 1, NULL, NULL, '2018-12-24 00:38:40', '2018-12-24 03:04:21'),
(34, 'pr-20190103-070123', 1, 1, 1, 2, 4, 0, 260, 2860, 0, 0, NULL, NULL, 2860, 2860, 1, 2, NULL, NULL, '2019-01-03 01:01:23', '2019-01-29 04:03:24'),
(35, 'pr-20190129-095448', 9, 1, 1, 2, 4, 0, 0, 600, 0, 0, NULL, NULL, 600, 100, 1, 1, NULL, NULL, '2019-01-29 03:54:48', '2019-02-07 07:06:40'),
(36, 'pr-20190129-095558', 9, 2, 1, 2, 5, 0, 0, 650, 0, 0, NULL, NULL, 650, 650, 1, 2, NULL, NULL, '2019-01-29 03:55:58', '2019-01-29 04:03:02'),
(37, 'pr-20190209-102138', 1, 2, 1, 3, 18, 0, 580, 6390, 0, 0, 0, 0, 6390, 6390, 1, 2, NULL, NULL, '2019-02-09 04:21:38', '2019-06-13 04:13:51'),
(38, 'pr-20190209-102208', 1, 1, 1, 2, 13, 0, 150, 1660, 0, 0, 0, 0, 1660, 1660, 1, 2, NULL, NULL, '2019-02-09 04:22:08', '2019-02-09 04:49:40'),
(39, 'pr-20190209-104413', 1, 1, 1, 2, 3, 10, 63, 885, 10, 88.5, NULL, NULL, 973.5, 973.5, 1, 2, NULL, NULL, '2019-02-09 04:44:13', '2019-02-09 04:49:59'),
(40, 'pr-20190303-103917', 1, 1, 1, 1, 10, 0, 0, 100, 0, 0, NULL, NULL, 100, 100, 1, 2, NULL, NULL, '2019-03-03 04:39:17', '2019-03-03 04:40:46'),
(41, 'pr-20190303-104358', 1, 2, NULL, 2, 15, 0, 320, 3570, 0, 0, NULL, NULL, 3570, 1000, 1, 1, NULL, NULL, '2019-03-03 04:43:58', '2019-04-13 11:02:41'),
(42, 'pr-20190404-095757', 1, 1, 3, 2, 2, 0, 0, 300, 0, 0, 0, 0, 300, 300, 1, 2, NULL, NULL, '2019-04-04 03:57:57', '2019-04-13 13:50:08'),
(43, 'pr-20190613-101600', 1, 2, 1, 2, 6, 0, 390, 4290, 0, 0, NULL, NULL, 4290, 4290, 1, 2, NULL, NULL, '2019-06-13 04:16:00', '2019-10-19 09:29:25'),
(44, 'pr-20191019-033119', 1, 2, 3, 2, 2, 0, 130, 1430, 0, 0, NULL, NULL, 1430, 0, 1, 1, NULL, NULL, '2019-10-19 09:31:19', '2019-10-19 09:31:19'),
(46, 'pr-20191103-113949', 1, 2, 3, 2, 20, 0, 0, 150, 0, 0, NULL, 50, 200, 200, 1, 2, NULL, NULL, '2019-11-03 05:39:49', '2019-11-03 05:42:22'),
(47, 'pr-20191109-112510', 1, 1, NULL, 2, 3, 10, 63, 885, 0, 0, NULL, 66, 951, 0, 1, 1, NULL, NULL, '2019-11-09 05:25:10', '2019-11-09 05:25:10'),
(48, 'pr-20191110-070221', 1, 2, NULL, 1, 100, 0, 0, 100, 0, 0, NULL, 40, 140, 0, 1, 1, NULL, NULL, '2019-11-10 13:02:21', '2019-11-10 13:02:21'),
(49, 'pr-20191111-102155', 1, 2, 1, 1, 10, 0, 800, 8800, 0, 0, 0, 50, 8850, 7000, 1, 1, NULL, NULL, '2019-11-11 04:21:55', '2020-01-01 08:22:25'),
(55, 'pr-20191127-102835', 1, 1, NULL, 2, 2, 0, 0, 4, 0, 0, NULL, NULL, 4, 4, 1, 2, NULL, NULL, '2019-11-27 16:28:35', '2020-01-01 08:21:52'),
(56, 'pr-20191127-102906', 1, 2, NULL, 1, 1, 0, 0, 2, 0, 0, 0, 0, 2, 2, 1, 2, NULL, NULL, '2019-11-27 16:29:06', '2020-01-01 08:21:44'),
(57, 'pr-20191204-110749', 1, 1, 1, 1, 1, 0, 0, 200, 0, 0, NULL, 20, 220, 220, 1, 2, NULL, NULL, '2019-12-04 17:07:49', '2019-12-04 17:11:24'),
(58, 'pr-20191205-102110', 1, 1, 1, 2, 2, 0, 0, 4, 0, 0, 0, 0, 4, 4, 1, 2, NULL, NULL, '2019-12-05 04:21:10', '2020-01-01 08:21:37'),
(59, 'pr-20191221-041851', 1, 1, NULL, 3, 3, 0, 0, 6, 0, 0, 0, 0, 6, 6, 1, 2, NULL, NULL, '2019-12-21 10:18:51', '2020-01-01 08:21:31'),
(61, 'pr-20200101-010631', 1, 2, 1, 3, 30, 0, 0, 60, 0, 0, NULL, NULL, 60, 60, 1, 2, NULL, NULL, '2020-01-01 07:06:31', '2020-01-01 07:07:50'),
(62, 'pr-20200101-022402', 1, 2, NULL, 1, 3, 0, 150, 1650, 0, 0, NULL, NULL, 1650, 1650, 1, 2, NULL, NULL, '2020-01-01 08:24:02', '2020-08-12 12:28:52'),
(67, 'pr-20200204-110041', 1, 2, 1, 2, 2, 0, 0, 300, 0, 0, NULL, NULL, 300, 300, 1, 2, NULL, NULL, '2020-02-04 17:00:41', '2020-02-04 17:00:50'),
(69, 'pr-20200302-115510', 1, 2, NULL, 1, 50, 0, 0, 50, 0, 0, NULL, NULL, 50, 50, 1, 2, NULL, NULL, '2020-03-02 05:55:10', '2020-03-02 05:58:20'),
(70, 'pr-20200302-115603', 1, 1, 1, 1, 50, 0, 0, 50, 0, 0, NULL, NULL, 50, 50, 1, 2, NULL, NULL, '2020-03-02 05:56:03', '2020-03-02 05:58:11'),
(71, 'pr-20200406-073512', 1, 2, 3, 3, 11, 0, 150, 3050, 10, 305, NULL, NULL, 3355, 2000, 1, 1, NULL, NULL, '2020-04-06 13:35:12', '2020-04-06 13:38:23'),
(72, 'pr-20200816-100207', 1, 2, 1, 1, 10, 5000, 3750, 28750, 0, 0, NULL, 2000, 30750, 0, 1, 1, NULL, NULL, '2020-08-16 16:02:07', '2020-08-16 16:02:07'),
(73, 'pr-20200927-125533', 1, 1, NULL, 1, 2, 0, 0, 2, 0, 0, 0, 0, 2, 0, 1, 1, NULL, NULL, '2020-09-27 06:55:33', '2020-09-27 09:07:44'),
(74, 'pr-20201024-070201', 1, 2, 1, 2, 15, 0, 5270, 41470, 0, 0, 0, 0, 41470, 0, 1, 1, NULL, NULL, '2020-10-24 01:02:01', '2020-10-24 01:03:16'),
(83, 'pr-20201027-045611', 1, 1, NULL, 1, 2, 0, 0, 2, 0, 0, NULL, NULL, 2, 0, 1, 1, NULL, NULL, '2020-10-26 22:56:11', '2020-10-26 22:56:11'),
(84, 'pr-20201027-045658', 1, 1, NULL, 1, 2, 0, 0, 4, 0, 0, NULL, NULL, 4, 0, 1, 1, NULL, NULL, '2020-10-26 22:56:58', '2020-10-26 22:56:58'),
(85, 'pr-20201102-092952', 1, 1, NULL, 1, 1, 0, 32, 352, 0, 0, NULL, NULL, 352, 0, 1, 1, NULL, 'asasda\r\ndasdasd', '2020-11-02 03:29:52', '2020-11-02 03:29:52'),
(87, 'pr-20201102-093644', 1, 1, NULL, 1, 1, 0, 32, 352, 0, 0, 0, 0, 352, 0, 1, 1, NULL, 'kjkljklj\r\nlljkljkljkl\r\njhjhjh.', '2020-11-02 03:36:44', '2020-11-02 05:20:34'),
(89, 'pr-20201116-030145', 1, 1, NULL, 2, 2, 0, 32, 353, 0, 0, NULL, NULL, 353, 0, 1, 1, NULL, NULL, '2020-11-16 09:01:45', '2020-11-16 09:01:45'),
(90, 'pr-20201118-061543', 1, 2, NULL, 1, 10, 0, 4500, 34500, 0, 0, 1000, 100, 33600, 33000, 1, 1, NULL, NULL, '2020-11-18 00:15:43', '2020-11-18 00:20:36'),
(98, 'pr-20210307-021405', 1, 1, NULL, 1, 10, 0, 0, 10, 0, 0, NULL, NULL, 10, 0, 1, 1, NULL, NULL, '2021-03-07 08:14:05', '2021-03-07 08:14:05'),
(99, 'pr-20210307-021955', 1, 1, NULL, 1, 5, 0, 0, 5, 0, 0, 0, 0, 5, 0, 1, 1, NULL, NULL, '2021-03-07 08:19:55', '2021-03-09 09:43:48'),
(100, 'pr-20210307-022116', 1, 2, NULL, 1, 10, 0, 0, 10, 0, 0, 0, 0, 10, 0, 1, 1, NULL, NULL, '2021-03-07 08:21:16', '2021-03-09 09:45:19'),
(102, 'pr-20210309-023435', 1, 1, NULL, 1, 5, 0, 0, 5, 0, 0, 0, 0, 5, 0, 1, 1, NULL, NULL, '2021-03-09 08:34:35', '2021-03-11 03:47:53'),
(105, 'pr-20210326-113914', 1, 1, NULL, 2, 2, 0, 0, 101, 0, 0, 0, 0, 101, 0, 1, 1, NULL, NULL, '2021-03-26 05:39:14', '2021-04-09 15:53:48'),
(148, 'pr-20220525-061534', 1, 1, 10, 2, 20, 0, 0, 10000, 0, 0, 0, 150, 10150, 10150, 1, 2, 'WhatsApp Image 2022-05-25 at 6.04.45 PM (1).jpeg', NULL, '2022-05-25 00:00:00', '2022-05-25 19:08:07'),
(149, 'pr-20220525-062850', 1, 1, 10, 1, 120, 0, 0, 46800, 0, 0, NULL, 82, 46882, 46882, 1, 2, 'WhatsApp Image 2022-05-25 at 6.04.45 PM (1).jpeg', NULL, '2022-05-25 00:00:00', '2022-05-25 18:29:00'),
(150, 'pr-20220525-070554', 1, 1, 10, 1, 5, 0, 0, 27750, 0, 0, NULL, 75, 27825, 27825, 1, 2, NULL, NULL, '2022-05-25 00:00:00', '2022-05-25 19:08:17'),
(151, 'pr-20220601-034547', 1, 1, 14, 10, 31, 0, 0, 13760, 0, 0, NULL, 200, 13960, 0, 1, 1, 'WhatsApp Image 2022-06-01 at 3.40.24 PM.jpeg', NULL, '2022-06-01 00:00:00', '2022-06-01 15:45:47'),
(152, 'pr-20220601-040451', 1, 1, 9, 8, 110, 0, 0, 64336, 0, 0, NULL, 50, 64386, 0, 1, 1, 'WhatsApp Image 2022-06-01 at 3.59.10 PM.jpeg', NULL, '2022-05-24 00:00:00', '2022-06-01 16:04:51'),
(153, 'pr-20220806-065925', 1, 1, 9, 3, 44, 0, 0, 27962, 0, 0, NULL, 310, 28272, 0, 1, 1, NULL, NULL, '2022-08-06 00:00:00', '2022-08-06 18:59:25'),
(154, 'pr-20220806-071921', 1, 1, 15, 1, 460, 0, 0, 11500, 0, 0, NULL, 510, 12010, 0, 1, 1, 'WhatsApp Image 2022-08-06 at 7.15.51 PM.jpeg', NULL, '2022-08-06 00:00:00', '2022-08-06 19:19:21'),
(155, 'pr-20220807-044306', 1, 1, 12, 1, 703, 0, 0, 17575, 0, 0, NULL, 225, 17800, 0, 1, 1, NULL, NULL, '2022-08-07 00:00:00', '2022-08-07 16:43:06'),
(156, 'pr-20220827-015344', 1, 1, 16, 6, 304, 0, 0, 144480, 0, 0, 0, 0, 144480, 0, 1, 1, NULL, NULL, '2022-08-27 00:00:00', '2022-08-27 13:59:01'),
(157, 'pr-20220827-020659', 1, 1, 9, 9, 65, 0, 0, 39387.5, 0, 0, NULL, 300, 39687.5, 0, 1, 1, NULL, NULL, '2022-08-27 00:00:00', '2022-08-27 14:06:59'),
(158, 'pr-20220827-024428', 1, 1, 8, 10, 65, 0, 0, 29880, 0, 0, NULL, 250, 30130, 0, 1, 1, NULL, NULL, '2022-08-27 00:00:00', '2022-08-27 14:44:28'),
(159, 'pr-20220827-025114', 1, 1, 11, 4, 83, 0, 0, 39060, 0, 0, NULL, 100, 39160, 0, 1, 1, NULL, NULL, '2022-08-27 00:00:00', '2022-08-27 14:51:14'),
(160, 'pr-20220827-025609', 1, 1, 11, 2, 38, 0, 0, 74700, 0, 0, NULL, 100, 74800, 0, 1, 1, NULL, NULL, '2022-08-27 00:00:00', '2022-08-27 14:56:09'),
(161, 'pr-20220827-030137', 1, 1, 11, 1, 1, 0, 0, 1700, 0, 0, NULL, NULL, 1700, 0, 1, 1, NULL, NULL, '2022-08-27 00:00:00', '2022-08-27 15:01:37'),
(162, 'pr-20220827-031320', 1, 1, 6, 4, 98, 0, 0, 53520, 0, 0, NULL, 50, 53570, 0, 1, 1, NULL, NULL, '2022-08-27 00:00:00', '2022-08-27 15:13:20'),
(163, 'pr-20220827-031429', 1, 1, 11, 1, 240, 0, 0, 109200, 0, 0, NULL, 750, 109950, 0, 1, 1, NULL, NULL, '2022-08-27 00:00:00', '2022-08-27 15:14:29'),
(164, 'pr-20220829-104655', 38, 1, 8, 1, 1, 0, 0, 1000, 0, 0, NULL, NULL, 1000, 0, 1, 1, NULL, NULL, '2022-08-29 10:46:55', '2022-08-29 10:46:55'),
(165, 'pr-20220829-115450', 38, 1, 6, 1, 1, 0, 0, 510, 0, 0, NULL, NULL, 510, 0, 1, 1, NULL, NULL, '2022-08-29 11:54:50', '2022-08-29 11:54:50'),
(166, 'pr-20220906-012129', 38, 1, 10, 9, 97, 0, 0, 81240, 0, 0, NULL, 770, 82010, 0, 1, 1, NULL, NULL, '2022-09-02 00:00:00', '2022-09-06 13:21:29'),
(167, 'pr-20220906-012208', 38, 1, 10, 1, 4, 0, 0, 5600, 0, 0, NULL, NULL, 5600, 0, 1, 1, NULL, NULL, '2022-09-02 00:00:00', '2022-09-06 13:22:08'),
(168, 'pr-20220906-013731', 38, 1, 15, 4, 15, 0, 0, 6879, 0, 0, NULL, NULL, 6879, 0, 1, 1, NULL, NULL, '2022-09-02 00:00:00', '2022-09-06 13:37:31'),
(169, 'pr-20220906-015329', 38, 1, 7, 12, 136, 0, 0, 32783, 0, 0, NULL, NULL, 32783, 0, 1, 1, NULL, NULL, '2022-08-28 00:00:00', '2022-09-06 13:53:29'),
(170, 'pr-20220906-015802', 38, 1, 6, 1, 3, 0, 0, 5760, 0, 0, NULL, NULL, 5760, 0, 1, 1, NULL, NULL, '2022-09-01 00:00:00', '2022-09-06 13:58:02'),
(171, 'pr-20220906-020157', 38, 1, 10, 2, 6, 0, 0, 10932, 0, 0, NULL, 50, 10982, 0, 1, 1, NULL, NULL, '2022-09-01 00:00:00', '2022-09-06 14:01:57'),
(172, 'pr-20220906-023019', 38, 1, 10, 1, 3, 0, 0, 3600, 0, 0, NULL, NULL, 3600, 0, 1, 1, NULL, NULL, '2022-09-06 00:00:00', '2022-09-06 14:30:19'),
(173, 'pr-20220906-023412', 38, 1, 10, 2, 5, 0, 0, 9540, 0, 0, NULL, NULL, 9540, 0, 1, 1, NULL, NULL, '2022-09-06 00:00:00', '2022-09-06 14:34:12');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_product_return`
--

CREATE TABLE `purchase_product_return` (
  `id` int(10) UNSIGNED NOT NULL,
  `return_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_batch_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `imei_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quotations`
--

CREATE TABLE `quotations` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `quotation_status` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotations`
--

INSERT INTO `quotations` (`id`, `reference_no`, `user_id`, `biller_id`, `supplier_id`, `customer_id`, `warehouse_id`, `item`, `total_qty`, `total_discount`, `total_tax`, `total_price`, `order_tax_rate`, `order_tax`, `order_discount`, `shipping_cost`, `grand_total`, `quotation_status`, `document`, `note`, `created_at`, `updated_at`) VALUES
(1, 'qr-20180809-055250', 1, 1, 3, 3, 1, 3, 57, 35, 767.73, 5930, 10, 583, 100, 500, 6913, 2, NULL, 'first quotation...', '2018-08-08 23:52:50', '2018-09-04 03:32:16'),
(2, 'qr-20180904-040257', 1, 1, NULL, 1, 1, 2, 3.5, 0, 0, 76, 0, 0, 1.6, 2.7, 77.1, 1, NULL, NULL, '2018-09-03 22:02:57', '2018-09-21 07:05:57'),
(3, 'qr-20181023-061249', 9, 1, 3, 11, 1, 2, 2, 0, 40, 453, 0, 0, 0, 0, 453, 2, NULL, NULL, '2018-10-23 00:12:49', '2019-12-21 06:41:36'),
(11, 'qr-20201024-090814', 1, 1, NULL, 1, 1, 1, 2, 0, 3000, 23000, 0, 0, 0, 0, 23000, 1, NULL, NULL, '2020-10-24 03:08:14', '2020-10-24 03:28:35'),
(12, 'qr-20201210-053401', 1, 1, 1, 19, 2, 2, 15, 0, 600, 9100, 0, 0, 100, 500, 9500, 1, NULL, NULL, '2020-12-09 23:34:01', '2020-12-09 23:34:01'),
(13, 'qr-20210112-125803', 1, 1, NULL, 11, 1, 3, 12, 0, 155.65, 1660, 0, 0, 0, 0, 1660, 1, NULL, NULL, '2021-01-12 06:58:03', '2021-01-12 06:59:14'),
(15, 'qr-20210529-105356', 1, 1, NULL, 11, 2, 2, 2, 0, 40, 442, 0, 0, 0, 0, 442, 1, NULL, NULL, '2021-05-29 04:53:56', '2021-05-30 08:04:07'),
(16, 'qr-20220219-122055', 1, 1, NULL, 19, 1, 1, 1, 0, 0, 120, 0, 0, NULL, NULL, 120, 1, NULL, NULL, '2022-02-19 06:20:55', '2022-02-19 06:20:55'),
(17, 'qr-20220219-124103', 1, 1, NULL, 11, 1, 1, 1, 0, 40, 440, 0, 0, 10, NULL, 430, 1, NULL, NULL, '2022-02-19 06:41:03', '2022-02-19 06:41:03'),
(18, 'qr-20220219-124638', 1, 1, NULL, 11, 1, 1, 1, 0, 40, 440, 0, 0, 10, NULL, 430, 1, NULL, NULL, '2022-02-19 06:46:38', '2022-02-19 06:46:38'),
(19, 'qr-20220308-040521', 1, 1, NULL, 1, 1, 3, 3, 0, 0, 566, 0, 0, 0, 0, 566, 1, NULL, 'asfsdf\r\nfsdfsdf\r\nsfsdfsdfs', '2022-03-08 10:05:21', '2022-03-13 05:38:58');

-- --------------------------------------------------------

--
-- Table structure for table `returns`
--

CREATE TABLE `returns` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `return_purchases`
--

CREATE TABLE `return_purchases` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reward_point_settings`
--

CREATE TABLE `reward_point_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `per_point_amount` double NOT NULL,
  `minimum_amount` double NOT NULL,
  `duration` int(11) DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reward_point_settings`
--

INSERT INTO `reward_point_settings` (`id`, `per_point_amount`, `minimum_amount`, `duration`, `type`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 300, 1000, 1, 'Year', 1, '2021-06-08 15:40:15', '2021-06-27 05:20:55');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `guard_name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin can access all data...', 'web', 1, '2018-06-01 23:46:44', '2018-06-02 23:13:05'),
(2, 'Owner', 'Staff of shop', 'web', 1, '2018-10-22 02:38:13', '2022-02-01 13:13:30'),
(4, 'staff', 'staff has specific acess...', 'web', 1, '2018-06-02 00:05:27', '2022-02-01 13:13:04'),
(5, 'Customer', NULL, 'web', 1, '2020-11-05 06:43:16', '2020-11-15 00:24:15');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(4, 1),
(4, 2),
(4, 4),
(5, 1),
(5, 2),
(6, 1),
(6, 2),
(6, 4),
(7, 1),
(7, 2),
(7, 4),
(8, 1),
(8, 2),
(8, 4),
(9, 1),
(9, 2),
(9, 4),
(10, 1),
(10, 2),
(11, 1),
(11, 2),
(12, 1),
(12, 2),
(12, 4),
(13, 1),
(13, 2),
(13, 4),
(14, 1),
(14, 2),
(15, 1),
(15, 2),
(16, 1),
(16, 2),
(17, 1),
(17, 2),
(18, 1),
(18, 2),
(19, 1),
(19, 2),
(20, 1),
(20, 2),
(20, 4),
(21, 1),
(21, 2),
(21, 4),
(22, 1),
(22, 2),
(22, 4),
(23, 1),
(23, 2),
(24, 1),
(24, 2),
(24, 4),
(25, 1),
(25, 2),
(25, 4),
(26, 1),
(26, 2),
(27, 1),
(27, 2),
(28, 1),
(28, 2),
(28, 4),
(29, 1),
(29, 2),
(29, 4),
(30, 1),
(30, 2),
(31, 1),
(31, 2),
(32, 1),
(32, 2),
(33, 1),
(33, 2),
(34, 1),
(34, 2),
(35, 1),
(35, 2),
(36, 1),
(36, 2),
(37, 1),
(37, 2),
(38, 1),
(38, 2),
(39, 1),
(39, 2),
(40, 1),
(40, 2),
(41, 1),
(41, 2),
(42, 1),
(42, 2),
(43, 1),
(43, 2),
(44, 1),
(44, 2),
(45, 1),
(45, 2),
(46, 1),
(46, 2),
(47, 1),
(47, 2),
(48, 1),
(48, 2),
(49, 1),
(49, 2),
(50, 1),
(50, 2),
(51, 1),
(51, 2),
(52, 1),
(52, 2),
(53, 1),
(53, 2),
(54, 1),
(54, 2),
(55, 1),
(55, 2),
(55, 4),
(56, 1),
(56, 2),
(56, 4),
(57, 1),
(57, 2),
(57, 4),
(58, 1),
(58, 2),
(59, 1),
(59, 2),
(60, 1),
(60, 2),
(61, 1),
(61, 2),
(62, 1),
(62, 2),
(63, 1),
(63, 2),
(63, 4),
(64, 1),
(64, 2),
(64, 4),
(65, 1),
(65, 2),
(66, 1),
(66, 2),
(67, 1),
(67, 2),
(68, 1),
(68, 2),
(69, 1),
(69, 2),
(70, 2),
(71, 2),
(72, 2),
(73, 1),
(73, 2),
(74, 1),
(74, 2),
(75, 1),
(75, 2),
(76, 1),
(76, 2),
(77, 1),
(77, 2),
(78, 1),
(78, 2),
(79, 1),
(79, 2),
(80, 1),
(80, 2),
(81, 1),
(81, 2),
(82, 1),
(82, 2),
(83, 1),
(83, 2),
(84, 1),
(84, 2),
(85, 1),
(85, 2),
(86, 1),
(86, 2),
(87, 1),
(87, 2),
(88, 1),
(88, 2),
(89, 2),
(90, 1),
(90, 2),
(91, 1),
(91, 2),
(92, 1),
(92, 2),
(93, 1),
(93, 2),
(94, 1),
(94, 2),
(95, 1),
(95, 2),
(96, 1),
(96, 2),
(97, 1),
(97, 2),
(98, 1),
(98, 2),
(99, 1),
(99, 2),
(100, 1),
(100, 2),
(101, 1),
(101, 2),
(102, 1),
(102, 2),
(103, 1),
(103, 2),
(104, 1),
(104, 2),
(105, 1),
(105, 2),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_register_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) DEFAULT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `grand_total` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_discount_value` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `coupon_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `sale_status` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `sale_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `reference_no`, `user_id`, `cash_register_id`, `customer_id`, `warehouse_id`, `biller_id`, `item`, `total_qty`, `total_discount`, `total_tax`, `total_price`, `grand_total`, `order_tax_rate`, `order_tax`, `order_discount_type`, `order_discount_value`, `order_discount`, `coupon_id`, `coupon_discount`, `shipping_cost`, `sale_status`, `payment_status`, `document`, `paid_amount`, `sale_note`, `staff_note`, `created_at`, `updated_at`) VALUES
(1, 'sr-20180808-043622', 1, NULL, 1, 1, 1, 2, 3, 10, 15.65, 350, 380, 10, 30, NULL, NULL, 50, NULL, NULL, 50, 1, 2, NULL, 0, 'ukgjkgjkgkj', 'gjkgjkgkujg', '2018-08-08 10:36:22', '2018-10-06 09:25:29'),
(2, 'sr-20180809-055453', 1, NULL, 3, 1, 1, 3, 63, 0, 469.3, 5103, 5503, 0, 0, NULL, NULL, 100, NULL, NULL, 500, 1, 2, NULL, 2200, NULL, NULL, '2018-08-08 23:54:53', '2018-08-08 23:56:35'),
(3, 'posr-20180809-063214', 1, NULL, 2, 2, 2, 3, 26, 0, 0, 897, 897, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 897, NULL, NULL, '2018-08-09 00:32:14', '2018-08-09 00:32:14'),
(4, 'sr-20180825-034836', 1, NULL, 1, 1, 1, 1, 2, 0, 80, 880, 880, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, 300, NULL, NULL, '2018-08-24 21:48:36', '2018-09-22 02:56:03'),
(6, 'sr-20180826-094836', 1, NULL, 2, 1, 2, 1, 1, 0, 0, 18.9, 20, 0, 0, NULL, NULL, 0, NULL, NULL, 1.1, 1, 4, NULL, 20, NULL, NULL, '2018-08-26 03:48:36', '2018-08-26 05:48:05'),
(7, 'sr-20180827-073545', 1, NULL, 1, 1, 1, 1, 2, 0, 80, 880, 880, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 880, NULL, NULL, '2018-08-27 01:35:45', '2018-08-27 01:35:45'),
(8, 'posr-20180902-053954', 1, NULL, 1, 1, 2, 1, 2, 0, 288, 3168, 3529.8, 10, 311.8, NULL, NULL, 50, NULL, NULL, 100, 1, 4, NULL, 3529.8, 'good customer', 'good customer', '2018-09-01 23:39:54', '2018-09-01 23:39:54'),
(9, 'posr-20180903-033314', 1, NULL, 1, 2, 1, 1, 10, 0, 0, 20, 20, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 20, NULL, NULL, '2018-09-02 21:33:14', '2018-09-02 21:33:14'),
(10, 'posr-20180903-050138', 1, NULL, 11, 2, 1, 1, 1, 0, 0, 250, 250, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, 200, NULL, NULL, '2018-09-02 23:01:38', '2018-09-09 21:40:28'),
(11, 'posr-20180903-100821', 1, NULL, 11, 2, 1, 1, 5, 0, 500, 5500, 5500, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 5500, NULL, NULL, '2018-09-03 04:08:21', '2018-09-03 04:08:21'),
(12, 'sr-20180903-101026', 1, NULL, 3, 1, 5, 1, 10, 0, 1050, 11550, 11550, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, 0, NULL, NULL, '2018-09-03 04:10:26', '2018-09-22 02:55:14'),
(29, 'sr-20180909-093841', 1, NULL, 1, 1, 1, 1, 1, 0, 0, 120, 132, 10, 12, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, 0, NULL, NULL, '2018-09-09 03:38:41', '2018-10-06 02:36:52'),
(30, 'posr-20180910-045706', 1, NULL, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, 0, NULL, NULL, 0, 1, 2, NULL, 120, NULL, NULL, '2018-09-09 22:57:06', '2018-10-06 00:53:20'),
(31, 'posr-20180926-092059', 1, NULL, 11, 2, 1, 2, 2, 0, 55.65, 560, 560, 0, 0, NULL, NULL, 0, NULL, NULL, 0, 1, 4, NULL, 560, NULL, NULL, '2018-09-26 03:20:59', '2018-09-26 03:21:25'),
(32, 'posr-20181004-095547', 1, NULL, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, NULL, NULL, '2018-10-04 03:55:47', '2018-10-04 03:55:47'),
(33, 'posr-20181004-100022', 1, NULL, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, NULL, NULL, '2018-10-04 04:00:22', '2018-10-04 04:00:22'),
(37, 'sr-20181007-064605', 1, NULL, 1, 1, 1, 1, 1, 0, 0, 250, 250, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, 0, NULL, NULL, '2018-10-07 00:46:05', '2018-10-07 00:46:28'),
(38, 'posr-20181007-064719', 1, NULL, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, 0, NULL, NULL, '2018-10-07 00:47:19', '2018-10-07 03:17:02'),
(40, 'posr-20181007-071312', 1, NULL, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, 0, NULL, NULL, '2018-10-07 01:13:12', '2018-10-07 03:17:39'),
(41, 'posr-20181010-041621', 1, NULL, 1, 2, 1, 2, 2, 0, 40, 461, 461, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 461, NULL, NULL, '2018-10-09 22:16:21', '2018-10-09 22:16:21'),
(42, 'posr-20181010-053450', 1, NULL, 1, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 440, NULL, NULL, '2018-10-09 23:34:50', '2018-10-09 23:34:50'),
(43, 'sr-20181016-033434', 1, NULL, 1, 1, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, 0, 'sss\r\nsss\r\ns', NULL, '2018-10-15 21:34:34', '2018-10-23 00:21:27'),
(55, 'posr-20181021-065334', 1, NULL, 11, 2, 1, 1, 1, 0, 0, 250, 250, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 250, NULL, NULL, '2018-10-21 00:53:34', '2018-10-21 00:53:34'),
(57, 'posr-20181021-082612', 1, NULL, 11, 2, 1, 2, 3, 0, 40, 482, 575.2, 10, 43.2, NULL, NULL, 50, NULL, NULL, 100, 1, 4, NULL, 575.2, NULL, NULL, '2018-10-21 02:26:12', '2018-10-21 02:26:12'),
(58, 'posr-20181022-032723', 1, NULL, 11, 2, 1, 2, 2, 0, 100, 1220, 1220, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 1220, NULL, NULL, '2018-10-22 09:27:23', '2018-10-22 09:27:23'),
(73, 'posr-20181023-071543', 11, NULL, 11, 1, 5, 2, 5, 0, 500, 5500, 5500, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 5500, NULL, NULL, '2018-10-23 01:15:43', '2018-10-23 01:15:43'),
(74, 'posr-20181023-071644', 1, NULL, 11, 2, 1, 3, 3, 0, 200, 2320, 2320, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 2320, NULL, NULL, '2018-10-23 01:16:44', '2018-10-23 01:16:44'),
(75, 'posr-20181101-050027', 1, NULL, 11, 2, 1, 5, 12, 0, 626.96, 6980, 7678, 10, 698, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 7678, NULL, NULL, '2018-10-31 23:00:27', '2018-10-31 23:00:27'),
(76, 'posr-20181101-050126', 1, NULL, 11, 2, 1, 3, 6, 0, 100, 1434, 1424, 0, 0, NULL, NULL, 10, NULL, NULL, 0, 1, 4, NULL, 1424, NULL, NULL, '2018-10-31 23:01:26', '2018-11-08 03:44:51'),
(79, 'posr-20181105-091516', 1, NULL, 11, 2, 1, 7, 52, 0, 1069.57, 14454, 14454, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 14454, NULL, NULL, '2018-11-05 03:15:16', '2018-11-05 03:15:16'),
(80, 'posr-20181105-091958', 1, NULL, 11, 2, 1, 3, 8, 0, 191.3, 2500, 2500, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 2500, NULL, NULL, '2018-11-05 03:19:58', '2018-11-05 03:19:58'),
(86, 'posr-20181105-095948', 1, NULL, 11, 2, 1, 1, 1, 0, 100, 1100, 1100, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 1100, NULL, NULL, '2018-11-05 03:59:48', '2018-11-05 03:59:48'),
(88, 'posr-20181105-100258', 1, NULL, 11, 2, 1, 1, 1, 0, 100, 1100, 1100, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 1100, NULL, NULL, '2018-11-05 04:02:58', '2018-11-05 04:02:58'),
(94, 'posr-20181126-020534', 1, NULL, 11, 2, 1, 1, 1, 0, 15.65, 120, 120, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 120, NULL, NULL, '2018-11-26 08:05:34', '2018-11-26 08:05:34'),
(95, 'posr-20181127-093608', 1, NULL, 11, 2, 1, 1, 3, 0, 0, 360, 360, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, NULL, NULL, '2018-11-27 03:36:08', '2018-11-27 03:36:08'),
(96, 'posr-20181128-071509', 1, NULL, 11, 2, 1, 1, 1, 0, 15.65, 120, 132, 10, 12, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 132, NULL, NULL, '2018-11-28 01:15:09', '2018-11-28 01:15:09'),
(97, 'posr-20181201-060518', 1, NULL, 11, 2, 1, 2, 3, 0, 31.3, 262, 262, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, 200, NULL, NULL, '2018-12-01 00:05:18', '2018-12-04 00:21:05'),
(98, 'posr-20181205-053558', 1, NULL, 11, 2, 1, 2, 4, 0, 0, 800, 800, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 800, NULL, NULL, '2018-12-04 23:35:58', '2018-12-04 23:35:58'),
(99, 'posr-20181205-053719', 1, NULL, 11, 1, 1, 2, 4, 0, 0, 800, 800, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 800, NULL, NULL, '2018-12-04 23:37:19', '2018-12-04 23:37:19'),
(101, 'posr-20181208-062026', 1, NULL, 11, 2, 1, 1, 1, 0, 0, 100, 100, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 100, NULL, NULL, '2018-12-08 00:20:26', '2018-12-08 00:20:26'),
(103, 'posr-20181224-045832', 1, NULL, 11, 2, 1, 1, 1, 0, 15.65, 120, 120, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 120, NULL, NULL, '2018-12-23 22:58:32', '2018-12-23 22:58:32'),
(104, 'sr-20181224-091527', 1, NULL, 1, 1, 2, 2, 6, 0, 0, 2508, 2518, 0, 0, NULL, NULL, 0, NULL, NULL, 10, 1, 2, NULL, NULL, NULL, NULL, '2018-12-24 03:15:27', '2018-12-24 21:55:23'),
(105, 'posr-20190101-054538', 1, NULL, 1, 2, 1, 1, 1, 0, 0, 21, 21, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 21, NULL, NULL, '2018-12-31 23:45:38', '2018-12-31 23:45:38'),
(106, 'posr-20190101-091040', 1, NULL, 11, 2, 1, 3, 5, 0, 15.65, 860, 860, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 860, NULL, NULL, '2019-01-01 03:10:40', '2019-01-01 03:10:40'),
(107, 'posr-20190103-065626', 1, NULL, 11, 2, 1, 6, 10, 0, 395.65, 5040, 5040, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 5040, NULL, NULL, '2019-01-03 00:56:26', '2019-01-03 00:56:26'),
(108, 'posr-20190120-035824', 1, NULL, 11, 2, 1, 1, 1, 0, 15.65, 120, 120, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 120, NULL, NULL, '2019-01-20 09:58:24', '2019-01-20 09:58:24'),
(109, 'posr-20190129-101443', 9, NULL, 11, 1, 5, 2, 2, 0, 40, 540, 540, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 540, NULL, NULL, '2019-01-29 04:14:43', '2019-01-29 04:14:43'),
(110, 'posr-20190129-115041', 9, NULL, 11, 1, 5, 2, 3, 0, 100, 1700, 1700, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 1700, NULL, NULL, '2019-01-29 05:50:41', '2019-01-29 05:50:41'),
(111, 'posr-20190131-110839', 9, NULL, 11, 1, 5, 2, 2, 0, 0, 271, 271, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 271, NULL, NULL, '2019-01-31 05:08:39', '2019-01-31 05:08:39'),
(112, 'posr-20190202-104045', 1, NULL, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 440, NULL, NULL, '2019-02-02 04:40:45', '2019-02-02 04:40:45'),
(113, 'posr-20190202-114117', 1, NULL, 11, 2, 1, 2, 2, 0, 0, 350, 350, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 350, NULL, NULL, '2019-02-02 05:41:17', '2019-02-02 05:41:17'),
(114, 'posr-20190205-030445', 1, NULL, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 440, NULL, NULL, '2019-02-05 09:04:45', '2019-02-05 09:04:45'),
(118, 'posr-20190207-111542', 1, NULL, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 3, 2, NULL, NULL, NULL, NULL, '2019-02-07 05:15:42', '2019-02-07 05:15:42'),
(120, 'sr-20190207-114036', 1, NULL, 1, 1, 2, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, 50, NULL, NULL, '2019-02-07 05:40:36', '2019-02-07 07:09:15'),
(121, 'posr-20190209-104814', 1, NULL, 11, 2, 1, 7, 17, 0, 55.65, 1272, 1272, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 1272, NULL, NULL, '2019-02-09 04:48:14', '2019-02-09 04:48:14'),
(123, 'posr-20190219-023214', 1, NULL, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 440, NULL, NULL, '2019-02-19 08:32:14', '2019-02-19 08:32:14'),
(127, 'posr-20190303-104010', 1, NULL, 11, 2, 1, 3, 3, 0, 200, 2500, 2500, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 2500, NULL, NULL, '2019-03-03 04:40:10', '2019-03-03 04:40:10'),
(128, 'posr-20190404-095555', 1, NULL, 11, 2, 1, 2, 2, 0, 55.65, 560, 560, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 560, NULL, NULL, '2019-04-04 03:55:55', '2019-04-04 03:55:55'),
(129, 'posr-20190404-095937', 1, NULL, 11, 2, 1, 1, 2, 0, 0, 240, 240, 0, 0, NULL, NULL, 0, NULL, NULL, 0, 1, 2, NULL, 120, NULL, NULL, '2019-04-04 03:59:37', '2019-04-11 04:50:16'),
(130, 'posr-20190421-122124', 1, NULL, 11, 2, 1, 3, 3, 0, 58.78, 586, 586, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 586, NULL, NULL, '2019-04-21 06:21:24', '2019-04-21 06:21:24'),
(131, 'posr-20190528-103229', 1, NULL, 11, 2, 1, 4, 4, 0, 240, 2890, 2890, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 2890, NULL, NULL, '2019-05-28 04:32:29', '2019-05-28 04:32:29'),
(132, 'posr-20190613-101637', 1, NULL, 11, 2, 1, 3, 3, 0, 40, 840, 840, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 840, NULL, NULL, '2019-06-13 04:16:37', '2019-06-13 04:16:37'),
(133, 'posr-20190613-101751', 1, NULL, 11, 2, 1, 3, 4, 0, 200, 2700, 2700, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 2700, NULL, NULL, '2019-06-13 04:17:51', '2019-06-13 04:17:51'),
(134, 'posr-20191019-033028', 1, NULL, 11, 2, 1, 4, 4, 0, 240, 2940, 2940, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 2940, NULL, NULL, '2019-10-19 09:30:28', '2019-10-19 09:30:28'),
(138, 'sr-20191031-122937', 1, NULL, 1, 1, 1, 1, 1, 0, 0, 120, 120, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2019-10-31 06:29:37', '2019-10-31 06:29:37'),
(139, 'posr-20191103-114044', 1, NULL, 11, 2, 1, 2, 102, 0, 37.57, 488, 488, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 488, NULL, NULL, '2019-11-03 05:40:44', '2019-11-03 05:40:44'),
(144, 'posr-20191109-074131', 1, NULL, 11, 2, 1, 2, 2, 0, 100, 1220, 1220, 0, 0, NULL, NULL, 0, NULL, NULL, 0, 1, 4, NULL, 1220, NULL, NULL, '2019-11-09 13:41:31', '2019-11-09 13:41:31'),
(147, 'posr-20191111-104008', 1, NULL, 11, 2, 1, 3, 12, 0, 200, 2220, 2220, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 2220, NULL, NULL, '2019-11-11 04:40:08', '2019-11-11 04:40:08'),
(172, 'posr-20191203-034631', 1, NULL, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, NULL, NULL, '2019-12-03 09:46:31', '2019-12-03 09:46:31'),
(173, 'sr-20191204-111940', 1, NULL, 2, 1, 1, 2, 2, 0, 36, 621, 621, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 621, NULL, NULL, '2019-12-04 17:19:40', '2019-12-05 03:27:12'),
(187, 'posr-20191222-104058', 1, NULL, 11, 2, 1, 1, 2, 0, 37.57, 288, 288, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 288, NULL, NULL, '2019-12-22 04:40:58', '2019-12-22 04:40:58'),
(190, 'posr-20191223-125946', 1, NULL, 11, 2, 1, 1, 1, 0, 100, 1100, 1100, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 1100, NULL, NULL, '2019-12-23 06:59:46', '2019-12-23 06:59:46'),
(193, 'posr-20200101-022028', 1, NULL, 11, 2, 1, 1, 1, 0, 100, 1100, 1100, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 1100, NULL, NULL, '2020-01-01 08:20:28', '2020-01-01 08:20:28'),
(194, 'posr-20200102-043947', 1, NULL, 11, 2, 1, 2, 3, 0, 81.57, 892, 892, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 892, NULL, NULL, '2020-01-02 10:39:47', '2020-01-02 10:39:47'),
(201, 'posr-20200203-035256', 1, NULL, 11, 2, 1, 1, 1, 0, 0, 120, 120, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 120, NULL, NULL, '2020-02-03 09:52:56', '2020-02-03 09:52:56'),
(202, 'posr-20200204-105853', 1, NULL, 11, 2, 1, 2, 2, 0, 100, 1400, 1400, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 1400, NULL, NULL, '2020-02-04 16:58:53', '2020-02-04 16:58:53'),
(203, 'posr-20200302-115414', 1, NULL, 11, 2, 1, 2, 2, 0, 0, 350, 350, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 350, NULL, NULL, '2020-03-02 05:54:14', '2020-03-02 05:54:14'),
(204, 'posr-20200302-115741', 1, NULL, 11, 2, 1, 1, 20, 0, 0, 40, 40, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 40, NULL, NULL, '2020-03-02 05:57:41', '2020-03-02 05:57:41'),
(205, 'posr-20200311-044641', 1, NULL, 11, 2, 1, 1, 1, 0, 40, 440, 352, 0, 0, NULL, NULL, NULL, 1, 88, NULL, 1, 4, NULL, 352, NULL, NULL, '2020-03-11 10:46:42', '2020-03-11 10:46:42'),
(206, 'sr-20200311-045230', 1, NULL, 1, 1, 1, 1, 1, 0, 0, 120, 120, 0, 0, NULL, NULL, 0, NULL, NULL, 0, 1, 2, NULL, NULL, NULL, NULL, '2020-03-11 10:52:30', '2020-03-11 10:54:04'),
(207, 'posr-20200406-074024', 1, NULL, 11, 2, 1, 3, 4, 0, 18.78, 644, 644, 0, 0, NULL, NULL, 0, NULL, NULL, 0, 1, 4, NULL, 644, NULL, NULL, '2020-04-06 13:40:24', '2020-04-06 13:42:01'),
(208, 'posr-20200506-105950', 1, NULL, 11, 2, 1, 2, 2, 0, 140, 1540, 1540, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 1540, NULL, NULL, '2020-05-06 16:59:50', '2020-05-06 16:59:50'),
(209, 'posr-20200609-124248', 1, NULL, 11, 2, 1, 2, 2, 0, 100, 1220, 1220, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 1220, NULL, NULL, '2020-06-09 06:42:48', '2020-06-09 06:42:48'),
(212, 'posr-20200703-063914', 1, NULL, 11, 2, 1, 3, 3, 0, 235, 2585, 2585, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 2585, NULL, NULL, '2020-07-03 12:39:14', '2020-07-03 12:39:14'),
(213, 'posr-20200712-095153', 1, NULL, 11, 2, 1, 1, 1, 0, 0, 13, 13, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 13, NULL, NULL, '2020-07-12 15:51:53', '2020-07-12 15:51:53'),
(214, 'posr-20200714-115341', 1, NULL, 11, 2, 1, 1, 1, 0, 0, 250, 309.5, 10, 24.5, NULL, NULL, 5, NULL, NULL, 40, 3, 2, NULL, NULL, NULL, NULL, '2020-07-14 05:53:41', '2020-07-14 05:53:41'),
(217, 'posr-20200727-083808', 1, NULL, 11, 2, 1, 1, 1, 0, 35, 385, 385, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 385, NULL, NULL, '2020-07-27 14:38:08', '2020-07-27 14:38:08'),
(218, 'posr-20200727-084024', 1, NULL, 11, 2, 1, 1, 1, 0, 35, 385, 385, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 385, NULL, NULL, '2020-07-27 14:40:24', '2020-07-27 14:40:24'),
(219, 'posr-20200727-084644', 1, NULL, 11, 2, 1, 1, 1, 0, 35, 385, 385, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 385, NULL, NULL, '2020-07-27 14:46:45', '2020-07-27 14:46:45'),
(220, 'posr-20200812-062804', 1, NULL, 11, 2, 1, 3, 6, 0, 0, 760, 760, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 760, NULL, NULL, '2020-08-12 12:28:04', '2020-08-12 12:28:04'),
(221, 'posr-20200812-063035', 1, NULL, 11, 2, 1, 1, 1, 0, 100, 1100, 1100, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 1100, NULL, NULL, '2020-08-12 12:30:35', '2020-08-12 12:30:35'),
(222, 'posr-20200816-100424', 1, NULL, 11, 2, 1, 1, 2, 0, 3000, 23000, 23000, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 23000, NULL, NULL, '2020-08-16 16:04:24', '2020-08-16 16:04:24'),
(223, 'posr-20200816-100523', 1, NULL, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 440, NULL, NULL, '2020-08-16 16:05:23', '2020-08-16 16:07:35'),
(224, 'sr-20200826-080139', 1, NULL, 1, 1, 1, 1, 3, 30, 117, 1287, 1287, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2020-08-26 14:01:39', '2020-08-26 14:01:39'),
(230, 'posr-20201017-092852', 9, 2, 11, 1, 5, 1, 1, 0, 0, 250, 250, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, 350, NULL, NULL, '2020-10-17 15:28:52', '2020-10-18 04:51:38'),
(231, 'sr-20201018-111333', 9, 2, 1, 1, 5, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, 250, NULL, NULL, '2020-10-18 05:13:33', '2020-10-18 05:17:24'),
(232, 'posr-20201022-013014', 9, 2, 11, 1, 5, 1, 1, 0, 0, 100, 100, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 100, NULL, NULL, '2020-10-22 07:30:14', '2020-10-22 07:30:14'),
(233, 'posr-20201022-015604', 1, 3, 11, 1, 1, 1, 1, 0, 0, 250, 250, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 250, NULL, NULL, '2020-10-22 07:56:04', '2020-10-22 07:56:04'),
(234, 'posr-20201024-070506', 1, 4, 11, 2, 1, 1, 1, 0, 1500, 11500, 11500, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 11500, NULL, NULL, '2020-10-24 01:05:06', '2020-10-24 01:05:06'),
(235, 'posr-20201024-070751', 1, 4, 11, 2, 1, 1, 1, 0, 0, 250, 250, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 250, NULL, NULL, '2020-10-24 01:07:51', '2020-10-24 01:07:51'),
(237, 'posr-20201024-034601', 1, 4, 11, 2, 1, 3, 9, 0, 7900, 61900, 61900, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 61900, NULL, NULL, '2020-10-24 09:46:01', '2020-10-24 09:46:01'),
(239, 'posr-20201027-054002', 1, 3, 11, 1, 1, 1, 1, 0, 0, 2, 2, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 2, NULL, NULL, '2020-10-26 23:40:02', '2020-10-26 23:40:02'),
(240, 'posr-20201027-054206', 1, 3, 11, 1, 1, 1, 2, 0, 0, 6, 6, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 6, NULL, NULL, '2020-10-26 23:42:06', '2020-10-26 23:42:06'),
(241, 'posr-20201027-063200', 1, 4, 11, 2, 1, 1, 1, 0, 0, 250, 250, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 250, NULL, NULL, '2020-10-27 00:32:00', '2020-10-27 00:32:00'),
(242, 'posr-20201029-073030', 1, 4, 11, 2, 1, 1, 1, 0, 0, 250, 250, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 250, NULL, NULL, '2020-10-29 01:30:30', '2020-10-29 01:30:30'),
(243, 'posr-20201101-072112', 1, 4, 11, 2, 1, 1, 1, 0, 0, 250, 250, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 250, NULL, NULL, '2020-11-01 01:21:12', '2020-11-01 01:21:12'),
(245, 'posr-20201101-074223', 1, 3, 11, 1, 5, 2, 3, 0, 80, 1130, 1130, NULL, 0, NULL, NULL, 0, NULL, NULL, 0, 1, 4, NULL, 1130, NULL, NULL, '2020-11-01 01:42:23', '2020-11-01 01:42:23'),
(246, 'posr-20201101-075017', 1, 4, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, 0, NULL, NULL, 0, 1, 4, NULL, 440, 'ssss\r\nssas', 'hhhh\r\nkkkk', '2020-11-01 01:50:17', '2020-11-02 10:39:17'),
(250, 'posr-20201106-013041', 1, 4, 11, 2, 1, 1, 1, 0, 34.4, 378.4, 378.4, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 378.4, NULL, NULL, '2020-11-06 07:30:41', '2020-11-06 07:30:41'),
(251, 'posr-20201109-011524', 1, 4, 19, 2, 1, 2, 2, 0, 34.4, 610.6, 610.6, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, 500, NULL, NULL, '2020-11-09 07:15:24', '2020-11-09 07:15:24'),
(252, 'posr-20201111-055858', 1, 3, 11, 1, 1, 1, 1, 0, 0, 229.5, 229.5, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 229.5, NULL, NULL, '2020-11-10 23:58:58', '2020-11-10 23:58:58'),
(253, 'posr-20201114-064736', 1, 4, 11, 2, 1, 3, 3, 0, 1275, 10242.5, 10242.5, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 10242.5, NULL, NULL, '2020-11-14 00:47:36', '2020-11-14 00:47:36'),
(256, 'posr-20201117-064748', 1, 4, 11, 2, 1, 2, 2, 0, 65, 715, 715, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 715, NULL, NULL, '2020-11-17 00:47:48', '2020-11-17 00:47:48'),
(257, 'posr-20201117-070919', 1, 4, 11, 2, 1, 1, 1, 0, 0, 250, 250, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 250, NULL, NULL, '2020-11-17 01:09:19', '2020-11-17 01:09:19'),
(258, 'posr-20201118-065239', 1, 4, 11, 2, 1, 1, 3, 0, 4500, 34500, 27200, 0, 0, NULL, NULL, 600, 1, 6800, 100, 1, 4, NULL, 27200, NULL, NULL, '2020-11-18 00:52:39', '2020-11-18 00:52:39'),
(262, '1111', 1, 3, 1, 1, 1, 1, 2, 0, 3000, 23000, 23000, 0, 0, NULL, NULL, 0, NULL, NULL, 0, 1, 1, NULL, NULL, NULL, NULL, '2020-11-28 23:21:30', '2020-11-28 23:21:30'),
(263, 'posr-20201208-093957', 1, 4, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, 350, NULL, NULL, '2020-12-08 03:39:57', '2021-01-06 08:23:50'),
(270, 'sr-20210111-014535', 1, 3, 1, 1, 1, 2, 2, 0, 137.57, 1388, 1388, 0, 0, NULL, NULL, 0, NULL, NULL, 0, 1, 2, NULL, NULL, NULL, NULL, '2021-01-11 07:45:35', '2021-01-11 07:58:44'),
(271, 'posr-20210111-021625', 1, 3, 19, 1, 2, 3, 4, 0, 98.78, 1274, 1274, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 1274, NULL, NULL, '2021-01-11 08:16:25', '2021-01-11 08:16:25'),
(274, 'posr-20210113-070243', 1, 4, 11, 2, 1, 4, 15, 40, 91.65, 1556, 1556, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 1556, NULL, NULL, '2021-01-13 01:02:43', '2021-01-13 01:02:43'),
(275, 'posr-20210201-023748', 1, 4, 11, 2, 1, 1, 1, 0, 40, 440, 484, 10, 44, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 484, NULL, NULL, '2021-02-01 08:37:48', '2021-02-01 08:37:48'),
(277, 'posr-20210216-070948', 1, 4, 11, 2, 1, 15, 15, 0, 1758.78, 15156, 15156, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 15156, NULL, NULL, '2021-02-16 01:09:48', '2021-02-16 01:09:48'),
(278, 'posr-20210217-073238', 1, 4, 11, 2, 1, 5, 6, 0, 3140, 24910, 26949.9, 10, 2440.9, NULL, NULL, 501, NULL, NULL, 100, 1, 4, NULL, 26949.9, NULL, NULL, '2021-02-17 01:32:38', '2021-02-17 01:32:38'),
(279, 'sr-20210311-014034', 1, 3, 1, 1, 1, 1, 2, 0, 0, 4, 4, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2021-03-11 07:40:34', '2021-03-11 07:40:34'),
(280, 'sr-20210317-041411', 1, 3, 1, 1, 1, 1, 1, 0, 0, 2, 2, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2021-03-16 22:14:11', '2021-03-16 22:14:11'),
(282, 'sr-20210318-054729', 1, 3, 1, 2, 1, 1, 1, 0, 0, 2, 2, 0, 0, NULL, NULL, 0, NULL, NULL, 0, 1, 2, NULL, NULL, NULL, NULL, '2021-03-17 23:47:29', '2021-03-20 04:59:57'),
(288, 'sr-20210412-014046', 1, 3, 11, 1, 1, 1, 1, 0, 0, 120, 120, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2021-04-12 07:40:46', '2021-04-12 07:40:46'),
(289, 'posr-20210524-071424', 1, 4, 11, 2, 1, 2, 2, 0, 40, 690, 640, 0, 0, NULL, NULL, 50, NULL, NULL, NULL, 1, 4, NULL, 640, NULL, NULL, '2021-05-24 13:14:24', '2021-05-24 13:14:24'),
(290, 'sr-20210524-071512', 1, 3, 1, 1, 1, 1, 1, 0, 0, 120, 120, 0, 0, NULL, NULL, 0, NULL, NULL, 0, 1, 4, NULL, 120, NULL, NULL, '2021-05-24 13:15:12', '2021-05-24 13:46:47'),
(294, 'posr-20210601-123530', 1, 4, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 440, NULL, NULL, '2021-06-01 06:35:30', '2021-06-01 06:35:30'),
(295, 'posr-20210601-032209', 1, 3, 11, 1, 1, 1, 1, 0, 0, 2, 2, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 2, NULL, NULL, '2021-06-01 09:22:09', '2021-06-01 09:22:09'),
(296, 'posr-20210601-034624', 1, 3, 11, 1, 1, 1, 1, 0, 0, 2, 2, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 2, NULL, NULL, '2021-06-01 09:46:24', '2021-06-01 09:46:24'),
(297, 'posr-20210601-074150', 9, 2, 11, 1, 5, 1, 1, 0, 0, 250, 250, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 250, NULL, NULL, '2021-06-01 13:41:50', '2021-06-01 13:41:50'),
(298, 'posr-20210601-075547', 9, 2, 11, 1, 5, 1, 1, 0, 0, 2, 2, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 2, NULL, NULL, '2021-06-01 13:55:47', '2021-06-01 13:55:47'),
(299, 'posr-20210616-105325', 1, 4, 11, 2, 1, 1, 1, 0, 100, 1100, 1100, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 1100, NULL, NULL, '2021-06-16 04:53:25', '2021-06-16 04:53:25'),
(300, 'posr-20210616-111033', 1, 4, 19, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 440, NULL, NULL, '2021-06-16 05:10:33', '2021-06-16 05:10:33'),
(301, 'posr-20210616-111111', 1, 4, 19, 2, 1, 2, 2, 0, 200, 2200, 2200, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 2200, NULL, NULL, '2021-06-16 05:11:11', '2021-06-16 05:11:11'),
(302, 'posr-20210616-080452', 1, 4, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 440, NULL, NULL, '2021-06-16 14:04:52', '2021-06-16 14:04:52'),
(303, 'posr-20210616-080543', 1, 4, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 440, NULL, NULL, '2021-06-16 14:05:43', '2021-06-16 14:05:43'),
(304, 'posr-20210616-080634', 1, 4, 19, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 440, NULL, NULL, '2021-06-16 14:06:34', '2021-06-17 06:13:59'),
(305, 'posr-20210616-082842', 1, 4, 19, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 440, NULL, NULL, '2021-06-16 14:28:42', '2021-06-16 14:28:42'),
(306, 'sr-20210617-115553', 1, 3, 19, 1, 1, 1, 1, 0, 100, 1100, 1100, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 1100, NULL, NULL, '2021-06-17 05:55:53', '2021-06-17 05:55:53'),
(307, 'sr-20210617-122349', 1, 3, 19, 1, 1, 1, 2, 0, 200, 2200, 2200, 0, 0, NULL, NULL, 0, NULL, NULL, 0, 1, 2, NULL, 100, NULL, NULL, '2021-06-17 06:23:49', '2021-06-17 09:00:13'),
(308, 'posr-20210618-083127', 1, 4, 11, 2, 1, 2, 5, 0, 157.57, 1608, 1608, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 1608, NULL, NULL, '2021-06-18 14:31:27', '2021-06-18 14:31:27'),
(309, 'posr-20210618-083254', 1, 3, 11, 1, 1, 1, 1, 0, 0, 2, 2, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 2, NULL, NULL, '2021-06-18 14:32:54', '2021-06-18 14:32:54'),
(310, 'posr-20210619-105121', 1, 4, 11, 2, 1, 6, 6, 0, 58.78, 958, 958, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 958, NULL, NULL, '2021-06-19 04:51:21', '2021-06-19 04:51:21'),
(311, 'sr-20210619-105344', 1, 5, 11, 1, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2021-06-19 04:53:44', '2021-06-19 04:53:44'),
(312, 'posr-20210619-110231', 1, 4, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 440, NULL, NULL, '2021-06-19 05:02:31', '2021-06-19 05:02:31'),
(313, 'posr-20210619-110628', 1, 4, 19, 2, 1, 1, 1, 0, 0, 250, 250, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 250, NULL, NULL, '2021-06-19 05:06:28', '2021-06-19 05:06:28'),
(314, 'posr-20210627-124247', 1, 4, 11, 2, 1, 1, 1, 0, 100, 1100, 1100, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 1100, NULL, NULL, '2021-06-27 06:42:47', '2021-06-27 06:42:47'),
(317, 'posr-20210707-103455', 1, 4, 11, 2, 1, 1, 1, 0, 0, 18, 18, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 18, NULL, NULL, '2021-07-07 04:34:55', '2021-07-07 04:34:55'),
(325, 'posr-20210814-092805', 1, 4, 11, 2, 1, 1, 2, 0, 0, 2400, 2400, 0, 0, NULL, NULL, 0, NULL, NULL, 0, 1, 2, NULL, 1250, NULL, NULL, '2021-08-14 15:28:05', '2021-08-14 15:34:27'),
(333, 'posr-20210921-010722', 1, 4, 11, 2, 1, 1, 1, 0, 0, 2, 2, NULL, 0, NULL, NULL, 0, NULL, NULL, 0, 1, 4, NULL, 2, NULL, NULL, '2021-09-21 07:07:22', '2021-09-21 07:07:22'),
(334, 'posr-20210921-035020', 1, 4, 11, 2, 1, 1, 1, 0, 0, 120, 120, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 120, NULL, NULL, '2021-09-21 09:50:20', '2021-09-21 09:50:20'),
(335, 'posr-20210923-024704', 1, 4, 11, 2, 1, 1, 0.5, 0, 0, 11, 11, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 11, NULL, NULL, '2021-09-23 08:47:04', '2021-09-23 08:47:04'),
(336, 'posr-20211003-051829', 1, 4, 11, 2, 1, 2, 2, 0, 100, 1220, 1220, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 1220, NULL, NULL, '2021-10-03 11:18:29', '2021-10-03 11:18:29'),
(338, 'posr-20211003-054404', 1, 4, 11, 2, 1, 1, 1, 0, 100, 1100, 1100, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 1100, NULL, NULL, '2021-10-03 11:44:04', '2021-10-03 11:44:04'),
(340, 'posr-20211007-025229', 1, 4, 11, 2, 1, 1, 1, 0, 100, 1100, 1100, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 1100, NULL, NULL, '2021-10-07 08:52:29', '2021-10-07 08:52:29'),
(341, 'posr-20211007-033840', 1, 4, 11, 2, 1, 1, 1, 0, 100, 1100, 1100, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 1100, NULL, NULL, '2021-10-07 09:38:40', '2021-10-07 09:38:40'),
(342, 'sr-20211009-121242', 1, 4, 11, 2, 1, 2, 3, 0, 200, 2320, 2320, 0, 0, NULL, NULL, 0, NULL, NULL, 0, 1, 2, NULL, NULL, NULL, NULL, '2021-10-09 06:12:42', '2021-10-09 10:22:39'),
(343, 'sr-20211009-043232', 1, 4, 11, 2, 1, 1, 2, 0, 200, 2200, 2200, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2021-10-09 10:32:32', '2021-10-09 10:32:32'),
(348, 'posr-20211014-035820', 1, 4, 19, 2, 1, 1, 1, 0, 100, 1100, 1100, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 1100, NULL, NULL, '2021-10-14 09:58:20', '2021-10-14 09:58:20'),
(349, 'posr-20211020-011209', 1, 4, 11, 2, 1, 1, 1, 0, 0, 102, 102, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 102, NULL, NULL, '2021-10-20 07:12:09', '2021-10-20 07:12:09'),
(353, 'posr-20211114-013929', 1, 4, 11, 2, 1, 1, 1, 0, 34, 374, 374, NULL, 0, NULL, NULL, 0, NULL, NULL, 0, 1, 4, NULL, 374, NULL, NULL, '2021-11-14 07:39:29', '2021-11-14 07:39:29'),
(354, 'sr-20211115-120309', 1, 4, 11, 2, 1, 3, 3, 0, 140, 1542, 1542, 0, 0, NULL, NULL, 0, NULL, NULL, 0, 1, 1, NULL, NULL, NULL, NULL, '2021-11-15 06:03:09', '2021-11-15 06:03:09'),
(355, 'posr-20211124-062857', 1, 4, 11, 2, 1, 5, 6, 0, 240, 3161, 3161, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 3161, NULL, NULL, '2021-11-24 12:28:57', '2021-11-24 12:28:57'),
(356, 'posr-20211207-070932', 1, 4, 11, 2, 1, 3, 3, 0, 40, 573, 573, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 573, NULL, NULL, '2021-12-07 13:09:32', '2021-12-07 13:09:32'),
(360, 'posr-20211222-070313', 1, 4, 11, 2, 1, 1, 2, 0, 3.13, 24, 24, 0, 0, NULL, NULL, 0, NULL, NULL, 0, 1, 4, NULL, 24, NULL, NULL, '2021-12-22 13:03:13', '2022-01-30 07:37:54'),
(362, 'posr-20220203-035931', 1, 4, 19, 2, 1, 1, 2, 0, 0, 8.5, 8.5, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 8.5, NULL, NULL, '2022-02-03 09:59:31', '2022-02-03 09:59:31'),
(363, 'posr-20220203-070547', 1, 4, 19, 2, 1, 4, 5, 0, 0, 521, 521, 0, 0, 'Flat', 0, 0, NULL, NULL, 0, 1, 2, NULL, 466, NULL, NULL, '2022-02-02 18:00:00', '2022-03-08 08:25:13'),
(364, 'posr-20220205-054526', 1, 4, 11, 2, 1, 1, 1, 0, 40, 440, 396, 0, 0, 'Percentage', 10, 44, NULL, NULL, 0, 1, 4, NULL, 396, NULL, NULL, '2022-02-05 11:45:26', '2022-02-05 13:31:58'),
(365, 'posr-20220205-054616', 1, 4, 11, 2, 1, 1, 1, 0, 0, 250, 240, 0, 0, 'Flat', 10, 10, NULL, NULL, 0, 1, 4, NULL, 240, NULL, NULL, '2022-02-05 11:46:16', '2022-02-05 13:31:09'),
(372, 'sr-20220219-120815', 1, 5, 11, 1, 1, 1, 1, 0, 0, 120, 108, 0, 0, 'Percentage', 10, 12, NULL, NULL, 0, 1, 2, NULL, NULL, NULL, NULL, '2022-02-16 18:00:00', '2022-02-20 15:15:54'),
(376, 'sr-20220220-083638', 1, 5, 11, 1, 1, 1, 1, 0, 40, 440, 440, 0, 0, 'Flat', 0, 0, NULL, NULL, 0, 1, 2, NULL, NULL, NULL, NULL, '2022-02-19 18:00:00', '2022-02-20 15:15:23'),
(377, 'posr-20220227-115905', 1, 4, 11, 2, 1, 2, 3, 0, 0, 620, 620, 0, 0, 'Flat', 0, 0, NULL, NULL, 0, 1, 2, NULL, 521, NULL, NULL, '2022-02-26 18:00:00', '2022-03-12 13:12:38'),
(379, 'posr-20220309-115901', 1, 4, 11, 2, 1, 3, 3, 0, 140, 1790, 1790, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 1790, NULL, NULL, '2022-03-09 05:59:01', '2022-03-09 05:59:01'),
(380, 'posr-20220312-082027', 1, NULL, 11, 2, 1, 1, 1, 0, 40, 440, 440, 0, 0, 'Flat', 0, 0, NULL, NULL, 0, 1, 4, NULL, 440, 'jhjkhjk\r\nkjkljkljkl\r\nkkljkljklj', NULL, '2022-03-11 18:00:00', '2022-03-13 05:37:35'),
(381, 'sr-20220312-082452', 1, NULL, 11, 1, 1, 2, 2, 0, 0, 360, 360, 0, 0, 'Flat', 0, 0, NULL, NULL, 0, 1, 2, NULL, 350, NULL, NULL, '2022-03-11 18:00:00', '2022-03-12 14:26:22'),
(382, 'posr-20220424-110144', 1, 6, 11, 2, 1, 3, 3, 0, 100, 1225, 1225, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 1225, NULL, NULL, '2022-04-24 05:01:44', '2022-04-24 05:01:44'),
(383, 'sr-20220513-031014', 1, NULL, 11, 1, 2, 1, 1, 0, 0, 4150, 4150, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2022-05-12 18:00:00', '2022-05-13 09:10:14'),
(384, '01718297412', 1, NULL, 1, 1, 1, 1, 2, 0, 0, 8300, 8300, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2022-05-19 00:00:00', '2022-05-19 10:33:27'),
(385, 'posr-20220525-015527', 1, 6, 11, 2, 1, 1, 1, 0, 0, 130, 120, 0, 0, 'Flat', 10, 10, NULL, NULL, NULL, 1, 4, NULL, 120, NULL, NULL, '2022-05-25 13:55:27', '2022-05-25 13:55:27'),
(386, 'posr-20220525-082817', 1, 7, 31, 1, 1, 1, 1, 0, 0, 620, 580, 0, 0, 'Flat', 40, 40, NULL, NULL, NULL, 1, 4, NULL, 580, '80 taka due', NULL, '2022-05-25 00:00:00', '2022-05-25 20:28:17'),
(387, 'posr-20220601-050047', 1, 7, 32, 1, 10, 1, 1, 0, 0, 1100, 1100, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 1100, NULL, NULL, '2022-06-01 17:00:47', '2022-06-01 17:00:47'),
(388, 'posr-20220616-062820', 1, 7, 30, 1, NULL, 1, 1, 0, 0, 410, 410, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 410, NULL, NULL, '2022-06-16 18:28:20', '2022-06-16 18:28:20'),
(389, 'sr-20220806-070420', 1, 7, 32, 1, 10, 1, 19, 0, 0, 11590, 11590, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 3, NULL, 1, NULL, NULL, '2022-08-06 00:00:00', '2022-08-06 19:04:20'),
(390, 'posr-20220806-072954', 1, 7, 32, 1, 10, 1, 400, 0, 0, 16000, 11200, 0, 0, 'Flat', 4800, 4800, NULL, NULL, NULL, 1, 4, NULL, 11200, NULL, NULL, '2022-08-06 00:00:00', '2022-08-06 19:29:54'),
(391, 'posr-20220807-082728', 1, 7, 30, 1, 10, 1, 50, 0, 0, 2500, 2500, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 2500, NULL, NULL, '2022-08-07 20:27:28', '2022-08-07 20:27:28'),
(392, 'posr-20220807-082825', 1, 7, 30, 1, 11, 1, 50, 0, 0, 2500, 2500, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 2500, 'j', 'yuitr6ryur', '2022-08-07 20:28:25', '2022-08-07 20:28:25'),
(393, 'posr-20220807-083003', 1, 7, 32, 1, 12, 1, 1, 0, 0, 410, 410, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 410, 'j', 'yuitr6ryur', '2022-08-07 20:30:03', '2022-08-07 20:30:03'),
(394, 'posr-20220825-113847', 38, 12, 30, 1, 10, 1, 1, 0, 0, 1050, 1050, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 1050, NULL, NULL, '2022-08-25 11:38:47', '2022-08-25 11:38:47'),
(395, 'posr-20220825-114005', 38, 12, 31, 1, 10, 1, 1, 0, 0, 410, 410, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 410, 'cfb', 'vcbvcb', '2022-08-25 11:40:05', '2022-08-25 11:40:05'),
(396, 'posr-20220905-072059', 38, 12, 52, 1, 10, 1, 1, 0, 0, 540, 540, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 540, NULL, NULL, '2022-09-05 00:00:00', '2022-09-05 19:20:59'),
(397, 'posr-20220906-020006', 38, 12, 33, 1, 10, 1, 1, 0, 0, 130, 100, 0, 0, 'Flat', 30, 30, NULL, NULL, NULL, 1, 4, NULL, 100, NULL, NULL, '2022-09-06 00:00:00', '2022-09-06 14:00:06'),
(398, 'posr-20220906-040906', 38, 12, 33, 1, 10, 1, 2, 0, 0, 960, 960, 0, 0, 'Flat', NULL, 0, NULL, NULL, NULL, 1, 4, NULL, 960, NULL, NULL, '2022-09-06 00:00:00', '2022-09-06 16:09:06');

-- --------------------------------------------------------

--
-- Table structure for table `stock_counts`
--

CREATE TABLE `stock_counts` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `category_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `initial_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `final_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_adjusted` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock_counts`
--

INSERT INTO `stock_counts` (`id`, `reference_no`, `warehouse_id`, `category_id`, `brand_id`, `user_id`, `type`, `initial_file`, `final_file`, `note`, `is_adjusted`, `created_at`, `updated_at`) VALUES
(1, 'scr-20190228-124939', 2, NULL, NULL, 1, 'full', '20190228-124939.csv', NULL, NULL, 0, '2019-02-28 06:49:39', '2019-02-28 06:49:39'),
(4, 'scr-20220202-083105', 1, '2', NULL, 1, 'partial', '20220202-083105.csv', NULL, NULL, 0, '2022-02-02 14:31:05', '2022-02-02 14:31:05');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `email`, `image`, `company_name`, `vat_number`, `phone_number`, `address`, `city`, `state`, `postal_code`, `country`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'abdullah', NULL, 'globaltouch.jpg', 'global touch', NULL, '231231', 'fsdfs', 'fsdfs', NULL, NULL, 'bd', 0, '2018-05-12 22:06:34', '2022-05-25 13:49:45'),
(2, 'test', NULL, 'lion.jpg', 'lion', NULL, '242', 'gfdg', 'fgd', NULL, NULL, NULL, 0, '2018-05-29 23:59:41', '2018-05-30 00:00:06'),
(3, 'ismail', NULL, NULL, 'techbd', NULL, '23123123', 'mohammadpur', 'dhaka', NULL, NULL, 'bangladesh', 0, '2018-07-20 04:34:17', '2022-05-25 13:49:56'),
(4, 'modon', NULL, 'mogaFruit.jpg', 'mogaFruit', NULL, '32321', 'nasirabad', 'chittagong', NULL, NULL, 'bd', 0, '2018-09-01 04:30:07', '2018-09-01 04:37:20'),
(5, 'sadman', NULL, NULL, 'anda boda', 'dsa', '3212313', 'dadas', 'sdad', 'Other', '1312', 'Australia', 0, '2020-06-22 09:48:33', '2020-06-22 09:48:52'),
(6, 'Caltex', NULL, 'RockEnergyLTD.png', 'Rock Energy LTD', NULL, '111', 'House 16, Road 09, Gulshan - 1, Dhaka', 'Dhaka', NULL, '1212', 'Bangladesh', 1, '2022-05-25 13:49:24', '2022-05-25 17:51:52'),
(7, 'Detail Boss', NULL, 'TheDetailboss.png', 'The Detail boss', NULL, '0177993300', 'New Bypass mor, Medical college road', 'Jamalpur', 'Mymensing', '2000', 'Bangladesh', 1, '2022-05-25 13:52:11', '2022-05-25 14:33:52'),
(8, 'Liqui Moly', NULL, 'DewanMotors.png', 'Dewan Motors', NULL, '1441', 'dhk', 'Dhaka', NULL, NULL, NULL, 1, '2022-05-25 14:23:50', '2022-05-25 17:52:12'),
(9, 'Motul', NULL, 'RoyalEnterprise.png', 'Royal Enterprise', NULL, '111', 'Rajshahi', 'hgfh', NULL, NULL, NULL, 1, '2022-05-25 14:25:51', '2022-05-25 17:52:30'),
(10, 'Bhuiya', NULL, 'Bhuiyacorporation.png', 'Bhuiya corporation', NULL, '242', 'Wari', 'dhaka', NULL, NULL, NULL, 1, '2022-05-25 14:29:27', '2022-05-25 18:12:17'),
(11, 'Eneos', NULL, 'PetroliumProdutsandLubricant.jpeg', 'Petrolium Produts and Lubricant', NULL, '42424', 'Mirpur DOHS', 'kk', NULL, NULL, NULL, 1, '2022-05-25 14:38:44', '2022-05-25 17:53:04'),
(12, 'Lube one', NULL, NULL, 'Lube One', NULL, '65454', 'Dhk', 'dhk', NULL, NULL, NULL, 1, '2022-05-25 18:02:30', '2022-05-25 18:02:30'),
(13, 'tofael ahmed', NULL, 'etotalsports.jpg', 'etotalsports', '25', '01839974201', 'dhaka', 'jamtoli', 'Jamalpur', '2000', 'Bangladesh', 0, '2022-05-27 16:43:36', '2022-05-27 16:44:27'),
(14, 'R K Auto', NULL, 'RKAutokhulna.png', 'R K Auto khulna', NULL, '01611079909', 'Fulbaria gate', 'Khulna', NULL, NULL, NULL, 1, '2022-06-01 15:39:48', '2022-06-01 15:39:48'),
(15, 'Auto corner', NULL, NULL, 'Auto corner', NULL, '01730576943', 'R N Road, Jessore', 'Jessore', NULL, NULL, NULL, 1, '2022-08-06 19:16:20', '2022-08-06 19:16:20'),
(16, 'Toyama Lubricant', NULL, NULL, 'Toyama Lubricant', NULL, '01748437126', 'Mymensing', 'Mymensing', NULL, NULL, NULL, 1, '2022-08-27 13:58:18', '2022-08-27 13:58:18'),
(17, 'Super V', NULL, NULL, 'R Hasan Enterprise', NULL, '01911154499', 'Sordarpara', 'Jamalpur', NULL, NULL, NULL, 1, '2022-08-27 15:32:01', '2022-08-27 15:32:01');

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` double NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `name`, `rate`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'vat@10', 10, 1, '2018-05-12 09:58:30', '2019-03-02 11:46:10'),
(2, 'vat@15', 15, 1, '2018-05-12 09:58:43', '2018-05-27 23:35:05'),
(3, 'test', 6, 0, '2018-05-27 23:32:54', '2018-05-27 23:34:44'),
(4, 'vat 20', 20, 1, '2018-09-01 00:58:57', '2018-09-01 00:58:57');

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `from_warehouse_id` int(11) NOT NULL,
  `to_warehouse_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transfers`
--

INSERT INTO `transfers` (`id`, `reference_no`, `user_id`, `status`, `from_warehouse_id`, `to_warehouse_id`, `item`, `total_qty`, `total_tax`, `total_cost`, `shipping_cost`, `grand_total`, `document`, `note`, `created_at`, `updated_at`) VALUES
(1, 'tr-20180808-051710', 1, 1, 2, 1, 1, 100, 0, 100, 0, 100, NULL, NULL, '2018-08-08 11:17:10', '2018-12-24 22:16:55'),
(6, 'tr-20191205-075504', 1, 1, 1, 2, 1, 1, 0, 2, 0, 2, NULL, NULL, '2019-12-05 13:55:04', '2019-12-05 14:09:42'),
(8, 'tr-20200122-123058', 1, 1, 1, 2, 1, 10, 0, 1000, NULL, 1000, NULL, NULL, '2020-01-22 06:30:58', '2020-01-22 06:30:58'),
(10, 'tr-20201008-012735', 9, 1, 1, 2, 1, 1, 32, 352, 0, 352, NULL, NULL, '2020-10-08 07:27:35', '2020-10-08 07:29:35'),
(11, 'tr-20201018-061708', 9, 1, 1, 2, 1, 1, 0, 1, NULL, 1, NULL, NULL, '2020-10-18 12:17:08', '2020-10-18 12:17:08'),
(12, 'tr-20201024-090146', 1, 1, 2, 1, 1, 10, 4500, 34500, NULL, 34500, NULL, NULL, '2020-10-24 03:01:46', '2020-10-24 03:01:46'),
(21, 'tr-20220309-114411', 1, 1, 1, 2, 1, 5, 0, 500, 0, 500, NULL, 'jhjkjk\r\njhkjhkhk\r\njjkjkhkhkh', '2022-03-05 18:00:00', '2022-03-13 06:12:08');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` int(10) UNSIGNED NOT NULL,
  `unit_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `base_unit` int(11) DEFAULT NULL,
  `operator` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `operation_value` double DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `unit_code`, `unit_name`, `base_unit`, `operator`, `operation_value`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'pc', 'Piece', NULL, '*', 1, 1, '2018-05-12 02:27:46', '2018-08-17 21:41:53'),
(2, 'dozen', 'dozen box', 1, '*', 12, 1, '2018-05-12 09:57:05', '2018-05-12 09:57:05'),
(3, 'cartoon', 'cartoon box', 1, '*', 24, 1, '2018-05-12 09:57:45', '2020-03-11 10:36:59'),
(4, 'm', 'meter', NULL, '*', 1, 1, '2018-05-12 09:58:07', '2018-05-27 23:20:57'),
(6, 'test', 'test', NULL, '*', 1, 0, '2018-05-27 23:20:20', '2018-05-27 23:20:25'),
(7, 'kg', 'kilogram', NULL, '*', 1, 1, '2018-06-25 00:49:26', '2018-06-25 00:49:26'),
(8, '20', 'ni33', 8, '*', 1, 0, '2018-07-31 22:35:51', '2018-07-31 22:40:54'),
(9, 'gm', 'gram', 7, '/', 1000, 1, '2018-09-01 00:06:28', '2018-09-01 00:06:28'),
(10, 'gz', 'goz', NULL, '*', 1, 0, '2018-11-29 03:40:29', '2019-03-02 11:53:29');

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
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `biller_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `phone`, `company_name`, `role_id`, `biller_id`, `warehouse_id`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'Mimon', 'massruzzaman@hotmail.com', '$2y$10$w42Pm9l/of/Z4BfDrzLWCe41K2MSd3KJ881IuN5c.eTdHFtoweB02', '4nyVF57gil04gbCcBBLMsP7p3S3yL4twgjekpsDyDLOOfaNb3mebLlbe3WZp', '01711873583', 'The Detail Boss', 2, NULL, NULL, 0, 1, '2018-06-02 03:24:15', '2022-09-05 11:55:54'),
(3, 'dhiman da', 'dhiman@gmail.com', '$2y$10$Fef6vu5E67nm11hX7V5a2u1ThNCQ6n9DRCvRF9TD7stk.Pmt2R6O.', '5ehQM6JIfiQfROgTbB5let0Z93vjLHS7rd9QD5RPNgOxli3xdo7fykU7vtTt', '212', 'lioncoders', 1, NULL, NULL, 0, 1, '2018-06-13 22:00:31', '2020-11-05 07:06:51'),
(6, 'test', 'test@gmail.com', '$2y$10$TDAeHcVqHyCmurki0wjLZeIl1SngKX3WLOhyTiCoZG3souQfqv.LS', 'KpW1gYYlOFacumklO2IcRfSsbC3KcWUZzOI37gqoqM388Xie6KdhaOHIFEYm', '1234', '212312', 4, NULL, NULL, 0, 1, '2018-06-23 03:05:33', '2018-06-23 03:13:45'),
(8, 'test', 'test@yahoo.com', '$2y$10$hlMigidZV0j2/IPkgE/xsOSb8WM2IRlsMv.1hg1NM7kfyd6bGX3hC', NULL, '31231', NULL, 4, NULL, NULL, 0, 1, '2018-06-24 22:35:49', '2018-07-02 01:07:39'),
(9, 'staff', 'anda@gmail.com', '$2y$10$kxDbnynB6mB1e1w3pmtbSOlSxy/WwbLPY5TJpMi0Opao5ezfuQjQm', 'tk1I2SR4JmrgmaE9A8lG1vYsNKmA1NQqkTFJMKnPPaKbZQW72WL5r38RnnZE', '3123', NULL, 4, 5, 1, 0, 1, '2018-07-02 01:08:08', '2022-05-27 21:03:40'),
(10, 'abul', 'abul@alpha.com', '$2y$10$5zgB2OOMyNBNVAd.QOQIju5a9fhNnTqPx5H6s4oFlXhNiF6kXEsPq', 'x7HlttI5bM0vSKViqATaowHFJkLS3PHwfvl7iJdFl5Z1SsyUgWCVbLSgAoi0', '1234', 'anda', 1, NULL, NULL, 0, 1, '2018-09-07 23:44:48', '2022-05-27 21:03:40'),
(11, 'teststaff', 'a@a.com', '$2y$10$5KNBIIhZzvvZEQEhkHaZGu.Q8bbQNfqYvYgL5N55B8Pb4P5P/b/Li', 'DkHDEcCA0QLfsKPkUK0ckL0CPM6dPiJytNa0k952gyTbeAyMthW3vi7IRitp', '111', 'aa', 4, 5, 1, 0, 1, '2018-10-22 02:47:56', '2018-10-23 02:10:56'),
(12, 'john', 'john@gmail.com', '$2y$10$P/pN2J/uyTYNzQy2kRqWwuSv7P2f6GE/ykBwtHdda7yci3XsfOKWe', 'O0f1WJBVjT5eKYl3Js5l1ixMMtoU6kqrH7hbHDx9I1UCcD9CmiSmCBzHbQZg', '10001', NULL, 4, 2, 2, 0, 1, '2018-12-30 00:48:37', '2019-03-06 04:59:49'),
(13, 'jjj', 'test@test.com', '$2y$10$/Qx3gHWYWUhlF1aPfzXaCeZA7fRzfSEyCIOnk/dcC4ejO8PsoaalG', NULL, '1213', NULL, 1, NULL, NULL, 0, 1, '2019-01-03 00:08:31', '2019-03-03 04:02:29'),
(19, 'shakalaka', 'shakalaka@gmail.com', '$2y$10$ketLWT0Ib/JXpo00eJlxoeSw.7leS8V1CUGInfbyOWT4F5.Xuo7S2', NULL, '1212', 'Digital image', 5, NULL, NULL, 0, 1, '2020-11-09 00:07:16', '2022-05-27 21:03:40'),
(21, 'modon', 'modon@gmail.com', '$2y$10$7VpoeGMkP8QCvL5zLwFW..6MYJ5MRumDLDoX.TTQtClS561rpFHY.', NULL, '2222', 'modon company', 5, NULL, NULL, 0, 1, '2020-11-13 07:12:08', '2022-05-27 21:03:40'),
(22, 'dhiman', 'dhiman@gmail.com', '$2y$10$3mPygsC6wwnDtw/Sg85IpuExtUhgaHx52Lwp7Rz0.FNfuFdfKVpRq', NULL, '+8801111111101', 'lioncoders', 5, NULL, NULL, 0, 1, '2020-11-15 06:14:58', '2022-05-27 21:03:40'),
(31, 'mbs', 'mbs@gmail.com', '$2y$10$6Ldm1rWEVSrlTmpjIXkeQO9KwWJz/j0FB4U.fY1oCFeax47rvttEK', NULL, '2121', NULL, 4, 1, 2, 0, 1, '2021-12-29 06:40:22', '2022-05-27 21:03:40'),
(36, 'Noyon', 'duh@gfh', '$2y$10$6W5yRrbPevwOrKymY8N9nO00r3rTg6qq60H4CpaSg5L5N7cVtMO3e', NULL, '01768055350', 'The Detail Boss', 1, NULL, NULL, 0, 1, '2022-06-01 16:33:44', '2022-09-05 11:55:54'),
(37, 'Shojol', 'hasibulhasan1436@gmail.com', '$2y$10$WLrVXYxdhsWLYYAj9Br3SOi90bbVmSDx7i8NEUsaGgtuDrKVjAYKe', NULL, '0160013027', 'The Detail boss', 1, NULL, NULL, 0, 1, '2022-06-01 16:35:24', '2022-09-05 11:55:54'),
(38, 'Masud', 'policemasud85@gmail.com', '$2y$10$XE8T0jUkTfLTwOn9Za0mLu2naQP1HnTX8ahg/ap8QvXQ1D4Dm16Na', NULL, '01794447485', 'The Detail Boss', 1, NULL, NULL, 1, 0, '2022-06-01 16:36:51', '2022-08-29 12:18:05'),
(39, 'Mimon', 'massruzzaman@hotmail.com', '$2y$10$xPHruaJcRZ8vSHehoDwpvuazSCCy3wdXCwJbTrLQ.qwD//lL3AIOK', NULL, '01711873583', NULL, 1, NULL, NULL, 1, 0, '2022-09-05 11:56:40', '2022-09-05 18:49:29'),
(40, 'Tofael Ahmed', 'tofael@webtricker.com', '$2y$10$LflLOw/qwnoncPxFZNzP9ODYw.sPFqoxxhg0dfU9zJsNBPwEfQ7V2', NULL, '01724376407', 'webtricker', 1, NULL, NULL, 0, 1, '2022-09-12 15:45:45', '2022-09-18 18:23:49'),
(41, 'Rabbi', 'rabbi@mail.com', '$2y$10$tDqprCI4BmXuwse1FFL4JeJcqUdVlcIn7WQ9dIUmMzcrqFDmsyA2G', NULL, '01642444532', 'Details Boss', 1, NULL, NULL, 0, 1, '2022-09-18 18:23:25', '2022-09-18 18:23:40');

-- --------------------------------------------------------

--
-- Table structure for table `variants`
--

CREATE TABLE `variants` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variants`
--

INSERT INTO `variants` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Medium', '2019-11-21 07:03:04', '2019-11-24 08:43:52'),
(3, 'Small', '2019-11-21 07:03:04', '2019-11-24 08:43:52'),
(5, 'Large', '2019-11-24 06:07:20', '2019-11-24 08:44:56'),
(9, 'a', '2020-05-18 16:44:14', '2020-05-18 16:44:14'),
(11, 'b', '2020-05-18 16:53:49', '2020-05-18 16:53:49'),
(12, 'variant 1', '2020-09-27 06:08:27', '2020-09-27 06:08:27'),
(13, 'variant 2', '2020-09-27 06:08:27', '2020-09-27 06:08:27'),
(15, 'S', '2020-11-16 06:09:33', '2020-11-16 06:09:33'),
(16, 'M', '2020-11-16 06:09:33', '2020-11-16 06:09:33'),
(17, 'L', '2020-11-16 06:09:33', '2020-11-16 06:09:33');

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `name`, `phone`, `email`, `address`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'warehouse 1', '2312121', 'war1@lion.com', 'khatungonj, chittagong', 1, '2018-05-12 07:51:44', '2019-03-02 15:40:17'),
(2, 'warehouse 2', '1234', NULL, 'boropul, chittagong', 0, '2018-05-12 08:09:03', '2022-06-01 18:04:41'),
(3, 'test', NULL, NULL, 'dqwdeqw', 0, '2018-05-30 00:14:23', '2018-05-30 00:14:47'),
(6, 'gudam', '2121', '', 'gazipur', 0, '2018-08-31 22:53:26', '2018-08-31 22:54:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adjustments`
--
ALTER TABLE `adjustments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billers`
--
ALTER TABLE `billers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cash_registers`
--
ALTER TABLE `cash_registers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_groups`
--
ALTER TABLE `customer_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discount_plans`
--
ALTER TABLE `discount_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discount_plan_customers`
--
ALTER TABLE `discount_plan_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discount_plan_discounts`
--
ALTER TABLE `discount_plan_discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gift_cards`
--
ALTER TABLE `gift_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gift_card_recharges`
--
ALTER TABLE `gift_card_recharges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hrm_settings`
--
ALTER TABLE `hrm_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `money_transfers`
--
ALTER TABLE `money_transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_with_cheque`
--
ALTER TABLE `payment_with_cheque`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_with_credit_card`
--
ALTER TABLE `payment_with_credit_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_with_gift_card`
--
ALTER TABLE `payment_with_gift_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_with_paypal`
--
ALTER TABLE `payment_with_paypal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payrolls`
--
ALTER TABLE `payrolls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pos_setting`
--
ALTER TABLE `pos_setting`
  ADD UNIQUE KEY `pos_setting_id_unique` (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_adjustments`
--
ALTER TABLE `product_adjustments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_batches`
--
ALTER TABLE `product_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_purchases`
--
ALTER TABLE `product_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_quotation`
--
ALTER TABLE `product_quotation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_returns`
--
ALTER TABLE `product_returns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sales`
--
ALTER TABLE `product_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_transfer`
--
ALTER TABLE `product_transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_warehouse`
--
ALTER TABLE `product_warehouse`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_product_return`
--
ALTER TABLE `purchase_product_return`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotations`
--
ALTER TABLE `quotations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `returns`
--
ALTER TABLE `returns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `return_purchases`
--
ALTER TABLE `return_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reward_point_settings`
--
ALTER TABLE `reward_point_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_counts`
--
ALTER TABLE `stock_counts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variants`
--
ALTER TABLE `variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `adjustments`
--
ALTER TABLE `adjustments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `billers`
--
ALTER TABLE `billers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `cash_registers`
--
ALTER TABLE `cash_registers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `customer_groups`
--
ALTER TABLE `customer_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `deliveries`
--
ALTER TABLE `deliveries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `discount_plans`
--
ALTER TABLE `discount_plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `discount_plan_customers`
--
ALTER TABLE `discount_plan_customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `discount_plan_discounts`
--
ALTER TABLE `discount_plan_discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gift_cards`
--
ALTER TABLE `gift_cards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `gift_card_recharges`
--
ALTER TABLE `gift_card_recharges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `hrm_settings`
--
ALTER TABLE `hrm_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `money_transfers`
--
ALTER TABLE `money_transfers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=431;

--
-- AUTO_INCREMENT for table `payment_with_cheque`
--
ALTER TABLE `payment_with_cheque`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `payment_with_credit_card`
--
ALTER TABLE `payment_with_credit_card`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment_with_gift_card`
--
ALTER TABLE `payment_with_gift_card`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payment_with_paypal`
--
ALTER TABLE `payment_with_paypal`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payrolls`
--
ALTER TABLE `payrolls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT for table `product_adjustments`
--
ALTER TABLE `product_adjustments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `product_batches`
--
ALTER TABLE `product_batches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_purchases`
--
ALTER TABLE `product_purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=500;

--
-- AUTO_INCREMENT for table `product_quotation`
--
ALTER TABLE `product_quotation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `product_returns`
--
ALTER TABLE `product_returns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `product_sales`
--
ALTER TABLE `product_sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=636;

--
-- AUTO_INCREMENT for table `product_transfer`
--
ALTER TABLE `product_transfer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `product_warehouse`
--
ALTER TABLE `product_warehouse`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT for table `purchase_product_return`
--
ALTER TABLE `purchase_product_return`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `quotations`
--
ALTER TABLE `quotations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `returns`
--
ALTER TABLE `returns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `return_purchases`
--
ALTER TABLE `return_purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `reward_point_settings`
--
ALTER TABLE `reward_point_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=399;

--
-- AUTO_INCREMENT for table `stock_counts`
--
ALTER TABLE `stock_counts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `variants`
--
ALTER TABLE `variants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
