-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2024 at 02:14 PM
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
-- Database: `graceful`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `delivery_method` enum('pickup','delivery') NOT NULL DEFAULT 'pickup',
  `pickup_location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `total_amount`, `order_date`, `status`, `delivery_method`, `pickup_location`) VALUES
(22, 5, 4000.00, '2024-11-22 23:56:57', 'pending', 'pickup', '123 Main St, Storefront Location'),
(23, 1, 123.00, '2024-11-23 00:55:45', 'pending', 'pickup', '123 Main St, Storefront Location'),
(24, 1, 2000.00, '2024-11-23 01:00:36', 'pending', 'pickup', '123 Main St, Storefront Location'),
(25, 1, 2000.00, '2024-11-23 01:44:39', 'pending', 'pickup', '123 Main St, Storefront Location'),
(27, 1, 10005.00, '2024-11-23 13:26:59', 'pending', 'delivery', NULL),
(28, 1, 2000.00, '2024-11-23 15:43:32', 'pending', 'pickup', '123 Main St, Storefront Location'),
(29, 1, 6000.00, '2024-11-23 17:29:11', 'pending', 'pickup', '123 Main St, Storefront Location'),
(30, 1, 4100.00, '2024-11-23 18:00:36', 'pending', 'pickup', '123 Main St, Storefront Location'),
(31, 5, 2100.00, '2024-11-23 20:40:46', 'pending', 'pickup', '123 Main St, Storefront Location'),
(32, 1, 14413.00, '2024-11-23 21:09:02', 'pending', 'pickup', '123 Main St, Storefront Location'),
(33, 10, 1240.00, '2024-11-23 21:11:06', 'pending', 'delivery', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
