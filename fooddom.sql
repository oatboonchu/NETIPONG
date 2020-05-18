-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 15, 2020 at 04:02 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fooddom2`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `res_name` varchar(50) NOT NULL,
  `res_address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`res_name`, `res_address`) VALUES
('KFC', 'TU DOME'),
('KFC', 'โรงพยาบาล ธรรมศาสตร์'),
('บอนชอน', 'ฟิวเจอร์'),
('เจ๊โม', 'บ้านแตงโม');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `food_ID` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `number_range` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`food_ID`, `name`, `number_range`) VALUES
(1, 'ข้าวเปล่า', 0),
(2, 'น้ำดื่ม', 0),
(3, 'ไข่ดาว', 0);

-- --------------------------------------------------------

--
-- Table structure for table `func_random`
--

CREATE TABLE `func_random` (
  `func_ID` int(10) NOT NULL,
  `date` varchar(19) NOT NULL,
  `have_price` tinyint(1) NOT NULL,
  `username` varchar(20) NOT NULL,
  `res_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `func_random`
--

INSERT INTO `func_random` (`func_ID`, `date`, `have_price`, `username`, `res_name`) VALUES
(1, '2008-11-11 13:23:44', 0, 'admin', 'บอนชอน'),
(2, '2008-11-11 13:23:44', 0, 'Oatz', 'KFC');

-- --------------------------------------------------------

--
-- Table structure for table `func_select`
--

CREATE TABLE `func_select` (
  `func_ID` int(10) NOT NULL,
  `date` varchar(19) NOT NULL,
  `have_price` tinyint(1) NOT NULL,
  `username` varchar(20) NOT NULL,
  `res_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `func_select`
--

INSERT INTO `func_select` (`func_ID`, `date`, `have_price`, `username`, `res_name`) VALUES
(2, '2008-11-11 13:23:44', 0, 'Oatz', 'บอนชอน');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `Fname` varchar(50) NOT NULL,
  `Lname` varchar(50) NOT NULL,
  `phone` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`username`, `password`, `Fname`, `Lname`, `phone`) VALUES
('admin', 'e10adc3949ba59abbe56e057f20f883e', 'Oat', 'Boonchu', '085-5657892'),
('Oatz', 'e10adc3949ba59abbe56e057f20f883e', 'Oat', 'Boonchu', '085-5657892');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `res_name` varchar(50) NOT NULL,
  `food_ID` int(20) NOT NULL,
  `prices` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`res_name`, `food_ID`, `prices`) VALUES
('KFC', 1, 10),
('KFC', 2, 10),
('บอนชอน', 1, 20),
('บอนชอน', 2, 30),
('เจ๊โม', 1, 0),
('เจ๊โม', 3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `rangeprice`
--

CREATE TABLE `rangeprice` (
  `number_range` int(11) NOT NULL,
  `price_range` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rangeprice`
--

INSERT INTO `rangeprice` (`number_range`, `price_range`) VALUES
(0, '0-99'),
(1, '100-199'),
(2, '200-299'),
(3, '300-399'),
(4, '400-499');

-- --------------------------------------------------------

--
-- Table structure for table `ref_range`
--

CREATE TABLE `ref_range` (
  `res_name` varchar(50) NOT NULL,
  `number_range` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ref_range`
--

INSERT INTO `ref_range` (`res_name`, `number_range`) VALUES
('KFC', 0),
('เจ๊โม', 0),
('KFC', 1),
('บอนชอน', 1),
('KFC', 2),
('บอนชอน', 2),
('KFC', 4);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `name` varchar(50) NOT NULL,
  `open_close` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`name`, `open_close`) VALUES
('KFC', '10.00-21.00'),
('บอนชอน', '8.00-9.00'),
('เจ๊โม', '0.00-0.01');

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `No_Table` int(20) NOT NULL,
  `res_name` varchar(50) NOT NULL,
  `chair` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`No_Table`, `res_name`, `chair`) VALUES
(1, 'KFC', 5),
(2, 'KFC', 3),
(1, 'บอนชอน', 4),
(2, 'บอนชอน', 5),
(1, 'เจ๊โม', 2),
(2, 'เจ๊โม', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`res_name`,`res_address`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`food_ID`),
  ADD KEY `number_range` (`number_range`);

--
-- Indexes for table `func_random`
--
ALTER TABLE `func_random`
  ADD PRIMARY KEY (`func_ID`),
  ADD KEY `username` (`username`,`res_name`),
  ADD KEY `res_name` (`res_name`);

--
-- Indexes for table `func_select`
--
ALTER TABLE `func_select`
  ADD PRIMARY KEY (`func_ID`),
  ADD KEY `username` (`username`,`res_name`),
  ADD KEY `res_name` (`res_name`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`res_name`,`food_ID`),
  ADD KEY `food_ID` (`food_ID`);

--
-- Indexes for table `rangeprice`
--
ALTER TABLE `rangeprice`
  ADD PRIMARY KEY (`number_range`);

--
-- Indexes for table `ref_range`
--
ALTER TABLE `ref_range`
  ADD PRIMARY KEY (`res_name`,`number_range`),
  ADD KEY `number_range` (`number_range`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`res_name`,`No_Table`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `food_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `func_random`
--
ALTER TABLE `func_random`
  MODIFY `func_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `func_select`
--
ALTER TABLE `func_select`
  MODIFY `func_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`res_name`) REFERENCES `restaurant` (`name`);

--
-- Constraints for table `food`
--
ALTER TABLE `food`
  ADD CONSTRAINT `food_ibfk_2` FOREIGN KEY (`number_range`) REFERENCES `rangeprice` (`number_range`);

--
-- Constraints for table `func_random`
--
ALTER TABLE `func_random`
  ADD CONSTRAINT `func_random_ibfk_1` FOREIGN KEY (`username`) REFERENCES `member` (`username`),
  ADD CONSTRAINT `func_random_ibfk_2` FOREIGN KEY (`res_name`) REFERENCES `restaurant` (`name`);

--
-- Constraints for table `func_select`
--
ALTER TABLE `func_select`
  ADD CONSTRAINT `func_select_ibfk_1` FOREIGN KEY (`username`) REFERENCES `member` (`username`),
  ADD CONSTRAINT `func_select_ibfk_2` FOREIGN KEY (`res_name`) REFERENCES `restaurant` (`name`);

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`res_name`) REFERENCES `restaurant` (`name`),
  ADD CONSTRAINT `menu_ibfk_2` FOREIGN KEY (`food_ID`) REFERENCES `food` (`food_ID`);

--
-- Constraints for table `ref_range`
--
ALTER TABLE `ref_range`
  ADD CONSTRAINT `ref_range_ibfk_1` FOREIGN KEY (`res_name`) REFERENCES `restaurant` (`name`),
  ADD CONSTRAINT `ref_range_ibfk_2` FOREIGN KEY (`number_range`) REFERENCES `rangeprice` (`number_range`);

--
-- Constraints for table `tables`
--
ALTER TABLE `tables`
  ADD CONSTRAINT `tables_ibfk_1` FOREIGN KEY (`res_name`) REFERENCES `restaurant` (`name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
