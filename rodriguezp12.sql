-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 02, 2024 at 03:17 PM
-- Server version: 8.0.30
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rodriguezp12`
--

-- --------------------------------------------------------

--
-- Table structure for table `exercise`
--

CREATE TABLE `exercise` (
  `exerciseID` char(4) NOT NULL,
  `nameEx` varchar(255) NOT NULL,
  `muscleGroup` varchar(255) NOT NULL,
  `duration` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `exercise`
--

INSERT INTO `exercise` (`exerciseID`, `nameEx`, `muscleGroup`, `duration`) VALUES
('EX01', 'Barbell Back Squat', 'Legs', '25'),
('EX02', 'Pull-Up', 'Back', '10'),
('EX03', 'Barbell Bench Press', 'Chest', '15'),
('EX04', 'Overhead Barbell Press', 'Shoulders', '20'),
('EX05', 'Plank', 'Core', '10'),
('EX06', 'Barbell Bicep Curl', 'Anterior Arm', '15'),
('EX07', 'Machine Dip', 'Posterior Arm', '15'),
('EX08', 'Jumping Jacks', 'Full Body', '5'),
('EX09', 'Lunges', 'Legs', '5'),
('EX10', 'Sit-Ups', 'Abs', '5');

-- --------------------------------------------------------

--
-- Table structure for table `gymequipment`
--

CREATE TABLE `gymequipment` (
  `equipmentID` char(4) NOT NULL,
  `nameEq` varchar(255) NOT NULL,
  `maintenanceDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `gymequipment`
--

INSERT INTO `gymequipment` (`equipmentID`, `nameEq`, `maintenanceDate`) VALUES
('EQ01', 'Treadmill', '2024-12-28'),
('EQ02', 'Stair Climbers', '2025-01-18'),
('EQ03', 'Ellipticals', '2025-01-18'),
('EQ04', 'Rower', '2025-01-25'),
('EQ05', 'Arc Trainers', '2025-01-25'),
('EQ06', 'Low Row Machine', '2025-01-25'),
('EQ07', 'Cable Tower Machine', '2025-02-08'),
('EQ08', 'Lat pull-down Machine', '2025-02-08'),
('EQ09', 'Pec Deck Machine', '2025-02-15'),
('EQ10', 'Smith Machine', '2025-02-15'),
('EQ11', 'Glute Kickback Machine', '2025-02-22'),
('EQ12', 'Butterfly Machine', '2025-02-22');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `userID` char(4) NOT NULL,
  `phoneNumber` varchar(15) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `age` char(3) NOT NULL,
  `workoutID` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`userID`, `phoneNumber`, `fullName`, `age`, `workoutID`) VALUES
('U001', '773-678-0891', 'Johnnie W. Blank', '27', 'W002'),
('U002', '773-456-0987', 'Aaliyah Rodriguez', '18', 'W004'),
('U003', '312-577-3333', 'Ramiro Flores', '45', 'W004'),
('U004', '773-222-1111', 'Jason Willie', '36', 'W003'),
('U005', '773-367-9273', 'Cameron Diaz', '22', 'W002'),
('U006', '312-822-9182', 'Antonio Herrera Perez', '20', 'W003'),
('U007', '773-097-6783', 'Raul Alejandro', '31', 'W004'),
('U008', '773-267-9378', 'Delilah Hernandez', '25', 'W001'),
('U009', '312-538-7358', 'Addison Morales', '24', 'W002'),
('U010', '773-789-0289', 'Oliver S. James', '47', 'W004'),
('U011', '773-183-7593', 'James Charles', '32', 'W003'),
('U012', '773-872-3679', 'Eduardo Garcia', '19', 'W003');

-- --------------------------------------------------------

--
-- Table structure for table `member_membershiptype`
--

CREATE TABLE `member_membershiptype` (
  `membershipType` varchar(255) NOT NULL,
  `userID` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `member_membershiptype`
--

INSERT INTO `member_membershiptype` (`membershipType`, `userID`) VALUES
('PF Black Card', 'U001'),
('Classic', 'U002'),
('PF Black Card ', 'U003'),
('Classic', 'U004'),
('PF Black Card ', 'U005'),
('PF Black Card ', 'U006'),
('PF Black Card ', 'U007'),
('Classic', 'U008'),
('Classic', 'U009'),
('PF Black Card ', 'U010'),
('PF Black Card', 'U011'),
('Classic', 'U012');

-- --------------------------------------------------------

--
-- Table structure for table `workoutplan`
--

CREATE TABLE `workoutplan` (
  `workoutID` char(4) NOT NULL,
  `name` varchar(255) NOT NULL,
  `difficultyLevel` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `workoutplan`
--

INSERT INTO `workoutplan` (`workoutID`, `name`, `difficultyLevel`) VALUES
('W001', 'Beginner Plan', '1'),
('W002', 'Intermediate Plan', '2'),
('W003', 'Advanced Plan', '3'),
('W004', 'Expert Plan', '4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `exercise`
--
ALTER TABLE `exercise`
  ADD PRIMARY KEY (`exerciseID`);

--
-- Indexes for table `gymequipment`
--
ALTER TABLE `gymequipment`
  ADD PRIMARY KEY (`equipmentID`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`userID`),
  ADD UNIQUE KEY `phoneNumber` (`phoneNumber`),
  ADD KEY `workoutID` (`workoutID`);

--
-- Indexes for table `member_membershiptype`
--
ALTER TABLE `member_membershiptype`
  ADD PRIMARY KEY (`membershipType`,`userID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `workoutplan`
--
ALTER TABLE `workoutplan`
  ADD PRIMARY KEY (`workoutID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `member`
--
ALTER TABLE `member`
  ADD CONSTRAINT `member_ibfk_1` FOREIGN KEY (`workoutID`) REFERENCES `workoutplan` (`workoutID`);

--
-- Constraints for table `member_membershiptype`
--
ALTER TABLE `member_membershiptype`
  ADD CONSTRAINT `member_membershiptype_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `member` (`userID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
