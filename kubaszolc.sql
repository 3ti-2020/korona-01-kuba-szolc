-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Czas generowania: 19 Maj 2020, 15:11
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
-- Struktura tabeli dla tabeli `Parametry`
--

CREATE TABLE `Parametry` (
  `model` text NOT NULL,
  `ekran` float NOT NULL,
  `procesor` text NOT NULL,
  `RAM` int(11) NOT NULL,
  `ROM` int(11) NOT NULL,
  `system` text NOT NULL,
  `grafika` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `Parametry`
--

INSERT INTO `Parametry` (`model`, `ekran`, `procesor`, `RAM`, `ROM`, `system`, `grafika`) VALUES
('Galaxy S20', 6.2, 'Exynos 990', 8, 128, 'Android', 'Mali-G77'),
('Mi 9T', 6.4, 'Snapdragon 730', 6, 128, 'Android', 'Adreno 618'),
('SE', 4.7, 'A13 Bionic', 3, 64, 'iOS', 'A13 Bionic'),
('Redmi Note 8T', 6.3, 'Snapdragon 665', 4, 64, 'Android', 'Adreno 610'),
('XS', 5.8, 'A12 Bionic', 4, 64, 'iOS', 'A12 Bionic'),
('Galaxy A40', 5.9, 'Exynos 7904', 4, 64, 'Android', 'Mali-G71'),
('P40 Lite', 6.4, 'Kirin 810', 6, 128, 'Android', 'Mali-G52'),
('8 Pro', 6.8, 'Snapdragon 865', 12, 256, 'Android', 'Adreno 650'),
('Galaxy Note 10 Lite', 6.7, 'Exynos 9810', 6, 128, 'Android', 'Mali-G72'),
('7T', 6.5, 'Snapdragon 855', 8, 128, 'Android', 'Adreno 640'),
('Redmi 7A', 5.5, 'Snapdragon 439', 2, 16, 'Android', 'Adreno 505');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `produkty`
--

CREATE TABLE `produkty` (
  `id` int(11) NOT NULL,
  `model` text NOT NULL,
  `marka` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `kategoria` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `cena` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `produkty`
--

INSERT INTO `produkty` (`id`, `model`, `marka`, `kategoria`, `cena`) VALUES
(1, 'Galaxy S20', 'Samsung', 'Smartfony', 4000),
(3, 'Mi 9T', 'Xiaomi', 'Smartfony', 1500),
(4, 'SE', 'iPhone', 'Smartfony', 2200),
(5, 'Redmi Note 8T', 'Xiaomi', 'Smartfony', 800),
(6, 'XS', 'iPhone', 'Smartfony', 3100),
(7, 'Galaxy A40', 'Samsung', 'Smartfony', 1000),
(8, 'P40 Lite', 'Huawei', 'Smartfony', 1200),
(9, '8 Pro', 'OnePlus', 'Smartfony', 4900),
(10, 'Galaxy Note 10 Lite', 'Samsung', 'Smartfony', 2700),
(11, '7T', 'OnePlus', 'Smartfony', 2500),
(12, 'Redmi 7A', 'Xiaomi', 'Smartfony', 350);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `produkty`
--
ALTER TABLE `produkty`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `produkty`
--
ALTER TABLE `produkty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
