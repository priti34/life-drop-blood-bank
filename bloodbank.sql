-- Active: 1715333529202@@localhost@3306@test
-- phpMyAdmin SQL Dump
-- Version information: 5.2.1 (up to date)
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3000
-- Generation Time: Jun 21, 2024 at 07:01 PM
--Server version: 10.4.32-MariaDB - mariadb.org binary distribution
-- PHP version: 8.0.30


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bloodbank`
--

-- --------------------------------------------------------

--
-- Table structure for table `blooddinfo`
--

CREATE TABLE `blooddinfo` (
  `bdid` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `bg` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blooddinfo`
--

INSERT INTO `blooddinfo` (`bdid`, `rid`, `bg`) VALUES
(10, 1, 'A+'),
(11, 1, 'B-'),
(12, 2, 'B+'),
(13, 2, 'O+'),
(14, 3, 'B+'),
(15, 3, 'B-'),
(16, 3, 'O+'),
(17, 4, 'B+'),
(18, 4, 'AB+'),
(19, 4, 'A-'),
(20, 5, 'AB-'),
(21, 5, 'A-'),
(22, 5, 'O-'),
(23, 1, 'A-');

-- --------------------------------------------------------

--
-- Table structure for table `blooddonate`
--

CREATE TABLE `blooddonate` (
  `donoid` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `hid` int(11) NOT NULL,
  `bg` varchar(11) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bloodinfo`
--

CREATE TABLE `bloodinfo` (
  `bid` int(11) NOT NULL,
  `hid` int(11) NOT NULL,
  `bg` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bloodinfo`
--

INSERT INTO `bloodinfo` (`bid`, `hid`, `bg`) VALUES
(7, 1, 'A-'),
(8, 1, 'O+'),
(12, 2, 'A-'),
(13, 2, 'A+'),
(14, 2, 'AB+'),
(16, 3, 'A+'),
(17, 3, 'B-'),
(18, 3, 'O-'),
(20, 3, 'B+'),
(21, 4, 'O+'),
(22, 4, 'A-'),
(23, 4, 'O-'),
(24, 5, 'A-'),
(25, 5, 'A+'),
(26, 5, 'B-'),
(27, 5, 'B+'),
(31, 1, 'B-');

-- --------------------------------------------------------

--
-- Table structure for table `bloodrequest`
--

CREATE TABLE `bloodrequest` (
  `reqid` int(11) NOT NULL,
  `hid` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `bg` varchar(11) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hospitals`
--

CREATE TABLE `hospitals` (
  `id` int(11) NOT NULL,
  `hname` varchar(100) NOT NULL,
  `hemail` varchar(100) NOT NULL,
  `hpassword` varchar(100) NOT NULL,
  `hphone` varchar(100) NOT NULL,
  `hcity` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospitals`
--

INSERT INTO `hospitals` (`id`, `hname`, `hemail`, `hpassword`, `hphone`, `hcity`) VALUES
(1, 'Gandhi hospital', 'gandhi@gmail.com', 'gandhi', '7865376358', 'Delhi'),
(2, 'KMC Hospital', 'kmchospital@gmail.com', 'kmchospital', '9898988909', 'Meerut'),
(3, 'AIIMS', 'aiimsrishikesh@gmail.com', 'aiimsrishi', '6161562629', 'Rishikesh'),
(4, 'Sanjeevni Hospital', 'sanjeevnihospital@gmail.com', 'sanjeevni', '4282933337', 'Bijnor'),
(5, 'Base Hospital', 'basehospitals@gmail.com', 'basehs', '9044143256', 'Srinagar');

-- --------------------------------------------------------

--
-- Table structure for table `receivers`
--

CREATE TABLE `receivers` (
  `id` int(11) NOT NULL,
  `rname` varchar(100) NOT NULL,
  `remail` varchar(100) NOT NULL,
  `rpassword` varchar(100) NOT NULL,
  `rphone` varchar(100) NOT NULL,
  `rbg` varchar(10) NOT NULL,
  `rcity` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `receivers`
--

INSERT INTO `receivers` (`id`, `rname`, `remail`, `rpassword`, `rphone`, `rbg`, `rcity`) VALUES
(1, 'test', 'test@gmail.com', 'test', '8875643456', 'A+', 'lucknow'),
(2, 'Preet', 'xyz@gmail.com', 'xyz@47', '9902477355', 'B+', 'Kanpur'),
(3, 'Akansha', 'akanshaarya@gmail.com', 'akansha', '9380073433', 'B+', 'Nainital'),
(4, 'Akrati', 'akratiyadav@gmail.com', 'akrati02', '8106298053', 'B+', 'Lakhimpur'),
(5, 'Priti', 'pritiraj@gmail.com', 'priti989', '9849492206', 'AB-', 'Bijnor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blooddinfo`
--
ALTER TABLE `blooddinfo`
  ADD PRIMARY KEY (`bdid`),
  ADD KEY `blooddinfo_ibfk_2` (`rid`);

--
-- Indexes for table `blooddonate`
--
ALTER TABLE `blooddonate`
  ADD PRIMARY KEY (`donoid`),
  ADD KEY `rid` (`rid`);

--
-- Indexes for table `bloodinfo`
--
ALTER TABLE `bloodinfo`
  ADD PRIMARY KEY (`bid`),
  ADD KEY `hid` (`hid`);

--
-- Indexes for table `bloodrequest`
--
ALTER TABLE `bloodrequest`
  ADD PRIMARY KEY (`reqid`),
  ADD KEY `hid` (`hid`);

--
-- Indexes for table `hospitals`
--
ALTER TABLE `hospitals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receivers`
--
ALTER TABLE `receivers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blooddinfo`
--
ALTER TABLE `blooddinfo`
  MODIFY `bdid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `blooddonate`
--
ALTER TABLE `blooddonate`
  MODIFY `donoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bloodinfo`
--
ALTER TABLE `bloodinfo`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `bloodrequest`
--
ALTER TABLE `bloodrequest`
  MODIFY `reqid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `hospitals`
--
ALTER TABLE `hospitals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `receivers`
--
ALTER TABLE `receivers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blooddinfo`
--
ALTER TABLE `blooddinfo`
  ADD CONSTRAINT `blooddinfo_ibfk_2` FOREIGN KEY (`rid`) REFERENCES `receivers` (`id`);

--
-- Constraints for table `bloodinfo`
--
ALTER TABLE `bloodinfo`
  ADD CONSTRAINT `bloodinfo_ibfk_1` FOREIGN KEY (`hid`) REFERENCES `hospitals` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;