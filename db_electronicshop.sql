-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 07, 2022 at 06:57 PM
-- Server version: 10.9.3-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_electronicshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(4) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(9) NOT NULL COMMENT 'VND',
  `specs_id` int(4) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `price`, `specs_id`, `created_at`, `modified_at`, `deleted_at`) VALUES
(1, 'Điện thoại Samsung Galaxy A03 32GB Đen', NULL, 2990000, 1, '2022-10-24 00:59:35', '2022-11-06 15:59:08', NULL),
(2, 'Điện thoại Samsung Galaxy A13 4GB/128GB Đen', NULL, 4690000, 2, '2022-10-24 01:02:38', '2022-11-07 18:02:14', NULL),
(3, 'Điện thoại Samsung Galaxy A04s 4GB/64GB Đen', NULL, 3990000, 3, '2022-10-24 01:04:32', '2022-11-07 18:07:43', NULL),
(4, 'Điện thoại Samsung Galaxy A03s 64GB Đen', NULL, 3690000, 4, '2022-10-24 01:04:32', '2022-11-07 18:07:45', NULL),
(5, 'Điện thoại iPhone 12 64GB Đen', NULL, 19990000, 5, '2022-10-24 01:20:04', '2022-11-07 18:07:47', NULL),
(6, 'Điện thoại iPhone 12 64GB Xanh lá', NULL, 15490000, 6, '2022-10-24 01:20:04', '2022-11-07 18:07:49', NULL),
(7, 'Điện thoại iPhone 14 Pro 256GB Tím', NULL, 34990000, 7, '2022-10-24 01:20:04', '2022-11-07 18:07:51', NULL),
(8, 'Điện thoại iPhone 11 64GB Đen', NULL, 10790000, 8, '2022-10-24 01:20:04', '2022-11-07 18:07:53', NULL),
(9, 'Điện thoại Nokia 8210 4G Xanh', NULL, 1490000, 9, '2022-10-24 01:23:43', '2022-11-07 18:07:56', NULL),
(10, 'Điện thoại Nokia C31 3GB/32GB Xanh thiên thanh', NULL, 3190000, 10, '2022-10-24 01:23:43', '2022-11-07 18:07:59', NULL),
(11, 'Điện thoại Nokia C21 Plus 2GB/64GB Xám Ánh Kim', NULL, 1990000, 11, '2022-10-24 01:23:43', '2022-11-07 18:08:01', NULL),
(12, 'Điện thoại Nokia G11 Plus 3GB/64GB Xanh', NULL, 3390000, 12, '2022-10-24 01:23:43', '2022-11-07 18:08:03', NULL),
(13, 'iPad Gen 9 Wifi 64GB 10.2 inch Bạc (2021)', NULL, 9990000, 13, '2022-10-24 01:28:50', '2022-11-07 18:11:11', NULL),
(14, 'iPad Gen 9 Wifi Cellular 64GB 10.2 inch MK493ZA/A Bạc (2021)', NULL, 13890000, 14, '2022-10-24 01:28:50', '2022-11-07 18:11:12', NULL),
(15, 'Máy tính bảng iPad Pro M1 2021 11 inch Wifi 8GB/128GB MHQR3ZA/A Xám', NULL, 21990000, 15, '2022-10-24 01:28:50', '2022-11-07 18:11:14', NULL),
(16, 'iPad Gen 9 Wifi 256GB 10.2 inch Bạc (2021)', NULL, 13890000, 16, '2022-10-24 01:28:50', '2022-11-07 18:11:16', NULL),
(17, 'Máy tính bảng Samsung Galaxy Tab A7 Lite 32GB Bạc', NULL, 4490000, 17, '2022-10-24 01:31:33', '2022-11-07 18:11:18', NULL),
(18, 'Máy tính bảng Samsung Galaxy Tab A7 Lite 32GB Xám', NULL, 4490000, 18, '2022-10-24 01:31:33', '2022-11-07 18:11:20', NULL),
(19, 'Máy tính bảng Samsung Galaxy Tab A8 64GB Xám (2022)', NULL, 8490000, 19, '2022-10-24 01:31:33', '2022-11-07 18:11:22', NULL),
(20, 'Máy tính bảng Samsung Galaxy Tab S7 FE 64GB Xanh', NULL, 13990000, 20, '2022-10-24 01:31:33', '2022-11-07 18:11:24', NULL),
(21, 'Laptop Asus VivoBook X415EA-EK675W i3-1115G4/4GB/256GB/Win11', NULL, 10990000, 21, '2022-10-24 01:37:13', '2022-11-07 18:20:01', NULL),
(22, 'Laptop Asus Vivobook A415EA i3-1125G4/8GB/256GB/Win11 (EB1750W)', NULL, 13390000, 22, '2022-10-24 01:37:13', '2022-11-07 18:20:03', NULL),
(23, 'Laptop Asus Vivobook 15X OLED i5-12500H/8GB4/512GB/Win11 A1503ZA-L1421W', NULL, 20490000, 23, '2022-10-24 01:37:13', '2022-11-07 18:20:05', NULL),
(24, 'Laptop Asus TUF Gaming F15 FX506HC i5-11400H/8GB/512GB/Win11 HN144W', NULL, 20190000, 24, '2022-10-24 01:37:13', '2022-11-07 18:20:07', NULL),
(25, 'Laptop HP 15S-FQ2663TU i3-1115G4/8GB/256GB/Win11 6K796PA', NULL, 10790000, 25, '2022-10-24 01:39:38', '2022-11-07 18:20:09', NULL),
(26, 'Laptop HP 240 G8 i5-1135G7/8GB/256GB/Win11 617L4PA', NULL, 16990000, 26, '2022-10-24 01:39:38', '2022-11-07 18:20:39', NULL),
(27, 'Laptop HP Pavilion 15-EG0509TU i3-1125G4/4GB/512GB SSD/Win11 (46M08PA)', NULL, 15890000, 27, '2022-10-24 01:39:38', '2022-11-07 18:20:41', NULL),
(28, 'Laptop HP Pavilion 15-EG2058TU i5-1240P/8GB/256GB/Win11 6K788PA', NULL, 17990000, 28, '2022-10-24 01:39:38', '2022-11-07 18:20:44', NULL),
(29, 'Laptop Dell Vostro 5410 I5-11320H/8GB/512GB/Win11 (V4I5214W1)', NULL, 22690000, 29, '2022-10-24 01:41:42', '2022-11-07 18:20:46', NULL),
(30, 'Laptop Dell Vostro 3405 R5-3500U/8GB/512GB/Win11 (V4R53500U003W1)', NULL, 18690000, 30, '2022-10-24 01:41:42', '2022-11-07 18:20:56', NULL),
(31, 'Laptop Dell Vostro 14 3400 i5 1135G7/8GB/512GB/Win11 YX51W5', NULL, 21790000, 31, '2022-10-24 01:41:42', '2022-11-07 18:20:59', NULL),
(32, 'Laptop Dell Vostro 3400 i5-1135G7/8GB/256GB/Win11 (70270645)', NULL, 18990000, 32, '2022-10-24 01:41:42', '2022-11-07 18:21:00', NULL),
(33, 'Máy lạnh Panasonic 1.5 HP CU/CS-N12WKH-8M', NULL, 11990000, 33, '2022-10-24 01:44:38', '2022-11-07 18:25:15', NULL),
(34, 'Máy lạnh Panasonic 1 HP CU/CS-N9WKH-8M', NULL, 9490000, 34, '2022-10-24 01:44:38', '2022-11-07 18:25:17', NULL),
(35, 'Máy lạnh Panasonic Inverter 1HP CU/CS-VU9UKH-8', NULL, 18390000, 35, '2022-10-24 01:44:38', '2022-11-07 18:25:38', NULL),
(36, 'Máy lạnh Panasonic Inverter 1 HP CU/CS-XU9XKH-8', NULL, 13490000, 36, '2022-10-24 01:44:38', '2022-11-07 18:25:41', NULL),
(37, 'Máy lạnh Daikin 1 HP ATF25UV1V', NULL, 9190000, 37, '2022-10-24 01:49:15', '2022-11-07 18:25:44', NULL),
(38, 'Máy lạnh Daikin 1.5 HP ATF35UV1V', NULL, 11590000, 38, '2022-10-24 01:49:15', '2022-11-07 18:25:46', NULL),
(39, 'Máy lạnh Daikin Inverter 1.5 HP FTKA35VMVMV', NULL, 12890000, 39, '2022-10-24 01:49:15', '2022-11-07 18:25:47', NULL),
(40, 'Máy lạnh Daikin Inverter 1.5 HP ATKC35UAVMV', NULL, 14990000, 40, '2022-10-24 01:49:15', '2022-11-07 18:25:49', NULL),
(41, 'Máy lạnh Toshiba Inverter 1.5 HP RAS-H13C3KCVG-V', NULL, 12990000, 41, '2022-10-24 01:52:55', '2022-11-07 18:25:51', NULL),
(42, 'Máy lạnh Toshiba Inverter 1.5 HP RAS-H13E2KCVG-V', NULL, 13900000, 42, '2022-10-24 01:52:55', '2022-11-07 18:25:53', NULL),
(43, 'Máy lạnh Toshiba Inverter 1 HP RAS-H10E2KCVG-V', NULL, 11690000, 43, '2022-10-24 01:52:55', '2022-11-07 18:25:55', NULL),
(44, 'Máy lạnh Toshiba Inverter 2.5 HP RAS-H24E2KCVG-V', NULL, 24600000, 44, '2022-10-24 01:52:55', '2022-11-07 18:25:57', NULL),
(45, 'Tủ lạnh Samsung Inverter 208 lít RT20HAR8DBU', NULL, 8290000, 45, '2022-10-24 01:55:09', '2022-11-07 18:30:57', NULL),
(46, 'Tủ lạnh Samsung Inverter 680 lít RS62R5001M9', NULL, 24490000, 46, '2022-10-24 01:55:09', '2022-11-07 18:31:00', NULL),
(47, 'Tủ lạnh Samsung Inverter 236 lít RT22M4032BU', NULL, 9590000, 47, '2022-10-24 01:55:09', '2022-11-07 18:31:03', NULL),
(48, 'Tủ Lạnh Samsung Inverter 208 lít RT19M300BGS', NULL, 7090000, 48, '2022-10-24 01:55:09', '2022-11-07 18:31:05', NULL),
(49, 'Tủ lạnh Panasonic Inverter 366 lít NR-TL381GPKV', NULL, 15490000, 49, '2022-10-24 01:57:41', '2022-11-07 18:31:07', NULL),
(50, 'Tủ lạnh Panasonic Inverter 234 lít NR-TV261APSV', NULL, 8090000, 50, '2022-10-24 01:57:41', '2022-11-07 18:31:09', NULL),
(51, 'Tủ lạnh Panasonic Inverter 420 lít NR-BX471WGKV', NULL, 20990000, 51, '2022-10-24 01:57:41', '2022-11-07 18:31:17', NULL),
(52, 'Tủ lạnh Panasonic Inverter 326 lít NR-TL351GPKV', NULL, 13990000, 52, '2022-10-24 01:57:41', '2022-11-07 18:31:20', NULL),
(53, 'Tủ lạnh Sharp Inverter 556 lít SJ-FX631V-SL', NULL, 24000000, 53, '2022-10-24 01:59:33', '2022-11-07 18:31:22', NULL),
(54, 'Tủ lạnh Sharp Inverter 315 lít SJ-X346E-SL', NULL, 10000000, 54, '2022-10-24 01:59:33', '2022-11-07 18:31:24', NULL),
(55, 'Tủ lạnh Sharp Inverter 253 lít SJ-X281E-SL', NULL, 8100000, 55, '2022-10-24 01:59:33', '2022-11-07 18:31:26', NULL),
(56, 'Tủ lạnh Sharp Inverter 165 lít SJ-X196E-SL', NULL, 6300000, 56, '2022-10-24 01:59:33', '2022-11-07 18:31:28', NULL),
(57, 'Máy giặt sấy LG Inverter 11 kg FV1410D4P', NULL, 22190000, 57, '2022-10-24 02:01:44', '2022-11-07 18:49:57', NULL),
(58, 'Máy giặt sấy LG Inverter 15 kg F2515RTGB', NULL, 30990000, 58, '2022-10-24 02:01:44', '2022-11-07 18:50:00', NULL),
(59, 'Máy giặt LG Inverter 11 kg FV1411S4P', NULL, 19790000, 59, '2022-10-24 02:01:44', '2022-11-07 18:50:03', NULL),
(60, 'Máy giặt LG Inverter 15 kg F2515STGW', NULL, 24990000, 60, '2022-10-24 02:01:44', '2022-11-07 18:50:05', NULL),
(61, 'Máy giặt Electrolux Inverter 9 kg EWF9024P5WB', NULL, 13990000, 61, '2022-10-24 02:04:05', '2022-11-07 18:50:07', NULL),
(62, 'Máy giặt Electrolux Inverter 9 kg EWF9024P5SB', NULL, 14990000, 62, '2022-10-24 02:04:05', '2022-11-07 18:50:09', NULL),
(63, 'Máy giặt Electrolux Inverter 8 kg EWF8024D3WB', NULL, 10490000, 63, '2022-10-24 02:04:05', '2022-11-07 18:50:12', NULL),
(64, 'Máy giặt Electrolux Inverter 10 kg EWF1024P5WB', NULL, 15990000, 64, '2022-10-24 02:04:05', '2022-11-07 18:50:14', NULL),
(65, 'Máy giặt Toshiba Inverter 8.5 kg TW-BK95S2V(WK)', NULL, 9090000, 65, '2022-10-24 02:05:34', '2022-11-07 18:50:15', NULL),
(66, 'Máy giặt Toshiba Inverter 10.5 kg AW-DUK1160HV(SG)', NULL, 8590000, 66, '2022-10-24 02:05:34', '2022-11-07 18:50:17', NULL),
(67, 'Máy giặt Toshiba Inverter 9 Kg AW-DK1000FV(KK)', NULL, 9090000, 67, '2022-10-24 02:05:34', '2022-11-07 18:50:19', NULL),
(68, 'Máy giặt Toshiba 9 kg AW-H1000GV', NULL, 6790000, 68, '2022-10-24 02:05:34', '2022-11-07 18:50:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `producttag_map`
--

CREATE TABLE `producttag_map` (
  `product_id` int(4) NOT NULL,
  `tag_id` int(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `producttag_map`
--

INSERT INTO `producttag_map` (`product_id`, `tag_id`, `created_at`, `modified_at`, `deleted_at`) VALUES
(1, 1, '2022-10-26 19:20:49', '2022-10-26 19:20:49', NULL),
(1, 7, '2022-10-26 19:20:49', '2022-10-26 19:57:20', NULL),
(2, 1, '2022-10-26 19:25:12', '2022-10-26 19:25:12', NULL),
(2, 7, '2022-10-26 19:25:12', '2022-10-26 19:57:30', NULL),
(3, 1, '2022-10-26 19:36:49', '2022-10-26 19:36:49', NULL),
(3, 7, '2022-10-26 19:36:49', '2022-10-26 19:57:20', NULL),
(4, 1, '2022-10-26 19:37:27', '2022-10-26 19:37:27', NULL),
(4, 7, '2022-10-26 19:37:27', '2022-10-26 19:57:20', NULL),
(5, 1, '2022-10-26 20:02:51', '2022-10-26 20:02:51', NULL),
(5, 8, '2022-10-26 20:02:51', '2022-10-26 20:02:51', NULL),
(6, 1, '2022-10-26 20:03:57', '2022-10-26 20:03:57', NULL),
(6, 8, '2022-10-26 20:03:57', '2022-10-26 20:03:57', NULL),
(7, 1, '2022-10-26 20:06:16', '2022-10-26 20:06:16', NULL),
(7, 8, '2022-10-26 20:06:16', '2022-10-26 20:06:16', NULL),
(8, 1, '2022-10-26 20:06:29', '2022-10-26 20:06:29', NULL),
(8, 8, '2022-10-26 20:06:29', '2022-10-26 20:06:29', NULL),
(9, 1, '2022-10-26 20:11:49', '2022-10-26 20:11:49', NULL),
(9, 9, '2022-10-26 20:11:49', '2022-10-26 20:11:49', NULL),
(10, 1, '2022-10-26 20:11:49', '2022-10-26 20:11:49', NULL),
(10, 9, '2022-10-26 20:11:49', '2022-10-26 20:11:49', NULL),
(11, 1, '2022-10-26 20:11:49', '2022-10-26 20:11:49', NULL),
(11, 9, '2022-10-26 20:11:49', '2022-10-26 20:11:49', NULL),
(12, 1, '2022-10-26 20:11:49', '2022-10-26 20:11:49', NULL),
(12, 9, '2022-10-26 20:11:49', '2022-10-26 20:11:49', NULL),
(13, 2, '2022-10-29 15:51:36', '2022-10-29 15:51:36', NULL),
(13, 10, '2022-10-29 15:51:36', '2022-10-29 15:51:36', NULL),
(14, 2, '2022-10-29 15:53:44', '2022-10-29 15:53:44', NULL),
(14, 10, '2022-10-29 15:53:44', '2022-10-29 15:53:44', NULL),
(15, 2, '2022-10-29 15:54:00', '2022-10-29 15:54:00', NULL),
(15, 10, '2022-10-29 15:54:00', '2022-10-29 15:54:00', NULL),
(16, 2, '2022-10-29 15:54:14', '2022-10-29 15:54:14', NULL),
(16, 10, '2022-10-29 15:54:14', '2022-10-29 15:54:14', NULL),
(17, 2, '2022-10-29 15:55:59', '2022-10-29 15:55:59', NULL),
(17, 7, '2022-10-29 15:55:59', '2022-10-29 15:55:59', NULL),
(18, 2, '2022-10-29 15:55:59', '2022-10-29 15:55:59', NULL),
(18, 7, '2022-10-29 15:55:59', '2022-10-29 15:55:59', NULL),
(19, 2, '2022-10-29 15:55:59', '2022-10-29 15:55:59', NULL),
(19, 7, '2022-10-29 15:55:59', '2022-10-29 15:55:59', NULL),
(20, 2, '2022-10-29 15:55:59', '2022-10-29 15:55:59', NULL),
(20, 7, '2022-10-29 15:55:59', '2022-10-29 15:55:59', NULL),
(21, 3, '2022-11-01 20:53:36', '2022-11-01 20:53:36', NULL),
(21, 11, '2022-11-01 20:53:36', '2022-11-01 20:53:36', NULL),
(22, 3, '2022-11-01 20:54:43', '2022-11-01 20:54:43', NULL),
(22, 11, '2022-11-01 20:54:43', '2022-11-01 20:54:43', NULL),
(23, 3, '2022-11-01 20:54:43', '2022-11-01 20:54:43', NULL),
(23, 11, '2022-11-01 20:54:43', '2022-11-01 20:54:43', NULL),
(24, 3, '2022-11-01 20:54:43', '2022-11-01 20:54:43', NULL),
(24, 11, '2022-11-01 20:54:43', '2022-11-01 20:54:43', NULL),
(25, 3, '2022-11-01 20:59:03', '2022-11-01 20:59:03', NULL),
(25, 12, '2022-11-01 20:59:03', '2022-11-01 20:59:03', NULL),
(26, 3, '2022-11-01 20:59:03', '2022-11-01 20:59:03', NULL),
(26, 12, '2022-11-01 20:59:03', '2022-11-01 20:59:03', NULL),
(27, 3, '2022-11-01 20:59:03', '2022-11-01 20:59:03', NULL),
(27, 12, '2022-11-01 20:59:03', '2022-11-01 20:59:03', NULL),
(28, 3, '2022-11-01 20:59:03', '2022-11-01 20:59:03', NULL),
(28, 12, '2022-11-01 20:59:03', '2022-11-01 20:59:03', NULL),
(29, 3, '2022-11-01 21:02:38', '2022-11-01 21:02:38', NULL),
(29, 13, '2022-11-01 21:02:38', '2022-11-01 21:02:38', NULL),
(30, 3, '2022-11-01 21:02:38', '2022-11-01 21:02:38', NULL),
(30, 13, '2022-11-01 21:02:38', '2022-11-01 21:02:38', NULL),
(31, 3, '2022-11-01 21:02:38', '2022-11-01 21:02:38', NULL),
(31, 13, '2022-11-01 21:02:38', '2022-11-01 21:02:38', NULL),
(32, 3, '2022-11-01 21:02:38', '2022-11-01 21:02:38', NULL),
(32, 13, '2022-11-01 21:02:38', '2022-11-01 21:02:38', NULL),
(33, 4, '2022-11-01 21:05:06', '2022-11-01 21:05:06', NULL),
(33, 14, '2022-11-01 21:05:06', '2022-11-01 21:05:06', NULL),
(34, 4, '2022-11-01 21:05:06', '2022-11-01 21:05:06', NULL),
(34, 14, '2022-11-01 21:05:06', '2022-11-01 21:05:06', NULL),
(35, 4, '2022-11-01 21:05:06', '2022-11-01 21:05:06', NULL),
(35, 14, '2022-11-01 21:05:06', '2022-11-01 21:05:06', NULL),
(36, 4, '2022-11-01 21:05:06', '2022-11-01 21:05:06', NULL),
(36, 14, '2022-11-01 21:05:06', '2022-11-01 21:05:06', NULL),
(37, 4, '2022-11-01 21:06:08', '2022-11-01 21:06:08', NULL),
(37, 15, '2022-11-01 21:06:08', '2022-11-01 21:06:08', NULL),
(38, 4, '2022-11-01 21:06:08', '2022-11-01 21:06:08', NULL),
(38, 15, '2022-11-01 21:06:08', '2022-11-01 21:06:08', NULL),
(39, 4, '2022-11-01 21:06:08', '2022-11-01 21:06:08', NULL),
(39, 15, '2022-11-01 21:06:08', '2022-11-01 21:06:08', NULL),
(40, 4, '2022-11-01 21:06:08', '2022-11-01 21:06:08', NULL),
(40, 15, '2022-11-01 21:06:08', '2022-11-01 21:06:08', NULL),
(41, 4, '2022-11-01 21:06:59', '2022-11-01 21:06:59', NULL),
(41, 16, '2022-11-01 21:06:59', '2022-11-01 21:06:59', NULL),
(42, 4, '2022-11-01 21:06:59', '2022-11-01 21:06:59', NULL),
(42, 16, '2022-11-01 21:06:59', '2022-11-01 21:06:59', NULL),
(43, 4, '2022-11-01 21:06:59', '2022-11-01 21:06:59', NULL),
(43, 16, '2022-11-01 21:06:59', '2022-11-01 21:06:59', NULL),
(44, 4, '2022-11-01 21:06:59', '2022-11-01 21:06:59', NULL),
(44, 16, '2022-11-01 21:06:59', '2022-11-01 21:06:59', NULL),
(45, 5, '2022-11-01 21:08:29', '2022-11-01 21:08:29', NULL),
(45, 7, '2022-11-01 21:08:29', '2022-11-01 21:08:29', NULL),
(46, 5, '2022-11-01 21:08:29', '2022-11-01 21:08:29', NULL),
(46, 7, '2022-11-01 21:08:29', '2022-11-01 21:08:29', NULL),
(47, 5, '2022-11-01 21:08:29', '2022-11-01 21:08:29', NULL),
(47, 7, '2022-11-01 21:08:29', '2022-11-01 21:08:29', NULL),
(48, 5, '2022-11-01 21:08:29', '2022-11-01 21:08:29', NULL),
(48, 7, '2022-11-01 21:08:29', '2022-11-01 21:08:29', NULL),
(49, 5, '2022-11-01 21:09:52', '2022-11-01 21:09:52', NULL),
(49, 14, '2022-11-01 21:09:52', '2022-11-01 21:09:52', NULL),
(50, 5, '2022-11-01 21:09:52', '2022-11-01 21:09:52', NULL),
(50, 14, '2022-11-01 21:09:52', '2022-11-01 21:09:52', NULL),
(51, 5, '2022-11-01 21:09:52', '2022-11-01 21:09:52', NULL),
(51, 14, '2022-11-01 21:09:52', '2022-11-01 21:09:52', NULL),
(52, 5, '2022-11-01 21:09:52', '2022-11-01 21:09:52', NULL),
(52, 14, '2022-11-01 21:09:52', '2022-11-01 21:09:52', NULL),
(53, 5, '2022-11-01 21:14:03', '2022-11-01 21:14:03', NULL),
(53, 17, '2022-11-01 21:14:03', '2022-11-01 21:14:03', NULL),
(54, 5, '2022-11-01 21:14:03', '2022-11-01 21:14:03', NULL),
(54, 17, '2022-11-01 21:14:03', '2022-11-01 21:14:03', NULL),
(55, 5, '2022-11-01 21:14:03', '2022-11-01 21:14:03', NULL),
(55, 17, '2022-11-01 21:14:03', '2022-11-01 21:14:03', NULL),
(56, 5, '2022-11-01 21:14:03', '2022-11-01 21:14:03', NULL),
(56, 17, '2022-11-01 21:14:03', '2022-11-01 21:14:03', NULL),
(57, 6, '2022-11-01 21:15:59', '2022-11-01 21:15:59', NULL),
(57, 18, '2022-11-01 21:15:59', '2022-11-01 21:15:59', NULL),
(58, 6, '2022-11-01 21:15:59', '2022-11-01 21:15:59', NULL),
(58, 18, '2022-11-01 21:15:59', '2022-11-01 21:15:59', NULL),
(59, 6, '2022-11-01 21:15:59', '2022-11-01 21:15:59', NULL),
(59, 18, '2022-11-01 21:15:59', '2022-11-01 21:15:59', NULL),
(60, 6, '2022-11-01 21:15:59', '2022-11-01 21:15:59', NULL),
(60, 18, '2022-11-01 21:15:59', '2022-11-01 21:15:59', NULL),
(61, 6, '2022-11-01 21:16:44', '2022-11-01 21:16:44', NULL),
(61, 19, '2022-11-01 21:16:44', '2022-11-01 21:16:44', NULL),
(62, 6, '2022-11-01 21:16:44', '2022-11-01 21:16:44', NULL),
(62, 19, '2022-11-01 21:16:44', '2022-11-01 21:16:44', NULL),
(63, 6, '2022-11-01 21:16:44', '2022-11-01 21:16:44', NULL),
(63, 19, '2022-11-01 21:16:44', '2022-11-01 21:16:44', NULL),
(64, 6, '2022-11-01 21:16:44', '2022-11-01 21:16:44', NULL),
(64, 19, '2022-11-01 21:16:44', '2022-11-01 21:16:44', NULL),
(65, 6, '2022-11-01 21:17:18', '2022-11-01 21:17:18', NULL),
(65, 16, '2022-11-01 21:17:18', '2022-11-01 21:17:18', NULL),
(66, 6, '2022-11-01 21:17:18', '2022-11-01 21:17:18', NULL),
(66, 16, '2022-11-01 21:17:18', '2022-11-01 21:17:18', NULL),
(67, 6, '2022-11-01 21:17:18', '2022-11-01 21:17:18', NULL),
(67, 16, '2022-11-01 21:17:18', '2022-11-01 21:17:18', NULL),
(68, 6, '2022-11-01 21:17:18', '2022-11-01 21:17:18', NULL),
(68, 16, '2022-11-01 21:17:18', '2022-11-01 21:17:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_image`
--

CREATE TABLE `product_image` (
  `id` int(4) NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(4) NOT NULL,
  `is_thumbnail` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_image`
--

INSERT INTO `product_image` (`id`, `url`, `product_id`, `is_thumbnail`, `created_at`, `modified_at`, `deleted_at`) VALUES
(1, 'https://cdn.nguyenkimmall.com/images/detailed/776/10051129-dien-thoai-samsung-galaxy-a03-32gb-den-1.jpg', 1, 1, '2022-10-24 02:23:10', '2022-10-28 07:54:18', NULL),
(2, 'https://cdn.nguyenkimmall.com/images/detailed/776/10051129-dien-thoai-samsung-galaxy-a03-32gb-den-2.jpg', 1, 0, '2022-10-24 02:23:10', '2022-10-24 02:23:10', NULL),
(3, 'https://cdn.nguyenkimmall.com/images/detailed/776/10051129-dien-thoai-samsung-galaxy-a03-32gb-den-3.jpg', 1, 0, '2022-10-24 02:23:10', '2022-10-24 02:23:10', NULL),
(4, 'https://cdn.nguyenkimmall.com/images/detailed/776/10051129-dien-thoai-samsung-galaxy-a03-32gb-den-4.jpg', 1, 0, '2022-10-24 02:23:10', '2022-10-24 02:23:10', NULL),
(5, 'https://cdn.nguyenkimmall.com/images/detailed/789/10051526-dien-thoai-samsung-galaxy-a13-4gb-128gb-den-1.jpg', 2, 1, '2022-11-03 14:04:59', '2022-11-03 14:04:59', NULL),
(6, 'https://cdn.nguyenkimmall.com/images/detailed/789/10051526-dien-thoai-samsung-galaxy-a13-4gb-128gb-den-2.jpg', 2, 0, '2022-11-03 14:04:59', '2022-11-03 14:04:59', NULL),
(7, 'https://cdn.nguyenkimmall.com/images/detailed/789/10051526-dien-thoai-samsung-galaxy-a13-4gb-128gb-den-3.jpg', 2, 0, '2022-11-03 14:04:59', '2022-11-03 14:04:59', NULL),
(8, 'https://cdn.nguyenkimmall.com/images/detailed/789/10051526-dien-thoai-samsung-galaxy-a13-4gb-128gb-den-4.jpg', 2, 0, '2022-11-03 14:04:59', '2022-11-03 14:04:59', NULL),
(9, 'https://cdn.nguyenkimmall.com/images/detailed/827/10053348-dien-thoai-samsung-galaxy-a04s-4gb-64gb-den-1.jpg', 3, 1, '2022-11-05 14:20:14', '2022-11-05 14:20:14', NULL),
(10, 'https://cdn.nguyenkimmall.com/images/detailed/827/10053348-dien-thoai-samsung-galaxy-a04s-4gb-64gb-den-2.jpg', 3, 0, '2022-11-05 14:20:14', '2022-11-05 14:20:14', NULL),
(11, 'https://cdn.nguyenkimmall.com/images/detailed/827/10053348-dien-thoai-samsung-galaxy-a04s-4gb-64gb-den-3.jpg', 3, 0, '2022-11-05 14:20:14', '2022-11-05 14:20:14', NULL),
(12, 'https://cdn.nguyenkimmall.com/images/detailed/827/10053348-dien-thoai-samsung-galaxy-a04s-4gb-64gb-den-4.jpg', 3, 0, '2022-11-05 14:20:14', '2022-11-05 14:20:14', NULL),
(13, 'https://cdn.nguyenkimmall.com/images/detailed/745/10049870-dien-thoai-samsung-galaxy-a03s-64gb-den-1.jpg', 4, 1, '2022-11-05 14:30:24', '2022-11-05 14:30:24', NULL),
(14, 'https://cdn.nguyenkimmall.com/images/detailed/745/10049870-dien-thoai-samsung-galaxy-a03s-64gb-den-2.jpg', 4, 0, '2022-11-05 14:30:24', '2022-11-05 14:30:24', NULL),
(15, 'https://cdn.nguyenkimmall.com/images/detailed/745/10049870-dien-thoai-samsung-galaxy-a03s-64gb-den-3.jpg', 4, 0, '2022-11-05 14:30:24', '2022-11-05 14:30:24', NULL),
(16, 'https://cdn.nguyenkimmall.com/images/detailed/745/10049870-dien-thoai-samsung-galaxy-a03s-64gb-den-4.jpg', 4, 0, '2022-11-05 14:30:24', '2022-11-05 14:30:24', NULL),
(17, 'https://cdn.nguyenkimmall.com/images/detailed/698/10047698-dien-thoai-iphone-12-64gb-den-1.jpg', 5, 1, '2022-11-05 14:36:33', '2022-11-05 14:36:33', NULL),
(18, 'https://cdn.nguyenkimmall.com/images/detailed/698/10047698-dien-thoai-iphone-12-64gb-den-2.jpg', 5, 0, '2022-11-05 14:36:33', '2022-11-05 14:36:33', NULL),
(19, 'https://cdn.nguyenkimmall.com/images/detailed/698/10047698-dien-thoai-iphone-12-64gb-den-3.jpg', 5, 0, '2022-11-05 14:36:33', '2022-11-05 14:36:33', NULL),
(20, 'https://cdn.nguyenkimmall.com/images/detailed/698/10047698-dien-thoai-iphone-12-64gb-den-4.jpg', 5, 0, '2022-11-05 14:36:33', '2022-11-05 14:36:33', NULL),
(21, 'https://cdn.nguyenkimmall.com/images/detailed/698/10047702-dien-thoai-iphone-12-64gb-xanh-la-1.jpg', 6, 1, '2022-11-05 19:29:16', '2022-11-05 19:29:16', NULL),
(22, 'https://cdn.nguyenkimmall.com/images/detailed/698/10047702-dien-thoai-iphone-12-64gb-xanh-la-2.jpg', 6, 0, '2022-11-05 19:29:16', '2022-11-05 19:29:16', NULL),
(23, 'https://cdn.nguyenkimmall.com/images/detailed/698/10047702-dien-thoai-iphone-12-64gb-xanh-la-3.jpg', 6, 0, '2022-11-05 19:29:16', '2022-11-05 19:29:16', NULL),
(24, 'https://cdn.nguyenkimmall.com/images/detailed/698/10047702-dien-thoai-iphone-12-64gb-xanh-la-4.jpg', 6, 0, '2022-11-05 19:29:16', '2022-11-05 19:29:16', NULL),
(25, 'https://cdn.nguyenkimmall.com/images/product/829/dien-thoai-iphone-14-pro-256gb-tim-1.jpg', 7, 1, '2022-11-05 19:29:16', '2022-11-05 19:31:55', NULL),
(26, 'https://cdn.nguyenkimmall.com/images/detailed/824/dien-thoai-iphone-14-pro-256gb-tim-2.jpg', 7, 0, '2022-11-05 19:29:16', '2022-11-05 19:32:21', NULL),
(27, 'https://cdn.nguyenkimmall.com/images/detailed/824/dien-thoai-iphone-14-pro-256gb-tim-3.jpg', 7, 0, '2022-11-05 19:29:16', '2022-11-05 19:32:27', NULL),
(28, 'https://cdn.nguyenkimmall.com/images/detailed/824/dien-thoai-iphone-14-pro-256gb-tim-4.jpg', 7, 0, '2022-11-05 19:29:16', '2022-11-05 19:32:29', NULL),
(29, 'https://cdn.nguyenkimmall.com/images/detailed/776/10050983-dien-thoai-iphone-11-64gb-den-1.jpg', 8, 1, '2022-11-05 19:41:08', '2022-11-05 19:41:08', NULL),
(30, 'https://cdn.nguyenkimmall.com/images/detailed/776/10050983-dien-thoai-iphone-11-64gb-den-2.jpg', 8, 0, '2022-11-05 19:41:08', '2022-11-05 19:41:08', NULL),
(31, 'https://cdn.nguyenkimmall.com/images/detailed/776/10050983-dien-thoai-iphone-11-64gb-den-3.jpg', 8, 0, '2022-11-05 19:41:08', '2022-11-05 19:41:08', NULL),
(32, 'https://cdn.nguyenkimmall.com/images/detailed/776/10050983-dien-thoai-iphone-11-64gb-den-4.jpg', 8, 0, '2022-11-05 19:41:08', '2022-11-05 19:41:08', NULL),
(33, 'https://cdn.nguyenkimmall.com/images/detailed/821/10053218-dien-thoai-nokia-8210-4g-xanh-1.jpg', 9, 1, '2022-11-05 19:41:38', '2022-11-05 19:41:38', NULL),
(34, 'https://cdn.nguyenkimmall.com/images/detailed/821/10053218-dien-thoai-nokia-8210-4g-xanh-2.jpg', 9, 0, '2022-11-05 19:41:38', '2022-11-05 19:41:38', NULL),
(35, 'https://cdn.nguyenkimmall.com/images/detailed/821/10053218-dien-thoai-nokia-8210-4g-xanh-3.jpg', 9, 0, '2022-11-05 19:41:38', '2022-11-05 19:41:38', NULL),
(36, 'https://cdn.nguyenkimmall.com/images/detailed/832/10053532-dien-thoai-nokia-c31-3gb-32gb-xanh-thien-thanh-1.jpg', 10, 1, '2022-11-05 19:42:07', '2022-11-05 19:42:07', NULL),
(37, 'https://cdn.nguyenkimmall.com/images/detailed/832/10053532-dien-thoai-nokia-c31-3gb-32gb-xanh-thien-thanh-2.jpg', 10, 0, '2022-11-05 19:42:07', '2022-11-05 19:42:07', NULL),
(38, 'https://cdn.nguyenkimmall.com/images/detailed/832/10053532-dien-thoai-nokia-c31-3gb-32gb-xanh-thien-thanh-3.jpg', 10, 0, '2022-11-05 19:42:07', '2022-11-05 19:42:07', NULL),
(39, 'https://cdn.nguyenkimmall.com/images/detailed/832/10053532-dien-thoai-nokia-c31-3gb-32gb-xanh-thien-thanh-4.jpg', 10, 0, '2022-11-05 19:42:07', '2022-11-05 19:42:07', NULL),
(40, 'https://cdn.nguyenkimmall.com/images/detailed/803/10052223-dien-thoai-nokia-c21-plus-2gb-64gb-xam-anh-kim-1.jpg', 11, 1, '2022-11-05 19:42:07', '2022-11-05 19:42:07', NULL),
(41, 'https://cdn.nguyenkimmall.com/images/detailed/803/10052223-dien-thoai-nokia-c21-plus-2gb-64gb-xam-anh-kim-2.jpg', 11, 0, '2022-11-05 19:42:07', '2022-11-05 19:42:07', NULL),
(42, 'https://cdn.nguyenkimmall.com/images/detailed/803/10052223-dien-thoai-nokia-c21-plus-2gb-64gb-xam-anh-kim-3.jpg', 11, 0, '2022-11-05 19:42:07', '2022-11-05 19:42:07', NULL),
(43, 'https://cdn.nguyenkimmall.com/images/detailed/803/10052223-dien-thoai-nokia-c21-plus-2gb-64gb-xam-anh-kim-4.jpg', 11, 0, '2022-11-05 19:42:07', '2022-11-05 19:42:07', NULL),
(44, 'https://cdn.nguyenkimmall.com/images/detailed/823/10053246-dien-thoai-nokia-g11-plus-3gb-64gb-xanh-1.jpg', 12, 1, '2022-11-05 19:42:43', '2022-11-05 19:42:43', NULL),
(45, 'https://cdn.nguyenkimmall.com/images/detailed/823/10053246-dien-thoai-nokia-g11-plus-3gb-64gb-xanh-2.jpg', 12, 0, '2022-11-05 19:42:43', '2022-11-05 19:42:43', NULL),
(46, 'https://cdn.nguyenkimmall.com/images/detailed/823/10053246-dien-thoai-nokia-g11-plus-3gb-64gb-xanh-3.jpg', 12, 0, '2022-11-05 19:42:43', '2022-11-05 19:42:43', NULL),
(47, 'https://cdn.nguyenkimmall.com/images/detailed/734/may-tinh-bang-samsung-galaxy-tab-a7-lite-32gb-bac.jpg', 17, 1, '2022-11-05 20:33:51', '2022-11-05 20:33:51', NULL),
(48, 'https://cdn.nguyenkimmall.com/images/detailed/734/10049553-may-tinh-bang-samsung-galaxy-tab-a7-lite-32gb-bac-2.jpg', 17, 0, '2022-11-05 20:33:51', '2022-11-05 20:33:51', NULL),
(49, 'https://cdn.nguyenkimmall.com/images/detailed/734/10049553-may-tinh-bang-samsung-galaxy-tab-a7-lite-32gb-bac-3.jpg', 17, 0, '2022-11-05 20:33:51', '2022-11-05 20:33:51', NULL),
(50, 'https://cdn.nguyenkimmall.com/images/detailed/734/10049553-may-tinh-bang-samsung-galaxy-tab-a7-lite-32gb-bac-4.jpg', 17, 0, '2022-11-05 20:33:51', '2022-11-05 20:33:51', NULL),
(51, 'https://cdn.nguyenkimmall.com/images/detailed/739/may-tinh-bang-samsung-galaxy-tab-s7-fe-64gb-xanh.jpg', 20, 1, '2022-11-05 20:33:51', '2022-11-05 20:33:51', NULL),
(52, 'https://cdn.nguyenkimmall.com/images/detailed/739/10049728-may-tinh-bang-samsung-galaxy-tab-s7-fe-64gb-xanh-2.jpg', 20, 0, '2022-11-05 20:33:51', '2022-11-05 20:33:51', NULL),
(53, 'https://cdn.nguyenkimmall.com/images/detailed/739/10049728-may-tinh-bang-samsung-galaxy-tab-s7-fe-64gb-xanh-3.jpg', 20, 0, '2022-11-05 20:33:51', '2022-11-05 20:33:51', NULL),
(54, 'https://cdn.nguyenkimmall.com/images/detailed/739/10049728-may-tinh-bang-samsung-galaxy-tab-s7-fe-64gb-xanh-4.jpg', 20, 0, '2022-11-05 20:33:51', '2022-11-05 20:33:51', NULL),
(55, 'https://cdn.nguyenkimmall.com/images/detailed/734/may-tinh-bang-samsung-galaxy-tab-a7-lite-32gb-xam.jpg', 18, 1, '2022-11-05 20:33:51', '2022-11-05 20:33:51', NULL),
(56, 'https://cdn.nguyenkimmall.com/images/detailed/734/10049552-may-tinh-bang-samsung-galaxy-tab-a7-lite-32gb-xam-2.jpg', 18, 0, '2022-11-05 20:33:51', '2022-11-05 20:33:51', NULL),
(57, 'https://cdn.nguyenkimmall.com/images/detailed/734/10049552-may-tinh-bang-samsung-galaxy-tab-a7-lite-32gb-xam-3.jpg', 18, 0, '2022-11-05 20:33:51', '2022-11-05 20:33:51', NULL),
(58, 'https://cdn.nguyenkimmall.com/images/detailed/734/10049552-may-tinh-bang-samsung-galaxy-tab-a7-lite-32gb-xam-4.jpg', 18, 0, '2022-11-05 20:33:51', '2022-11-05 20:33:51', NULL),
(59, 'https://cdn.nguyenkimmall.com/images/detailed/781/mtb-samsung-sm-x205-64gb-xam.jpg', 19, 1, '2022-11-05 20:33:51', '2022-11-05 20:33:51', NULL),
(60, 'https://cdn.nguyenkimmall.com/images/detailed/781/10050975-mtb-samsung-sm-x205-64gb-xam-2.jpg', 19, 0, '2022-11-05 20:33:51', '2022-11-05 20:33:51', NULL),
(61, 'https://cdn.nguyenkimmall.com/images/detailed/781/10050975-mtb-samsung-sm-x205-64gb-xam-3.jpg', 19, 0, '2022-11-05 20:33:51', '2022-11-05 20:33:51', NULL),
(62, 'https://cdn.nguyenkimmall.com/images/detailed/781/10050975-mtb-samsung-sm-x205-64gb-xam-4.jpg', 19, 0, '2022-11-05 20:33:51', '2022-11-05 20:33:51', NULL),
(63, 'https://cdn.nguyenkimmall.com/images/detailed/736/10049571-may-tinh-bang-ipad-pro-m1-2021-11-inch-wifi-8gb-128gb-mhqr3za-a-xam-01.jpg', 15, 1, '2022-11-05 20:33:51', '2022-11-05 20:33:51', NULL),
(64, 'https://cdn.nguyenkimmall.com/images/detailed/736/10049571-may-tinh-bang-ipad-pro-m1-2021-11-inch-wifi-8gb-128gb-mhqr3za-a-xam-2.jpg', 15, 0, '2022-11-05 20:33:51', '2022-11-05 20:33:51', NULL),
(65, 'https://cdn.nguyenkimmall.com/images/detailed/736/10049571-may-tinh-bang-ipad-pro-m1-2021-11-inch-wifi-8gb-128gb-mhqr3za-a-xam-3.jpg', 15, 0, '2022-11-05 20:33:51', '2022-11-05 20:33:51', NULL),
(66, 'https://cdn.nguyenkimmall.com/images/detailed/736/10049571-may-tinh-bang-ipad-pro-m1-2021-11-inch-wifi-8gb-128gb-mhqr3za-a-xam-4.jpg', 15, 0, '2022-11-05 20:33:51', '2022-11-05 20:33:51', NULL),
(67, 'https://cdn.nguyenkimmall.com/images/detailed/768/10050559-ipad-gen-9-wifi-cellular-64gb-10-2-inch-mk493za-a-bac-2021-vi-1.jpg', 14, 1, '2022-11-05 20:33:51', '2022-11-05 20:33:51', NULL),
(68, 'https://cdn.nguyenkimmall.com/images/detailed/768/10050559-ipad-gen-9-wifi-cellular-64gb-10-2-inch-mk493za-a-bac-2021-vi-2.jpg', 14, 0, '2022-11-05 20:33:51', '2022-11-05 20:33:51', NULL),
(69, 'https://cdn.nguyenkimmall.com/images/detailed/768/10050559-ipad-gen-9-wifi-cellular-64gb-10-2-inch-mk493za-a-bac-2021-vi-3.jpg', 14, 0, '2022-11-05 20:33:51', '2022-11-05 20:33:51', NULL),
(70, 'https://cdn.nguyenkimmall.com/images/detailed/768/10050559-ipad-gen-9-wifi-cellular-64gb-10-2-inch-mk493za-a-bac-2021-vi-4.jpg', 14, 0, '2022-11-05 20:33:51', '2022-11-05 20:33:51', NULL),
(71, 'https://cdn.nguyenkimmall.com/images/detailed/769/V-IPAD-GEN-9-WIFI-64GB-BAC.jpg', 13, 1, '2022-11-05 20:33:51', '2022-11-05 20:33:51', NULL),
(72, 'https://cdn.nguyenkimmall.com/images/detailed/769/ipad-gen-9-wifi-64gb-10-2-inch-mk2l3za-a-bac-2021-vi-2.jpg', 13, 0, '2022-11-05 20:33:51', '2022-11-05 20:33:51', NULL),
(73, 'https://cdn.nguyenkimmall.com/images/detailed/769/ipad-gen-9-wifi-64gb-10-2-inch-mk2l3za-a-bac-2021-vi-3.jpg', 13, 0, '2022-11-05 20:33:51', '2022-11-05 20:33:51', NULL),
(74, 'https://cdn.nguyenkimmall.com/images/detailed/769/ipad-gen-9-wifi-64gb-10-2-inch-mk2l3za-a-bac-2021-vi-4.jpg', 13, 0, '2022-11-05 20:33:51', '2022-11-05 20:33:51', NULL),
(75, 'https://cdn.nguyenkimmall.com/images/detailed/769/V-IPAD-GEN-9-WIFI-256GB-BAC.jpg', 16, 1, '2022-11-05 20:33:51', '2022-11-05 20:33:51', NULL),
(76, 'https://cdn.nguyenkimmall.com/images/detailed/769/10050457-ipad-gen-9-wifi-256gb-10-2-inch-mk2p3za-a-bac-2021-vi-2.jpg', 16, 0, '2022-11-05 20:33:51', '2022-11-05 20:33:51', NULL),
(77, 'https://cdn.nguyenkimmall.com/images/detailed/769/10050457-ipad-gen-9-wifi-256gb-10-2-inch-mk2p3za-a-bac-2021-vi-3.jpg', 16, 0, '2022-11-05 20:33:51', '2022-11-05 20:33:51', NULL),
(78, 'https://cdn.nguyenkimmall.com/images/detailed/769/10050457-ipad-gen-9-wifi-256gb-10-2-inch-mk2p3za-a-bac-2021-vi-4.jpg', 16, 0, '2022-11-05 20:33:51', '2022-11-05 20:33:51', NULL),
(79, 'https://cdn.nguyenkimmall.com/images/detailed/809/10052586-laptop-asus-tuf-gaming-f15-fx506hc-hn144w-1.jpg', 24, 1, '2022-11-05 20:42:33', '2022-11-05 20:42:33', NULL),
(80, 'https://cdn.nguyenkimmall.com/images/detailed/809/10052586-laptop-asus-tuf-gaming-f15-fx506hc-hn144w-2.jpg', 24, 0, '2022-11-05 20:42:33', '2022-11-05 20:42:33', NULL),
(81, 'https://cdn.nguyenkimmall.com/images/detailed/809/10052586-laptop-asus-tuf-gaming-f15-fx506hc-hn144w-3.jpg', 24, 0, '2022-11-05 20:42:33', '2022-11-05 20:42:33', NULL),
(82, 'https://cdn.nguyenkimmall.com/images/detailed/809/10052586-laptop-asus-tuf-gaming-f15-fx506hc-hn144w-4.jpg', 24, 0, '2022-11-05 20:42:33', '2022-11-05 20:42:33', NULL),
(83, 'https://cdn.nguyenkimmall.com/images/detailed/782/10051316-laptop-asus-vivobook-a415ea-eb1750w-1.jpg', 22, 1, '2022-11-05 20:42:33', '2022-11-05 20:42:33', NULL),
(84, 'https://cdn.nguyenkimmall.com/images/detailed/782/10051316-laptop-asus-vivobook-a415ea-eb1750w-2.jpg', 22, 0, '2022-11-05 20:42:33', '2022-11-05 20:42:33', NULL),
(85, 'https://cdn.nguyenkimmall.com/images/detailed/782/10051316-laptop-asus-vivobook-a415ea-eb1750w-3.jpg', 22, 0, '2022-11-05 20:42:33', '2022-11-05 20:42:33', NULL),
(86, 'https://cdn.nguyenkimmall.com/images/detailed/782/10051316-laptop-asus-vivobook-a415ea-eb1750w-4.jpg', 22, 0, '2022-11-05 20:42:33', '2022-11-05 20:42:33', NULL),
(87, 'https://cdn.nguyenkimmall.com/images/detailed/821/10053033-laptop-asus-vivobook-15x-oled-a1503za-l1421w-1.jpg', 23, 1, '2022-11-05 20:42:33', '2022-11-05 20:42:33', NULL),
(88, 'https://cdn.nguyenkimmall.com/images/detailed/821/10053033-laptop-asus-vivobook-15x-oled-a1503za-l1421w-2.jpg', 23, 0, '2022-11-05 20:42:33', '2022-11-05 20:42:33', NULL),
(89, 'https://cdn.nguyenkimmall.com/images/detailed/821/10053033-laptop-asus-vivobook-15x-oled-a1503za-l1421w-3.jpg', 23, 0, '2022-11-05 20:42:33', '2022-11-05 20:42:33', NULL),
(90, 'https://cdn.nguyenkimmall.com/images/detailed/821/10053033-laptop-asus-vivobook-15x-oled-a1503za-l1421w-4.jpg', 23, 0, '2022-11-05 20:42:33', '2022-11-05 20:42:33', NULL),
(91, 'https://cdn.nguyenkimmall.com/images/detailed/776/10051065-laptop-dell-vostro-3405-v4r53500u003w1-1.jpg', 30, 1, '2022-11-05 20:42:33', '2022-11-05 20:42:33', NULL),
(92, 'https://cdn.nguyenkimmall.com/images/detailed/776/10051065-laptop-dell-vostro-3405-v4r53500u003w1-2.jpg', 30, 0, '2022-11-05 20:42:33', '2022-11-05 20:42:33', NULL),
(93, 'https://cdn.nguyenkimmall.com/images/detailed/776/10051065-laptop-dell-vostro-3405-v4r53500u003w1-3.jpg', 30, 0, '2022-11-05 20:42:33', '2022-11-05 20:42:33', NULL),
(94, 'https://cdn.nguyenkimmall.com/images/detailed/776/10051065-laptop-dell-vostro-3405-v4r53500u003w1-4.jpg', 30, 0, '2022-11-05 20:42:33', '2022-11-05 20:42:33', NULL),
(95, 'https://cdn.nguyenkimmall.com/images/companies/_1/Content/Season/2022/camp-11-11/10051066.jpg', 29, 1, '2022-11-05 20:42:33', '2022-11-05 20:42:33', NULL),
(96, 'https://cdn.nguyenkimmall.com/images/detailed/776/10051066-laptop-dell-vostro-5410-i5-11320h-v4i5214w1-2.jpg', 29, 0, '2022-11-05 20:42:33', '2022-11-05 20:42:33', NULL),
(97, 'https://cdn.nguyenkimmall.com/images/detailed/776/10051066-laptop-dell-vostro-5410-i5-11320h-v4i5214w1-3.jpg', 29, 0, '2022-11-05 20:42:33', '2022-11-05 20:42:33', NULL),
(98, 'https://cdn.nguyenkimmall.com/images/detailed/776/10051066-laptop-dell-vostro-5410-i5-11320h-v4i5214w1-4.jpg', 29, 0, '2022-11-05 20:42:33', '2022-11-05 20:42:33', NULL),
(99, 'https://cdn.nguyenkimmall.com/images/companies/_1/Content/Season/2022/camp-11-11/10051122.jpg', 21, 1, '2022-11-05 20:42:33', '2022-11-05 20:42:33', NULL),
(100, 'https://cdn.nguyenkimmall.com/images/detailed/775/10051122-laptop-asus-vivobook-x415ea-ek675w-i3-1115g4-2.jpg', 21, 0, '2022-11-05 20:42:33', '2022-11-05 20:42:33', NULL),
(101, 'https://cdn.nguyenkimmall.com/images/detailed/775/10051122-laptop-asus-vivobook-x415ea-ek675w-i3-1115g4-3.jpg', 21, 0, '2022-11-05 20:42:33', '2022-11-05 20:42:33', NULL),
(102, 'https://cdn.nguyenkimmall.com/images/detailed/775/10051122-laptop-asus-vivobook-x415ea-ek675w-i3-1115g4-4.jpg', 21, 0, '2022-11-05 20:42:33', '2022-11-05 20:42:33', NULL),
(103, 'https://cdn.nguyenkimmall.com/images/detailed/822/10052941-laptop-hp-pavilion-15-eg2058tu-6k788pa-1.jpg', 28, 1, '2022-11-05 20:42:33', '2022-11-05 20:42:33', NULL),
(104, 'https://cdn.nguyenkimmall.com/images/detailed/822/10052941-laptop-hp-pavilion-15-eg2058tu-6k788pa-2.jpg', 28, 0, '2022-11-05 20:42:33', '2022-11-05 20:42:33', NULL),
(105, 'https://cdn.nguyenkimmall.com/images/detailed/822/10052941-laptop-hp-pavilion-15-eg2058tu-6k788pa-3.jpg', 28, 0, '2022-11-05 20:42:33', '2022-11-05 20:42:33', NULL),
(106, 'https://cdn.nguyenkimmall.com/images/detailed/822/10052941-laptop-hp-pavilion-15-eg2058tu-6k788pa-4.jpg', 28, 0, '2022-11-05 20:42:33', '2022-11-05 20:42:33', NULL),
(107, 'https://cdn.nguyenkimmall.com/images/detailed/795/10051604-laptop-dell-v3400-yx51w5-1135g78gd4512ssd.jpg', 31, 1, '2022-11-05 20:42:33', '2022-11-05 20:42:33', NULL),
(108, 'https://cdn.nguyenkimmall.com/images/detailed/795/10051604-laptop-dell-v3400-yx51w5-1135g78gd4512ssd-1.jpg', 31, 0, '2022-11-05 20:42:33', '2022-11-05 20:42:33', NULL),
(109, 'https://cdn.nguyenkimmall.com/images/detailed/795/10051604-laptop-dell-v3400-yx51w5-1135g78gd4512ssd-2.jpg', 31, 0, '2022-11-05 20:42:33', '2022-11-05 20:42:33', NULL),
(110, 'https://cdn.nguyenkimmall.com/images/detailed/795/10051604-laptop-dell-v3400-yx51w5-1135g78gd4512ssd-3.jpg', 31, 0, '2022-11-05 20:42:33', '2022-11-05 20:42:33', NULL),
(111, 'https://cdn.nguyenkimmall.com/images/detailed/832/10053340-laptop-hp-15s-fq2663tu-i3-1115g4-6k796pa-1.jpg', 25, 1, '2022-11-05 20:42:34', '2022-11-05 20:42:34', NULL),
(112, 'https://cdn.nguyenkimmall.com/images/detailed/832/10053340-laptop-hp-15s-fq2663tu-i3-1115g4-6k796pa-2.jpg', 25, 0, '2022-11-05 20:42:34', '2022-11-05 20:42:34', NULL),
(113, 'https://cdn.nguyenkimmall.com/images/detailed/832/10053340-laptop-hp-15s-fq2663tu-i3-1115g4-6k796pa-3.jpg', 25, 0, '2022-11-05 20:42:34', '2022-11-05 20:42:34', NULL),
(114, 'https://cdn.nguyenkimmall.com/images/detailed/832/10053340-laptop-hp-15s-fq2663tu-i3-1115g4-6k796pa-4.jpg', 25, 0, '2022-11-05 20:42:34', '2022-11-05 20:42:34', NULL),
(115, 'https://cdn.nguyenkimmall.com/images/companies/_1/Content/Season/2022/camp-11-11/10051046.jpg', 32, 1, '2022-11-05 20:42:34', '2022-11-05 20:42:34', NULL),
(116, 'https://cdn.nguyenkimmall.com/images/detailed/776/10051046-laptop-dell-vostro-3400-i5-1135g7-70270645-2.jpg', 32, 0, '2022-11-05 20:42:34', '2022-11-05 20:42:34', NULL),
(117, 'https://cdn.nguyenkimmall.com/images/detailed/777/10051046-laptop-dell-vostro-3400-i5-1135g7-70270645-3.jpg', 32, 0, '2022-11-05 20:42:34', '2022-11-05 20:42:34', NULL),
(118, 'https://cdn.nguyenkimmall.com/images/detailed/777/10051046-laptop-dell-vostro-3400-i5-1135g7-70270645-4.jpg', 32, 0, '2022-11-05 20:42:34', '2022-11-05 20:42:34', NULL),
(119, 'https://cdn.nguyenkimmall.com/images/detailed/762/10050196-laptop-hp-pavilion-15-eg0509tu-i3-1125g4-46m08pa-1.jpg', 27, 1, '2022-11-05 20:42:34', '2022-11-05 20:42:34', NULL),
(120, 'https://cdn.nguyenkimmall.com/images/detailed/762/10050196-laptop-hp-pavilion-15-eg0509tu-i3-1125g4-46m08pa-2.jpg', 27, 0, '2022-11-05 20:42:34', '2022-11-05 20:42:34', NULL),
(121, 'https://cdn.nguyenkimmall.com/images/detailed/762/10050196-laptop-hp-pavilion-15-eg0509tu-i3-1125g4-46m08pa-3.jpg', 27, 0, '2022-11-05 20:42:34', '2022-11-05 20:42:34', NULL),
(122, 'https://cdn.nguyenkimmall.com/images/detailed/762/10050196-laptop-hp-pavilion-15-eg0509tu-i3-1125g4-46m08pa-4.jpg', 27, 0, '2022-11-05 20:42:34', '2022-11-05 20:42:34', NULL),
(123, 'https://cdn.nguyenkimmall.com/images/detailed/817/10052823-laptop-hp-240-g8-617l4pa-1.jpg', 26, 1, '2022-11-05 20:42:34', '2022-11-05 20:42:34', NULL),
(124, 'https://cdn.nguyenkimmall.com/images/detailed/817/10052823-laptop-hp-240-g8-617l4pa-2.jpg', 26, 0, '2022-11-05 20:42:34', '2022-11-05 20:42:34', NULL),
(125, 'https://cdn.nguyenkimmall.com/images/detailed/817/10052823-laptop-hp-240-g8-617l4pa-3.jpg', 26, 0, '2022-11-05 20:42:34', '2022-11-05 20:42:34', NULL),
(126, 'https://cdn.nguyenkimmall.com/images/detailed/817/10052823-laptop-hp-240-g8-617l4pa-4.jpg', 26, 0, '2022-11-05 20:42:34', '2022-11-05 20:42:34', NULL),
(127, 'https://cdn.nguyenkimmall.com/images/detailed/716/10048667-may-lanh-toshiba-inverter-1-5-hp-ras-h13e2kcvg-v.jpg', 42, 1, '2022-11-06 10:19:40', '2022-11-06 10:19:40', NULL),
(128, 'https://cdn.nguyenkimmall.com/images/detailed/716/10048667-may-lanh-toshiba-inverter-1-5-hp-ras-h13e2kcvg-v-02.jpg', 42, 0, '2022-11-06 10:19:40', '2022-11-06 10:19:40', NULL),
(129, 'https://cdn.nguyenkimmall.com/images/detailed/716/10048667-may-lanh-toshiba-inverter-1-5-hp-ras-h13e2kcvg-v-03.jpg', 42, 0, '2022-11-06 10:19:40', '2022-11-06 10:19:40', NULL),
(130, 'https://cdn.nguyenkimmall.com/images/detailed/716/10048667-may-lanh-toshiba-inverter-1-5-hp-ras-h13e2kcvg-v-04.jpg', 42, 0, '2022-11-06 10:19:40', '2022-11-06 10:19:40', NULL),
(131, 'https://cdn.nguyenkimmall.com/images/detailed/640/10045076-may-lanh-daikin-1-5-hp-atf35uv1v_tosh-l4.jpg', 38, 1, '2022-11-06 10:19:41', '2022-11-06 10:19:41', NULL),
(132, 'https://cdn.nguyenkimmall.com/images/detailed/640/10045076-may-lanh-daikin-1-5-hp-atf35uv1v-02.jpg', 38, 0, '2022-11-06 10:19:41', '2022-11-06 10:19:41', NULL),
(133, 'https://cdn.nguyenkimmall.com/images/detailed/640/10045076-may-lanh-daikin-1-5-hp-atf35uv1v-03.jpg', 38, 0, '2022-11-06 10:19:41', '2022-11-06 10:19:41', NULL),
(134, 'https://cdn.nguyenkimmall.com/images/detailed/640/10045076-may-lanh-daikin-1-5-hp-atf35uv1v-04.jpg', 38, 0, '2022-11-06 10:19:41', '2022-11-06 10:19:41', NULL),
(135, 'https://cdn.nguyenkimmall.com/images/detailed/652/10045217-may-lanh-panasonic-1-5-hp-cu-cs-n12wkh-8m.jpg', 33, 1, '2022-11-06 10:19:41', '2022-11-06 10:19:41', NULL),
(136, 'https://cdn.nguyenkimmall.com/images/detailed/652/10045217-may-lanh-panasonic-1-5-hp-cu-cs-n12wkh-8m-02.jpg', 33, 0, '2022-11-06 10:19:41', '2022-11-06 10:19:41', NULL),
(137, 'https://cdn.nguyenkimmall.com/images/detailed/652/10045217-may-lanh-panasonic-1-5-hp-cu-cs-n12wkh-8m-03.jpg', 33, 0, '2022-11-06 10:19:41', '2022-11-06 10:19:41', NULL),
(138, 'https://cdn.nguyenkimmall.com/images/detailed/652/10045217-may-lanh-panasonic-1-5-hp-cu-cs-n12wkh-8m-04.jpg', 33, 0, '2022-11-06 10:19:41', '2022-11-06 10:19:41', NULL),
(139, 'https://cdn.nguyenkimmall.com/images/detailed/510/10035897-may-lanh-panasonic-inverter-1-hp-cu-cs-vu9ukh-8-01.jpg', 35, 1, '2022-11-06 10:19:41', '2022-11-06 10:19:41', NULL),
(140, 'https://cdn.nguyenkimmall.com/images/detailed/510/10035897-may-lanh-panasonic-inverter-1-hp-cu-cs-vu9ukh-8-02.jpg', 35, 0, '2022-11-06 10:19:41', '2022-11-06 10:19:41', NULL),
(141, 'https://cdn.nguyenkimmall.com/images/detailed/510/10035897-may-lanh-panasonic-inverter-1-hp-cu-cs-vu9ukh-8-03.jpg', 35, 0, '2022-11-06 10:19:41', '2022-11-06 10:19:41', NULL),
(142, 'https://cdn.nguyenkimmall.com/images/detailed/510/10035897-may-lanh-panasonic-inverter-1-hp-cu-cs-vu9ukh-8-04.jpg', 35, 0, '2022-11-06 10:19:41', '2022-11-06 10:19:41', NULL),
(143, 'https://cdn.nguyenkimmall.com/images/detailed/717/10048578-may-lanh-toshiba-inverter-1-5-hp-ras-h13c3kcvg-v.jpg', 41, 1, '2022-11-06 10:19:41', '2022-11-06 10:19:41', NULL),
(144, 'https://cdn.nguyenkimmall.com/images/detailed/717/10048578-may-lanh-toshiba-inverter-1-5-hp-ras-h13c3kcvg-v-02.jpg', 41, 0, '2022-11-06 10:19:41', '2022-11-06 10:19:41', NULL),
(145, 'https://cdn.nguyenkimmall.com/images/detailed/717/10048578-may-lanh-toshiba-inverter-1-5-hp-ras-h13c3kcvg-v-03.jpg', 41, 0, '2022-11-06 10:19:41', '2022-11-06 10:19:41', NULL),
(146, 'https://cdn.nguyenkimmall.com/images/detailed/717/10048578-may-lanh-toshiba-inverter-1-5-hp-ras-h13c3kcvg-v-04.jpg', 41, 0, '2022-11-06 10:19:41', '2022-11-06 10:19:41', NULL),
(147, 'https://cdn.nguyenkimmall.com/images/detailed/716/10048666-may-lanh-toshiba-inverter-1-hp-ras-h10e2kcvg-v.jpg', 43, 1, '2022-11-06 10:19:41', '2022-11-06 10:19:41', NULL),
(148, 'https://cdn.nguyenkimmall.com/images/detailed/716/10048666-may-lanh-toshiba-inverter-1-hp-ras-h10e2kcvg-v-02.jpg', 43, 0, '2022-11-06 10:19:41', '2022-11-06 10:19:41', NULL),
(149, 'https://cdn.nguyenkimmall.com/images/detailed/716/10048666-may-lanh-toshiba-inverter-1-hp-ras-h10e2kcvg-v-03.jpg', 43, 0, '2022-11-06 10:19:41', '2022-11-06 10:19:41', NULL),
(150, 'https://cdn.nguyenkimmall.com/images/detailed/716/10048666-may-lanh-toshiba-inverter-1-hp-ras-h10e2kcvg-v-04.jpg', 43, 0, '2022-11-06 10:19:41', '2022-11-06 10:19:41', NULL),
(151, 'https://cdn.nguyenkimmall.com/images/detailed/716/10048669-may-lanh-toshiba-inverter-2-5-hp-ras-h24e2kcvg-v.jpg', 44, 1, '2022-11-06 10:19:41', '2022-11-06 10:19:41', NULL),
(152, 'https://cdn.nguyenkimmall.com/images/detailed/716/10048669-may-lanh-toshiba-inverter-2-5-hp-ras-h24e2kcvg-v-02.jpg', 44, 0, '2022-11-06 10:19:41', '2022-11-06 10:19:41', NULL),
(153, 'https://cdn.nguyenkimmall.com/images/detailed/716/10048669-may-lanh-toshiba-inverter-2-5-hp-ras-h24e2kcvg-v-03.jpg', 44, 0, '2022-11-06 10:19:41', '2022-11-06 10:19:41', NULL),
(154, 'https://cdn.nguyenkimmall.com/images/detailed/716/10048669-may-lanh-toshiba-inverter-2-5-hp-ras-h24e2kcvg-v-04.jpg', 44, 0, '2022-11-06 10:19:41', '2022-11-06 10:19:41', NULL),
(155, 'https://cdn.nguyenkimmall.com/images/detailed/602/10042624-may-lanh-daikin-inverter-1-5-hp-atkc35uavmv_n8wq-us.jpg', 40, 1, '2022-11-06 10:19:41', '2022-11-06 10:19:41', NULL),
(156, 'https://cdn.nguyenkimmall.com/images/detailed/603/10042624-may-lanh-daikin-inverter-1-5-hp-atkc35uavmv-02.jpg', 40, 0, '2022-11-06 10:19:41', '2022-11-06 10:19:41', NULL),
(157, 'https://cdn.nguyenkimmall.com/images/detailed/603/10042624-may-lanh-daikin-inverter-1-5-hp-atkc35uavmv-03.jpg', 40, 0, '2022-11-06 10:19:41', '2022-11-06 10:19:41', NULL),
(158, 'https://cdn.nguyenkimmall.com/images/detailed/644/10042624-may-lanh-daikin-inverter-1-5-hp-atkc35uavmv-04.jpg', 40, 0, '2022-11-06 10:19:41', '2022-11-06 10:19:41', NULL),
(159, 'https://cdn.nguyenkimmall.com/images/detailed/731/10049137-may-lanh-daikin-inverter-1-5-hp-ftka35vmvmv-0.jpg', 39, 1, '2022-11-06 10:19:41', '2022-11-06 10:19:41', NULL),
(160, 'https://cdn.nguyenkimmall.com/images/detailed/652/10045216-may-lanh-panasonic-1-hp-cu-cs-n9wkh-8m.jpg', 34, 1, '2022-11-06 10:19:41', '2022-11-06 10:19:41', NULL),
(161, 'https://cdn.nguyenkimmall.com/images/detailed/652/10045216-may-lanh-panasonic-1-hp-cu-cs-n9wkh-8m-02.jpg', 34, 0, '2022-11-06 10:19:41', '2022-11-06 10:19:41', NULL),
(162, 'https://cdn.nguyenkimmall.com/images/detailed/652/10045216-may-lanh-panasonic-1-hp-cu-cs-n9wkh-8m-03.jpg', 34, 0, '2022-11-06 10:19:41', '2022-11-06 10:19:41', NULL),
(163, 'https://cdn.nguyenkimmall.com/images/detailed/652/10045216-may-lanh-panasonic-1-hp-cu-cs-n9wkh-8m-04.jpg', 34, 0, '2022-11-06 10:19:41', '2022-11-06 10:19:41', NULL),
(164, 'https://cdn.nguyenkimmall.com/images/detailed/640/10045075-may-lanh-daikin-1-hp-atf25uv1v-1_3lk5-at.jpg', 37, 1, '2022-11-06 10:19:41', '2022-11-06 10:19:41', NULL),
(165, 'https://cdn.nguyenkimmall.com/images/detailed/640/10045075-may-lanh-daikin-1-hp-atf25uv1v-02.jpg', 37, 0, '2022-11-06 10:19:41', '2022-11-06 10:19:41', NULL),
(166, 'https://cdn.nguyenkimmall.com/images/detailed/640/10045075-may-lanh-daikin-1-hp-atf25uv1v-03.jpg', 37, 0, '2022-11-06 10:19:41', '2022-11-06 10:19:41', NULL),
(167, 'https://cdn.nguyenkimmall.com/images/detailed/640/10045075-may-lanh-daikin-1-hp-atf25uv1v-04.jpg', 37, 0, '2022-11-06 10:19:41', '2022-11-06 10:19:41', NULL),
(168, 'https://cdn.nguyenkimmall.com/images/detailed/752/10050086-may-lanh-panasonic-inverter-1-hp-cu-cs-xu9xkh-8-01.jpg', 36, 1, '2022-11-06 10:19:41', '2022-11-06 10:19:41', NULL),
(169, 'https://cdn.nguyenkimmall.com/images/detailed/752/10050086-may-lanh-panasonic-inverter-1-hp-cu-cs-xu9xkh-8-2.jpg', 36, 0, '2022-11-06 10:19:41', '2022-11-06 10:19:41', NULL),
(170, 'https://cdn.nguyenkimmall.com/images/detailed/752/10050086-may-lanh-panasonic-inverter-1-hp-cu-cs-xu9xkh-8-3.jpg', 36, 0, '2022-11-06 10:19:41', '2022-11-06 10:19:41', NULL),
(171, 'https://cdn.nguyenkimmall.com/images/detailed/752/10050086-may-lanh-panasonic-inverter-1-hp-cu-cs-xu9xkh-8-4.jpg', 36, 0, '2022-11-06 10:19:41', '2022-11-06 10:19:41', NULL),
(172, 'https://cdn.nguyenkimmall.com/images/detailed/274/10033924-tu-lanh-samsung-inverter-208l-rt19m300bgs-1.jpg', 48, 1, '2022-11-06 10:34:17', '2022-11-06 10:34:17', NULL),
(173, 'https://cdn.nguyenkimmall.com/images/detailed/272/10033924-tu-lanh-samsung-inverter-208l-rt19m300bgs-2.jpg', 48, 0, '2022-11-06 10:34:17', '2022-11-06 10:34:17', NULL),
(174, 'https://cdn.nguyenkimmall.com/images/detailed/272/10033924-tu-lanh-samsung-inverter-208l-rt19m300bgs-3.jpg', 48, 0, '2022-11-06 10:34:17', '2022-11-06 10:34:17', NULL),
(175, 'https://cdn.nguyenkimmall.com/images/detailed/272/10033924-tu-lanh-samsung-inverter-208l-rt19m300bgs-4.jpg', 48, 0, '2022-11-06 10:34:17', '2022-11-06 10:34:17', NULL),
(176, 'https://cdn.nguyenkimmall.com/images/detailed/274/10033924-tu-lanh-samsung-inverter-208l-rt19m300bgs-1.jpg', 48, 1, '2022-11-06 10:34:35', '2022-11-06 11:59:38', '2022-11-06 11:59:38'),
(177, 'https://cdn.nguyenkimmall.com/images/detailed/272/10033924-tu-lanh-samsung-inverter-208l-rt19m300bgs-2.jpg', 48, 0, '2022-11-06 10:34:35', '2022-11-06 11:59:38', '2022-11-06 11:59:38'),
(178, 'https://cdn.nguyenkimmall.com/images/detailed/272/10033924-tu-lanh-samsung-inverter-208l-rt19m300bgs-3.jpg', 48, 0, '2022-11-06 10:34:35', '2022-11-06 11:59:38', '2022-11-06 11:59:38'),
(179, 'https://cdn.nguyenkimmall.com/images/detailed/272/10033924-tu-lanh-samsung-inverter-208l-rt19m300bgs-4.jpg', 48, 0, '2022-11-06 10:34:35', '2022-11-06 11:59:38', '2022-11-06 11:59:38'),
(180, 'https://cdn.nguyenkimmall.com/images/detailed/591/10042058-tu-lanh-samsung-inverter-680-lit-sbs-rs62r5001m9-1.jpg', 46, 1, '2022-11-06 10:34:35', '2022-11-06 10:34:35', NULL),
(181, 'https://cdn.nguyenkimmall.com/images/detailed/594/10042058-tu-lanh-samsung-inverter-680-lit-sbs-rs62r5001m9-2.jpg', 46, 0, '2022-11-06 10:34:35', '2022-11-06 10:34:35', NULL),
(182, 'https://cdn.nguyenkimmall.com/images/detailed/594/10042058-tu-lanh-samsung-inverter-680-lit-sbs-rs62r5001m9-3.jpg', 46, 0, '2022-11-06 10:34:35', '2022-11-06 10:34:35', NULL),
(183, 'https://cdn.nguyenkimmall.com/images/detailed/594/10042058-tu-lanh-samsung-inverter-680-lit-sbs-rs62r5001m9-4_5y9j-xw.jpg', 46, 0, '2022-11-06 10:34:35', '2022-11-06 10:34:35', NULL),
(184, 'https://cdn.nguyenkimmall.com/images/detailed/735/10049453-tu-lanh-panasonic-inverter-366-lit-nr-tl381gpkv-1.jpg', 49, 1, '2022-11-06 10:34:35', '2022-11-06 10:34:35', NULL),
(185, 'https://cdn.nguyenkimmall.com/images/detailed/515/10036263-tu-lanh-sharp-556l-sj-fx631v-sl-1.jpg', 53, 1, '2022-11-06 10:34:35', '2022-11-06 10:34:35', NULL),
(186, 'https://cdn.nguyenkimmall.com/images/detailed/515/10036263-tu-lanh-sharp-556l-sj-fx631v-sl-2.jpg', 53, 0, '2022-11-06 10:34:35', '2022-11-06 10:34:35', NULL),
(187, 'https://cdn.nguyenkimmall.com/images/detailed/515/10036263-tu-lanh-sharp-556l-sj-fx631v-sl-3.jpg', 53, 0, '2022-11-06 10:34:35', '2022-11-06 10:34:35', NULL),
(188, 'https://cdn.nguyenkimmall.com/images/detailed/534/10036263-tu-lanh-sharp-556l-sj-fx631v-sl-4_vcy9-a9.jpg', 53, 0, '2022-11-06 10:34:35', '2022-11-06 10:34:35', NULL),
(189, 'https://cdn.nguyenkimmall.com/images/detailed/724/10049087-tu-lanh-panasonic-inverter-420l-nr-bx471wgkv-1.jpg', 51, 1, '2022-11-06 10:34:35', '2022-11-06 10:34:35', NULL),
(190, 'https://cdn.nguyenkimmall.com/images/detailed/724/10049087-tu-lanh-panasonic-inverter-420l-nr-bx471wgkv-2.jpg', 51, 0, '2022-11-06 10:34:35', '2022-11-06 10:34:35', NULL),
(191, 'https://cdn.nguyenkimmall.com/images/detailed/724/10049087-tu-lanh-panasonic-inverter-420l-nr-bx471wgkv-3.jpg', 51, 0, '2022-11-06 10:34:35', '2022-11-06 10:34:35', NULL),
(192, 'https://cdn.nguyenkimmall.com/images/detailed/724/10049087-tu-lanh-panasonic-inverter-420l-nr-bx471wgkv-4_jliy-bn.jpg', 51, 0, '2022-11-06 10:34:35', '2022-11-06 10:34:35', NULL),
(193, 'https://cdn.nguyenkimmall.com/images/detailed/297/10031742-tu-lanh-sharp-inverter-342l-sj-a346e-sl-1.jpg', 54, 1, '2022-11-06 10:34:35', '2022-11-06 10:34:35', NULL),
(194, 'https://cdn.nguyenkimmall.com/images/detailed/297/10031742-tu-lanh-sharp-inverter-342l-sj-a346e-sl-2_k2vk-w7.jpg', 54, 0, '2022-11-06 10:34:35', '2022-11-06 10:34:35', NULL),
(195, 'https://cdn.nguyenkimmall.com/images/detailed/646/10031742-tu-lanh-sharp-inverter-342l-sj-a346e-sl-3_fxpe-ij.jpg', 54, 0, '2022-11-06 10:34:35', '2022-11-06 10:34:35', NULL),
(196, 'https://cdn.nguyenkimmall.com/images/detailed/646/10031742-tu-lanh-sharp-inverter-342l-sj-a346e-sl-4_8iwu-is.jpg', 54, 0, '2022-11-06 10:34:35', '2022-11-06 10:34:35', NULL),
(197, 'https://cdn.nguyenkimmall.com/images/detailed/640/10045339-tu-lanh-samsung-inverter-236l-rt22m4032bu-1.jpg', 47, 1, '2022-11-06 10:34:35', '2022-11-06 10:34:35', NULL),
(198, 'https://cdn.nguyenkimmall.com/images/detailed/640/10045339-tu-lanh-samsung-inverter-236l-rt22m4032bu-2.jpg', 47, 0, '2022-11-06 10:34:35', '2022-11-06 10:34:35', NULL),
(199, 'https://cdn.nguyenkimmall.com/images/detailed/640/10045339-tu-lanh-samsung-inverter-236l-rt22m4032bu-3.jpg', 47, 0, '2022-11-06 10:34:35', '2022-11-06 10:34:35', NULL),
(200, 'https://cdn.nguyenkimmall.com/images/detailed/640/10045339-tu-lanh-samsung-inverter-236l-rt22m4032bu-4.jpg', 47, 0, '2022-11-06 10:34:35', '2022-11-06 10:34:35', NULL),
(201, 'https://cdn.nguyenkimmall.com/images/detailed/640/10045345-tu-lanh-samsung-inverter-208l-rt20har8dbu-1.jpg', 45, 1, '2022-11-06 10:34:35', '2022-11-06 10:34:35', NULL),
(202, 'https://cdn.nguyenkimmall.com/images/detailed/640/10045345-tu-lanh-samsung-inverter-208l-rt20har8dbu-2.jpg', 45, 0, '2022-11-06 10:34:35', '2022-11-06 10:34:35', NULL),
(203, 'https://cdn.nguyenkimmall.com/images/detailed/640/10045345-tu-lanh-samsung-inverter-208l-rt20har8dbu-3.jpg', 45, 0, '2022-11-06 10:34:35', '2022-11-06 10:34:35', NULL),
(204, 'https://cdn.nguyenkimmall.com/images/detailed/692/10045345-tu-lanh-samsung-inverter-208l-rt20har8dbu-4.jpg', 45, 0, '2022-11-06 10:34:35', '2022-11-06 10:34:35', NULL),
(205, 'https://cdn.nguyenkimmall.com/images/detailed/500/10035388-tu-lanh-sharp-inverter-180-lit-sj-x196e-sl-1.jpg', 56, 1, '2022-11-06 10:34:35', '2022-11-06 10:34:35', NULL),
(206, 'https://cdn.nguyenkimmall.com/images/detailed/500/10035388-tu-lanh-sharp-inverter-180-lit-sj-x196e-sl-2.jpg', 56, 0, '2022-11-06 10:34:35', '2022-11-06 10:34:35', NULL),
(207, 'https://cdn.nguyenkimmall.com/images/detailed/512/10035388-tu-lanh-sharp-inverter-180-lit-sj-x196e-sl-3.jpg', 56, 0, '2022-11-06 10:34:35', '2022-11-06 10:34:35', NULL),
(208, 'https://cdn.nguyenkimmall.com/images/detailed/534/10035388-tu-lanh-sharp-inverter-180-lit-sj-x196e-sl-4_9sl3-xb.jpg', 56, 0, '2022-11-06 10:34:35', '2022-11-06 10:34:35', NULL),
(209, 'https://cdn.nguyenkimmall.com/images/detailed/733/10049391-tu-lanh-panasonic-inverter-234l-nr-tv261apsv-1_cytm-nn.jpg', 50, 1, '2022-11-06 10:34:35', '2022-11-06 10:34:35', NULL),
(210, 'https://cdn.nguyenkimmall.com/images/detailed/297/10029435-tu-lanh-sharp-inverter-253l-sj-x281e-sl-1.jpg', 55, 1, '2022-11-06 10:34:35', '2022-11-06 10:34:35', NULL),
(211, 'https://cdn.nguyenkimmall.com/images/detailed/297/10029435-tu-lanh-sharp-inverter-253l-sj-x281e-sl-2.jpg', 55, 0, '2022-11-06 10:34:35', '2022-11-06 10:34:35', NULL),
(212, 'https://cdn.nguyenkimmall.com/images/detailed/297/10029435-tu-lanh-sharp-inverter-253l-sj-x281e-sl-3.jpg', 55, 0, '2022-11-06 10:34:35', '2022-11-06 10:34:35', NULL),
(213, 'https://cdn.nguyenkimmall.com/images/detailed/297/10029435-tu-lanh-sharp-inverter-253l-sj-x281e-sl-4.jpg', 55, 0, '2022-11-06 10:34:35', '2022-11-06 10:34:35', NULL),
(214, 'https://cdn.nguyenkimmall.com/images/detailed/735/10049454-tu-lanh-panasonic-inverter-326-lit-nr-tl351gpkv-1.jpg', 52, 1, '2022-11-06 10:34:35', '2022-11-06 10:34:35', NULL),
(215, 'https://cdn.nguyenkimmall.com/images/detailed/825/10052636-may-giat-say-lg-inverter-fv1410d4p-1.jpg', 57, 1, '2022-11-06 10:49:49', '2022-11-06 10:49:49', NULL),
(216, 'https://cdn.nguyenkimmall.com/images/detailed/825/10052636-may-giat-say-lg-inverter-fv1410d4p-2.jpg', 57, 0, '2022-11-06 10:49:49', '2022-11-06 10:49:49', NULL),
(217, 'https://cdn.nguyenkimmall.com/images/detailed/825/10052636-may-giat-say-lg-inverter-fv1410d4p-3.jpg', 57, 0, '2022-11-06 10:49:49', '2022-11-06 10:49:49', NULL),
(218, 'https://cdn.nguyenkimmall.com/images/detailed/825/10052636-may-giat-say-lg-inverter-fv1410d4p-4.jpg', 57, 0, '2022-11-06 10:49:49', '2022-11-06 10:49:49', NULL),
(219, 'https://cdn.nguyenkimmall.com/images/detailed/761/10050502-may-giat-electrolux-inverter-10kg-ewf1024p5wb-1.jpg', 64, 1, '2022-11-06 10:49:49', '2022-11-06 10:49:49', NULL),
(220, 'https://cdn.nguyenkimmall.com/images/detailed/761/10050502-may-giat-electrolux-inverter-10kg-ewf1024p5wb-2.jpg', 64, 0, '2022-11-06 10:49:49', '2022-11-06 10:49:49', NULL),
(221, 'https://cdn.nguyenkimmall.com/images/detailed/761/10050502-may-giat-electrolux-inverter-10kg-ewf1024p5wb-3.jpg', 64, 0, '2022-11-06 10:49:49', '2022-11-06 10:49:49', NULL),
(222, 'https://cdn.nguyenkimmall.com/images/detailed/761/10050502-may-giat-electrolux-inverter-10kg-ewf1024p5wb-4.jpg', 64, 0, '2022-11-06 10:49:49', '2022-11-06 10:49:49', NULL),
(223, 'https://cdn.nguyenkimmall.com/images/detailed/528/10036925-may-giat-toshiba-9-kg-aw-h1000gv-1_mghc-6v.jpg', 68, 1, '2022-11-06 10:49:49', '2022-11-06 10:49:49', NULL),
(224, 'https://cdn.nguyenkimmall.com/images/detailed/528/10036925-may-giat-toshiba-9-kg-aw-h1000gv-2_tbqs-gl.jpg', 68, 0, '2022-11-06 10:49:49', '2022-11-06 10:49:49', NULL),
(225, 'https://cdn.nguyenkimmall.com/images/detailed/536/10036925-may-giat-toshiba-9-kg-aw-h1000gv-3.jpg', 68, 0, '2022-11-06 10:49:49', '2022-11-06 10:49:49', NULL),
(226, 'https://cdn.nguyenkimmall.com/images/detailed/648/10036925-may-giat-toshiba-9-kg-aw-h1000gv-4.jpg', 68, 0, '2022-11-06 10:49:49', '2022-11-06 10:49:49', NULL),
(227, 'https://cdn.nguyenkimmall.com/images/product/819/10052634-may-giat-say-lg-inverter-f2515rtgb-1.jpg', 58, 1, '2022-11-06 10:49:49', '2022-11-06 10:49:49', NULL),
(228, 'https://cdn.nguyenkimmall.com/images/product/819/10052634-may-giat-say-lg-inverter-f2515rtgb-2.jpg', 58, 0, '2022-11-06 10:49:49', '2022-11-06 10:49:49', NULL),
(229, 'https://cdn.nguyenkimmall.com/images/detailed/817/10052634-may-giat-say-lg-inverter-f2515rtgb-4.jpg', 58, 0, '2022-11-06 10:49:49', '2022-11-06 10:49:49', NULL),
(230, 'https://cdn.nguyenkimmall.com/images/detailed/817/10052634-may-giat-say-lg-inverter-f2515rtgb-5.jpg', 58, 0, '2022-11-06 10:49:49', '2022-11-06 10:49:49', NULL),
(231, 'https://cdn.nguyenkimmall.com/images/detailed/715/10047654-may-giat-lg-inverter-15-kg-f2515stgw-1.jpg', 60, 1, '2022-11-06 10:49:50', '2022-11-06 10:49:50', NULL),
(232, 'https://cdn.nguyenkimmall.com/images/detailed/715/10047654-may-giat-lg-inverter-15-kg-f2515stgw-2.jpg', 60, 0, '2022-11-06 10:49:50', '2022-11-06 10:49:50', NULL),
(233, 'https://cdn.nguyenkimmall.com/images/detailed/715/10047654-may-giat-lg-inverter-15-kg-f2515stgw-3.jpg', 60, 0, '2022-11-06 10:49:50', '2022-11-06 10:49:50', NULL),
(234, 'https://cdn.nguyenkimmall.com/images/detailed/715/10047654-may-giat-lg-inverter-15-kg-f2515stgw-4.jpg', 60, 0, '2022-11-06 10:49:50', '2022-11-06 10:49:50', NULL),
(235, 'https://cdn.nguyenkimmall.com/images/detailed/760/10050498-may-giat-electrolux-inverter-9kg-ewf9024p5wb-1.jpg', 61, 1, '2022-11-06 10:49:50', '2022-11-06 10:49:50', NULL),
(236, 'https://cdn.nguyenkimmall.com/images/detailed/760/10050498-may-giat-electrolux-inverter-9kg-ewf9024p5wb-2.jpg', 61, 0, '2022-11-06 10:49:50', '2022-11-06 10:49:50', NULL),
(237, 'https://cdn.nguyenkimmall.com/images/detailed/760/10050498-may-giat-electrolux-inverter-9kg-ewf9024p5wb-3.jpg', 61, 0, '2022-11-06 10:49:50', '2022-11-06 10:49:50', NULL),
(238, 'https://cdn.nguyenkimmall.com/images/detailed/760/10050498-may-giat-electrolux-inverter-9kg-ewf9024p5wb-4.jpg', 61, 0, '2022-11-06 10:49:50', '2022-11-06 10:49:50', NULL),
(239, 'https://cdn.nguyenkimmall.com/images/detailed/813/10052830-may-giat-electrolux-inverter-8-kg-ewf8024d3wb-1.jpg', 63, 1, '2022-11-06 10:49:50', '2022-11-06 10:49:50', NULL),
(240, 'https://cdn.nguyenkimmall.com/images/detailed/813/10052830-may-giat-electrolux-inverter-8-kg-ewf8024d3wb-2.jpg', 63, 0, '2022-11-06 10:49:50', '2022-11-06 10:49:50', NULL),
(241, 'https://cdn.nguyenkimmall.com/images/detailed/813/10052830-may-giat-electrolux-inverter-8-kg-ewf8024d3wb-3.jpg', 63, 0, '2022-11-06 10:49:50', '2022-11-06 10:49:50', NULL),
(242, 'https://cdn.nguyenkimmall.com/images/detailed/813/10052830-may-giat-electrolux-inverter-8-kg-ewf8024d3wb-4.jpg', 63, 0, '2022-11-06 10:49:50', '2022-11-06 10:49:50', NULL),
(243, 'https://cdn.nguyenkimmall.com/images/detailed/717/10048691-may-giat-toshiba-8-5-kg-inverter-tw-bk95s2v-wk-1.jpg', 65, 1, '2022-11-06 10:49:50', '2022-11-06 10:49:50', NULL),
(244, 'https://cdn.nguyenkimmall.com/images/detailed/717/10048691-may-giat-toshiba-8-5-kg-inverter-tw-bk95s2v-wk-2.jpg', 65, 0, '2022-11-06 10:49:50', '2022-11-06 10:49:50', NULL),
(245, 'https://cdn.nguyenkimmall.com/images/detailed/717/10048691-may-giat-toshiba-8-5-kg-inverter-tw-bk95s2v-wk-3.jpg', 65, 0, '2022-11-06 10:49:50', '2022-11-06 10:49:50', NULL),
(246, 'https://cdn.nguyenkimmall.com/images/detailed/717/10048691-may-giat-toshiba-8-5-kg-inverter-tw-bk95s2v-wk04.jpg', 65, 0, '2022-11-06 10:49:50', '2022-11-06 10:49:50', NULL),
(247, 'https://cdn.nguyenkimmall.com/images/detailed/760/10050499-may-giat-electrolux-inverter-9kg-ewf9024p5sb-1.jpg', 62, 1, '2022-11-06 10:49:50', '2022-11-06 10:49:50', NULL),
(248, 'https://cdn.nguyenkimmall.com/images/detailed/760/10050499-may-giat-electrolux-inverter-9kg-ewf9024p5sb-2.jpg', 62, 0, '2022-11-06 10:49:50', '2022-11-06 10:49:50', NULL),
(249, 'https://cdn.nguyenkimmall.com/images/detailed/760/10050499-may-giat-electrolux-inverter-9kg-ewf9024p5sb-3.jpg', 62, 0, '2022-11-06 10:49:50', '2022-11-06 10:49:50', NULL),
(250, 'https://cdn.nguyenkimmall.com/images/detailed/760/10050499-may-giat-electrolux-inverter-9kg-ewf9024p5sb-4.jpg', 62, 0, '2022-11-06 10:49:50', '2022-11-06 10:49:50', NULL),
(251, 'https://cdn.nguyenkimmall.com/images/detailed/761/10050078-may-giat-lg-inverter-11-kg-fv1411s4p-1.jpg', 59, 1, '2022-11-06 10:49:50', '2022-11-06 10:49:50', NULL),
(252, 'https://cdn.nguyenkimmall.com/images/detailed/761/10050078-may-giat-lg-inverter-11-kg-fv1411s4p-2.jpg', 59, 0, '2022-11-06 10:49:50', '2022-11-06 10:49:50', NULL),
(253, 'https://cdn.nguyenkimmall.com/images/detailed/761/10050078-may-giat-lg-inverter-11-kg-fv1411s4p-3.jpg', 59, 0, '2022-11-06 10:49:50', '2022-11-06 10:49:50', NULL),
(254, 'https://cdn.nguyenkimmall.com/images/detailed/761/10050078-may-giat-lg-inverter-11-kg-fv1411s4p-4.jpg', 59, 0, '2022-11-06 10:49:50', '2022-11-06 10:49:50', NULL),
(255, 'https://cdn.nguyenkimmall.com/images/detailed/783/10051412-may-giat-toshiba-inverter-10-5-kg-aw-duk1160hv-sg-1.jpg', 66, 1, '2022-11-06 10:49:50', '2022-11-06 10:49:50', NULL),
(256, 'https://cdn.nguyenkimmall.com/images/detailed/783/10051412-may-giat-toshiba-inverter-10-5-kg-aw-duk1160hv-sg-2.jpg', 66, 0, '2022-11-06 10:49:50', '2022-11-06 10:49:50', NULL),
(257, 'https://cdn.nguyenkimmall.com/images/detailed/783/10051412-may-giat-toshiba-inverter-10-5-kg-aw-duk1160hv-sg-3.jpg', 66, 0, '2022-11-06 10:49:50', '2022-11-06 10:49:50', NULL),
(258, 'https://cdn.nguyenkimmall.com/images/detailed/783/10051412-may-giat-toshiba-inverter-10-5-kg-aw-duk1160hv-sg-4.jpg', 66, 0, '2022-11-06 10:49:50', '2022-11-06 10:49:50', NULL),
(259, 'https://cdn.nguyenkimmall.com/images/detailed/657/10045829-may-giat-toshiba-inverter-9-kg-aw-dk1000fv-kk-1_nny1-8o.jpg', 67, 1, '2022-11-06 10:49:50', '2022-11-06 10:49:50', NULL),
(260, 'https://cdn.nguyenkimmall.com/images/detailed/657/10045829-may-giat-toshiba-inverter-9-kg-aw-dk1000fv-kk-2_pcu2-jr.jpg', 67, 0, '2022-11-06 10:49:50', '2022-11-06 10:49:50', NULL),
(261, 'https://cdn.nguyenkimmall.com/images/detailed/657/10045829-may-giat-toshiba-inverter-9-kg-aw-dk1000fv-kk-3.jpg', 67, 0, '2022-11-06 10:49:50', '2022-11-06 10:49:50', NULL),
(262, 'https://cdn.nguyenkimmall.com/images/detailed/657/10045829-may-giat-toshiba-inverter-9-kg-aw-dk1000fv-kk-4.jpg', 67, 0, '2022-11-06 10:49:50', '2022-11-06 10:49:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_specs`
--

CREATE TABLE `product_specs` (
  `id` int(4) NOT NULL,
  `specs` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`specs`)),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_specs`
--

INSERT INTO `product_specs` (`id`, `specs`, `created_at`, `modified_at`, `deleted_at`) VALUES
(1, '{\r\n    \"Model\": \"A03 (SM-A035F/DS)\",\r\n    \"Màu sắc\": \"Đen\",\r\n    \"Nhà sản xuất\": \"Samsung\",\r\n    \"Xuất xứ\": \"Trung Quốc\",\r\n    \"Thời gian bảo hành\": \"12 Tháng\",\r\n    \"Bộ nhớ trong\": \"32GB\",\r\n    \"Loại màn hình\": \"Infinity-V TFT LCD 20:9\",\r\n    \"Kích thước màn hình\": \"6.5 \\\"\",\r\n    \"Độ phân giải màn hình\": \"HD+ (720x1600) pixels\"\r\n}', '2022-10-24 05:54:39', '2022-10-30 09:26:12', NULL),
(2, '{\"Model:\":\" SM-A135F/DS \",\"Màu sắc:\":\" Đen \",\"Nhà sản xuất:\":\" Samsung \",\"Xuất xứ:\":\" Việt Nam \",\"Thời gian bảo hành:\":\" 12 Tháng \",\"RAM:\":\" 4GB \",\"Bộ nhớ trong:\":\" 128GB \",\"Hỗ trợ thẻ nhớ ngoài:\":\" Hỗ trợ thẻ nhớ lên đến 1TB \",\"Chipset:\":\" Exynos850 (8 nhân) \"}', '2022-11-07 18:01:53', '2022-11-07 18:01:53', NULL),
(3, '{\"Model:\":\" SM-A047F/DS \",\"Màu sắc:\":\" Đen \",\"Nhà sản xuất:\":\" Samsung \",\"Xuất xứ:\":\" Việt Nam \",\"Thời gian bảo hành:\":\" 12 Tháng \",\"RAM:\":\" 4GB \",\"Bộ nhớ trong:\":\" 64GB \",\"Hệ điều hành:\":\" \\tAndroid 12, One UI Core 4 \",\"Chipset:\":\" \\tExynos 850 (8nm) \"}', '2022-11-07 18:04:04', '2022-11-07 18:04:04', NULL),
(4, '{\"Model:\":\" A03s (SM-A037F/DS) \",\"Màu sắc:\":\" Đen \",\"Nhà sản xuất:\":\" Samsung \",\"Xuất xứ:\":\" Trung Quốc \",\"Thời gian bảo hành:\":\" 12 Tháng \",\"RAM:\":\" 4GB \",\"Bộ nhớ trong:\":\" 64GB \",\"Hệ điều hành:\":\" Android \",\"CPU:\":\" 8 nhân, 2.3GHz, 1.8GHz \"}', '2022-11-07 18:06:03', '2022-11-07 18:06:03', NULL),
(5, '{\"Model:\":\" iPhone 12 64GB \",\"Màu sắc:\":\" Đen \",\"Nhà sản xuất:\":\" iPhone \",\"Xuất xứ:\":\" Trung Quốc \",\"Năm ra mắt :\":\" 2020 \",\"Thời gian bảo hành:\":\" 12 Tháng \",\"Hệ điều hành:\":\" iOS 14.1 \",\"Chipset:\":\" Apple A14 Bionic \",\"RAM:\":\" 4 GB \"}', '2022-11-07 18:06:03', '2022-11-07 18:06:03', NULL),
(6, '{\"Model:\":\" iPhone 12 64GB \",\"Màu sắc:\":\" Xanh lá \",\"Nhà sản xuất:\":\" iPhone \",\"Xuất xứ:\":\" Trung Quốc \",\"Năm ra mắt :\":\" 2020 \",\"Thời gian bảo hành:\":\" 12 Tháng \",\"Hệ điều hành:\":\" iOS 14.1 \",\"Chipset:\":\" Apple A14 Bionic \",\"RAM:\":\" 4 GB \"}', '2022-11-07 18:07:34', '2022-11-07 18:07:34', NULL),
(7, '{\"Màu sắc:\":\" Tím \",\"Nhà sản xuất:\":\" iPhone \",\"Năm ra mắt :\":\" 2022 \",\"Thời gian bảo hành:\":\" 12 Tháng \",\"Hệ điều hành:\":\" iOS 16 \",\"Chipset:\":\" Apple A16 Bionic \",\"Bộ nhớ trong:\":\" 256GB \",\"Loại màn hình:\":\" OLED \",\"Kích thước màn hình:\":\" 6.1 \\\" \"}', '2022-11-07 18:07:34', '2022-11-07 18:07:34', NULL),
(8, '{\"Model:\":\" IPHONE1164GB \",\"Màu sắc:\":\" Đen \",\"Nhà sản xuất:\":\" iPhone \",\"Xuất xứ:\":\" Trung Quốc \",\"Năm ra mắt :\":\" 2019 \",\"Thời gian bảo hành:\":\" 12 Tháng \",\"RAM:\":\" 4 GB \",\"Bộ nhớ trong:\":\" 64 GB \",\"Hệ điều hành:\":\" iOS 13 \"}', '2022-11-07 18:07:34', '2022-11-07 18:07:34', NULL),
(9, '{\"Model:\":\" NOKIA8210 \",\"Màu sắc:\":\" Xanh \",\"Nhà sản xuất:\":\" Nokia \",\"Xuất xứ:\":\" Trung Quốc \",\"Thời gian bảo hành:\":\" 12 Tháng \",\"RAM:\":\" 48 MP \",\"Bộ nhớ trong:\":\" \\t128 MB \",\"Hỗ trợ thẻ nhớ ngoài:\":\" MicroSD, hỗ trợ tối đa 32 GB \",\"Hệ điều hành:\":\" Series 30+ \"}', '2022-11-07 18:07:34', '2022-11-07 18:07:34', NULL),
(10, '{\"Model:\":\" NOKIAC31 \",\"Màu sắc:\":\" Xanh thiên thanh \",\"Nhà sản xuất:\":\" Nokia \",\"Xuất xứ:\":\" Trung Quốc \",\"Thời gian bảo hành:\":\" 12 Tháng \",\"RAM:\":\" 3 GB \",\"Bộ nhớ trong:\":\" 32 GB \",\"Hỗ trợ thẻ nhớ ngoài:\":\" MicroSD, Hổ trợ thẻ nhớ tối đa 256 GB \",\"Hệ điều hành:\":\" \\tAndroid 12 \"}', '2022-11-07 18:07:34', '2022-11-07 18:07:34', NULL),
(11, '{\"Model:\":\" NOKIAC21PLUS2/64 \",\"Màu sắc:\":\" Xám Ánh Kim \",\"Nhà sản xuất:\":\" Nokia \",\"Xuất xứ:\":\" Trung Quốc \",\"Thời gian bảo hành:\":\" 12 Tháng \",\"RAM:\":\" 2 GB \",\"Bộ nhớ trong:\":\" 64 GB \",\"Hệ điều hành:\":\" Android 11 (Go Edition) \",\"Chipset:\":\" Unisoc SC9863A \"}', '2022-11-07 18:07:34', '2022-11-07 18:07:34', NULL),
(12, '{\"Model:\":\" NOKIAG11 \",\"Màu sắc:\":\" Xanh \",\"Nhà sản xuất:\":\" Nokia \",\"Xuất xứ:\":\" Trung Quốc \",\"Thời gian bảo hành:\":\" 12 Tháng \",\"RAM:\":\" 3 GB \",\"Bộ nhớ trong:\":\" 64 GB \",\"Hỗ trợ thẻ nhớ ngoài:\":\" \\tHỗ trợ thẻ MicroSD lên đến 512 GB \",\"Hệ điều hành:\":\" Android™ 12 \"}', '2022-11-07 18:07:34', '2022-11-07 18:07:34', NULL),
(13, '{\"Model:\":\" MK2L3ZA/A \",\"Màu sắc:\":\" Bạc \",\"Nhà sản xuất:\":\" Apple \",\"Xuất xứ:\":\" Trung Quốc \",\"Năm ra mắt :\":\" 2021 \",\"Thời gian bảo hành:\":\" 12 Tháng \",\"Loại Máy:\":\" iPad Gen 9 \",\"Hệ điều hành:\":\" iPadOS 15 \",\"Chipset:\":\" A13 Bionic \"}', '2022-11-07 18:11:04', '2022-11-07 18:11:04', NULL),
(14, '{\"Model:\":\" MK493ZA/A \",\"Màu sắc:\":\" Bạc \",\"Nhà sản xuất:\":\" Apple \",\"Xuất xứ:\":\" Trung Quốc \",\"Năm ra mắt :\":\" 2021 \",\"Thời gian bảo hành:\":\" 12 Tháng \",\"Loại Máy:\":\" iPad Gen 9 \",\"Hệ điều hành:\":\" iPadOS 15 \",\"Chipset:\":\" A13 Bionic \"}', '2022-11-07 18:11:04', '2022-11-07 18:11:04', NULL),
(15, '{\"Model:\":\" MHQR3ZA/A \",\"Màu sắc:\":\" Xám \",\"Nhà sản xuất:\":\" Apple \",\"Xuất xứ:\":\" Trung Quốc \",\"Năm ra mắt :\":\" 2021 \",\"Thời gian bảo hành:\":\" 12 Tháng \",\"Loại Máy:\":\" iPad Pro 11 inch \",\"Hệ điều hành:\":\" iPadOS 14 \",\"Chipset:\":\" Apple M1 8 nhân \"}', '2022-11-07 18:11:04', '2022-11-07 18:11:04', NULL),
(16, '{\"Model:\":\" MK2P3ZA/A \",\"Màu sắc:\":\" Bạc \",\"Nhà sản xuất:\":\" Apple \",\"Xuất xứ:\":\" Trung Quốc \",\"Năm ra mắt :\":\" 2021 \",\"Thời gian bảo hành:\":\" 12 Tháng \",\"Loại Máy:\":\" iPad Gen 9 \",\"Hệ điều hành:\":\" iPadOS 15 \",\"Chipset:\":\" A13 Bionic \"}', '2022-11-07 18:11:04', '2022-11-07 18:11:04', NULL),
(17, '{\"Model:\":\" SM-T225 \",\"Màu sắc:\":\" Bạc \",\"Nhà sản xuất:\":\" Samsung \",\"Xuất xứ:\":\" Trung Quốc \",\"Thời gian bảo hành:\":\" 12 Tháng \",\"Loại Máy:\":\" Galaxy Tab A7 Lite \",\"Hệ điều hành:\":\" Android Pie 10 \",\"CPU:\":\" Mediatek MT8768T (Quad 2.3 GHz + Quad 1.8 GHz) \",\"RAM:\":\" 3 GB \"}', '2022-11-07 18:11:04', '2022-11-07 18:11:04', NULL),
(18, '{\"Model:\":\" SM-T225 \",\"Màu sắc:\":\" Xám \",\"Nhà sản xuất:\":\" Samsung \",\"Xuất xứ:\":\" Trung Quốc \",\"Thời gian bảo hành:\":\" 12 Tháng \",\"Loại Máy:\":\" Galaxy Tab A7 Lite \",\"Hệ điều hành:\":\" Android Pie 10 \",\"CPU:\":\" Mediatek MT8768T (Quad 2.3 GHz + Quad 1.8 GHz) \",\"RAM:\":\" 3 GB \"}', '2022-11-07 18:11:04', '2022-11-07 18:11:04', NULL),
(19, '{\"Model:\":\" SM-X205 \",\"Màu sắc:\":\" Xám \",\"Nhà sản xuất:\":\" Samsung \",\"Xuất xứ:\":\" Trung Quốc \",\"Thời gian bảo hành:\":\" 12 Tháng \",\"Loại Máy:\":\" Galaxy Tab A8 (2022) \",\"Hệ điều hành:\":\" Android 11 \",\"Chipset:\":\" UniSOC T618 \",\"CPU:\":\" 2 nhân 2.0 GHz \\u0026 6 nhân 2.0 GHz \"}', '2022-11-07 18:11:04', '2022-11-07 18:11:04', NULL),
(20, '{\"Model:\":\" SM-T735 \",\"Màu sắc:\":\" Xanh \",\"Nhà sản xuất:\":\" Samsung \",\"Xuất xứ:\":\" Việt Nam \",\"Thời gian bảo hành:\":\" 12 Tháng \",\"Loại Máy:\":\" Galaxy Tab S7 FE \",\"Chipset:\":\" Vi xử lý Snapdragon 750G \",\"CPU:\":\" Dual 2.2 GHz + Hexa 1.8 GHz \",\"RAM:\":\" 4 GB \"}', '2022-11-07 18:11:04', '2022-11-07 18:11:04', NULL),
(21, '{\"Model:\":\" X415EA-EK675W \",\"Màu sắc:\":\" Bạc \",\"Nhà sản xuất:\":\" Asus \",\"Xuất xứ:\":\" Trung Quốc \",\"Năm ra mắt :\":\" 2021 \",\"Thời gian bảo hành:\":\" 24 Tháng \",\"CPU:\":\" Intel Core i3-1115G4 \",\"Loại RAM:\":\" DDR4 on board \",\"Dung lượng RAM:\":\" 4 GB \"}', '2022-11-07 18:19:57', '2022-11-07 18:19:57', NULL),
(22, '{\"Model:\":\" A415EA-EB1750W \",\"Màu sắc:\":\" Bạc \",\"Nhà sản xuất:\":\" Asus \",\"Xuất xứ:\":\" Trung Quốc \",\"Thời gian bảo hành:\":\" 24 Tháng \",\"CPU:\":\" Intel® Core™ i3-1125G4 Processor 2.0 GHz (8M Cache, up to 3.7 GHz, 4 cores) \",\"Loại RAM:\":\" DDR4 on board \",\"Dung lượng RAM:\":\" 8 GB \",\"Loại ổ đĩa cứng:\":\" SSD \"}', '2022-11-07 18:19:57', '2022-11-07 18:19:57', NULL),
(23, '{\"Model:\":\" A1503ZA-L1421W \",\"Màu sắc:\":\" Bạc \",\"Nhà sản xuất:\":\" Asus \",\"Xuất xứ:\":\" Trung Quốc \",\"Năm ra mắt :\":\" 2022 \",\"Thời gian bảo hành:\":\" 24 Tháng \",\"CPU:\":\" i5-12500H \",\"Tốc độ CPU:\":\" 2.5 GHz \",\"Bộ nhớ đệm:\":\" 18 MB \"}', '2022-11-07 18:19:57', '2022-11-07 18:19:57', NULL),
(24, '{\"Model:\":\" HN144W \",\"Màu sắc:\":\" Đen \",\"Nhà sản xuất:\":\" Asus \",\"Năm ra mắt :\":\" 2022 \",\"Thời gian bảo hành:\":\" 24 Tháng \",\"CPU:\":\" Intel Core i5-11400H \",\"Loại CPU:\":\" 11400H \",\"Tốc độ CPU:\":\" 2.70 GHz \",\"Bộ nhớ đệm:\":\" 12 MB \"}', '2022-11-07 18:19:57', '2022-11-07 18:19:57', NULL),
(25, '{\"Model:\":\" 6K796PA \",\"Màu sắc:\":\" Bạc \",\"Nhà sản xuất:\":\" HP \",\"Xuất xứ:\":\" Trung Quốc \",\"Thời gian bảo hành:\":\" 12 Tháng \",\"Loại CPU:\":\" Intel Core i3-1115G4 \",\"Bộ nhớ đệm:\":\" 6MB \",\"Tốc độ CPU tối đa:\":\" 4.1 GHz \",\"Loại RAM:\":\" DDR4 \"}', '2022-11-07 18:19:57', '2022-11-07 18:19:57', NULL),
(26, '{\"Model:\":\" 617L4PA \",\"Màu sắc:\":\" Bạc \",\"Nhà sản xuất:\":\" HP \",\"Xuất xứ:\":\" Trung Quốc \",\"Thời gian bảo hành:\":\" 12 Tháng \",\"CPU:\":\" i5-1135G7 \",\"Bộ nhớ đệm:\":\" 8 MB \",\"Tốc độ CPU tối đa:\":\" up to 4.2 GHz \",\"Loại RAM:\":\" DDR4 \"}', '2022-11-07 18:19:57', '2022-11-07 18:19:57', NULL),
(27, '{\"Model:\":\" 46M08PA \",\"Màu sắc:\":\" Vàng \",\"Nhà sản xuất:\":\" HP \",\"Xuất xứ:\":\" Trung Quốc \",\"Thời gian bảo hành:\":\" 12 Tháng \",\"CPU:\":\" Intel® Core™ i3-1125G4 \",\"Bộ nhớ đệm:\":\" 8 MB L3, 4 lõi, 8 luồng \",\"Tốc độ CPU tối đa:\":\" lên đến 3,7 GHz \",\"Loại RAM:\":\" DDR4 \"}', '2022-11-07 18:19:57', '2022-11-07 18:19:57', NULL),
(28, '{\"Model:\":\" 6K788PA \",\"Màu sắc:\":\" Vàng \",\"Nhà sản xuất:\":\" HP \",\"Xuất xứ:\":\" Trung Quốc \",\"Thời gian bảo hành:\":\" 12 Tháng \",\"CPU:\":\" i5- 1240P \",\"Bộ nhớ đệm:\":\" 12 MB \",\"Tốc độ CPU tối đa:\":\" 4.4 GHz \",\"Loại RAM:\":\" DDR4 \"}', '2022-11-07 18:19:57', '2022-11-07 18:19:57', NULL),
(29, '{\"Model:\":\" V4I5214W1 \",\"Màu sắc:\":\" Xám \",\"Nhà sản xuất:\":\" Dell \",\"Xuất xứ:\":\" Trung Quốc \",\"Năm ra mắt :\":\" 2021 \",\"Thời gian bảo hành:\":\" 12 Tháng \",\"CPU:\":\" I5-11320H \",\"Loại RAM:\":\" DDR4 \",\"Dung lượng RAM:\":\" 8GB GB \"}', '2022-11-07 18:19:57', '2022-11-07 18:19:57', NULL),
(30, '{\"Model:\":\" V4R53500U003W1 \",\"Màu sắc:\":\" Đen \",\"Nhà sản xuất:\":\" Dell \",\"Xuất xứ:\":\" Trung Quốc \",\"Năm ra mắt :\":\" 2021 \",\"Thời gian bảo hành:\":\" 12 Tháng \",\"CPU:\":\" R5-3500U \",\"Loại RAM:\":\" DDR4 \",\"Dung lượng RAM:\":\" 8 GB \"}', '2022-11-07 18:19:57', '2022-11-07 18:19:57', NULL),
(31, '{\"Model:\":\" YX51W5 \",\"Màu sắc:\":\" Đen \",\"Nhà sản xuất:\":\" Dell \",\"Xuất xứ:\":\" Trung Quốc \",\"Thời gian bảo hành:\":\" 12 Tháng \",\"CPU:\":\" Intel Core i5 \",\"Loại CPU:\":\" 1135G7 \",\"Loại RAM:\":\" DDR4 \",\"Dung lượng RAM:\":\" 8 GB \"}', '2022-11-07 18:19:57', '2022-11-07 18:19:57', NULL),
(32, '{\"Model:\":\" 70270645 \",\"Màu sắc:\":\" Đen \",\"Nhà sản xuất:\":\" Dell \",\"Xuất xứ:\":\" Trung Quốc \",\"Năm ra mắt :\":\" 2021 \",\"Thời gian bảo hành:\":\" 12 Tháng \",\"CPU:\":\" Intel Core I5-1135G7 \",\"Loại RAM:\":\" DDR4 \",\"Dung lượng RAM:\":\" 8 GB \"}', '2022-11-07 18:19:57', '2022-11-07 18:19:57', NULL),
(33, '{\"Model:\":\" CU/CS-N12WKH-8M \",\"Màu sắc:\":\" Trắng \",\"Nhà sản xuất:\":\" Panasonic \",\"Xuất xứ:\":\" Malaysia \",\"Năm ra mắt :\":\" 2020 \",\"Thời gian bảo hành:\":\" 12 Tháng \",\"Loại máy lạnh:\":\" 1 chiều \",\"Công suất:\":\" 1.5 HP \",\"Tốc độ làm lạnh trung bình:\":\" 12000 BTU \"}', '2022-11-07 18:25:10', '2022-11-07 18:25:10', NULL),
(34, '{\"Model:\":\" CU/CS-N9WKH-8M \",\"Màu sắc:\":\" Trắng \",\"Nhà sản xuất:\":\" Panasonic \",\"Xuất xứ:\":\" Malaysia \",\"Năm ra mắt :\":\" 2020 \",\"Thời gian bảo hành:\":\" 12 Tháng \",\"Loại máy lạnh:\":\" 1 chiều \",\"Công suất:\":\" 1 HP \",\"Tốc độ làm lạnh trung bình:\":\" 9040 BTU \"}', '2022-11-07 18:25:10', '2022-11-07 18:25:10', NULL),
(35, '{\"Model:\":\" CU/CS-VU9UKH-8 \",\"Màu sắc:\":\" Trắng \",\"Nhà sản xuất:\":\" Panasonic \",\"Xuất xứ:\":\" Malaysia \",\"Thời gian bảo hành:\":\" 12 Tháng \",\"Loại máy lạnh:\":\" 1 chiều \",\"Công suất:\":\" 1 HP \",\"Tốc độ làm lạnh tối thiểu:\":\" 2,860 BTU \",\"Tốc độ làm lạnh trung bình:\":\" 8,530 BTU \"}', '2022-11-07 18:25:10', '2022-11-07 18:25:10', NULL),
(36, '{\"Model:\":\" CU/CS-XU9XKH-8 \",\"Màu sắc:\":\" Trắng \",\"Nhà sản xuất:\":\" Panasonic \",\"Xuất xứ:\":\" Malaysia \",\"Năm ra mắt :\":\" 2021 \",\"Thời gian bảo hành:\":\" 12 Tháng \",\"Loại máy lạnh:\":\" 1 chiều \",\"Công suất:\":\" 1 HP \",\"Tốc độ làm lạnh tối thiểu:\":\" 3,140 BTU \"}', '2022-11-07 18:25:10', '2022-11-07 18:25:10', NULL),
(37, '{\"Model:\":\" ATF25UV1V/ARF25UV1V \",\"Màu sắc:\":\" Trắng \",\"Nhà sản xuất:\":\" Daikin \",\"Xuất xứ:\":\" Việt Nam \",\"Năm ra mắt :\":\" 2020 \",\"Thời gian bảo hành:\":\" 12 Tháng \",\"Loại máy lạnh:\":\" 1 chiều \",\"Công suất:\":\" 1 HP \",\"Tốc độ làm lạnh tối thiểu:\":\" 9300 BTU \"}', '2022-11-07 18:25:10', '2022-11-07 18:25:10', NULL),
(38, '{\"Model:\":\" ATF35UV1V/ARF35UV1V \",\"Màu sắc:\":\" Trắng \",\"Nhà sản xuất:\":\" Daikin \",\"Xuất xứ:\":\" Việt Nam \",\"Năm ra mắt :\":\" 2020 \",\"Thời gian bảo hành:\":\" 12 Tháng \",\"Loại máy lạnh:\":\" 1 chiều \",\"Công suất:\":\" 1.5 HP \",\"Tốc độ làm lạnh tối thiểu:\":\" 11100 BTU \"}', '2022-11-07 18:25:10', '2022-11-07 18:25:10', NULL),
(39, '{\"Model:\":\" FTKA35VMVMV/RKA35VMVMV \",\"Màu sắc:\":\" Trắng \",\"Nhà sản xuất:\":\" Daikin \",\"Xuất xứ:\":\" Việt Nam \",\"Thời gian bảo hành:\":\" 12 tháng, Bảo hành máy nén 5 năm \",\"Công suất:\":\" 1.5 HP \",\"Công nghệ Inverter:\":\" Có \",\"Làm lạnh nhanh:\":\" Có \",\"Chế độ hẹn giờ:\":\" Có \"}', '2022-11-07 18:25:10', '2022-11-07 18:25:10', NULL),
(40, '{\"Model:\":\" ATKC35UAVMV/ARKC35UAVMV \",\"Màu sắc:\":\" Trắng \",\"Nhà sản xuất:\":\" Daikin \",\"Xuất xứ:\":\" Việt Nam \",\"Năm ra mắt :\":\" 2019 \",\"Thời gian bảo hành:\":\" 12 Tháng \",\"Loại máy lạnh:\":\" 1 chiều \",\"Công suất:\":\" 1.5 HP \",\"Tốc độ làm lạnh tối thiểu:\":\" 4400 BTU \"}', '2022-11-07 18:25:10', '2022-11-07 18:25:10', NULL),
(41, '{\"Model:\":\" RAS-H13C3KCVG-V \",\"Màu sắc:\":\" Trắng \",\"Nhà sản xuất:\":\" Toshiba \",\"Xuất xứ:\":\" Thái Lan \",\"Năm ra mắt :\":\" 2021 \",\"Thời gian bảo hành:\":\" 24 Tháng \",\"Loại máy lạnh:\":\" 1 chiều \",\"Công suất:\":\" 1.5 HP \",\"Công nghệ Inverter:\":\" Có \"}', '2022-11-07 18:25:10', '2022-11-07 18:25:10', NULL),
(42, '{\"Model:\":\" RAS-H13E2KCVG-V \",\"Màu sắc:\":\" Trắng \",\"Nhà sản xuất:\":\" Toshiba \",\"Xuất xứ:\":\" Thái Lan \",\"Năm ra mắt :\":\" 2021 \",\"Thời gian bảo hành:\":\" 24 Tháng \",\"Loại máy lạnh:\":\" 1 chiều \",\"Công suất:\":\" 1.5 HP \",\"Công nghệ Inverter:\":\" Có \"}', '2022-11-07 18:25:10', '2022-11-07 18:25:10', NULL),
(43, '{\"Model:\":\" RAS-H10E2KCVG-V \",\"Màu sắc:\":\" Trắng \",\"Nhà sản xuất:\":\" Toshiba \",\"Xuất xứ:\":\" Thái Lan \",\"Năm ra mắt :\":\" 2021 \",\"Thời gian bảo hành:\":\" 24 Tháng \",\"Loại máy lạnh:\":\" 1 chiều \",\"Công suất:\":\" 1HP \",\"Công nghệ Inverter:\":\" Có \"}', '2022-11-07 18:25:10', '2022-11-07 18:25:10', NULL),
(44, '{\"Model:\":\" RAS-H24E2KCVG-V \",\"Màu sắc:\":\" Trắng \",\"Nhà sản xuất:\":\" Toshiba \",\"Xuất xứ:\":\" Thái Lan \",\"Thời gian bảo hành:\":\" 24 Tháng \",\"Công suất:\":\" 2.5 \",\"Công nghệ Inverter:\":\" Có \",\"Làm lạnh nhanh:\":\" Có \",\"Khử mùi:\":\" Tự vệ sinh dàn lạnh, Công nghệ chống bám bẩn Magic coil, Bộ lọc Toshiba IAQ, Công nghệ tinh lọc không khí Plasma Ion, Bộ lọc chống nấm mốc \"}', '2022-11-07 18:25:10', '2022-11-07 18:25:10', NULL),
(45, '{\"Model:\":\" RT20HAR8DBU/SV \",\"Màu sắc:\":\" Đen \",\"Nhà sản xuất:\":\" Samsung \",\"Xuất xứ:\":\" Việt Nam \",\"Năm ra mắt :\":\" 2020 \",\"Thời gian bảo hành:\":\" 24 Tháng \",\"Kiểu tủ lạnh:\":\" Ngăn đá trên \",\"Số cửa tủ:\":\" 2 cửa \",\"Dung tích tủ lạnh:\":\" 208 \"}', '2022-11-07 18:30:51', '2022-11-07 18:30:51', NULL),
(46, '{\"Model:\":\" RS62R5001M9/SV \",\"Màu sắc:\":\" Bạc \",\"Nhà sản xuất:\":\" Samsung \",\"Xuất xứ:\":\" Trung Quốc \",\"Năm ra mắt :\":\" 2019 \",\"Thời gian bảo hành:\":\" 12 Tháng \",\"Kiểu tủ lạnh:\":\" Side by side \",\"Số cửa tủ:\":\" 2 cửa \",\"Dung tích tủ lạnh:\":\" 680 \"}', '2022-11-07 18:30:51', '2022-11-07 18:30:51', NULL),
(47, '{\"Model:\":\" RT22M4032BU/SV \",\"Màu sắc:\":\" Đen \",\"Nhà sản xuất:\":\" Samsung \",\"Xuất xứ:\":\" Việt Nam \",\"Năm ra mắt :\":\" 2020 \",\"Thời gian bảo hành:\":\" 24 Tháng \",\"Kiểu tủ lạnh:\":\" Ngăn đá trên \",\"Số cửa tủ:\":\" 2 cửa \",\"Dung tích tủ lạnh:\":\" 236 \"}', '2022-11-07 18:30:51', '2022-11-07 18:30:51', NULL),
(48, '{\"Model:\":\" RT19M300BGS/SV \",\"Nhà sản xuất:\":\" Samsung \",\"Xuất xứ:\":\" Việt Nam \",\"Thời gian bảo hành:\":\" 24 Tháng \",\"Kiểu tủ lạnh:\":\" Ngăn đá trên \",\"Số cửa tủ:\":\" 2 cửa \",\"Dung tích tủ lạnh:\":\" 216 \",\"Dung tích sử dụng:\":\" 208 \",\"Dung tích ngăn đá:\":\" 53 lít \"}', '2022-11-07 18:30:51', '2022-11-07 18:30:51', NULL),
(49, '{\"Model:\":\" NR-TL381GPKV \",\"Màu sắc:\":\" Đen \",\"Nhà sản xuất:\":\" Panasonic \",\"Xuất xứ:\":\" Việt Nam \",\"Năm ra mắt :\":\" 2021 \",\"Thời gian bảo hành:\":\" 2 năm/ Máy nén: 12 năm \",\"Kiểu tủ lạnh:\":\" Ngăn đá trên \",\"Số cửa tủ:\":\" 2 \",\"Dung tích tủ lạnh:\":\" 366 \"}', '2022-11-07 18:30:51', '2022-11-07 18:30:51', NULL),
(50, '{\"Model:\":\" NR-TV261APSV \",\"Màu sắc:\":\" Bạc \",\"Nhà sản xuất:\":\" Panasonic \",\"Xuất xứ:\":\" Việt Nam \",\"Năm ra mắt :\":\" 2021 \",\"Thời gian bảo hành:\":\" 24 Tháng \",\"Kiểu tủ lạnh:\":\" Ngăn đá trên \",\"Số cửa tủ:\":\" 2 \",\"Dung tích sử dụng:\":\" 234 \"}', '2022-11-07 18:30:51', '2022-11-07 18:30:51', NULL),
(51, '{\"Model:\":\" NR-BX471WGKV \",\"Màu sắc:\":\" Đen \",\"Nhà sản xuất:\":\" Panasonic \",\"Xuất xứ:\":\" Việt Nam \",\"Thời gian bảo hành:\":\" 24 Tháng \",\"Kiểu tủ lạnh:\":\" Ngăn đá dưới \",\"Số cửa tủ:\":\" 2 \",\"Dung tích tủ lạnh:\":\" 420 \",\"Dung tích ngăn đá:\":\" 112 lít \"}', '2022-11-07 18:30:51', '2022-11-07 18:30:51', NULL),
(52, '{\"Model:\":\" NR-TL351GPKV \",\"Màu sắc:\":\" Đen \",\"Nhà sản xuất:\":\" Panasonic \",\"Xuất xứ:\":\" Việt Nam \",\"Năm ra mắt :\":\" 2021 \",\"Thời gian bảo hành:\":\" 2 năm/ Máy nén: 12 năm \",\"Kiểu tủ lạnh:\":\" Ngăn đá trên \",\"Số cửa tủ:\":\" 2 \",\"Dung tích tủ lạnh:\":\" 326 \"}', '2022-11-07 18:30:51', '2022-11-07 18:30:51', NULL),
(53, '{\"Model:\":\" SJ-FX631V-SL \",\"Nhà sản xuất:\":\" Sharp \",\"Xuất xứ:\":\" Thái Lan \",\"Thời gian bảo hành:\":\" 12 Tháng \",\"Kiểu tủ lạnh:\":\" Multi doors \",\"Số cửa tủ:\":\" 4 cửa \",\"Dung tích tủ lạnh:\":\" 556 \",\"Dung tích ngăn đá:\":\" 211 lít \",\"Dung tích ngăn lạnh:\":\" 345 lít \"}', '2022-11-07 18:30:51', '2022-11-07 18:30:51', NULL),
(54, '{\"Model:\":\" SJ-X346E-SL \",\"Màu sắc:\":\" Bạc giống thép không gỉ \",\"Nhà sản xuất:\":\" Sharp \",\"Xuất xứ:\":\" Thái Lan \",\"Thời gian bảo hành:\":\" 12 Tháng \",\"Kiểu tủ lạnh:\":\" Ngăn đá trên \",\"Số cửa tủ:\":\" 2 cửa \",\"Dung tích tủ lạnh:\":\" 342 \",\"Dung tích sử dụng:\":\" 315 \"}', '2022-11-07 18:30:51', '2022-11-07 18:30:51', NULL),
(55, '{\"Model:\":\" SJ-X281E \",\"Màu sắc:\":\" Bạc \",\"Nhà sản xuất:\":\" Sharp \",\"Xuất xứ:\":\" Thái Lan \",\"Thời gian bảo hành:\":\" 12 Tháng \",\"Kiểu tủ lạnh:\":\" Ngăn đá trên \",\"Số cửa tủ:\":\" 2 cửa \",\"Dung tích tủ lạnh:\":\" 253 \",\"Dung tích ngăn đá:\":\" 60 lít \"}', '2022-11-07 18:30:51', '2022-11-07 18:30:51', NULL),
(56, '{\"Model:\":\" SJ-X196E-SL \",\"Màu sắc:\":\" Bạc giống Inox \",\"Nhà sản xuất:\":\" Sharp \",\"Xuất xứ:\":\" Thái Lan \",\"Thời gian bảo hành:\":\" 12 Tháng \",\"Kiểu tủ lạnh:\":\" Ngăn đá trên \",\"Số cửa tủ:\":\" 2 cửa \",\"Dung tích tủ lạnh:\":\" 180 \",\"Dung tích sử dụng:\":\" 165 \"}', '2022-11-07 18:30:51', '2022-11-07 18:30:51', NULL),
(57, '{\"Model:\":\" FV1410D4P \",\"Màu sắc:\":\" Xám \",\"Nhà sản xuất:\":\" LG \",\"Xuất xứ:\":\" Trung Quốc \",\"Năm ra mắt :\":\" 2022 \",\"Thời gian bảo hành:\":\" 24 Tháng \",\"Loại máy giặt:\":\" Cửa trước \",\"Kiểu lồng giặt:\":\" Lồng ngang \",\"Khối lượng giặt:\":\" 11 kg \"}', '2022-11-07 18:43:47', '2022-11-07 18:43:47', NULL),
(58, '{\"Model:\":\" F2515RTGB \",\"Màu sắc:\":\" Đen \",\"Nhà sản xuất:\":\" LG \",\"Xuất xứ:\":\" Trung Quốc \",\"Năm ra mắt :\":\" 2022 \",\"Thời gian bảo hành:\":\" 24 Tháng \",\"Loại máy giặt:\":\" Cửa trước \",\"Kiểu lồng giặt:\":\" Lồng ngang \",\"Khối lượng giặt:\":\" 15 kg \"}', '2022-11-07 18:43:47', '2022-11-07 18:43:47', NULL),
(59, '{\"Model:\":\" FV1411S4P \",\"Màu sắc:\":\" Bạc \",\"Nhà sản xuất:\":\" LG \",\"Xuất xứ:\":\" Việt Nam \",\"Thời gian bảo hành:\":\" 24 Tháng \",\"Loại máy giặt:\":\" Cửa trước \",\"Kiểu lồng giặt:\":\" Lồng ngang \",\"Khối lượng giặt:\":\" 11 kg \",\"Công nghệ Inverter:\":\" SmartInverter™ \"}', '2022-11-07 18:43:47', '2022-11-07 18:43:47', NULL),
(60, '{\"Model:\":\" F2515STGW \",\"Màu sắc:\":\" Trắng \",\"Nhà sản xuất:\":\" LG \",\"Xuất xứ:\":\" Trung Quốc \",\"Thời gian bảo hành:\":\" 24 Tháng \",\"Loại máy giặt:\":\" Cửa trước \",\"Kiểu lồng giặt:\":\" Lồng ngang \",\"Khối lượng giặt:\":\" 15 kg \",\"Công nghệ Inverter:\":\" Có Inverter \"}', '2022-11-07 18:43:47', '2022-11-07 18:43:47', NULL),
(61, '{\"Model:\":\" EWF9024P5WB \",\"Màu sắc:\":\" Trắng \",\"Nhà sản xuất:\":\" Electrolux \",\"Xuất xứ:\":\" Thái Lan \",\"Thời gian bảo hành:\":\" 24 Tháng \",\"Loại máy giặt:\":\" Cửa trước \",\"Kiểu lồng giặt:\":\" Lồng ngang \",\"Khối lượng giặt:\":\" 9 Kg \",\"Chế độ giặt:\":\" 15 Chương trình \"}', '2022-11-07 18:43:47', '2022-11-07 18:43:47', NULL),
(62, '{\"Model:\":\" EWF9024P5SB \",\"Màu sắc:\":\" Xám đen \",\"Nhà sản xuất:\":\" Electrolux \",\"Xuất xứ:\":\" Thái Lan \",\"Thời gian bảo hành:\":\" 24 Tháng \",\"Loại máy giặt:\":\" Cửa trước \",\"Kiểu lồng giặt:\":\" Lồng ngang \",\"Khối lượng giặt:\":\" 9 Kg \",\"Chế độ giặt:\":\" 15 Chương trình \"}', '2022-11-07 18:43:47', '2022-11-07 18:43:47', NULL),
(63, '{\"Model:\":\" EWF8024D3WB \",\"Màu sắc:\":\" Trắng \",\"Nhà sản xuất:\":\" Electrolux \",\"Xuất xứ:\":\" Thailand \",\"Năm ra mắt :\":\" 2021 \",\"Thời gian bảo hành:\":\" 24 Tháng \",\"Loại máy giặt:\":\" Cửa trước \",\"Kiểu lồng giặt:\":\" Lồng ngang \",\"Khối lượng giặt:\":\" 8 Kg \"}', '2022-11-07 18:43:47', '2022-11-07 18:43:47', NULL),
(64, '{\"Model:\":\" EWF1024P5WB \",\"Màu sắc:\":\" Trắng \",\"Nhà sản xuất:\":\" Electrolux \",\"Xuất xứ:\":\" Thái Lan \",\"Thời gian bảo hành:\":\" 24 Tháng \",\"Loại máy giặt:\":\" Cửa trước \",\"Kiểu lồng giặt:\":\" Lồng ngang \",\"Khối lượng giặt:\":\" 10 Kg \",\"Chế độ giặt:\":\" 15 Chương trình \"}', '2022-11-07 18:43:47', '2022-11-07 18:43:47', NULL),
(65, '{\"Model:\":\" TW-BK95S2V(WK) \",\"Màu sắc:\":\" Trắng \",\"Nhà sản xuất:\":\" Toshiba \",\"Xuất xứ:\":\" Thái Lan \",\"Năm ra mắt :\":\" 2021 \",\"Thời gian bảo hành:\":\" 24 Tháng \",\"Loại máy giặt:\":\" Cửa trước \",\"Kiểu lồng giặt:\":\" Lồng ngang \",\"Khối lượng giặt:\":\" 8.5 Kg \"}', '2022-11-07 18:43:47', '2022-11-07 18:43:47', NULL),
(66, '{\"Model:\":\" AW-DUK1160HV(SG) \",\"Màu sắc:\":\" Xám bạc \",\"Nhà sản xuất:\":\" Toshiba \",\"Xuất xứ:\":\" Trung Quốc \",\"Năm ra mắt :\":\" 2021 \",\"Thời gian bảo hành:\":\" 24 Tháng \",\"Loại máy giặt:\":\" Cửa trên \",\"Kiểu lồng giặt:\":\" Lồng đứng \",\"Khối lượng giặt:\":\" 10.5 kg \"}', '2022-11-07 18:43:47', '2022-11-07 18:43:47', NULL),
(67, '{\"Model:\":\" AW-DK1000FV \",\"Màu sắc:\":\" Đen \",\"Nhà sản xuất:\":\" Toshiba \",\"Xuất xứ:\":\" Thái Lan \",\"Năm ra mắt :\":\" 2020 \",\"Thời gian bảo hành:\":\" 24 Tháng \",\"Loại máy giặt:\":\" Cửa trên \",\"Kiểu lồng giặt:\":\" Lồng đứng \",\"Khối lượng giặt:\":\" 9 Kg \"}', '2022-11-07 18:43:47', '2022-11-07 18:43:47', NULL),
(68, '{\"Model:\":\" AW-H1000GV (SB) \",\"Nhà sản xuất:\":\" Toshiba \",\"Xuất xứ:\":\" Thái Lan \",\"Thời gian bảo hành:\":\" 24 Tháng \",\"Loại máy giặt:\":\" Cửa trên \",\"Kiểu lồng giặt:\":\" Lồng đứng \",\"Khối lượng giặt:\":\" 9 Kg \",\"Tốc độ quay vắt:\":\" 700 vòng/phút \",\"Chế độ giặt nhanh:\":\" Có \"}', '2022-11-07 18:43:47', '2022-11-07 18:43:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_tag`
--

CREATE TABLE `product_tag` (
  `id` int(4) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_tag`
--

INSERT INTO `product_tag` (`id`, `name`, `description`, `created_at`, `modified_at`, `deleted_at`) VALUES
(1, 'Điện thoại', NULL, '2022-10-24 00:38:23', '2022-10-24 00:38:23', NULL),
(2, 'Tablet', NULL, '2022-10-24 00:38:23', '2022-10-24 00:38:23', NULL),
(3, 'Laptop', NULL, '2022-10-24 00:38:23', '2022-10-24 00:38:23', NULL),
(4, 'Máy lạnh', NULL, '2022-10-24 00:38:23', '2022-10-24 00:38:23', NULL),
(5, 'Tủ lạnh', NULL, '2022-10-24 00:38:23', '2022-10-24 00:38:23', NULL),
(6, 'Máy giặt', NULL, '2022-10-24 00:38:23', '2022-10-24 00:38:23', NULL),
(7, 'Samsung', NULL, '2022-10-24 00:46:07', '2022-10-24 00:46:26', NULL),
(8, 'iPhone', NULL, '2022-10-24 00:46:07', '2022-10-24 00:46:26', NULL),
(9, 'Nokia', NULL, '2022-10-24 00:46:07', '2022-10-24 00:46:26', NULL),
(10, 'iPad', NULL, '2022-10-24 00:47:17', '2022-10-24 00:47:17', NULL),
(11, 'Asus', NULL, '2022-10-24 00:47:56', '2022-10-27 12:34:30', NULL),
(12, 'HP', NULL, '2022-10-24 00:47:56', '2022-10-27 12:34:32', NULL),
(13, 'Dell', NULL, '2022-10-24 00:47:56', '2022-10-27 12:34:34', NULL),
(14, 'Panasonic', NULL, '2022-10-24 00:50:58', '2022-10-27 12:34:36', NULL),
(15, 'Daikin', NULL, '2022-10-24 00:50:58', '2022-10-27 12:34:48', NULL),
(16, 'Toshiba', NULL, '2022-10-24 00:50:58', '2022-10-27 12:35:09', NULL),
(17, 'Sharp', NULL, '2022-10-24 00:52:19', '2022-10-27 12:35:13', NULL),
(18, 'LG', NULL, '2022-10-24 00:54:15', '2022-10-27 12:35:15', NULL),
(19, 'Electrolux', NULL, '2022-10-24 00:54:15', '2022-10-27 12:35:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(4) NOT NULL,
  `username` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `first_name`, `last_name`, `email_address`, `created_at`, `modified_at`, `deleted_at`) VALUES
(1, 'abc', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257', NULL, NULL, 'abc@xyz.com', '2022-11-06 16:14:58', '2022-11-06 16:14:58', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_Product_Product_specs` (`specs_id`);

--
-- Indexes for table `producttag_map`
--
ALTER TABLE `producttag_map`
  ADD PRIMARY KEY (`product_id`,`tag_id`),
  ADD KEY `FK_Product_category_relationship_Product_category` (`tag_id`);

--
-- Indexes for table `product_image`
--
ALTER TABLE `product_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_Product_image_Product` (`product_id`);

--
-- Indexes for table `product_specs`
--
ALTER TABLE `product_specs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_tag`
--
ALTER TABLE `product_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `IDX_username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `product_image`
--
ALTER TABLE `product_image`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=263;

--
-- AUTO_INCREMENT for table `product_specs`
--
ALTER TABLE `product_specs`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `product_tag`
--
ALTER TABLE `product_tag`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_Product_Product_specs` FOREIGN KEY (`specs_id`) REFERENCES `product_specs` (`id`);

--
-- Constraints for table `producttag_map`
--
ALTER TABLE `producttag_map`
  ADD CONSTRAINT `FK_Product_category_relationship_Product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `FK_Product_category_relationship_Product_category` FOREIGN KEY (`tag_id`) REFERENCES `product_tag` (`id`);

--
-- Constraints for table `product_image`
--
ALTER TABLE `product_image`
  ADD CONSTRAINT `FK_Product_image_Product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
