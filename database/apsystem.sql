-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2023 at 09:34 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `isactive` int(1) NOT NULL DEFAULT 0,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `isactive`, `created_on`) VALUES
(1, 'admin', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'Laxman', 'Rana', 'EWI314065798.png', 1, '2018-04-30');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time_in` time NOT NULL,
  `status` int(1) NOT NULL,
  `time_out` time NOT NULL,
  `num_hr` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `employee_id`, `date`, `time_in`, `status`, `time_out`, `num_hr`) VALUES
(13, 1, '2018-04-27', '08:00:00', 1, '17:00:00', 8),
(14, 1, '2018-04-28', '08:00:00', 1, '17:00:00', 8),
(15, 1, '2018-05-04', '08:00:00', 1, '17:00:00', 8),
(16, 1, '2018-05-02', '08:00:00', 1, '17:00:00', 8),
(17, 1, '2018-05-01', '08:00:00', 1, '17:00:00', 8),
(18, 1, '2018-05-03', '08:00:00', 1, '17:00:00', 8),
(74, 1, '2018-04-30', '08:00:00', 1, '16:44:23', 7.7333333333333),
(75, 3, '2018-04-18', '08:00:00', 1, '17:00:00', 8),
(76, 4, '2018-04-19', '08:00:00', 1, '17:00:00', 8),
(77, 4, '2018-04-27', '08:00:00', 1, '17:00:00', 7),
(78, 4, '2018-04-28', '08:00:00', 1, '17:00:00', 8),
(79, 4, '2018-05-01', '08:30:00', 1, '17:00:00', 8),
(80, 4, '2018-05-03', '08:00:00', 1, '17:00:00', 0),
(81, 4, '2018-05-05', '08:00:00', 1, '17:00:00', 9),
(83, 4, '2018-05-31', '12:00:00', 0, '18:00:00', 5),
(84, 4, '2018-05-18', '08:00:00', 1, '17:00:00', 7),
(85, 4, '2018-05-09', '09:00:00', 1, '18:00:00', 8),
(86, 5, '2018-07-11', '07:41:00', 1, '16:00:00', 7),
(87, 1, '2018-07-11', '06:27:00', 1, '15:00:00', 6),
(88, 6, '2018-07-11', '07:45:00', 1, '14:48:00', 3.8),
(89, 7, '2018-07-11', '07:56:00', 1, '17:00:00', 8),
(90, 8, '2018-07-11', '06:05:12', 1, '16:00:00', 7),
(91, 9, '2018-07-11', '18:12:06', 0, '00:00:00', 0),
(92, 10, '2018-07-11', '18:13:01', 0, '00:00:00', 0),
(93, 11, '2018-07-11', '18:14:30', 0, '00:00:00', 0),
(95, 13, '2018-07-11', '18:17:32', 0, '00:00:00', 0),
(96, 14, '2018-07-11', '18:18:33', 0, '00:00:00', 0),
(97, 15, '2018-07-11', '18:19:26', 0, '00:00:00', 0),
(98, 16, '2018-07-11', '18:20:26', 0, '00:00:00', 0),
(99, 17, '2018-07-11', '18:21:41', 0, '00:00:00', 0),
(101, 19, '2018-07-12', '23:50:28', 1, '00:00:00', 0),
(102, 20, '2018-07-12', '23:52:48', 1, '00:00:00', 0),
(103, 21, '2018-07-12', '23:54:50', 1, '00:00:00', 0),
(105, 23, '2018-07-12', '13:57:00', 0, '00:00:00', 12.95),
(106, 24, '2020-02-19', '14:47:38', 0, '20:00:00', 2.2),
(107, 24, '2020-02-25', '10:01:07', 0, '00:00:00', 0),
(108, 4, '2020-11-12', '03:39:45', 1, '00:00:00', 0),
(109, 24, '2020-11-12', '03:50:20', 1, '06:12:45', 1.7833333333333),
(110, 23, '2020-11-12', '03:50:56', 1, '00:00:00', 0),
(111, 18, '2020-11-12', '03:51:12', 1, '00:00:00', 0),
(112, 24, '2020-11-09', '03:45:00', 1, '03:45:00', 3.25),
(113, 24, '2020-11-11', '03:45:00', 1, '03:45:00', 3.25);

-- --------------------------------------------------------

--
-- Table structure for table `cashadvance`
--

CREATE TABLE `cashadvance` (
  `id` int(11) NOT NULL,
  `date_advance` date NOT NULL,
  `employee_id` varchar(15) NOT NULL,
  `amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cashadvance`
--

INSERT INTO `cashadvance` (`id`, `date_advance`, `employee_id`, `amount`) VALUES
(4, '2018-07-12', '5', 3500),
(5, '2020-11-12', '24', 20000),
(6, '2020-11-12', '20', 4500);

-- --------------------------------------------------------

--
-- Table structure for table `computer_centers`
--

CREATE TABLE `computer_centers` (
  `id` int(10) NOT NULL,
  `center_name` varchar(255) NOT NULL,
  `center_email` varchar(255) NOT NULL,
  `center_username` varchar(255) NOT NULL,
  `center_password` varchar(255) NOT NULL,
  `center_contact` varchar(30) NOT NULL,
  `center_address` text NOT NULL,
  `is_approved` int(1) NOT NULL DEFAULT 0,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `computer_centers`
--

INSERT INTO `computer_centers` (`id`, `center_name`, `center_email`, `center_username`, `center_password`, `center_contact`, `center_address`, `is_approved`, `created_on`) VALUES
(1, 'Gagan Institute of Art & Design', 'gagan@gmail.com', 'gagan', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', '123457890', 'sector 17 kurukshetra', 1, '2020-11-12 04:11:15'),
(2, 'web ocde education', 'webcodeeducation@gmail.com', 'webcodeeducation', '$2y$10$cP258ann5hlVLhZkf8Ai7.Edm4UQv4ceqia7NX7bpzxciZSsk3WOu', '2020-11-12', 'Arya Samaj Market Office: 26, Sector-17 Kurukshetra-136118', 1, '2020-11-12 06:55:06');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(10) NOT NULL,
  `course_title` varchar(100) NOT NULL,
  `course_duration` varchar(50) NOT NULL,
  `course_fees` varchar(10) NOT NULL,
  `isactive` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_title`, `course_duration`, `course_fees`, `isactive`) VALUES
(1, 'PHP', '3 m onths', '6500', 1),
(2, 'Wordpress', '3 m onths', '7500', 1),
(3, 'CodeIgniter', '3 m onths', '6500', 1),
(4, 'Laravel', '3 m onths', '9500', 1);

-- --------------------------------------------------------

--
-- Table structure for table `course_payments`
--

CREATE TABLE `course_payments` (
  `id` int(10) NOT NULL,
  `center_user_id` int(10) NOT NULL,
  `student_id` int(10) NOT NULL,
  `razorpay_payment_id` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_payments`
--

INSERT INTO `course_payments` (`id`, `center_user_id`, `student_id`, `razorpay_payment_id`, `amount`, `created_on`) VALUES
(1, 1, 25, 'pay_G0D3nXL2T47zai', '5000', '2020-11-12 09:35:52'),
(2, 1, 25, 'pay_G0DEqi9phlrxp9', '100', '2020-11-12 09:46:42');

-- --------------------------------------------------------

--
-- Table structure for table `deductions`
--

CREATE TABLE `deductions` (
  `id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deductions`
--

INSERT INTO `deductions` (`id`, `description`, `amount`) VALUES
(1, 'SSS', 100),
(2, 'Pagibig', 350),
(3, 'PhilHealth', 150),
(4, 'Project Issues', 1500);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(15) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `birthdate` date NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `position_id` int(11) NOT NULL,
  `schedule_id` int(11) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `employee_id`, `firstname`, `lastname`, `address`, `birthdate`, `contact_info`, `gender`, `position_id`, `schedule_id`, `photo`, `created_on`) VALUES
(1, 'ABC123456789', 'Christine', 'Smith', 'Brgy. Mambulac, Silay City', '2018-04-02', '09000035719', 'Female', 1, 2, 'test60bfdaa0e83ca1241070d6abef812507.png', '2018-04-28'),
(3, 'DYE473869250', 'Julyn', 'Divinagracia', 'E.B. Magalona', '1992-05-02', '09123456789', 'Female', 2, 2, '', '2018-04-30'),
(4, 'JIE625973480', 'Gemalyn', 'Cepe', 'Carmen, Bohol', '1995-10-02', '09468029840', 'Female', 2, 3, '', '2018-04-30'),
(5, 'TQO238109674', 'Bruno', 'Den', 'Test', '1995-08-23', '5454578965', 'Male', 1, 2, 'thanossmile.jpg', '2018-07-11'),
(6, 'EDQ203874591', 'Henry', 'Doe', 'New St. Esp', '1991-07-25', '9876543210', 'Male', 2, 4, '46f278c81edbb2780a317089519f9025 (1).jpg', '2018-07-11'),
(7, 'TWY781946302', 'Johnny', 'Jr', 'Esp', '1995-07-11', '8467067344', 'Male', 1, 2, 'profile.jpg', '2018-07-11'),
(8, 'GWZ071342865', 'Tonny', 'Jr', 'Esp 12 South Street', '1994-07-19', '9876543210', 'Male', 1, 2, 'profile.jpg', '2018-07-11'),
(10, 'OCN273564901', 'Benjamin', 'Cohen', 'TEST', '1991-07-25', '78548852145', 'Male', 2, 3, 'profile.jpg', '2018-07-11'),
(11, 'PGX413705682', 'Ethan', 'Carson', 'DEMO', '1994-07-19', '8467067344', 'Male', 1, 2, 'profile.jpg', '2018-07-11'),
(12, 'YWX536478912', 'Daniel', 'Cooper', 'Test', '1995-07-11', '9876543210', 'Male', 2, 4, 'profile.jpg', '2018-07-11'),
(13, 'ALB590623481', 'Emma', 'Wallis', 'Test', '1994-07-19', '9632145655', 'Female', 1, 3, 'female4.jpg', '2018-07-11'),
(15, 'CAB835624170', 'Mia', 'Hollister', 'Test', '1995-07-18', '9632145655', 'Female', 2, 1, 'profile.jpg', '2018-07-11'),
(16, 'MGZ312906745', 'Emily', 'JK', 'Test', '1996-07-24', '9876543210', 'Female', 2, 3, 'profile.jpg', '2018-07-11'),
(18, 'BVH081749563', 'Dave', 'Cruze', 'Demo', '1990-01-02', '5454578965', 'Male', 2, 2, 'profile.jpg', '2018-07-11'),
(19, 'ZTC714069832', 'Logan', 'Paul', 'Esp 16', '1994-12-30', '0202121255', 'Male', 1, 1, 'profile.jpg', '2018-07-11'),
(20, 'VFT157620348', 'Jack', 'Adler', 'Test', '1991-07-25', '6545698880', 'Male', 1, 4, 'profile.jpg', '2018-07-11'),
(21, 'XRF342608719', 'Mason', 'Beckett', 'Demo', '1996-07-24', '8467067344', 'Male', 2, 1, 'profile.jpg', '2018-07-11'),
(22, 'LVO541238690', 'Lucas', 'Cooper', 'Demo', '1995-07-18', '9632145655', 'Male', 2, 1, 'profile.jpg', '2018-07-11'),
(23, 'AEI036154829', 'Alex', 'Cohen', 'Demo', '1995-08-23', '9632145655', 'Male', 1, 2, 'profile.jpg', '2018-07-11'),
(24, 'DQA283546791', 'Aditi', 'Sharma', 'Kurukshetra', '2020-09-28', '7888405066', 'Female', 5, 2, 'attitude-status-images-punjabi.jpg', '2020-02-19'),
(25, 'WEZ813605749', 'Nanidni', 'wadhwa', 'kurukshetra', '2020-11-24', '07888405066', 'Female', 1, 3, '921bacf62a8672c617dfea69834df33d.jpg', '2020-11-12');

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` int(10) NOT NULL,
  `center_user_id` int(10) NOT NULL,
  `exam_name` varchar(255) NOT NULL,
  `exam_duration` varchar(255) NOT NULL,
  `exam_fees` varchar(10) DEFAULT NULL,
  `isactive` int(1) NOT NULL,
  `created_on` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `center_user_id`, `exam_name`, `exam_duration`, `exam_fees`, `isactive`, `created_on`) VALUES
(4, 2, 'CodeIgniter', '2 months', '100', 1, '2020-11-12 06:22:48'),
(6, 1, 'Gifa Art Design and paint', '6 month', '100', 0, '2020-11-12 07:58:22'),
(7, 1, 'paint', '4 months', '100', 0, '2020-11-12 07:59:47'),
(8, 2, 'php', '3 months', '100', 0, '2020-11-12 08:00:02'),
(9, 2, 'wordpress', '3 moths', '100', 0, '2020-11-12 08:00:25'),
(10, 1, 'wall paintingp', '4 months', '100', 0, '2020-11-12 07:59:47');

-- --------------------------------------------------------

--
-- Table structure for table `online_users`
--

CREATE TABLE `online_users` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `online_users`
--

INSERT INTO `online_users` (`id`, `user_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 2),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 25),
(23, 25),
(24, 25),
(25, 25),
(26, 25),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1);

-- --------------------------------------------------------

--
-- Table structure for table `overtime`
--

CREATE TABLE `overtime` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(15) NOT NULL,
  `hours` double NOT NULL,
  `rate` double NOT NULL,
  `date_overtime` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `overtime`
--

INSERT INTO `overtime` (`id`, `employee_id`, `hours`, `rate`, `date_overtime`) VALUES
(4, '6', 240, 1500, '2031-11-08'),
(5, '4', 283.33333333333, 3600, '2018-06-05'),
(6, '24', 8.5, 10.5, '2020-11-16');

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `id` int(11) NOT NULL,
  `description` varchar(150) NOT NULL,
  `rate` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`id`, `description`, `rate`) VALUES
(1, 'Programmer', 100),
(2, 'Writer', 50),
(3, 'Marketing ', 35),
(4, 'Graphic Designer', 75),
(5, 'PHP Developer', 10.5);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(10) NOT NULL,
  `question` varchar(400) NOT NULL,
  `exam_id` int(10) NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `exam_id`, `isActive`) VALUES
(32, 'What is Serialization123?', 1, 1),
(33, ' If result = 2 + 3 * 5, what is the value and type of â€˜resultâ€™ variable?', 1, 1),
(34, ' What is the size of char variable?', 3, 1),
(35, 'What is the default value of short variable?', 1, 1),
(37, 'What is a Marker Interface?', 2, 1),
(52, 'Which of the following is not true?', 2, 1),
(53, 'In PHP the error control operator is _______ ?', 2, 1),
(54, 'Which of following are compound data type ?', 2, 1),
(55, 'Trace the odd data type?', 2, 1),
(56, 'Which of the following function returns the number of characters in a string variable?', 2, 1),
(82, 'Which of the collections allows null as the key ?', 1, 1),
(83, 'Which of the following is not the use of this keyword ?', 1, 1),
(84, 'Which of the following is true 2222?', 1, 1),
(85, 'Which of the following is false ?', 1, 1),
(86, 'Which interface does java.util.Hashtable implement ?', 1, 1),
(87, 'Which of the following was not introduced with Java 5 ?', 1, 1),
(88, 'Which of the following is not type of inner classes ?', 1, 1),
(89, 'In what order the elements of a HashSet are retrieved ?', 1, 1),
(91, 'If we add Enum constants to a sorted collection ( Treemap , TreeSet ), What will be the order in which they will be maintained ?', 1, 1),
(92, 'Which of the following collections stores its elements in insertion Order ?', 1, 1),
(93, 'Which of the following collection maintain its elements in Natural Sorted order ?', 1, 1),
(94, 'Interface can only have ...', 1, 1),
(95, 'Which is of the following is NOT TRUE for JVM ?', 1, 1),
(96, 'Which of the following cannot be marked static ?', 1, 1),
(97, 'Which of the following can be marked static ?', 1, 1),
(98, 'Which access specifiers can be used with top level class ?', 1, 1),
(99, 'Which of the following is false about main method ?', 1, 1),
(100, 'What is Joomla in PHP?', 2, 1),
(101, 'What happens if no file path is given in include() function?', 2, 1),
(102, 'echo does not return any value?', 2, 1),
(103, ' What is the purpose of $_SESSION[]?', 2, 1),
(104, ' What is the default size of a file set in upload_max_filesize ?', 2, 1),
(105, 'Can echo in php accept more than 1 parameter?', 2, 1),
(106, 'What is the difference between GET and POST method?', 2, 1),
(107, 'In which variable is the users IP address stored?', 2, 1),
(108, 'How can we count the number of elements in an array?', 2, 1),
(109, 'In mysql_fetch_array() if two or more columns of the result have the same field names, what action is taken?', 2, 1),
(110, 'Is strstr and strchr aliases?', 2, 1),
(111, 'What is array_keys() used for?', 2, 1),
(112, 'Can I generate DLL files from PHP scripts like in Perl?', 2, 1),
(113, 'Which function is used to strip whitespace (or other characters) from the beginning and end of a string?', 2, 1),
(114, 'PHP supports both simple and multi-dimensional arrays', 2, 1),
(115, 'How do I find out the number of parameters passed into function?', 2, 1),
(116, 'What is the strpos() function used for?', 2, 1),
(117, 'Which of the following rules is/are false for exceptions?', 2, 1),
(118, 'How can I run COM object from remote server ?', 2, 1),
(119, 'Can I run several versions of PHP at the same time?', 2, 1),
(120, 'Chemstry test wednesday', 7, 1),
(121, 'asdfdsfsfdsada', 1, 1),
(122, 'java basic test', 1, 1),
(124, 'php test ', 2, 1),
(125, 'java test again', 1, 1),
(126, 'java saturday test', 1, 1),
(127, 'java monday test with topic', 1, 1),
(128, 'java test question from content user', 1, 1),
(129, 'java with 2 option', 1, 1),
(134, 'evening test java', 1, 1),
(158, '<p>Enter Question Here.</p>\r\n', 1, 1),
(159, '<p>Enter Question Here.</p>\r\n', 1, 1),
(160, '<p>Enter Question Here.</p>\r\n', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `question_choices`
--

CREATE TABLE `question_choices` (
  `id` int(10) NOT NULL,
  `question_id` int(10) NOT NULL,
  `is_Correct_Choice` varchar(4) NOT NULL,
  `choice1` varchar(300) NOT NULL,
  `choice2` varchar(300) NOT NULL,
  `choice3` varchar(300) NOT NULL,
  `choice4` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_choices`
--

INSERT INTO `question_choices` (`id`, `question_id`, `is_Correct_Choice`, `choice1`, `choice2`, `choice3`, `choice4`) VALUES
(11, 32, 'A', 'Serialization is the process of writing the state of an object to another object', 'Serialization is the process of writing the state of an object to a byte stream.', 'Both of the above', 'None of the above'),
(12, 33, 'A', '17', '25', '20', 'None'),
(13, 34, 'B', '8 bit', '16 bit', '32 bit', '64 bit'),
(14, 35, 'B', '0.0', '0', 'null', 'not defined'),
(15, 37, 'C', 'marker interface is an interface with no method.', 'marker interface is an interface with single method, mark().', 'marker interface is an interface with single method, marker().', 'none of the above.'),
(25, 52, 'D', 'PHP makes a website dynamic.', 'PHP can be used to develop web applications.', 'PHP applications can not be compiled.', 'PHP can not be embedded into html.'),
(26, 53, 'A', '.', '*', '@', '&'),
(27, 54, 'C', 'Array', 'Objects', 'Both', 'None'),
(28, 55, 'D', 'floats', 'integer', 'doubles', 'Real number'),
(29, 56, 'D', 'len($variable)', 'count($variable)', 'strcount($variable)', 'strlen($variable)'),
(45, 82, 'A', 'HashTable', 'HashMap', 'TreeMap', 'LinkedHashMap'),
(46, 83, 'B', 'Passing itself to another method', 'To call the static method', 'Referring to the instance variable when local variable has the same name', 'Calling another constructor in constructor chaining'),
(47, 84, 'C', 'We can serialize static variables', 'We can serialize transient variables', 'We can serialize final variables', 'We can serialize instance methods'),
(48, 85, 'A', 'HashMap came before HashTable.', 'HashMap allows null values whereas Hashtable doesnâ€™t allow null values.', 'HashTable and HashMap allow Key-Value pairs.', 'Hashtable is synchronized whereas HashMap is not.'),
(49, 86, 'D', 'List', 'Set', 'Collection', 'Map'),
(50, 87, 'B', 'Generics', 'Strings within Switch', 'Enums', 'Annotations'),
(51, 88, 'C', 'Simple Inner Class', 'Static Nested Inner Class', 'Method Nested Static Inner Class', 'Anonymous Inner Class'),
(52, 89, 'A', 'Random Order', 'Insertion Order', 'Natural Sorting Order', 'Inverse Natural Sorting Order'),
(53, 91, 'C', 'Sorted Collection wont maintain them in any order.', 'Insertion Order', 'Order in which constants are declared.', 'Natural Sorting Order.'),
(54, 92, 'C', 'HashMap', 'TreeMap', 'LinkedHashMap', 'LinkedMap'),
(55, 93, 'B', 'HashMap', 'TreeMap', 'LinkedHashMap', 'LinkedMap'),
(56, 94, 'C', 'Member elements and Methods.', 'Static Variables and Static Methods.', 'Static Final Variables and Instance Method Declarations.', 'Member Elements , Instance Methods, Static variables and Static Methods.'),
(57, 95, 'C', 'JVM reads Byte Code and generates Machine Code.', 'JVM is a virtual Machine that acts as a intermediary between Java Application and Host Operating System.', 'JVM reads Source Code and generates Byte Code.', 'JVM acts as a translator that translates different Machine code ( on the basis of Host Machine ) for a common Byte Code.'),
(58, 96, 'C', 'Constructors , Classes ( Outer ) , Classes ( nested ), Interfaces , Local variables , Inner Class methods and instance variables. ', 'Constructors , Classes ( Outer ) , Interfaces , Local variables , Class variables , Class Methods , Inner Class methods and instance variables. ', 'Constructors , Classes ( Outer ) , Interfaces , Local variables , Inner Class methods and instance variables. ', 'Constructors , Classes ( Outer ) , Classes (Nested), Interfaces , Local variables , Inner Class methods and instance variables'),
(59, 97, 'D', 'Methods , Variables and Initialization Blocks.', 'Methods , Variables , Initialization Blocks and Outer Classes and nested Classes.', 'Methods , Variables , Initialization Blocks and Outer Classes.', 'Methods , Variables , Initialization Blocks and nested Classes.'),
(60, 98, 'A', 'public or default', 'public or private', 'public or protected', 'protected or default'),
(61, 99, 'C', ' It should be declared public and static', 'it should have only 1 argument of type String array', 'We can override main method', 'We can overload main method'),
(62, 100, 'B', 'Set of library enriched with fucntions', 'An open source CMS', 'Framework for designing dynamic pages', 'Framework and distribution system for reusable PHP components'),
(63, 101, 'C', 'PHP continues to execute the script.', 'Results in a fatal error', 'Include_path is made use of', 'It haults the script.'),
(64, 102, 'B', 'False', 'True', '', ''),
(65, 103, 'C', 'Used to register a global variable', 'Used to initialize a session.', 'Used to store variables of the current session', 'none of the above'),
(66, 104, 'B', '1 MB', '2 MB', '2.5 MB', '3 MB'),
(67, 105, 'A', 'Yes', 'No', '', ''),
(68, 106, 'A', 'GET displays the form values entered in the URL of the address bar where as POST does not.', 'POST displays the form values entered in the URL of the address bar where as GET does not.', 'There is no difference', ''),
(69, 107, 'B', '$DOMAIN', '$REMOTE_ADDR', '$GLOBALS', '$_ENV'),
(70, 108, 'D', 'Using sizeof()', 'count()', 'Writing a user defined function and using array_search()', 'Both a and b'),
(71, 109, 'C', 'the first column will take precedence', 'the column is skipped', 'the last column will take precedence', 'an error is thrown.'),
(72, 110, 'A', 'Yes', 'No', '', ''),
(73, 111, 'C', 'Compares array keys, and returns the matches', 'Checks if the specified key exists in the array', 'Returns all the keys of an array', 'Both b and c'),
(74, 112, 'B', 'No', 'Yes', '', ''),
(75, 113, 'D', 'trim_str', 'strip_str', 'strip', 'trim'),
(76, 114, 'A', 'True', 'False', '', ''),
(77, 115, 'A', 'By using func_num_args()', 'By using func_get_arg()', 'By using func_get_args()', 'None of the above'),
(78, 116, 'C', 'Find the last character of a string', 'Both b and c', 'Search for character within a string', 'Locate position of a stringâ€™s first character'),
(79, 117, 'D', 'Each try block or \"throw\" must have at least one corresponding catch block', 'Multiple catch blocks can be used to catch different classes of exceptions', 'Both a and b', 'Exceptions cannot be thrown (or re-thrown) in a catch block within a try block'),
(80, 118, 'D', 'like we run local objects', 'pass the IP of the remote machine as first parameter to the COM constructor', 'pass the IP of the remote machine as second parameter to the COM constructor.', 'Both a and c'),
(81, 119, 'A', 'Yes', 'No', '', ''),
(82, 120, 'B', 'option 1', 'optin 2', 'ooption 3', ''),
(83, 121, 'B', 'sdf', 'sdf', 'sdf', 'sdf'),
(84, 122, 'B', 'asdf', 'dfad', '', ''),
(86, 124, 'A', 'aa', 'bb', 'cc', 'dd'),
(87, 125, 'A', 'aa', 'bb', 'cc', 'dd'),
(88, 126, 'B', 'aa', 'bb', 'cc', 'dd'),
(89, 127, 'A', 'aa', 'bb', 'cc', 'dd'),
(90, 128, 'D', 'aa', 'bb', 'cc', 'dd'),
(91, 129, 'A', 'aa', 'bb', '', ''),
(92, 134, 'A', 'aa', 'bb', 'cc', 'dd'),
(93, 160, '2', '\r\nQuestion Option 1.\r\n\r\n', '\r\nQuestion Option 2.\r\n\r\n', '\r\nQuestion Option 3.\r\n\r\n', '\r\nQuestion Option 4.\r\n\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `result_students`
--

CREATE TABLE `result_students` (
  `id` int(10) NOT NULL,
  `student_id` int(10) NOT NULL,
  `test_id` int(10) NOT NULL,
  `total_marks` int(10) DEFAULT NULL,
  `attempt` int(10) NOT NULL,
  `duration` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result_students`
--

INSERT INTO `result_students` (`id`, `student_id`, `test_id`, `total_marks`, `attempt`, `duration`) VALUES
(1, 2, 2, 1, 2, '6.35782877'),
(2, 1, 1, 1, 20, '6.75519307');

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` int(11) NOT NULL,
  `time_in` time NOT NULL,
  `time_out` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `time_in`, `time_out`) VALUES
(1, '07:00:00', '16:00:00'),
(2, '08:00:00', '17:00:00'),
(3, '09:00:00', '18:00:00'),
(4, '10:00:00', '19:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `studentcashadvance`
--

CREATE TABLE `studentcashadvance` (
  `id` int(11) NOT NULL,
  `date_advance` date NOT NULL,
  `student_id` varchar(15) NOT NULL,
  `amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentcashadvance`
--

INSERT INTO `studentcashadvance` (`id`, `date_advance`, `student_id`, `amount`) VALUES
(2, '2018-05-02', '1', 1000),
(3, '2018-05-02', '1', 1000),
(4, '2018-07-12', '5', 3500),
(0, '2020-11-12', '10', 350),
(0, '2020-11-12', '10', 350);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) NOT NULL,
  `center_id` int(10) DEFAULT NULL,
  `student_id` varchar(15) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `birthdate` date NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `course_id` int(11) NOT NULL,
  `schedule_id` int(11) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `isactive` int(1) NOT NULL DEFAULT 0,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `center_id`, `student_id`, `username`, `password`, `firstname`, `lastname`, `address`, `birthdate`, `contact_info`, `gender`, `course_id`, `schedule_id`, `photo`, `isactive`, `created_on`) VALUES
(22, 1, 'VYG916857230', NULL, NULL, 'gagan', 'gagan', 'Arya Samaj Market Office: 26, Sector-17 Kurukshetra-136118\r\ntest', '2020-11-24', '07888405066', 'Female', 0, 3, '921bacf62a8672c617dfea69834df33d.jpg', 0, '2020-11-12'),
(23, 2, 'VYG916857230', NULL, NULL, 'aditi', 'sharma', 'Arya Samaj Market Office: 26, Sector-17 Kurukshetra-136118\r\ntest', '2020-11-24', '07888405066', 'Female', 4, 3, '921bacf62a8672c617dfea69834df33d.jpg', 0, '2020-11-12'),
(24, 1, 'VYG916857230', NULL, NULL, 'nanindini', 'wadha', 'Arya Samaj Market Office: 26, Sector-17 Kurukshetra-136118\r\ntest', '2020-11-24', '07888405066', 'Female', 4, 3, '921bacf62a8672c617dfea69834df33d.jpg', 0, '2020-11-12'),
(25, 1, 'VYG916857230', 'sahil', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'sahil', 'saini', 'Arya Samaj Market Office: 26, Sector-17 Kurukshetra-136118\r\ntest', '2020-11-24', '07888405066', 'Female', 4, 3, '921bacf62a8672c617dfea69834df33d.jpg', 1, '2020-11-12');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `cashadvance`
--
ALTER TABLE `cashadvance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `computer_centers`
--
ALTER TABLE `computer_centers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_payments`
--
ALTER TABLE `course_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deductions`
--
ALTER TABLE `deductions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `online_users`
--
ALTER TABLE `online_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `overtime`
--
ALTER TABLE `overtime`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`exam_id`);

--
-- Indexes for table `question_choices`
--
ALTER TABLE `question_choices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `result_students`
--
ALTER TABLE `result_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `cashadvance`
--
ALTER TABLE `cashadvance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `computer_centers`
--
ALTER TABLE `computer_centers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `course_payments`
--
ALTER TABLE `course_payments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `deductions`
--
ALTER TABLE `deductions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `online_users`
--
ALTER TABLE `online_users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `overtime`
--
ALTER TABLE `overtime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `question_choices`
--
ALTER TABLE `question_choices`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `result_students`
--
ALTER TABLE `result_students`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `question_choices`
--
ALTER TABLE `question_choices`
  ADD CONSTRAINT `question_choices_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
