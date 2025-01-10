-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2025 at 03:22 PM
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
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `author_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `author_name`, `created_at`, `updated_at`) VALUES
(1, 'gg', '2025-01-10 11:17:43', '2025-01-10 11:38:25'),
(2, 'saad', '2025-01-10 11:19:04', '2025-01-10 11:19:04'),
(3, 'ali', '2025-01-10 11:19:04', '2025-01-10 11:19:04'),
(4, 'ahmed', '2025-01-10 11:19:04', '2025-01-10 11:19:04'),
(5, 'mohsin', '2025-01-10 11:19:04', '2025-01-10 11:19:04'),
(7, 'usman', '2025-01-10 11:19:04', '2025-01-10 11:19:04'),
(8, 'fahad', '2025-01-10 11:19:04', '2025-01-10 11:19:04'),
(9, 'noman', '2025-01-10 11:19:04', '2025-01-10 11:19:04'),
(10, 'zain', '2025-01-10 11:19:04', '2025-01-10 11:19:04'),
(11, 'bilal', '2025-01-10 11:19:04', '2025-01-10 11:19:04');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `body`, `author_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'blog1', 'WOW blog 1', 1, 1, '2025-01-10 12:42:40', '2025-01-10 12:56:08'),
(2, 'blog2', 'GG blog 2', 2, 2, '2025-01-10 12:42:40', '2025-01-10 12:56:13'),
(4, 'blog4', 'WOW blog 4', 4, 4, '2025-01-10 12:58:35', '2025-01-10 12:59:39'),
(5, 'blog5', 'GG blog 5', 5, 5, '2025-01-10 12:58:35', '2025-01-10 12:59:46');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'shirt', '2025-01-10 12:32:48', '2025-01-10 12:32:48'),
(2, 'pant', '2025-01-10 12:32:48', '2025-01-10 12:32:48'),
(3, 'shoes', '2025-01-10 12:32:48', '2025-01-10 12:32:48'),
(4, 'watch', '2025-01-10 12:32:48', '2025-01-10 12:32:48'),
(5, 'dresses', '2025-01-10 12:32:48', '2025-01-10 12:34:55'),
(7, 'belt', '2025-01-10 12:32:48', '2025-01-10 12:32:48'),
(8, 'tie', '2025-01-10 12:32:48', '2025-01-10 12:32:48'),
(9, 'socks', '2025-01-10 12:32:48', '2025-01-10 12:32:48'),
(10, 'jacket', '2025-01-10 12:32:48', '2025-01-10 12:32:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `blogs_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
