-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2017 at 09:52 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `oep`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE IF NOT EXISTS `doctor` (
  `name` text CHARACTER SET armscii8 COLLATE armscii8_bin NOT NULL,
  `shortname` text NOT NULL,
  `speciality` text NOT NULL,
  `experience` float NOT NULL,
  `hospital` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `locality` text NOT NULL,
  `Fees` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`name`, `shortname`, `speciality`, `experience`, `hospital`, `address`, `locality`, `Fees`) VALUES
('Dr. Alpesh Patel', 'Alpesh', 'Dentist', 9, 'Beyond Smiles Dental Clinic & Implant Centre', '1st Floor, Anklav Main Market, Beside Bank of Baroda, Anklav, Anand', 'Anklav', 100),
('Dr. Ronak Panchal', 'Ronak', 'Dentist', 11, 'Shakti Orthodontic Clinic & Implant Centre', '205/206, Ramshikhar Complex, Opp Vaibhav Complex, Nr New Bus Stand,Anand', 'New Bus Stand', 200),
('Dr. Chirag Tomboli', 'Chirag', 'Homeopath', 16, 'Prachi Homeo Clinic', 'G-18, R.K. Complex, Mahalaxmi Char Rasta, Karamsad Road, Mota Bazar, Opposite Home Science', 'Mota Bazar', 500),
('Dr. Amit Patel', 'Amit', 'Opthalmologist', 20, 'Mangalya Eye Hospital', 'Ajanta House, Mafair Road, Anand', 'Mafair Road', 400),
('Dr. Pratik Joshi', 'Pratik', 'Orthopaedist', 3, 'Krishna Hospital', 'Shree Krishna hospital, Pramukh Swami medical college, Karamsad, Anand', 'Karamsad', 50),
('Dr. Christi Joesph Samuel', 'Joseph', 'General Physician', 36, 'Lifespan Diabetes Clinic', '203, Vandemataram Complex, Bhalej road, Anand, Opp pioneer High School, Anand', 'Bhalej Road', 500),
('Dr. Rishee Patel', 'Rishee', 'Physiotherapist', 5, 'Curex Rehabilitation Clinic', 'Vachali Khadki, Anand', 'Anand', 500),
('Dr. Soaham Desai', 'Soham', 'Neurologist', 17, 'Krishna Hospital', 'Shree Krishna hospital, Pramukh Swami medical college, Karamsad, Anand', ' Karamsad', 200),
('Dr. Girish Jethwa', 'Girish', 'Opthalmologist', 7, 'Jethwa Eye Hospital', 'Desai Lane, Anand Town, Nr. Naya Padkar Press, Anand', 'Naya Padkar Press', 400),
('Dr. Reshma Patel', 'Reshma', 'Gynecologist', 14, 'Kaival Hospital', 'Station Road, Naya Padkar Land, Anandnagar', 'Station Road', 400);

-- --------------------------------------------------------

--
-- Table structure for table `feedbck`
--

CREATE TABLE IF NOT EXISTS `feedbck` (
  `name` text NOT NULL,
  `feedback` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedbck`
--

INSERT INTO `feedbck` (`name`, `feedback`) VALUES
('Ronak', 'Good experience'),
('Girish', 'Very high apointment fees'),
('', ''),
('', ''),
('Amit', 'shfgbb'),
('Ronak', 'Okay!!'),
('Amit', 'bad appointment'),
('Amit', 'bad appointment'),
('Amit', 'bad appointment'),
('Amit', 'bad appointment'),
('Amit', 'bad appointment'),
('Amit', 'bad appointment');

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE IF NOT EXISTS `info` (
  `First` text NOT NULL,
  `Middle` text NOT NULL,
  `Last` text NOT NULL,
  `Gender` text NOT NULL,
  `State` text NOT NULL,
  `College` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`First`, `Middle`, `Last`, `Gender`, `State`, `College`) VALUES
('Sachi', 'R', 'Patel', 'female', 'gcet', ''),
('Sachi', 'R ', 'Patel', 'female', '', ''),
('Sachi', 'R ', 'Patel', 'female', 'gcet', ''),
('Sachi', 'R ', 'Patel', 'female', 'gcet', ''),
('asas', 'as', 'ddd', 'male', 'gcet', ''),
('sdsds', 'sdsdsds', 'ssdsd', 'female', 'jk', 'bvm');

-- --------------------------------------------------------

--
-- Table structure for table `labs`
--

CREATE TABLE IF NOT EXISTS `labs` (
  `name` text NOT NULL,
  `address` text NOT NULL,
  `locality` text NOT NULL,
  `cantact` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `labs`
--

INSERT INTO `labs` (`name`, `address`, `locality`, `cantact`) VALUES
('darpan laboratory', 'Shop No- 62/63, Shubhlaxmi Shopping Centre,\r\nStation Road,Anand Ho,\r\nAnand - 388001.\r\n', 'anand', '+91-982-527-7883'),
('Akshar Clinical Lab', 'Sun House, May Fair Road, \r\nAnand,\r\nGujarat', 'anand', '+91-2692-255289'),
('Usha Pathology Laboratory', 'Mota Bazar, \r\nV V Nagar, \r\nAnand, \r\nGujarat', 'V V Nagar', '+91-2692-232499'),
('Charotar Pathology Laboratory', 'Mayfair Road, \r\nAnand, \r\nGujarat', 'anand', '+91-2692-250738'),
('Vinayak Pathology Laboratory', 'G-16, Kishore Plaza, \r\nJ P Road, \r\nAnand, \r\nGujarat\r\n', 'anand', '+91-2692-233760'),
('Y K Pathology Laboratory', 'G-16, Kishor Plaza, \r\nJ P Road, \r\nAnand, \r\nGujarat\r\n', 'anand', '+91-2692-257418'),
('', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `newdoc`
--

CREATE TABLE IF NOT EXISTS `newdoc` (
  `loginid` varchar(20) NOT NULL,
  `password` varchar(12) NOT NULL,
  `MRN` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newdoc`
--

INSERT INTO `newdoc` (`loginid`, `password`, `MRN`) VALUES
('doc@gmail.com', '121212', 'a1b2c3'),
('doc1@gmail.com', '101010', 'a2b3c4'),
('doc3@gmail.com', '258963', 'a1b2c4'),
('jana@gmail.com', 'abc', '123445');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `loginid` varchar(20) NOT NULL,
  `password` varchar(12) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`loginid`, `password`) VALUES
('abc@gmail.com', '123456'),
('xyz@gmail.com', ''),
('yzx@gmail.com', '456789'),
('xyz@gmail.com', '123456'),
('pqr@gmail.com', '101010'),
('cba@gmail.com', '654321'),
('raj', 'chotu@123'),
('jan@abc.com', 'zxc'),
('janki@abc.com', 'asd'),
('jana@gmail.com', 'abc'),
('janki@abc.com', 'abc'),
('janki@abc.com', 'abc'),
('janki@abc.com', 'abc');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
