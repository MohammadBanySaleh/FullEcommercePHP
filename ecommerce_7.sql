-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 20, 2023 at 07:12 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `brand` int(11) NOT NULL,
  `Brand_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brand`, `Brand_name`) VALUES
(1, 'BMW'),
(2, 'VOLVO'),
(3, 'TOYOTA'),
(7, 'bmw');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `quantity_cart` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `product_id`, `user_id`, `quantity_cart`) VALUES
(145, 11, 1, 49);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_img` varchar(255) NOT NULL,
  `category_des` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `category_img`, `category_des`) VALUES
(1, 'Brack & Rotors', 'brack.PNG', 'dgdfgfxg'),
(2, 'Interior', 'brack.PNG', ''),
(3, 'Lighting', 'brack.PNG', ''),
(4, 'Suspension Systems ', '', ''),
(5, 'Wheels & Tires', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `con_name` varchar(255) NOT NULL,
  `con_email` varchar(255) NOT NULL,
  `con_subject` varchar(255) NOT NULL,
  `con_message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `con_name`, `con_email`, `con_subject`, `con_message`) VALUES
(0, 'Razan Mohammad Khaleel Mustafa', 'razanmustafa8@gmail.com', 'pro', 'hellooooo');

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE `discount` (
  `id` int(11) NOT NULL,
  `discount_code` varchar(255) NOT NULL,
  `discount_persent` float NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(10) NOT NULL,
  `sub_total` float NOT NULL,
  `total` float NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `recipient_name` varchar(100) NOT NULL,
  `Phone` int(20) NOT NULL,
  `city` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `product_id`, `user_id`, `address`, `sub_total`, `total`, `date`, `recipient_name`, `Phone`, `city`) VALUES
(1, 12, 1, '', 0, 0, '2023-08-17 19:58:55', '', 0, ''),
(2, 0, 0, '', 0, 0, '2023-08-18 21:06:48', 's', 0, ''),
(3, 0, 0, '', 0, 0, '2023-08-18 21:06:52', 's', 0, ''),
(4, 11, 1, 'kk', 2000, 1000, '2023-08-18 21:21:14', 'Razan Mustafa', 799999999, 'Amman'),
(5, 13, 1, 'kk', 2000, 1000, '2023-08-18 21:21:14', 'Razan Mustafa', 799999999, 'Amman'),
(6, 12, 1, 'kk', 2000, 1000, '2023-08-18 21:21:14', 'Razan Mustafa', 799999999, 'Amman'),
(7, 15, 1, 'kk', 2000, 1000, '2023-08-18 21:21:14', 'Razan Mustafa', 799999999, 'Amman'),
(8, 11, 1, 'kk', 2000, 1000, '2023-08-18 21:21:14', 'Razan Mustafa', 799999999, 'Amman'),
(9, 11, 1, 'kk', 2000, 1000, '2023-08-18 21:21:14', 'Razan Mustafa', 799999999, 'Amman'),
(10, 11, 1, 'kk', 2000, 1000, '2023-08-18 21:21:14', 'Razan Mustafa', 799999999, 'Amman'),
(11, 11, 1, 'kk', 2000, 1000, '2023-08-18 21:21:14', 'Razan Mustafa', 799999999, 'Amman'),
(12, 11, 1, 'kk', 2000, 1000, '2023-08-18 21:21:14', 'Razan Mustafa', 799999999, 'Amman'),
(13, 11, 1, 'kk', 2000, 1000, '2023-08-18 21:21:14', 'Razan Mustafa', 799999999, 'Amman'),
(14, 11, 1, 'kk', 2000, 1000, '2023-08-18 21:21:14', 'Razan Mustafa', 799999999, 'Amman'),
(15, 11, 1, 'kk', 2000, 1000, '2023-08-18 21:21:14', 'Razan Mustafa', 799999999, 'Amman'),
(16, 11, 1, 'kk', 2000, 1000, '2023-08-18 21:21:14', 'Razan Mustafa', 799999999, 'Amman'),
(17, 11, 1, 'kk', 2000, 1000, '2023-08-18 21:21:14', 'Razan Mustafa', 799999999, 'Amman'),
(18, 11, 1, 'kk', 2000, 1000, '2023-08-18 21:21:14', 'Razan Mustafa', 799999999, 'Amman'),
(19, 11, 1, 'hgb', 2000, 1000, '2023-08-18 21:21:26', 'Razan Mustafa', 799999999, 'Amman'),
(20, 13, 1, 'hgb', 2000, 1000, '2023-08-18 21:21:26', 'Razan Mustafa', 799999999, 'Amman'),
(21, 12, 1, 'hgb', 2000, 1000, '2023-08-18 21:21:26', 'Razan Mustafa', 799999999, 'Amman'),
(22, 15, 1, 'hgb', 2000, 1000, '2023-08-18 21:21:26', 'Razan Mustafa', 799999999, 'Amman'),
(23, 11, 1, 'hgb', 2000, 1000, '2023-08-18 21:21:26', 'Razan Mustafa', 799999999, 'Amman'),
(24, 11, 1, 'hgb', 2000, 1000, '2023-08-18 21:21:26', 'Razan Mustafa', 799999999, 'Amman'),
(25, 11, 1, 'hgb', 2000, 1000, '2023-08-18 21:21:26', 'Razan Mustafa', 799999999, 'Amman'),
(26, 11, 1, 'hgb', 2000, 1000, '2023-08-18 21:21:26', 'Razan Mustafa', 799999999, 'Amman'),
(27, 11, 1, 'hgb', 2000, 1000, '2023-08-18 21:21:26', 'Razan Mustafa', 799999999, 'Amman'),
(28, 11, 1, 'hgb', 2000, 1000, '2023-08-18 21:21:26', 'Razan Mustafa', 799999999, 'Amman'),
(29, 11, 1, 'hgb', 2000, 1000, '2023-08-18 21:21:26', 'Razan Mustafa', 799999999, 'Amman'),
(30, 11, 1, 'hgb', 2000, 1000, '2023-08-18 21:21:26', 'Razan Mustafa', 799999999, 'Amman'),
(31, 11, 1, 'hgb', 2000, 1000, '2023-08-18 21:21:26', 'Razan Mustafa', 799999999, 'Amman'),
(32, 11, 1, 'hgb', 2000, 1000, '2023-08-18 21:21:26', 'Razan Mustafa', 799999999, 'Amman'),
(33, 11, 1, 'hgb', 2000, 1000, '2023-08-18 21:21:26', 'Razan Mustafa', 799999999, 'Amman'),
(34, 11, 1, 'qqq', 2000, 1000, '2023-08-18 22:02:13', 'Razan Mustafa', 799999999, 'Amman'),
(35, 13, 1, 'qqq', 2000, 1000, '2023-08-18 22:02:13', 'Razan Mustafa', 799999999, 'Amman'),
(36, 12, 1, 'qqq', 2000, 1000, '2023-08-18 22:02:13', 'Razan Mustafa', 799999999, 'Amman'),
(37, 15, 1, 'qqq', 2000, 1000, '2023-08-18 22:02:13', 'Razan Mustafa', 799999999, 'Amman'),
(38, 11, 1, 'qqq', 2000, 1000, '2023-08-18 22:02:13', 'Razan Mustafa', 799999999, 'Amman'),
(39, 11, 1, 'qqq', 2000, 1000, '2023-08-18 22:02:13', 'Razan Mustafa', 799999999, 'Amman'),
(40, 11, 1, 'cccw', 2000, 1000, '2023-08-18 22:27:41', 'Razan Mustafa', 799999999, 'Amman'),
(41, 11, 1, 'amman', 2000, 1000, '2023-08-19 08:36:03', 'Razan Mustafa', 799999999, 'Irbid'),
(42, 11, 1, 'ddd', 2000, 1000, '2023-08-19 08:38:19', 'Razan Mustafa nnnnnn', 799999999, 'Amman'),
(43, 11, 1, 'aqapa', 2000, 1000, '2023-08-19 08:39:40', 'hassan', 799999999, 'Irbid'),
(44, 11, 1, 'amman', 2000, 1000, '2023-08-19 08:39:49', 'Razan Mustafaww', 799999999, 'Irbid'),
(45, 11, 1, 'amman', 2000, 1000, '2023-08-19 08:41:49', 'Razan Mustafaww', 799999999, 'Irbid'),
(46, 11, 1, 'amman', 2000, 1000, '2023-08-19 08:41:49', 'Razan Mustafaww', 799999999, 'Irbid'),
(47, 11, 1, 'amman', 2000, 1000, '2023-08-19 08:42:00', 'hassan', 799999999, 'Irbid'),
(48, 11, 1, 'amman', 2000, 1000, '2023-08-19 08:42:00', 'hassan', 799999999, 'Irbid'),
(49, 11, 1, 'amman', 2000, 1000, '2023-08-19 08:43:10', 'qqqqq', 799999999, 'Irbid'),
(50, 11, 1, 'amman', 2000, 1000, '2023-08-19 08:43:10', 'qqqqq', 799999999, 'Irbid'),
(51, 11, 1, 'amman', 2000, 1000, '2023-08-19 08:47:50', 'qqqqq', 799999999, 'Irbid'),
(52, 11, 1, 'amman', 2000, 1000, '2023-08-19 08:53:05', 'mohammad', 799999999, 'Irbid'),
(53, 11, 1, 'amman', 2000, 1000, '2023-08-19 08:53:05', 'mohammad', 799999999, 'Irbid'),
(54, 11, 1, 'amman', 2000, 1000, '2023-08-19 08:53:05', 'mohammad', 799999999, 'Irbid'),
(55, 11, 1, 'amman', 2000, 1000, '2023-08-19 08:53:16', 'a', 799999999, 'Irbid'),
(56, 11, 1, 'amman', 2000, 1000, '2023-08-19 08:53:16', 'a', 799999999, 'Irbid'),
(57, 11, 1, 'amman', 2000, 1000, '2023-08-19 08:53:16', 'a', 799999999, 'Irbid'),
(58, 11, 1, 'amman', 2000, 1000, '2023-08-19 08:56:47', 'a', 799999999, 'Irbid'),
(59, 11, 1, 'amman', 2000, 1000, '2023-08-19 08:56:47', 'a', 799999999, 'Irbid'),
(60, 11, 1, 'amman', 2000, 1000, '2023-08-19 08:56:47', 'a', 799999999, 'Irbid'),
(61, 11, 1, 'amman', 2000, 1000, '2023-08-19 08:57:16', 'a', 799999999, 'Irbid'),
(62, 11, 1, 'amman', 2000, 1000, '2023-08-19 08:57:16', 'a', 799999999, 'Irbid'),
(63, 11, 1, 'amman', 2000, 1000, '2023-08-19 08:57:16', 'a', 799999999, 'Irbid'),
(64, 11, 1, 'amman', 2000, 1000, '2023-08-19 08:57:26', 'hassan', 799999999, 'Irbid'),
(65, 11, 1, 'amman', 2000, 1000, '2023-08-19 08:57:26', 'hassan', 799999999, 'Irbid'),
(66, 11, 1, 'amman', 2000, 1000, '2023-08-19 08:57:26', 'hassan', 799999999, 'Irbid'),
(67, 11, 1, 'amman', 2000, 1000, '2023-08-19 08:57:57', 'qsssss', 799999999, 'Irbid'),
(68, 11, 1, 'amman', 2000, 1000, '2023-08-19 08:57:57', 'qsssss', 799999999, 'Irbid'),
(69, 11, 1, 'amman', 2000, 1000, '2023-08-19 08:57:57', 'qsssss', 799999999, 'Irbid'),
(70, 11, 1, 'amman', 2000, 1000, '2023-08-19 08:59:19', 'wqwqwqw', 799999999, 'Irbid'),
(71, 11, 1, 'amman', 2000, 1000, '2023-08-19 08:59:19', 'wqwqwqw', 799999999, 'Irbid'),
(72, 11, 1, 'amman', 2000, 1000, '2023-08-19 08:59:19', 'wqwqwqw', 799999999, 'Irbid'),
(73, 11, 1, 'amman', 2000, 1000, '2023-08-19 08:59:57', 'asasas', 799999999, 'Irbid'),
(74, 11, 1, 'amman', 2000, 1000, '2023-08-19 08:59:57', 'asasas', 799999999, 'Irbid'),
(75, 11, 1, 'amman', 2000, 1000, '2023-08-19 08:59:57', 'asasas', 799999999, 'Irbid'),
(76, 11, 1, 'amman', 2000, 1000, '2023-08-19 09:04:46', 'hassan alajlouni', 799999999, 'Irbid'),
(77, 11, 1, 'amman', 2000, 1000, '2023-08-19 09:04:46', 'hassan alajlouni', 799999999, 'Irbid'),
(78, 11, 1, 'amman', 2000, 1000, '2023-08-19 09:04:46', 'hassan alajlouni', 799999999, 'Irbid'),
(79, 11, 1, 'amman', 2000, 1000, '2023-08-19 09:04:46', 'hassan alajlouni', 799999999, 'Irbid'),
(80, 11, 1, 'amman', 2000, 1000, '2023-08-19 09:04:46', 'hassan alajlouni', 799999999, 'Irbid'),
(81, 11, 1, 'amman', 2000, 1000, '2023-08-19 09:04:46', 'hassan alajlouni', 799999999, 'Irbid'),
(82, 11, 1, 'amman', 2000, 1000, '2023-08-19 09:04:46', 'hassan alajlouni', 799999999, 'Irbid'),
(83, 11, 1, 'amman', 2000, 1000, '2023-08-19 09:04:46', 'hassan alajlouni', 799999999, 'Irbid'),
(84, 11, 1, 'amman', 2000, 1000, '2023-08-19 11:28:37', 'Razan Mustafa', 799999999, 'Irbid'),
(85, 11, 1, 'amman', 2000, 1000, '2023-08-19 11:28:37', 'Razan Mustafa', 799999999, 'Irbid'),
(86, 11, 1, 'amman', 2000, 1000, '2023-08-19 11:28:37', 'Razan Mustafa', 799999999, 'Irbid'),
(87, 11, 1, 'amman', 2000, 1000, '2023-08-19 11:28:37', 'Razan Mustafa', 799999999, 'Irbid'),
(88, 11, 1, 'amman', 2000, 1000, '2023-08-19 11:28:37', 'Razan Mustafa', 799999999, 'Irbid'),
(89, 12, 1, 'amman', 2000, 1000, '2023-08-19 11:28:37', 'Razan Mustafa', 799999999, 'Irbid'),
(90, 12, 1, 'amman', 2000, 1000, '2023-08-19 11:28:37', 'Razan Mustafa', 799999999, 'Irbid'),
(91, 12, 1, 'amman', 2000, 1000, '2023-08-19 11:28:37', 'Razan Mustafa', 799999999, 'Irbid'),
(92, 12, 1, 'amman', 2000, 1000, '2023-08-19 11:28:37', 'Razan Mustafa', 799999999, 'Irbid'),
(93, 12, 1, 'amman', 2000, 1000, '2023-08-19 11:28:37', 'Razan Mustafa', 799999999, 'Irbid'),
(94, 12, 1, 'amman', 2000, 1000, '2023-08-19 11:28:37', 'Razan Mustafa', 799999999, 'Irbid'),
(95, 12, 1, 'amman', 2000, 1000, '2023-08-19 11:28:37', 'Razan Mustafa', 799999999, 'Irbid'),
(96, 12, 1, 'amman', 2000, 1000, '2023-08-19 11:28:37', 'Razan Mustafa', 799999999, 'Irbid'),
(97, 12, 1, 'amman', 2000, 1000, '2023-08-19 11:28:37', 'Razan Mustafa', 799999999, 'Irbid'),
(98, 12, 1, 'amman', 2000, 1000, '2023-08-19 11:28:37', 'Razan Mustafa', 799999999, 'Irbid'),
(99, 12, 1, 'amman', 2000, 1000, '2023-08-19 11:28:37', 'Razan Mustafa', 799999999, 'Irbid'),
(100, 12, 1, 'amman', 2000, 1000, '2023-08-19 11:28:37', 'Razan Mustafa', 799999999, 'Irbid'),
(101, 12, 1, 'amman', 2000, 1000, '2023-08-19 11:28:37', 'Razan Mustafa', 799999999, 'Irbid'),
(102, 12, 1, 'amman', 2000, 1000, '2023-08-19 11:28:37', 'Razan Mustafa', 799999999, 'Irbid'),
(103, 12, 1, 'amman', 2000, 1000, '2023-08-19 11:28:37', 'Razan Mustafa', 799999999, 'Irbid'),
(104, 12, 1, 'amman', 2000, 1000, '2023-08-19 11:28:37', 'Razan Mustafa', 799999999, 'Irbid'),
(105, 12, 1, 'amman', 2000, 1000, '2023-08-19 11:28:37', 'Razan Mustafa', 799999999, 'Irbid'),
(106, 13, 1, 'amman', 2000, 1000, '2023-08-19 11:28:37', 'Razan Mustafa', 799999999, 'Irbid'),
(107, 13, 1, 'amman', 2000, 1000, '2023-08-19 11:28:37', 'Razan Mustafa', 799999999, 'Irbid'),
(108, 13, 1, 'amman', 2000, 1000, '2023-08-19 11:28:37', 'Razan Mustafa', 799999999, 'Irbid'),
(109, 11, 1, 'amman', 2000, 1000, '2023-08-19 11:28:37', 'Razan Mustafa', 799999999, 'Irbid'),
(110, 11, 1, 'amman', 2000, 1000, '2023-08-19 11:28:37', 'Razan Mustafa', 799999999, 'Irbid'),
(111, 11, 1, 'amman', 2000, 1000, '2023-08-19 11:28:37', 'Razan Mustafa', 799999999, 'Irbid'),
(112, 11, 1, 'amman', 2000, 1000, '2023-08-19 11:28:37', 'Razan Mustafa', 799999999, 'Irbid'),
(113, 11, 1, 'amman', 2000, 1000, '2023-08-19 11:28:37', 'Razan Mustafa', 799999999, 'Irbid'),
(114, 11, 1, 'amman', 2000, 1000, '2023-08-19 11:28:37', 'Razan Mustafa', 799999999, 'Irbid'),
(115, 11, 1, 'amman', 2000, 1000, '2023-08-19 11:28:37', 'Razan Mustafa', 799999999, 'Irbid'),
(116, 11, 1, 'amman', 2000, 1000, '2023-08-19 11:28:37', 'Razan Mustafa', 799999999, 'Irbid'),
(117, 11, 1, 'amman', 2000, 1000, '2023-08-19 11:28:37', 'Razan Mustafa', 799999999, 'Irbid'),
(118, 11, 1, 'amman', 2000, 1000, '2023-08-19 11:28:37', 'Razan Mustafa', 799999999, 'Irbid'),
(119, 11, 1, 'amman', 2000, 1000, '2023-08-19 11:28:37', 'Razan Mustafa', 799999999, 'Irbid'),
(120, 11, 1, 'amman', 2000, 1000, '2023-08-19 11:28:37', 'Razan Mustafa', 799999999, 'Irbid'),
(121, 11, 1, 'amman', 2000, 1000, '2023-08-19 13:15:39', 'Razan Mustafa', 799999999, 'Irbid'),
(122, 13, 1, 'amman', 2000, 1000, '2023-08-19 13:15:39', 'Razan Mustafa', 799999999, 'Irbid'),
(123, 15, 1, 'amman', 2000, 1000, '2023-08-19 13:15:39', 'Razan Mustafa', 799999999, 'Irbid'),
(124, 11, 1, 'amman', 2000, 1000, '2023-08-19 13:15:39', 'Razan Mustafa', 799999999, 'Irbid'),
(125, 11, 1, 'amman', 2000, 1000, '2023-08-19 13:15:39', 'Razan Mustafa', 799999999, 'Irbid'),
(126, 11, 1, 'amman', 2000, 1000, '2023-08-19 13:15:39', 'Razan Mustafa', 799999999, 'Irbid'),
(127, 11, 1, 'amman', 2000, 1000, '2023-08-19 13:15:39', 'Razan Mustafa', 799999999, 'Irbid'),
(128, 11, 1, 'amman', 2000, 1000, '2023-08-19 13:15:39', 'Razan Mustafa', 799999999, 'Irbid'),
(129, 11, 1, 'amman', 2000, 1000, '2023-08-19 13:15:39', 'Razan Mustafa', 799999999, 'Irbid'),
(130, 11, 1, 'amman', 2000, 1000, '2023-08-19 13:15:39', 'Razan Mustafa', 799999999, 'Irbid'),
(131, 11, 1, 'amman', 2000, 1000, '2023-08-19 13:15:39', 'Razan Mustafa', 799999999, 'Irbid'),
(132, 11, 1, 'amman', 2000, 1000, '2023-08-19 13:15:39', 'Razan Mustafa', 799999999, 'Irbid'),
(133, 11, 1, 'amman', 2000, 1000, '2023-08-19 13:15:39', 'Razan Mustafa', 799999999, 'Irbid'),
(134, 11, 1, 'amman', 2000, 1000, '2023-08-19 13:15:39', 'Razan Mustafa', 799999999, 'Irbid'),
(135, 11, 1, 'amman', 2000, 1000, '2023-08-19 13:15:39', 'Razan Mustafa', 799999999, 'Irbid'),
(136, 11, 1, 'amman', 2000, 1000, '2023-08-19 13:15:39', 'Razan Mustafa', 799999999, 'Irbid'),
(137, 11, 1, 'amman', 2000, 1000, '2023-08-19 13:15:39', 'Razan Mustafa', 799999999, 'Irbid'),
(138, 11, 1, 'amman', 2000, 1000, '2023-08-19 13:15:39', 'Razan Mustafa', 799999999, 'Irbid'),
(139, 11, 1, 'amman', 2000, 1000, '2023-08-19 13:15:39', 'Razan Mustafa', 799999999, 'Irbid'),
(140, 11, 1, 'amman', 2000, 1000, '2023-08-19 13:15:39', 'Razan Mustafa', 799999999, 'Irbid'),
(141, 11, 1, 'amman', 2000, 1000, '2023-08-19 13:15:39', 'Razan Mustafa', 799999999, 'Irbid'),
(142, 11, 1, 'amman', 2000, 1000, '2023-08-19 13:15:39', 'Razan Mustafa', 799999999, 'Irbid'),
(143, 11, 1, 'amman', 2000, 1000, '2023-08-19 13:15:39', 'Razan Mustafa', 799999999, 'Irbid'),
(144, 11, 1, 'amman', 2000, 1000, '2023-08-19 15:59:16', 'Razan Mustafa', 799999999, 'Irbid'),
(145, 13, 1, 'amman', 2000, 1000, '2023-08-19 15:59:16', 'Razan Mustafa', 799999999, 'Irbid'),
(146, 14, 1, 'amman', 2000, 1000, '2023-08-19 15:59:16', 'Razan Mustafa', 799999999, 'Irbid'),
(147, 22, 1, 'amman', 2000, 1000, '2023-08-19 15:59:16', 'Razan Mustafa', 799999999, 'Irbid'),
(148, 25, 1, 'amman', 2000, 1000, '2023-08-19 15:59:16', 'Razan Mustafa', 799999999, 'Irbid'),
(149, 15, 1, 'amman', 2000, 1000, '2023-08-19 15:59:16', 'Razan Mustafa', 799999999, 'Irbid'),
(150, 18, 1, 'amman', 2000, 1000, '2023-08-19 15:59:16', 'Razan Mustafa', 799999999, 'Irbid'),
(151, 20, 1, 'amman', 2000, 1000, '2023-08-19 15:59:16', 'Razan Mustafa', 799999999, 'Irbid'),
(152, 11, 1, 'hh', 2000, 1000, '2023-08-19 16:58:47', 'Razan Mustafa', 799999999, 'Amman'),
(153, 11, 1, 'irdfgh', 2000, 1000, '2023-08-20 12:40:20', 'Razan Mustafa', 799999999, 'Amman'),
(154, 12, 1, 'irdfgh', 2000, 1000, '2023-08-20 12:40:20', 'Razan Mustafa', 799999999, 'Amman'),
(155, 14, 1, 'irdfgh', 2000, 1000, '2023-08-20 12:40:20', 'Razan Mustafa', 799999999, 'Amman');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_price` double DEFAULT NULL,
  `product_brife` varchar(255) DEFAULT NULL,
  `product_des` varchar(255) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `quantity_product` int(11) NOT NULL,
  `product_img1` varchar(255) NOT NULL,
  `product_img2` varchar(255) NOT NULL,
  `product_img3` varchar(255) NOT NULL,
  `product_img4` varchar(255) NOT NULL,
  `id_brand` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_name`, `product_price`, `product_brife`, `product_des`, `category_id`, `quantity_product`, `product_img1`, `product_img2`, `product_img3`, `product_img4`, `id_brand`) VALUES
(11, 'brack1', 23, 'Lorem Ipsum is simply dummy', 'Lorem Ipsum is simply dummy', 1, 23, 'brack.PNG', 'light.PNG', 'https://m.media-amazon.com/images/I/6105DBGtKrL.jpg', 'https://m.media-amazon.com/images/I/6105DBGtKrL.jpg', 1),
(12, 'brack2', 100, 'Lorem Ipsum is simply dummy', 'Lorem Ipsum is simply dummy', 1, 34, 'brack.PNG', 'light.PNG', 'https://m.media-amazon.com/images/I/6105DBGtKrL.jpg', 'https://m.media-amazon.com/images/I/6105DBGtKrL.jpg', 2),
(13, 'brack3', 34, 'Lorem Ipsum is simply dummy', NULL, 1, 34, 'brack.PNG', 'light.PNG', 'https://m.media-amazon.com/images/I/6105DBGtKrL.jpg', 'https://m.media-amazon.com/images/I/6105DBGtKrL.jpg', 3),
(14, 'intr1', 32, 'Lorem Ipsum is simply dummy', 'Lorem Ipsum is simply dummy', 1, 45, 'https://m.media-amazon.com/images/I/6105DBGtKrL.jpg', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzRKOnwVbGndhC6tJofBhtHoYWt2unY0S5x4FQbN_oWdHntMzWWGudov-B0875_lFrD6k&usqp=CAU', 'https://m.media-amazon.com/images/I/6105DBGtKrL.jpg', 'https://m.media-amazon.com/images/I/6105DBGtKrL.jpg', 1),
(15, 'inter2', 34, 'Lorem Ipsum is simply dummy', 'Lorem Ipsum is simply dummy', 1, 47, 'https://m.media-amazon.com/images/I/6105DBGtKrL.jpg', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzRKOnwVbGndhC6tJofBhtHoYWt2unY0S5x4FQbN_oWdHntMzWWGudov-B0875_lFrD6k&usqp=CAU', 'https://m.media-amazon.com/images/I/6105DBGtKrL.jpg', 'https://m.media-amazon.com/images/I/6105DBGtKrL.jpg', 2),
(17, 'inter3', 200, NULL, NULL, 1, 0, '', '', '', '', 3),
(18, 'sus 1', 300, NULL, NULL, 1, 0, '', '', '', '', 2),
(19, NULL, 1, NULL, NULL, 1, 0, '', '', '', '', 1),
(20, NULL, 1, NULL, NULL, 1, 1, '', '', '', '', 2),
(21, NULL, 1, NULL, NULL, 1, 0, '', '', '', '', 1),
(22, NULL, 1, NULL, NULL, 1, 1, '', '', '', '', 2),
(24, NULL, NULL, NULL, NULL, 1, 0, '', '', '', '', 3),
(25, NULL, 1, NULL, NULL, 1, 1, '', '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `review` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `review_date` varchar(20) NOT NULL,
  `userName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `review`, `product_id`, `user_id`, `review_date`, `userName`) VALUES
(1, 'vfcnclksdnclsknls', 11, 1, '0000-00-00', '0'),
(3, 'rgfds', 11, 1, '0000-00-00', '0'),
(4, 'revklnflekwn', 11, 1, '0000-00-00', '0'),
(5, 'kljbhfg', 11, 1, '2023-08-17', '0'),
(6, 'qqqqqqqqqqqqq', 11, 1, '2023-08-17', '0'),
(7, 'qqqqqqqqqqqqq', 11, 1, '2023-08-17', '0'),
(8, 'qqqqqqqqqqqqq', 11, 1, '2023-08-17', '0'),
(9, 'hcgvjhbknlm', 11, 1, '2023-08-17', '0'),
(10, 'hcgvjhbknlm', 11, 1, '2023-08-17', '0'),
(11, 'rrrrrrrrrrrr', 11, 1, '2023-08-17', '0'),
(12, 'rrrrrrrrrrrr', 11, 1, '2023-08-17', '0'),
(13, 'rrrrrrrrrrrr', 11, 1, '2023-08-17', '0'),
(14, 'kojihugyjhkjlk;', 11, 1, '2023-08-17', '0'),
(15, 'kojihugyjhkjlk;', 11, 1, '2023-08-17', 'razan mustafa'),
(16, 'rrrrrrrrrrrrrrrrrrrrrrrrrr', 11, 1, '2023-08-17', 'razan mustafa'),
(17, 'rrrrrrrrrrrrrrrrrrrrrrrrrr', 11, 1, '2023-08-17', 'razan mustafa'),
(18, 'rrrrrrrrrrrrrrrrrrrrrrrrrr', 11, 1, '2023-08-17', 'razan mustafa'),
(19, 'rrrrrrrrrrrrrrrrrrrrrrrrrr', 11, 1, '2023-08-17', 'razan mustafa'),
(20, 'rrrrrrrrrrrrrrrrrrrrrrrrrr', 11, 1, '2023-08-17', 'razan mustafa'),
(21, 'rrrrrrrrrrrrrrrrrrrrrrrrrr', 11, 1, '2023-08-17', 'razan mustafa'),
(22, 'rrrrrrrrrrrrrrrrrrrrrrrrrr', 11, 1, '2023-08-17', 'razan mustafa'),
(23, 'rrrrrrrrrrrrrrrrrrrrrrrrrr', 11, 1, '2023-08-17', 'razan mustafa'),
(24, 'rrrrrrrrrrrrrrrrrrrrrrrrrr', 11, 1, '2023-08-17', 'razan mustafa'),
(25, 'rrrrrrrrrrrrrrrrrrrrrrrrrr', 11, 1, '2023-08-17', 'razan mustafa'),
(26, 'rrrrrrrrrrrrrrrrrrrrrrrrrr', 11, 1, '2023-08-17', 'razan mustafa'),
(27, 'rrrrrrrrrrrrrrrrrrrrrrrrrr', 11, 1, '2023-08-17', 'razan mustafa'),
(28, 'rrrrrrrrrrrrrrrrrrrrrrrrrr', 11, 1, '2023-08-17', 'razan mustafa'),
(29, 'razan', 11, 1, '2023-08-20', 'razan mustafa'),
(30, 'razan', 11, 1, '2023-08-20', 'razan mustafa'),
(31, 'swassn', 11, 1, '2023-08-20', 'razan mustafa'),
(32, 'swassn', 11, 1, '2023-08-20', 'razan mustafa'),
(33, 'swassn', 11, 1, '2023-08-20', 'razan mustafa'),
(34, 'qwqwqw', 11, 1, '2023-08-20', 'razan mustafa'),
(35, '', 11, 1, '2023-08-20', 'razan mustafa'),
(36, '', 11, 1, '2023-08-20', 'razan mustafa'),
(37, 'dsadsa', 11, 1, '2023-08-20', 'razan mustafa'),
(38, 'dsadsa', 11, 1, '2023-08-20', 'razan mustafa'),
(39, 'dsadsa', 11, 1, '2023-08-20', 'razan mustafa'),
(40, 'sadsad', 11, 1, '2023-08-20', 'razan mustafa'),
(41, 'sadsad', 11, 1, '2023-08-20', 'razan mustafa'),
(42, 'wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww', 11, 1, '2023-08-20', 'razan mustafa'),
(43, 'sasasasasasasasa', 11, 1, '2023-08-20', 'razan mustafa'),
(44, 'sasasasasasasasa', 11, 1, '2023-08-20', 'razan mustafa'),
(45, 'wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww', 11, 1, '2023-08-20', 'razan mustafa'),
(46, 'dzfz', 11, 1, '2023-08-20', 'razan mustafa'),
(47, 'dzfz', 11, 1, '2023-08-20', 'razan mustafa'),
(48, '', 11, 1, '2023-08-20', 'razan mustafa'),
(49, '', 11, 1, '2023-08-20', 'razan mustafa'),
(50, '', 11, 1, '2023-08-20', 'razan mustafa'),
(51, '', 11, 1, '2023-08-20', 'razan mustafa'),
(52, '', 11, 1, '2023-08-20', 'razan mustafa'),
(53, 'dfgtsdfgd', 11, 1, '2023-08-20', 'razan mustafa'),
(54, 'sadsadad', 11, 1, '2023-08-20', 'razan mustafa'),
(55, 'sadsadad', 11, 1, '2023-08-20', 'razan mustafa');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `role` int(11) NOT NULL,
  `reset_token` varchar(255) NOT NULL,
  `exp_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `email`, `password`, `image`, `role`, `reset_token`, `exp_date`) VALUES
(1, 'razan', 'mustafa', '', '', '', 0, '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`,`user_id`) USING BTREE,
  ADD KEY `user_id` (`user_id`) USING BTREE;

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`) USING BTREE,
  ADD KEY `id_brand` (`id_brand`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`,`user_id`) USING BTREE;

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `brand` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `discount`
--
ALTER TABLE `discount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`id_brand`) REFERENCES `brand` (`brand`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
