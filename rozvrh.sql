-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 14, 2020 at 10:43 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rozvrh`
--

-- --------------------------------------------------------

--
-- Table structure for table `c_trieda`
--

CREATE TABLE `c_trieda` (
  `idc_trieda` int(11) NOT NULL,
  `nazovc_trieda` varchar(50) COLLATE utf16_slovak_ci NOT NULL,
  `skupina` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_slovak_ci;

--
-- Dumping data for table `c_trieda`
--

INSERT INTO `c_trieda` (`idc_trieda`, `nazovc_trieda`, `skupina`) VALUES
(1, '3A', 1),
(2, '3C', 1),
(3, '3B', 1);

-- --------------------------------------------------------

--
-- Table structure for table `preklad`
--

CREATE TABLE `preklad` (
  `idpreklad` int(9) NOT NULL,
  `jazyk` varchar(2) COLLATE utf8_slovak_ci NOT NULL,
  `retazec` varchar(100) COLLATE utf8_slovak_ci NOT NULL,
  `preklad` text COLLATE utf8_slovak_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovak_ci;

--
-- Dumping data for table `preklad`
--

INSERT INTO `preklad` (`idpreklad`, `jazyk`, `retazec`, `preklad`) VALUES
(1, 'sk', 'pfg', 'Programovacie a interaktívne prostredia'),
(2, 'en', 'pfg', 'Programming and interactive environment'),
(3, 'sk', 'nadpis', 'Toto je rozvrh:'),
(4, 'en', 'nadpis', 'This is schedule:');

-- --------------------------------------------------------

--
-- Table structure for table `rozvrh`
--

CREATE TABLE `rozvrh` (
  `idrozvrh` int(9) NOT NULL,
  `den` int(3) NOT NULL,
  `hodina` int(3) NOT NULL,
  `predmet` varchar(20) COLLATE utf8_slovak_ci NOT NULL,
  `trieda` varchar(2) COLLATE utf8_slovak_ci NOT NULL,
  `skupina` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovak_ci;

--
-- Dumping data for table `rozvrh`
--

INSERT INTO `rozvrh` (`idrozvrh`, `den`, `hodina`, `predmet`, `trieda`, `skupina`) VALUES
(1, 2, 2, 'pfg', '4b', 2),
(2, 2, 3, 'pfg', '4b', 2),
(3, 2, 1, 'irs', '4b', 2),
(4, 4, 0, 'pro', '3a', 1),
(5, 4, 5, 'tv', '1a', 1);

-- --------------------------------------------------------

--
-- Table structure for table `uzivatelia`
--

CREATE TABLE `uzivatelia` (
  `iduzivatelia` int(9) NOT NULL,
  `meno` varchar(50) COLLATE utf8_slovak_ci NOT NULL,
  `priezvisko` varchar(100) CHARACTER SET utf16 COLLATE utf16_slovak_ci NOT NULL,
  `datum_narodenia` date NOT NULL,
  `id_c_trieda` int(3) NOT NULL DEFAULT 0,
  `logname` varchar(150) COLLATE utf8_slovak_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_slovak_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_slovak_ci;

--
-- Dumping data for table `uzivatelia`
--

INSERT INTO `uzivatelia` (`iduzivatelia`, `meno`, `priezvisko`, `datum_narodenia`, `id_c_trieda`, `logname`, `password`) VALUES
(1, 'Jakub', 'Vodrážka', '2020-10-14', 0, 'abs3nce', '7b902e6ff1db9f560443f2048974fd7d386975b0'),
(2, 'Lucia', 'Ivaničová', '2002-09-02', 0, '_vendettta', 'a495a3e152cda9057aa779e00d708fb27eead222'),
(3, 'Adam', 'Korda', '2003-05-24', 0, 'AladinovKoberec', 'a94fa3469c96d6938b0a8dafc50d73c47309db5e'),
(4, 'Martin', 'Chovanec', '2001-07-22', 0, 'kingdrafi', 'a94fa3469c96d6938b0a8dafc50d73c47309db5e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `c_trieda`
--
ALTER TABLE `c_trieda`
  ADD PRIMARY KEY (`idc_trieda`);

--
-- Indexes for table `preklad`
--
ALTER TABLE `preklad`
  ADD PRIMARY KEY (`idpreklad`);

--
-- Indexes for table `rozvrh`
--
ALTER TABLE `rozvrh`
  ADD PRIMARY KEY (`idrozvrh`);

--
-- Indexes for table `uzivatelia`
--
ALTER TABLE `uzivatelia`
  ADD PRIMARY KEY (`iduzivatelia`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `c_trieda`
--
ALTER TABLE `c_trieda`
  MODIFY `idc_trieda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `preklad`
--
ALTER TABLE `preklad`
  MODIFY `idpreklad` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rozvrh`
--
ALTER TABLE `rozvrh`
  MODIFY `idrozvrh` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `uzivatelia`
--
ALTER TABLE `uzivatelia`
  MODIFY `iduzivatelia` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
