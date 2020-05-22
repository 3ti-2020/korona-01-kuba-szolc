-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Czas generowania: 22 Maj 2020, 14:34
-- Wersja serwera: 10.4.11-MariaDB
-- Wersja PHP: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `kubaszolc`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `parametry`
--

CREATE TABLE `parametry` (
  `id` int(11) NOT NULL,
  `model` text NOT NULL,
  `ekran` float NOT NULL,
  `procesor` text NOT NULL,
  `procesormodel` text NOT NULL,
  `ram` int(11) NOT NULL,
  `rom` int(11) NOT NULL,
  `grafika` text NOT NULL,
  `sysop` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `parametry`
--

INSERT INTO `parametry` (`id`, `model`, `ekran`, `procesor`, `procesormodel`, `ram`, `rom`, `grafika`, `sysop`) VALUES
(1, 'Galaxy S20', 6.2, 'Exynos', '990', 8, 128, 'Mali-G77', 'Android'),
(2, 'Mi 9T', 6.4, 'Snapdragon', '730', 6, 128, 'Adreno 618', 'Android'),
(3, 'Redmi Note 8T', 6.3, 'Snapdragon', '665', 4, 64, 'Adreno 610', 'Android'),
(4, 'Galaxy A40', 5.9, 'Exynos', '7904', 4, 64, 'Mali-G71', 'Android'),
(5, 'P40 Lite', 6.4, 'Kirin', '810', 6, 128, 'Mali-G52', 'Android'),
(6, '8 Pro', 6.8, 'Snapdragon', '865', 12, 256, 'Adreno 650', 'Android'),
(7, 'Galaxy Note 10 Lite', 6.7, 'Exynos', '9810', 6, 128, 'Mali-G72', 'Android'),
(8, '7T', 6.5, 'Snapdragon', '855', 8, 128, 'Adreno 640', 'Android'),
(9, 'Redmi 7A', 5.5, 'Snapdragon', '439', 2, 16, 'Adreno 505', 'Android'),
(10, 'SE', 4.7, 'Bionic', 'A13', 3, 64, 'Bionic', 'iOS'),
(11, 'XS', 5.8, 'Bionic', 'A12', 4, 64, 'Bionic', 'iOS'),
(12, 'MateBook D15', 15.6, 'AMD', 'Ryzen 5', 8, 256, 'Vega 8', 'Windows'),
(13, 'IdeaPad', 15.6, 'AMD', 'A-6', 8, 256, 'Radeon R4', 'Windows'),
(14, 'Swift 3', 14, 'Intel', 'Core i5', 8, 512, 'Intel UHD', 'Windows'),
(15, 'Inspiron', 15.6, 'Intel', 'Core i3', 8, 256, 'Intel UHD', 'Windows'),
(16, 'Vivobook', 15.6, 'Intel', 'Core i5', 8, 256, 'Intel UHD 620', 'Windows'),
(17, 'ZenBook', 15.6, 'Intel', 'Core i7', 16, 512, 'GTX 1050', 'Windows'),
(18, 'MacBook', 15.6, 'Intel', 'Core i5', 8, 128, 'Intel HD 6000', 'macOS'),
(19, 'TUF', 15.6, 'AMD', 'Ryzen 5', 16, 512, 'GTX 1650', 'Windows'),
(20, 'ROG', 15.6, 'Intel', 'i7', 32, 512, 'GTX 1660', 'Windows'),
(21, 'Mac Pro', 0, 'Intel', 'Xeon', 32, 256, 'Radeon Pro', 'macOS'),
(22, 'Vostro', 0, 'Intel', 'i5', 8, 256, 'Intel UHD 630', 'Windows'),
(23, 'Desk', 0, 'Intel', 'i3', 8, 1000, 'Radeon 520', 'brak'),
(24, 'Pavillion', 0, 'Intel', 'i5', 16, 512, 'GTX 1600', 'Windows'),
(25, 'IdeaCentre', 0, 'Intel', 'i5', 16, 256, 'Intel UDH 630', 'Windows');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `produkty`
--

CREATE TABLE `produkty` (
  `id` int(11) NOT NULL,
  `model` text NOT NULL,
  `marka` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `kategoria` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `cena` int(11) NOT NULL,
  `staracena` int(11) NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `produkty`
--

INSERT INTO `produkty` (`id`, `model`, `marka`, `kategoria`, `cena`, `staracena`, `img`) VALUES
(1, 'Galaxy S20', 'Samsung', 'Smartfony', 4000, 0, 'img/s20.jpg'),
(3, 'Mi 9T', 'Xiaomi', 'Smartfony', 1500, 0, 'img/mi9t.jpg'),
(4, 'SE', 'iPhone', 'Smartfony', 2200, 0, 'img/se.jpg'),
(5, 'Redmi Note 8T', 'Xiaomi', 'Smartfony', 800, 0, 'img/n8t.jpg'),
(6, 'XS', 'iPhone', 'Smartfony', 3100, 0, 'img/xs.jpg'),
(7, 'Galaxy A40', 'Samsung', 'Smartfony', 1000, 0, 'img/a40.jpg'),
(8, 'P40 Lite', 'Huawei', 'Smartfony', 1200, 1500, 'img/p40.jpg'),
(9, '8 Pro', 'OnePlus', 'Smartfony', 4900, 0, 'img/8pro.jpg'),
(10, 'Galaxy Note 10 Lite', 'Samsung', 'Smartfony', 2700, 3000, 'img/n10l.jpg'),
(11, '7T', 'OnePlus', 'Smartfony', 2500, 0, 'img/7t.jpg'),
(12, 'Redmi 7A', 'Xiaomi', 'Smartfony', 350, 0, 'img/r7a.jpg'),
(13, 'MateBook D15', 'Huawei', 'laptopy', 2600, 0, 'img/mbd15.jpg'),
(14, 'IdeaPad', 'Lenovo', 'laptopy', 1900, 2100, 'img/ip.jpg'),
(15, 'Swift 3', 'Acer', 'laptopy', 3000, 0, 'img/swift3.jpg'),
(16, 'Inspiron', 'Dell', 'laptopy', 2500, 2700, 'img/insp.jpg'),
(17, 'VivoBook', 'Asus', 'laptopy', 2300, 0, 'img/asus.jpg'),
(18, 'ZenBook', 'Asus', 'laptopy', 5200, 0, 'img/zen.jpg'),
(19, 'MacBook', 'Apple', 'laptopy', 3900, 4300, 'img/macbook.jpg'),
(20, 'TUF', 'Asus', 'laptopy', 3400, 0, 'img/tuf.jpg'),
(21, 'ROG', 'Asus', 'laptopy', 5800, 0, 'img/rog.jpg'),
(22, 'Vostro', 'Dell', 'desktopy', 2500, 3000, 'img/vostro.jpg'),
(23, 'Desk', 'HP', 'desktopy', 1800, 0, 'img/desk.jpg'),
(24, 'Pavillion', 'HP', 'desktopy', 4300, 4700, 'img/pavillion.jpg'),
(25, 'IdeaCentre', 'Lenovo', 'desktopy', 2600, 0, 'img/ideacentre.jpg'),
(26, 'Mac Pro', 'Apple', 'desktopy', 28000, 0, 'img/macpro.jpg');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `parametry`
--
ALTER TABLE `parametry`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `produkty`
--
ALTER TABLE `produkty`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `parametry`
--
ALTER TABLE `parametry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT dla tabeli `produkty`
--
ALTER TABLE `produkty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
