-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2024 at 05:21 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(225) NOT NULL,
  `fname` varchar(225) NOT NULL,
  `lname` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `fname`, `lname`) VALUES
(1, 'simran', '$2y$10$jRE9GJvJDUhI4J6Fi3AILeCgC9vgymRCX1nJEQFq2Fs4bBkjjQgna', 'Simran', 'Chapagain');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `section` varchar(21) NOT NULL,
  `address` varchar(31) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `date_of_joined` timestamp NULL DEFAULT current_timestamp(),
  `parent_fname` varchar(127) NOT NULL,
  `parent_lname` varchar(127) NOT NULL,
  `parent_phone_number` varchar(31) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `username`, `password`, `fname`, `lname`, `section`, `address`, `gender`, `email_address`, `date_of_birth`, `date_of_joined`, `parent_fname`, `parent_lname`, `parent_phone_number`) VALUES
(1, 'rupa', '$2y$10$1qwWfCThJVgbEh9JiFDL9eDSa6z4J2sef877CGaVpFGT6xxLfhRK6', 'Rupa', 'Khatri', '0', 'kathmandu', 'Female', 'rupa11@gmail.com', '2024-10-23', '2024-10-23 05:04:34', 'sita', 'Khatri', '9867564534'),
(4, 'sonit', '$2y$10$jRE9GJvJDUhI4J6Fi3AILeCgC9vgymRCX1nJEQFq2Fs4bBkjjQgna', 'Sonit', 'karki', '0', 'Kathmandu', 'Male', 'sonit99@gmail.com', '2061-03-03', '2024-10-26 07:53:37', 'ram', 'Karki', '9847256748'),
(6, 'sanaita', '$2y$10$jRE9GJvJDUhI4J6Fi3AILeCgC9vgymRCX1nJEQFq2Fs4bBkjjQgna', 'Sanaita', 'Chapagain', 'Male', 'Kathmandu', 'Female', 'sanaita77@gmail.com', '2055-02-07', '2024-10-27 16:08:11', 'sunila', 'Chapagain', '9867564534');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `teacher_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `section` varchar(11) NOT NULL,
  `address` varchar(31) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `phone_number` varchar(31) NOT NULL,
  `qualification` varchar(127) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `date_of_joined` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`teacher_id`, `username`, `password`, `fname`, `lname`, `section`, `address`, `date_of_birth`, `phone_number`, `qualification`, `gender`, `email_address`, `date_of_joined`) VALUES
(1, 'jamin', '$2y$10$Rfr62mS5qCkmxqGbGRTqSeE2cOBis8CDl2bsDcKTS6ImQqUSsJvTO', 'Jamin', 'Rai', 'mechi', 'kathmandu', '2065-10-03', '90786986986', '+2', 'Male', 'jamin2@gmail.com', '2024-10-26 10:04:35'),
(2, 'hari', '$2y$10$4d0vS17vTE7lg2x57Z5OV.U/B1v8ISQHO3YFBadoadS0N525tVMHe', 'Hari', 'Karki', 'mechi', 'kathmandu', '2024-10-03', '90786986986', '+2', 'Male', 'hari44@gmail.com', '2024-10-26 10:04:35'),
(6, 'samraj', '$2y$10$5C/auiWFWDIODF7GHBZri.f7cKoPZ/3ira4xIDnbJRAsT.wtL1eEi', 'Samraj', 'Chapagain', '', 'kathmandu', '2001-07-07', '89703874', '+2', 'Male', 'samraj77@gmail.com', '2024-11-15 21:28:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`teacher_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
