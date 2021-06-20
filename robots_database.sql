-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 20 يونيو 2021 الساعة 22:58
-- إصدار الخادم: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `robots_database`
--

-- --------------------------------------------------------

--
-- بنية الجدول `robot_arm`
--

CREATE TABLE `robot_arm` (
  `base` int(100) NOT NULL,
  `shoulder` int(100) NOT NULL,
  `elbow` int(100) NOT NULL,
  `wrist` int(100) NOT NULL,
  `gripper` int(100) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- إرجاع أو استيراد بيانات الجدول `robot_arm`
--

INSERT INTO `robot_arm` (`base`, `shoulder`, `elbow`, `wrist`, `gripper`, `id`) VALUES
(1, 90, 90, 40, 20, 34),
(1, 90, 90, 40, 20, 35),
(1, 90, 90, 40, 20, 36),
(1, 90, 90, 40, 20, 37);

-- --------------------------------------------------------

--
-- بنية الجدول `run`
--

CREATE TABLE `run` (
  `id` int(1) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- إرجاع أو استيراد بيانات الجدول `run`
--

INSERT INTO `run` (`id`, `status`) VALUES
(1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `robot_arm`
--
ALTER TABLE `robot_arm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `run`
--
ALTER TABLE `run`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `robot_arm`
--
ALTER TABLE `robot_arm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `run`
--
ALTER TABLE `run`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
