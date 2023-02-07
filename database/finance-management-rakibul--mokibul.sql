-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2023 at 05:02 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `finance-management-rakibul--mokibul`
--

-- --------------------------------------------------------

--
-- Table structure for table `borrowers`
--

CREATE TABLE `borrowers` (
  `id` int(30) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `middlename` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `contact_no` varchar(30) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `tax_id` varchar(50) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `borrowers`
--

INSERT INTO `borrowers` (`id`, `firstname`, `middlename`, `lastname`, `contact_no`, `address`, `email`, `tax_id`, `date_created`) VALUES
(9, 'A', 'B', 'C', '123', 'ABC', 'ABC@ABC.COM', 'ABCAB1234A', 0),
(11, 'Mizanur', 'Hussain', 'Khan', '9876542310', 'ABCD', 'mizanur@mizanur.com', 'ABCDE01234Z', 0);

-- --------------------------------------------------------

--
-- Table structure for table `loan_list`
--

CREATE TABLE `loan_list` (
  `id` int(30) NOT NULL,
  `ref_no` varchar(50) NOT NULL,
  `loan_type_id` int(30) NOT NULL,
  `borrower_id` int(30) NOT NULL,
  `purpose` text NOT NULL,
  `amount` double NOT NULL,
  `plan_id` int(30) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0= request, 1= confrimed,2=released,3=complteted,4=denied\r\n',
  `date_released` datetime NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loan_list`
--

INSERT INTO `loan_list` (`id`, `ref_no`, `loan_type_id`, `borrower_id`, `purpose`, `amount`, `plan_id`, `status`, `date_released`, `date_created`) VALUES
(10, '5010789', 2, 9, 'Higher Education', 10000, 2, 2, '2022-12-15 11:19:00', '2022-12-15 15:49:46'),
(12, '54486803', 2, 11, 'PG', 50000, 2, 2, '2023-02-04 15:02:00', '2023-02-04 19:32:47');

-- --------------------------------------------------------

--
-- Table structure for table `loan_plan`
--

CREATE TABLE `loan_plan` (
  `id` int(30) NOT NULL,
  `months` int(11) NOT NULL,
  `interest_percentage` float NOT NULL,
  `penalty_rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loan_plan`
--

INSERT INTO `loan_plan` (`id`, `months`, `interest_percentage`, `penalty_rate`) VALUES
(1, 36, 8, 3),
(2, 24, 5, 2),
(6, 36, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `loan_schedules`
--

CREATE TABLE `loan_schedules` (
  `id` int(30) NOT NULL,
  `loan_id` int(30) NOT NULL,
  `date_due` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loan_schedules`
--

INSERT INTO `loan_schedules` (`id`, `loan_id`, `date_due`) VALUES
(257, 10, '2023-01-15'),
(258, 10, '2023-02-15'),
(259, 10, '2023-03-15'),
(260, 10, '2023-04-15'),
(261, 10, '2023-05-15'),
(262, 10, '2023-06-15'),
(263, 10, '2023-07-15'),
(264, 10, '2023-08-15'),
(265, 10, '2023-09-15'),
(266, 10, '2023-10-15'),
(267, 10, '2023-11-15'),
(268, 10, '2023-12-15'),
(269, 10, '2024-01-15'),
(270, 10, '2024-02-15'),
(271, 10, '2024-03-15'),
(272, 10, '2024-04-15'),
(273, 10, '2024-05-15'),
(274, 10, '2024-06-15'),
(275, 10, '2024-07-15'),
(276, 10, '2024-08-15'),
(277, 10, '2024-09-15'),
(278, 10, '2024-10-15'),
(279, 10, '2024-11-15'),
(280, 10, '2024-12-15'),
(281, 11, '2023-02-20'),
(282, 11, '2023-03-20'),
(283, 11, '2023-04-20'),
(284, 11, '2023-05-20'),
(285, 11, '2023-06-20'),
(286, 11, '2023-07-20'),
(287, 11, '2023-08-20'),
(288, 11, '2023-09-20'),
(289, 11, '2023-10-20'),
(290, 11, '2023-11-20'),
(291, 11, '2023-12-20'),
(292, 11, '2024-01-20'),
(293, 11, '2024-02-20'),
(294, 11, '2024-03-20'),
(295, 11, '2024-04-20'),
(296, 11, '2024-05-20'),
(297, 11, '2024-06-20'),
(298, 11, '2024-07-20'),
(299, 11, '2024-08-20'),
(300, 11, '2024-09-20'),
(301, 11, '2024-10-20'),
(302, 11, '2024-11-20'),
(303, 11, '2024-12-20'),
(304, 11, '2025-01-20'),
(305, 12, '2023-03-04'),
(306, 12, '2023-04-04'),
(307, 12, '2023-05-04'),
(308, 12, '2023-06-04'),
(309, 12, '2023-07-04'),
(310, 12, '2023-08-04'),
(311, 12, '2023-09-04'),
(312, 12, '2023-10-04'),
(313, 12, '2023-11-04'),
(314, 12, '2023-12-04'),
(315, 12, '2024-01-04'),
(316, 12, '2024-02-04'),
(317, 12, '2024-03-04'),
(318, 12, '2024-04-04'),
(319, 12, '2024-05-04'),
(320, 12, '2024-06-04'),
(321, 12, '2024-07-04'),
(322, 12, '2024-08-04'),
(323, 12, '2024-09-04'),
(324, 12, '2024-10-04'),
(325, 12, '2024-11-04'),
(326, 12, '2024-12-04'),
(327, 12, '2025-01-04'),
(328, 12, '2025-02-04');

-- --------------------------------------------------------

--
-- Table structure for table `loan_types`
--

CREATE TABLE `loan_types` (
  `id` int(30) NOT NULL,
  `type_name` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loan_types`
--

INSERT INTO `loan_types` (`id`, `type_name`, `description`) VALUES
(1, 'Small Business', 'Small Business Loans'),
(2, 'Education Loans', 'Only for Students'),
(3, 'Personal Loans', 'Personal Loans'),
(10, 'Education Loan', 'Any Student can apply');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(30) NOT NULL,
  `loan_id` int(30) NOT NULL,
  `payee` text NOT NULL,
  `amount` float NOT NULL DEFAULT 0,
  `penalty_amount` float NOT NULL DEFAULT 0,
  `overdue` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=no , 1 = yes',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `loan_id`, `payee`, `amount`, `penalty_amount`, `overdue`, `date_created`) VALUES
(22, 10, 'A, B C', 437.5, 0, 0, '2022-12-15 15:50:58'),
(23, 11, 'ghjyt,  dfghj', 0, 0, 0, '2023-01-20 15:27:34'),
(24, 12, 'Mizanur, Hussain Khan', 2187.5, 0, 0, '2023-02-04 19:33:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` text NOT NULL,
  `contact` text NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1=admin , 2 = staff'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `address`, `contact`, `username`, `password`, `type`) VALUES
(1, 'Rakibul Islam', '', '', 'rakib@bbkc.com', 'rakib@bbkc.com', 1),
(33, 'Mokibur Rahman', '', '', 'mokibur@bbkc.com', 'mokibur@bbkc.com', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `borrowers`
--
ALTER TABLE `borrowers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_list`
--
ALTER TABLE `loan_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_plan`
--
ALTER TABLE `loan_plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_schedules`
--
ALTER TABLE `loan_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_types`
--
ALTER TABLE `loan_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `borrowers`
--
ALTER TABLE `borrowers`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `loan_list`
--
ALTER TABLE `loan_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `loan_plan`
--
ALTER TABLE `loan_plan`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `loan_schedules`
--
ALTER TABLE `loan_schedules`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=329;

--
-- AUTO_INCREMENT for table `loan_types`
--
ALTER TABLE `loan_types`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
