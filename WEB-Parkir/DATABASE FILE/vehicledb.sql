-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2021 at 07:51 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vehicle-parking-db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Security_Code` int(55) NOT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Security_Code`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Ravanelly Haris Billyanto', 'admin', 82238839249, 1100, 'admin@gmail.com', 'd00f5d5217896fb7fd601412cb890830', '2021-01-05 05:38:23');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `c_email` varchar(55) NOT NULL,
  `c_website` varchar(55) NOT NULL,
  `c_address` varchar(255) NOT NULL,
  `last_update` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `c_name`, `c_email`, `c_website`, `c_address`, `last_update`) VALUES
(1, 'kumpeni Corps', 'kumpenikorps@company.com', 'yaiyalah', 'Jl. Ngablak Indah II', '2022-07-05 20:48:52');

-- --------------------------------------------------------

--
-- Table structure for table `vcategory`
--

CREATE TABLE `vcategory` (
  `ID` int(10) NOT NULL,
  `VehicleCat` varchar(120) DEFAULT NULL,
  `shortDescription` varchar(50) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vcategory`
--

INSERT INTO `vcategory` (`ID`, `VehicleCat`, `shortDescription`, `CreationDate`) VALUES
(1, 'Roda 4', 'Deskripsinya', '2022-07-05 11:06:50'),
(2, 'Roda 2', 'Deskripsinya', '2022-07-05 11:07:09'),
(6, 'Roda 3', 'Deskripsinya', '2022-03-07 16:41:57');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_info`
--

CREATE TABLE `vehicle_info` (
  `ID` int(10) NOT NULL,
  `ParkingNumber` varchar(120) DEFAULT NULL,
  `VehicleCategory` varchar(120) NOT NULL,
  `VehicleCompanyname` varchar(120) DEFAULT NULL,
  `RegistrationNumber` varchar(120) DEFAULT NULL,
  `OwnerName` varchar(120) DEFAULT NULL,
  `OwnerContactNumber` bigint(10) DEFAULT NULL,
  `InTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `OutTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `ParkingCharge` varchar(120) NOT NULL,
  `Remark` mediumtext NOT NULL,
  `Status` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_info`
--

INSERT INTO `vehicle_info` (`ID`, `ParkingNumber`, `VehicleCategory`, `VehicleCompanyname`, `RegistrationNumber`, `OwnerName`, `OwnerContactNumber`, `InTime`, `OutTime`, `ParkingCharge`, `Remark`, `Status`) VALUES
(1, '1000', 'Roda 4', 'Hyundai', 'A45678SI', 'ANTONIO SAJA', 82243567654, '2021-03-09 05:58:38', '2021-03-09 10:15:43', '34', 'NA', 'Out'),
(2, '1001', 'Roda 4', 'Bugatti', 'B567891QQ', 'Selalu Imoetz', 82345675, '2021-03-09 08:58:38', '2021-03-09 14:16:26', '20', 'NA', 'Out'),
(3, '1002', 'Roda 2', 'Yamaha', 'H976567IUT', 'Oda Nobunaga\n', 345678765, '2021-03-09 08:58:38', '2021-03-09 12:16:31', '20', 'Vehicle Out', 'Out'),
(4, '1003', 'Roda 2', 'Yamaha', 'G2345678AA', 'Mukidi level 1', 98765567, '2021-03-09 08:58:38', '2021-03-09 13:58:38', '20', 'Vehicle Out', 'Out'),
(5, '1004', 'Roda 2', 'Ducati', 'AB5656OUP', 'Mukidi level 2\n', 3456543, '2021-03-09 08:58:38', '2021-03-09 14:58:38', '15', 'none', 'Out'),
(6, '1005', 'Roda 3', 'Becak', 'S34578NN', 'Mukidi level 3', 9865433456, '2021-03-09 08:58:38', NULL, '', '', ''),
(7, '1006', 'Roda 4', 'Honda', 'J75456PIP', 'Mukidi level 4\n', 09876542, '2021-03-09 11:03:05', '2021-03-09 11:58:38', '5', 'none', 'Out'),
(8, '1007', 'Roda 2', 'Yamaha', 'W8878881', 'Go D. Usopp', 234565434567, '2021-03-09 11:32:02', '2021-03-09 12:58:38', '5', 'Vehicle Out', 'Out'),
(9, '1008', 'Roda 2', 'Honda ', 'H456789AA', 'Naruto Uzumaki\n', 345678222, '2021-03-07 10:42:52', '2021-03-09 11:58:38', '7', 'none', 'Out'),
(10, '1009', 'Roda 4', 'Tesla', 'H2345678QQ', 'Nana\n', 98765432123, '2021-03-07 14:54:03', NULL, '', '', ''),
(11, '1010', 'Roda 4', 'Volkswagen', 'H23456YY', 'Jack SEPARRO', 123456787654, '2021-03-08 13:50:15', NULL, '', '', ''),
(12, '1011', 'Roda 4', 'Volkswagen', 'H345678QA', 'Miyamoto Musashi', 0987654322, '2021-03-08 09:34:55', '2021-03-08 15:58:38', '30', 'none', 'Out'),
(13, '1012', 'Roda 4', 'Hyundai', 'AB56789OI', 'Alucard\n', 123456785, '2021-03-09 13:09:16', NULL, '', '', ''),
(14, '1013', 'Roda 4', 'Hyundai', 'J45678AO', 'Alufeed\n', 12345678976, '2021-07-16 15:28:32', '2021-07-16 17:17:19', '5', 'none', 'Out'),
(15, '1014', 'Roda 4', 'Tesla', 'AB56789T', 'SHIVA bukan anak sembarangan', 87654322, '2021-07-17 16:18:01', '2021-07-17 16:49:40', '5', 'none', 'Out'),
(16, '1015', 'Roda 4', 'Renault', 'T456789OP', 'Tigreal', 23456678, '2021-07-17 16:59:26', '2021-07-17 17:20:22', '2', 'none', 'Out'),
(17, '1016', 'Roda 4', 'Volkswagen', 'GG56789A', 'Monkey D. Luffy', 345677654, '2021-07-17 17:40:22', NULL, '', '', ''),
(18, '1017', 'Roda 4', 'Chevrolet', 'B345678A', 'Gol D. Roger', 87654567, '2021-07-17 17:43:16', NULL, '', '', ''),
(19, '1018', 'Roda 2', 'Honda', 'B3RAK', 'Mafia Minyak goreng', 76545678, '2021-07-17 17:44:07', '2021-07-17 17:45:05', '3', 'none.', 'Out'),
(20, '1019', 'Roda 2', 'Kawasaki', 'B53456OP', 'Tikus Kantor', 23456678, '2021-07-17 17:46:37', NULL, '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vcategory`
--
ALTER TABLE `vcategory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `vehicle_info`
--
ALTER TABLE `vehicle_info`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `vcategory`
--
ALTER TABLE `vcategory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `vehicle_info`
--
ALTER TABLE `vehicle_info`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
