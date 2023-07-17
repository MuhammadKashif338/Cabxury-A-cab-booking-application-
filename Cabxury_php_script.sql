-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 16, 2023 at 06:16 PM
-- Server version: 10.5.20-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id20591426_cabxury`
--
CREATE DATABASE IF NOT EXISTS `id20591426_cabxury` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `id20591426_cabxury`;

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
CREATE TABLE `driver` (
  `driver_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_number` varchar(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `car_model` varchar(50) NOT NULL
) ;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`driver_id`, `name`, `email`, `phone_number`, `password`, `car_model`) VALUES
(1, 'Muhammad Aamir', 'aamir@gmail.com', '03336729545', 'abcd1234', 'Civic'),
(210, 'Muhammad Aamir', 'ddjdkc', '12345678919', 'sxvhdxckdk', ''),
(211, 'Muhammad Kashif', 'kashif@gmail.com', '12345678901', '0987654321', 'Corolla'),
(212, 'syedmaarij', 'syedmaarij613@gmail.com', '03322990001', 'heheyouaregreat', '2018'),
(215, 'Muhammad Kashif', 'kashif2@gmail.com', '03123456789', '0987654321', 'Jeep'),
(217, 'syedmaarij', 'syedmaarij312@gmail.com', '03329903901', 'hahaloveyaa123', '2018');

-- --------------------------------------------------------

--
-- Table structure for table `driver_rating`
--

DROP TABLE IF EXISTS `driver_rating`;
CREATE TABLE `driver_rating` (
  `rating_id` int(11) NOT NULL,
  `ride_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `rating_value` varchar(50) DEFAULT NULL,
  `rating_comment` varchar(200) DEFAULT NULL,
  `app_rating` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `driver_rating`
--

INSERT INTO `driver_rating` (`rating_id`, `ride_id`, `user_id`, `driver_id`, `rating_value`, `rating_comment`, `app_rating`) VALUES
(10, 175, 78, 1, '4.0', '', '5.0'),
(11, 188, 89, 215, '2.0', 'Amazing', '2.0'),
(12, 200, 90, 1, '3.0', '', '5.0'),
(13, 213, 124, 1, '0.0', '', '0.0');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `ride_id` int(11) NOT NULL,
  `payment_status` varchar(50) NOT NULL DEFAULT 'Successful',
  `payment_method` varchar(50) NOT NULL,
  `Transportation_mode` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `ride_id`, `payment_status`, `payment_method`, `Transportation_mode`) VALUES
(95, 163, 'Paid', 'Credit Card', 'Car (Mini)'),
(96, 164, 'Paid', 'Credit Card', 'Bike'),
(97, 169, 'Paid', 'EasyPaisa', 'Bike'),
(98, 173, 'Paid', 'Credit Card', 'Bike'),
(99, 185, 'Paid', 'Credit Card', 'Bike'),
(100, 198, 'Paid', 'Credit Card', 'Bike'),
(101, 200, 'Paid', 'Credit Card', 'Bike'),
(102, 201, 'Paid', 'Cash', 'Car (AC)'),
(103, 201, 'Paid', 'Credit Card', 'Car (AC)'),
(104, 201, 'Paid', 'EasyPaisa', 'Car (AC)'),
(105, 201, 'Paid', 'Credit Card', 'Bike'),
(106, 204, 'Paid', 'Cash', 'Car (AC)'),
(107, 205, 'Paid', 'Cash', 'Car (AC)'),
(108, 206, 'Paid', 'Cash', 'Car (AC)'),
(109, 207, 'Paid', 'Cash', 'Car (AC)'),
(110, 208, 'Paid', 'Cash', 'Car (AC)'),
(111, 209, 'Paid', 'Cash', 'Car (AC)'),
(112, 210, 'Paid', 'Cash', 'Car (AC)'),
(113, 211, 'Paid', 'Cash', 'Car (AC)'),
(114, 211, 'Paid', 'Cash', 'Car (AC)'),
(115, 211, 'Paid', 'Cash', 'Car (AC)'),
(116, 211, 'Paid', 'Cash', 'Car (AC)'),
(117, 211, 'Paid', 'Cash', 'Car (AC)'),
(118, 211, 'Paid', 'Cash', 'Car (AC)'),
(119, 211, 'Paid', 'Cash', 'Car (AC)'),
(120, 211, 'Paid', 'Cash', 'Car (AC)'),
(121, 213, 'Paid', 'Credit Card', 'Bike'),
(122, 215, 'Paid', 'Credit Card', 'Bike'),
(123, 216, 'Paid', 'Credit Card', 'Bike'),
(124, 217, 'Paid', 'Credit Card', 'Bike'),
(125, 219, 'Paid', 'Credit Card', 'Cabxury(Royal)'),
(126, 221, 'Paid', 'Cash', 'Cabxury(Royal)'),
(127, 222, 'Paid', 'Credit Card', 'Car(Sports)'),
(128, 227, 'Paid', 'Credit Card', 'Cabxury(Royal)');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
CREATE TABLE `rating` (
  `rating_id` int(11) NOT NULL,
  `ride_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `rating_value` varchar(50) DEFAULT NULL,
  `rating_comment` varchar(200) DEFAULT NULL,
  `app_rating` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`rating_id`, `ride_id`, `user_id`, `driver_id`, `rating_value`, `rating_comment`, `app_rating`) VALUES
(13, 163, 78, 1, '4.0', 'nice', '4.5'),
(14, 164, 89, 210, '3.0', '', '4.5'),
(15, 200, 89, 1, '5.0', 'Nice', '5.0'),
(16, 201, 78, 211, '2.0', 'Fair', '3.0'),
(17, 201, 111, 215, '5.0', 'driver is a cheetah ', '5.0'),
(18, 201, 111, 212, '4.0', 'good', '0.0'),
(19, 201, 111, 212, '4.0', 'good', '4.0'),
(20, 204, 131, 1, '4.5', '', '4.5'),
(21, 204, 131, 1, '4.5', '', '4.5'),
(22, 207, 140, 217, '5.0', 'good', '5.0'),
(23, 211, 78, 217, '5.0', 'good', '5.0'),
(24, 215, 78, 212, '0.0', '', '0.0'),
(25, 216, 78, 217, '1.0', 'poor driver', '4.5'),
(26, 217, 78, 217, '4.0', '', '3.5'),
(27, 219, 78, 215, '4.5', '', '3.0'),
(28, 221, 78, 211, '5.0', '', '4.5'),
(29, 222, 78, 217, '5.0', '', '3.5'),
(30, 227, 158, 210, '5.0', 'thanks ', '5.0');

-- --------------------------------------------------------

--
-- Table structure for table `ride`
--

DROP TABLE IF EXISTS `ride`;
CREATE TABLE `ride` (
  `ride_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `pickup_location` varchar(100) NOT NULL,
  `drop_location` varchar(100) NOT NULL,
  `ride_distance` varchar(100) DEFAULT NULL,
  `ride_fare` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ride`
--

INSERT INTO `ride` (`ride_id`, `user_id`, `driver_id`, `pickup_location`, `drop_location`, `ride_distance`, `ride_fare`) VALUES
(161, 1, 25, 'CIS Classrooms, NED University Of Engineering & Technology, Karachi, Karachi City, Sindh, Pakistan\n', 'ned University', '0.24822201972578298', '19.85776157806264'),
(163, 78, 1, 'Plot R 224, Block 6 Gulshan-e-Iqbal, Karachi, Karachi City, Sindh, Pakistan\n', 'saddar', '9.919964', '694.3975'),
(164, 89, 210, 'Plot 359, Sector 1-D Sector 1 D Mujahidabad, Karachi, Karachi City, Sindh 75800, Pakistan\n', 'ned university', '10.148156', '608.8894'),
(165, 89, 210, 'Plot 359, Sector 1-D Sector 1 D Mujahidabad, Karachi, Karachi City, Sindh 75800, Pakistan\n', 'ned university', '10.148156', '608.8894'),
(166, 89, 1, 'Plot 359, Sector 1-D Sector 1 D Mujahidabad, Karachi, Karachi City, Sindh 75800, Pakistan\n', 'ned university', '10.148156', '608.8894'),
(167, 89, 1, 'Plot 359, Sector 1-D Sector 1 D Mujahidabad, Karachi, Karachi City, Sindh 75800, Pakistan\n', 'Ned university', '10.148156', '608.8894'),
(168, 89, 211, 'Plot 359, Sector 1-D Sector 1 D Mujahidabad, Karachi, Karachi City, Sindh 75800, Pakistan\n', 'Ned university', '10.148156', '608.8894'),
(169, 78, 1, 'Plot R 224, Block 6 Gulshan-e-Iqbal, Karachi, Karachi City, Sindh, Pakistan\n', 'ned university ', '1.6387889', '131.10312'),
(170, 78, 210, 'Plot R 224, Block 6 Gulshan-e-Iqbal, Karachi, Karachi City, Sindh, Pakistan\n', 'ned university ', '1.6378981', '131.03185'),
(171, 78, 211, 'Plot R 224, Block 6 Gulshan-e-Iqbal, Karachi, Karachi City, Sindh, Pakistan\n', 'ned university ', '1.6378981', '131.03185'),
(172, 78, 1, 'Plot R 224, Block 6 Gulshan-e-Iqbal, Karachi, Karachi City, Sindh, Pakistan\n', 'gadap', '26.582165', '1329.1082'),
(173, 78, 210, 'Plot R 224, Block 6 Gulshan-e-Iqbal, Karachi, Karachi City, Sindh, Pakistan\n', 'gadap', '26.582165', '1329.1082'),
(174, 78, 210, 'Plot R 224, Block 6 Gulshan-e-Iqbal, Karachi, Karachi City, Sindh, Pakistan\n', 'gadap', '26.582165', '1329.1082'),
(175, 78, 210, 'Plot R 224, Block 6 Gulshan-e-Iqbal, Karachi, Karachi City, Sindh, Pakistan\n', 'saddar', '9.920544', '694.4381'),
(176, 78, 1, 'Plot R 224, Block 6 Gulshan-e-Iqbal, Karachi, Karachi City, Sindh, Pakistan\n', 'lucky one mall', '1.5472281', '123.77825'),
(177, 78, 211, 'Plot R 224, Block 6 Gulshan-e-Iqbal, Karachi, Karachi City, Sindh, Pakistan\n', 'ned university ', '1.6378981', '131.03185'),
(178, 78, 211, 'Plot R 224, Block 6 Gulshan-e-Iqbal, Karachi, Karachi City, Sindh, Pakistan\n', 'ned university ', '1.6378981', '131.03185'),
(179, 78, 210, 'Plot R 224, Block 6 Gulshan-e-Iqbal, Karachi, Karachi City, Sindh, Pakistan\n', 'saddar', '9.920544', '694.4381'),
(180, 78, 210, 'Plot R 224, Block 6 Gulshan-e-Iqbal, Karachi, Karachi City, Sindh, Pakistan\n', 'saddar', '9.920544', '694.4381'),
(181, 78, 211, 'Plot R 224, Block 6 Gulshan-e-Iqbal, Karachi, Karachi City, Sindh, Pakistan\n', 'saddar', '9.920544', '694.4381'),
(182, 78, 1, 'Plot R 224, Block 6 Gulshan-e-Iqbal, Karachi, Karachi City, Sindh, Pakistan\n', 'saddar', '9.920544', '694.4381'),
(183, 78, 210, 'Plot R 224, Block 6 Gulshan-e-Iqbal, Karachi, Karachi City, Sindh, Pakistan\n', 'ned university ', '1.6378981', '131.03185'),
(184, 78, 211, 'Plot R 224, Block 6 Gulshan-e-Iqbal, Karachi, Karachi City, Sindh, Pakistan\n', 'gadap', '26.582165', '1329.1082'),
(185, 89, 210, 'Plot 283, Sector 1-D Sector 1 D Mujahidabad, Karachi, Karachi City, Sindh, Pakistan\n', 'Ned University', '10.077682', '604.6609'),
(186, 89, 210, 'Plot 283, Sector 1-D Sector 1 D Mujahidabad, Karachi, Karachi City, Sindh, Pakistan\n', 'Ned University', '10.082332', '604.93994'),
(187, 89, 210, 'Plot 283, Sector 1-D Sector 1 D Mujahidabad, Karachi, Karachi City, Sindh, Pakistan\n', 'ned university', '10.0762415', '604.57446'),
(188, 89, 210, 'Plot 283, Sector 1-D Sector 1 D Mujahidabad, Karachi, Karachi City, Sindh, Pakistan\n', 'ned university', '10.0762415', '604.57446'),
(189, 89, 212, 'Plot 359, Sector 1-D Sector 1 D Mujahidabad, Karachi, Karachi City, Sindh 75800, Pakistan\n', 'Ned university', '10.148156', '608.8894'),
(190, 89, 1, 'Plot 359, Sector 1-D Sector 1 D Mujahidabad, Karachi, Karachi City, Sindh 75800, Pakistan\n', 'Ned University', '10.148156', '608.8894'),
(191, 89, 215, 'Plot 359, Sector 1-D Sector 1 D Mujahidabad, Karachi, Karachi City, Sindh 75800, Pakistan\n', 'Ned University', '10.148156', '608.8894'),
(192, 78, 215, 'Plot R 224, Block 6 Gulshan-e-Iqbal, Karachi, Karachi City, Sindh, Pakistan\n', 'ned university ', '1.6383284', '131.06628'),
(193, 78, 212, 'Plot R 224, Block 6 Gulshan-e-Iqbal, Karachi, Karachi City, Sindh, Pakistan\n', 'saddar', '9.920131', '694.4091'),
(194, 89, 215, 'Plot 359, Sector 1-D Sector 1 D Mujahidabad, Karachi, Karachi City, Sindh 75800, Pakistan\n', 'ned university', '10.148156', '608.8894'),
(195, 89, 210, 'Plot 359, Sector 1-D Sector 1 D Mujahidabad, Karachi, Karachi City, Sindh 75800, Pakistan\n', 'ned university', '10.148156', '608.8894'),
(196, 97, 212, 'Plot R 224, Block 6 Gulshan-e-Iqbal, Karachi, Karachi City, Sindh, Pakistan\n', 'kamari', '4144.31', '207215.5'),
(197, 97, 1, 'Plot R 224, Block 6 Gulshan-e-Iqbal, Karachi, Karachi City, Sindh, Pakistan\n', 'dastagir', '2.866633', '229.33063'),
(198, 89, 211, 'Plot 359, Sector 1-D Sector 1 D Mujahidabad, Karachi, Karachi City, Sindh 75800, Pakistan\n', 'ned university', '10.148156', '608.8894'),
(199, 1, 215, 'Plot 359, Sector 1-D Sector 1 D Mujahidabad, Karachi, Karachi City, Sindh 75800, Pakistan\n', 'ned university', '10.148156', '608.8894'),
(200, 89, 1, 'Plot 359, Sector 1-D Sector 1 D Mujahidabad, Karachi, Karachi City, Sindh 75800, Pakistan\n', 'ned university', '10.148156', '608.8894'),
(201, 78, 210, 'Plot R 224, Block 6 Gulshan-e-Iqbal, Karachi, Karachi City, Sindh, Pakistan\n', 'saddar', '9.920131', '694.4091'),
(202, 120, 210, 'R2HX+VVM, Street Number 21, Punjab Colony, Karachi, Karachi City, Sindh 75600, Pakistan\n', 'karachi', '6.0082107', '420.57474'),
(203, 128, 210, 'R2HX+VVM, Street Number 21, Punjab Colony, Karachi, Karachi City, Sindh 75600, Pakistan\n', 'karachi', '6.0091906', '420.64334'),
(204, 131, 215, 'R2HX+VVM, Street Number 21, Punjab Colony, Karachi, Karachi City, Sindh 75600, Pakistan\n', 'karachi', '6.009319', '420.6523'),
(205, 132, 1, 'R2HX+VVM, Street Number 21, Punjab Colony, Karachi, Karachi City, Sindh 75600, Pakistan\n', 'karachi', '6.0087233', '420.61063'),
(206, 138, 210, 'R2HX+VVM, Street Number 21, Punjab Colony, Karachi, Karachi City, Sindh 75600, Pakistan\n', 'karachi', '6.0092335', '420.64636'),
(207, 140, 1, 'R2HX+VVM, Street Number 21, Punjab Colony, Karachi, Karachi City, Sindh 75600, Pakistan\n', 'karachi', '6.009512', '420.66583'),
(208, 141, 217, 'R2HX+VVM, Street Number 21, Punjab Colony, Karachi, Karachi City, Sindh 75600, Pakistan\n', 'karachi', '6.009426', '420.65982'),
(209, 144, 215, 'R2HX+VVM, Street Number 21, Punjab Colony, Karachi, Karachi City, Sindh 75600, Pakistan\n', 'karachi', '6.009771', '420.68396'),
(210, 78, 217, 'W454+WHQ, Block 10-A Block 10 A Gulshan-e-Iqbal, Karachi, Karachi City, Sindh, Pakistan\n', 'karachi', '11.948295', '716.8977'),
(211, 78, 1, 'W454+WHQ, Block 10-A Block 10 A Gulshan-e-Iqbal, Karachi, Karachi City, Sindh, Pakistan\n', 'karachi', '11.948295', '716.8977'),
(212, 78, 211, 'Plot R 224, Block 6 Gulshan-e-Iqbal, Karachi, Karachi City, Sindh, Pakistan\n', 'Saddar', '9.919308', '694.3515'),
(213, 78, 212, 'Plot R 224, Block 6 Gulshan-e-Iqbal, Karachi, Karachi City, Sindh, Pakistan\n', 'karachi university ', '2.9620438', '236.9635'),
(214, 157, 210, 'Plot R 224, Block 6 Gulshan-e-Iqbal, Karachi, Karachi City, Sindh, Pakistan\n', 'ned university ', '1.6391187', '131.1295'),
(215, 78, 217, 'Plot R 224, Block 6 Gulshan-e-Iqbal, Karachi, Karachi City, Sindh, Pakistan\n', 'Ned university ', '1.6391187', '131.1295'),
(216, 78, 211, 'Plot R 224, Block 6 Gulshan-e-Iqbal, Karachi, Karachi City, Sindh, Pakistan\n', 'saddar', '9.919408', '694.3586'),
(217, 78, 212, 'Plot R 224, Block 6 Gulshan-e-Iqbal, Karachi, Karachi City, Sindh, Pakistan\n', 'saddar', '9.919408', '694.3586'),
(218, 78, 210, 'Plot R 224, Block 6 Gulshan-e-Iqbal, Karachi, Karachi City, Sindh, Pakistan\n', 'Karachi university ', '2.962033', '236.96263'),
(219, 78, 212, 'Plot R 224, Block 6 Gulshan-e-Iqbal, Karachi, Karachi City, Sindh, Pakistan\n', 'ned university ', '1.6391187', '131.1295'),
(220, 78, 210, 'Plot R 224, Block 6 Gulshan-e-Iqbal, Karachi, Karachi City, Sindh, Pakistan\n', 'gadap', '9.316358', '652.145'),
(221, 78, 210, 'Plot R 224, Block 6 Gulshan-e-Iqbal, Karachi, Karachi City, Sindh, Pakistan\n', 'Karachi university ', '2.962033', '236.96263'),
(222, 78, 211, 'Plot R 224, Block 6 Gulshan-e-Iqbal, Karachi, Karachi City, Sindh, Pakistan\n', 'pib colony', '5.6578884', '396.05222'),
(223, 78, 215, 'Plot R 224, Block 6 Gulshan-e-Iqbal, Karachi, Karachi City, Sindh, Pakistan\n', 'gadap', '9.316358', '652.145'),
(224, 159, 210, 'Plot R 224, Block 6 Gulshan-e-Iqbal, Karachi, Karachi City, Sindh, Pakistan\n', 'lucky one mall', '1.5464435', '123.71548'),
(225, 158, 1, 'W45F+84C, Block 18 Gulistan-e-Johar, Karachi, Karachi City, Sindh, Pakistan\n', 'ned University', '2.8542717', '228.34172'),
(226, 158, 211, 'W45F+84C, Block 18 Gulistan-e-Johar, Karachi, Karachi City, Sindh, Pakistan\n', 'ned University', '2.8542717', '228.34172'),
(227, 158, 217, 'W45F+84C, Block 18 Gulistan-e-Johar, Karachi, Karachi City, Sindh, Pakistan\n', 'ned University', '2.8542717', '228.34172');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_number` varchar(11) NOT NULL,
  `password` varchar(255) NOT NULL
) ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `email`, `phone_number`, `password`) VALUES
(78, 'Muhammad Aamir', 'aamir@gmail.com', '03456723096', '12345678'),
(79, 'Muhammad Aamir', 'mm@gmail.com', '12345678912', '12345678'),
(81, 'dhdj', 'didjd', 'ddiisfhhgvv', 'cjdksghugvvhuu'),
(85, 'Muhammad Aamir', 'dfkc', '12345678965', 'djfjckfkdk'),
(87, 'Muhammad Aamir', 'fkckv', '12345678953', 'ssfcigkvk'),
(89, 'Muhammad Kashif', 'kashif2@gmail.com', '09007860110', '0987654321'),
(90, 'shoaib', 'chaoderanony@gmail.com', '03343957952', '12345098'),
(91, 'cheetah', 'cheetah@cheetah.com', '03331234567', 'cheetah'),
(98, 'Muhammad Kashif 3', 'kashif3@gmail.com', '12345678901', '0987654321'),
(99, 'Aamir', 'a@gmail.com', '03324567123', '12345'),
(107, 'goodboy', 'goodboy@gmail.com', '03213050142', 'goodboy123'),
(111, 'Mansoor Ahmed Memon', 'uniqueusername@username.com', '03331231237', 'unique123'),
(112, 'Aamir', 'aaaa', '03334567893', '12345678912'),
(114, 'maariju', 'syeda90@gmail.com', '03322663210', 'hahistme123'),
(120, 'maarijaa', 'maarija900@gmail.com', '03322663215', 'nonohaha123'),
(124, 'Kevin', 'kevin90@gmail.com', '03323669868', 'kevin90'),
(128, 'haaris90', 'haariss900@gmail.com', '03324593201', 'wearethrbest'),
(129, 'meerij200', 'meerijj200@gmail.com', '03322990321', 'hahaitsmee123'),
(131, 'khan', 'khaann900@gmail.com', '03322889410', 'kokolovesmekert'),
(132, 'itsmehamza', 'hamza90@gmail.com', '03322889321', 'hahahamza123'),
(133, 'maariju', 'maariju90@gmail.com', '03322990841', 'hahamaariju'),
(138, 'maarijii', 'maarijii90@gmail.com', '03322778010', 'maarijii900'),
(140, 'usamaaa', 'usaamaaaa90@gmail.com', '03322669328', 'haha123nani'),
(141, 'kashu', 'kashu90@gmail.com', '03322994210', 'kashuuu113'),
(142, 'khaanbhai', 'khaan123@gmail.com', '03322990345', 'khaanahmed900'),
(144, 'ahmed900', 'ahmed900@gmail.com', '03322663290', 'ahmedd900'),
(152, 'syedmaarij', 'syedmaarij900@gmail.com', '03322663217', 'hahamarij123'),
(157, 'aamirdh', 'aaaafj', '12345678902', '123434333xj'),
(158, 'Usama Khalid', 'usamakhalidmasood@gmail.com', '03363614634', 'main nahi baton ga'),
(159, 'Faiz', 'faiz@gmail.com', '03345628456', 'iamfaiz123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`driver_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone number` (`phone_number`),
  ADD KEY `password` (`password`) USING BTREE;

--
-- Indexes for table `driver_rating`
--
ALTER TABLE `driver_rating`
  ADD PRIMARY KEY (`rating_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `ride_id` (`ride_id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`rating_id`),
  ADD KEY `driver_id` (`driver_id`),
  ADD KEY `ride_id` (`ride_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `ride`
--
ALTER TABLE `ride`
  ADD PRIMARY KEY (`ride_id`),
  ADD KEY `driver_id` (`driver_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone number` (`phone_number`),
  ADD KEY `password` (`password`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `driver_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `driver_rating`
--
ALTER TABLE `driver_rating`
  MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `ride`
--
ALTER TABLE `ride`
  MODIFY `ride_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`ride_id`) REFERENCES `ride` (`ride_id`);

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`driver_id`),
  ADD CONSTRAINT `rating_ibfk_2` FOREIGN KEY (`ride_id`) REFERENCES `ride` (`ride_id`),
  ADD CONSTRAINT `rating_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
