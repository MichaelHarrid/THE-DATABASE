-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2020 at 05:36 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sms`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `address_id` int(50) NOT NULL,
  `S_id` int(50) NOT NULL,
  `fullAddrs` varchar(100) NOT NULL,
  `IATF_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_id`, `S_id`, `fullAddrs`, `IATF_id`) VALUES
(500, 100, '042 Mcguire Terrace', 700),
(501, 101, '68 Dorton Terrace', 701),
(502, 102, '58470 Prairieview Park', 702),
(503, 103, '73312 Grasskamp Crossing', 703),
(504, 104, '00 Heath Hill', 704),
(505, 105, '00 Heath Hill Side', 705);

-- --------------------------------------------------------

--
-- Table structure for table `autopay`
--

CREATE TABLE `autopay` (
  `autopay_id` int(50) NOT NULL,
  `autopay` varchar(50) NOT NULL,
  `credit_card` int(50) NOT NULL,
  `debit_card` int(50) NOT NULL,
  `check_act` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bldng`
--

CREATE TABLE `bldng` (
  `bldng_id` int(50) NOT NULL,
  `bldng_name` varchar(50) NOT NULL,
  `day` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bldng`
--

INSERT INTO `bldng` (`bldng_id`, `bldng_name`, `day`) VALUES
(8000, 'stMary', 'morning'),
(8001, 'Fatima', 'morning'),
(8002, 'stMary', 'evening'),
(8003, 'Fatima', 'evening');

-- --------------------------------------------------------

--
-- Table structure for table `cashier`
--

CREATE TABLE `cashier` (
  `financial_id` int(50) NOT NULL,
  `S_id` int(50) NOT NULL,
  `balance` int(50) NOT NULL,
  `due_date` date NOT NULL,
  `parital_amt` int(50) NOT NULL,
  `Autopay_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cashier`
--

INSERT INTO `cashier` (`financial_id`, `S_id`, `balance`, `due_date`, `parital_amt`, `Autopay_id`) VALUES
(400, 100, 15450, '2021-01-14', 3500, '3000'),
(401, 102, 10250, '2021-01-14', 2500, '3001'),
(402, 102, 0, '0000-00-00', 0, '3002'),
(403, 103, 9850, '2021-01-14', 1500, '3003'),
(404, 104, 2564, '2021-01-14', 500, '3004'),
(405, 105, 13344, '2021-01-14', 3500, '3005');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(50) NOT NULL,
  `courses` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `courses`) VALUES
(9000, 'BSIT'),
(9001, 'BSHM'),
(9002, 'BSBA'),
(9003, 'BSED'),
(9004, 'BSSW'),
(9005, 'BEED');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `details_id` int(50) NOT NULL,
  `S_id` int(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `cellphone` int(50) NOT NULL,
  `telephone` int(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address_id` int(50) NOT NULL,
  `registrar_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`details_id`, `S_id`, `gender`, `cellphone`, `telephone`, `email`, `address_id`, `registrar_id`) VALUES
(200, 100, 'Male', 925550179, 2025550179, 'vfarreil0@techcrunch.com', 500, 600),
(201, 101, 'Female', 921645781, 2021643567, 'acollins1@unc.edu', 501, 601),
(202, 102, 'Male', 975645414, 2024478524, 'dskydall2@marketwatch.com', 502, 602),
(203, 103, 'Female', 945456546, 456467776, 'gzupo3@mashable.com', 503, 603),
(204, 104, 'Female', 974456456, 2020456456, 'cbotger4@gnu.org', 504, 604),
(205, 105, 'Female', 945456456, 2024578914, 'asawdy5@chicagotribune.com', 505, 605);

-- --------------------------------------------------------

--
-- Table structure for table `iatf`
--

CREATE TABLE `iatf` (
  `IATF_id` int(50) NOT NULL,
  `address_id` int(50) NOT NULL,
  `is_lockdown` varchar(50) NOT NULL,
  `is_highRisk` varchar(50) NOT NULL,
  `investigation` varchar(100) NOT NULL,
  `quarantine_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `iatf`
--

INSERT INTO `iatf` (`IATF_id`, `address_id`, `is_lockdown`, `is_highRisk`, `investigation`, `quarantine_id`) VALUES
(700, 500, 'YES', 'YES', 'NO', 800),
(701, 501, 'NO', 'NO', 'NO', 801),
(702, 502, 'NO', 'NO', 'NO', 802),
(703, 503, 'NO', 'NO', 'NO', 803),
(704, 504, 'NO', 'NO', 'NO', 804),
(705, 505, 'NO', 'NO', 'NO', 805);

-- --------------------------------------------------------

--
-- Table structure for table `quarantine`
--

CREATE TABLE `quarantine` (
  `quarantine_id` int(11) NOT NULL,
  `quarantine` varchar(50) NOT NULL,
  `days` int(11) NOT NULL,
  `IATF_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quarantine`
--

INSERT INTO `quarantine` (`quarantine_id`, `quarantine`, `days`, `IATF_id`) VALUES
(800, 'YES', 14, 700),
(801, 'NO', 0, 701),
(802, 'NO', 0, 702),
(803, 'NO', 0, 703),
(804, 'NO', 0, 704),
(805, 'NO', 0, 705);

-- --------------------------------------------------------

--
-- Table structure for table `registrar`
--

CREATE TABLE `registrar` (
  `registrar_id` int(50) NOT NULL,
  `NSO` varchar(50) NOT NULL,
  `Form137` varchar(50) NOT NULL,
  `medical` varchar(50) NOT NULL,
  `year` varchar(50) NOT NULL,
  `clearance` varchar(50) NOT NULL,
  `enrolled_on` date NOT NULL,
  `subjects_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registrar`
--

INSERT INTO `registrar` (`registrar_id`, `NSO`, `Form137`, `medical`, `year`, `clearance`, `enrolled_on`, `subjects_id`) VALUES
(600, 'NO', 'YES', 'YES', '3rd-Year', 'NO', '2020-06-08', 900),
(601, 'YES', 'YES', 'NO', '3rd-Year', 'YES', '2020-06-09', 901),
(602, 'YES', 'YES', 'YES', '3rd-Year', 'YES', '2020-06-09', 902),
(603, 'YES', 'YES', 'NO', 'YES', 'NO', '2020-06-09', 903),
(604, 'NO', 'YES', 'YES', '3rd-Year', 'NO', '2020-06-08', 903);

-- --------------------------------------------------------

--
-- Table structure for table `sa`
--

CREATE TABLE `sa` (
  `S.A_id` int(50) NOT NULL,
  `S_id` int(50) NOT NULL,
  `applied_on` date NOT NULL,
  `Faculty` char(20) DEFAULT NULL,
  `registrar` varchar(50) NOT NULL,
  `I.T_dept` varchar(50) NOT NULL,
  `Cashier` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sa`
--

INSERT INTO `sa` (`S.A_id`, `S_id`, `applied_on`, `Faculty`, `registrar`, `I.T_dept`, `Cashier`) VALUES
(2000, 100, '2020-06-08', 'NO', 'NO', 'YES', 'NO'),
(2001, 101, '2020-06-10', 'NO', 'YES', 'NO', 'NO'),
(2002, 102, '2020-06-09', 'YES', 'NO', 'NO', 'NO'),
(2003, 103, '2020-06-08', 'NO', 'NO', 'NO', 'YES'),
(2004, 104, '0000-00-00', 'NO', 'NO', 'NO', 'NO'),
(2005, 105, '2020-06-05', 'NO', 'NO', 'YES', 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `status_id` int(50) NOT NULL,
  `regular` varchar(50) NOT NULL,
  `working` varchar(50) NOT NULL,
  `sa_id` int(50) NOT NULL,
  `scholarship` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `S_id` int(50) NOT NULL,
  `Sname` varchar(100) NOT NULL,
  `SLname` varchar(100) NOT NULL,
  `details_id` int(50) NOT NULL,
  `Sstatus_id` int(50) NOT NULL,
  `Sfinancial_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`S_id`, `Sname`, `SLname`, `details_id`, `Sstatus_id`, `Sfinancial_id`) VALUES
(100, 'Minor', 'Cheake', 200, 300, 400),
(101, 'Berky', 'Laborda', 201, 301, 401),
(102, 'Adolf', 'Fipp', 202, 302, 402),
(103, 'Frederick', 'Stokell', 203, 303, 403),
(104, 'Baird', 'Stuckley', 204, 304, 404),
(105, 'Buiron', 'Weedall', 205, 305, 405);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` char(50) DEFAULT NULL,
  `S_id` int(50) NOT NULL,
  `IT301` double NOT NULL,
  `IT302` double NOT NULL,
  `IT303` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `S_id`, `IT301`, `IT302`, `IT303`) VALUES
('9000', 100, 85.1, 79.2, 86.7),
('9001', 101, 87.2, 97.4, 98.4),
('9002', 102, 80.3, 78.5, 75.5),
('9003', 103, 90.1, 89.4, 84.5),
('9004', 104, 89.7, 87.8, 98.7),
('9005', 105, 87.5, 86.5, 84.4);

-- --------------------------------------------------------

--
-- Table structure for table `total_stu`
--

CREATE TABLE `total_stu` (
  `total_id` int(50) NOT NULL,
  `registrar_id` int(50) NOT NULL,
  `1stYr` int(50) NOT NULL,
  `2ndYr` int(50) NOT NULL,
  `3rdYr` int(50) NOT NULL,
  `4thYr` int(50) NOT NULL,
  `day` varchar(50) NOT NULL,
  `schYr` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `total_stu`
--

INSERT INTO `total_stu` (`total_id`, `registrar_id`, `1stYr`, `2ndYr`, `3rdYr`, `4thYr`, `day`, `schYr`) VALUES
(4000, 600, 456, 546, 123, 564, 'morning', '19-20'),
(4001, 601, 486, 564, 456, 264, 'evening', '19-20'),
(4002, 602, 456, 457, 345, 214, 'morning', '18-19'),
(4003, 603, 341, 241, 345, 734, 'evening', '18-19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`S_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `S_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
