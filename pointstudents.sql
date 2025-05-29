-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 29 مايو 2025 الساعة 23:27
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
-- بنية الجدول `pointstudents`
--

CREATE TABLE `pointstudents` (
  `id` varchar(100) NOT NULL,
  `fullname` varchar(60) DEFAULT NULL,
  `point` decimal(10,2) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `pointstudents`
--

INSERT INTO `pointstudents` (`id`, `fullname`, `point`, `subject`) VALUES
('0302d0fd-6c7c-4eed-95c1-88014fc5b8a6', 'olivia cooper', '18.00', 'Physics'),
('0fc44f7e-0ecd-4312-8370-985e6b022724', 'benjamin brooks', '18.00', 'Mathematics'),
('1532ebcf-ba6c-4527-bbbc-6fb1bed236ca', 'emma emma', '20.00', 'Mathematics'),
('17e3b535-d9aa-4bed-90c1-d891fef47eba', 'benjamin brooks', '12.00', 'Physics'),
('1cce5b2f-2ff5-4d06-a4fd-9732740038e2', 'lucas simmons', '11.00', 'Mathematics'),
('21f683a4-b725-4f73-b53a-28b3104c6cc1', 'benjamin brooks', '13.00', 'History'),
('2fc07b5e-00c3-4551-87ff-594298204425', 'olivia cooper', '14.00', 'History'),
('392002b9-6110-4191-a26c-00f6dbcbb023', 'lucas simmons', '9.00', 'History'),
('39760338-8729-4c1e-9925-50bb81665e42', 'noah carter', '6.00', 'Physics'),
('40bbec58-6ce6-4371-b7db-80faf8e339ee', 'Liam Turner', '18.00', 'Biology'),
('41d8afec-8151-48ae-a134-f2e8e893c4f2', 'ethan jenkins', '14.00', 'Mathematics'),
('435de677-64d4-48fa-9a56-e951205287d4', 'Liam Turner', '20.00', 'Physics'),
('4df75257-ec59-4b13-a4d1-5d7071964826', 'mia griffin', '11.00', 'Physics'),
('552f7969-8044-4602-b716-83785e9e6e3d', 'sophia reed', '18.00', 'Biology'),
('61a88182-fb72-46aa-b40e-454d618bb7d5', 'amelia rivera', '14.00', 'Physics'),
('6916b0e3-94f8-4595-a8ea-d65be4f47593', 'james morgan', '12.00', 'Mathematics'),
('692722f3-8cc7-4da5-b41a-d6191c3e0b1a', 'ava hayes', '18.00', 'History'),
('748e8b4c-558a-4899-af37-6229b1338d20', 'noah carter', '17.00', 'Mathematics'),
('7c3c8382-ad42-4190-a245-71116429017e', 'elijah foster', '11.00', 'History'),
('7c4df5ad-a463-471e-9e2a-048dc4043caa', 'ava hayes', '18.00', 'Mathematics'),
('7e3186c1-8bea-47c0-b4b1-b691e8612670', 'ethan jenkins', '13.00', 'Physics'),
('8029955d-8c04-4e65-93eb-070ee3703158', 'emma emma', '10.00', 'Physics'),
('8abc3bda-8234-4a80-9b75-1fd731b0cae5', 'sophia reed', '14.00', 'Physics'),
('a23fec5c-36af-442d-96f0-89a4b3322302', 'sophia reed', '10.00', 'History'),
('a48a699b-2081-4dda-ba67-ef7493377bcb', 'mia griffin', '14.00', 'Mathematics'),
('b8859ec3-9b7b-4f5a-9258-1631e8e89986', 'amelia rivera', '20.00', 'History'),
('bd4a2e65-e950-4e7e-8d26-de03b510c5e8', 'sophia reed', '14.00', 'Mathematics'),
('d4b59acb-8f91-4230-8a73-493987fe8d2e', 'lucas simmons', '18.00', 'Physics'),
('d8a51fe4-a043-4c53-ad29-b9b418177011', 'ava hayes', '9.00', 'Physics'),
('dad329cb-81c1-4ca9-8dcd-a17578cdaf58', 'ethan jenkins', '11.00', 'History'),
('dc507d32-4221-47fa-839e-ab9315933d7a', 'Liam Turner', '14.00', 'History'),
('ddd400ca-9a82-4a13-b3a0-700af59ee2d1', 'noah carter', '20.00', 'History'),
('ebc5cd3c-7476-4b72-9876-954488ae69ef', 'james morgan', '12.00', 'Physics'),
('ef75db3b-18d4-4a67-bbac-3b5a024e7147', 'Liam Turner', '14.00', 'Mathematics'),
('f2bb80d2-cd26-4455-8046-526addf45913', 'elijah foster', '17.00', 'Physics'),
('f43f8e4a-5a91-477a-ab7c-8b06535173a2', 'emma emma', '14.00', 'History'),
('f459bb84-51b9-4c3a-bfb3-14e0c13fa088', 'mia griffin', '12.00', 'History'),
('faacdd5d-4864-43f7-9669-5aa1e5f9d01b', 'james morgan', '10.00', 'History');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pointstudents`
--
ALTER TABLE `pointstudents`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
