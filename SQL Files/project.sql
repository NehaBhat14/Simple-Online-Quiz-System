-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 06, 2022 at 02:57 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `leaderboard` ()  
  NO SQL
select q.quizname,s.score,s.totalscore,st.name,s.mail from score s,student st,quiz q where s.mail=st.mail and q.quizid=s.quizid order by score DESC$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `dept`
--

CREATE TABLE IF NOT EXISTS `dept` (
  `dept_id` int(11) NOT NULL,
  `dept_name` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`dept_id`),
  KEY `dept_name` (`dept_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dept`
--

INSERT INTO `dept` (`dept_id`, `dept_name`) VALUES
(1, 'CSE'),
(3, 'ECE'),
(4, 'EEE'),
(2, 'ISE');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `qs` varchar(200) NOT NULL,
  `op1` varchar(30) NOT NULL,
  `op2` varchar(30) NOT NULL,
  `op3` varchar(30) NOT NULL,
  `answer` varchar(30) NOT NULL,
  `quizid` int(11) NOT NULL,
  UNIQUE KEY `qs` (`qs`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`qs`, `op1`, `op2`, `op3`, `answer`, `quizid`) VALUES
('A function _____', 'May or may not need input data', 'May or may not return a value', 'None of these', 'Both a and b', 100),
('A _________ set of rules that governs data communication.', 'Standards', 'RFCs', 'Servers', 'Protocols ', 302),
('Among unary operation which operator represents increment?', '--', '-', '!', '++', 100),
('Application layer is implemented in ____________ ?', 'NIC', 'Packet transport', 'Ethernet', 'End system', 302),
('C programs are converted into machine language with the help of..', 'An Editor', 'An operating system', 'None of these.', 'A compiler', 100),
('C was primiarily developed as..', 'General purpose language', 'Data processing language', 'None of these', 'System programming language', 100),
('If the function returns no value then it is called ____', 'Data type function', 'Calling function', 'Main function', 'Void function', 100),
('In computer security, _______ means that active computer systems can only be modified by authorized persons.', 'Confidentiality', 'Availability', 'Authenticity', 'Integrity', 302),
('In the standard library of C programming language, which of the following header file is designed for basic mathematical operations?', 'conio.h', 'dos.h', 'stdio.h', 'math.h', 100),
('In which language UNIX is written?', 'C++', 'Python', 'JAVA', 'C', 303),
('The number of layers in ISO OSI reference model is __________ ?', '5', '6', '10', '7', 302),
('The original Unix shell was written by __________.', 'Stephen R. C.', 'Stephen R. Korn', 'Stephen Watson', 'Stephen R. Bourne', 303),
('The original Unix shell was written in the mid ________.', '1960s', '1990s', '1980s', '1970s', 303),
('What is the default symbol for command prompt in Bourne shell?', '!', '@', '#', '$', 303),
('What is the default value of byte variable?', '0.0', 'null', 'not defined', '0', 200),
('What is the extension of java code files?', '.js', '.txt', '.class', '.java', 200),
('What is the size of float variable?', '8 bit', '16 bit', '64 bit', '32 bit', 200),
('What will be the output of $date?', 'Current date', 'Tomorrow date and time', 'Yesterday date', 'Current date and time', 303),
('What will be the value of the following Python expression? <br>\n4 + 3 % 5', '2', '4', '1', '7', 300),
('Which component is used to compile, debug and execute the java programs?', 'JRE', 'JIT', 'JVM', 'JDK', 200),
('Which of the following is an independent malicious program that does not require any other program?', 'Trap door', 'Trojan Horse', 'Virus', 'Worm', 302),
('Which of the following is not a feature of DBMS?', 'Minimum Duplication of Data', 'High Level of Security', 'Support ACID Property', 'Single-user Access only ', 301),
('Which of the following is not a function of the database?', 'Managing stored data', 'Manipulating data', 'Security for stored data', 'Analysing code', 301),
('Which of the following is not a type of database?', 'Hierarchical', 'Network', 'Distributed', 'Decentralized', 301),
('Which of the following is not a type of shell?  ', 'The C Shell', 'The Korn Shell', 'The Bourne Shell', 'The Perl Shell', 303),
('Which of the following is not an example of DBMS?', ' MySQL', ' Microsoft Access', ' IBM DB2', 'Google', 301),
('Which of the following is the correct extension of the Python file?', '.python', '.pl', '.p', '.py', 300),
('Which of the following is used to define a block of code in Python language?', 'Key', 'Brackets', 'All of the mentioned', 'Indentation', 300),
('Which type of data can be stored in the database?', 'Image oriented data', 'Text, files containing data', 'Data of audio or video form', 'All of the above', 301),
('Which type of Programming does Python support?', 'object-oriented programming', 'structured programming', 'functional programming', 'all of the mentioned', 300),
('Who developed Python Programming Language?', 'Wick van Rossum', 'Rasmus Lerdorf', 'Niene Stom', 'Guido van Rossum', 300),
('Who invented Java Programming?', 'Guido van Rossum', 'Dennis Ritchie', 'Bjarne Stroustrup', 'James Gosling', 200),
('______________ is a set of one or more attributes taken collectively to uniquely identify a record.', 'Primary Key', 'Foreign key', 'Candidate key', 'Super key', 301),
('_________________ operations do not preserve non-matched tuples.', 'Left outer join', 'Natural join', 'Right outer join', 'Inner join', 301);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE IF NOT EXISTS `quiz` (
  `quizid` int(11) NOT NULL AUTO_INCREMENT,
  `quizname` varchar(20) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mail` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`quizid`),
  KEY `mail` (`mail`),
  KEY `quizid` (`quizid`)
) ENGINE=InnoDB AUTO_INCREMENT=304 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`quizid`, `quizname`, `date_created`, `mail`) VALUES
(100, 'C quiz', '2022-01-30 16:13:50', 'nehabhat.19cs@saividya.ac.in'),
(200, 'JAVA quiz', '2022-01-28 13:30:14', 'nehabhat.19cs@saividya.ac.in'),
(300, 'PYTHON quiz', '2022-01-18 17:04:12', 'srinivaspavan@gmail.com'),
(301, 'DBMS quiz', '2022-02-06 09:20:34', 'bharatha@gmail.com'),
(302, 'CNS quiz', '2022-02-06 10:55:01', 'bharatha@gmail.com'),
(303, 'unix quiz', '2022-02-06 11:04:29', 'srinivaspavan@gmail.com');

--
-- Triggers `quiz`
--
DELIMITER $$
CREATE TRIGGER `ondeleteqs` AFTER DELETE ON `quiz` FOR EACH ROW delete from questions where questions.quizid=old.quizid
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `score`
--

CREATE TABLE IF NOT EXISTS `score` (
  `slno` int(11) NOT NULL AUTO_INCREMENT,
  `score` int(11) NOT NULL,
  `quizid` int(11) NOT NULL,
  `mail` varchar(30) DEFAULT NULL,
  `totalscore` int(11) DEFAULT NULL,
  `remark` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`slno`),
  KEY `quizid` (`quizid`),
  KEY `mail` (`mail`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `score`
--

INSERT INTO `score` (`slno`, `score`, `quizid`, `mail`, `totalscore`, `remark`) VALUES
(1, 5, 200, 'lily@gmail.com', 5, 'good'),
(2, 4, 303, 'lily@gmail.com', 6, 'good'),
(3, 7, 301, 'harry@gmail.com', 7, 'good'),
(4, 4, 300, 'harry@gmail.com', 5, 'good'),
(5, 6, 100, 'nina@gmail.com', 6, 'good'),
(6, 5, 302, 'nina@gmail.com', 5, 'good');

--
-- Triggers `score`
--
DELIMITER $$
CREATE TRIGGER `remarks` BEFORE INSERT ON `score` FOR EACH ROW set NEW.remark = if(NEW.score <= 2, 'Bad', 'Good')
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE IF NOT EXISTS `staff` (
  `staffid` varchar(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `mail` varchar(30) NOT NULL,
  `phno` varchar(10) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `DOB` varchar(10) NOT NULL,
  `pw` varchar(200) NOT NULL,
  `dept` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`mail`),
  UNIQUE KEY `mail` (`mail`,`phno`),
  UNIQUE KEY `staffid` (`staffid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staffid`, `name`, `mail`, `phno`, `gender`, `DOB`, `pw`, `dept`) VALUES
('CS02', 'Bharath A', 'bharatha@gmail.com', '896745123', 'M', '2000-08-01', 'dbLKNy8uC3.bM', 'CSE'),
('CS01', 'Neha Bhat', 'nehabhat.19cs@saividya.ac.in', '987654321', 'F', '2000-01-01', 'dbz7CNk6t8rZI', 'CSE'),
('IS02', 'Srinivas Pavan', 'srinivaspavan@gmail.com', '978653412', 'M', '2001-04-17', 'dbK5tLiOhZdNE', 'ISE');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `usn` varchar(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `mail` varchar(30) NOT NULL,
  `phno` varchar(10) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `DOB` varchar(10) NOT NULL,
  `pw` varchar(200) NOT NULL,
  `dept` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`mail`),
  UNIQUE KEY `mail` (`mail`),
  UNIQUE KEY `phno` (`phno`),
  UNIQUE KEY `usn` (`usn`),
  KEY `dept` (`dept`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`usn`, `name`, `mail`, `phno`, `gender`, `DOB`, `pw`, `dept`) VALUES
('1va19is312', 'Harry', 'harry@gmail.com', '3425476398', 'M', '2003-12-02', 'dbNY6HLZgTQ.k', 'ISE'),
('1va19cs501', 'Lily', 'lily@gmail.com', '8765549812', 'F', '2002-06-13', 'dbpmMFNE7iktM', 'CSE'),
('1va19cs714', 'Nina', 'nina@gmail.com', '5456879123', 'F', '2002-01-16', 'dbZBlJzcL26Zk', 'CSE');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`quizid`) REFERENCES `quiz` (`quizid`) ON DELETE CASCADE;

--
-- Constraints for table `quiz`
--
ALTER TABLE `quiz`
  ADD CONSTRAINT `quiz_ibfk_1` FOREIGN KEY (`mail`) REFERENCES `staff` (`mail`) ON DELETE CASCADE;

--
-- Constraints for table `score`
--
ALTER TABLE `score`
  ADD CONSTRAINT `score_ibfk_1` FOREIGN KEY (`quizid`) REFERENCES `quiz` (`quizid`) ON DELETE CASCADE,
  ADD CONSTRAINT `score_ibfk_2` FOREIGN KEY (`mail`) REFERENCES `student` (`mail`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`dept`) REFERENCES `dept` (`dept_name`) ON DELETE SET NULL;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`dept`) REFERENCES `dept` (`dept_name`) ON DELETE SET NULL;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
