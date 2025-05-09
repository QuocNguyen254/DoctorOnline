-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2024 at 06:43 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `healthmoni`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `Id` varchar(20) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `ImageLink` varchar(2000) DEFAULT NULL,
  `MedicalSpecialty` varchar(30) DEFAULT NULL,
  `Degree` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`Id`, `Name`, `ImageLink`, `MedicalSpecialty`, `Degree`) VALUES
('1', 'Krystal Shepherd', '../src/jpg/d1.jpg', 'Neurology', 'Bachelor'),
('10', 'Kieren Cochran', '../src/jpg/d10.jpg', 'Internal medicine', 'Doctor of Medicine'),
('2', 'Jean-Luc Crosby', '../src/jpg/d2.jpg', 'Odontology', 'Bachelor'),
('3', 'Daisy-Mae Flowers', '../src/jpg/d3.jpg', 'Orthopedics', 'Bachelor'),
('4', 'Efe Forster', '../src/jpg/d4.jpg', 'Dermatology', 'Bachelor'),
('5', 'Tyler-Jay Franks', '../src/jpg/d5.jpg', 'Plastic surgery', 'Bachelor'),
('6', 'Marlene Valentine', '../src/jpg/d6.jpg', 'Traumatology', 'Bachelor'),
('7', 'Mikey Nicholls', '../src/jpg/d7.jpg', 'Ophthalmology', 'Bachelor'),
('8', 'Yahya Adkins', '../src/jpg/d8.jpg', 'Gastroenterology', 'Bachelor'),
('9', 'Stephen Strange', '../src/jpg/d9.jpg', 'Neurology', 'Doctor of Medicine');

-- --------------------------------------------------------

--
-- Table structure for table `meetingdate`
--

CREATE TABLE `meetingdate` (
  `Id` varchar(20) NOT NULL,
  `PatientId` varchar(20) DEFAULT NULL,
  `DoctorId` varchar(20) DEFAULT NULL,
  `MeetingTime` datetime DEFAULT NULL,
  `DateStatus` varchar(20) DEFAULT NULL,
  `LinkMeet` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meetingdate`
--

INSERT INTO `meetingdate` (`Id`, `PatientId`, `DoctorId`, `MeetingTime`, `DateStatus`, `LinkMeet`) VALUES
('1', '1', '1', '2024-11-10 08:00:00', 'In progress', 'gagaga'),
('2', '2', '2', '2024-11-10 09:00:00', 'In progress', NULL),
('3', '3', '3', '2024-11-10 10:00:00', 'In progress', NULL),
('4', '2', '2', '2024-11-19 12:00:00', 'In progress', NULL),
('5', '2', '10', '2024-11-17 12:00:00', 'Done', 'https://www.google.com/'),
('6', '2', '10', '2024-11-20 12:00:00', 'Done', 'ajgakljglkajglka'),
('7', '2', '10', '2024-11-16 12:00:00', 'Done', NULL),
('8', '2', '10', '2024-11-09 12:00:00', 'Done', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Id` varchar(20) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `useremail` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `usertype` varchar(20) DEFAULT NULL,
  `ImageLink` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Id`, `name`, `pass`, `username`, `useremail`, `phone`, `address`, `usertype`, `ImageLink`) VALUES
('1', 'NAME1', 'name1', 'Bob Ross', 'bobross@gmail.com.vn', '0909713014', '11 Wall Street, New York', 'Patient', '../src/user/user1.jpg'),
('10', 'NAME10', 'name10', 'Marlene Valentine', 'marlenevalentine@gmail.com.vn', '0921122334', '400 Birch Ln, Houston', 'Doctor', '../src/user/user10.png'),
('11', 'NAME11', 'name11', 'Mikey Nicholls', 'mikeynicholls@gmail.com.vn', '0974433221', '55 Cedar Rd, Miami', 'Doctor', '../src/user/user11.png'),
('12', 'NAME12', 'name12', 'Yahya Adkins', 'yahyaadkins@gmail.com.vn', '0945566778', '120 Willow St, Seattle', 'Doctor', '../src/user/user12.png'),
('13', 'NAME13', 'name13', 'Stephen Strange', 'stephenstrange@gmail.com.vn', '0969988776', '78 Aspen Blvd, Denver', 'Doctor', '../src/user/user13.png'),
('2', 'NAME2', 'name2', 'Alice Johnson', 'alicejohnson@gmail.com.vn', '0912345678', '123 Main Street, Los Angeles', 'Patient', '../src/user/user2.jpg'),
('3', 'NAME3', 'name3', 'Charlie Smith', 'charliesmith@gmail.com.vn', '0987654321', '456 Maple Ave, San Francisco', 'Patient', '../src/user/user3.jpg'),
('4', 'NAME4', 'name4', 'Krystal Shepherd', 'krystalshepherd@gmail.com.vn', '0934567890', '789 Oak St, Boston', 'Doctor', '../src/user/user4.jpg'),
('5', 'NAME5', 'name5', 'Efe Forster', 'efeforster@gmail.com.vn', '0908765432', '101 Pine St, Chicago', 'Doctor', '../src/user/user5.png'),
('6', 'NAME6', 'name6', 'Kieren Cochran', 'kierencochran@gmail.com.vn', '0909778310', '101 Pine St, Chicago', 'Doctor', '../src/user/user6.png'),
('7', 'NAME7', 'name7', 'Jean-Luc Crosby', 'jeanluccrosby@gmail.com.vn', '0912345678', '200 Elm St, New York', 'Doctor', '../src/user/user7.jpg'),
('8', 'NAME8', 'name8', 'Daisy-Mae Flowers', 'daisymaeflowers@gmail.com.vn', '0938765432', '15 Maple Ave, Los Angeles', 'Doctor', '../src/user/user8.png'),
('9', 'NAME9', 'name9', 'Tyler-Jay Franks', 'tylerjayfranks@gmail.com.vn', '0987654321', '300 Oak Dr, San Francisco', 'Doctor', '../src/user/user9.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `meetingdate`
--
ALTER TABLE `meetingdate`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `LinkMeet` (`LinkMeet`) USING HASH,
  ADD KEY `fk_users_Id_PatientId` (`PatientId`),
  ADD KEY `fk_doctors_Id_DoctorId` (`DoctorId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `meetingdate`
--
ALTER TABLE `meetingdate`
  ADD CONSTRAINT `fk_doctors_Id_DoctorId` FOREIGN KEY (`DoctorId`) REFERENCES `doctors` (`Id`),
  ADD CONSTRAINT `fk_users_Id_PatientId` FOREIGN KEY (`PatientId`) REFERENCES `users` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
