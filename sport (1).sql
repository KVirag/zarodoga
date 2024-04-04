-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Ápr 04. 10:03
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
(2, 'vibrációs tréner'),
(3, 'Felnőtt kerékpár');

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
(1, 1, 'https://i.ibb.co/2P920cq/c-m-k-p-1.jpg'),
(2, 1, 'https://i.ibb.co/TLn5zLx/Sport-magnesfekes-szobabicikli-szobakerekpar-jo-allapotban-elado-Alli-790182413266165.jpg'),
(3, 1, 'https://i.ibb.co/tZWDqqF/Sport-magnesfekes-szobabicikli-szobakerekpar-jo-allapotban-elado-Alli-797032413266087.jpg'),
(4, 1, 'https://i.ibb.co/6NRr6ZP/Sport-magnesfekes-szobabicikli-szobakerekpar-jo-allapotban-elado-Alli-803052413266171.jpg'),
(5, 1, 'https://i.ibb.co/pby4cT1/Sport-magnesfekes-szobabicikli-szobakerekpar-jo-allapotban-elado-Alli-796892413266261.jpg'),
(6, 4, 'https://i.ibb.co/7zsscJd/c-m-k-p-4.jpg'),
(7, 4, 'https://i.ibb.co/XD9Ptng/image.png'),
(8, 4, 'https://i.ibb.co/NyxGHG4/image.png'),
(9, 4, 'https://i.ibb.co/3NtQS61/image.png'),
(10, 3, 'https://i.ibb.co/tqvhpbf/c-m-k-p-3.jpg'),
(11, 3, 'https://i.ibb.co/J26Wycn/Kettler-magnesfekes-szobabicikli-szobakerekpar-jo-allapotban-elado-199942416600179.jpg'),
(12, 3, 'https://i.ibb.co/8jhp690/Kettler-magnesfekes-szobabicikli-szobakerekpar-jo-allapotban-elado-196572416600079.jpg'),
(13, 3, 'https://i.ibb.co/mSXpbQ8/Kettler-magnesfekes-szobabicikli-szobakerekpar-jo-allapotban-elado-192592416599993.jpg'),
(14, 3, 'https://i.ibb.co/dK3rXRV/Kettler-magnesfekes-szobabicikli-szobakerekpar-jo-allapotban-elado-206192416599995.jpg'),
(15, 3, 'https://i.ibb.co/6FmqcN4/Kettler-magnesfekes-szobabicikli-szobakerekpar-jo-allapotban-elado-207082416599994.jpg'),
(16, 3, 'https://i.ibb.co/CKqg4fK/Kettler-magnesfekes-szobabicikli-szobakerekpar-jo-allapotban-elado-220472416600083.jpg'),
(17, 3, 'https://i.ibb.co/YQjrkr4/Kettler-magnesfekes-szobabicikli-szobakerekpar-jo-allapotban-elado-226862416600181.jpg'),
(18, 2, 'https://i.ibb.co/ZKcX7sF/C-m-k-p-2.jpg'),
(19, 2, 'https://i.ibb.co/nMryNT7/Crane-magnesfekes-szobabicikli-szobakerekpar-jo-allapotban-elado-389682413262594.jpg'),
(20, 2, 'https://i.ibb.co/HgMh4M9/Crane-magnesfekes-szobabicikli-szobakerekpar-jo-allapotban-elado-389542413262689.jpg'),
(21, 2, 'https://i.ibb.co/FwcrDX7/Crane-magnesfekes-szobabicikli-szobakerekpar-jo-allapotban-elado-403732413262784.jpg'),
(22, 2, 'https://i.ibb.co/Bf42QDF/Crane-magnesfekes-szobabicikli-szobakerekpar-jo-allapotban-elado-415132413262692.jpg'),
(23, 2, 'https://i.ibb.co/HnRFp7m/Crane-magnesfekes-szobabicikli-szobakerekpar-jo-allapotban-elado-410842413262786.jpg'),
(24, 2, 'https://i.ibb.co/ckKCqMd/Crane-magnesfekes-szobabicikli-szobakerekpar-jo-allapotban-elado-411382413262694.jpg'),
(25, 1, 'https://i.ibb.co/LZ6V82Z/Sport-magnesfekes-szobabicikli-szobakerekpar-jo-allapotban-elado-Alli-810112413266268.jpg');

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
(1, 1, 'Sport mágnesfékes szobabicikli szobakerékpár jó ál', 'alig használt', NULL, 28900, 'Sport mágnesfékes szobabicikli szobakerékpár jó állapotban eladó. Edzés után összecsukható. A kijelző megtett utat, elégetett kalóriát és sebességet mutat.', '2024-01-22', 'Bács-Kiskun megye Kecskemét', 'https://i.ibb.co/2P920cq/c-m-k-p-1.jpg'),
(2, 1, 'Crane mágnesfékes szobabicikli szobakerékpár jó ál', 'alig használt', 'Fitneszgép', 37900, 'Crane mágnesfékes szobabicikli szobakerékpár jó állapotban eladó. Állítható az ellenállása 8 fokozatban. 150 kg-ig terhelhető. kijelző sebességet, megtett utat, elégetett kalóriát és pulzust mutat. Állítható az ülés távolsága is. Nem postázható. Személyautóban szállítható.', '2024-01-29', 'Kecskemét', 'https://i.ibb.co/WFB5j9M/C-m-k-p-2.jpg'),
(3, 1, 'Kettler mágnesfékes szobabicikli szobakerékpár jó ', 'használt', 'Kettler', 42000, 'Kettler mágnesfékes szobabicikli szobakerékpár jó állapotban eladó. Állítható az ellenállása 8 fokozatban.130 kg-ig terhelhető.A kijelző sebességet, megtett utat, elégetett kalóriát és pulzust mutat.Állítható az ülés távolsága is. Nem postázható. Személyautóban szállítható.', '2024-01-29', 'Kecskemét', 'https://i.ibb.co/bsC35rh/c-m-k-p-3.jpg'),
(4, 3, 'Muddyfox colossus 500 férfi 29\"-os hidraulikus tár', 'alig használt', 'L', 142000, 'Muddyfox colossus 500 férfi 29\"-os hidraulikus tárcsafékes kerékpár bicikli eladó. Aluvázas 2023-as modell. Erős felnikkel, pontos váltóval, kényelmes üléssel. Lockolható magnézium teleszkóppal. 29\"-os a kereke. Műszakilag újszerű állapotban van . A váltója egy 3x9 sebességes váltó . Erős, masszív vázú könnyű kerékpár. 175-185 cm magas embernek ajánlom.', '2024-01-29', 'Kecskemét', 'https://i.ibb.co/N3cch6d/c-m-k-p-4.jpg');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT a táblához `prodimages`
--
ALTER TABLE `prodimages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT a táblához `products`
--
ALTER TABLE `products`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
