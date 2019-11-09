-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 09. Nov 2019 um 14:38
-- Server-Version: 10.4.8-MariaDB
-- PHP-Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: ` cr09_dennis_pavitschitz_carrental`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `car`
--

CREATE TABLE `car` (
  `id` int(11) NOT NULL,
  `model` varchar(20) DEFAULT NULL,
  `ps` int(11) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `license_number` varchar(10) DEFAULT NULL,
  `production_year` date DEFAULT NULL,
  `mileage` int(11) DEFAULT NULL,
  `extras` varchar(255) DEFAULT NULL,
  `car_condition` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `car`
--

INSERT INTO `car` (`id`, `model`, `ps`, `color`, `license_number`, `production_year`, `mileage`, `extras`, `car_condition`, `create_date`, `update_date`) VALUES
(1, 'A3', 150, 'grün', 'w25698', '2000-02-13', 156000, 'air condition bluetooth', 'used', '2019-11-09 00:00:00', NULL),
(2, 'A6', 350, 'silver', 'w29638', '2014-02-13', 36000, 'air condition bluetooth leather', 'some scratches', '2019-11-09 00:00:00', NULL),
(3, 'carrera 911', 500, 'black', 'it58963', '2017-11-01', 10000, 'everything', 'new', '2019-11-09 00:00:00', NULL),
(4, 'ram', 420, 'navy blue', 'm23695a', '2010-05-29', 75000, 'bigger tires dolby sorround', 'some small things', '2019-11-09 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `car_service`
--

CREATE TABLE `car_service` (
  `employee_id` int(11) NOT NULL,
  `car_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `car_service`
--

INSERT INTO `car_service` (`employee_id`, `car_id`) VALUES
(7, 1),
(5, 4),
(5, 3),
(6, 2);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `surename` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `postal_code` varchar(15) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `drivers_license` varchar(25) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `credit_card_number` varchar(30) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `customer`
--

INSERT INTO `customer` (`id`, `name`, `surename`, `address`, `postal_code`, `birth_date`, `drivers_license`, `phone_number`, `email`, `credit_card_number`, `create_date`, `update_date`) VALUES
(1, 'dennis', 'pav', 'hernalserhauptstrasse', '1160', '1986-11-21', 'at256asd986', '7859632100', 'dede@hehe.com', '142563001225', '2019-11-09 00:00:00', NULL),
(3, 'clemens', 'man', 'time square', '15000', '1989-10-09', 'hfd58961', '846534968541', 'jumanshi@google.at', '84561698', '2019-11-09 00:00:00', NULL),
(4, 'stefan', 'm', 'SHIBUYA', '9682', '2000-08-18', 'sd5896174551', '0125698524', 'buya@car.com', '21588763214', '2019-11-09 00:00:00', NULL),
(5, 'rene', 'a', 'beach', '9682', '1969-03-02', 's5991111554', '0336699852', 'rena@car.com', '21588763214', '2019-11-09 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `surename` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `postal_code` varchar(15) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `phone_number` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `position_id` int(11) NOT NULL,
  `work_location_id` int(11) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `employee`
--

INSERT INTO `employee` (`id`, `name`, `surename`, `address`, `postal_code`, `birth_date`, `phone_number`, `email`, `position_id`, `work_location_id`, `create_date`, `update_date`) VALUES
(5, 'nina', 'hagen', 'favoriten', '1000', '2000-08-18', '3578698524', 'nina@gmx.at', 1, 6, '2019-11-09 00:00:00', NULL),
(6, 'thomas', 'müller', 'müllerberg', '15000', '2002-04-08', '1583322004', 'müller@gmx.at', 6, 5, '2019-11-09 00:00:00', NULL),
(7, 'andrea', 'bauer', 'riverside', '9682', '1990-01-10', '67864537', 'bauer@yahoo.com', 3, 4, '2019-11-09 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `postal_code` varchar(15) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `location`
--

INSERT INTO `location` (`id`, `address`, `postal_code`, `phone_number`, `email`, `create_date`, `update_date`) VALUES
(1, 'hernalser hauptstrasse', '1160', '36985214', 'rentacar@gmx.at', '2019-11-09 00:00:00', NULL),
(4, 'time square', '15000', '5951521100', 'newyorkrentacar@yahoo.com', '2019-11-09 06:06:00', NULL),
(5, 'kettenbrückengasse', '1000', '6845698524', 'mashi@google.at', '2019-11-09 00:00:00', NULL),
(6, 'beach', '9682', '023698564', 'beachclub@garb.at', '2019-11-09 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `manager`
--

CREATE TABLE `manager` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `manager`
--

INSERT INTO `manager` (`id`, `employee_id`, `location_id`) VALUES
(1, 5, 6),
(2, 6, 4);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `model`
--

CREATE TABLE `model` (
  `model` varchar(20) NOT NULL,
  `manufacturer` varchar(50) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `model`
--

INSERT INTO `model` (`model`, `manufacturer`, `type`) VALUES
('A3', 'audi', 'citycar'),
('A6', 'audi', 'Limousine'),
('carrera 911', 'porsche', 'sportscar'),
('ram', 'dodge', 'range rover');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `postal_code`
--

CREATE TABLE `postal_code` (
  `postal_code` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `postal_code`
--

INSERT INTO `postal_code` (`postal_code`, `city`) VALUES
('1000', 'tokyo'),
('1160', 'wien'),
('1190', 'wien'),
('15000', 'new york'),
('9682', 'rio de janeiro');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rental`
--

CREATE TABLE `rental` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  `rent_start` date DEFAULT NULL,
  `rent_end` date DEFAULT NULL,
  `cost` int(11) NOT NULL,
  `start_location` int(11) NOT NULL,
  `end_location` int(11) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `rental`
--

INSERT INTO `rental` (`id`, `customer_id`, `car_id`, `rent_start`, `rent_end`, `cost`, `start_location`, `end_location`, `create_date`, `update_date`) VALUES
(1, 1, 3, '2019-11-09', '2019-11-16', 200, 1, 6, '2019-11-09 00:00:00', NULL),
(2, 3, 4, '2019-11-11', '2019-11-30', 1500, 5, 4, '2019-11-09 00:00:00', NULL),
(3, 4, 3, '2019-11-30', '2019-12-31', 5500, 6, 5, '2019-11-09 06:06:00', NULL),
(4, 5, 1, '2019-11-28', '2019-11-30', 50, 4, 1, '2019-11-09 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `´position´`
--

CREATE TABLE `´position´` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `´position´`
--

INSERT INTO `´position´` (`id`, `name`, `type`) VALUES
(1, 'marketing', 'junior'),
(2, 'sales', 'senior'),
(3, 'sales', 'apprentice'),
(4, 'sales', 'junior'),
(5, 'marketing', 'junior'),
(6, 'marketing', 'apprentice');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`id`),
  ADD KEY `model` (`model`);

--
-- Indizes für die Tabelle `car_service`
--
ALTER TABLE `car_service`
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `car_id` (`car_id`);

--
-- Indizes für die Tabelle `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `postal_code` (`postal_code`);

--
-- Indizes für die Tabelle `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `position_id` (`position_id`),
  ADD KEY `work_location_id` (`work_location_id`),
  ADD KEY `postal_code` (`postal_code`);

--
-- Indizes für die Tabelle `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`),
  ADD KEY `postal_code` (`postal_code`);

--
-- Indizes für die Tabelle `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indizes für die Tabelle `model`
--
ALTER TABLE `model`
  ADD PRIMARY KEY (`model`);

--
-- Indizes für die Tabelle `postal_code`
--
ALTER TABLE `postal_code`
  ADD PRIMARY KEY (`postal_code`);

--
-- Indizes für die Tabelle `rental`
--
ALTER TABLE `rental`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `car_id` (`car_id`),
  ADD KEY `start_location` (`start_location`),
  ADD KEY `end_location` (`end_location`);

--
-- Indizes für die Tabelle `´position´`
--
ALTER TABLE `´position´`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `car`
--
ALTER TABLE `car`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT für Tabelle `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT für Tabelle `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `manager`
--
ALTER TABLE `manager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `rental`
--
ALTER TABLE `rental`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT für Tabelle `´position´`
--
ALTER TABLE `´position´`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `car`
--
ALTER TABLE `car`
  ADD CONSTRAINT `car_ibfk_1` FOREIGN KEY (`model`) REFERENCES `model` (`model`);

--
-- Constraints der Tabelle `car_service`
--
ALTER TABLE `car_service`
  ADD CONSTRAINT `car_service_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`),
  ADD CONSTRAINT `car_service_ibfk_2` FOREIGN KEY (`car_id`) REFERENCES `car` (`id`);

--
-- Constraints der Tabelle `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`postal_code`) REFERENCES `postal_code` (`postal_code`);

--
-- Constraints der Tabelle `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`position_id`) REFERENCES `´position´` (`id`),
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`work_location_id`) REFERENCES `location` (`id`),
  ADD CONSTRAINT `employee_ibfk_3` FOREIGN KEY (`postal_code`) REFERENCES `postal_code` (`postal_code`);

--
-- Constraints der Tabelle `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `location_ibfk_1` FOREIGN KEY (`postal_code`) REFERENCES `postal_code` (`postal_code`);

--
-- Constraints der Tabelle `manager`
--
ALTER TABLE `manager`
  ADD CONSTRAINT `manager_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`),
  ADD CONSTRAINT `manager_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`);

--
-- Constraints der Tabelle `rental`
--
ALTER TABLE `rental`
  ADD CONSTRAINT `rental_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `rental_ibfk_2` FOREIGN KEY (`car_id`) REFERENCES `car` (`id`),
  ADD CONSTRAINT `rental_ibfk_3` FOREIGN KEY (`start_location`) REFERENCES `location` (`id`),
  ADD CONSTRAINT `rental_ibfk_4` FOREIGN KEY (`end_location`) REFERENCES `location` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
