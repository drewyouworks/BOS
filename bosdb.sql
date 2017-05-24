-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2017 at 09:42 AM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jfcbosdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `contracts`
--

CREATE TABLE `contracts` (
  `id` int(12) NOT NULL,
  `sys_refno` varchar(40) DEFAULT NULL,
  `contract_no` varchar(30) DEFAULT NULL,
  `contract_name` varchar(30) DEFAULT NULL,
  `contact_person` varchar(60) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `landline_no` varchar(10) DEFAULT NULL,
  `mobile_no` varchar(15) DEFAULT NULL,
  `isprevious_cust` tinyint(4) DEFAULT NULL,
  `customer_since` date DEFAULT NULL,
  `date_booked` date DEFAULT NULL,
  `bos_transactype` varchar(10) DEFAULT NULL,
  `order_type` varchar(10) DEFAULT NULL,
  `isshared_order` tinyint(4) DEFAULT NULL,
  `ismother` tinyint(4) DEFAULT NULL,
  `cust_profile` varchar(20) DEFAULT NULL,
  `cust_specify` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contracts`
--

INSERT INTO `contracts` (`id`, `sys_refno`, `contract_no`, `contract_name`, `contact_person`, `address`, `landline_no`, `mobile_no`, `isprevious_cust`, `customer_since`, `date_booked`, `bos_transactype`, `order_type`, `isshared_order`, `ismother`, `cust_profile`, `cust_specify`) VALUES
(1, NULL, '101010', 'name', 'contact', '1000 test st, test village, test city', '02010101', '9090909090', 1, '2017-05-24', NULL, 'bos', 'nkg', NULL, 1, 'profilers', 'other profiles'),
(2, NULL, 'aaaaaaa', 'aaaaaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'ukLdoq0xSc', '10000', 'contractinator', 'arnold washinigger', '10101', '111101', '10100', 0, '0000-00-00', '0000-00-00', 'Single', 'BOS', 0, 0, 'Others', 'Others'),
(4, 'rNqouAByn4', '10022', '101010', '10101010', '101010', '1010101', '100101', NULL, '0000-00-00', '0000-00-00', 'Single', 'BOS', NULL, 0, 'School Govt', ''),
(5, 'X7dU1tcMEx', '13333', '13333', '13333', '13333', '13133', '31313', NULL, '1970-01-01', '2017-05-24', 'Single', 'JPLS', NULL, NULL, 'Others', '121212');

-- --------------------------------------------------------

--
-- Table structure for table `gcrequests`
--

CREATE TABLE `gcrequests` (
  `id` int(11) NOT NULL,
  `store_code` varchar(128) NOT NULL,
  `jstarget_nov` decimal(10,0) NOT NULL,
  `jstarget_dec` decimal(10,0) NOT NULL,
  `jstarget_total` decimal(10,0) NOT NULL,
  `ini_gcrequest` decimal(10,0) NOT NULL,
  `add_50gc` decimal(10,0) DEFAULT NULL,
  `gc50_amt` decimal(10,0) DEFAULT NULL,
  `add_100gc` decimal(10,0) DEFAULT NULL,
  `gc100_amt` decimal(10,0) DEFAULT NULL,
  `add_piegc` decimal(10,0) DEFAULT NULL,
  `gcpie_amt` decimal(10,0) DEFAULT NULL,
  `sys_refno` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gcrequests`
--

INSERT INTO `gcrequests` (`id`, `store_code`, `jstarget_nov`, `jstarget_dec`, `jstarget_total`, `ini_gcrequest`, `add_50gc`, `gc50_amt`, `add_100gc`, `gc100_amt`, `add_piegc`, `gcpie_amt`, `sys_refno`) VALUES
(1, 'JB0101', '1000', '1000', '2000', '2000', '122', '244', '222', '444', '222', '444', ''),
(2, 'JB0102', '1114', '1113', '111', '11111', NULL, NULL, NULL, NULL, NULL, NULL, 'tKXpcdhYOG'),
(3, 'JB1000', '1212', '1212', '2424', '2424', NULL, NULL, NULL, NULL, NULL, NULL, '1PNRiz7pae');

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `storeid` int(11) NOT NULL,
  `storecode` varchar(20) NOT NULL,
  `storename` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(40) NOT NULL,
  `level` int(11) NOT NULL DEFAULT '1',
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_login` timestamp NULL DEFAULT NULL,
  `isactive` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `email`, `password`, `level`, `creation_date`, `last_login`, `isactive`) VALUES
(3, 'ayidiesca@gmail.com', 'passmin', 1, '2017-05-22 07:57:19', NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contracts`
--
ALTER TABLE `contracts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contract_no` (`contract_no`),
  ADD UNIQUE KEY `sys_refno` (`sys_refno`);

--
-- Indexes for table `gcrequests`
--
ALTER TABLE `gcrequests`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sys_refno` (`sys_refno`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`storeid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contracts`
--
ALTER TABLE `contracts`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `gcrequests`
--
ALTER TABLE `gcrequests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
