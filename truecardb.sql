-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 11, 2020 at 04:49 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `truecardb`
--

-- --------------------------------------------------------

--
-- Table structure for table `car_info`
--

CREATE TABLE `car_info` (
  `id` int(11) NOT NULL,
  `price` varchar(50) NOT NULL,
  `mileage` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `car_info`
--

INSERT INTO `car_info` (`id`, `price`, `mileage`) VALUES
(1, '$40,810', '12,871 miles'),
(2, '$28,990', '51,570 miles'),
(3, '$28,998', '34,514 miles'),
(4, '$23,000', '41,772 miles'),
(5, '$17,955', '100,812 miles'),
(6, '$16,990', '47,564 miles'),
(7, '$9,592', '141,895 miles'),
(8, '$14,950', '49,718 miles'),
(9, '$11,998', '89,033 miles'),
(10, '$9,999', '96,356 miles'),
(11, '$6,837', '127,345 miles'),
(12, '$16,900', '73,861 miles'),
(13, '$12,495', '92,377 miles'),
(14, '$16,499', '110,849 miles'),
(15, '$11,995', '116,940 miles'),
(16, '$8,777', '63,677 miles'),
(17, '$9,998', '84,231 miles'),
(18, '$27,500', '44,817 miles'),
(19, '$6,995', '95,457 miles'),
(20, '$6,900', '88,230 miles');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car_info`
--
ALTER TABLE `car_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `car_info`
--
ALTER TABLE `car_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
