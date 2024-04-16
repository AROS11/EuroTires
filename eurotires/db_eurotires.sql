-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2023 at 02:41 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_eurotires`
--

-- --------------------------------------------------------

--
-- Table structure for table `billdetails`
--

CREATE TABLE `billdetails` (
  `bill_id` int(11) NOT NULL,
  `tire_id` int(11) NOT NULL,
  `item_qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `billstatus`
--

CREATE TABLE `billstatus` (
  `bill_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `bill_phone` varchar(255) DEFAULT NULL,
  `bill_address` text DEFAULT NULL,
  `bill_when` varchar(255) DEFAULT NULL,
  `bill_method` varchar(255) DEFAULT NULL,
  `bill_discount` int(11) DEFAULT NULL,
  `bill_delivery` int(11) DEFAULT NULL,
  `bill_total` int(11) DEFAULT NULL,
  `bill_paid` varchar(255) DEFAULT NULL,
  `bill_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booktable`
--

CREATE TABLE `booktable` (
  `book_id` int(11) NOT NULL,
  `book_name` varchar(255) DEFAULT NULL,
  `book_phone` varchar(255) DEFAULT NULL,
  `book_people` int(11) DEFAULT NULL,
  `book_tables` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `book_when` varchar(255) DEFAULT NULL,
  `book_note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `user_id` int(11) NOT NULL,
  `tire_id` int(11) NOT NULL,
  `item_qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tire`
--

CREATE TABLE `tire` (
  `tire_id` int(11) NOT NULL,
  `tire_name` varchar(255) DEFAULT NULL,
  `tire_star` varchar(255) DEFAULT NULL,
  `tire_vote` varchar(255) DEFAULT NULL,
  `tire_price` varchar(255) DEFAULT NULL,
  `tire_discount` varchar(255) DEFAULT NULL,
  `tire_desc` varchar(255) DEFAULT NULL,
  `tire_status` varchar(255) DEFAULT NULL,
  `tire_type` varchar(255) DEFAULT NULL,
  `tire_category` varchar(255) DEFAULT NULL,
  `tire_src` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tire`
--

INSERT INTO `tire` (`tire_id`, `tire_name`, `tire_star`, `tire_vote`, `tire_price`, `tire_discount`, `tire_desc`, `tire_status`, `tire_type`, `tire_category`, `tire_src`) VALUES
(1, 'Goodyear Eagle F1 Asymmetric 3', '4.5', '999', '7', '0.00', 'Ultra high-performance summer tire for sports cars', 'best seller', 'summer', 'car', 'tempic/pirelli.jpg'),
(2, 'Michelin Primacy MXM4', '4.5', '500', '150.00', '0.00', 'Grand touring all-season tire for luxury sedans and coupes', 'Sale Off', 'all-season', 'Truck', 'tempic/pirelli.jpg'),
(3, 'Bridgestone Potenza RE-71R', '4.5', '999', '180.00', '0.00', 'Extreme performance summer tire for sports cars and performance vehicles', 'best seller', 'summer', 'Motor-Home', 'tempic/pirelli.jpg'),
(4, 'Continental ExtremeContact DWS 06', '4', '500', '130.00', '0.00', 'All-season tire for sports cars, coupes, and performance sedans', 'online only', 'all-season', 'Tractor', 'tempic/pirelli.jpg'),
(5, 'Firestone Destination LE3', '4', '500', '120.00', '1.00', 'All-season tire for crossovers, SUVs, and light trucks', 'new arrival', 'all-season', 'Motorcycle', 'tempic/pirelli.jpg'),
(6, 'Cooper Discoverer AT3 4S', '4.5', '500', '150.00', '0.00', 'All-terrain tire for pickups, SUVs, and crossovers', 'seasonal tire', 'all-season', 'Batteries', 'tempic/pirelli.jpg'),
(7, 'Hankook Dynapro ATM RF10', '4.5', '100', '130.00', '2.00', 'All-terrain tire for pickups, SUVs, and crossovers', 'new arrival', 'all-season', 'crossover/suv', 'tires/hankook-dynapro.png'),
(8, 'Goodyear Wrangler Duratrac', '4.5', '600', '200.00', '0.00', 'All-terrain tire for pickups, SUVs, and off-road vehicles', 'best seller', 'all-season', 'off-road', 'tires/goodyear-wrangler.png'),
(9, 'Michelin Defender LTX M/S', '4.5', '999', '180.00', '3.00', 'All-season tire for pickups, SUVs, and crossovers', 'best seller', 'all-season', 'crossover/suv', 'tires/michelin-defender.png'),
(10, 'BFGoodrich All-Terrain T/A KO2', '4.5', '999', '190.00', '0.00', 'All-terrain tire for pickups, SUVs, and off-road vehicles', 'best seller', 'all-season', 'off-road', 'tires/bfgoodrich-all-terrain.png'),
(11, 'Nitto Ridge Grappler', '4.5', '999', '230.00', '0.00', 'All-terrain tire for pickups, SUVs, and off-road vehicles', 'best seller', 'all-season', 'off-road', 'tires/nitto-ridge.png');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_phone` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `user_birth` varchar(255) DEFAULT NULL,
  `user_gender` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `billdetails`
--
ALTER TABLE `billdetails`
  ADD PRIMARY KEY (`bill_id`,`tire_id`);

--
-- Indexes for table `billstatus`
--
ALTER TABLE `billstatus`
  ADD PRIMARY KEY (`bill_id`);

--
-- Indexes for table `booktable`
--
ALTER TABLE `booktable`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`user_id`,`tire_id`);

--
-- Indexes for table `tire`
--
ALTER TABLE `tire`
  ADD PRIMARY KEY (`tire_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booktable`
--
ALTER TABLE `booktable`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tire`
--
ALTER TABLE `tire`
  MODIFY `tire_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
