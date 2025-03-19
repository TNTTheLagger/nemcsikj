-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Nov 06. 10:49
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `cig`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `alkalmazott`
--

CREATE TABLE `alkalmazott` (
  `akod` varchar(4) NOT NULL,
  `anev` varchar(20) DEFAULT NULL,
  `beosztas` varchar(20) DEFAULT NULL CHECK (ucase(`beosztas`) = `beosztas`),
  `belepes` date DEFAULT curdate(),
  `fizetes` decimal(9,2) NOT NULL CHECK (`fizetes` > 0),
  `premium` decimal(9,2) DEFAULT NULL,
  `tkod` varchar(2) NOT NULL,
  `fonok` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `alkalmazott`
--

INSERT INTO `alkalmazott` (`akod`, `anev`, `beosztas`, `belepes`, `fizetes`, `premium`, `tkod`, `fonok`) VALUES
('1234', 'KOVACS JOZSEF', 'ELADO', '1986-12-10', 52000.00, 12000.00, '20', '1250'),
('1235', 'MOLNAR PETER', 'SZERELO', '1971-02-08', 72000.00, 3000.00, '30', '1238'),
('1236', 'CSIKOS BELA', 'ELADO', '1985-03-12', 53000.00, 15000.00, '30', '1238'),
('1237', 'TOTH ARPAD', 'VIZSGABIZTOS', '1980-04-22', 80000.00, 20000.00, '30', '1238'),
('1238', 'NEMETH ZSOLT', 'TELEPHELYVEZETO', '1983-11-28', 116000.00, 14000.00, '30', '1239'),
('1239', 'SZABO JOZSEF', 'IGAZGATO', '1977-05-01', 216000.00, 75000.00, '10', NULL),
('1240', 'BALOGH IMRE', 'SZERELO', '1983-06-09', 88000.00, 5000.00, '50', '1252'),
('1244', 'KIRALY JANOS', 'VIZSGABIZTOS', '1980-08-04', 84000.00, 8000.00, '40', '1251'),
('1245', 'HERCEG EVA', 'ELADO', '1984-11-12', 44000.00, 6000.00, '40', '1251'),
('1246', 'BOGNAR JUDIT', 'ELADO', '1979-10-08', 52000.00, 6000.00, '50', '1252'),
('1247', 'HALASZ PETER', 'SZERELO', '1981-05-23', 84000.00, 7000.00, '60', '1248'),
('1248', 'HORVAT PAL', 'TELEPHELYVEZETO', '1981-12-09', 100000.00, 12000.00, '60', '1239'),
('1249', 'KISS ANNA', 'ELADO', '1971-12-23', 50000.00, 9500.00, '40', '1251'),
('1250', 'NAGY ZOLTAN', 'TELEPHELYVEZETO', '1975-06-01', 142000.00, 80000.00, '20', '1239'),
('1251', 'PAPP EDE', 'TELEPHELYVEZETO', '1976-06-01', 150000.00, 40000.00, '40', '1239'),
('1252', 'KELEMEN JOZSEF', 'TELEPHELYVEZETO', '1976-12-01', 130000.00, 118000.00, '50', '1239');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `telephely`
--

CREATE TABLE `telephely` (
  `tkod` varchar(2) NOT NULL,
  `tnev` varchar(20) DEFAULT NULL,
  `varos` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `telephely`
--

INSERT INTO `telephely` (`tkod`, `tnev`, `varos`) VALUES
('10', 'IRODAK', 'BUDAPEST'),
('20', 'UJ AUTO', 'BUDAPEST'),
('30', 'UJ AUTO', 'GYOR'),
('40', 'UJ AUTO', 'DEBRECEN'),
('50', 'HASZNALT AUTO', 'BUDAPEST'),
('60', 'HASZNALT AUTO', 'SZEGED'),
('70', 'DEVIZAS AUTO', 'BUDAPEST');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `alkalmazott`
--
ALTER TABLE `alkalmazott`
  ADD PRIMARY KEY (`akod`),
  ADD KEY `tkod` (`tkod`),
  ADD KEY `fonok` (`fonok`);

--
-- A tábla indexei `telephely`
--
ALTER TABLE `telephely`
  ADD PRIMARY KEY (`tkod`);

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `alkalmazott`
--
ALTER TABLE `alkalmazott`
  ADD CONSTRAINT `alkalmazott_ibfk_1` FOREIGN KEY (`tkod`) REFERENCES `telephely` (`tkod`),
  ADD CONSTRAINT `alkalmazott_ibfk_2` FOREIGN KEY (`fonok`) REFERENCES `alkalmazott` (`akod`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
