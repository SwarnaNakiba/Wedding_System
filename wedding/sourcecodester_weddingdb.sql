-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2022 at 04:07 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sourcecodester_weddingdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID` int(6) NOT NULL,
  `User` varchar(255) NOT NULL,
  `Pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `User`, `Pass`) VALUES
(1, 'admin123', 'admin123'),
(16, 'janobe', 'janobe');

-- --------------------------------------------------------

--
-- Table structure for table `availableornot`
--

CREATE TABLE `availableornot` (
  `id` int(6) NOT NULL,
  `service` varchar(255) NOT NULL,
  `availability` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `availableornot`
--

INSERT INTO `availableornot` (`id`, `service`, `availability`) VALUES
(1, 'Decoration', 'available'),
(2, 'Entertainment', 'not available');

-- --------------------------------------------------------

--
-- Table structure for table `photographer`
--

CREATE TABLE `photographer` (
  `id` int(6) NOT NULL,
  `name` varchar(255) NOT NULL,
  `last` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photographer`
--

INSERT INTO `photographer` (`id`, `name`, `last`, `number`, `email`) VALUES
(1, 'Peter', 'Evero', '0916548758', 'petermanyakol@gmail.com'),
(2, 'Joyce', 'Castro', '09154581354', 'joycecastro@hotmail.com'),
(3, 'Gabo', 'Dela Cruz', '0915484268', 'gabomanyakol@rocketmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `refund`
--

CREATE TABLE `refund` (
  `id` int(6) NOT NULL,
  `Service` varchar(255) NOT NULL,
  `Cancellation` varchar(255) NOT NULL,
  `Refundable` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `refund`
--

INSERT INTO `refund` (`id`, `Service`, `Cancellation`, `Refundable`) VALUES
(1, 'Photography', 'Yes', '20%'),
(2, 'Decoration', 'Yes', 'Not Refundable');

-- --------------------------------------------------------

--
-- Table structure for table `reserve`
--

CREATE TABLE `reserve` (
  `id` int(6) NOT NULL,
  `date` date NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `isConfirmed` tinyint(1) NOT NULL,
  `photographer_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reserve`
--

INSERT INTO `reserve` (`id`, `date`, `name`, `email`, `number`, `isConfirmed`, `photographer_id`) VALUES
(5, '2017-12-21', 'Ryan Tesoro', 'ryantesoro@yahoo.com', '12312312', 1, 1),
(6, '2020-11-06', 'janobe sourcecode', 'janobe@gmail.com', '21123123123', 0, 1),
(0, '2022-01-24', 'Rafeed Akbar', 'binakbar3456@gmail.com', '01646744094', 1, 2),
(0, '2022-01-15', 'Tawhid Orpon', 'tawhid.orpon@gmail.com', '0186614789', 1, 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
