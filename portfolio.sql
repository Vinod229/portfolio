-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2019 at 06:40 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `p_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `p_title` varchar(255) NOT NULL,
  `p_summary` varchar(250) NOT NULL,
  `p_description` text NOT NULL,
  `p_picture` varchar(250) NOT NULL,
  `p_video` varchar(250) NOT NULL,
  `client_name` varchar(250) NOT NULL,
  `client_email` varchar(250) NOT NULL,
  `p_rating` int(11) NOT NULL,
  `p_comment` varchar(250) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `is_public` tinyint(1) NOT NULL,
  `p_status` varchar(1) NOT NULL COMMENT 'a-active, d-delete'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`p_id`, `user_id`, `p_title`, `p_summary`, `p_description`, `p_picture`, `p_video`, `client_name`, `client_email`, `p_rating`, `p_comment`, `created_on`, `updated_on`, `is_public`, `p_status`) VALUES
(1, 1, 'Lorem Ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '<strong style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply </span><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><font color=\"#ff0000\">dummy </font></span><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the <b style=\"\"><i style=\"\"><u style=\"\"><font color=\"#008000\">1500s</font></u></i></b>, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><div><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><table class=\"table-1\"><tbody><tr><td>1 </td><td>2 </td></tr><tr><td>3 </td><td>4 </td></tr></tbody></table><br></span></div>', 'Advanced-analytics1_1547015082.jpg', '', 'Jhon Madison', 'jhon.madison@gmail.com', 3, '', '2019-01-09 06:24:42', '2019-01-09 18:32:39', 0, ''),
(4, 1, 'Why do we use it?', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">It is a long established fact that a reader will be <b>distracted </b>by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, <u>content </u>here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span>', 'Zumba-class_1547059329.jpg', '', '', '', 4, '', '2019-01-09 18:42:09', '2019-01-09 18:43:47', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `s_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `s_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`s_id`, `user_id`, `s_name`) VALUES
(1, 1, 'Wordpress Development'),
(2, 1, 'UI & UX Development'),
(3, 1, 'Logo Desgning'),
(4, 2, 'Wordpress '),
(5, 1, 'Interior Designing'),
(6, 1, 'Exterior Designing'),
(7, 1, 'Home Automation');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `u_code` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `city` varchar(255) NOT NULL,
  `profession` varchar(150) DEFAULT NULL,
  `experience` int(11) NOT NULL,
  `education` varchar(255) NOT NULL,
  `summary` text NOT NULL,
  `password` varchar(255) NOT NULL,
  `conumber` varchar(20) NOT NULL,
  `u_picture` varchar(255) NOT NULL,
  `authKey` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL COMMENT '0=inactive, 1=active',
  `verification` tinyint(1) NOT NULL,
  `createdon` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `u_code`, `name`, `email_id`, `phone`, `city`, `profession`, `experience`, `education`, `summary`, `password`, `conumber`, `u_picture`, `authKey`, `active`, `verification`, `createdon`, `updatedon`) VALUES
(1, 'PRO1901172', 'Tungana Vinod Kumar', 'tvinodkumar10@gmail.com', '9581635841', 'Hyderabad', 'UI & UX Designer', 4, 'B-Tech (CSE), RGUKT-Nuzvid.', 'Over 4 years of experience a full stack developer in Web technologies.', 'c91a5a5d6f152a5d5d77e4ca305dfb08', 'ABCD1234', 'profilePic_1546764232.jpg', '', 0, 0, '2019-01-06 08:41:34', '2019-01-06 08:43:52'),
(2, 'PRO1901308', 'Tungana Mohan Kumar', 'tunganamohan@gmail.com', '9000725964', 'Bangalore', 'Electrician', 2, 'Diploma (ECE), C.R. Reddy College.', 'Hello world', 'f6d5b63abf7f05232cce1bdac62be050', 'XYZ987', 'profilePic_1531837978_1546802562.jpg', '', 0, 0, '2019-01-06 19:21:43', '2019-01-06 19:22:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email_id` (`email_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
