-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 26, 2022 at 11:27 PM
-- Server version: 8.0.29-0ubuntu0.20.04.3
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apriori`
--

-- --------------------------------------------------------

--
-- Table structure for table `confidence`
--

CREATE TABLE `confidence` (
  `kombinasi1` varchar(255) DEFAULT NULL,
  `kombinasi2` varchar(255) DEFAULT NULL,
  `support_xUy` double DEFAULT NULL,
  `support_x` double DEFAULT NULL,
  `confidence` double DEFAULT NULL,
  `lolos` tinyint DEFAULT NULL,
  `min_support` double DEFAULT NULL,
  `min_confidence` double DEFAULT NULL,
  `nilai_uji_lift` double DEFAULT NULL,
  `korelasi_rule` varchar(100) DEFAULT NULL,
  `id_process` int NOT NULL DEFAULT '0',
  `jumlah_a` int DEFAULT NULL,
  `jumlah_b` int DEFAULT NULL,
  `jumlah_ab` int DEFAULT NULL,
  `px` double DEFAULT NULL,
  `py` double DEFAULT NULL,
  `pxuy` double DEFAULT NULL,
  `from_itemset` int DEFAULT NULL COMMENT 'dari itemset 2/3'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `confidence`
--

INSERT INTO `confidence` (`kombinasi1`, `kombinasi2`, `support_xUy`, `support_x`, `confidence`, `lolos`, `min_support`, `min_confidence`, `nilai_uji_lift`, `korelasi_rule`, `id_process`, `jumlah_a`, `jumlah_b`, `jumlah_ab`, `px`, `py`, `pxuy`, `from_itemset`) VALUES
('A4 , A2', 'A3', 40, 40, 100, 1, 35, 70, 1.6666666666667, 'korelasi positif', 1, 8, 12, 8, 0.4, 0.6, 0.4, 3),
('A2 , A3', 'A4', 40, 50, 80, 1, 35, 70, 1.3333333333333, 'korelasi positif', 1, 10, 12, 8, 0.5, 0.6, 0.4, 3),
('A3 , A4', 'A2', 40, 45, 88.888888888889, 1, 35, 70, 1.2698412698413, 'korelasi positif', 1, 9, 14, 8, 0.45, 0.7, 0.4, 3),
('A4', 'A3 , A2', 40, 60, 66.666666666667, 0, 35, 70, 1.3333333333333, 'korelasi positif', 1, 12, 10, 8, 0.6, 0.5, 0.4, 3),
('A2', 'A4 , A3', 40, 70, 57.142857142857, 0, 35, 70, 1.2698412698413, 'korelasi positif', 1, 14, 9, 8, 0.7, 0.45, 0.4, 3),
('A3', 'A2 , A4', 40, 60, 66.666666666667, 0, 35, 70, 1.6666666666667, 'korelasi positif', 1, 12, 8, 8, 0.6, 0.4, 0.4, 3),
('A2 , A12', 'A11', 35, 35, 100, 1, 35, 70, 1.8181818181818, 'korelasi positif', 1, 7, 11, 7, 0.35, 0.55, 0.35, 3),
('A12 , A11', 'A2', 35, 55, 63.636363636364, 0, 35, 70, 0.90909090909091, 'korelasi negatif', 1, 11, 14, 7, 0.55, 0.7, 0.35, 3),
('A11 , A2', 'A12', 35, 35, 100, 1, 35, 70, 1.6666666666667, 'korelasi positif', 1, 7, 12, 7, 0.35, 0.6, 0.35, 3),
('A2', 'A11 , A12', 35, 70, 50, 0, 35, 70, 0.90909090909091, 'korelasi negatif', 1, 14, 11, 7, 0.7, 0.55, 0.35, 3),
('A12', 'A2 , A11', 35, 60, 58.333333333333, 0, 35, 70, 1.6666666666667, 'korelasi positif', 1, 12, 7, 7, 0.6, 0.35, 0.35, 3),
('A11', 'A12 , A2', 35, 55, 63.636363636364, 0, 35, 70, 1.8181818181818, 'korelasi positif', 1, 11, 7, 7, 0.55, 0.35, 0.35, 3),
('A3 , A12', 'A11', 35, 35, 100, 1, 35, 70, 1.8181818181818, 'korelasi positif', 1, 7, 11, 7, 0.35, 0.55, 0.35, 3),
('A12 , A11', 'A3', 35, 55, 63.636363636364, 0, 35, 70, 1.0606060606061, 'korelasi positif', 1, 11, 12, 7, 0.55, 0.6, 0.35, 3),
('A11 , A3', 'A12', 35, 35, 100, 1, 35, 70, 1.6666666666667, 'korelasi positif', 1, 7, 12, 7, 0.35, 0.6, 0.35, 3),
('A3', 'A11 , A12', 35, 60, 58.333333333333, 0, 35, 70, 1.0606060606061, 'korelasi positif', 1, 12, 11, 7, 0.6, 0.55, 0.35, 3),
('A12', 'A3 , A11', 35, 60, 58.333333333333, 0, 35, 70, 1.6666666666667, 'korelasi positif', 1, 12, 7, 7, 0.6, 0.35, 0.35, 3),
('A11', 'A12 , A3', 35, 55, 63.636363636364, 0, 35, 70, 1.8181818181818, 'korelasi positif', 1, 11, 7, 7, 0.55, 0.35, 0.35, 3),
('A1 , A2', 'A3', 40, 55, 72.727272727273, 1, 35, 70, 1.2121212121212, 'korelasi positif', 1, 11, 12, 8, 0.55, 0.6, 0.4, 3),
('A2 , A3', 'A1', 40, 50, 80, 1, 35, 70, 1.4545454545455, 'korelasi positif', 1, 10, 11, 8, 0.5, 0.55, 0.4, 3),
('A3 , A1', 'A2', 40, 40, 100, 1, 35, 70, 1.4285714285714, 'korelasi positif', 1, 8, 14, 8, 0.4, 0.7, 0.4, 3),
('A1', 'A3 , A2', 40, 55, 72.727272727273, 1, 35, 70, 1.4545454545455, 'korelasi positif', 1, 11, 10, 8, 0.55, 0.5, 0.4, 3),
('A2', 'A1 , A3', 40, 70, 57.142857142857, 0, 35, 70, 1.4285714285714, 'korelasi positif', 1, 14, 8, 8, 0.7, 0.4, 0.4, 3),
('A3', 'A2 , A1', 40, 60, 66.666666666667, 0, 35, 70, 1.2121212121212, 'korelasi positif', 1, 12, 11, 8, 0.6, 0.55, 0.4, 3),
('A4', 'A12', 35, 60, 58.333333333333, 0, 35, 70, 0.97222222222222, 'korelasi negatif', 1, 12, 12, 7, 0.6, 0.6, 0.35, 2),
('A12', 'A4', 35, 60, 58.333333333333, 0, 35, 70, 0.97222222222222, 'korelasi negatif', 1, 12, 12, 7, 0.6, 0.6, 0.35, 2),
('A4', 'A2', 40, 60, 66.666666666667, 0, 35, 70, 0.95238095238095, 'korelasi negatif', 1, 12, 14, 8, 0.6, 0.7, 0.4, 2),
('A2', 'A4', 40, 70, 57.142857142857, 0, 35, 70, 0.95238095238095, 'korelasi negatif', 1, 14, 12, 8, 0.7, 0.6, 0.4, 2),
('A4', 'A3', 45, 60, 75, 1, 35, 70, 1.25, 'korelasi positif', 1, 12, 12, 9, 0.6, 0.6, 0.45, 2),
('A3', 'A4', 45, 60, 75, 1, 35, 70, 1.25, 'korelasi positif', 1, 12, 12, 9, 0.6, 0.6, 0.45, 2),
('A12', 'A2', 35, 60, 58.333333333333, 0, 35, 70, 0.83333333333333, 'korelasi negatif', 1, 12, 14, 7, 0.6, 0.7, 0.35, 2),
('A2', 'A12', 35, 70, 50, 0, 35, 70, 0.83333333333333, 'korelasi negatif', 1, 14, 12, 7, 0.7, 0.6, 0.35, 2),
('A12', 'A3', 35, 60, 58.333333333333, 0, 35, 70, 0.97222222222222, 'korelasi negatif', 1, 12, 12, 7, 0.6, 0.6, 0.35, 2),
('A3', 'A12', 35, 60, 58.333333333333, 0, 35, 70, 0.97222222222222, 'korelasi negatif', 1, 12, 12, 7, 0.6, 0.6, 0.35, 2),
('A12', 'A11', 55, 60, 91.666666666667, 1, 35, 70, 1.6666666666667, 'korelasi positif', 1, 12, 11, 11, 0.6, 0.55, 0.55, 2),
('A11', 'A12', 55, 55, 100, 1, 35, 70, 1.6666666666667, 'korelasi positif', 1, 11, 12, 11, 0.55, 0.6, 0.55, 2),
('A1', 'A2', 55, 55, 100, 1, 35, 70, 1.4285714285714, 'korelasi positif', 1, 11, 14, 11, 0.55, 0.7, 0.55, 2),
('A2', 'A1', 55, 70, 78.571428571429, 1, 35, 70, 1.4285714285714, 'korelasi positif', 1, 14, 11, 11, 0.7, 0.55, 0.55, 2),
('A1', 'A3', 40, 55, 72.727272727273, 1, 35, 70, 1.2121212121212, 'korelasi positif', 1, 11, 12, 8, 0.55, 0.6, 0.4, 2),
('A3', 'A1', 40, 60, 66.666666666667, 0, 35, 70, 1.2121212121212, 'korelasi positif', 1, 12, 11, 8, 0.6, 0.55, 0.4, 2),
('A2', 'A3', 50, 70, 71.428571428571, 1, 35, 70, 1.1904761904762, 'korelasi positif', 1, 14, 12, 10, 0.7, 0.6, 0.5, 2),
('A3', 'A2', 50, 60, 83.333333333333, 1, 35, 70, 1.1904761904762, 'korelasi positif', 1, 12, 14, 10, 0.6, 0.7, 0.5, 2),
('A2', 'A11', 35, 70, 50, 0, 35, 70, 0.90909090909091, 'korelasi negatif', 1, 14, 11, 7, 0.7, 0.55, 0.35, 2),
('A11', 'A2', 35, 55, 63.636363636364, 0, 35, 70, 0.90909090909091, 'korelasi negatif', 1, 11, 14, 7, 0.55, 0.7, 0.35, 2),
('A3', 'A11', 35, 60, 58.333333333333, 0, 35, 70, 1.0606060606061, 'korelasi positif', 1, 12, 11, 7, 0.6, 0.55, 0.35, 2),
('A11', 'A3', 35, 55, 63.636363636364, 0, 35, 70, 1.0606060606061, 'korelasi positif', 1, 11, 12, 7, 0.55, 0.6, 0.35, 2),
('A4 , A2', 'A3', 40, 40, 100, 1, 35, 70, 1.6666666666667, 'korelasi positif', 2, 8, 12, 8, 0.4, 0.6, 0.4, 3),
('A2 , A3', 'A4', 40, 50, 80, 1, 35, 70, 1.3333333333333, 'korelasi positif', 2, 10, 12, 8, 0.5, 0.6, 0.4, 3),
('A3 , A4', 'A2', 40, 45, 88.888888888889, 1, 35, 70, 1.2698412698413, 'korelasi positif', 2, 9, 14, 8, 0.45, 0.7, 0.4, 3),
('A4', 'A3 , A2', 40, 60, 66.666666666667, 0, 35, 70, 1.3333333333333, 'korelasi positif', 2, 12, 10, 8, 0.6, 0.5, 0.4, 3),
('A2', 'A4 , A3', 40, 70, 57.142857142857, 0, 35, 70, 1.2698412698413, 'korelasi positif', 2, 14, 9, 8, 0.7, 0.45, 0.4, 3),
('A3', 'A2 , A4', 40, 60, 66.666666666667, 0, 35, 70, 1.6666666666667, 'korelasi positif', 2, 12, 8, 8, 0.6, 0.4, 0.4, 3),
('A2 , A12', 'A11', 35, 35, 100, 1, 35, 70, 1.8181818181818, 'korelasi positif', 2, 7, 11, 7, 0.35, 0.55, 0.35, 3),
('A12 , A11', 'A2', 35, 55, 63.636363636364, 0, 35, 70, 0.90909090909091, 'korelasi negatif', 2, 11, 14, 7, 0.55, 0.7, 0.35, 3),
('A11 , A2', 'A12', 35, 35, 100, 1, 35, 70, 1.6666666666667, 'korelasi positif', 2, 7, 12, 7, 0.35, 0.6, 0.35, 3),
('A2', 'A11 , A12', 35, 70, 50, 0, 35, 70, 0.90909090909091, 'korelasi negatif', 2, 14, 11, 7, 0.7, 0.55, 0.35, 3),
('A12', 'A2 , A11', 35, 60, 58.333333333333, 0, 35, 70, 1.6666666666667, 'korelasi positif', 2, 12, 7, 7, 0.6, 0.35, 0.35, 3),
('A11', 'A12 , A2', 35, 55, 63.636363636364, 0, 35, 70, 1.8181818181818, 'korelasi positif', 2, 11, 7, 7, 0.55, 0.35, 0.35, 3),
('A3 , A12', 'A11', 35, 35, 100, 1, 35, 70, 1.8181818181818, 'korelasi positif', 2, 7, 11, 7, 0.35, 0.55, 0.35, 3),
('A12 , A11', 'A3', 35, 55, 63.636363636364, 0, 35, 70, 1.0606060606061, 'korelasi positif', 2, 11, 12, 7, 0.55, 0.6, 0.35, 3),
('A11 , A3', 'A12', 35, 35, 100, 1, 35, 70, 1.6666666666667, 'korelasi positif', 2, 7, 12, 7, 0.35, 0.6, 0.35, 3),
('A3', 'A11 , A12', 35, 60, 58.333333333333, 0, 35, 70, 1.0606060606061, 'korelasi positif', 2, 12, 11, 7, 0.6, 0.55, 0.35, 3),
('A12', 'A3 , A11', 35, 60, 58.333333333333, 0, 35, 70, 1.6666666666667, 'korelasi positif', 2, 12, 7, 7, 0.6, 0.35, 0.35, 3),
('A11', 'A12 , A3', 35, 55, 63.636363636364, 0, 35, 70, 1.8181818181818, 'korelasi positif', 2, 11, 7, 7, 0.55, 0.35, 0.35, 3),
('A1 , A2', 'A3', 40, 55, 72.727272727273, 1, 35, 70, 1.2121212121212, 'korelasi positif', 2, 11, 12, 8, 0.55, 0.6, 0.4, 3),
('A2 , A3', 'A1', 40, 50, 80, 1, 35, 70, 1.4545454545455, 'korelasi positif', 2, 10, 11, 8, 0.5, 0.55, 0.4, 3),
('A3 , A1', 'A2', 40, 40, 100, 1, 35, 70, 1.4285714285714, 'korelasi positif', 2, 8, 14, 8, 0.4, 0.7, 0.4, 3),
('A1', 'A3 , A2', 40, 55, 72.727272727273, 1, 35, 70, 1.4545454545455, 'korelasi positif', 2, 11, 10, 8, 0.55, 0.5, 0.4, 3),
('A2', 'A1 , A3', 40, 70, 57.142857142857, 0, 35, 70, 1.4285714285714, 'korelasi positif', 2, 14, 8, 8, 0.7, 0.4, 0.4, 3),
('A3', 'A2 , A1', 40, 60, 66.666666666667, 0, 35, 70, 1.2121212121212, 'korelasi positif', 2, 12, 11, 8, 0.6, 0.55, 0.4, 3),
('A4', 'A12', 35, 60, 58.333333333333, 0, 35, 70, 0.97222222222222, 'korelasi negatif', 2, 12, 12, 7, 0.6, 0.6, 0.35, 2),
('A12', 'A4', 35, 60, 58.333333333333, 0, 35, 70, 0.97222222222222, 'korelasi negatif', 2, 12, 12, 7, 0.6, 0.6, 0.35, 2),
('A4', 'A2', 40, 60, 66.666666666667, 0, 35, 70, 0.95238095238095, 'korelasi negatif', 2, 12, 14, 8, 0.6, 0.7, 0.4, 2),
('A2', 'A4', 40, 70, 57.142857142857, 0, 35, 70, 0.95238095238095, 'korelasi negatif', 2, 14, 12, 8, 0.7, 0.6, 0.4, 2),
('A4', 'A3', 45, 60, 75, 1, 35, 70, 1.25, 'korelasi positif', 2, 12, 12, 9, 0.6, 0.6, 0.45, 2),
('A3', 'A4', 45, 60, 75, 1, 35, 70, 1.25, 'korelasi positif', 2, 12, 12, 9, 0.6, 0.6, 0.45, 2),
('A12', 'A2', 35, 60, 58.333333333333, 0, 35, 70, 0.83333333333333, 'korelasi negatif', 2, 12, 14, 7, 0.6, 0.7, 0.35, 2),
('A2', 'A12', 35, 70, 50, 0, 35, 70, 0.83333333333333, 'korelasi negatif', 2, 14, 12, 7, 0.7, 0.6, 0.35, 2),
('A12', 'A3', 35, 60, 58.333333333333, 0, 35, 70, 0.97222222222222, 'korelasi negatif', 2, 12, 12, 7, 0.6, 0.6, 0.35, 2),
('A3', 'A12', 35, 60, 58.333333333333, 0, 35, 70, 0.97222222222222, 'korelasi negatif', 2, 12, 12, 7, 0.6, 0.6, 0.35, 2),
('A12', 'A11', 55, 60, 91.666666666667, 1, 35, 70, 1.6666666666667, 'korelasi positif', 2, 12, 11, 11, 0.6, 0.55, 0.55, 2),
('A11', 'A12', 55, 55, 100, 1, 35, 70, 1.6666666666667, 'korelasi positif', 2, 11, 12, 11, 0.55, 0.6, 0.55, 2),
('A1', 'A2', 55, 55, 100, 1, 35, 70, 1.4285714285714, 'korelasi positif', 2, 11, 14, 11, 0.55, 0.7, 0.55, 2),
('A2', 'A1', 55, 70, 78.571428571429, 1, 35, 70, 1.4285714285714, 'korelasi positif', 2, 14, 11, 11, 0.7, 0.55, 0.55, 2),
('A1', 'A3', 40, 55, 72.727272727273, 1, 35, 70, 1.2121212121212, 'korelasi positif', 2, 11, 12, 8, 0.55, 0.6, 0.4, 2),
('A3', 'A1', 40, 60, 66.666666666667, 0, 35, 70, 1.2121212121212, 'korelasi positif', 2, 12, 11, 8, 0.6, 0.55, 0.4, 2),
('A2', 'A3', 50, 70, 71.428571428571, 1, 35, 70, 1.1904761904762, 'korelasi positif', 2, 14, 12, 10, 0.7, 0.6, 0.5, 2),
('A3', 'A2', 50, 60, 83.333333333333, 1, 35, 70, 1.1904761904762, 'korelasi positif', 2, 12, 14, 10, 0.6, 0.7, 0.5, 2),
('A2', 'A11', 35, 70, 50, 0, 35, 70, 0.90909090909091, 'korelasi negatif', 2, 14, 11, 7, 0.7, 0.55, 0.35, 2),
('A11', 'A2', 35, 55, 63.636363636364, 0, 35, 70, 0.90909090909091, 'korelasi negatif', 2, 11, 14, 7, 0.55, 0.7, 0.35, 2),
('A3', 'A11', 35, 60, 58.333333333333, 0, 35, 70, 1.0606060606061, 'korelasi positif', 2, 12, 11, 7, 0.6, 0.55, 0.35, 2),
('A11', 'A3', 35, 55, 63.636363636364, 0, 35, 70, 1.0606060606061, 'korelasi positif', 2, 11, 12, 7, 0.55, 0.6, 0.35, 2);

-- --------------------------------------------------------

--
-- Table structure for table `itemset1`
--

CREATE TABLE `itemset1` (
  `atribut` varchar(200) DEFAULT NULL,
  `jumlah` int DEFAULT NULL,
  `support` double DEFAULT NULL,
  `lolos` tinyint DEFAULT NULL,
  `id_process` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `itemset1`
--

INSERT INTO `itemset1` (`atribut`, `jumlah`, `support`, `lolos`, `id_process`) VALUES
('A4', 12, 60, 1, 1),
('A5', 7, 35, 1, 1),
('A6', 3, 15, 0, 1),
('A7', 4, 20, 0, 1),
('A8', 5, 25, 0, 1),
('A12', 12, 60, 1, 1),
('A15', 4, 20, 0, 1),
('A1', 11, 55, 1, 1),
('A2', 14, 70, 1, 1),
('A3', 12, 60, 1, 1),
('A10', 4, 20, 0, 1),
('A17', 4, 20, 0, 1),
('A20', 3, 15, 0, 1),
('A11', 11, 55, 1, 1),
('A13', 5, 25, 0, 1),
('A14', 4, 20, 0, 1),
('A18', 3, 15, 0, 1),
('A9', 5, 25, 0, 1),
('A16', 4, 20, 0, 1),
('A19', 4, 20, 0, 1),
('A4', 12, 60, 1, 2),
('A5', 7, 35, 1, 2),
('A6', 3, 15, 0, 2),
('A7', 4, 20, 0, 2),
('A8', 5, 25, 0, 2),
('A12', 12, 60, 1, 2),
('A15', 4, 20, 0, 2),
('A1', 11, 55, 1, 2),
('A2', 14, 70, 1, 2),
('A3', 12, 60, 1, 2),
('A10', 4, 20, 0, 2),
('A17', 4, 20, 0, 2),
('A20', 3, 15, 0, 2),
('A11', 11, 55, 1, 2),
('A13', 5, 25, 0, 2),
('A14', 4, 20, 0, 2),
('A18', 3, 15, 0, 2),
('A9', 5, 25, 0, 2),
('A16', 4, 20, 0, 2),
('A19', 4, 20, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `itemset2`
--

CREATE TABLE `itemset2` (
  `atribut1` varchar(200) DEFAULT NULL,
  `atribut2` varchar(200) DEFAULT NULL,
  `jumlah` int DEFAULT NULL,
  `support` double DEFAULT NULL,
  `lolos` tinyint DEFAULT NULL,
  `id_process` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `itemset2`
--

INSERT INTO `itemset2` (`atribut1`, `atribut2`, `jumlah`, `support`, `lolos`, `id_process`) VALUES
('A4', 'A5', 5, 25, 0, 1),
('A4', 'A12', 7, 35, 1, 1),
('A4', 'A1', 6, 30, 0, 1),
('A4', 'A2', 8, 40, 1, 1),
('A4', 'A3', 9, 45, 1, 1),
('A4', 'A11', 6, 30, 0, 1),
('A5', 'A12', 4, 20, 0, 1),
('A5', 'A1', 3, 15, 0, 1),
('A5', 'A2', 4, 20, 0, 1),
('A5', 'A3', 4, 20, 0, 1),
('A5', 'A11', 3, 15, 0, 1),
('A12', 'A1', 6, 30, 0, 1),
('A12', 'A2', 7, 35, 1, 1),
('A12', 'A3', 7, 35, 1, 1),
('A12', 'A11', 11, 55, 1, 1),
('A1', 'A2', 11, 55, 1, 1),
('A1', 'A3', 8, 40, 1, 1),
('A1', 'A11', 6, 30, 0, 1),
('A2', 'A3', 10, 50, 1, 1),
('A2', 'A11', 7, 35, 1, 1),
('A3', 'A11', 7, 35, 1, 1),
('A4', 'A5', 5, 25, 0, 2),
('A4', 'A12', 7, 35, 1, 2),
('A4', 'A1', 6, 30, 0, 2),
('A4', 'A2', 8, 40, 1, 2),
('A4', 'A3', 9, 45, 1, 2),
('A4', 'A11', 6, 30, 0, 2),
('A5', 'A12', 4, 20, 0, 2),
('A5', 'A1', 3, 15, 0, 2),
('A5', 'A2', 4, 20, 0, 2),
('A5', 'A3', 4, 20, 0, 2),
('A5', 'A11', 3, 15, 0, 2),
('A12', 'A1', 6, 30, 0, 2),
('A12', 'A2', 7, 35, 1, 2),
('A12', 'A3', 7, 35, 1, 2),
('A12', 'A11', 11, 55, 1, 2),
('A1', 'A2', 11, 55, 1, 2),
('A1', 'A3', 8, 40, 1, 2),
('A1', 'A11', 6, 30, 0, 2),
('A2', 'A3', 10, 50, 1, 2),
('A2', 'A11', 7, 35, 1, 2),
('A3', 'A11', 7, 35, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `itemset3`
--

CREATE TABLE `itemset3` (
  `atribut1` varchar(200) DEFAULT NULL,
  `atribut2` varchar(200) DEFAULT NULL,
  `atribut3` varchar(200) DEFAULT NULL,
  `jumlah` int DEFAULT NULL,
  `support` double DEFAULT NULL,
  `lolos` tinyint DEFAULT NULL,
  `id_process` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `itemset3`
--

INSERT INTO `itemset3` (`atribut1`, `atribut2`, `atribut3`, `jumlah`, `support`, `lolos`, `id_process`) VALUES
('A4', 'A12', 'A2', 3, 15, 0, 1),
('A4', 'A12', 'A3', 4, 20, 0, 1),
('A4', 'A12', 'A11', 6, 30, 0, 1),
('A4', 'A1', 'A12', 2, 10, 0, 1),
('A4', 'A1', 'A2', 6, 30, 0, 1),
('A1', 'A12', 'A2', 6, 30, 0, 1),
('A4', 'A1', 'A3', 6, 30, 0, 1),
('A1', 'A12', 'A3', 4, 20, 0, 1),
('A4', 'A2', 'A3', 8, 40, 1, 1),
('A2', 'A12', 'A3', 5, 25, 0, 1),
('A4', 'A2', 'A11', 3, 15, 0, 1),
('A2', 'A12', 'A11', 7, 35, 1, 1),
('A4', 'A3', 'A11', 4, 20, 0, 1),
('A3', 'A12', 'A11', 7, 35, 1, 1),
('A1', 'A2', 'A3', 8, 40, 1, 1),
('A3', 'A2', 'A11', 5, 25, 0, 1),
('A12', 'A1', 'A11', 6, 30, 0, 1),
('A1', 'A11', 'A2', 6, 30, 0, 1),
('A1', 'A11', 'A3', 4, 20, 0, 1),
('A4', 'A12', 'A2', 3, 15, 0, 2),
('A4', 'A12', 'A3', 4, 20, 0, 2),
('A4', 'A12', 'A11', 6, 30, 0, 2),
('A4', 'A1', 'A12', 2, 10, 0, 2),
('A4', 'A1', 'A2', 6, 30, 0, 2),
('A1', 'A12', 'A2', 6, 30, 0, 2),
('A4', 'A1', 'A3', 6, 30, 0, 2),
('A1', 'A12', 'A3', 4, 20, 0, 2),
('A4', 'A2', 'A3', 8, 40, 1, 2),
('A2', 'A12', 'A3', 5, 25, 0, 2),
('A4', 'A2', 'A11', 3, 15, 0, 2),
('A2', 'A12', 'A11', 7, 35, 1, 2),
('A4', 'A3', 'A11', 4, 20, 0, 2),
('A3', 'A12', 'A11', 7, 35, 1, 2),
('A1', 'A2', 'A3', 8, 40, 1, 2),
('A3', 'A2', 'A11', 5, 25, 0, 2),
('A12', 'A1', 'A11', 6, 30, 0, 2),
('A1', 'A11', 'A2', 6, 30, 0, 2),
('A1', 'A11', 'A3', 4, 20, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `itemset4`
--

CREATE TABLE `itemset4` (
  `atribut1` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `atribut2` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `atribut3` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `atribut4` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `jumlah` int DEFAULT NULL,
  `support` double DEFAULT NULL,
  `lolos` tinyint DEFAULT NULL,
  `id_process` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `process_log`
--

CREATE TABLE `process_log` (
  `id` int NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `min_support` double DEFAULT NULL,
  `min_confidence` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `process_log`
--

INSERT INTO `process_log` (`id`, `start_date`, `end_date`, `min_support`, `min_confidence`) VALUES
(1, '2020-01-23', '2020-01-24', 35, 70),
(2, '2020-01-23', '2020-01-24', 35, 70);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int NOT NULL,
  `transaction_date` date DEFAULT NULL,
  `produk` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `transaction_date`, `produk`) VALUES
(295, '2020-01-23', 'A4,A5,A6,A7,A8,A12,A15'),
(296, '2020-01-23', 'A1,A2,A3,A4,A5,A10,A17,A20'),
(297, '2020-01-23', 'A1,A2,A3,A4,A11,A12,A13,A14'),
(298, '2020-01-23', 'A1,A2,A3,A4,A11,A12,A17,A18'),
(299, '2020-01-23', 'A3,A4,A5,A11,A12,A13,A14'),
(300, '2020-01-23', 'A1,A2,A3,A5,A6,A9,A10,A11,A12,A16,A19'),
(301, '2020-01-23', 'A4,A5,A11,A12,A15,A19'),
(302, '2020-01-23', 'A2,A3,A4,A8,A9,A14'),
(303, '2020-01-23', 'A4,A8,A9,A10,A11,A12,A13,A16'),
(304, '2020-01-23', 'A1,A2,A7,A11,A12'),
(305, '2020-01-23', 'A1,A2,A3,A4,A15'),
(306, '2020-01-24', 'A1,A2,A6,A8,A17'),
(307, '2020-01-24', 'A1,A2,A3,A11,A12'),
(308, '2020-01-24', 'A7,A9,A10,A14,A18,A20'),
(309, '2020-01-24', 'A2,A5,A7'),
(310, '2020-01-24', 'A1,A2,A3,A4,A5,A13'),
(311, '2020-01-24', 'A1,A2,A3,A4,A16,A20'),
(312, '2020-01-24', 'A2,A3,A4,A11,A12,A16'),
(313, '2020-01-24', 'A1,A2,A8,A9,A11,A12,A13,A17,A19'),
(314, '2020-01-24', 'A3,A11,A12,A15,A18,A19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(200) DEFAULT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `password` text,
  `level` tinyint NOT NULL DEFAULT '0',
  `last_login` datetime DEFAULT NULL,
  `inactive` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `nama`, `password`, `level`, `last_login`, `inactive`) VALUES
(1, 'admin', 'Administrator', '21232f297a57a5a743894a0e4a801fc3', 1, '2017-02-22 01:49:04', 0),
(2, 'user', 'User Direktur', 'ee11cbb19052e40b07aac0ca060c23ee', 2, '2016-05-22 09:19:02', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `process_log`
--
ALTER TABLE `process_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `process_log`
--
ALTER TABLE `process_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=315;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
