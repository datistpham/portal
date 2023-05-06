-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2023 at 04:08 AM
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
-- Database: `portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `absense_application`
--

CREATE TABLE `absense_application` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `course_id` int(11) NOT NULL,
  `attach_file` varchar(255) NOT NULL,
  `time_absense` int(11) NOT NULL,
  `time_created` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `absense_application`
--

INSERT INTO `absense_application` (`id`, `student_id`, `class_id`, `content`, `course_id`, `attach_file`, `time_absense`, `time_created`, `status`) VALUES
(1, 2, 9, 'i want to leave to this school', 2, '8421a003-4965-422d-a89c-ab83e2647e01.pdf', 4, '2023-04-30 13:42:01.463000', 0),
(4, 2, 9, 'aaaa', 2, 'c3db2ba3-3808-4dde-9b6e-7fea19cf3c44.pdf', 3, '2023-04-30 14:23:18.817000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `account_id` varchar(255) NOT NULL,
  `account` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`account_id`, `account`, `password`, `role`) VALUES
('1', 'admin', '123456789', 3),
('2', 'student1', 'Giangvippro1!', 1),
('37f24e90-f345-4797-9905-09b389d4c2dd', 'admin', '123456789', 1),
('44294ef1-d87f-4482-b3d3-154f3518f3e0', 'teacher234', '123456789', 2),
('6a5d63a8-7b55-4e49-8f18-7dbfc8b5b622', 'student12', 'Giangvippro1!', 1),
('6e6e35ad-43cb-4728-85d3-6ca8bac2fbb5', 'account12345678', '1111111111111', 1),
('6ef3cfff-48d9-4119-b08e-7c8bf1560d64', 'teacher1', '123456789', 2),
('b448400b-6dee-4045-aecc-f74e40d4638a', 'admin', '123456789', 1),
('bdf00ee4-f8bf-41b8-94dd-8523dbff4bd4', 'admin', '123456789', 1),
('bec2b166-81b0-4dfd-9c53-98a8c82a60a0', 'account3', '037482389239', 1),
('f4d9cde8-629b-4071-8848-6fb94f0a5229', 'student3', 'Giangvippro1!', 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `account` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `account`, `password`) VALUES
(1, 'admin', '123456789\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `attendance` int(11) NOT NULL DEFAULT 0,
  `time_attendance` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `student_id`, `class_id`, `attendance`, `time_attendance`) VALUES
(1, 2, 9, 1, '30-04-2023');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(255) NOT NULL,
  `class_description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `class_name`, `class_description`) VALUES
(1, '10a1', '10a1 class'),
(2, '10a2', '10a2 class'),
(3, '10a3', '10a3 class'),
(4, '10a4', '10a4 class'),
(5, '11a1', '11a1 class'),
(6, '11a2', '11a2 class'),
(7, '11a3 ', '11a3 class'),
(8, '11a4', '11a4 class'),
(9, '12a1', '12a1 class'),
(10, '12a2 ', '12a2 class'),
(11, '12a3', '12a3 class'),
(12, '12a4', '12a4 class');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `course_description` text NOT NULL,
  `lesson_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `course_description`, `lesson_number`) VALUES
(1, 'Ngữ Văn 10', 'Ngữ văn 10 description', 50),
(2, 'Ngữ văn 11', 'Ngữ văn 11 v', 40);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `time_created` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `title`, `image`, `content`, `time_created`) VALUES
(1, '', 'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg', 'Test post', ''),
(2, 'sáas', '/assets/i/e8c624ad-b1b3-483a-b579-fb4c009af8a5.png', '<p>sasaasas</p>', '2023-04-22 16:41:53.003000');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `day_schedule` varchar(255) NOT NULL,
  `shift` int(11) NOT NULL,
  `time_start` int(11) NOT NULL,
  `time_end` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`id`, `course_id`, `class_id`, `day_schedule`, `shift`, `time_start`, `time_end`) VALUES
(1, 2, 9, '02/05/2023', 1, 3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `score`
--

CREATE TABLE `score` (
  `score_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `score_1` float NOT NULL,
  `score_2` float NOT NULL,
  `mid_term` float NOT NULL,
  `final_term` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `score`
--

INSERT INTO `score` (`score_id`, `student_id`, `class_id`, `course_id`, `score_1`, `score_2`, `mid_term`, `final_term`) VALUES
(1, 2, 9, 2, 9, 9, 10, 8.5);

-- --------------------------------------------------------

--
-- Table structure for table `sign_up_student`
--

CREATE TABLE `sign_up_student` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `class_id` int(11) NOT NULL,
  `avatar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sign_up_student`
--

INSERT INTO `sign_up_student` (`id`, `email`, `first_name`, `middle_name`, `last_name`, `dob`, `phone`, `class_id`, `avatar`) VALUES
(1, 'datistpham@gmail.com', 'Pham', 'Truong', 'Giang', '20/05/2002', '0388015984', 10, '/assets/i/04afa761-45b0-4bcb-a6a4-410e5fd760cd.png');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `class_id` int(11) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `gender` int(11) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `account_id` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `first_name`, `middle_name`, `last_name`, `class_id`, `dob`, `gender`, `phone`, `account_id`, `avatar`, `email`) VALUES
(2, 'Pham1', 'Truong', 'Giang', 9, '06/08/2002', 0, '0388015984', '2', '/assets/i/48ad8edc-05b0-4a87-b897-ccc7a2004678.png', ''),
(3, 'Pham', 'Giang', 'Truong', 7, '10/07/2000', 0, '0388015984', '6e6e35ad-43cb-4728-85d3-6ca8bac2fbb5', '/assets/i/9488dbff-b5a4-47ae-a84f-86c3e824d797.png', ''),
(4, 'Pham', 'Giang', 'Truong', 9, '18/05/2023', 0, '0388015984', 'bdf00ee4-f8bf-41b8-94dd-8523dbff4bd4', '', ''),
(5, 'Nguyen', 'Phuong Thao', 'Thi ', 9, '01/05/2023', 0, '0389289111', 'f4d9cde8-629b-4071-8848-6fb94f0a5229', '', ''),
(6, 'Pham', 'Giang', 'Thi ', 10, '21/05/2023', 0, '0388015984', '6a5d63a8-7b55-4e49-8f18-7dbfc8b5b622', '/assets/i/0590815d-0916-4d83-a0c6-20332e729eb3.png', ''),
(7, 'Pham', 'Giang', 'Truong', 9, '', 0, '0388015984', 'bec2b166-81b0-4dfd-9c53-98a8c82a60a0', '/assets/i/862ecbf9-a5bd-4c99-8953-c35d5a31326c.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `student_learning_course`
--

CREATE TABLE `student_learning_course` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `time_register` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_learning_course`
--

INSERT INTO `student_learning_course` (`id`, `course_id`, `student_id`, `time_register`, `status`) VALUES
(1, 1, 2, '2023-04-28 23:54:24.126000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `account_id` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `first_name`, `middle_name`, `last_name`, `dob`, `phone`, `account_id`, `avatar`) VALUES
(2, 'Nguyen', 'Thị', 'Yến Nhi', '06/01/1997', '03921891', '6ef3cfff-48d9-4119-b08e-7c8bf1560d64', '/assets/i/f9087ffa-2ee0-44ee-bb0c-110263f56662.png'),
(3, 'Nguyễn ', 'Ngân', 'Thị Khánh', '12/07/1999', '0388015984', '44294ef1-d87f-4482-b3d3-154f3518f3e0', '/assets/i/23197e0c-cc98-40c1-b62b-e8acbfd6db7f.png');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_homeroom`
--

CREATE TABLE `teacher_homeroom` (
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher_homeroom`
--

INSERT INTO `teacher_homeroom` (`teacher_id`, `class_id`) VALUES
(2, 9);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_teach_subject`
--

CREATE TABLE `teacher_teach_subject` (
  `teacher_teach_subject_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher_teach_subject`
--

INSERT INTO `teacher_teach_subject` (`teacher_teach_subject_id`, `teacher_id`, `course_id`, `class_id`) VALUES
(2, 2, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `verify_code`
--

CREATE TABLE `verify_code` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `verify_code`
--

INSERT INTO `verify_code` (`id`, `email`, `code`) VALUES
(1, 'datistpham@gmail.com', '174025'),
(2, 'datistpham@gmail.com', '309869'),
(3, 'datistpham@gmail.com', '864144'),
(4, 'datistpham@gmail.com', '338214'),
(5, 'datistpham@gmail.com', '386538'),
(6, 'datistpham@gmail.com', '825857'),
(7, 'datistpham@gmail.com', '922400');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absense_application`
--
ALTER TABLE `absense_application`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `score`
--
ALTER TABLE `score`
  ADD PRIMARY KEY (`score_id`);

--
-- Indexes for table `sign_up_student`
--
ALTER TABLE `sign_up_student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `student_learning_course`
--
ALTER TABLE `student_learning_course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `teacher_homeroom`
--
ALTER TABLE `teacher_homeroom`
  ADD PRIMARY KEY (`class_id`,`teacher_id`);

--
-- Indexes for table `teacher_teach_subject`
--
ALTER TABLE `teacher_teach_subject`
  ADD PRIMARY KEY (`teacher_teach_subject_id`);

--
-- Indexes for table `verify_code`
--
ALTER TABLE `verify_code`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absense_application`
--
ALTER TABLE `absense_application`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `score`
--
ALTER TABLE `score`
  MODIFY `score_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sign_up_student`
--
ALTER TABLE `sign_up_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `student_learning_course`
--
ALTER TABLE `student_learning_course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `teacher_teach_subject`
--
ALTER TABLE `teacher_teach_subject`
  MODIFY `teacher_teach_subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `verify_code`
--
ALTER TABLE `verify_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
