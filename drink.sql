-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Värd: 127.0.0.1
-- Tid vid skapande: 27 feb 2026 kl 10:47
-- Serverversion: 10.4.32-MariaDB
-- PHP-version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databas: `drink`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `tbl_drinks`
--

CREATE TABLE `tbl_drinks` (
  `id` int(11) NOT NULL,
  `drinkname` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `ingredients` text NOT NULL,
  `recipe` text NOT NULL,
  `alcoholic` tinyint(4) NOT NULL,
  `rating` float NOT NULL DEFAULT 3 COMMENT '1-5 is rating possibilities'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumpning av Data i tabell `tbl_drinks`
--

INSERT INTO `tbl_drinks` (`id`, `drinkname`, `description`, `ingredients`, `recipe`, `alcoholic`, `rating`) VALUES
(1, 'Bloody Mary', 'Almost a salad, eh?', '6 cl Vodka\r\n20 cl Tomato juice\r\nSalt & pepper\r\nA dash of Tabasco sauce\r\nStalk of sellery for decoration', 'Pour Tomato juice in tall glass.\r\nAdd vodka.\r\nAdd salt, pepper and Tabasco after your own taste.\r\nGarnish with sellery.', 1, 3),
(2, 'Atheist revenge', 'Makes you unbeleive.', '10cl Absinthe\r\n10cl Vodka\r\n10cl White rum\r\n10cl Chocolade sauce\r\n4l Coca Cola', 'Mix all stuff, shake into a big bang.\r\nDrink.', 1, 2);

-- --------------------------------------------------------

--
-- Tabellstruktur `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(255) NOT NULL,
  `userlevel` int(11) NOT NULL DEFAULT 5,
  `lastlogin` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `realname` varchar(80) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumpning av Data i tabell `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `password`, `userlevel`, `lastlogin`, `realname`, `mail`, `created`) VALUES
(1, '', '', 0, '0000-00-00 00:00:00', '', '', '0000-00-00 00:00:00');

--
-- Index för dumpade tabeller
--

--
-- Index för tabell `tbl_drinks`
--
ALTER TABLE `tbl_drinks`
  ADD PRIMARY KEY (`id`);

--
-- Index för tabell `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT för dumpade tabeller
--

--
-- AUTO_INCREMENT för tabell `tbl_drinks`
--
ALTER TABLE `tbl_drinks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT för tabell `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
