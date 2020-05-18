-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 18, 2020 at 09:58 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `fooddom`
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
('หญิงนุ่นเจ้าเก่า', 'U-squre'),
('หญิงนุ่นเจ้าเก่า', 'ฟิวเจอร์ปาร์ค รังสิต'),
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
(3, 'ไข่ดาว', 0),
(4, 'เบอร์เกอร์ดับเบิ้ลชีส ', 0),
(5, 'ชุดฟรีบักเก็ต', 5),
(6, 'ชุดจุใจบักเก็ต', 2),
(7, 'ชุดสุขใจบักเก็ต', 3),
(8, 'ปาร์ตี้บักเก็ต', 4),
(9, 'ไก่ไม่มีกระดูกสโมกกี้บาร์บีคิวบักเก็ต', 2),
(10, 'บักเก็ตรวมสุขไก่ไม่มีกระดูกสโมกกี้บาร์บีคิว', 4),
(11, 'ไก่พร้อมแชร์', 7),
(12, 'สุขล้นใจ', 6),
(13, 'เดอะบอกซ์ออลไรซ์', 1),
(14, 'เดอะบอกซ์ซิกเนเจอร์', 1),
(15, 'เป็ปซี่', 0),
(16, 'โกโก้มอลต์', 0),
(17, 'ชาไทยโฟลต', 0),
(18, 'ทาร์ตไข่', 0),
(19, 'ไอศกรีมโคน', 0),
(20, 'สตรอเบอรี่พายครีมบอล', 0),
(21, 'ข้าวไก่กรอบแกงเขียวหวาน', 0),
(22, 'หนังไก่ทอดบอนชอน', 1),
(23, 'ข้อไก่ทอด', 1),
(24, ' หนวดปลาหมึกทอดหม่าล่า', 1),
(25, ' ซุปหม่าล่ากิมจิ', 2),
(26, 'คิมมาริต๊อกบกกิ', 2),
(27, 'กิมจิ', 0),
(28, ' เนื้อปลาดอรี่ทอด', 2),
(29, 'ข้าวหน้าหมูบุลโกกิ', 2),
(30, 'บอนชอนคอมโบใหญ่', 4),
(31, ' เนื้ออก(ไร้กระดูก)ใหญ่', 4),
(32, 'อุด้งผัดเบคอนและกิมจิซอสไข่กุ้ง', 1),
(33, ' ซุปซุนดูบู', 2),
(34, ' เฟรนช์ฟรายส์', 0),
(35, ' สลัดไก่กรอบ', 2),
(36, 'ข้าวผัดอเมริกัน', 1),
(37, 'กุ้งเผา', 10),
(38, 'ข้าวผัดทะเล', 4),
(39, 'ข้าวผัดทะเล', 0),
(40, 'ข้าวราดกะเพรา หมู-ไก่ ', 0),
(41, 'ข้าวราดกะเพราทะเล', 1),
(42, 'ข้าวราด หมู-ไก่ ทอดกระเทียม ', 0),
(43, 'ข้าวราด หมู-ไก่ ทอดกระเทียม ', 1),
(44, 'ข้าวราดกะเพรา รวมมิตร ', 4),
(45, 'ข้าวราดกะเพรา รวมมิตร ', 0),
(46, 'ข้าวราดน้ำพริกเผา หมู-ไก่ ', 1),
(47, 'ข้าวราดน้ำพริกเผา หมู-ไก่ ', 2),
(48, 'ข้าวราดผัดพริกแกง ทะเล ', 1),
(49, 'เปรี้ยวหวาน หมู-ไก่', 3),
(50, 'เปรี้ยวหวาน หมู-ไก่ ', 2),
(51, 'ข้าวไข่เจียวหมูสับ ', 0),
(52, 'ยำผักกูดกุ้งสด', 5),
(53, 'ยำผักกูดกุ้งสด', 7),
(54, 'ต้มยำกุ้งน้ำข้น ', 6),
(55, 'ต้มยำกุ้งน้ำข้น ', 3),
(56, 'ขาหมูพะโล้', 8),
(57, 'ขาหมูเยอรมัน', 9),
(58, 'แกงส้มไข่ชะอมกุ้งสด ', 3),
(59, 'ปีกไก่ทอดเกลือ', 0),
(60, 'ปลาทับทิมทอดน้ำปลา', 4),
(61, 'ปลาทับทิมทอดน้ำปลา', 6),
(62, 'ปลาทับทิมราดพริกสามรส ', 7),
(63, 'ปลาทับทิมราดพริกสามรส ', 3),
(64, 'ผัดฉ่าทะเล ', 4),
(65, 'ปีกไก่สมุนไพร  ', 0),
(66, 'ปีกไก่สมุนไพร  ', 2),
(67, 'ปอเปี๊ยะกุ้งสด ', 5),
(68, 'ปอเปี๊ยะกุ้งสด ', 1),
(69, 'แกงเลียงกุ้งสด ', 3),
(70, 'ต้มแซ่บกระดูกหมู ', 1),
(71, 'ไก่ผัดเม็ดมะม่วง', 1),
(72, 'แกงจืดเต้าหู้หมูสับ ', 1),
(73, 'ปลาหมึกผัดไข่เค็ม ', 1),
(74, 'ปลาหมึกผัดไข่เค็ม ', 2),
(75, 'ปลาหมึกผัดผงกะหรี่ ', 3),
(76, 'ข้าวปลาหมึกผัดผงกะหรี่ ', 0),
(77, 'ยำขาหมูทอดกรอบ ', 1),
(78, 'ลาบหมู ', 1),
(79, 'ลาบหมู ', 0),
(80, 'ปลาทับทิมฉู่ฉี่', 3),
(81, 'ปลาทับทิมฉู่ฉี่', 5),
(82, 'ปลาทับทิมนึ่งมะนาว ', 7),
(83, 'ปลาทับทิมนึ่งมะนาว ', 8),
(84, 'สเต็ก', 8),
(85, 'สเต็ก', 9),
(86, 'พิซซ่า', 6),
(87, 'พิซซ่า', 3),
(88, 'สปาเก็ตตี้', 3),
(89, 'สปาเก็ตตี้', 5),
(90, 'ข้าวผัดผักน้ำมันหอยหมูกรอบ ', 0),
(91, 'ข้าวไข่เจียวกุ้งสับ ', 0),
(92, 'หมึกย่าง', 4),
(93, 'หมึกทอดกระเทียม', 4),
(94, 'หมึกทอดกระเทียม', 6),
(95, 'ส้มตำไทย', 0),
(96, 'ส้มตำไทย', 1),
(97, 'ส้มตำปูปลาร้า', 1),
(98, 'ไก่ย่าง', 4),
(99, 'ไก่ย่าง', 2),
(100, 'ข้าวเหนียว', 0),
(101, '้น้ำตกหมู', 0),
(102, 'น้ำตกหมู', 1),
(103, 'ลาบทอด', 1),
(104, 'ลาบทอด', 2);

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
('AAAAZ', 'e10adc3949ba59abbe56e057f20f883e', 'A', 'AAAA', '085-5657892'),
('admin', 'e10adc3949ba59abbe56e057f20f883e', 'Oat', 'Boonchu', '085-5657892'),
('apple', 'e10adc3949ba59abbe56e057f20f883e', 'Applez', 'Green', '085-5657892'),
('bamm', 'e10adc3949ba59abbe56e057f20f883e', 'Bamza', 'Bwonruth', '085-5657892'),
('banana', 'e10adc3949ba59abbe56e057f20f883e', 'Bananaz', 'Boat', '085-5657892'),
('BBBBZ', 'e10adc3949ba59abbe56e057f20f883e', 'B', 'BBBB', '085-5657892'),
('bear', 'e10adc3949ba59abbe56e057f20f883e', 'Bearz', 'Bearry', '085-5657892'),
('beeie', 'e10adc3949ba59abbe56e057f20f883e', 'Beez', 'Beey', '085-5657892'),
('benn', 'e10adc3949ba59abbe56e057f20f883e', 'Benza', 'Kakaa', '085-5657892'),
('bird', 'e10adc3949ba59abbe56e057f20f883e', 'Birdz', 'Birdy', '085-5657892'),
('catty', 'e10adc3949ba59abbe56e057f20f883e', 'Catz', 'Catty', '085-5657892'),
('CCCCZ', 'e10adc3949ba59abbe56e057f20f883e', 'C', 'CCCC', '085-5657892'),
('cinn', 'e10adc3949ba59abbe56e057f20f883e', 'Cinza', 'Cinnamon', '085-5657892'),
('coffee', 'e10adc3949ba59abbe56e057f20f883e', 'Coffeez', 'Late', '085-5657892'),
('coka', 'e10adc3949ba59abbe56e057f20f883e', 'Cokaza', 'Sudjai', '085-5657892'),
('coke', 'e10adc3949ba59abbe56e057f20f883e', 'Cokeza', 'Sudjai', '085-5657892'),
('cola', 'e10adc3949ba59abbe56e057f20f883e', 'Colaza', 'Sudjai', '085-5657892'),
('cowie', 'e10adc3949ba59abbe56e057f20f883e', 'Cowz', 'Cowy', '085-5657892'),
('DDDDZ', 'e10adc3949ba59abbe56e057f20f883e', 'D', 'DDDD', '085-5657892'),
('dear', 'e10adc3949ba59abbe56e057f20f883e', 'Dearz', 'Dearry', '085-5657892'),
('doggy', 'e10adc3949ba59abbe56e057f20f883e', 'Dogz', 'Doggy', '085-5657892'),
('EEEEZ', 'e10adc3949ba59abbe56e057f20f883e', 'E', 'EEEE', '085-5657892'),
('eight', 'e10adc3949ba59abbe56e057f20f883e', 'Eightz', 'Eighth', '085-5657892'),
('fayy', 'e10adc3949ba59abbe56e057f20f883e', 'Faymous', 'Cutecute', '085-5657892'),
('FFFFZ', 'e10adc3949ba59abbe56e057f20f883e', 'F', 'FFFF', '085-5657892'),
('five', 'e10adc3949ba59abbe56e057f20f883e', 'Fivez', 'Fifth', '085-5657892'),
('four', 'e10adc3949ba59abbe56e057f20f883e', 'Fourz', 'Fourth', '085-5657892'),
('frame', 'e10adc3949ba59abbe56e057f20f883e', 'Frameza', 'Pororo', '085-5657892'),
('geeie', 'e10adc3949ba59abbe56e057f20f883e', 'Geeza', 'Gigiz', '085-5657892'),
('GGGGZ', 'e10adc3949ba59abbe56e057f20f883e', 'G', 'GGGG', '085-5657892'),
('grape', 'e10adc3949ba59abbe56e057f20f883e', 'Grapez', 'Purple', '085-5657892'),
('greentea', 'e10adc3949ba59abbe56e057f20f883e', 'Teaz', 'Mutcha', '085-5657892'),
('grill', 'e10adc3949ba59abbe56e057f20f883e', 'Grillza', 'Hahaha', '085-5657892'),
('HHHHZ', 'e10adc3949ba59abbe56e057f20f883e', 'H', 'HHHH', '085-5657892'),
('hundrad', 'e10adc3949ba59abbe56e057f20f883e', 'Onezzz', 'Royy', '085-5657892'),
('icee', 'e10adc3949ba59abbe56e057f20f883e', 'Iceza', 'Creamz', '085-5657892'),
('IIIIZ', 'e10adc3949ba59abbe56e057f20f883e', 'I', 'IIII', '085-5657892'),
('jayy', 'e10adc3949ba59abbe56e057f20f883e', 'Jayza', 'Jayler', '085-5657892'),
('jinny', 'e10adc3949ba59abbe56e057f20f883e', 'Jinnyza', 'Aladin', '085-5657892'),
('JJJJZ', 'e10adc3949ba59abbe56e057f20f883e', 'J', 'JJJJ', '085-5657892'),
('kartoon', 'e10adc3949ba59abbe56e057f20f883e', 'Kartoonza', 'Network', '085-5657892'),
('khao', 'e10adc3949ba59abbe56e057f20f883e', 'Airin', 'Cuteza', '085-5657892'),
('kinn', 'e10adc3949ba59abbe56e057f20f883e', 'Krinza', 'Kakaaa', '085-5657892'),
('KKKKZ', 'e10adc3949ba59abbe56e057f20f883e', 'K', 'KKKK', '085-5657892'),
('kmin', 'e10adc3949ba59abbe56e057f20f883e', 'Kminza', 'Kminkmen', '085-5657892'),
('korn', 'e10adc3949ba59abbe56e057f20f883e', 'Kornz', 'Kornny', '085-5657892'),
('kream', 'e10adc3949ba59abbe56e057f20f883e', 'Kreamza', 'Aroyy', '085-5657892'),
('lipda', 'e10adc3949ba59abbe56e057f20f883e', 'Lipdaz', 'Stardaoy', '085-5657892'),
('LLLLZ', 'e10adc3949ba59abbe56e057f20f883e', 'L', 'LLLL', '085-5657892'),
('maxx', 'e10adc3949ba59abbe56e057f20f883e', 'Maxza', 'Minny', '085-5657892'),
('mayy', 'e10adc3949ba59abbe56e057f20f883e', 'Mayza', 'Tingting', '085-5657892'),
('milk', 'e10adc3949ba59abbe56e057f20f883e', 'Milkz', 'Tea', '085-5657892'),
('mimi', 'e10adc3949ba59abbe56e057f20f883e', 'Seenam', 'Potee', '085-5657892'),
('mind', 'e10adc3949ba59abbe56e057f20f883e', 'Mindza', 'Mindset', '085-5657892'),
('mint', 'e10adc3949ba59abbe56e057f20f883e', 'Mintz', 'Mintty', '085-5657892'),
('MMMMZ', 'e10adc3949ba59abbe56e057f20f883e', 'M', 'MMMM', '085-5657892'),
('mook', 'e10adc3949ba59abbe56e057f20f883e', 'Mookza', 'Milky', '085-5657892'),
('mooo', 'e10adc3949ba59abbe56e057f20f883e', 'Mooza', 'Oodood', '085-5657892'),
('neoy', 'e10adc3949ba59abbe56e057f20f883e', 'Neoyza', 'Bread', '085-5657892'),
('nine', 'e10adc3949ba59abbe56e057f20f883e', 'Ninez', 'Nineth', '085-5657892'),
('NNNNZ', 'e10adc3949ba59abbe56e057f20f883e', 'N', 'NNNN', '085-5657892'),
('north', 'e10adc3949ba59abbe56e057f20f883e', 'Northza', 'South', '085-5657892'),
('numkang', 'e10adc3949ba59abbe56e057f20f883e', 'Numkang', 'Som', '085-5657892'),
('Oatz', 'e10adc3949ba59abbe56e057f20f883e', 'Oat', 'Boonchu', '085-5657892'),
('onee', 'e10adc3949ba59abbe56e057f20f883e', 'Onez', 'First', '085-5657892'),
('OOOOZ', 'e10adc3949ba59abbe56e057f20f883e', 'O', 'OOOO', '085-5657892'),
('opal', 'e10adc3949ba59abbe56e057f20f883e', 'Opalza', 'Mungky', '085-5657892'),
('orange', 'e10adc3949ba59abbe56e057f20f883e', 'Somsom', 'Orangez', '085-5657892'),
('paper', 'e10adc3949ba59abbe56e057f20f883e', 'Paperza', 'Pencil', '085-5657892'),
('peem', 'e10adc3949ba59abbe56e057f20f883e', 'Premza', 'Poompoom', '085-5657892'),
('pimm', 'e10adc3949ba59abbe56e057f20f883e', 'Pimza', 'Kubkubb', '085-5657892'),
('pingping', 'e10adc3949ba59abbe56e057f20f883e', 'Pingpingza', 'Linhuy', '085-5657892'),
('PPPPZ', 'e10adc3949ba59abbe56e057f20f883e', 'P', 'PPPP', '085-5657892'),
('prae', 'e10adc3949ba59abbe56e057f20f883e', 'Praeza', 'Pimpim', '085-5657892'),
('puifai', 'e10adc3949ba59abbe56e057f20f883e', 'Puifaiza', 'Kanom', '085-5657892'),
('punn', 'e10adc3949ba59abbe56e057f20f883e', 'Punza', 'Bobby', '085-5657892'),
('QQQQZ', 'e10adc3949ba59abbe56e057f20f883e', 'Q', 'QQQQ', '085-5657892'),
('rabbit', 'e10adc3949ba59abbe56e057f20f883e', 'Rabbitz', 'Rabbitty', '085-5657892'),
('RRRRZ', 'e10adc3949ba59abbe56e057f20f883e', 'R', 'RRRR', '085-5657892'),
('seven', 'e10adc3949ba59abbe56e057f20f883e', 'Sevenz', 'Seventh', '085-5657892'),
('sixx', 'e10adc3949ba59abbe56e057f20f883e', 'Sixz', 'Sixth', '085-5657892'),
('sprite', 'e10adc3949ba59abbe56e057f20f883e', 'Spriteza', 'Sudjai', '085-5657892'),
('spyy', 'e10adc3949ba59abbe56e057f20f883e', 'Spyza', 'Jeedjad', '085-5657892'),
('SSSSZ', 'e10adc3949ba59abbe56e057f20f883e', 'S', 'SSSS', '085-5657892'),
('suay', 'e10adc3949ba59abbe56e057f20f883e', 'Suayza', 'Sudsuay', '085-5657892'),
('tangkwa', 'e10adc3949ba59abbe56e057f20f883e', 'Tangkwaz', 'Tangtang', '085-5657892'),
('tenn', 'e10adc3949ba59abbe56e057f20f883e', 'Ben', 'Tenth', '085-5657892'),
('teww', 'e10adc3949ba59abbe56e057f20f883e', 'Tewza', 'Bowwy', '085-5657892'),
('thousond', 'e10adc3949ba59abbe56e057f20f883e', 'Onezz', 'Pann', '085-5657892'),
('three', 'e10adc3949ba59abbe56e057f20f883e', 'Threez', 'Third', '085-5657892'),
('TTTTZ', 'e10adc3949ba59abbe56e057f20f883e', 'T', 'TTTT', '085-5657892'),
('tukta', 'e10adc3949ba59abbe56e057f20f883e', 'Tuktaza', 'Narukk', '085-5657892'),
('twoo', 'e10adc3949ba59abbe56e057f20f883e', 'Twoz', 'Second', '085-5657892'),
('UUUUZ', 'e10adc3949ba59abbe56e057f20f883e', 'U', 'UUUU', '085-5657892'),
('VVVVZ', 'e10adc3949ba59abbe56e057f20f883e', 'V', 'VVVV', '085-5657892'),
('watermelon', 'e10adc3949ba59abbe56e057f20f883e', 'Bug', 'Tangmo', '085-5657892'),
('WWWWZ', 'e10adc3949ba59abbe56e057f20f883e', 'W', 'WWWW', '085-5657892'),
('XXXXZ', 'e10adc3949ba59abbe56e057f20f883e', 'X', 'XXXX', '085-5657892'),
('yelly', 'e10adc3949ba59abbe56e057f20f883e', 'Yellyz', 'Yummy', '085-5657892'),
('yinn', 'e10adc3949ba59abbe56e057f20f883e', 'Yinza', 'Ningning', '085-5657892'),
('YYYYZ', 'e10adc3949ba59abbe56e057f20f883e', 'Y', 'YYYY', '085-5657892'),
('ZZZZZ', 'e10adc3949ba59abbe56e057f20f883e', 'Z', 'ZZZZ', '085-5657892');

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
('KFC', 4, 79),
('KFC', 5, 515),
('KFC', 6, 299),
('KFC', 7, 399),
('KFC', 8, 499),
('KFC', 9, 259),
('KFC', 10, 499),
('KFC', 11, 715),
('KFC', 12, 615),
('KFC', 13, 149),
('KFC', 14, 149),
('KFC', 15, 35),
('KFC', 16, 25),
('KFC', 17, 45),
('KFC', 18, 22),
('KFC', 19, 10),
('KFC', 20, 29),
('KFC', 21, 59),
('KFC', 34, 59),
('บอนชอน', 1, 20),
('บอนชอน', 2, 30),
('บอนชอน', 22, 128),
('บอนชอน', 23, 139),
('บอนชอน', 24, 235),
('บอนชอน', 25, 235),
('บอนชอน', 26, 230),
('บอนชอน', 27, 59),
('บอนชอน', 28, 289),
('บอนชอน', 29, 209),
('บอนชอน', 30, 433),
('บอนชอน', 31, 465),
('บอนชอน', 32, 198),
('บอนชอน', 33, 214),
('บอนชอน', 34, 96),
('บอนชอน', 35, 203),
('บอนชอน', 100, 30),
('หญิงนุ่นเจ้าเก่า', 1, 20),
('หญิงนุ่นเจ้าเก่า', 15, 30),
('หญิงนุ่นเจ้าเก่า', 16, 60),
('หญิงนุ่นเจ้าเก่า', 17, 50),
('หญิงนุ่นเจ้าเก่า', 19, 30),
('หญิงนุ่นเจ้าเก่า', 23, 190),
('หญิงนุ่นเจ้าเก่า', 28, 210),
('หญิงนุ่นเจ้าเก่า', 36, 198),
('หญิงนุ่นเจ้าเก่า', 37, 1000),
('หญิงนุ่นเจ้าเก่า', 38, 410),
('หญิงนุ่นเจ้าเก่า', 40, 89),
('หญิงนุ่นเจ้าเก่า', 42, 80),
('หญิงนุ่นเจ้าเก่า', 44, 400),
('หญิงนุ่นเจ้าเก่า', 46, 140),
('หญิงนุ่นเจ้าเก่า', 48, 100),
('หญิงนุ่นเจ้าเก่า', 49, 300),
('หญิงนุ่นเจ้าเก่า', 51, 30),
('หญิงนุ่นเจ้าเก่า', 52, 500),
('หญิงนุ่นเจ้าเก่า', 54, 699),
('หญิงนุ่นเจ้าเก่า', 57, 990),
('หญิงนุ่นเจ้าเก่า', 62, 750),
('หญิงนุ่นเจ้าเก่า', 63, 330),
('หญิงนุ่นเจ้าเก่า', 66, 200),
('หญิงนุ่นเจ้าเก่า', 80, 340),
('หญิงนุ่นเจ้าเก่า', 82, 720),
('หญิงนุ่นเจ้าเก่า', 83, 800),
('หญิงนุ่นเจ้าเก่า', 84, 810),
('หญิงนุ่นเจ้าเก่า', 88, 300),
('หญิงนุ่นเจ้าเก่า', 89, 569),
('หญิงนุ่นเจ้าเก่า', 90, 90),
('หญิงนุ่นเจ้าเก่า', 91, 60),
('หญิงนุ่นเจ้าเก่า', 93, 420),
('หญิงนุ่นเจ้าเก่า', 94, 610),
('หญิงนุ่นเจ้าเก่า', 95, 70),
('หญิงนุ่นเจ้าเก่า', 96, 120),
('หญิงนุ่นเจ้าเก่า', 100, 15),
('เจ๊โม', 1, 0),
('เจ๊โม', 3, 5),
('เจ๊โม', 15, 25),
('เจ๊โม', 19, 20),
('เจ๊โม', 21, 90),
('เจ๊โม', 23, 199),
('เจ๊โม', 24, 190),
('เจ๊โม', 25, 299),
('เจ๊โม', 29, 280),
('เจ๊โม', 35, 230),
('เจ๊โม', 36, 150),
('เจ๊โม', 37, 1500),
('เจ๊โม', 39, 60),
('เจ๊โม', 41, 139),
('เจ๊โม', 43, 110),
('เจ๊โม', 45, 90),
('เจ๊โม', 47, 200),
('เจ๊โม', 50, 200),
('เจ๊โม', 51, 25),
('เจ๊โม', 53, 720),
('เจ๊โม', 55, 389),
('เจ๊โม', 83, 850),
('เจ๊โม', 84, 890),
('เจ๊โม', 85, 950),
('เจ๊โม', 90, 60),
('เจ๊โม', 92, 450),
('เจ๊โม', 94, 680),
('เจ๊โม', 98, 450),
('เจ๊โม', 100, 20);

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
(4, '400-499'),
(5, '500-599'),
(6, '600-699'),
(7, '700-799'),
(8, '800-899'),
(9, '900-999'),
(10, 'มากกว่า1000');

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
('บอนชอน', 0),
('หญิงนุ่นเจ้าเก่า', 0),
('เจ๊โม', 0),
('KFC', 1),
('บอนชอน', 1),
('หญิงนุ่นเจ้าเก่า', 1),
('เจ๊โม', 1),
('KFC', 2),
('บอนชอน', 2),
('หญิงนุ่นเจ้าเก่า', 2),
('เจ๊โม', 2),
('KFC', 3),
('หญิงนุ่นเจ้าเก่า', 3),
('เจ๊โม', 3),
('KFC', 4),
('บอนชอน', 4),
('หญิงนุ่นเจ้าเก่า', 4),
('เจ๊โม', 4),
('KFC', 5),
('หญิงนุ่นเจ้าเก่า', 5),
('KFC', 6),
('หญิงนุ่นเจ้าเก่า', 6),
('เจ๊โม', 6),
('KFC', 7),
('หญิงนุ่นเจ้าเก่า', 7),
('เจ๊โม', 7),
('หญิงนุ่นเจ้าเก่า', 8),
('เจ๊โม', 8),
('หญิงนุ่นเจ้าเก่า', 9),
('เจ๊โม', 9),
('หญิงนุ่นเจ้าเก่า', 10),
('เจ๊โม', 10);

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
('บอนชอน', '09.30-22.30'),
('หญิงนุ่นเจ้าเก่า', '06:00-19:00'),
('เจ๊โม', '00:00-07:00');

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
(11, 'บอนชอน', 4),
(3, 'หญิงนุ่นเจ้าเก่า', 10),
(5, 'หญิงนุ่นเจ้าเก่า', 4),
(10, 'หญิงนุ่นเจ้าเก่า', 8),
(15, 'หญิงนุ่นเจ้าเก่า', 15),
(20, 'หญิงนุ่นเจ้าเก่า', 10),
(1, 'เจ๊โม', 2),
(2, 'เจ๊โม', 10),
(5, 'เจ๊โม', 5),
(7, 'เจ๊โม', 3);

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
  MODIFY `food_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

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
