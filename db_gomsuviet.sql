-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2023 at 07:51 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_gomsuviet`
--

-- --------------------------------------------------------

--
-- Table structure for table `merchant`
--

CREATE TABLE `merchant` (
  `id` int(4) NOT NULL,
  `username` varchar(256) NOT NULL,
  `password` text NOT NULL,
  `first_name` text DEFAULT NULL,
  `last_name` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `email_address` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `merchant`
--

INSERT INTO `merchant` (`id`, `username`, `password`, `first_name`, `last_name`, `address`, `email_address`, `created_at`, `modified_at`, `deleted_at`) VALUES
(1, 'merchant1', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257', 'An', 'Lê Văn', '88 Tân Sơn, Phường 15, Tân Bình, Thành phố Hồ Chí Minh, Vietnam', 'an9920@gmail.com', '2023-05-29 16:10:00', '2023-05-29 16:10:00', NULL),
(2, 'merchant2', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257', 'Bình', 'Nguyễn Hữu', '72 Nguyễn Sỹ Sách, Phường 15, Tân Bình, Thành phố Hồ Chí Minh, Vietnam', 'binh_huu48@gmail.com', '2023-05-29 16:16:11', '2023-05-29 16:16:11', NULL),
(3, 'merchant3', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257', 'Quỳnh', 'Hoàng Cẩm', '53 Trần Chánh Chiếu, Phường 14, Quận 5, Thành phố Hồ Chí Minh, Vietnam', 'quynh18892@gmail.com', '2023-05-29 16:25:34', '2023-05-29 16:25:34', NULL),
(4, 'merchant4', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257', 'My', 'Trần Thị', '187/21 Minh Phụng, Phường 9, Quận 6, Thành phố Hồ Chí Minh, Vietnam', 'thimy5665@gmail.com', '2023-05-29 16:29:55', '2023-05-29 16:29:55', NULL),
(5, 'merchant5', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257', 'Tín', 'Trần Quốc', '187/21 Minh Phụng, Phường 9, Quận 6, Thành phố Hồ Chí Minh, Vietnam', 'tin4888@gmail.com', '2023-05-29 16:31:47', '2023-05-29 16:31:47', NULL),
(6, 'merchant6', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257', 'Quỳnh', 'Phan Thị Cẩm', '204 Đ. Kênh Tân Hóa, Phú Trung, Tân Phú, Thành phố Hồ Chí Minh, Vietnam', 'camquynh29492@gmail.com', '2023-05-29 16:35:59', '2023-05-29 16:35:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(4) NOT NULL,
  `order_id` int(4) NOT NULL,
  `product_id` int(4) NOT NULL,
  `merchant_id` int(4) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `merchant_id`, `quantity`, `created_at`, `modified_at`, `deleted_at`) VALUES
(1, 1, 14, 2, 1, '2023-05-31 17:16:02', '2023-05-31 17:16:02', NULL),
(2, 2, 1, 1, 3, '2023-05-31 17:18:41', '2023-05-31 17:18:41', NULL),
(3, 3, 1, 1, 1, '2023-05-31 17:20:48', '2023-05-31 17:20:48', NULL),
(4, 3, 2, 1, 1, '2023-05-31 17:20:48', '2023-05-31 17:20:48', NULL),
(5, 3, 3, 2, 1, '2023-05-31 17:20:48', '2023-05-31 17:20:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(4) NOT NULL,
  `merchant_id` int(4) NOT NULL,
  `name` text NOT NULL,
  `description` text DEFAULT NULL,
  `price` int(9) NOT NULL COMMENT 'VND',
  `specs_id` int(4) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `merchant_id`, `name`, `description`, `price`, `specs_id`, `created_at`, `modified_at`, `deleted_at`) VALUES
(1, 1, 'Bộ ấm trà Bát Tràng men xanh cổ vịt Vinh hoa Phú Quý', NULL, 450000, 1, '2022-10-24 07:59:35', '2023-05-29 17:24:35', NULL),
(2, 1, 'Bộ ấm chén Bát Tràng men kem vẽ tay Hạ Sen Chuồn', NULL, 550000, 2, '2022-10-24 08:02:38', '2023-05-29 17:24:35', NULL),
(3, 2, 'Bộ ấm trà Bát Tràng Vinh Hoa Phú Quý men đen bóng', NULL, 590000, 3, '2022-10-24 08:04:32', '2023-05-29 17:30:05', NULL),
(4, 2, 'Bộ ấm chén Bát Tràng men kem vẽ tay Phú Quý đào hồng', NULL, 490000, 4, '2022-10-24 08:04:32', '2023-05-29 17:30:05', NULL),
(5, 3, 'Bộ ấm chén Bát Tràng men kem vẽ tay Hoa Đại Minh Long', NULL, 400000, 5, '2022-10-24 08:04:32', '2023-05-29 17:31:49', NULL),
(6, 3, 'Bộ ấm trà Bát Tràng cao cấp men đen bóng Thuận Buồm Xuôi Gió', NULL, 500000, 6, '2022-10-24 08:04:32', '2023-05-29 17:31:50', NULL),
(7, 4, 'Bộ ấm chén uống trà khắc nổi hoa cổ', NULL, 500000, 7, '2022-10-24 08:04:32', '2023-05-29 17:34:01', NULL),
(8, 4, 'Bộ ấm chén uống trà khắc nổi hoa cổ dáng cao', NULL, 600000, 8, '2022-10-24 08:04:32', '2023-05-29 17:34:01', NULL),
(9, 5, 'Bộ ấm chén Bát Tràng vẽ hoa đào men kem', NULL, 490000, 9, '2022-10-24 08:04:32', '2023-05-29 17:35:22', NULL),
(10, 1, 'Bộ ấm chén Bát Tràng hướng thiện vẽ hoa sen đầy đủ phụ kiện', NULL, 590000, 10, '2022-10-24 08:04:32', '2023-05-29 17:27:51', NULL),
(11, 1, 'Ấm chén Bát Tràng men kem hoa đào xanh dáng vuông đầy đủ phụ kiện', NULL, 890000, 11, '2022-10-24 08:04:32', '2023-05-29 17:27:51', NULL),
(12, 3, 'Ấm chén Bát Tràng men kem hoa sen đỏ dáng quả hồng', NULL, 690000, 12, '2022-10-24 08:04:32', '2023-05-29 17:31:50', NULL),
(13, 2, 'Bình hút lộc màu đỏ vẽ vàng Phúc Đức Tài Lộc 25cm', NULL, 1500000, 13, '2022-10-24 08:04:32', '2023-05-29 17:30:05', NULL),
(14, 2, 'Bình hút lộc màu đỏ vẽ vàng Phúc Đức Tài Lộc 25cm', NULL, 1500000, 14, '2022-10-24 08:04:32', '2023-05-29 17:30:05', NULL),
(15, 3, 'Bình hút lộc màu đỏ vẽ vàng Phúc Đức Tài Lộc 25cm', NULL, 1500000, 15, '2022-10-24 08:04:32', '2023-05-29 17:31:50', NULL),
(16, 4, 'Bình hút lộc màu đỏ vẽ vàng Phúc Đức Tài Lộc 25cm', NULL, 1500000, 16, '2022-10-24 08:04:32', '2023-05-29 17:34:01', NULL),
(17, 4, 'Bình tài lộc vẽ vàng Công Thành Danh Toại Hạnh Phúc Bình An', NULL, 2900000, 17, '2022-10-24 08:04:32', '2023-05-29 17:34:01', NULL),
(18, 5, 'Bình hút lộc Bát Tràng vẽ vàng Cá Chép Hoa Sen', NULL, 2900000, 18, '2022-10-24 08:04:32', '2023-05-29 17:35:22', NULL),
(19, 5, 'Bình hút lộc vẽ vàng Thuận Buồm Xuôi Gió Công Danh Phú Quý', NULL, 2900000, 19, '2022-10-24 08:04:32', '2023-05-29 17:35:22', NULL),
(20, 1, 'Bình hút lộc Bát Tràng vẽ vàng Cá Chép Hoa Sen 30cm', NULL, 2900000, 20, '2022-10-24 08:04:32', '2023-05-29 17:27:51', NULL),
(21, 1, 'Tranh tứ quý men màu đắp nổi Bát Tràng Tùng Cúc Trúc Mai 116x55cm', NULL, 5000000, 21, '2022-10-24 08:04:32', '2023-05-29 17:27:51', NULL),
(22, 3, 'Tranh tứ quý Bát Tràng men màu trơn Tùng Cúc Trúc Mai vẽ kỹ 115x50cm', NULL, 6000000, 22, '2022-10-24 08:04:32', '2023-05-29 17:31:50', NULL),
(23, 2, 'Tranh tứ quý đắp nổi khung gỗ thông 100x50cm', NULL, 3000000, 23, '2022-10-24 08:04:32', '2023-05-29 17:30:05', NULL),
(24, 2, 'Tranh sứ Bát Tràng vẽ cửu ngư đồ cá chép hoa sen 95x55cm', NULL, 1000000, 24, '2022-10-24 08:04:32', '2023-05-29 17:30:06', NULL),
(25, 3, 'Tranh sứ cửu ngư quần hội 64cm x 98cm', NULL, 1000000, 25, '2022-10-24 08:04:32', '2023-05-29 17:31:50', NULL),
(26, 4, 'Tranh tứ quý men trơn Bát Tràng Tùng Cúc Trúc Đào 80x42cm', NULL, 3900000, 26, '2022-10-24 08:04:32', '2023-05-29 17:34:01', NULL),
(27, 4, 'Tranh tứ quý men lam Tùng Cúc Trúc Mai 98x48cm', NULL, 4500000, 27, '2022-10-24 08:04:32', '2023-05-29 17:34:01', NULL),
(28, 5, 'Tranh cá chép trông trăng men lam đắp nổi 85x42cm', NULL, 1500000, 28, '2022-10-24 08:04:32', '2023-05-29 17:35:22', NULL),
(29, 5, 'Bộ đồ thờ men xanh ngọc cho bàn thờ 1m53', NULL, 3700000, 29, '2022-10-24 08:04:32', '2023-05-29 17:35:22', NULL),
(30, 1, 'Bộ đồ thờ men xanh ngọc cho bàn thờ 1m75', NULL, 4400000, 30, '2022-10-24 08:04:32', '2023-05-29 17:27:51', NULL),
(31, 1, 'Bộ đồ thờ Bát Tràng men ngọc vẽ vàng 24k đầy đủ', NULL, 21000000, 31, '2022-10-24 08:04:32', '2023-05-29 17:27:51', NULL),
(32, 3, 'Bộ đồ thờ men xanh ngọc cho bàn thờ chung cư', NULL, 1900000, 32, '2022-10-24 08:04:32', '2023-05-29 17:31:50', NULL),
(33, 2, 'Bộ đồ thờ men rạn cho ban thờ thần tài 56', NULL, 2800000, 33, '2022-10-24 08:04:32', '2023-05-29 17:30:06', NULL),
(34, 2, 'Bộ đồ thờ Bát Tràng men rạn đắp nổi hoa sen', NULL, 3900000, 34, '2022-10-24 08:04:32', '2023-05-29 17:30:06', NULL),
(35, 3, 'Bộ tam sự lư hương đỉnh hạc chân đồng cao 48cm', NULL, 9000000, 35, '2022-10-24 08:04:32', '2023-05-29 17:31:50', NULL),
(36, 4, 'Bộ đồ thờ Bát Tràng men rạn đắp nổi rồng ban thờ 1m53', NULL, 0, 36, '2022-10-24 08:04:32', '2023-05-29 17:34:01', NULL),
(37, 4, 'Đèn dầu men lam vẽ hoa sen dáng quả lê to', NULL, 890000, 37, '2022-10-24 08:04:32', '2023-05-29 17:34:01', NULL),
(38, 6, 'Đèn dầu men lam vẽ hoa sen dáng trần', NULL, 800000, 38, '2022-10-24 08:04:32', '2023-05-29 17:39:29', NULL),
(39, 6, 'Đèn dầu bát nắp sen xanh cỡ lớn', NULL, 1200000, 39, '2022-10-24 08:04:32', '2023-05-29 17:39:29', NULL),
(40, 1, 'Đèn dầu men lam vẽ cổ đồ dáng vai vuông', NULL, 780000, 40, '2022-10-24 08:04:32', '2023-05-29 17:30:50', NULL),
(41, 1, 'Đèn dầu men rạn vẽ chữ dáng bầu', NULL, 6900000, 41, '2022-10-24 08:04:32', '2023-05-29 17:30:50', NULL),
(42, 3, 'Đèn dầu men rạn vẽ chữ dáng trần', NULL, 6900000, 42, '2022-10-24 08:04:32', '2023-05-29 17:31:50', NULL),
(43, 2, 'Đèn dầu men rạn vẽ đồng quê dáng bát úp', NULL, 800000, 43, '2022-10-24 08:04:32', '2023-05-29 17:30:06', NULL),
(44, 2, 'Đèn dầu men lam dáng đĩa', NULL, 840000, 44, '2022-10-24 08:04:32', '2023-05-29 17:30:06', NULL),
(45, 3, 'Bộ tách cafe Bát Tràng vẽ tay Hoa dây', NULL, 350000, 45, '2022-10-24 08:04:32', '2023-05-29 17:31:50', NULL),
(46, 4, 'Bộ tách cafe Bát Tràng vẽ tay chuồn chuồn', NULL, 350000, 46, '2022-10-24 08:04:32', '2023-05-29 17:34:01', NULL),
(47, 4, 'Bộ tách cafe Bát Tràng vẽ tay cá đàn', NULL, 350000, 47, '2022-10-24 08:04:32', '2023-05-29 17:34:01', NULL),
(48, 6, 'Bộ tách cafe Bát Tràng vẽ tay chim hạc', NULL, 350000, 48, '2022-10-24 08:04:32', '2023-05-29 17:39:29', NULL),
(49, 6, 'Bộ tách cafe Bát Tràng vẽ tay cherry', NULL, 350000, 49, '2022-10-24 08:04:32', '2023-05-29 17:39:29', NULL),
(50, 6, 'Bộ tách cafe Bát Tràng vẽ tay cá 3 màu', NULL, 350000, 50, '2022-10-24 08:04:32', '2023-05-29 17:39:29', NULL),
(51, 6, 'Bộ tách cafe Bát Tràng vẽ tay cá xương', NULL, 350000, 51, '2022-10-24 08:04:32', '2023-05-29 17:39:30', NULL),
(52, 6, 'Bộ tách cafe Bát Tràng vẽ tay bồ công anh tím', NULL, 350000, 52, '2022-10-24 08:04:32', '2023-05-29 17:39:30', NULL);

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
(5, 7, '2022-10-26 20:02:51', '2022-10-26 20:02:51', NULL),
(6, 1, '2022-10-26 20:03:57', '2022-10-26 20:03:57', NULL),
(6, 7, '2022-10-26 20:03:57', '2022-10-26 20:03:57', NULL),
(7, 1, '2022-10-26 20:06:16', '2022-10-26 20:06:16', NULL),
(7, 7, '2022-10-26 20:06:16', '2022-10-26 20:06:16', NULL),
(8, 1, '2022-10-26 20:06:29', '2022-10-26 20:06:29', NULL),
(8, 7, '2022-10-26 20:06:29', '2022-10-26 20:06:29', NULL),
(9, 1, '2022-10-26 20:11:49', '2022-10-26 20:11:49', NULL),
(9, 7, '2022-10-26 20:11:49', '2022-10-26 20:11:49', NULL),
(10, 1, '2022-10-26 20:11:49', '2022-10-26 20:11:49', NULL),
(10, 7, '2022-10-26 20:11:49', '2022-10-26 20:11:49', NULL),
(11, 1, '2022-10-26 20:11:49', '2022-10-26 20:11:49', NULL),
(11, 7, '2022-10-26 20:11:49', '2022-10-26 20:11:49', NULL),
(12, 1, '2022-10-26 20:11:49', '2022-10-26 20:11:49', NULL),
(12, 7, '2022-10-26 20:11:49', '2022-10-26 20:11:49', NULL),
(13, 2, '2022-10-29 15:51:36', '2022-10-29 15:51:36', NULL),
(13, 9, '2022-10-29 15:51:36', '2022-10-29 15:51:36', NULL),
(14, 2, '2022-10-29 15:53:44', '2022-10-29 15:53:44', NULL),
(14, 9, '2022-10-29 15:53:44', '2022-10-29 15:53:44', NULL),
(15, 2, '2022-10-29 15:54:00', '2022-10-29 15:54:00', NULL),
(15, 9, '2022-10-29 15:54:00', '2022-10-29 15:54:00', NULL),
(16, 2, '2022-10-29 15:54:14', '2022-10-29 15:54:14', NULL),
(16, 9, '2022-10-29 15:54:14', '2022-10-29 15:54:14', NULL),
(17, 2, '2022-10-29 15:55:59', '2022-10-29 15:55:59', NULL),
(17, 9, '2022-10-29 15:55:59', '2022-10-29 15:55:59', NULL),
(18, 2, '2022-10-29 15:55:59', '2022-10-29 15:55:59', NULL),
(18, 9, '2022-10-29 15:55:59', '2022-10-29 15:55:59', NULL),
(19, 2, '2022-10-29 15:55:59', '2022-10-29 15:55:59', NULL),
(19, 9, '2022-10-29 15:55:59', '2022-10-29 15:55:59', NULL),
(20, 2, '2022-10-29 15:55:59', '2022-10-29 15:55:59', NULL),
(20, 9, '2022-10-29 15:55:59', '2022-10-29 15:55:59', NULL),
(21, 3, '2022-11-01 20:53:36', '2022-11-01 20:53:36', NULL),
(21, 9, '2022-11-01 20:53:36', '2022-11-01 20:53:36', NULL),
(22, 3, '2022-11-01 20:54:43', '2022-11-01 20:54:43', NULL),
(22, 9, '2022-11-01 20:54:43', '2022-11-01 20:54:43', NULL),
(23, 3, '2022-11-01 20:54:43', '2022-11-01 20:54:43', NULL),
(23, 9, '2022-11-01 20:54:43', '2022-11-01 20:54:43', NULL),
(24, 3, '2022-11-01 20:54:43', '2022-11-01 20:54:43', NULL),
(24, 9, '2022-11-01 20:54:43', '2022-11-01 20:54:43', NULL),
(25, 3, '2022-11-01 20:59:03', '2022-11-01 20:59:03', NULL),
(25, 9, '2022-11-01 20:59:03', '2022-11-01 20:59:03', NULL),
(26, 3, '2022-11-01 20:59:03', '2022-11-01 20:59:03', NULL),
(26, 9, '2022-11-01 20:59:03', '2022-11-01 20:59:03', NULL),
(27, 3, '2022-11-01 20:59:03', '2022-11-01 20:59:03', NULL),
(27, 9, '2022-11-01 20:59:03', '2022-11-01 20:59:03', NULL),
(28, 3, '2022-11-01 20:59:03', '2022-11-01 20:59:03', NULL),
(28, 9, '2022-11-01 20:59:03', '2022-11-01 20:59:03', NULL),
(29, 4, '2022-11-01 21:02:38', '2022-11-01 21:02:38', NULL),
(29, 8, '2022-11-01 21:02:38', '2022-11-01 21:02:38', NULL),
(30, 4, '2022-11-01 21:02:38', '2022-11-01 21:02:38', NULL),
(30, 8, '2022-11-01 21:02:38', '2022-11-01 21:02:38', NULL),
(31, 4, '2022-11-01 21:02:38', '2022-11-01 21:02:38', NULL),
(31, 8, '2022-11-01 21:02:38', '2022-11-01 21:02:38', NULL),
(32, 4, '2022-11-01 21:02:38', '2022-11-01 21:02:38', NULL),
(32, 8, '2022-11-01 21:02:38', '2022-11-01 21:02:38', NULL),
(33, 4, '2022-11-01 21:05:06', '2022-11-01 21:05:06', NULL),
(33, 8, '2022-11-01 21:05:06', '2022-11-01 21:05:06', NULL),
(34, 4, '2022-11-01 21:05:06', '2022-11-01 21:05:06', NULL),
(34, 8, '2022-11-01 21:05:06', '2022-11-01 21:05:06', NULL),
(35, 4, '2022-11-01 21:05:06', '2022-11-01 21:05:06', NULL),
(35, 8, '2022-11-01 21:05:06', '2022-11-01 21:05:06', NULL),
(36, 4, '2022-11-01 21:05:06', '2022-11-01 21:05:06', NULL),
(36, 8, '2022-11-01 21:05:06', '2022-11-01 21:05:06', NULL),
(37, 5, '2022-11-01 21:06:08', '2022-11-01 21:06:08', NULL),
(37, 8, '2022-11-01 21:06:08', '2022-11-01 21:06:08', NULL),
(38, 5, '2022-11-01 21:06:08', '2022-11-01 21:06:08', NULL),
(38, 8, '2022-11-01 21:06:08', '2022-11-01 21:06:08', NULL),
(39, 5, '2022-11-01 21:06:08', '2022-11-01 21:06:08', NULL),
(39, 8, '2022-11-01 21:06:08', '2022-11-01 21:06:08', NULL),
(40, 5, '2022-11-01 21:06:08', '2022-11-01 21:06:08', NULL),
(40, 8, '2022-11-01 21:06:08', '2022-11-01 21:06:08', NULL),
(41, 5, '2022-11-01 21:06:59', '2022-11-01 21:06:59', NULL),
(41, 8, '2022-11-01 21:06:59', '2022-11-01 21:06:59', NULL),
(42, 5, '2022-11-01 21:06:59', '2022-11-01 21:06:59', NULL),
(42, 8, '2022-11-01 21:06:59', '2022-11-01 21:06:59', NULL),
(43, 5, '2022-11-01 21:06:59', '2022-11-01 21:06:59', NULL),
(43, 8, '2022-11-01 21:06:59', '2022-11-01 21:06:59', NULL),
(44, 5, '2022-11-01 21:06:59', '2022-11-01 21:06:59', NULL),
(44, 8, '2022-11-01 21:06:59', '2022-11-01 21:06:59', NULL),
(45, 6, '2022-11-01 21:08:29', '2022-11-01 21:08:29', NULL),
(45, 7, '2022-11-01 21:08:29', '2022-11-01 21:08:29', NULL),
(46, 6, '2022-11-01 21:08:29', '2022-11-01 21:08:29', NULL),
(46, 7, '2022-11-01 21:08:29', '2022-11-01 21:08:29', NULL),
(47, 6, '2022-11-01 21:08:29', '2022-11-01 21:08:29', NULL),
(47, 7, '2022-11-01 21:08:29', '2022-11-01 21:08:29', NULL),
(48, 6, '2022-11-01 21:08:29', '2022-11-01 21:08:29', NULL),
(48, 7, '2022-11-01 21:08:29', '2022-11-01 21:08:29', NULL),
(49, 6, '2022-11-01 21:09:52', '2022-11-01 21:09:52', NULL),
(49, 7, '2022-11-01 21:09:52', '2022-11-01 21:09:52', NULL),
(50, 6, '2022-11-01 21:09:52', '2022-11-01 21:09:52', NULL),
(50, 7, '2022-11-01 21:09:52', '2022-11-01 21:09:52', NULL),
(51, 6, '2022-11-01 21:09:52', '2022-11-01 21:09:52', NULL),
(51, 7, '2022-11-01 21:09:52', '2022-11-01 21:09:52', NULL),
(52, 6, '2022-11-01 21:09:52', '2022-11-01 21:09:52', NULL),
(52, 7, '2022-11-01 21:09:52', '2022-11-01 21:09:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_image`
--

CREATE TABLE `product_image` (
  `id` int(4) NOT NULL,
  `url` text NOT NULL,
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
(1, 'https://gomtruongan.vn/uploads/products/27052022033113/bo-am-tra-bat-trang-vinh-hoa-phu-quy-xanh-co-vit-day-du-6_30032023093827.jpg', 1, 1, '2022-10-24 09:23:10', '2023-05-26 18:31:55', NULL),
(2, 'https://gomtruongan.vn/uploads/products/27052022033113/bo-am-tra-bat-trang-vinh-hoa-phu-quy-xanh-co-vit-day-du-2_30032023093736.jpg', 1, 0, '2022-10-24 09:23:10', '2022-10-24 09:23:10', NULL),
(3, 'https://gomtruongan.vn/uploads/products/27052022033113/bo-am-tra-bat-trang-vinh-hoa-phu-quy-xanh-co-vit-day-du-1_30032023093736.jpg', 1, 0, '2022-10-24 09:23:10', '2022-10-24 09:23:10', NULL),
(4, 'https://gomtruongan.vn/uploads/products/27052022033113/bo-am-tra-bat-trang-vinh-hoa-phu-quy-xanh-co-vit-day-du-5_30032023093736.jpg', 1, 0, '2022-10-24 09:23:10', '2022-10-24 09:23:10', NULL),
(5, 'https://gomtruongan.vn/uploads/products/18042023092247/bo-am-chen-bat-trang-men-kem-ve-tay-ha-sen-chuon_18042023092247.jpg', 2, 1, '2022-11-03 21:04:59', '2022-11-03 21:04:59', NULL),
(6, 'https://gomtruongan.vn/uploads/products/18042023092247/bo-am-chen-bat-trang-men-kem-ve-tay-ha-sen-chuon-1_18042023092247.jpg', 2, 0, '2022-11-03 21:04:59', '2022-11-03 21:04:59', NULL),
(7, 'https://gomtruongan.vn/uploads/products/18042023092247/bo-am-chen-bat-trang-men-kem-ve-tay-ha-sen-chuon-2_18042023092247.jpg', 2, 0, '2022-11-03 21:04:59', '2022-11-03 21:04:59', NULL),
(8, 'https://gomtruongan.vn/uploads/products/18042023092247/bo-am-chen-bat-trang-men-kem-ve-tay-ha-sen-chuon-3_18042023092247.jpg', 2, 0, '2022-11-03 21:04:59', '2022-11-03 21:04:59', NULL),
(9, 'https://gomtruongan.vn/uploads/products/05052022084329/bo-am-tra-bat-trang-vinh-hoa-phu-quy-men-den-bong_30032023100552.jpg', 3, 1, '2022-11-05 21:20:14', '2022-11-05 21:20:14', NULL),
(10, 'https://gomtruongan.vn/uploads/products/05052022084329/bo-am-tra-bat-trang-vinh-hoa-phu-quy-men-den-bong%20(2)_30032023100552.jpg', 3, 0, '2022-11-05 21:20:14', '2022-11-05 21:20:14', NULL),
(11, 'https://gomtruongan.vn/uploads/products/05052022084329/bo-am-tra-bat-trang-vinh-hoa-phu-quy-men-den-bong%20(3)_30032023100552.jpg', 3, 0, '2022-11-05 21:20:14', '2022-11-05 21:20:14', NULL),
(12, 'https://gomtruongan.vn/uploads/products/05052022084329/bo-am-tra-bat-trang-vinh-hoa-phu-quy-men-den-bong%20(4)_30032023100552.jpg', 3, 0, '2022-11-05 21:20:14', '2022-11-05 21:20:14', NULL),
(13, 'https://gomtruongan.vn/uploads/products/18042023092631/bo-am-chen-bat-trang-men-kem-ve-tay-phu-quy-dao-hong-1_18042023094522.jpg', 4, 1, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(14, 'https://gomtruongan.vn/uploads/products/18042023092631/bo-am-chen-bat-trang-men-kem-ve-tay-phu-quy-dao-hong_18042023094522.jpg', 4, 0, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(15, 'https://gomtruongan.vn/uploads/products/18042023092631/bo-am-chen-bat-trang-men-kem-ve-tay-phu-quy-dao-hong-2_18042023092631.jpg', 4, 0, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(16, 'https://gomtruongan.vn/uploads/products/18042023093311/bo-am-chen-bat-trang-men-kem-ve-tay-hoa-dai-minh-long_18042023093311.jpg', 5, 1, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(17, 'https://gomtruongan.vn/uploads/products/18042023093311/bo-am-chen-bat-trang-men-kem-ve-tay-hoa-dai-minh-long-1_18042023093311.jpg', 5, 0, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(18, 'https://gomtruongan.vn/uploads/products/18042023093311/bo-am-chen-bat-trang-men-kem-ve-tay-hoa-dai-minh-long-2_18042023093311.jpg', 5, 0, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(19, 'https://gomtruongan.vn/uploads/products/18042023093311/bo-am-chen-bat-trang-men-kem-ve-tay-hoa-dai-minh-long-3_18042023093311.jpg', 5, 0, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(20, 'https://gomtruongan.vn/uploads/products/05052022084606/bo-am-tra-bat-trang-cao-cap-men-den-bong-thuan-buom-xuoi-gio_30032023100707.jpg', 6, 1, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(21, 'https://gomtruongan.vn/uploads/products/05052022084606/bo-am-tra-bat-trang-cao-cap-men-den-bong-thuan-buom-xuoi-gio-1_30032023100707.jpg', 6, 0, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(22, 'https://gomtruongan.vn/uploads/products/05052022084606/bo-am-tra-bat-trang-cao-cap-men-den-bong-thuan-buom-xuoi-gio-2_30032023100707.jpg', 6, 0, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(23, 'https://gomtruongan.vn/uploads/products/05052022084606/bo-am-tra-bat-trang-cao-cap-men-den-bong-thuan-buom-xuoi-gio-3_30032023100707.jpg', 6, 0, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(24, 'https://gomtruongan.vn/uploads/products/22042023035501/bo-am-chen-uong-tra-khac-noi-hoa-co_22042023035501.jpg', 7, 1, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(25, 'https://gomtruongan.vn/uploads/products/22042023035501/bo-am-chen-uong-tra-khac-noi-hoa-co-1_22042023035510.jpg', 7, 0, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(26, 'https://gomtruongan.vn/uploads/products/22042023035501/bo-am-chen-uong-tra-khac-noi-hoa-co-2_22042023035510.jpg', 7, 0, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(27, 'https://gomtruongan.vn/uploads/products/22042023035644/bo-am-chen-uong-tra-khac-noi-hoa-co-dang-cao_22042023035644.jpg', 8, 1, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(28, 'https://gomtruongan.vn/uploads/products/22042023035644/bo-am-chen-uong-tra-khac-noi-hoa-co-dang-cao-1_22042023035644.jpg', 8, 0, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(29, 'https://gomtruongan.vn/uploads/products/22042023035644/bo-am-chen-uong-tra-khac-noi-hoa-co-dang-cao-2_22042023035644.jpg', 8, 0, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(30, 'https://gomtruongan.vn/uploads/products/02042020100839/bo-am-chen-bat-trang-ve-hoa-dao-men-kem_02042020100839.jpg', 9, 1, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(31, 'https://gomtruongan.vn/uploads/products/02042020100839/bo-am-chen-bat-trang-ve-hoa-dao-men-kem%20(5)_02042020100839.jpg', 9, 0, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(32, 'https://gomtruongan.vn/uploads/products/02042020100839/bo-am-chen-bat-trang-ve-hoa-dao-men-kem%20(2)_02042020100931.jpg', 9, 0, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(33, 'https://gomtruongan.vn/uploads/products/02042020101213/bo-am-chen-bat-trang-huong-thien-ve-hoa-sen-day-du-phu-kien_02042020101213.jpg', 10, 1, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(34, 'https://gomtruongan.vn/uploads/products/02042020101213/bo-am-chen-bat-trang-huong-thien-ve-hoa-sen-day-du-phu-kien-1_02042020101213.jpg', 10, 0, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(35, 'https://gomtruongan.vn/uploads/products/02042020101834/am-chen-bat-trang-men-kem-hoa-dao-xanh-dang-vuong-day-du-phu-kien_02042020102009.jpg', 11, 1, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(36, 'https://gomtruongan.vn/uploads/products/02042020101954/am-chen-bat-trang-men-kem-hoa-sen-do-dang-qua-hong_02042020101954.jpg', 12, 1, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(37, 'https://gomtruongan.vn/uploads/products/02112022085005/binh-hut-loc-mau-do-ve-vang-phuc-duc-tai-loc-28cm_02112022085005.jpg', 13, 1, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(38, 'https://gomtruongan.vn/uploads/products/02112022085005/binh-hut-loc-mau-do-ve-vang-phuc-duc-tai-loc-28cm-1_02112022085005.jpg', 13, 0, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(39, 'https://gomtruongan.vn/uploads/products/02112022085005/binh-hut-loc-mau-do-ve-vang-phuc-duc-tai-loc-28cm-2_02112022085005.jpg', 13, 0, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(40, 'https://gomtruongan.vn/uploads/products/02112022085005/binh-hut-loc-mau-do-ve-vang-phuc-duc-tai-loc-28cm-3_02112022085005.jpg', 13, 0, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(41, 'https://gomtruongan.vn/uploads/products/02112022084905/binh-hut-loc-mau-xanh-ve-vang-phuc-duc-tai-loc-28cm_02112022084918.jpg', 14, 1, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(42, 'https://gomtruongan.vn/uploads/products/02112022084905/binh-hut-loc-mau-xanh-ve-vang-phuc-duc-tai-loc-28cm-1_02112022084905.jpg', 14, 0, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(43, 'https://gomtruongan.vn/uploads/products/02112022084905/binh-hut-loc-mau-xanh-ve-vang-phuc-duc-tai-loc-28cm-2_02112022084905.jpg', 14, 0, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(44, 'https://gomtruongan.vn/uploads/products/02112022084905/binh-hut-loc-mau-xanh-ve-vang-phuc-duc-tai-loc-28cm-3_02112022084905.jpg', 14, 0, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(45, 'https://gomtruongan.vn/uploads/products/02112022083735/binh-hut-loc-mau-vang-ve-vang-phuc-duc-tai-loc-28cm_02112022083735.jpg', 15, 1, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(46, 'https://gomtruongan.vn/uploads/products/02112022083735/binh-hut-loc-mau-vang-ve-vang-phuc-duc-tai-loc-28cm-1_02112022083735.jpg', 15, 0, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(47, 'https://gomtruongan.vn/uploads/products/02112022083735/binh-hut-loc-mau-vang-ve-vang-phuc-duc-tai-loc-28cm-2_02112022083735.jpg', 15, 0, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(48, 'https://gomtruongan.vn/uploads/products/02112022083735/binh-hut-loc-mau-vang-ve-vang-phuc-duc-tai-loc-28cm-3_02112022083735.jpg', 15, 0, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(49, 'https://gomtruongan.vn/uploads/products/02112022084736/binh-hut-loc-mau-trang-ve-vang-phuc-duc-tai-loc-28cm_02112022084736.jpg', 16, 1, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(50, 'https://gomtruongan.vn/uploads/products/02112022084736/binh-hut-loc-mau-trang-ve-vang-phuc-duc-tai-loc-28cm-1_02112022084736.jpg', 16, 0, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(51, 'https://gomtruongan.vn/uploads/products/02112022084736/binh-hut-loc-mau-trang-ve-vang-phuc-duc-tai-loc-28cm-2_02112022084736.jpg', 16, 0, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(52, 'https://gomtruongan.vn/uploads/products/02112022084736/binh-hut-loc-mau-trang-ve-vang-phuc-duc-tai-loc-28cm-3_02112022084736.jpg', 16, 0, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(53, 'https://gomtruongan.vn/uploads/products/19032023031741/binh-hut-loc-ve-vang-cong-thanh-danh-toai-hanh-phuc-binh-an_21042023044839.jpg', 17, 1, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(54, 'https://gomtruongan.vn/uploads/products/19032023031741/binh-hut-loc-ve-vang-cong-thanh-danh-toai-hanh-phuc-binh-an-1_21042023044839.jpg', 17, 0, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(55, 'https://gomtruongan.vn/uploads/products/21042023044241/tui-hut-loc-bat-trang-ve-vang-ca-chep-hoa-sen-6_21042023044248.jpg', 18, 1, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(56, 'https://gomtruongan.vn/uploads/products/21042023044241/tui-hut-loc-bat-trang-ve-vang-ca-chep-hoa-sen-1_21042023044248.jpg', 18, 0, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(57, 'https://gomtruongan.vn/uploads/products/21042023043951/binh-hut-loc-ve-vang-thuan-buom-xuoi-gio-cong-thanh-danh-toai_21042023044005.jpg', 19, 1, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(58, 'https://gomtruongan.vn/uploads/products/21042023043951/binh-hut-loc-ve-vang-thuan-buom-xuoi-gio-cong-thanh-danh-toai-2_21042023043951.jpg', 19, 0, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(59, 'https://gomtruongan.vn/uploads/products/21042023043658/binh-hut-loc-bat-trang-ve-vang-ca-chep-hoa-sen-30cm_21042023043714.jpg', 20, 1, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(60, 'https://gomtruongan.vn/uploads/products/21042023043658/binh-hut-loc-bat-trang-ve-vang-ca-chep-hoa-sen-30cm-1_21042023043714.jpg', 20, 0, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(61, 'https://gomtruongan.vn/uploads/products/22052020043008/tranh-tu-quy-men-mau-dap-noi-bat-trang-tung-cuc-truc-mai-120x55cm_22052020043008.jpg', 21, 1, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(62, 'https://gomtruongan.vn/uploads/products/22052020043008/tranh-tu-quy-men-mau-dap-noi-bat-trang-tung-cuc-truc-mai-120x55cm-1_22052020043008.jpg', 21, 0, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(63, 'https://gomtruongan.vn/uploads/products/22052020043602/tranh-tu-quy-bat-trang-men-mau-tron-tung-cuc-truc-mai-ve-ky-120x55cm_22052020043602.jpg', 22, 1, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(64, 'https://gomtruongan.vn/uploads/products/22052020043602/tranh-tu-quy-bat-trang-men-mau-tron-tung-cuc-truc-mai-ve-ky-120x55cm-1_22052020043617.jpg', 22, 0, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(65, 'https://gomtruongan.vn/uploads/products/23052020113507/tranh-tu-quy-dap-noi-khung-go-thong-100x50cm_19112020081205.jpg', 23, 1, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(66, 'https://gomtruongan.vn/uploads/products/23052020113507/tranh-tu-quy-dap-noi-khung-go-thong-100x50cm-1_19112020081207.jpg', 23, 0, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(67, 'https://gomtruongan.vn/uploads/products/25052020101540/tranh-su-bat-trang-ve-cuu-ngu-do_25052020101540.jpg', 24, 1, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(68, 'https://gomtruongan.vn/uploads/products/25052020101540/tranh-su-bat-trang-ve-cuu-ngu-do-1_25052020101602.jpg', 24, 0, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(69, 'https://gomtruongan.vn/uploads/products/23052020044404/tranh-su-cuu-ngu-quan-hoi_23052020044416.jpg', 25, 1, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(70, 'https://gomtruongan.vn/uploads/products/23052020044404/tranh-su-cuu-ngu-quan-hoi-1_23052020044404.jpg', 25, 0, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(71, 'https://gomtruongan.vn/uploads/products/22052020045701/tranh-tu-quy-men-tron-bat-trang-tung-cuc-truc-dao-80x42cm_22052020045701.jpg', 26, 1, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(72, 'https://gomtruongan.vn/uploads/products/22052020045701/tranh-tu-quy-men-tron-bat-trang-tung-cuc-truc-dao-80x42cm-1_22052020045717.jpg', 26, 0, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(73, 'https://gomtruongan.vn/uploads/products/22052020045934/tranh-tu-quy-men-lam-tung-cuc-truc-mai-98x48cm_22052020045934.jpg', 27, 1, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(74, 'https://gomtruongan.vn/uploads/products/22052020045934/tranh-tu-quy-men-lam-tung-cuc-truc-mai-98x48cm-1_22052020045950.jpg', 27, 0, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(75, 'https://gomtruongan.vn/uploads/products/23052020110658/tranh-ca-chep-trong-trang-men-tram-dap-noi-85x42cm_23052020110658.jpg', 28, 1, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(76, 'https://gomtruongan.vn/uploads/products/23052020110658/tranh-ca-chep-trong-trang-men-tram-dap-noi-85x42cm-1_23052020110658.jpg', 28, 0, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(77, 'https://gomtruongan.vn/uploads/products/25012021092024/bo-do-tho-men-xanh-ngoc-cho-ban-tho-1m53_25012021092024.jpg', 29, 1, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(78, 'https://gomtruongan.vn/uploads/products/25012021092024/bo-do-tho-men-xanh-ngoc-cho-ban-tho-1m53-1_25012021092024.jpg', 29, 0, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(79, 'https://gomtruongan.vn/uploads/products/25012021092356/bo-do-tho-men-xanh-ngoc-cho-ban-tho-1m75_25012021092356.jpg', 30, 1, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(80, 'https://gomtruongan.vn/uploads/products/07102020041800/bo-do-tho-bat-trang-men-ngoc-ve-vang-24k-day-du_07102020041800.jpg', 31, 1, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(81, 'https://gomtruongan.vn/uploads/products/07102020041800/bo-do-tho-bat-trang-men-ngoc-ve-vang-24k-day-du-1_07102020041814.jpg', 31, 0, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(82, 'https://gomtruongan.vn/uploads/products/25012021091558/bo-do-tho-men-xanh-ngoc-cho-ban-tho-chung-cu_25012021091558.jpg', 32, 1, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(83, 'https://gomtruongan.vn/uploads/products/07082020091225/bo-do-tho-men-ran-cho-ban-tho-than-tai_07082020091225.jpg', 33, 1, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(84, 'https://gomtruongan.vn/uploads/products/07082020091225/bo-do-tho-men-ran-cho-ban-tho-than-tai-1_07082020091225.jpg', 33, 0, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(85, 'https://gomtruongan.vn/uploads/products/07082020090608/bo-do-tho-bat-trang-men-ran-dap-noi-hoa-sen_07082020090812.jpg', 34, 1, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(86, 'https://gomtruongan.vn/uploads/products/07082020090608/bo-do-tho-bat-trang-men-ran-dap-noi-hoa-sen-1_07082020090842.jpg   ', 34, 0, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(87, 'https://gomtruongan.vn/uploads/products/07082020090608/bo-do-tho-bat-trang-men-ran-dap-noi-hoa-sen-2_07082020090842.jpg', 34, 0, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(88, 'https://gomtruongan.vn/uploads/products/09072020111304/bo-tam-su-lu-huong-dinh-hac-chan-dong-cao-48cm_09072020111304.jpg', 35, 1, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(89, 'https://gomtruongan.vn/uploads/products/09072020111304/bo-tam-su-lu-huong-dinh-hac-chan-dong-cao-48cm-1_09072020111323.jpg', 35, 0, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(90, 'https://gomtruongan.vn/uploads/products/09072020111304/bo-tam-su-lu-huong-dinh-hac-chan-dong-cao-48cm-2_09072020111323.jpg', 35, 0, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(91, 'https://gomtruongan.vn/uploads/products/07082020090315/bo-do-tho-bat-trang-men-ran-dap-noi-rong-ban-tho-153m_07082020090315.jpg', 36, 1, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(92, 'https://gomtruongan.vn/uploads/products/07082020090315/bo-do-tho-bat-trang-men-ran-dap-noi-rong-ban-tho-153m-1_07082020090329.jpg', 36, 0, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(93, 'https://gomtruongan.vn/uploads/products/20062021091945/den-dau-men-lam-ve-hoa-sen-dang-qua-le-to_20062021091945.jpg', 37, 1, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(94, 'https://gomtruongan.vn/uploads/products/20062021092222/den-dau-men-lam-ve-hoa-sen-dang-tran_20062021092222.jpg', 38, 1, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(95, 'https://gomtruongan.vn/uploads/products/01062021090123/den-dau-bat-nap-sen-xanh-co-lon_01062021090123.jpg', 39, 1, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(96, 'https://gomtruongan.vn/uploads/products/15062020103446/den-dau-men-lam-ve-co-do-dang-vai-vuong_15062020103446.jpg', 40, 1, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(97, 'https://gomtruongan.vn/uploads/products/15062020103147/den-dau-men-ran-ve-chu-dang-tran_01062021080529.jpg', 41, 1, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(98, 'https://gomtruongan.vn/uploads/products/01062021081630/den-dau-men-lam-ve-chu-dang-tran_01062021081630.jpg', 42, 1, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(99, 'https://gomtruongan.vn/uploads/products/15062020094755/den-dau-men-ran-ve-dong-que-dang-bat-up_01062021081118.jpg', 43, 1, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(100, 'https://gomtruongan.vn/uploads/products/15062020102206/den-dau-men-lam-dang-dia_01062021081224.jpg', 44, 1, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(101, 'https://gomtruongan.vn/uploads/products/11112021031317/bo-tach-cafe-bat-trang-ve-tay-hoa-day_11112021031317.jpg', 45, 1, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(102, 'https://gomtruongan.vn/uploads/products/10112021091902/bo-tach-cafe-bat-trang-ve-tay-chuon-chuon_10112021091902.jpg', 46, 1, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(103, 'https://gomtruongan.vn/uploads/products/10112021092512/z2921224864489_42e4d99415e72d3944fac137cd470571_10112021092512.jpg', 47, 1, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(104, 'https://gomtruongan.vn/uploads/products/11112021030900/bo-tach-cafe-bat-trang-ve-tay-chim-hac_11112021030900.jpg', 48, 1, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(105, 'https://gomtruongan.vn/uploads/products/11112021031017/bo-tach-cafe-bat-trang-ve-tay-cherry_11112021031017.jpg', 49, 1, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(106, 'https://gomtruongan.vn/uploads/products/11112021031120/bo-tach-cafe-bat-trang-ve-tay-ca-3-mau_11112021031120.jpg', 50, 1, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(107, 'https://gomtruongan.vn/uploads/products/10112021093910/bo-tach-cafe-bat-trang-ve-tay-ca-xuong_10112021093910.jpg', 51, 1, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL),
(108, 'https://gomtruongan.vn/uploads/products/10112021093744/bo-tach-cafe-bat-trang-ve-tay-bo-cong-anh-tim_10112021093744.jpg', 52, 1, '2022-11-05 21:30:24', '2022-11-05 21:30:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_order`
--

CREATE TABLE `product_order` (
  `id` int(4) NOT NULL,
  `user_id` int(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `product_order`
--

INSERT INTO `product_order` (`id`, `user_id`, `created_at`, `modified_at`, `deleted_at`) VALUES
(1, 2, '2023-05-31 17:16:02', '2023-05-31 17:16:02', NULL),
(2, 2, '2023-05-31 17:18:41', '2023-05-31 17:18:41', NULL),
(3, 2, '2023-05-31 17:20:48', '2023-05-31 17:20:48', NULL);

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
(1, '{\"Loại sản phẩm\":\" Ấm chén men xanh cổ vịt vẽ vàng 18k\",\"Màu sắc\": \"Xanh\", \"Số món\": \"14\",\"Chi tiết các món:\":\" 1 ấm, 6 chén, 7 đĩa \", \"Hoa văn\": \"Vinh Hoa Phú Quý\"}', '2022-10-24 05:54:39', '2022-10-30 09:26:12', NULL),
(2, '{\"Loại sản phẩm:\":\" Ấm chén men kem \",\"Màu sắc:\":\" Trắng \",\"Số món:\":\" 14 \",\"Chi tiết các món:\":\" 1 ấm, 6 chén, 7 đĩa \",\"Hoa văn:\":\" Họa tiết đài sen và chuồn chuồn được nghệ nhân vẽ tay thủ công rất tinh tế với màu sắc nhã nhặn \"}', '2022-11-07 18:01:53', '2022-11-07 18:01:53', NULL),
(3, '{\"Loại sản phẩm:\":\" Ấm chén vẽ vàng \",\"Màu sắc:\":\" Trắng \",\"Số món:\":\" 14 \",\"Chi tiết các món:\":\" 1 ấm, 6 chén, 7 đĩa \",\"Hoa văn:\":\" Men đen vẽ vàng kim \"}', '2022-11-07 18:01:53', '2022-11-07 18:01:53', NULL),
(4, '{\"Loại sản phẩm:\":\" Ấm chén men kem \",\"Màu sắc:\":\" Trắng \",\"Số món:\":\" 14 \",\"Chi tiết các món:\":\" 1 ấm, 6 chén, 7 đĩa \",\"Hoa văn:\":\" Hoa đào hồng tươi tắn được vẽ tay thủ công 100% trên nền men kem với dáng ấm rất điệu đà \"}', '2022-11-07 18:01:53', '2022-11-07 18:01:53', NULL),
(5, '{\"Loại sản phẩm:\":\" Ấm chén men kem \",\"Màu sắc:\":\" Trắng \",\"Số món:\":\" 14 \",\"Chi tiết các món:\":\" 1 ấm, 6 chén, 7 đĩa \",\"Hoa văn:\":\" Hoa Đại được thể hiện tinh tế, màu sắc trang nhã qua nét vẽ thủ công bằng tay của người thợ gốm Bát Tràng \"}', '2022-11-07 18:01:53', '2022-11-07 18:01:53', NULL),
(6, '{\"Loại sản phẩm:\":\" Ấm chén vẽ vàng \",\"Màu sắc:\":\" Đen \",\"Số món:\":\" 14 \",\"Chi tiết các món:\":\" 1 ấm, 6 chén, 7 đĩa \",\"Hoa văn:\":\" Men đen vẽ vàng kim \"}', '2022-11-07 18:01:53', '2022-11-07 18:01:53', NULL),
(7, '{\"Loại sản phẩm:\":\" Ấm chén khắc tay men hoàng thổ \",\"Màu sắc:\":\" Nâu \",\"Số món:\":\" 14 \",\"Chi tiết các món:\":\" 1 ấm, 6 chén, 7 đĩa \",\"Hoa văn:\":\" Hoa sen cổ \"}', '2022-11-07 18:01:53', '2022-11-07 18:01:53', NULL),
(8, '{\"Loại sản phẩm:\":\" Ấm chén khắc tay men hoàng thổ \",\"Màu sắc:\":\" Nâu \",\"Số món:\":\" 14 \",\"Chi tiết các món:\":\" 1 ấm, 6 chén, 7 đĩa \",\"Hoa văn:\":\" Hoa sen cổ \"}', '2022-11-07 18:01:53', '2022-11-07 18:01:53', NULL),
(9, '{\"Loại sản phẩm:\":\" Ấm chén men kem \",\"Màu sắc:\":\" Trắng \",\"Số món:\":\" 14 \",\"Chi tiết các món:\":\" 1 ấm, 6 chén, 7 đĩa \",\"Hoa văn:\":\" Đào đỏ \"}', '2022-11-07 18:01:53', '2022-11-07 18:01:53', NULL),
(10, '{\"Loại sản phẩm:\":\" Ấm chén men kem \",\"Màu sắc:\":\" Trắng \",\"Số món:\":\" 14 \",\"Chi tiết các món:\":\" 1 ấm, 6 chén, 7 đĩa \",\"Hoa văn:\":\" Đào đỏ \"}', '2022-11-07 18:01:53', '2022-11-07 18:01:53', NULL),
(11, '{\"Loại sản phẩm:\":\" Ấm chén men kem \",\"Màu sắc:\":\" Trắng \",\"Số món:\":\" 14 \",\"Chi tiết các món:\":\" 1 ấm, 6 chén, 7 đĩa \",\"Hoa văn:\":\" Hoa đào xanh \"}', '2022-11-07 18:01:53', '2022-11-07 18:01:53', NULL),
(12, '{\"Loại sản phẩm:\":\" Ấm chén men kem \",\"Màu sắc:\":\" Trắng \",\"Số món:\":\" 14 \",\"Chi tiết các món:\":\" 1 ấm, 6 chén, 7 đĩa \",\"Hoa văn:\":\" Hoa sen đỏ \"}', '2022-11-07 18:01:53', '2022-11-07 18:01:53', NULL),
(13, '{\"Loại sản phẩm:\":\" Bình hút tài lộc \",\"Màu sắc:\":\" Đỏ \",\"Số món:\":\" 1 \",\"Chi tiết các món:\":\" Cao 25cm  \",\"Đặc điểm:\":\" Trưng bày phong thủy phòng khách, bàn làm việc, có thể cắm hoa, lông công...  \"}', '2022-11-07 18:01:53', '2022-11-07 18:01:53', NULL),
(14, '{\"Loại sản phẩm:\":\" Bình hút tài lộc \",\"Màu sắc:\":\" Trắng \",\"Số món:\":\" 1 \",\"Chi tiết các món:\":\" Cao 25cm  \",\"Đặc điểm:\":\" Trưng bày phong thủy phòng khách, bàn làm việc, có thể cắm hoa, lông công...  \"}', '2022-11-07 18:01:53', '2022-11-07 18:01:53', NULL),
(15, '{\"Loại sản phẩm:\":\" Bình hút tài lộc \",\"Màu sắc:\":\" Xanh lục \",\"Số món:\":\" 1 \",\"Chi tiết các món:\":\" Cao 25cm  \",\"Đặc điểm:\":\" Trưng bày phong thủy phòng khách, bàn làm việc, có thể cắm hoa, lông công...  \"}', '2022-11-07 18:01:53', '2022-11-07 18:01:53', NULL),
(16, '{\"Loại sản phẩm:\":\" Bình hút tài lộc \",\"Màu sắc:\":\" Vàng \",\"Số món:\":\" 1 \",\"Chi tiết các món:\":\" Cao 25cm  \",\"Đặc điểm:\":\" Trưng bày phong thủy phòng khách, bàn làm việc, có thể cắm hoa, lông công...  \"}', '2022-11-07 18:01:53', '2022-11-07 18:01:53', NULL),
(17, '{\"Loại sản phẩm:\":\" Bình hút tài lộc \",\"Màu sắc:\":\" Xanh ngọc \",\"Số món:\":\" 1 \",\"Chi tiết các món:\":\" Cao 25cm  \",\"Đặc điểm:\":\" Trưng bày phong thủy phòng khách, bàn làm việc, có thể cắm hoa, lông công...  \"}', '2022-11-07 18:01:53', '2022-11-07 18:01:53', NULL),
(18, '{\"Loại sản phẩm:\":\" Bình hút tài lộc \",\"Màu sắc:\":\" Đỏ đô \",\"Số món:\":\" 1 \",\"Chi tiết các món:\":\" Cao 25cm  \",\"Đặc điểm:\":\" Trưng bày phong thủy phòng khách, bàn làm việc, có thể cắm hoa, lông công...  \"}', '2022-11-07 18:01:53', '2022-11-07 18:01:53', NULL),
(19, '{\"Loại sản phẩm:\":\" Bình hút tài lộc \",\"Màu sắc:\":\" Trắng \",\"Số món:\":\" 1 \",\"Chi tiết các món:\":\" Cao 25cm  \",\"Đặc điểm:\":\" Trưng bày phong thủy phòng khách, bàn làm việc, có thể cắm hoa, lông công...  \"}', '2022-11-07 18:01:53', '2022-11-07 18:01:53', NULL),
(20, '{\"Loại sản phẩm:\":\" Bình hút tài lộc \",\"Màu sắc:\":\" Xanh lam \",\"Số món:\":\" 1 \",\"Chi tiết các món:\":\" Cao 25cm  \",\"Đặc điểm:\":\" Trưng bày phong thủy phòng khách, bàn làm việc, có thể cắm hoa, lông công...  \"}', '2022-11-07 18:01:53', '2022-11-07 18:01:53', NULL),
(21, '{\"Loại sản phẩm:\":\" Tranh gốm sứ \",\"Màu sắc:\":\" Nâu \",\"Số món:\":\" 1 \",\"Sản phẩm bao gồm:\":\" 4 bức tứ quý nổi đã vào khung  \",\"Hoạ tiết:\":\"  Tùng cúc trúc mai men màu đắp nổi  \"}', '2022-11-07 18:01:53', '2022-11-07 18:01:53', NULL),
(22, '{\"Loại sản phẩm:\":\" Tranh gốm sứ \",\"Màu sắc:\":\" Nâu \",\"Số món:\":\" 1 \",\"Sản phẩm bao gồm:\":\" 4 bức tứ quý nổi đã vào khung  \",\"Hoạ tiết:\":\"  Tùng cúc trúc mai men màu trơn vẽ tay  \"}', '2022-11-07 18:01:53', '2022-11-07 18:01:53', NULL),
(23, '{\"Loại sản phẩm:\":\" Tranh gốm sứ \",\"Màu sắc:\":\" Nâu \",\"Số món:\":\" 1 \",\"Sản phẩm bao gồm:\":\" 4 bức tứ quý nổi đã vào khung  \",\"Hoạ tiết:\":\"  Tứ quý đắp nổi men màu sống động làm nổi bật họa tiết tùng cúc trúc mai  \"}', '2022-11-07 18:01:53', '2022-11-07 18:01:53', NULL),
(24, '{\"Loại sản phẩm:\":\" Tranh gốm sứ \",\"Màu sắc:\":\" Nâu \",\"Số món:\":\" 1 \",\"Sản phẩm bao gồm:\":\" 4 bức tứ quý nổi đã vào khung  \",\"Hoạ tiết:\":\"  Tích cảnh Cửu ngư đồ với 9 chú cá chép bơi quanh đầm hoa sen  \"}', '2022-11-07 18:01:53', '2022-11-07 18:01:53', NULL),
(25, '{\"Loại sản phẩm:\":\" Tranh gốm sứ \",\"Màu sắc:\":\" Nâu \",\"Số món:\":\" 1 \",\"Sản phẩm bao gồm:\":\" 4 bức tứ quý nổi đã vào khung  \",\"Hoạ tiết:\":\"  Tích cảnh cử ngư quần hội hay còn gọi cá chép vượt ngũ môn rất sắc xảo và tinh tế \"}', '2022-11-07 18:01:53', '2022-11-07 18:01:53', NULL),
(26, '{\"Loại sản phẩm:\":\" Tranh gốm sứ \",\"Màu sắc:\":\" Gỗ đỏ \",\"Số món:\":\" 1 \",\"Sản phẩm bao gồm:\":\" 4 bức tứ quý nổi đã vào khung  \",\"Hoạ tiết:\":\"  Vẽ tay thủ công hình ảnh tứ quý Tùng cúc trúc đào rất sôi động với màu sắc tươi sáng \"}', '2022-11-07 18:01:53', '2022-11-07 18:01:53', NULL),
(27, '{\"Loại sản phẩm:\":\" Tranh gốm sứ \",\"Màu sắc:\":\" Nâu \",\"Số món:\":\" 1 \",\"Sản phẩm bao gồm:\":\" 4 bức tứ quý nổi đã vào khung  \",\"Hoạ tiết:\":\"  Hoa văn tùng cúc trúc mai đắp nổi thủ công bằng màu sắc lam tràm giản đị, yên bình  \"}', '2022-11-07 18:01:53', '2022-11-07 18:01:53', NULL),
(28, '{\"Loại sản phẩm:\":\" Tranh gốm sứ \",\"Màu sắc:\":\" Nâu \",\"Số món:\":\" 1 \",\"Sản phẩm bao gồm:\":\" 4 bức tứ quý nổi đã vào khung  \",\"Hoạ tiết:\":\"  Bộ tranh cá chép hoa sen với tích Lý ngư vọng nguyệt \"}', '2022-11-07 18:01:53', '2022-11-07 18:01:53', NULL),
(29, '{\"Loại sản phẩm:\":\" Bộ đồ thờ cúng \",\"Màu sắc:\":\" Xanh ngọc \",\"Số món:\":\" 12 \",\"Sản phẩm bao gồm:\":\" 2 lọ hoa, 3 bát hương, 3 chân đế gỗ bát hương, 3 chóe thờ, 2 mâm bồng, 1 kỷ 5 chén, 2 đèn dầu, 1 nậm 2 bầu, 1 ống hương  \",\"Hoạ tiết:\":\"  Họa tiết vẽ tay thủ công với đường nét siêu nhỏ chỉ có ở Bát Tràng\"}', '2022-11-07 18:01:53', '2022-11-07 18:01:53', NULL),
(30, '{\"Loại sản phẩm:\":\" Bộ đồ thờ cúng \",\"Màu sắc:\":\" Xanh ngọc \",\"Số món:\":\" 29 \",\"Sản phẩm bao gồm:\":\" 2 lọ hoa sen, 3 bát hương, 3 chân đễ gỗ bát hương, 3 chóe, 1 mâm bồng, 1 kỷ 3 ngai, 6 bát cúng, 1 nậm rượu, 2 đèn dầu S2, 1 ống hương 22cm, 2 chân nến S2, 1 bộ ấm chén thờ  \",\"Hoạ tiết:\":\"  Họa tiết vẽ tay thủ công với đường nét siêu nhỏ chỉ có ở Bát Tràng\"}', '2022-11-07 18:01:53', '2022-11-07 18:01:53', NULL),
(31, '{\"Loại sản phẩm:\":\" Bộ đồ thờ cúng \",\"Màu sắc:\":\" Trắng \",\"Số món:\":\" 21 \",\"Sản phẩm bao gồm:\":\"  3 Bát hương, 1 tam cấp gỗ hương, 2 lọ lộc bình, 2 lọ hoa, 2 ống hương, 2 bát nắp, 2 đĩa kê bát nắp, 5 chóe, 1 nậm rượu, 1 kỉ 5 ngai  \",\"Hoạ tiết:\":\"  Rồng và hoa sen được vẽ thủ công bằng tay 100%\"}', '2022-11-07 18:01:53', '2022-11-07 18:01:53', NULL),
(32, '{\"Loại sản phẩm:\":\" Bộ đồ thờ cúng \",\"Màu sắc:\":\" Trắng \",\"Số món:\":\" 12 \",\"Sản phẩm bao gồm:\":\"  1 lọ hoa, 1 bát hương, 1 chân đế gỗ, 1 đèn dầu, 1 nậm rượu 2 bầu S1, 1 ống hương 18cm, 1 kỷ ngai 3 chén, 1 mâm bồng, 2 chóe thờ \",\"Hoạ tiết:\":\"  Họa tiết vẽ tay thủ công với đường nét siêu nhỏ chỉ có ở Bát Tràng\"}', '2022-11-07 18:01:53', '2022-11-07 18:01:53', NULL),
(33, '{\"Loại sản phẩm:\":\" Bộ đồ thờ cúng \",\"Màu sắc:\":\" Trắng \",\"Số món:\":\" 11 \",\"Sản phẩm bao gồm:\":\" 1 đèn dầu thờ s2, 1 lọ lộc bình 26cm, 1 bát hương, 1 chân bát hương, 1 nậm rượu s3, 1 ống hương s3, 2 chóe s3, 1 kỷ cong 3 chén, 1 mâm bồng, 1 bộ ấm chén 3  \",\"Hoạ tiết:\":\"  Họa tiết rồng được nổi bật bởi kỹ thuật tỉa và đắp nổi bằng tay của các nghệ nhân, kèm theo đó mà màu men nổi bật rất bắt mắt\"}', '2022-11-07 18:01:53', '2022-11-07 18:01:53', NULL),
(34, '{\"Loại sản phẩm:\":\" Bộ đồ thờ cúng \",\"Màu sắc:\":\" Trắng \",\"Số món:\":\" 23 \",\"Sản phẩm bao gồm:\":\" 1 Bát hương, 1 chân bát hương, 3 Chóe S3 cao 16cm,  1 Mâm bồng, 1 Kỷ 3 ngai, 2 Bát sâm, 6 Bát cúng, 1 Ống hương S2, 1 Đèn S2, 2 Chân nến S2, 2 Lọ lộc bình 26, 2 Đĩa  \",\"Hoạ tiết:\":\"  Họa tiết rồng được nổi bật bởi kỹ thuật tỉa và đắp nổi bằng tay của các nghệ nhân, kèm theo đó mà màu men nổi bật rất bắt mắt\"}', '2022-11-07 18:01:53', '2022-11-07 18:01:53', NULL),
(35, '{\"Loại sản phẩm:\":\" Bộ đồ thờ cúng \",\"Màu sắc:\":\" Nâu \",\"Số món:\":\" 3 \",\"Sản phẩm bao gồm:\":\" 1 lư hương và 2 đỉnh hạc chân đồng  \",\"Hoạ tiết:\":\"  Rồng được tạo hình đắp nổi tỉ mỉ trau chuốt\"}', '2022-11-07 18:01:53', '2022-11-07 18:01:53', NULL),
(36, '{\"Loại sản phẩm:\":\" Bộ đồ thờ cúng \",\"Màu sắc:\":\" Nâu \",\"Số món:\":\" 19 \",\"Sản phẩm bao gồm:\":\" 2 lọ hoa, 3 bát hương, 3 chân bát hương, 3 chóe cao 16cm, 2 mâm bồng, 1 kỷ cong 5 chén, 2 đèn dầu, 2 nậm 2 bầu S3, 1 ống hương S2  \",\"Hoạ tiết:\":\"  Rồng được nổi bật trên nền men rạn qua ngòi bút tỉa thủ công bằng tay của các nghệ nhân làng gốm Bát Tràng\"}', '2022-11-07 18:01:53', '2022-11-07 18:01:53', NULL),
(37, '{\"Loại sản phẩm:\":\" Đèn dầu thờ \",\"Màu sắc:\":\" Vàng \",\"Số món:\":\" 4 \",\"Sản phẩm bao gồm:\":\" 2 đèn và 2 bóng đèn  \",\"Hoạ tiết:\":\"  Hoa sen\"}', '2022-11-07 18:01:53', '2022-11-07 18:01:53', NULL),
(38, '{\"Loại sản phẩm:\":\" Đèn dầu thờ \",\"Màu sắc:\":\" Vàng \",\"Số món:\":\" 4 \",\"Sản phẩm bao gồm:\":\" 2 đèn và 2 bóng đèn  \",\"Hoạ tiết:\":\"  Hoa sen\"}', '2022-11-07 18:01:53', '2022-11-07 18:01:53', NULL),
(39, '{\"Loại sản phẩm:\":\" Đèn dầu thờ \",\"Màu sắc:\":\" Vàng \",\"Số món:\":\" 4 \",\"Sản phẩm bao gồm:\":\" 2 đèn và 2 bóng đèn  \",\"Hoạ tiết:\":\"  Hoa sen\"}', '2022-11-07 18:01:53', '2022-11-07 18:01:53', NULL),
(40, '{\"Loại sản phẩm:\":\" Đèn dầu thờ \",\"Màu sắc:\":\" Vàng \",\"Số món:\":\" 4 \",\"Sản phẩm bao gồm:\":\" 2 đèn và 2 bóng đèn  \",\"Hoạ tiết:\":\"  Tứ quý cổ đồ\"}', '2022-11-07 18:01:53', '2022-11-07 18:01:53', NULL),
(41, '{\"Loại sản phẩm:\":\" Đèn dầu thờ \",\"Màu sắc:\":\" Vàng \",\"Số món:\":\" 4 \",\"Sản phẩm bao gồm:\":\" 2 đèn và 2 bóng đèn  \",\"Hoạ tiết:\":\"  Chữ nho\"}', '2022-11-07 18:01:53', '2022-11-07 18:01:53', NULL),
(42, '{\"Loại sản phẩm:\":\" Đèn dầu thờ \",\"Màu sắc:\":\" Vàng \",\"Số món:\":\" 4 \",\"Sản phẩm bao gồm:\":\" 2 đèn và 2 bóng đèn  \",\"Hoạ tiết:\":\"  Chữ Nho\"}', '2022-11-07 18:01:53', '2022-11-07 18:01:53', NULL),
(43, '{\"Loại sản phẩm:\":\" Đèn dầu thờ \",\"Màu sắc:\":\" Vàng \",\"Số món:\":\" 4 \",\"Sản phẩm bao gồm:\":\" 2 đèn và 2 bóng đèn  \",\"Hoạ tiết:\":\"  Đồng quê\"}', '2022-11-07 18:01:53', '2022-11-07 18:01:53', NULL),
(44, '{\"Loại sản phẩm:\":\" Đèn dầu thờ \",\"Màu sắc:\":\" Vàng \",\"Số món:\":\" 4 \",\"Sản phẩm bao gồm:\":\" 2 đèn và 2 bóng đèn  \",\"Hoạ tiết:\":\"  Chữ Hán\"}', '2022-11-07 18:01:53', '2022-11-07 18:01:53', NULL),
(45, '{\"Loại sản phẩm:\":\" Tách cafe \",\"Màu sắc:\":\" Vàng \",\"Số món:\":\" 4 \",\"Sản phẩm bao gồm:\":\" 2 tách, 2 đĩa kê, 2 thìa sứ \",\"Hoạ tiết:\":\"  Hoa dây\"}', '2022-11-07 18:01:53', '2022-11-07 18:01:53', NULL),
(46, '{\"Loại sản phẩm:\":\" Tách cafe \",\"Màu sắc:\":\" Vàng \",\"Số món:\":\" 4 \",\"Sản phẩm bao gồm:\":\" 2 tách, 2 đĩa kê, 2 thìa sứ \",\"Hoạ tiết:\":\"  Chuồn chuồn\"}', '2022-11-07 18:01:53', '2022-11-07 18:01:53', NULL),
(47, '{\"Loại sản phẩm:\":\" Tách cafe \",\"Màu sắc:\":\" Vàng \",\"Số món:\":\" 4 \",\"Sản phẩm bao gồm:\":\" 2 tách, 2 đĩa kê, 2 thìa sứ \",\"Hoạ tiết:\":\"  Cá đàn\"}', '2022-11-07 18:01:53', '2022-11-07 18:01:53', NULL),
(48, '{\"Loại sản phẩm:\":\" Tách cafe \",\"Màu sắc:\":\" Vàng \",\"Số món:\":\" 4 \",\"Sản phẩm bao gồm:\":\" 2 tách, 2 đĩa kê, 2 thìa sứ \",\"Hoạ tiết:\":\"  Chim hạc\"}', '2022-11-07 18:01:53', '2022-11-07 18:01:53', NULL),
(49, '{\"Loại sản phẩm:\":\" Tách cafe \",\"Màu sắc:\":\" Vàng \",\"Số món:\":\" 4 \",\"Sản phẩm bao gồm:\":\" 2 tách, 2 đĩa kê, 2 thìa sứ \",\"Hoạ tiết:\":\"  Cherry\"}', '2022-11-07 18:01:53', '2022-11-07 18:01:53', NULL),
(50, '{\"Loại sản phẩm:\":\" Tách cafe \",\"Màu sắc:\":\" Vàng \",\"Số món:\":\" 4 \",\"Sản phẩm bao gồm:\":\" 2 tách, 2 đĩa kê, 2 thìa sứ \",\"Hoạ tiết:\":\"  Cá 3 màu\"}', '2022-11-07 18:01:53', '2022-11-07 18:01:53', NULL),
(51, '{\"Loại sản phẩm:\":\" Tách cafe \",\"Màu sắc:\":\" Vàng \",\"Số món:\":\" 4 \",\"Sản phẩm bao gồm:\":\" 2 tách, 2 đĩa kê, 2 thìa sứ \",\"Hoạ tiết:\":\"  Cá xương\"}', '2022-11-07 18:01:53', '2022-11-07 18:01:53', NULL),
(52, '{\"Loại sản phẩm:\":\" Tách cafe \",\"Màu sắc:\":\" Vàng \",\"Số món:\":\" 4 \",\"Sản phẩm bao gồm:\":\" 2 tách, 2 đĩa kê, 2 thìa sứ \",\"Hoạ tiết:\":\"  Bồ công anh tím\"}', '2022-11-07 18:01:53', '2022-11-07 18:01:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_tag`
--

CREATE TABLE `product_tag` (
  `id` int(4) NOT NULL,
  `name` text NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_tag`
--

INSERT INTO `product_tag` (`id`, `name`, `description`, `created_at`, `modified_at`, `deleted_at`) VALUES
(1, 'Ấm chén bát tràng', NULL, '2022-10-24 00:38:23', '2022-10-24 00:38:23', NULL),
(2, 'Bình hút tài lộc', NULL, '2022-10-24 00:38:23', '2022-10-24 00:38:23', NULL),
(3, 'Tranh gốm sứ', NULL, '2022-10-24 00:38:23', '2022-10-24 00:38:23', NULL),
(4, 'Bộ đồ thờ cúng', NULL, '2022-10-24 00:38:23', '2022-10-24 00:38:23', NULL),
(5, 'Đèn dầu thờ', NULL, '2022-10-24 00:38:23', '2022-10-24 00:38:23', NULL),
(6, 'Cốc, tách', NULL, '2022-10-24 00:38:23', '2022-10-24 00:38:23', NULL),
(7, 'Gốm sứ gia dụng', NULL, '2022-10-24 00:46:07', '2022-10-24 00:46:26', NULL),
(8, 'Đồ thờ', NULL, '2022-10-24 00:46:07', '2022-10-24 00:46:26', NULL),
(9, 'Trang trí', NULL, '2022-10-24 00:46:07', '2022-10-24 00:46:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(4) NOT NULL,
  `username` varchar(256) NOT NULL,
  `password` text NOT NULL,
  `first_name` text DEFAULT NULL,
  `last_name` text DEFAULT NULL,
  `email_address` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `first_name`, `last_name`, `email_address`, `created_at`, `modified_at`, `deleted_at`) VALUES
(1, 'abc', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257', NULL, NULL, 'abc@xyz.com', '2022-11-06 16:14:58', '2022-11-06 16:14:58', NULL),
(2, 'user1', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257', 'Anh', 'Trần Quốc', 'anh66829@gmail.com', '2023-05-31 16:21:27', '2023-05-31 16:21:27', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `merchant`
--
ALTER TABLE `merchant`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `IDX_username` (`username`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_Order_items_Product_order` (`order_id`),
  ADD KEY `FK_Order_items_Product` (`product_id`),
  ADD KEY `FK_Order_items_Merchant` (`merchant_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_Product_Product_specs` (`specs_id`),
  ADD KEY `FK_Product_Merchant` (`merchant_id`);

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
-- Indexes for table `product_order`
--
ALTER TABLE `product_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_Product_order_User` (`user_id`);

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
-- AUTO_INCREMENT for table `merchant`
--
ALTER TABLE `merchant`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
-- AUTO_INCREMENT for table `product_order`
--
ALTER TABLE `product_order`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `FK_Order_items_Merchant` FOREIGN KEY (`merchant_id`) REFERENCES `merchant` (`id`),
  ADD CONSTRAINT `FK_Order_items_Product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `FK_Order_items_Product_order` FOREIGN KEY (`order_id`) REFERENCES `product_order` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_Product_Merchant` FOREIGN KEY (`merchant_id`) REFERENCES `merchant` (`id`),
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

--
-- Constraints for table `product_order`
--
ALTER TABLE `product_order`
  ADD CONSTRAINT `FK_Product_order_User` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
