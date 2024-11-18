-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql_workout:3306
-- Generation Time: Nov 03, 2024 at 05:31 PM
-- Server version: 9.0.1
-- PHP Version: 8.2.8

-- http://localhost:18001/

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webapp_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `mealmaster_category`
--

CREATE TABLE `mealmaster_category` (
  `id` bigint NOT NULL,
  `name` varchar(50) NOT NULL,
  `menus` json NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mealmaster_customer`
--

CREATE TABLE `mealmaster_customer` (
  `id` bigint NOT NULL,
  `user_id` int DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `weight` int NOT NULL,
  `height` int NOT NULL,
  `age` int NOT NULL,
  `gender` varchar(10) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `cost` varchar(10) NOT NULL,
  `image` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `diet` int DEFAULT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mealmaster_diet`
--

CREATE TABLE `mealmaster_diet` (
  `id` bigint NOT NULL,
  `name` varchar(50) NOT NULL,
  `detail` longtext NOT NULL,
  `menu` json NOT NULL,
  `url` longtext NOT NULL DEFAULT (_utf8mb3'')
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mealmaster_dietuser`
--

CREATE TABLE `mealmaster_dietuser` (
  `id` bigint NOT NULL,
  `diet_id` int DEFAULT NULL,
  `body` longtext,
  `datetime_start` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mealmaster_exercisecalorie`
--

CREATE TABLE `mealmaster_exercisecalorie` (
  `id` bigint NOT NULL,
  `diet_round_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  `calorie` double NOT NULL,
  `datetime` datetime(6) NOT NULL,
  `time_exercise` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mealmaster_foodcalorie`
--

CREATE TABLE `mealmaster_foodcalorie` (
  `id` bigint NOT NULL,
  `menu_id` int NOT NULL,
  `user_id` int NOT NULL,
  `datetime` datetime(6) NOT NULL,
  `rate_eat` double NOT NULL,
  `diet_round_id` int DEFAULT NULL,
  `image_upload` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mealmaster_imagebody`
--

CREATE TABLE `mealmaster_imagebody` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `datetime` datetime(6) NOT NULL,
  `url_image` varchar(100) NOT NULL,
  `diet_round_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mealmaster_menus`
--

CREATE TABLE `mealmaster_menus` (
  `id` bigint NOT NULL,
  `name` varchar(50) NOT NULL,
  `label` longtext NOT NULL,
  `url_resource` longtext NOT NULL DEFAULT (_utf8mb3''),
  `calorie` double NOT NULL,
  `url_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mealmaster_notify`
--

CREATE TABLE `mealmaster_notify` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `datetime` datetime(6) NOT NULL,
  `msg` longtext NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mealmaster_category`
--
ALTER TABLE `mealmaster_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mealmaster_customer`
--
ALTER TABLE `mealmaster_customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `mealmaster_diet`
--
ALTER TABLE `mealmaster_diet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mealmaster_dietuser`
--
ALTER TABLE `mealmaster_dietuser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mealmaster_exercisecalorie`
--
ALTER TABLE `mealmaster_exercisecalorie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mealmaster_foodcalorie`
--
ALTER TABLE `mealmaster_foodcalorie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mealmaster_imagebody`
--
ALTER TABLE `mealmaster_imagebody`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mealmaster_menus`
--
ALTER TABLE `mealmaster_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mealmaster_notify`
--
ALTER TABLE `mealmaster_notify`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mealmaster_category`
--
ALTER TABLE `mealmaster_category`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mealmaster_customer`
--
ALTER TABLE `mealmaster_customer`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mealmaster_diet`
--
ALTER TABLE `mealmaster_diet`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mealmaster_dietuser`
--
ALTER TABLE `mealmaster_dietuser`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mealmaster_exercisecalorie`
--
ALTER TABLE `mealmaster_exercisecalorie`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mealmaster_foodcalorie`
--
ALTER TABLE `mealmaster_foodcalorie`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mealmaster_imagebody`
--
ALTER TABLE `mealmaster_imagebody`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mealmaster_menus`
--
ALTER TABLE `mealmaster_menus`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mealmaster_notify`
--
ALTER TABLE `mealmaster_notify`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mealmaster_customer`
--
ALTER TABLE `mealmaster_customer`
  ADD CONSTRAINT `mealmaster_customer_user_id_ebce4c81_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
