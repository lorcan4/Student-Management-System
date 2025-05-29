-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 29 مايو 2025 الساعة 23:28
-- إصدار الخادم: 10.4.21-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Student-Management-System`
--

-- --------------------------------------------------------

--
-- بنية الجدول `tutors`
--

CREATE TABLE `tutors` (
  `id` varchar(20) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `tutors`
--

INSERT INTO `tutors` (`id`, `subject`, `password`) VALUES
('BIOX901', 'Biology', 'bioSecure99'),
('CHEM77', 'Chemistry', 'chem!pass'),
('ENG7890', 'English', 'eng_pass_01'),
('GEO3007', 'Geography', 'geo!map#77'),
('HIST88', 'History', 'histo2025'),
('PHY2024', 'Physics', 'physics2024'),
('TUT1001', 'Mathematics', 'math12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tutors`
--
ALTER TABLE `tutors`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
