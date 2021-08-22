-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 21 Sie 2021, 17:32
-- Wersja serwera: 10.4.20-MariaDB
-- Wersja PHP: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `musicservice`
--
CREATE DATABASE IF NOT EXISTS `musicservice` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `musicservice`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `genres`
--

CREATE TABLE `genres` (
  `GenreID` int(11) NOT NULL,
  `Name` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sources`
--

CREATE TABLE `sources` (
  `numberofsource` int(10) NOT NULL,
  `urlTOfile` text DEFAULT NULL,
  `fresh` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `sources`
--

INSERT IGNORE INTO `sources` (`numberofsource`, `urlTOfile`, `fresh`) VALUES
(1, NULL, NULL),
(2, NULL, NULL),
(3, NULL, 1),
(4, NULL, 1),
(5, NULL, 1),
(6, NULL, 1),
(7, NULL, 1),
(8, NULL, 1),
(9, NULL, 1),
(10, NULL, 1),
(11, NULL, 1),
(12, NULL, 1),
(13, 'url12222', 1),
(14, 'url2', 1),
(15, '/public/test.json', 1),
(16, 'url2', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tracks`
--

CREATE TABLE `tracks` (
  `TrackID` int(11) NOT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `AlbumId` int(11) DEFAULT NULL,
  `GenreId` int(11) DEFAULT NULL,
  `MediaTypeId` int(11) DEFAULT NULL,
  `Composer` varchar(220) DEFAULT NULL,
  `Milliseconds` int(11) DEFAULT NULL,
  `Bytes` int(11) DEFAULT NULL,
  `UnitPrice` double(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `tracks`
--

INSERT IGNORE INTO `tracks` (`TrackID`, `Name`, `AlbumId`, `GenreId`, `MediaTypeId`, `Composer`, `Milliseconds`, `Bytes`, `UnitPrice`) VALUES
(1, 'Hello People', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Hello ppl 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '22', 32, 23, 32, '123', 213, 213, NULL),
(14, '2221222helo', 22, 2, 2, '2', 2, 23, NULL),
(15, 'test1', 1, 2, 3, 'asdsda', 13, 1233, NULL),
(16, 'test1', 1, 2, 3, 'asdsda', 13, 1233, NULL),
(17, 'test3', 1, 2, 3, 'asdsda', 13, 1233, NULL),
(18, 'test4', 1, 2, 3, 'asdsda', 13, 1233, NULL),
(19, 'test4', 1, 2, 3, 'asdsda', 13, 1233, NULL),
(20, 'test5', 1, 2, 3, 'asdsda', 13, 1233, NULL),
(21, 'test6', 1, 2, 3, 'asdsda', 13, 1233, NULL),
(22, 'asd', 1, 1, 1, '123', 2, 22, NULL),
(23, 'wwwartofle', 1, 1, 1, '123', 2, 22, NULL),
(24, 'fierce', 1, 1, 1, 'mm', 1, 44, NULL),
(25, 'fierce', 1, 1, 1, 'mm', 1, 44, 0),
(26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'dfsd', 11, 11, 1, '333', 23, 23, 32),
(30, 'dfsd', 11, 11, 1, '333', 23, 23, 32),
(31, '23badumc', 0, 1, 1, 'mozart', 22, 22, 22);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`GenreID`),
  ADD UNIQUE KEY `genre_unique_id` (`Name`);

--
-- Indeksy dla tabeli `sources`
--
ALTER TABLE `sources`
  ADD PRIMARY KEY (`numberofsource`);

--
-- Indeksy dla tabeli `tracks`
--
ALTER TABLE `tracks`
  ADD PRIMARY KEY (`TrackID`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `genres`
--
ALTER TABLE `genres`
  MODIFY `GenreID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `sources`
--
ALTER TABLE `sources`
  MODIFY `numberofsource` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT dla tabeli `tracks`
--
ALTER TABLE `tracks`
  MODIFY `TrackID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
