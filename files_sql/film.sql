-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 14, 2022 at 10:34 AM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_movies`
--

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE TABLE `film` (
  `id` int(2) NOT NULL,
  `titre` varchar(100) NOT NULL,
  `realisateur` varchar(100) NOT NULL,
  `genre` varchar(100) NOT NULL,
  `sorti` date NOT NULL,
  `pays` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`id`, `titre`, `realisateur`, `genre`, `sorti`, `pays`) VALUES
(1, 'La tête haute', 'Emmanuelle Bercot', 'drame', '2015-10-21', 'France'),
(2, 'Ce qui nous lie', 'Cédric Klapisch', 'comédie', '2017-06-04', 'France'),
(3, 'Once upon a time', 'Quentin Tarantino', 'comédie', '2019-06-26', 'Etats Unis'),
(4, 'Django Unchained', 'Quentin Tarantino', 'western', '2013-01-13', 'Etats Unis'),
(5, 'Tout sur ma mère', 'Pedro Almodovar', 'drame', '1999-05-19', 'Espagne'),
(6, 'Star Wars : Le Réveil de la Force', 'Georges Lucas', 'Science fiction', '2015-12-16', 'Etats Unis'),
(13, 'Le aventuriers de l\'arche perdue', 'Georges Lucas', 'aventure', '1981-09-16', 'Etats unis'),
(14, 'Le château ambulant', 'Hayao Miyazaki', 'animation', '2005-01-12', 'japon');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `film`
--
ALTER TABLE `film`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
