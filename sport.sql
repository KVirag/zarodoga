-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Jan 25. 11:52
-- Kiszolgáló verziója: 10.4.28-MariaDB
-- PHP verzió: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `sport`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'szobabicikli'),
(2, 'vibrációs tréner');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `prodimages`
--

CREATE TABLE `prodimages` (
  `id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `image` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `prodimages`
--

INSERT INTO `prodimages` (`id`, `prod_id`, `image`) VALUES
(1, 1, 'https://ibb.co/NSkzwSd'),
(2, 1, 'https://ibb.co/PTfgcc0'),
(3, 1, 'https://ibb.co/cxckzvF'),
(4, 1, 'https://ibb.co/9cty60p'),
(5, 1, 'https://ibb.co/FDJRKjD');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `products`
--

CREATE TABLE `products` (
  `Id` int(11) NOT NULL,
  `ctg_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `state` varchar(20) NOT NULL,
  `other` varchar(200) DEFAULT NULL,
  `price` int(30) NOT NULL,
  `descr` varchar(5000) NOT NULL,
  `timestamp` date NOT NULL DEFAULT current_timestamp(),
  `adress` varchar(200) NOT NULL,
  `mainImg` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `products`
--

INSERT INTO `products` (`Id`, `ctg_id`, `name`, `state`, `other`, `price`, `descr`, `timestamp`, `adress`, `mainImg`) VALUES
(1, 1, 'Sport mágnesfékes szobabicikli szobakerékpár jó ál', 'alig használt', NULL, 28900, 'Sport mágnesfékes szobabicikli szobakerékpár jó állapotban eladó. Edzés után összecsukható. A kijelző megtett utat, elégetett kalóriát és sebességet mutat.', '2024-01-22', 'Bács-Kiskun megye Kecskemét', 'https://ibb.co/6bMhcDY');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `prodimages`
--
ALTER TABLE `prodimages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prod_id` (`prod_id`);

--
-- A tábla indexei `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `ctg_id` (`ctg_id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT a táblához `prodimages`
--
ALTER TABLE `prodimages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT a táblához `products`
--
ALTER TABLE `products`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `prodimages`
--
ALTER TABLE `prodimages`
  ADD CONSTRAINT `prodimages_ibfk_1` FOREIGN KEY (`prod_id`) REFERENCES `products` (`Id`);

--
-- Megkötések a táblához `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`ctg_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
