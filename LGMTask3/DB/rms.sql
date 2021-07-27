-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2020 at 10:27 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `password` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `AdminChngDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `AdminChngDate`) VALUES
(1, 'admin', '1234', '2020-08-09 15:16:00');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `id` int(255) NOT NULL,
  `name` text NOT NULL,
  `roll` varchar(8) NOT NULL,
  `fname` text NOT NULL,
  `dob` date NOT NULL,
  `contact` int(10) NOT NULL,
  `imgpath` text NOT NULL,
  `maths` int(255) NOT NULL,
  `english` int(255) NOT NULL,
  `phy` int(255) NOT NULL,
  `dsa` int(255) NOT NULL,
  `be` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`id`, `name`, `roll`, `fname`, `dob`, `contact`, `imgpath`, `maths`, `english`, `phy`, `dsa`, `be`) VALUES
(48, 'Aishwarya Rangesh', '18IS002', '---', '2020-08-14', 9620555535, 'students.jpg', 90, 80, 78, 77, 89),
(49, 'Riya Srinivas', '17CS062', '---', '2020-08-14', 2147483647, 'student2.jpg', 100, 100, 100, 100, 100),
(50, 'Abhishek Kumar', '19cse009', '---', '2020-08-14', 2147483647, 'students.jpg', 100, 100, 100, 100, 100),
(51, 'Adarsh Naidu', '18EC015', '---', '2020-08-14', 2147483647, 'students.jpg', 100, 100, 100, 100, 100),
(52, 'Prakash Nayak', '19CS133', '---', '2020-08-14', 747855263, 'students.jpg', 100, 100, 100, 100, 100);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roll` (`roll`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
