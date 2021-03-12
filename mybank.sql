-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2021 at 07:48 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mybank`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branchId` int(11) NOT NULL,
  `branchNo` varchar(111) NOT NULL,
  `branchName` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branchId`, `branchNo`, `branchName`) VALUES
(1, '100101', 'Gujrat'),
(2, '100102', 'West Bengal'),
(3, '10001', 'BIHAR'),
(4, '10002', 'DELHI'),
(5, '10003', 'JHARKHAND'),
(6, '10004', 'OTHER');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedbackId` int(11) NOT NULL,
  `message` text NOT NULL,
  `userId` double NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedbackId`, `message`, `userId`, `date`) VALUES
(6, 'sir thank you for updating my money', 1, '2021-03-05 13:40:32');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `email` varchar(111) NOT NULL,
  `password` varchar(111) NOT NULL,
  `type` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `email`, `password`, `type`, `date`) VALUES
(7, 'Madhurya@manager.com', '12345', 'Manager', '2021-03-03 19:22:34'),
(8, 'Madhurya@cashier.com', '12345', 'cashier', '2021-03-04 02:51:56');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `userId` varchar(111) NOT NULL,
  `notice` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `userId`, `notice`, `date`) VALUES
(7, '1', 'welcome to our bank.', '2021-03-05 13:41:17');

-- --------------------------------------------------------

--
-- Table structure for table `otheraccounts`
--

CREATE TABLE `otheraccounts` (
  `id` int(11) NOT NULL,
  `accountNo` varchar(111) NOT NULL,
  `bankName` varchar(111) NOT NULL,
  `holderName` varchar(111) NOT NULL,
  `balance` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `otheraccounts`
--

INSERT INTO `otheraccounts` (`id`, `accountNo`, `bankName`, `holderName`, `balance`, `date`) VALUES
(1, '12001122', 'UBL', 'Yaqoob Quraishi', '0', '2017-12-14 11:55:07'),
(2, '12001123', 'HBL', 'Yousaf Khan', '71000', '2017-12-14 11:55:07'),
(3, '12001124', 'HBL', 'Yousaf Khan', '71000', '2017-12-14 11:55:07');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transactionId` int(11) NOT NULL,
  `action` varchar(111) NOT NULL,
  `credit` varchar(111) NOT NULL,
  `debit` varchar(111) NOT NULL,
  `balance` varchar(111) NOT NULL,
  `beneId` varchar(111) NOT NULL,
  `other` varchar(111) NOT NULL,
  `userId` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transactionId`, `action`, `credit`, `debit`, `balance`, `beneId`, `other`, `userId`, `date`) VALUES
(28, 'withdraw', '', '100', '', '', '1', 6, '2021-03-04 02:54:41'),
(29, 'deposit', '6000000', '', '', '', '1', 1, '2021-03-04 14:16:39'),
(30, 'withdraw', '', '600000', '', '', '1', 1, '2021-03-05 01:38:05'),
(31, 'transfer', '', '1000', '', '', '1005469', 1, '2021-03-08 06:29:37');

-- --------------------------------------------------------

--
-- Table structure for table `useraccounts`
--

CREATE TABLE `useraccounts` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `name` varchar(111) NOT NULL,
  `balance` varchar(111) NOT NULL,
  `cnic` varchar(111) NOT NULL,
  `number` varchar(111) NOT NULL,
  `city` varchar(111) NOT NULL,
  `address` varchar(111) NOT NULL,
  `source` varchar(111) NOT NULL,
  `accountNo` varchar(111) NOT NULL,
  `branch` varchar(111) NOT NULL,
  `accountType` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `useraccounts`
--

INSERT INTO `useraccounts` (`id`, `email`, `password`, `name`, `balance`, `cnic`, `number`, `city`, `address`, `source`, `accountNo`, `branch`, `accountType`, `date`) VALUES
(1, 'Madhurya@gmail.com', '12345', 'Madhurya Kumar', '5409800', '3210375555426', '03356910260', 'sasaram', 'DELHI', 'Programmer', '1005469', '1', 'Current', '2021-12-14 05:50:06'),
(2, 'Monal@gmail.com', '12345', 'Monal Yadav', '16000', '3210375555343', '03356910260', 'fazalganj', 'BIHAR', 'Programmer', '10054777', '1', 'Saving', '2021-12-14 04:50:06'),
(6, 'Ranjan@gmail.com', '12345', 'Ranjan', '234134', '3240338834902', '03356910260', 'Dharamsala', 'JHARKHAND', 'Govt. job', '1513410739', '1', 'saving', '2012-12-17 07:52:40'),
(7, 'Abhishek@gmail.com', 'Abhishek Kumar', 'Abhishek Kumar', '12121', '3240338834902', '03356910260', 'post office', 'ASSAM', 'Govt. job', '1513410837', '1', 'current', '2017-08-01 07:54:18'),
(8, 'madhurya1701@gmail.com', '12345', 'abc', '500', '621678827978', '9693939966', 'sasaram', 'sasaram, bihar', 'student', '1614825838', '3', 'saving', '2021-03-04 02:45:52'),
(9, 'abc@abc', '12345', 'bcd', '500', '2177982179021', '9693939966', 'sasaram', 'sasaram, bihar', 'student', '1614826088', '4', 'saving', '2021-03-04 02:48:59'),
(10, 'efg@efg', '12345', 'efg', '500', '72178271809', '123456789', 'new delhi', 'delhi', 'student', '1614826139', '4', 'saving', '2021-03-04 02:49:59'),
(11, 'pqr@gmail.com', '12345', 'pqr', '500', '521879872108', '1234567890', 'Bihar', 'sfxdgcfhvjbkl', 'student', '1615004820', '2', 'saving', '2021-03-06 04:28:15'),
(12, 'efg@gmail.com', '12345', 'efg', '500', '34526728765', '1234567890', 'wb', 'dfgh', 'student', '1615004896', '5', 'saving', '2021-03-06 04:28:59'),
(13, 'raaz@gmail.com', '12345', 'raaj', '5000', '82617129890', '123456789', 'bbbb', 'bbbb', 'buisnessman', '1615004966', '2', 'saving', '2021-03-06 04:30:28'),
(14, 'cccc@gmail.com', '12345', 'pawan', '1000', '9217897219', '123456789', 'cccc', 'cccc', 'farming', '1615005028', '6', 'saving', '2021-03-06 04:31:15'),
(15, 'niraj@gmail.com', '12345', 'niraj', '20000', '10217862187', '943212341', 'station road', 'janta colony, station road', 'teacher', '1615005075', '5', 'saving', '2021-03-06 04:33:03'),
(16, 'rajesh@gmail.com', '12345', 'rajesh singh', '100000', '1121786721', '7766889987', 'alamganj', 'alamganj, west bengal', 'buisnessman', '1615005205', '2', 'saving', '2021-03-06 04:34:50'),
(17, 'ankit@gmail.com', '12345', 'Ankit pal', '600000', '12912782179', '8878862827', 'new delhi', 'anand vihar colony, new delhi', 'agriculture', '1615005290', '4', 'saving', '2021-03-06 04:36:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branchId`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedbackId`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otheraccounts`
--
ALTER TABLE `otheraccounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transactionId`);

--
-- Indexes for table `useraccounts`
--
ALTER TABLE `useraccounts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `branchId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedbackId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `otheraccounts`
--
ALTER TABLE `otheraccounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transactionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `useraccounts`
--
ALTER TABLE `useraccounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
