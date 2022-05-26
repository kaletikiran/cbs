-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 12, 2021 at 08:10 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cbs`
--

-- --------------------------------------------------------

--
-- Table structure for table `atmcards`
--

CREATE TABLE `atmcards` (
  `id` int(11) NOT NULL,
  `cardNumber` varchar(20) NOT NULL,
  `accountNo` varchar(20) NOT NULL,
  `cardStatus` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `atmcards`
--

INSERT INTO `atmcards` (`id`, `cardNumber`, `accountNo`, `cardStatus`) VALUES
(1, '12345', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `acno` int(11) NOT NULL,
  `name` char(30) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `aadhar_no` varchar(20) DEFAULT NULL,
  `acc_type` varchar(20) DEFAULT NULL,
  `status` char(15) DEFAULT NULL,
  `balance` float(15,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`acno`, `name`, `address`, `phone`, `email`, `aadhar_no`, `acc_type`, `status`, `balance`) VALUES
(1, 'kiran kumar kaleti', 'cf-4 surya nagar', '9390153461', 'support@cbsetoday.com', '1234-1243-4545', 'saving', 'active', 48900.00),
(2, 'raju vashistha', 'A-75-B Brij vihar', '96734344318', 'raju@cbsetoday.com', '4545-1243-4545', 'current', 'active', 10000.00),
(3, 'archana', 'cf04 ', '4545456', 'archana@bianrynote.com', '1234-5656-4545', 'saving', 'active', 10000.00),
(4, 'ashutosh', 'd-100 brij vihar', '1122334455', 'ashu@gmail.com', '1124-5656-6576', 'saving', 'close', 56000.00),
(5, 'raman singh', 'e-40 radha bihar', '3344556677', 'raman@yahoo.com', '4455-5656-4545', 'saving', 'close', 20000.00),
(6, 'sam', 'f-12 surya nagar', '1234', 'sam@gmail.com', '1234-4556-5656', 'saving', 'active', 22000.00),
(7, 'kirank', 'hyderabad', '9390153461', 'kiran@gmail.com', '770473492010', 'saving', 'active', 40000.00);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `tid` int(11) NOT NULL,
  `dot` datetime DEFAULT current_timestamp(),
  `amount` int(10) DEFAULT NULL,
  `type` char(20) DEFAULT NULL,
  `acno` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`tid`, `dot`, `amount`, `type`, `acno`) VALUES
(1, '2020-10-16 00:00:00', 2000, 'deposit', 1),
(2, '2020-10-15 00:00:00', 2000, 'deposit', 2),
(3, '2020-10-18 00:00:00', 1200, 'withdraw', 1),
(4, NULL, 2000, 'deposit', 1),
(5, '2020-11-30 00:00:00', 200, 'deposit', 1),
(6, '2020-11-30 00:00:00', 2000, 'withdraw', 1),
(7, '2020-11-30 00:00:00', 200, 'withdraw', 1),
(8, '2020-12-01 00:00:00', 2000, 'deposit', 6),
(9, '2021-11-11 00:00:00', 40000, 'deposit', 1),
(10, '2021-11-11 00:00:00', 100, 'withdraw', 1),
(11, NULL, 600, 'ATMWDL', 12345),
(12, NULL, 500, 'ATMWDL', 12345),
(13, NULL, 500, 'ATMWDL', 12345),
(14, NULL, 500, 'ATMWDL', 12345),
(15, '2021-11-11 00:00:00', 100, 'ATMWDL', 12345),
(16, '2021-11-12 11:31:46', 100, 'ATMWDL', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `atmcards`
--
ALTER TABLE `atmcards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`acno`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`tid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `atmcards`
--
ALTER TABLE `atmcards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `acno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
