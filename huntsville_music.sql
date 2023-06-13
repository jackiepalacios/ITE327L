-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2022 at 11:38 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `huntsville_music`
--

-- --------------------------------------------------------

--
-- Table structure for table `attend_comp`
--

CREATE TABLE `attend_comp` (
  `Name` varchar(35) NOT NULL,
  `SSN` int(9) NOT NULL,
  `Student_id` int(8) NOT NULL,
  `Rank` int(2) NOT NULL,
  `Comments` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attend_comp`
--

INSERT INTO `attend_comp` (`Name`, `SSN`, `Student_id`, `Rank`, `Comments`) VALUES
('First Symphony', 212953516, 94518, 1, 'Consecutively on tempo, wonderful performance'),
('Elmsworth', 333458796, 96148, 5, 'Off tempo seldomly'),
('Bartel Nationals', 457137145, 84197, 3, NULL),
('Bellaire Winter Festive', 653149613, 94516, 6, 'Missed some queues');

-- --------------------------------------------------------

--
-- Table structure for table `attend_lesson`
--

CREATE TABLE `attend_lesson` (
  `Lesson_id` int(8) NOT NULL,
  `Student_id` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attend_lesson`
--

INSERT INTO `attend_lesson` (`Lesson_id`, `Student_id`) VALUES
(1, 84197),
(2, 94518),
(3, 96148),
(4, 94516);

-- --------------------------------------------------------

--
-- Table structure for table `competition`
--

CREATE TABLE `competition` (
  `Name` varchar(35) NOT NULL,
  `Date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `competition`
--

INSERT INTO `competition` (`Name`, `Date`) VALUES
('Bartel Nationals', '12-08-2021'),
('Bellaire Winter Festive', '08-02-2022'),
('Elmsworth', '05-11-2021'),
('First Symphony', '01-19-2022');

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE `instructor` (
  `SSN` int(9) NOT NULL,
  `Address` text NOT NULL,
  `fName` text NOT NULL,
  `mInit` text DEFAULT NULL,
  `lName` text NOT NULL,
  `Phone_number` varchar(10) NOT NULL,
  `Lessons_preferred` text DEFAULT NULL,
  `Time_preferred` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` (`SSN`, `Address`, `fName`, `mInit`, `lName`, `Phone_number`, `Lessons_preferred`, `Time_preferred`) VALUES
(212953516, '3321 Castle, Madison, AL', 'Alicia', NULL, 'Zelaya', '2567275491', 'Violin', '13:00'),
(333458796, '638 Voss, Athens, AL', 'Franklin', 'L', 'Wong', '2569846485', 'Guitar', '12:00'),
(457137145, '291 Berry, Huntsville, AL', 'Jennifer', NULL, 'Wallace', '2560709162', 'Drums', '14:00'),
(653149613, '731 Fondren, Athens, AL', 'John', 'B', 'Smith', '2568491212', 'Piano', '11:00');

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson` (
  `Lesson_id` int(8) NOT NULL,
  `Type_offered` text NOT NULL,
  `Time_offered` varchar(5) NOT NULL,
  `Price` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lesson`
--

INSERT INTO `lesson` (`Lesson_id`, `Type_offered`, `Time_offered`, `Price`) VALUES
(1, 'Piano', '11:00', '$500.00'),
(2, 'Guitar', '12:00', '$550.00'),
(3, 'Drums', '13:00', '$400.00'),
(4, 'Violin', '14:00', '$700.00');

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE `parent` (
  `Name` varchar(30) NOT NULL,
  `Student_id` int(8) NOT NULL,
  `Phone_number` varchar(10) NOT NULL,
  `Address` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `parent`
--

INSERT INTO `parent` (`Name`, `Student_id`, `Phone_number`, `Address`) VALUES
('Adam English', 96148, '2565124683', '5631 Rice, Athens, AL'),
('Catherine Jabbar', 94518, '2094617213', '975 Fire Oak, Cullman, AL'),
('Dale Narayan', 94516, '2057615826', '450 Stone, Huntsville AL'),
('Samantha Borg', 84197, '2051208414', '291 Berry, Decatur, AL');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Student_id` int(8) NOT NULL,
  `age` int(2) NOT NULL,
  `address` varchar(40) NOT NULL,
  `fName` text NOT NULL,
  `mInit` text DEFAULT NULL,
  `lName` text NOT NULL,
  `Phone_number` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Student_id`, `age`, `address`, `fName`, `mInit`, `lName`, `Phone_number`) VALUES
(84197, 18, '450 Stone, Huntsville AL', 'James', NULL, 'Borg', '2051208414'),
(94516, 15, '291 Berry, Decatur, AL', 'Ramesh', 'D', 'Narayan', '2057615826'),
(94518, 16, '975 Fire Oak, Cullman, AL', 'Ahmad', NULL, 'Jabbar', '2094617213'),
(96148, 14, '5631 Rice, Athens, AL', 'Joyce', 'L', 'English', '2565124683');

-- --------------------------------------------------------

--
-- Table structure for table `teaches`
--

CREATE TABLE `teaches` (
  `Lesson_id` int(8) NOT NULL,
  `SSN` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teaches`
--

INSERT INTO `teaches` (`Lesson_id`, `SSN`) VALUES
(1, 212953516),
(2, 333458796),
(3, 457137145),
(4, 653149613);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attend_comp`
--
ALTER TABLE `attend_comp`
  ADD PRIMARY KEY (`SSN`,`Name`),
  ADD KEY `Name` (`Name`,`SSN`,`Student_id`),
  ADD KEY `Student_id` (`Student_id`);

--
-- Indexes for table `attend_lesson`
--
ALTER TABLE `attend_lesson`
  ADD PRIMARY KEY (`Lesson_id`,`Student_id`),
  ADD KEY `Lesson_id` (`Lesson_id`,`Student_id`),
  ADD KEY `Student_id` (`Student_id`);

--
-- Indexes for table `competition`
--
ALTER TABLE `competition`
  ADD PRIMARY KEY (`Name`);

--
-- Indexes for table `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`SSN`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`Lesson_id`);

--
-- Indexes for table `parent`
--
ALTER TABLE `parent`
  ADD PRIMARY KEY (`Name`,`Student_id`),
  ADD KEY `Student_id` (`Student_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Student_id`);

--
-- Indexes for table `teaches`
--
ALTER TABLE `teaches`
  ADD PRIMARY KEY (`SSN`),
  ADD KEY `Lesson_id` (`Lesson_id`),
  ADD KEY `SSN` (`SSN`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attend_comp`
--
ALTER TABLE `attend_comp`
  ADD CONSTRAINT `attend_comp_ibfk_1` FOREIGN KEY (`Name`) REFERENCES `competition` (`Name`),
  ADD CONSTRAINT `attend_comp_ibfk_2` FOREIGN KEY (`SSN`) REFERENCES `instructor` (`SSN`),
  ADD CONSTRAINT `attend_comp_ibfk_3` FOREIGN KEY (`Student_id`) REFERENCES `student` (`Student_id`);

--
-- Constraints for table `attend_lesson`
--
ALTER TABLE `attend_lesson`
  ADD CONSTRAINT `attend_lesson_ibfk_1` FOREIGN KEY (`Lesson_id`) REFERENCES `lesson` (`Lesson_id`),
  ADD CONSTRAINT `attend_lesson_ibfk_2` FOREIGN KEY (`Student_id`) REFERENCES `student` (`Student_id`);

--
-- Constraints for table `parent`
--
ALTER TABLE `parent`
  ADD CONSTRAINT `parent_ibfk_1` FOREIGN KEY (`Student_id`) REFERENCES `student` (`Student_id`);

--
-- Constraints for table `teaches`
--
ALTER TABLE `teaches`
  ADD CONSTRAINT `teaches_ibfk_1` FOREIGN KEY (`Lesson_id`) REFERENCES `lesson` (`Lesson_id`),
  ADD CONSTRAINT `teaches_ibfk_2` FOREIGN KEY (`SSN`) REFERENCES `instructor` (`SSN`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;