-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 15, 2019 at 06:54 PM
-- Server version: 5.7.25-0ubuntu0.18.04.2
-- PHP Version: 7.0.33-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sis`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee_expanses`
--

CREATE TABLE `employee_expanses` (
  `id` int(5) UNSIGNED NOT NULL,
  `user_id` int(5) UNSIGNED NOT NULL,
  `date` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `employee_name` varchar(100) DEFAULT NULL,
  `employee_address` varchar(100) DEFAULT NULL,
  `expense_description` varchar(100) DEFAULT NULL,
  `pre_tax_amount` varchar(100) DEFAULT NULL,
  `tax_amount` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee_expanses`
--

INSERT INTO `employee_expanses` (`id`, `user_id`, `date`, `category`, `employee_name`, `employee_address`, `expense_description`, `pre_tax_amount`, `tax_amount`, `created_at`) VALUES
(1, 1, '12/1/2018', 'Travel', 'Steve Rogers', '783 Park Ave New York NY 10021', 'Taxi ride', '350.00', '31.06', '2019-04-15 11:32:24'),
(2, 1, '12/15/2018', 'Meals and Entertainment', 'Tony Stark', '1 Infinite Loop Cupertino CA 95014', 'Team lunch', '235.00', '17.63', '2019-04-15 11:32:24'),
(3, 1, '12/31/2018', 'Computer - Hardware', 'Bruce Banner', '1 Infinite Loop Cupertino CA 95014', 'HP Laptop', '999.00', '74.93', '2019-04-15 11:32:24'),
(4, 1, '12/14/2018', 'Computer - Software', 'Nick Fury', '1 Infinite Loop Cupertino CA 95014', 'Microsoft Office', '899.00', '67.43', '2019-04-15 11:32:24'),
(5, 1, '12/6/2018', 'Computer - Software', 'Natasha Romanoff', '1600 Amphitheatre Parkway Mountain View CA 94043', 'iCloud Subscription', '50.00', '3.75', '2019-04-15 11:32:24'),
(6, 1, '12/9/2018', 'Computer - Software', 'Stephen Strange', '1600 Amphitheatre Parkway Mountain View CA 94043', 'iCloud Subscription', '50.00', '3.75', '2019-04-15 11:32:24'),
(7, 1, '11/10/2018', 'Meals and Entertainment', 'Carol Danvers', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Coffee with Steve', '300.00', '22.50', '2019-04-15 11:32:24'),
(8, 1, '11/12/2018', 'Travel', 'Stephen Strange', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Taxi ride', '230.00', '17.25', '2019-04-15 11:32:24'),
(9, 1, '11/20/2018', 'Meals and Entertainment', 'Steve Rogers', '783 Park Ave New York NY 10021', 'Client dinner', '200.00', '15.00', '2019-04-15 11:32:24'),
(10, 1, '10/4/2018', 'Travel', 'Carol Danvers', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Flight to Miami', '200.00', '15.00', '2019-04-15 11:32:24'),
(11, 1, '12/9/2018', 'Computer - Software', 'Tony Stark', '1 Infinite Loop Cupertino CA 95014', 'Dropbox Subscription', '15.00', '1.13', '2019-04-15 11:32:25'),
(12, 1, '9/18/2018', 'Travel', 'Nick Fury', '1 Infinite Loop Cupertino CA 95014', 'Taxi ride', '200.00', '15.00', '2019-04-15 11:32:25'),
(13, 1, '9/30/2018', 'Office Supplies', 'Stephen Strange', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Paper', '200.00', '15.00', '2019-04-15 11:32:25'),
(14, 1, '12/30/2018', 'Meals and Entertainment', 'Stephen Strange', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Dinner with potential acquisition', '200.00', '15.00', '2019-04-15 11:32:25'),
(15, 1, '1/6/2019', 'Computer - Hardware', 'Carol Danvers', '1600 Amphitheatre Parkway Mountain View CA 94043', 'iPhone', '200.00', '15.00', '2019-04-15 11:32:25'),
(16, 1, '1/7/2019', 'Travel', 'Tony Stark', '1 Infinite Loop Cupertino CA 95014', 'Airplane ticket to NY', '200.00', '15.00', '2019-04-15 11:32:25'),
(17, 1, '2/3/2019', 'Meals and Entertainment', 'Bruce Banner', '1 Infinite Loop Cupertino CA 95014', 'Starbucks coffee', '12.00', '0.90', '2019-04-15 11:32:25'),
(18, 1, '2/18/2019', 'Travel', 'Carol Danvers', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Airplane ticket to NY', '1500.00', '112.50', '2019-04-15 11:32:25'),
(19, 1, '12/1/2018', 'Travel', 'Steve Rogers', '783 Park Ave New York NY 10021', 'Taxi ride', '350.00', '31.06', '2019-04-15 11:40:30'),
(20, 1, '12/15/2018', 'Meals and Entertainment', 'Tony Stark', '1 Infinite Loop Cupertino CA 95014', 'Team lunch', '235.00', '17.63', '2019-04-15 11:40:30'),
(21, 1, '12/31/2018', 'Computer - Hardware', 'Bruce Banner', '1 Infinite Loop Cupertino CA 95014', 'HP Laptop', '999.00', '74.93', '2019-04-15 11:40:30'),
(22, 1, '12/14/2018', 'Computer - Software', 'Nick Fury', '1 Infinite Loop Cupertino CA 95014', 'Microsoft Office', '899.00', '67.43', '2019-04-15 11:40:30'),
(23, 1, '12/6/2018', 'Computer - Software', 'Natasha Romanoff', '1600 Amphitheatre Parkway Mountain View CA 94043', 'iCloud Subscription', '50.00', '3.75', '2019-04-15 11:40:30'),
(24, 1, '12/9/2018', 'Computer - Software', 'Stephen Strange', '1600 Amphitheatre Parkway Mountain View CA 94043', 'iCloud Subscription', '50.00', '3.75', '2019-04-15 11:40:30'),
(25, 1, '11/10/2018', 'Meals and Entertainment', 'Carol Danvers', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Coffee with Steve', '300.00', '22.50', '2019-04-15 11:40:30'),
(26, 1, '11/12/2018', 'Travel', 'Stephen Strange', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Taxi ride', '230.00', '17.25', '2019-04-15 11:40:30'),
(27, 1, '11/20/2018', 'Meals and Entertainment', 'Steve Rogers', '783 Park Ave New York NY 10021', 'Client dinner', '200.00', '15.00', '2019-04-15 11:40:30'),
(28, 1, '10/4/2018', 'Travel', 'Carol Danvers', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Flight to Miami', '200.00', '15.00', '2019-04-15 11:40:30'),
(29, 1, '12/9/2018', 'Computer - Software', 'Tony Stark', '1 Infinite Loop Cupertino CA 95014', 'Dropbox Subscription', '15.00', '1.13', '2019-04-15 11:40:30'),
(30, 1, '9/18/2018', 'Travel', 'Nick Fury', '1 Infinite Loop Cupertino CA 95014', 'Taxi ride', '200.00', '15.00', '2019-04-15 11:40:30'),
(31, 1, '9/30/2018', 'Office Supplies', 'Stephen Strange', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Paper', '200.00', '15.00', '2019-04-15 11:40:30'),
(32, 1, '12/30/2018', 'Meals and Entertainment', 'Stephen Strange', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Dinner with potential acquisition', '200.00', '15.00', '2019-04-15 11:40:30'),
(33, 1, '1/6/2019', 'Computer - Hardware', 'Carol Danvers', '1600 Amphitheatre Parkway Mountain View CA 94043', 'iPhone', '200.00', '15.00', '2019-04-15 11:40:30'),
(34, 1, '1/7/2019', 'Travel', 'Tony Stark', '1 Infinite Loop Cupertino CA 95014', 'Airplane ticket to NY', '200.00', '15.00', '2019-04-15 11:40:30'),
(35, 1, '2/3/2019', 'Meals and Entertainment', 'Bruce Banner', '1 Infinite Loop Cupertino CA 95014', 'Starbucks coffee', '12.00', '0.90', '2019-04-15 11:40:30'),
(36, 1, '2/18/2019', 'Travel', 'Carol Danvers', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Airplane ticket to NY', '1500.00', '112.50', '2019-04-15 11:40:30'),
(37, 1, '12/1/2018', 'Travel', 'Steve Rogers', '783 Park Ave New York NY 10021', 'Taxi ride', '350.00', '31.06', '2019-04-15 12:11:44'),
(38, 1, '12/15/2018', 'Meals and Entertainment', 'Tony Stark', '1 Infinite Loop Cupertino CA 95014', 'Team lunch', '235.00', '17.63', '2019-04-15 12:11:44'),
(39, 1, '12/31/2018', 'Computer - Hardware', 'Bruce Banner', '1 Infinite Loop Cupertino CA 95014', 'HP Laptop', '999.00', '74.93', '2019-04-15 12:11:44'),
(40, 1, '12/14/2018', 'Computer - Software', 'Nick Fury', '1 Infinite Loop Cupertino CA 95014', 'Microsoft Office', '899.00', '67.43', '2019-04-15 12:11:45'),
(41, 1, '12/6/2018', 'Computer - Software', 'Natasha Romanoff', '1600 Amphitheatre Parkway Mountain View CA 94043', 'iCloud Subscription', '50.00', '3.75', '2019-04-15 12:11:45'),
(42, 1, '12/9/2018', 'Computer - Software', 'Stephen Strange', '1600 Amphitheatre Parkway Mountain View CA 94043', 'iCloud Subscription', '50.00', '3.75', '2019-04-15 12:11:45'),
(43, 1, '11/10/2018', 'Meals and Entertainment', 'Carol Danvers', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Coffee with Steve', '300.00', '22.50', '2019-04-15 12:11:45'),
(44, 1, '11/12/2018', 'Travel', 'Stephen Strange', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Taxi ride', '230.00', '17.25', '2019-04-15 12:11:45'),
(45, 1, '11/20/2018', 'Meals and Entertainment', 'Steve Rogers', '783 Park Ave New York NY 10021', 'Client dinner', '200.00', '15.00', '2019-04-15 12:11:45'),
(46, 1, '10/4/2018', 'Travel', 'Carol Danvers', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Flight to Miami', '200.00', '15.00', '2019-04-15 12:11:45'),
(47, 1, '12/9/2018', 'Computer - Software', 'Tony Stark', '1 Infinite Loop Cupertino CA 95014', 'Dropbox Subscription', '15.00', '1.13', '2019-04-15 12:11:45'),
(48, 1, '9/18/2018', 'Travel', 'Nick Fury', '1 Infinite Loop Cupertino CA 95014', 'Taxi ride', '200.00', '15.00', '2019-04-15 12:11:45'),
(49, 1, '9/30/2018', 'Office Supplies', 'Stephen Strange', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Paper', '200.00', '15.00', '2019-04-15 12:11:45'),
(50, 1, '12/30/2018', 'Meals and Entertainment', 'Stephen Strange', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Dinner with potential acquisition', '200.00', '15.00', '2019-04-15 12:11:45'),
(51, 1, '1/6/2019', 'Computer - Hardware', 'Carol Danvers', '1600 Amphitheatre Parkway Mountain View CA 94043', 'iPhone', '200.00', '15.00', '2019-04-15 12:11:45'),
(52, 1, '1/7/2019', 'Travel', 'Tony Stark', '1 Infinite Loop Cupertino CA 95014', 'Airplane ticket to NY', '200.00', '15.00', '2019-04-15 12:11:45'),
(53, 1, '2/3/2019', 'Meals and Entertainment', 'Bruce Banner', '1 Infinite Loop Cupertino CA 95014', 'Starbucks coffee', '12.00', '0.90', '2019-04-15 12:11:45'),
(54, 1, '2/18/2019', 'Travel', 'Carol Danvers', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Airplane ticket to NY', '1500.00', '112.50', '2019-04-15 12:11:45'),
(55, 1, '12/1/2018', 'Travel', 'Steve Rogers', '783 Park Ave New York NY 10021', 'Taxi ride', '350.00', '31.06', '2019-04-15 12:13:01'),
(56, 1, '12/15/2018', 'Meals and Entertainment', 'Tony Stark', '1 Infinite Loop Cupertino CA 95014', 'Team lunch', '235.00', '17.63', '2019-04-15 12:13:02'),
(57, 1, '12/31/2018', 'Computer - Hardware', 'Bruce Banner', '1 Infinite Loop Cupertino CA 95014', 'HP Laptop', '999.00', '74.93', '2019-04-15 12:13:02'),
(58, 1, '12/14/2018', 'Computer - Software', 'Nick Fury', '1 Infinite Loop Cupertino CA 95014', 'Microsoft Office', '899.00', '67.43', '2019-04-15 12:13:02'),
(59, 1, '12/6/2018', 'Computer - Software', 'Natasha Romanoff', '1600 Amphitheatre Parkway Mountain View CA 94043', 'iCloud Subscription', '50.00', '3.75', '2019-04-15 12:13:02'),
(60, 1, '12/9/2018', 'Computer - Software', 'Stephen Strange', '1600 Amphitheatre Parkway Mountain View CA 94043', 'iCloud Subscription', '50.00', '3.75', '2019-04-15 12:13:02'),
(61, 1, '11/10/2018', 'Meals and Entertainment', 'Carol Danvers', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Coffee with Steve', '300.00', '22.50', '2019-04-15 12:13:02'),
(62, 1, '11/12/2018', 'Travel', 'Stephen Strange', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Taxi ride', '230.00', '17.25', '2019-04-15 12:13:02'),
(63, 1, '11/20/2018', 'Meals and Entertainment', 'Steve Rogers', '783 Park Ave New York NY 10021', 'Client dinner', '200.00', '15.00', '2019-04-15 12:13:02'),
(64, 1, '10/4/2018', 'Travel', 'Carol Danvers', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Flight to Miami', '200.00', '15.00', '2019-04-15 12:13:02'),
(65, 1, '12/9/2018', 'Computer - Software', 'Tony Stark', '1 Infinite Loop Cupertino CA 95014', 'Dropbox Subscription', '15.00', '1.13', '2019-04-15 12:13:02'),
(66, 1, '9/18/2018', 'Travel', 'Nick Fury', '1 Infinite Loop Cupertino CA 95014', 'Taxi ride', '200.00', '15.00', '2019-04-15 12:13:02'),
(67, 1, '9/30/2018', 'Office Supplies', 'Stephen Strange', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Paper', '200.00', '15.00', '2019-04-15 12:13:02'),
(68, 1, '12/30/2018', 'Meals and Entertainment', 'Stephen Strange', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Dinner with potential acquisition', '200.00', '15.00', '2019-04-15 12:13:02'),
(69, 1, '1/6/2019', 'Computer - Hardware', 'Carol Danvers', '1600 Amphitheatre Parkway Mountain View CA 94043', 'iPhone', '200.00', '15.00', '2019-04-15 12:13:02'),
(70, 1, '1/7/2019', 'Travel', 'Tony Stark', '1 Infinite Loop Cupertino CA 95014', 'Airplane ticket to NY', '200.00', '15.00', '2019-04-15 12:13:02'),
(71, 1, '2/3/2019', 'Meals and Entertainment', 'Bruce Banner', '1 Infinite Loop Cupertino CA 95014', 'Starbucks coffee', '12.00', '0.90', '2019-04-15 12:13:02'),
(72, 1, '2/18/2019', 'Travel', 'Carol Danvers', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Airplane ticket to NY', '1500.00', '112.50', '2019-04-15 12:13:02'),
(73, 1, '12/1/2018', 'Travel', 'Steve Rogers', '783 Park Ave New York NY 10021', 'Taxi ride', '350.00', '31.06', '2019-04-15 12:14:06'),
(74, 1, '12/15/2018', 'Meals and Entertainment', 'Tony Stark', '1 Infinite Loop Cupertino CA 95014', 'Team lunch', '235.00', '17.63', '2019-04-15 12:14:06'),
(75, 1, '12/31/2018', 'Computer - Hardware', 'Bruce Banner', '1 Infinite Loop Cupertino CA 95014', 'HP Laptop', '999.00', '74.93', '2019-04-15 12:14:06'),
(76, 1, '12/14/2018', 'Computer - Software', 'Nick Fury', '1 Infinite Loop Cupertino CA 95014', 'Microsoft Office', '899.00', '67.43', '2019-04-15 12:14:06'),
(77, 1, '12/6/2018', 'Computer - Software', 'Natasha Romanoff', '1600 Amphitheatre Parkway Mountain View CA 94043', 'iCloud Subscription', '50.00', '3.75', '2019-04-15 12:14:07'),
(78, 1, '12/9/2018', 'Computer - Software', 'Stephen Strange', '1600 Amphitheatre Parkway Mountain View CA 94043', 'iCloud Subscription', '50.00', '3.75', '2019-04-15 12:14:07'),
(79, 1, '11/10/2018', 'Meals and Entertainment', 'Carol Danvers', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Coffee with Steve', '300.00', '22.50', '2019-04-15 12:14:07'),
(80, 1, '11/12/2018', 'Travel', 'Stephen Strange', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Taxi ride', '230.00', '17.25', '2019-04-15 12:14:07'),
(81, 1, '11/20/2018', 'Meals and Entertainment', 'Steve Rogers', '783 Park Ave New York NY 10021', 'Client dinner', '200.00', '15.00', '2019-04-15 12:14:07'),
(82, 1, '10/4/2018', 'Travel', 'Carol Danvers', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Flight to Miami', '200.00', '15.00', '2019-04-15 12:14:07'),
(83, 1, '12/9/2018', 'Computer - Software', 'Tony Stark', '1 Infinite Loop Cupertino CA 95014', 'Dropbox Subscription', '15.00', '1.13', '2019-04-15 12:14:07'),
(84, 1, '9/18/2018', 'Travel', 'Nick Fury', '1 Infinite Loop Cupertino CA 95014', 'Taxi ride', '200.00', '15.00', '2019-04-15 12:14:07'),
(85, 1, '9/30/2018', 'Office Supplies', 'Stephen Strange', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Paper', '200.00', '15.00', '2019-04-15 12:14:07'),
(86, 1, '12/30/2018', 'Meals and Entertainment', 'Stephen Strange', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Dinner with potential acquisition', '200.00', '15.00', '2019-04-15 12:14:07'),
(87, 1, '1/6/2019', 'Computer - Hardware', 'Carol Danvers', '1600 Amphitheatre Parkway Mountain View CA 94043', 'iPhone', '200.00', '15.00', '2019-04-15 12:14:07'),
(88, 1, '1/7/2019', 'Travel', 'Tony Stark', '1 Infinite Loop Cupertino CA 95014', 'Airplane ticket to NY', '200.00', '15.00', '2019-04-15 12:14:07'),
(89, 1, '2/3/2019', 'Meals and Entertainment', 'Bruce Banner', '1 Infinite Loop Cupertino CA 95014', 'Starbucks coffee', '12.00', '0.90', '2019-04-15 12:14:07'),
(90, 1, '2/18/2019', 'Travel', 'Carol Danvers', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Airplane ticket to NY', '1500.00', '112.50', '2019-04-15 12:14:07'),
(91, 1, '12/1/2018', 'Travel', 'Steve Rogers', '783 Park Ave New York NY 10021', 'Taxi ride', '350.00', '31.06', '2019-04-15 12:15:07'),
(92, 1, '12/15/2018', 'Meals and Entertainment', 'Tony Stark', '1 Infinite Loop Cupertino CA 95014', 'Team lunch', '235.00', '17.63', '2019-04-15 12:15:07'),
(93, 1, '12/31/2018', 'Computer - Hardware', 'Bruce Banner', '1 Infinite Loop Cupertino CA 95014', 'HP Laptop', '999.00', '74.93', '2019-04-15 12:15:08'),
(94, 1, '12/14/2018', 'Computer - Software', 'Nick Fury', '1 Infinite Loop Cupertino CA 95014', 'Microsoft Office', '899.00', '67.43', '2019-04-15 12:15:08'),
(95, 1, '12/6/2018', 'Computer - Software', 'Natasha Romanoff', '1600 Amphitheatre Parkway Mountain View CA 94043', 'iCloud Subscription', '50.00', '3.75', '2019-04-15 12:15:08'),
(96, 1, '12/9/2018', 'Computer - Software', 'Stephen Strange', '1600 Amphitheatre Parkway Mountain View CA 94043', 'iCloud Subscription', '50.00', '3.75', '2019-04-15 12:15:08'),
(97, 1, '11/10/2018', 'Meals and Entertainment', 'Carol Danvers', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Coffee with Steve', '300.00', '22.50', '2019-04-15 12:15:08'),
(98, 1, '11/12/2018', 'Travel', 'Stephen Strange', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Taxi ride', '230.00', '17.25', '2019-04-15 12:15:08'),
(99, 1, '11/20/2018', 'Meals and Entertainment', 'Steve Rogers', '783 Park Ave New York NY 10021', 'Client dinner', '200.00', '15.00', '2019-04-15 12:15:08'),
(100, 1, '10/4/2018', 'Travel', 'Carol Danvers', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Flight to Miami', '200.00', '15.00', '2019-04-15 12:15:08'),
(101, 1, '12/9/2018', 'Computer - Software', 'Tony Stark', '1 Infinite Loop Cupertino CA 95014', 'Dropbox Subscription', '15.00', '1.13', '2019-04-15 12:15:08'),
(102, 1, '9/18/2018', 'Travel', 'Nick Fury', '1 Infinite Loop Cupertino CA 95014', 'Taxi ride', '200.00', '15.00', '2019-04-15 12:15:08'),
(103, 1, '9/30/2018', 'Office Supplies', 'Stephen Strange', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Paper', '200.00', '15.00', '2019-04-15 12:15:08'),
(104, 1, '12/30/2018', 'Meals and Entertainment', 'Stephen Strange', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Dinner with potential acquisition', '200.00', '15.00', '2019-04-15 12:15:08'),
(105, 1, '1/6/2019', 'Computer - Hardware', 'Carol Danvers', '1600 Amphitheatre Parkway Mountain View CA 94043', 'iPhone', '200.00', '15.00', '2019-04-15 12:15:08'),
(106, 1, '1/7/2019', 'Travel', 'Tony Stark', '1 Infinite Loop Cupertino CA 95014', 'Airplane ticket to NY', '200.00', '15.00', '2019-04-15 12:15:08'),
(107, 1, '2/3/2019', 'Meals and Entertainment', 'Bruce Banner', '1 Infinite Loop Cupertino CA 95014', 'Starbucks coffee', '12.00', '0.90', '2019-04-15 12:15:08'),
(108, 1, '2/18/2019', 'Travel', 'Carol Danvers', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Airplane ticket to NY', '1500.00', '112.50', '2019-04-15 12:15:08'),
(109, 1, '12/1/2018', 'Travel', 'Steve Rogers', '783 Park Ave New York NY 10021', 'Taxi ride', '350.00', '31.06', '2019-04-15 12:16:20'),
(110, 1, '12/15/2018', 'Meals and Entertainment', 'Tony Stark', '1 Infinite Loop Cupertino CA 95014', 'Team lunch', '235.00', '17.63', '2019-04-15 12:16:20'),
(111, 1, '12/31/2018', 'Computer - Hardware', 'Bruce Banner', '1 Infinite Loop Cupertino CA 95014', 'HP Laptop', '999.00', '74.93', '2019-04-15 12:16:20'),
(112, 1, '12/14/2018', 'Computer - Software', 'Nick Fury', '1 Infinite Loop Cupertino CA 95014', 'Microsoft Office', '899.00', '67.43', '2019-04-15 12:16:20'),
(113, 1, '12/6/2018', 'Computer - Software', 'Natasha Romanoff', '1600 Amphitheatre Parkway Mountain View CA 94043', 'iCloud Subscription', '50.00', '3.75', '2019-04-15 12:16:20'),
(114, 1, '12/9/2018', 'Computer - Software', 'Stephen Strange', '1600 Amphitheatre Parkway Mountain View CA 94043', 'iCloud Subscription', '50.00', '3.75', '2019-04-15 12:16:20'),
(115, 1, '11/10/2018', 'Meals and Entertainment', 'Carol Danvers', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Coffee with Steve', '300.00', '22.50', '2019-04-15 12:16:20'),
(116, 1, '11/12/2018', 'Travel', 'Stephen Strange', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Taxi ride', '230.00', '17.25', '2019-04-15 12:16:20'),
(117, 1, '11/20/2018', 'Meals and Entertainment', 'Steve Rogers', '783 Park Ave New York NY 10021', 'Client dinner', '200.00', '15.00', '2019-04-15 12:16:20'),
(118, 1, '10/4/2018', 'Travel', 'Carol Danvers', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Flight to Miami', '200.00', '15.00', '2019-04-15 12:16:20'),
(119, 1, '12/9/2018', 'Computer - Software', 'Tony Stark', '1 Infinite Loop Cupertino CA 95014', 'Dropbox Subscription', '15.00', '1.13', '2019-04-15 12:16:20'),
(120, 1, '9/18/2018', 'Travel', 'Nick Fury', '1 Infinite Loop Cupertino CA 95014', 'Taxi ride', '200.00', '15.00', '2019-04-15 12:16:20'),
(121, 1, '9/30/2018', 'Office Supplies', 'Stephen Strange', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Paper', '200.00', '15.00', '2019-04-15 12:16:20'),
(122, 1, '12/30/2018', 'Meals and Entertainment', 'Stephen Strange', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Dinner with potential acquisition', '200.00', '15.00', '2019-04-15 12:16:21'),
(123, 1, '1/6/2019', 'Computer - Hardware', 'Carol Danvers', '1600 Amphitheatre Parkway Mountain View CA 94043', 'iPhone', '200.00', '15.00', '2019-04-15 12:16:21'),
(124, 1, '1/7/2019', 'Travel', 'Tony Stark', '1 Infinite Loop Cupertino CA 95014', 'Airplane ticket to NY', '200.00', '15.00', '2019-04-15 12:16:21'),
(125, 1, '2/3/2019', 'Meals and Entertainment', 'Bruce Banner', '1 Infinite Loop Cupertino CA 95014', 'Starbucks coffee', '12.00', '0.90', '2019-04-15 12:16:21'),
(126, 1, '2/18/2019', 'Travel', 'Carol Danvers', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Airplane ticket to NY', '1500.00', '112.50', '2019-04-15 12:16:21'),
(127, 1, '12/1/2018', 'Travel', 'Steve Rogers', '783 Park Ave New York NY 10021', 'Taxi ride', '350.00', '31.06', '2019-04-15 12:16:39'),
(128, 1, '12/15/2018', 'Meals and Entertainment', 'Tony Stark', '1 Infinite Loop Cupertino CA 95014', 'Team lunch', '235.00', '17.63', '2019-04-15 12:16:39'),
(129, 1, '12/31/2018', 'Computer - Hardware', 'Bruce Banner', '1 Infinite Loop Cupertino CA 95014', 'HP Laptop', '999.00', '74.93', '2019-04-15 12:16:39'),
(130, 1, '12/14/2018', 'Computer - Software', 'Nick Fury', '1 Infinite Loop Cupertino CA 95014', 'Microsoft Office', '899.00', '67.43', '2019-04-15 12:16:39'),
(131, 1, '12/6/2018', 'Computer - Software', 'Natasha Romanoff', '1600 Amphitheatre Parkway Mountain View CA 94043', 'iCloud Subscription', '50.00', '3.75', '2019-04-15 12:16:39'),
(132, 1, '12/9/2018', 'Computer - Software', 'Stephen Strange', '1600 Amphitheatre Parkway Mountain View CA 94043', 'iCloud Subscription', '50.00', '3.75', '2019-04-15 12:16:39'),
(133, 1, '11/10/2018', 'Meals and Entertainment', 'Carol Danvers', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Coffee with Steve', '300.00', '22.50', '2019-04-15 12:16:39'),
(134, 1, '11/12/2018', 'Travel', 'Stephen Strange', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Taxi ride', '230.00', '17.25', '2019-04-15 12:16:39'),
(135, 1, '11/20/2018', 'Meals and Entertainment', 'Steve Rogers', '783 Park Ave New York NY 10021', 'Client dinner', '200.00', '15.00', '2019-04-15 12:16:39'),
(136, 1, '10/4/2018', 'Travel', 'Carol Danvers', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Flight to Miami', '200.00', '15.00', '2019-04-15 12:16:39'),
(137, 1, '12/9/2018', 'Computer - Software', 'Tony Stark', '1 Infinite Loop Cupertino CA 95014', 'Dropbox Subscription', '15.00', '1.13', '2019-04-15 12:16:40'),
(138, 1, '9/18/2018', 'Travel', 'Nick Fury', '1 Infinite Loop Cupertino CA 95014', 'Taxi ride', '200.00', '15.00', '2019-04-15 12:16:40'),
(139, 1, '9/30/2018', 'Office Supplies', 'Stephen Strange', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Paper', '200.00', '15.00', '2019-04-15 12:16:40'),
(140, 1, '12/30/2018', 'Meals and Entertainment', 'Stephen Strange', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Dinner with potential acquisition', '200.00', '15.00', '2019-04-15 12:16:40'),
(141, 1, '1/6/2019', 'Computer - Hardware', 'Carol Danvers', '1600 Amphitheatre Parkway Mountain View CA 94043', 'iPhone', '200.00', '15.00', '2019-04-15 12:16:40'),
(142, 1, '1/7/2019', 'Travel', 'Tony Stark', '1 Infinite Loop Cupertino CA 95014', 'Airplane ticket to NY', '200.00', '15.00', '2019-04-15 12:16:40'),
(143, 1, '2/3/2019', 'Meals and Entertainment', 'Bruce Banner', '1 Infinite Loop Cupertino CA 95014', 'Starbucks coffee', '12.00', '0.90', '2019-04-15 12:16:40'),
(144, 1, '2/18/2019', 'Travel', 'Carol Danvers', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Airplane ticket to NY', '1500.00', '112.50', '2019-04-15 12:16:40'),
(145, 1, '12/1/2018', 'Travel', 'Steve Rogers', '783 Park Ave New York NY 10021', 'Taxi ride', '350.00', '31.06', '2019-04-15 12:16:42'),
(146, 1, '12/15/2018', 'Meals and Entertainment', 'Tony Stark', '1 Infinite Loop Cupertino CA 95014', 'Team lunch', '235.00', '17.63', '2019-04-15 12:16:42'),
(147, 1, '12/31/2018', 'Computer - Hardware', 'Bruce Banner', '1 Infinite Loop Cupertino CA 95014', 'HP Laptop', '999.00', '74.93', '2019-04-15 12:16:42'),
(148, 1, '12/14/2018', 'Computer - Software', 'Nick Fury', '1 Infinite Loop Cupertino CA 95014', 'Microsoft Office', '899.00', '67.43', '2019-04-15 12:16:42'),
(149, 1, '12/6/2018', 'Computer - Software', 'Natasha Romanoff', '1600 Amphitheatre Parkway Mountain View CA 94043', 'iCloud Subscription', '50.00', '3.75', '2019-04-15 12:16:42'),
(150, 1, '12/9/2018', 'Computer - Software', 'Stephen Strange', '1600 Amphitheatre Parkway Mountain View CA 94043', 'iCloud Subscription', '50.00', '3.75', '2019-04-15 12:16:42'),
(151, 1, '11/10/2018', 'Meals and Entertainment', 'Carol Danvers', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Coffee with Steve', '300.00', '22.50', '2019-04-15 12:16:42'),
(152, 1, '11/12/2018', 'Travel', 'Stephen Strange', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Taxi ride', '230.00', '17.25', '2019-04-15 12:16:42'),
(153, 1, '11/20/2018', 'Meals and Entertainment', 'Steve Rogers', '783 Park Ave New York NY 10021', 'Client dinner', '200.00', '15.00', '2019-04-15 12:16:42'),
(154, 1, '10/4/2018', 'Travel', 'Carol Danvers', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Flight to Miami', '200.00', '15.00', '2019-04-15 12:16:42'),
(155, 1, '12/9/2018', 'Computer - Software', 'Tony Stark', '1 Infinite Loop Cupertino CA 95014', 'Dropbox Subscription', '15.00', '1.13', '2019-04-15 12:16:42'),
(156, 1, '9/18/2018', 'Travel', 'Nick Fury', '1 Infinite Loop Cupertino CA 95014', 'Taxi ride', '200.00', '15.00', '2019-04-15 12:16:42'),
(157, 1, '9/30/2018', 'Office Supplies', 'Stephen Strange', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Paper', '200.00', '15.00', '2019-04-15 12:16:42'),
(158, 1, '12/30/2018', 'Meals and Entertainment', 'Stephen Strange', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Dinner with potential acquisition', '200.00', '15.00', '2019-04-15 12:16:42'),
(159, 1, '1/6/2019', 'Computer - Hardware', 'Carol Danvers', '1600 Amphitheatre Parkway Mountain View CA 94043', 'iPhone', '200.00', '15.00', '2019-04-15 12:16:42'),
(160, 1, '1/7/2019', 'Travel', 'Tony Stark', '1 Infinite Loop Cupertino CA 95014', 'Airplane ticket to NY', '200.00', '15.00', '2019-04-15 12:16:42'),
(161, 1, '2/3/2019', 'Meals and Entertainment', 'Bruce Banner', '1 Infinite Loop Cupertino CA 95014', 'Starbucks coffee', '12.00', '0.90', '2019-04-15 12:16:42'),
(162, 1, '2/18/2019', 'Travel', 'Carol Danvers', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Airplane ticket to NY', '1500.00', '112.50', '2019-04-15 12:16:42'),
(163, 1, '12/1/2018', 'Travel', 'Steve Rogers', '783 Park Ave New York NY 10021', 'Taxi ride', '350.00', '31.06', '2019-04-15 12:17:23'),
(164, 1, '12/15/2018', 'Meals and Entertainment', 'Tony Stark', '1 Infinite Loop Cupertino CA 95014', 'Team lunch', '235.00', '17.63', '2019-04-15 12:17:23'),
(165, 1, '12/31/2018', 'Computer - Hardware', 'Bruce Banner', '1 Infinite Loop Cupertino CA 95014', 'HP Laptop', '999.00', '74.93', '2019-04-15 12:17:23'),
(166, 1, '12/14/2018', 'Computer - Software', 'Nick Fury', '1 Infinite Loop Cupertino CA 95014', 'Microsoft Office', '899.00', '67.43', '2019-04-15 12:17:23'),
(167, 1, '12/6/2018', 'Computer - Software', 'Natasha Romanoff', '1600 Amphitheatre Parkway Mountain View CA 94043', 'iCloud Subscription', '50.00', '3.75', '2019-04-15 12:17:23'),
(168, 1, '12/9/2018', 'Computer - Software', 'Stephen Strange', '1600 Amphitheatre Parkway Mountain View CA 94043', 'iCloud Subscription', '50.00', '3.75', '2019-04-15 12:17:23'),
(169, 1, '11/10/2018', 'Meals and Entertainment', 'Carol Danvers', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Coffee with Steve', '300.00', '22.50', '2019-04-15 12:17:23'),
(170, 1, '11/12/2018', 'Travel', 'Stephen Strange', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Taxi ride', '230.00', '17.25', '2019-04-15 12:17:23'),
(171, 1, '11/20/2018', 'Meals and Entertainment', 'Steve Rogers', '783 Park Ave New York NY 10021', 'Client dinner', '200.00', '15.00', '2019-04-15 12:17:23'),
(172, 1, '10/4/2018', 'Travel', 'Carol Danvers', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Flight to Miami', '200.00', '15.00', '2019-04-15 12:17:23'),
(173, 1, '12/9/2018', 'Computer - Software', 'Tony Stark', '1 Infinite Loop Cupertino CA 95014', 'Dropbox Subscription', '15.00', '1.13', '2019-04-15 12:17:23'),
(174, 1, '9/18/2018', 'Travel', 'Nick Fury', '1 Infinite Loop Cupertino CA 95014', 'Taxi ride', '200.00', '15.00', '2019-04-15 12:17:23'),
(175, 1, '9/30/2018', 'Office Supplies', 'Stephen Strange', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Paper', '200.00', '15.00', '2019-04-15 12:17:23'),
(176, 1, '12/30/2018', 'Meals and Entertainment', 'Stephen Strange', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Dinner with potential acquisition', '200.00', '15.00', '2019-04-15 12:17:23'),
(177, 1, '1/6/2019', 'Computer - Hardware', 'Carol Danvers', '1600 Amphitheatre Parkway Mountain View CA 94043', 'iPhone', '200.00', '15.00', '2019-04-15 12:17:23'),
(178, 1, '1/7/2019', 'Travel', 'Tony Stark', '1 Infinite Loop Cupertino CA 95014', 'Airplane ticket to NY', '200.00', '15.00', '2019-04-15 12:17:23'),
(179, 1, '2/3/2019', 'Meals and Entertainment', 'Bruce Banner', '1 Infinite Loop Cupertino CA 95014', 'Starbucks coffee', '12.00', '0.90', '2019-04-15 12:17:23'),
(180, 1, '2/18/2019', 'Travel', 'Carol Danvers', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Airplane ticket to NY', '1500.00', '112.50', '2019-04-15 12:17:23'),
(181, 1, '12/1/2018', 'Travel', 'Steve Rogers', '783 Park Ave New York NY 10021', 'Taxi ride', '350.00', '31.06', '2019-04-15 12:20:44'),
(182, 1, '12/15/2018', 'Meals and Entertainment', 'Tony Stark', '1 Infinite Loop Cupertino CA 95014', 'Team lunch', '235.00', '17.63', '2019-04-15 12:20:44'),
(183, 1, '12/31/2018', 'Computer - Hardware', 'Bruce Banner', '1 Infinite Loop Cupertino CA 95014', 'HP Laptop', '999.00', '74.93', '2019-04-15 12:20:44'),
(184, 1, '12/14/2018', 'Computer - Software', 'Nick Fury', '1 Infinite Loop Cupertino CA 95014', 'Microsoft Office', '899.00', '67.43', '2019-04-15 12:20:45'),
(185, 1, '12/6/2018', 'Computer - Software', 'Natasha Romanoff', '1600 Amphitheatre Parkway Mountain View CA 94043', 'iCloud Subscription', '50.00', '3.75', '2019-04-15 12:20:45'),
(186, 1, '12/9/2018', 'Computer - Software', 'Stephen Strange', '1600 Amphitheatre Parkway Mountain View CA 94043', 'iCloud Subscription', '50.00', '3.75', '2019-04-15 12:20:45'),
(187, 1, '11/10/2018', 'Meals and Entertainment', 'Carol Danvers', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Coffee with Steve', '300.00', '22.50', '2019-04-15 12:20:45'),
(188, 1, '11/12/2018', 'Travel', 'Stephen Strange', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Taxi ride', '230.00', '17.25', '2019-04-15 12:20:45'),
(189, 1, '11/20/2018', 'Meals and Entertainment', 'Steve Rogers', '783 Park Ave New York NY 10021', 'Client dinner', '200.00', '15.00', '2019-04-15 12:20:45'),
(190, 1, '10/4/2018', 'Travel', 'Carol Danvers', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Flight to Miami', '200.00', '15.00', '2019-04-15 12:20:45'),
(191, 1, '12/9/2018', 'Computer - Software', 'Tony Stark', '1 Infinite Loop Cupertino CA 95014', 'Dropbox Subscription', '15.00', '1.13', '2019-04-15 12:20:45'),
(192, 1, '9/18/2018', 'Travel', 'Nick Fury', '1 Infinite Loop Cupertino CA 95014', 'Taxi ride', '200.00', '15.00', '2019-04-15 12:20:45'),
(193, 1, '9/30/2018', 'Office Supplies', 'Stephen Strange', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Paper', '200.00', '15.00', '2019-04-15 12:20:45'),
(194, 1, '12/30/2018', 'Meals and Entertainment', 'Stephen Strange', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Dinner with potential acquisition', '200.00', '15.00', '2019-04-15 12:20:45'),
(195, 1, '1/6/2019', 'Computer - Hardware', 'Carol Danvers', '1600 Amphitheatre Parkway Mountain View CA 94043', 'iPhone', '200.00', '15.00', '2019-04-15 12:20:45'),
(196, 1, '1/7/2019', 'Travel', 'Tony Stark', '1 Infinite Loop Cupertino CA 95014', 'Airplane ticket to NY', '200.00', '15.00', '2019-04-15 12:20:45'),
(197, 1, '2/3/2019', 'Meals and Entertainment', 'Bruce Banner', '1 Infinite Loop Cupertino CA 95014', 'Starbucks coffee', '12.00', '0.90', '2019-04-15 12:20:45'),
(198, 1, '2/18/2019', 'Travel', 'Carol Danvers', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Airplane ticket to NY', '1500.00', '112.50', '2019-04-15 12:20:45'),
(199, 2, '12/1/2018', 'Travel', 'Steve Rogers', '783 Park Ave New York NY 10021', 'Taxi ride', '350.00', '31.06', '2019-04-15 13:14:47'),
(200, 2, '12/15/2018', 'Meals and Entertainment', 'Tony Stark', '1 Infinite Loop Cupertino CA 95014', 'Team lunch', '235.00', '17.63', '2019-04-15 13:14:47'),
(201, 2, '12/31/2018', 'Computer - Hardware', 'Bruce Banner', '1 Infinite Loop Cupertino CA 95014', 'HP Laptop', '999.00', '74.93', '2019-04-15 13:14:47'),
(202, 2, '12/14/2018', 'Computer - Software', 'Nick Fury', '1 Infinite Loop Cupertino CA 95014', 'Microsoft Office', '899.00', '67.43', '2019-04-15 13:14:47'),
(203, 2, '12/6/2018', 'Computer - Software', 'Natasha Romanoff', '1600 Amphitheatre Parkway Mountain View CA 94043', 'iCloud Subscription', '50.00', '3.75', '2019-04-15 13:14:47'),
(204, 2, '12/9/2018', 'Computer - Software', 'Stephen Strange', '1600 Amphitheatre Parkway Mountain View CA 94043', 'iCloud Subscription', '50.00', '3.75', '2019-04-15 13:14:47'),
(205, 2, '11/10/2018', 'Meals and Entertainment', 'Carol Danvers', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Coffee with Steve', '300.00', '22.50', '2019-04-15 13:14:47'),
(206, 2, '11/12/2018', 'Travel', 'Stephen Strange', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Taxi ride', '230.00', '17.25', '2019-04-15 13:14:47'),
(207, 2, '11/20/2018', 'Meals and Entertainment', 'Steve Rogers', '783 Park Ave New York NY 10021', 'Client dinner', '200.00', '15.00', '2019-04-15 13:14:47'),
(208, 2, '10/4/2018', 'Travel', 'Carol Danvers', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Flight to Miami', '200.00', '15.00', '2019-04-15 13:14:47'),
(209, 2, '12/9/2018', 'Computer - Software', 'Tony Stark', '1 Infinite Loop Cupertino CA 95014', 'Dropbox Subscription', '15.00', '1.13', '2019-04-15 13:14:47'),
(210, 2, '9/18/2018', 'Travel', 'Nick Fury', '1 Infinite Loop Cupertino CA 95014', 'Taxi ride', '200.00', '15.00', '2019-04-15 13:14:47'),
(211, 2, '9/30/2018', 'Office Supplies', 'Stephen Strange', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Paper', '200.00', '15.00', '2019-04-15 13:14:47'),
(212, 2, '12/30/2018', 'Meals and Entertainment', 'Stephen Strange', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Dinner with potential acquisition', '200.00', '15.00', '2019-04-15 13:14:47'),
(213, 2, '1/6/2019', 'Computer - Hardware', 'Carol Danvers', '1600 Amphitheatre Parkway Mountain View CA 94043', 'iPhone', '200.00', '15.00', '2019-04-15 13:14:47'),
(214, 2, '1/7/2019', 'Travel', 'Tony Stark', '1 Infinite Loop Cupertino CA 95014', 'Airplane ticket to NY', '200.00', '15.00', '2019-04-15 13:14:47'),
(215, 2, '2/3/2019', 'Meals and Entertainment', 'Bruce Banner', '1 Infinite Loop Cupertino CA 95014', 'Starbucks coffee', '12.00', '0.90', '2019-04-15 13:14:47'),
(216, 2, '2/18/2019', 'Travel', 'Carol Danvers', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Airplane ticket to NY', '1500.00', '112.50', '2019-04-15 13:14:47'),
(217, 5, '12/1/2018', 'Travel', 'Steve Rogers', '783 Park Ave New York NY 10021', 'Taxi ride', '350.00', '31.06', '2019-04-15 13:22:29'),
(218, 5, '12/15/2018', 'Meals and Entertainment', 'Tony Stark', '1 Infinite Loop Cupertino CA 95014', 'Team lunch', '235.00', '17.63', '2019-04-15 13:22:29'),
(219, 5, '12/31/2018', 'Computer - Hardware', 'Bruce Banner', '1 Infinite Loop Cupertino CA 95014', 'HP Laptop', '999.00', '74.93', '2019-04-15 13:22:29'),
(220, 5, '12/14/2018', 'Computer - Software', 'Nick Fury', '1 Infinite Loop Cupertino CA 95014', 'Microsoft Office', '899.00', '67.43', '2019-04-15 13:22:29'),
(221, 5, '12/6/2018', 'Computer - Software', 'Natasha Romanoff', '1600 Amphitheatre Parkway Mountain View CA 94043', 'iCloud Subscription', '50.00', '3.75', '2019-04-15 13:22:29'),
(222, 5, '12/9/2018', 'Computer - Software', 'Stephen Strange', '1600 Amphitheatre Parkway Mountain View CA 94043', 'iCloud Subscription', '50.00', '3.75', '2019-04-15 13:22:29'),
(223, 5, '11/10/2018', 'Meals and Entertainment', 'Carol Danvers', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Coffee with Steve', '300.00', '22.50', '2019-04-15 13:22:29'),
(224, 5, '11/12/2018', 'Travel', 'Stephen Strange', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Taxi ride', '230.00', '17.25', '2019-04-15 13:22:29'),
(225, 5, '11/20/2018', 'Meals and Entertainment', 'Steve Rogers', '783 Park Ave New York NY 10021', 'Client dinner', '200.00', '15.00', '2019-04-15 13:22:29'),
(226, 5, '10/4/2018', 'Travel', 'Carol Danvers', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Flight to Miami', '200.00', '15.00', '2019-04-15 13:22:29'),
(227, 5, '12/9/2018', 'Computer - Software', 'Tony Stark', '1 Infinite Loop Cupertino CA 95014', 'Dropbox Subscription', '15.00', '1.13', '2019-04-15 13:22:29'),
(228, 5, '9/18/2018', 'Travel', 'Nick Fury', '1 Infinite Loop Cupertino CA 95014', 'Taxi ride', '200.00', '15.00', '2019-04-15 13:22:29'),
(229, 5, '9/30/2018', 'Office Supplies', 'Stephen Strange', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Paper', '200.00', '15.00', '2019-04-15 13:22:29'),
(230, 5, '12/30/2018', 'Meals and Entertainment', 'Stephen Strange', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Dinner with potential acquisition', '200.00', '15.00', '2019-04-15 13:22:29'),
(231, 5, '1/6/2019', 'Computer - Hardware', 'Carol Danvers', '1600 Amphitheatre Parkway Mountain View CA 94043', 'iPhone', '200.00', '15.00', '2019-04-15 13:22:29'),
(232, 5, '1/7/2019', 'Travel', 'Tony Stark', '1 Infinite Loop Cupertino CA 95014', 'Airplane ticket to NY', '200.00', '15.00', '2019-04-15 13:22:29'),
(233, 5, '2/3/2019', 'Meals and Entertainment', 'Bruce Banner', '1 Infinite Loop Cupertino CA 95014', 'Starbucks coffee', '12.00', '0.90', '2019-04-15 13:22:29'),
(234, 5, '2/18/2019', 'Travel', 'Carol Danvers', '1600 Amphitheatre Parkway Mountain View CA 94043', 'Airplane ticket to NY', '1500.00', '112.50', '2019-04-15 13:22:29');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`version`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(5) UNSIGNED NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `created_at`) VALUES
(1, 'a@b.com', 'c4ca4238a0b923820dcc509a6f75849b', '2019-04-15 09:59:34'),
(2, 'admin@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '2019-04-15 13:10:11'),
(3, 'root@g.com', 'c4ca4238a0b923820dcc509a6f75849b', '2019-04-15 13:12:01'),
(4, 'aa@g.com', '6512bd43d9caa6e02c990b0a82652dca', '2019-04-15 13:12:42'),
(5, 'm@g.com', '4297f44b13955235245b2497399d7a93', '2019-04-15 13:22:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee_expanses`
--
ALTER TABLE `employee_expanses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee_expanses`
--
ALTER TABLE `employee_expanses`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee_expanses`
--
ALTER TABLE `employee_expanses`
  ADD CONSTRAINT `employee_expanses_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
