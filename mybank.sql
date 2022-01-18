-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2022 at 02:32 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

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
(1, '100101', 'Mumbai'),
(2, '100102', ' Haiti');

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
(1, 'This is testing message to admin or manager by Yash', 1, '2017-12-15 04:30:48'),
(3, 'This is testing message to admin or manager by Yash', 2, '2017-12-15 04:30:48'),
(4, 'Stay home', 1, '2017-12-17 06:45:20'),
(5, 'testing', 1, '2022-01-05 07:37:20'),
(6, 'hi', 1, '2022-01-05 09:29:54');

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
(1, 'cashier@cashier.com', 'cashier', 'cashier', '2017-12-15 04:36:27'),
(2, 'manager@manager.com', 'manager', 'manager', '2017-12-15 04:36:27'),
(3, 'YC@gmail.com', 'sdfas', 'type', '2017-12-16 07:13:12'),
(4, 'Yashc@gmail.com', 'asdfsa', 'type', '2017-12-16 07:13:18'),
(6, 'cashier2@cashier.com', 'cashier2', 'cashier', '2017-12-16 07:14:47');

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
(1, '1', 'Dear Yash! <br> Our privacy policy has been changed for account information. Get new prospectus from your nearest branch.', '2017-12-14 13:11:46'),
(6, '2', 'Dear Yash,<br>\r\nOur privacy policy has been changed please visit nearest <kbd> MCB </kbd> branch for new prospectus.', '2017-12-16 06:29:23'),
(7, '1', 'New notice- Welcome Mr. Chande', '2022-01-05 07:45:30');

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
(1, '12001122', 'UBL', 'Yash Chande', '40800', '2017-12-14 11:55:07'),
(2, '12001123', 'HBL', 'Darpan Chaudhari', '71000', '2017-12-14 11:55:07'),
(3, '12001124', 'HBL', 'Ibrahim Khan', '71000', '2017-12-14 11:55:07');

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
(4, 'transfer', '', '200', '', '', '12001122', 1, '2017-12-14 12:33:40'),
(5, 'transfer', '', '200', '', '', '10054777', 1, '2017-12-14 12:56:48'),
(6, 'transfer', '', '333', '', '', '10054777', 1, '2017-12-14 12:57:20'),
(7, 'transfer', '', '222', '', '', '10054777', 1, '2017-12-14 12:58:19'),
(8, 'transfer', '', '333', '', '', '10054777', 1, '2017-12-14 13:00:23'),
(16, 'withdraw', '', '100', '', '', '23423', 1, '2017-12-15 08:31:59'),
(17, 'deposit', '1200', '', '', '', '234232', 1, '2017-12-15 08:32:17'),
(18, 'transfer', '', '467', '', '', '12001122', 1, '2017-12-17 06:44:48'),
(22, 'deposit', '1200', '', '', '', '32424', 2, '2017-12-17 06:56:29'),
(23, 'withdraw', '', '12', '', '', '23423', 2, '2017-12-17 06:59:02'),
(24, 'deposit', '12', '', '', '', '21321', 2, '2017-12-17 06:59:20'),
(25, 'transfer', '', '1200', '', '', '10054777', 1, '2017-12-17 07:01:37'),
(26, 'deposit', '600', '', '', '', '342342', 2, '2017-12-17 07:04:39'),
(27, 'withdraw', '', '1012', '', '', '23423', 2, '2017-12-17 07:04:58'),
(28, 'transfer', '', '100', '', '', '10054777', 1, '2022-01-05 09:07:38'),
(29, 'transfer', '', '200', '', '', '10054777', 1, '2022-01-05 09:29:32'),
(30, 'deposit', '100', '', '', '', '1', 1, '2022-01-05 09:34:00'),
(31, 'deposit', '10000', '', '', '', '1', 2, '2022-01-05 09:34:34'),
(32, 'transfer', '', '100', '', '', '10054777', 1, '2022-01-12 16:10:27'),
(33, 'transfer', '', '500', '', '', '10054777', 1, '2022-01-17 16:17:14'),
(34, 'withdraw', '', '2500', '', '', '1', 2, '2022-01-17 16:19:44'),
(35, 'transfer', '', '20', '', '', '1005469', 1, '2022-01-17 17:14:58'),
(36, 'deposit', '100', '', '', '', '1', 1, '2022-01-17 17:16:11'),
(37, 'deposit', '100', '', '', '', '1', 1, '2022-01-17 17:17:05'),
(38, 'deposit', '100', '', '', '', '', 1, '2022-01-17 17:19:45'),
(39, 'deposit', '100', '', '', '', '', 1, '2022-01-17 17:20:10'),
(40, 'deposit', '100', '', '', '', '1', 1, '2022-01-17 17:20:23'),
(41, 'deposit', '100', '', '', '', '1', 1, '2022-01-17 17:48:30'),
(42, 'transfer', '', '800', '', '', '10054777', 1, '2022-01-17 17:55:48'),
(43, 'deposit', '1000', '', '', '', '1', 1, '2022-01-17 17:58:55');

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
(1, 'yashchande@gmail.com', 'some', 'Yash Chande', '9800', '3210375555426', '03356910260', 'Mumbai', 'SVP Road', 'Programmer', '1005469', '1', 'Current', '2022-01-14 05:50:06'),
(2, 'some2@gmail.com', 'some2', 'Arhaan Khan', '25200', '3210375555343', '03356910260', 'Delhi', 'New Delhi', 'Programmer', '10054777', '1', 'Saving', '2021-12-14 04:50:06'),
(6, 'JB@gmail.com', 'afsdfasd', 'Jayesh Bagal', '234234', '3240338834902', '03356910260', 'Bombay', 'RSTS Road', 'Govt. job', '1513410739', '1', 'saving', '2021-12-16 07:52:40'),
(7, 'realx4rd@gmail.com', 'safsadf', 'Akshay Kohli', '12121', '3240338834902', '03356910260', 'Mumbai', 'Bandra', 'Govt. job', '1513410837', '1', 'current', '2017-12-16 07:54:18');

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
  MODIFY `branchId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedbackId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `transactionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `useraccounts`
--
ALTER TABLE `useraccounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
