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
-- بنية الجدول `users`
--

CREATE TABLE `users` (
  `id` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `studentClass` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `lastName`, `studentClass`) VALUES
('063b9c1d-39f1-436d-accb-dc3032d14972', 'sophia.reed@example.com', '$2b$10$4GApVhf6J0ZL9VPKmqBmAeCKJKO9Hkv9WXSQxzcp8iZ/lwpNA/ZRy', 'sophia', 'reed', 'Junior'),
('1626795e-9a0e-4df3-802c-7a0383945569', 'ethan.jenkins@example.com', '$2b$10$UEUTA5pnqBoMtAZfoVySNekKq5dSzWZteaWMysWaWVCPb.cahcNke', 'ethan', 'jenkins', 'Sophomore'),
('17212d2a-9e1b-4aa5-b1c5-7ee044337cb9', 'mia.griffin@example.com', '$2b$10$rrU36zCFn1tE7mRaeGbJeOIo4/jEQreEhd6lPsFwAkpIqWNq7OXgO', 'mia', 'griffin', 'Senior'),
('44e105f2-6302-4f30-8409-60075936122d', 'benjamin.brooks@example.com', '$2b$10$h8EDU5106J/jwzyxpOmXK.CVfeYQUxf3YkMDyqN2yNOW99KNncJyy', 'benjamin', 'brooks', 'Senior'),
('4c54fc71-a9d1-4a09-8142-6cbaefca8ded', 'emma.emma@example.com', '$2b$10$Nu5j0iRDDip3L1IomadzKOuw2cZ/OlKU/EUhU.r4rZ7QrVoDkL2oy', 'emma', 'emma', 'Sophomore'),
('59faeb42-f747-4f4a-87a5-4b6b17ce33a7', 'elijah.foster@example.com', '$2b$10$e.uCZgqDzelsf0hOB47Mi.ArxysLLZCkD0sXZMn.pvQfalD8QRnF2', 'elijah', 'foster', 'Junior'),
('70ddde13-58c1-42d8-b762-c938dad463ff', 'olivia.cooper@example.com', '$2b$10$vIEs7TrFHrMIGjYdlmTWgeQARBHSsD1W52HAPCcWUhPuX7aV60FNO', 'olivia', 'cooper', 'Sophomore'),
('78333680-b97f-41df-a3b8-be0e3a2f70b3', 'amelia.rivera@example.com', '$2b$10$tzGrtzkx3VA9kCIdlPmnsuiydUmJ1wf8biJ0lpwsg3KVOWpdKp0Fi', 'amelia', 'rivera', 'Senior'),
('85f94a90-741e-4b1b-8579-4ed224b9b5d1', 'noah.carter@example.com', '$2b$10$rjyPildXoHmEu1Mnqod1ouHXHjN802L1olZnuNco39T.a/sEsdKOm', 'noah', 'carter', 'Sophomore'),
('93c29cd5-2883-4173-9be6-afecdb9c2d03', 'ava.hayes@example.com', '$2b$10$T4NVbDODIlsGZgPBr6.nbuCz8SqgxQo4t1Zs0U2Wvb4lXdJiT/n0q', 'ava', 'hayes', 'Sophomore'),
('aaf43e4e-f26a-49a0-8229-d522c2e0709d', 'liam.turner@example.com', '$2b$10$KpdhLVhhamJymX1CYAYl1ekhcd6ZWZY8Yv0kAFeo76cxHiAixih3q', 'Liam', 'Turner', 'Sophomore'),
('b203d7a0-34f9-44ac-8823-403e2009f764', 'lucas.simmons@example.com', '$2b$10$Grj43.DOB.RhTVohHGv1rOM3ia2st7RqFk.TFZ84otVmmG.Tc9H7a', 'lucas', 'simmons', 'Junior'),
('bbf1420d-46c5-487b-b9cd-bdb902f9b03a', 'james.morgan@example.com', '$2b$10$/DIViC.9xAAmXxrypK/8sOlQOKAZPIZiWL1AGT5WGsH3PgtIzetZO', 'james', 'morgan', 'Junior');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
