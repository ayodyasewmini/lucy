-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 25, 2025 at 11:11 AM
-- Server version: 8.0.36
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flower`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_phone` varchar(20) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_comments` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `product_name`, `customer_name`, `customer_phone`, `customer_email`, `customer_address`, `customer_comments`) VALUES
(1, 'Elegant Wedding Bouquet', 'gim', '0755642382', 'ayodyasewminias@gmail.com', 'bnbhbhbj', ''),
(2, 'Customized Flower Box', 'ayo', '55555', 'vjkfnv@fvv', 'eff\r\n\r\n\r\n', 'fsdf'),
(3, 'Rose Elegance', 'seni', '202020', '220@email.com', 'kandy', 'wwww');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`, `category`) VALUES
(7, 'tulip', 2500.00, 'uploads/a6.jpg', 'wedding'),
(8, 'roses', 2500.00, 'uploads/a3.jpg', 'wedding'),
(9, 'rose', 2500.00, 'uploads/a2.jpg', 'gifts'),
(10, 'Blossom Delight', 1500.00, 'uploads/g1.jpg', 'gifts'),
(11, 'Blossom Delight', 1500.00, 'uploads/g1.jpg', 'gifts'),
(12, 'Sunshine Surprise', 2300.00, 'uploads/g2.jpg', 'gifts'),
(13, 'Sunshine Surprise', 2300.00, 'uploads/g2.jpg', 'gifts'),
(14, 'Blossom Sunshine', 2200.00, 'uploads/w1.jpg', 'wedding_decor'),
(15, 'Rose Elegance', 2800.00, 'uploads/w2.jpg', 'wedding_decor'),
(16, 'Rosy Hug', 3000.00, 'uploads/g4.jpg', 'gifts_delivery'),
(17, 'Success Sunflowers', 1900.00, 'uploads/r20.jpg', 'graduation'),
(18, 'Peaceful Petals', 2100.00, 'uploads/s1.jpg', 'sympathy'),
(19, 'pink rose', 2300.00, 'uploads/a1.jpg', 'gifts_delivery'),
(20, 'Heavenly Lilies', 1800.00, 'uploads/s2.jpg', 'sympathy'),
(25, 'Orchid Bliss', 1700.00, 'uploads/w4.jpg', 'wedding_decor'),
(26, 'Lily Love', 2400.00, 'uploads/w5.jpg', 'wedding_decor'),
(27, 'Gardenia Grace', 1600.00, 'uploads/w7.jpg', 'wedding_decor'),
(28, 'Carnation Charm', 1900.00, 'uploads/w8.jpg', 'wedding_decor'),
(29, 'Carnation Wishes', 2900.00, 'uploads/w9.jpg', 'wedding_decor'),
(30, 'Mixed Petal Joy', 3200.00, 'uploads/w10.jpg', 'wedding_decor'),
(31, 'Peony Dream', 1700.00, 'uploads/w6.jpg', 'wedding_decor'),
(32, 'Joyful Tulips', 2700.00, 'uploads/g2.jpg', 'gifts_delivery'),
(33, 'Rosy Hug', 2000.00, 'uploads/g6.jpg', 'gifts_delivery'),
(34, 'Mixed Petal Joy', 3000.00, 'uploads/g9.jpg', 'gifts_delivery'),
(35, 'Carnation Wishes', 1500.00, 'uploads/g5.jpg', 'gifts_delivery'),
(36, 'Carnation Wishes', 1800.00, 'uploads/g10.jpg', 'gifts_delivery'),
(37, 'Rosy Hug', 2300.00, 'uploads/a5.jpg', 'gifts_delivery'),
(38, 'Blossom Surprise', 3200.00, 'uploads/a3.jpg', 'gifts_delivery'),
(39, 'Bright Future Bouquet', 3200.00, 'uploads/r12.jpg', 'graduation'),
(40, 'Cap & Bloom', 2500.00, 'uploads/r14.jpg', 'graduation'),
(41, 'Victory Violets', 2400.00, 'uploads/r16.jpg', 'graduation'),
(42, 'Honor Lilies', 3200.00, 'uploads/r15.jpg', 'graduation'),
(43, 'Dream Big Roses', 3300.00, 'uploads/r8.jpg', 'graduation'),
(44, 'Scholarly Blossoms', 3700.00, 'uploads/r19.jpg', 'graduation'),
(45, 'Cap & Bloom', 2400.00, 'uploads/r2.jpg', 'graduation'),
(46, 'Success Sunflowers  ', 2900.00, 'uploads/r1.jpg', 'graduation'),
(47, 'Graceful Goodbye', 2200.00, 'uploads/s7.jpg', 'sympathy'),
(48, 'Silent Prayers', 2700.00, 'uploads/s3.jpg', 'sympathy'),
(49, 'Angel’s Touch', 2500.00, 'uploads/s6.jpg', 'sympathy'),
(50, 'Tranquil Roses', 1600.00, 'uploads/s8.jpg', 'sympathy'),
(51, 'Peaceful Petals', 2100.00, 'uploads/s10.jpg', 'sympathy'),
(52, 'Angel’s Touch', 2500.00, 'uploads/s5.jpg', 'sympathy'),
(54, 'Serenity Bouquet', 2300.00, 'uploads/s7.jpg', 'sympathy');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(1, 'admin@gmail.com', 'Admin123');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
