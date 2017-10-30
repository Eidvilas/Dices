-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2017 at 01:45 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dice`
--

-- --------------------------------------------------------

--
-- Table structure for table `stat`
--

CREATE TABLE `stat` (
  `id` int(11) NOT NULL,
  `user` varchar(20) NOT NULL,
  `result` decimal(5,2) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stat`
--

INSERT INTO `stat` (`id`, `user`, `result`, `date`) VALUES
(6, 'Petras', '3.00', '2017-10-30 07:11:38'),
(7, 'Petras', '2.00', '2017-10-30 07:11:38'),
(8, 'Tomas', '4.00', '2017-10-30 07:12:19'),
(9, 'Tomas', '2.00', '2017-10-30 07:12:19'),
(10, 'Tomas', '3.00', '2017-10-30 07:43:31'),
(11, 'Tomas', '3.00', '2017-10-30 07:43:32'),
(12, 'Tomas', '3.00', '2017-10-30 07:43:45'),
(16, 'Tomas', '1.00', '2017-10-30 08:46:03'),
(17, 'Tomas', '0.00', '2017-10-30 08:46:05'),
(18, 'Tomas', '0.00', '2017-10-30 08:48:29'),
(19, 'Tomas', '1.00', '2017-10-30 08:48:30'),
(20, 'Tomas', '1.00', '2017-10-30 08:48:32'),
(21, 'Tomas', '1.00', '2017-10-30 08:48:33'),
(22, 'Tomas', '1.00', '2017-10-30 08:48:35'),
(23, 'Tomas', '0.00', '2017-10-30 09:01:20'),
(24, 'Tomas', '1.00', '2017-10-30 11:41:32'),
(25, 'Tomas', '1.00', '2017-10-30 11:41:33'),
(26, 'Tomas', '0.00', '2017-10-30 11:41:34'),
(27, 'Tomas', '0.00', '2017-10-30 11:42:04'),
(28, 'Tomas', '1.00', '2017-10-30 11:42:05'),
(29, 'Tomas', '1.00', '2017-10-30 11:50:39'),
(30, 'Tomas', '0.00', '2017-10-30 11:52:21'),
(31, 'Tomas', '0.00', '2017-10-30 11:52:23'),
(32, 'Tomas', '1.00', '2017-10-30 11:52:31'),
(33, 'Tomas', '1.00', '2017-10-30 11:53:31'),
(34, 'Tomas', '1.00', '2017-10-30 11:53:37'),
(35, 'Tomas', '0.20', '2017-10-30 11:57:03'),
(36, 'Tomas', '0.90', '2017-10-30 11:57:32'),
(37, 'Tomas', '1.20', '2017-10-30 11:57:35'),
(38, 'Tomas', '0.80', '2017-10-30 11:57:37'),
(39, 'Marijonas', '1.10', '2017-10-30 11:58:24'),
(40, 'Marijonas', '1.10', '2017-10-30 11:58:26'),
(41, 'Marijonas', '0.40', '2017-10-30 11:58:27'),
(42, 'Marijonas', '1.10', '2017-10-30 11:58:35'),
(43, 'Marijonas', '1.00', '2017-10-30 11:58:37'),
(44, 'Marijonas', '0.50', '2017-10-30 11:58:39'),
(45, 'Marijonas', '0.90', '2017-10-30 11:58:48'),
(46, 'Marijonas', '1.10', '2017-10-30 11:58:50'),
(47, 'Marijonas', '1.00', '2017-10-30 11:58:51'),
(48, 'Marijonas', '1.10', '2017-10-30 12:00:45'),
(49, 'Jurgis', '0.20', '2017-10-30 12:10:52'),
(50, 'Jurgis', '0.50', '2017-10-30 12:10:55'),
(51, 'kkk', '0.60', '2017-10-30 12:22:46'),
(52, 'kkk', '0.60', '2017-10-30 12:22:48'),
(53, 'kkk', '0.40', '2017-10-30 12:24:38'),
(54, 'kkk', '0.70', '2017-10-30 12:28:36'),
(55, 'kkk', '0.80', '2017-10-30 12:28:39'),
(56, 'kkk', '0.80', '2017-10-30 12:30:33'),
(57, 'kkk', '1.30', '2017-10-30 12:30:36'),
(58, 'kkk', '0.00', '2017-10-30 12:30:39'),
(59, 'kkk', '0.00', '2017-10-30 12:30:41'),
(60, 'kkk', '1.50', '2017-10-30 12:30:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` tinyint(3) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(4, 'Tomas', '$2y$10$DByfaJIx1KCPKogGt9IJGeZkljLHXP3t6LKmbYM4btRdINRm5tOXW'),
(5, 'Jonas', '$2y$10$YoSh45aQo6c/oKywbvhIX.moQtii0QnvOBB/knHcX/0dDrwKSiUke'),
(6, 'Petras', '$2y$10$dayOqdp2F66r8ML/X3u1jOcHrjKSfzZ.YudD2VAYgNz5pPUVerIYW'),
(7, 'Marijonas', '$2y$10$ydExMz5yAXHXsFIxAuPRIeYCRx2kiSXbdjFk2n55kLxrIQLDYhYj6'),
(8, 'Jurgis', '$2y$10$8HF7up2st7jwS3O0lIIN4u6MtciggNDI/rbHa04WegdGn5L/Afh8u'),
(9, 'Kablys', '$2y$10$p/iULVQxM0U0LcGNHF1Iy.yy1ubc6XVkM/8QBE6rX6kpJepE5DK/2'),
(10, 'Vilius', '$2y$10$qucRaOjWfiJnyTfdkS61neWT/HYWpF38RwFVEYXQYfjZgSDWJg0lC'),
(11, 'naujas', '$2y$10$TjoSoAbOQyc63ewPQWYcpu8rmU4mCbk8agG3LZ1tubZpOBB3p/0Lu'),
(12, 'Nulis', '$2y$10$Bl/424Cy1hweYxixWXqe0..smTZuiu/FWEpOMI2sZ47G4pgjmTEKG'),
(13, 'kkk', '$2y$10$7O6BtQHXyk2PTLGPLOuPh.wj0qAdsJpkEbZbsg8KdEmAFEGUTTzpK');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `stat`
--
ALTER TABLE `stat`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `name` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `stat`
--
ALTER TABLE `stat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` tinyint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
