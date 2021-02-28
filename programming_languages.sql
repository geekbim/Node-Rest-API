-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 28, 2021 at 09:05 AM
-- Server version: 5.7.33-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `freedbtech_language`
--

-- --------------------------------------------------------

--
-- Table structure for table `programming_languages`
--

CREATE TABLE `programming_languages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `released_year` int(11) NOT NULL,
  `githut_rank` int(11) DEFAULT NULL,
  `pypl_rank` int(11) DEFAULT NULL,
  `tiobe_rank` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `programming_languages`
--

INSERT INTO `programming_languages` (`id`, `name`, `released_year`, `githut_rank`, `pypl_rank`, `tiobe_rank`, `created_at`, `updated_at`) VALUES
(1, 'JavaScript', 1995, 1, 3, 7, '2021-02-27 21:13:38', '2021-02-27 21:13:38'),
(2, 'Python', 1991, 2, 1, 3, '2021-02-27 21:13:38', '2021-02-27 21:13:38'),
(3, 'Java', 1995, 3, 2, 2, '2021-02-27 21:13:38', '2021-02-27 21:13:38'),
(4, 'TypeScript', 2012, 7, 10, 42, '2021-02-27 21:13:38', '2021-02-27 21:13:38'),
(5, 'C#', 2000, 9, 4, 5, '2021-02-27 21:13:38', '2021-02-27 21:13:38'),
(6, 'PHP', 1995, 8, 6, 8, '2021-02-27 21:13:38', '2021-02-27 21:13:38'),
(7, 'C++', 1985, 5, 5, 4, '2021-02-27 21:13:38', '2021-02-27 21:13:38'),
(8, 'C', 1972, 10, 5, 1, '2021-02-27 21:13:38', '2021-02-27 21:13:38'),
(9, 'Ruby', 1995, 6, 15, 15, '2021-02-27 21:13:38', '2021-02-27 21:13:38'),
(10, 'R', 1993, 33, 7, 9, '2021-02-27 21:13:38', '2021-02-27 21:13:38'),
(11, 'Objective-C', 1984, 18, 8, 18, '2021-02-27 21:13:38', '2021-02-27 21:13:38'),
(12, 'Swift', 2015, 16, 9, 13, '2021-02-27 21:13:38', '2021-02-27 21:13:38'),
(13, 'Kotlin', 2011, 15, 12, 40, '2021-02-27 21:13:38', '2021-02-27 21:13:38'),
(14, 'Go', 2009, 4, 13, 14, '2021-02-27 21:13:38', '2021-02-27 21:13:38'),
(15, 'Rust', 2010, 14, 16, 26, '2021-02-27 21:13:38', '2021-02-27 21:13:38'),
(16, 'Scala', 2004, 11, 17, 34, '2021-02-27 21:13:38', '2021-02-27 21:13:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `programming_languages`
--
ALTER TABLE `programming_languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_name_unique` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `programming_languages`
--
ALTER TABLE `programming_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
