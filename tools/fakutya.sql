-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2023 at 02:55 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fakutya`
--

-- --------------------------------------------------------

--
-- Table structure for table `allat`
--

CREATE TABLE `allat` (
  `ALLAT_ID` int(11) NOT NULL,
  `NEV` varchar(20) COLLATE utf8_hungarian_ci NOT NULL,
  `ADDED_AT` datetime NOT NULL,
  `IS_QUARANTINED` tinyint(1) NOT NULL DEFAULT 1 COMMENT 'Alaphelyzetben igaz',
  `IS_BEFOGADHATO` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Alaphelyzetben hamis',
  `IS_IVARTALAN` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Alaphelyzetben hamis',
  `IVAR` varchar(5) COLLATE utf8_hungarian_ci NOT NULL COMMENT 'szuka vagy kan',
  `KOR` int(2) NOT NULL,
  `SULY` int(3) NOT NULL,
  `FOG_ALLAPOT` int(11) NOT NULL,
  `TIPUS` varchar(256) COLLATE utf8_hungarian_ci NOT NULL,
  `img` varchar(256) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `ALLAPOT` varchar(500) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `TULAJDONSAGOK` varchar(500) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `COMMENT` varchar(2000) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `EMAIL` varchar(256) COLLATE utf8_hungarian_ci NOT NULL,
  `TELEFON` varchar(15) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `allat`
--

INSERT INTO `allat` (`ALLAT_ID`, `NEV`, `ADDED_AT`, `IS_QUARANTINED`, `IS_BEFOGADHATO`, `IS_IVARTALAN`, `IVAR`, `KOR`, `SULY`, `FOG_ALLAPOT`, `TIPUS`, `img`, `ALLAPOT`, `TULAJDONSAGOK`, `COMMENT`, `EMAIL`, `TELEFON`) VALUES
(1, 'Gringó', '2022-04-04 00:00:00', 0, 0, 0, 'szuka', 8, 22, 4, 'Catahoulai leopárdkutya', 'http://localhost/kutyakepek/386.jpg', '', '', '', 'placeholder', '+36302344708'),
(2, 'Lilla', '2022-08-25 00:00:00', 1, 0, 1, 'kan', 13, 10, 4, 'Nagy angol-francia kopó', 'http://localhost/kutyakepek/543.jpg', '', '', '', 'placeholder', '+36508194362'),
(3, 'Frida', '2023-09-08 00:00:00', 0, 1, 1, 'kan', 4, 17, 4, 'Longdog', 'http://localhost/kutyakepek/190.jpg', '', '', '', 'placeholder', '+36501095472'),
(4, 'Behemót', '2021-09-26 00:00:00', 1, 1, 1, 'szuka', 17, 10, 4, 'Berni kopó', 'http://localhost/kutyakepek/434.jpg', '', '', '', 'placeholder', '+36607602269'),
(5, 'Behemót', '2021-03-22 00:00:00', 0, 0, 0, 'kan', 10, 14, 4, 'Norvég buhund', 'http://localhost/kutyakepek/460.jpg', '', '', '', 'placeholder', '+36409572072'),
(6, 'Dolfi', '2021-09-03 00:00:00', 0, 0, 0, 'szuka', 17, 24, 1, 'Belga masztiff', 'http://localhost/kutyakepek/220.jpg', '', '', '', 'placeholder', '+3630979918'),
(7, 'Zola', '2021-09-01 00:00:00', 0, 1, 1, 'szuka', 12, 3, 1, 'Hosszúszőrű skót juhászkutya', 'http://localhost/kutyakepek/198.jpg', '', '', '', 'placeholder', '+36504705223'),
(8, 'Suhanc', '2022-08-27 00:00:00', 0, 0, 1, 'kan', 20, 18, 3, 'Siba inu', 'http://localhost/kutyakepek/483.jpg', '', '', '', 'placeholder', '+364041218'),
(9, 'Vadóc', '2022-07-04 00:00:00', 1, 1, 1, 'szuka', 14, 13, 1, 'Ariége-i vizsla', 'http://localhost/kutyakepek/534.jpg', '', '', '', 'placeholder', '+36406213173'),
(10, 'Ollé', '2021-03-15 00:00:00', 0, 1, 0, 'kan', 4, 22, 1, 'Berni kopó', 'http://localhost/kutyakepek/52.jpg', '', '', '', 'placeholder', '+36302242516'),
(11, 'Sakál', '2021-01-09 00:00:00', 0, 1, 1, 'kan', 17, 26, 3, 'Afrikai oroszlánkutya', 'http://localhost/kutyakepek/536.jpg', '', '', '', 'placeholder', '+36509968959'),
(12, 'Luigi', '2020-09-27 00:00:00', 0, 1, 0, 'szuka', 27, 28, 2, 'Angol rókakopó', 'http://localhost/kutyakepek/172.jpg', '', '', '', 'placeholder', '+3630832416'),
(13, 'Kaarjack', '2021-02-12 00:00:00', 0, 0, 1, 'szuka', 9, 2, 4, 'Karéliai medvekutya', 'http://localhost/kutyakepek/107.jpg', '', '', '', 'placeholder', '+36405049498'),
(14, 'Adonisz', '2022-02-19 00:00:00', 0, 1, 1, 'kan', 19, 24, 1, 'Cirneco dell’Etna', 'http://localhost/kutyakepek/133.jpg', '', '', '', 'placeholder', '+36306014551'),
(15, 'Lolka', '2023-05-17 00:00:00', 1, 0, 1, 'kan', 17, 20, 2, 'Német juhászkutya', 'http://localhost/kutyakepek/77.jpg', '', '', '', 'placeholder', '+36403975373'),
(16, 'Lehár', '2021-07-18 00:00:00', 1, 1, 1, 'kan', 16, 19, 1, 'Olasz kopó', 'http://localhost/kutyakepek/0.jpg', '', '', '', 'placeholder', '+36404346808'),
(17, 'Boomer', '2020-01-12 00:00:00', 1, 0, 0, 'szuka', 8, 26, 1, 'Brüsszeli griffon', 'http://localhost/kutyakepek/306.jpg', '', '', '', 'placeholder', '+365096124'),
(18, 'Gopher', '2022-07-28 00:00:00', 1, 0, 1, 'szuka', 9, 24, 1, 'Ausztrál csonkafarkú pásztorkutya', 'http://localhost/kutyakepek/153.jpg', '', '', '', 'placeholder', '+36301499568'),
(19, 'Oblix', '2022-02-20 00:00:00', 0, 1, 1, 'kan', 1, 25, 3, 'Ausztrál csonkafarkú pásztorkutya', 'http://localhost/kutyakepek/155.jpg', '', '', '', 'placeholder', '+36504713838'),
(20, 'Lassie', '2020-12-13 00:00:00', 0, 0, 0, 'szuka', 28, 15, 2, 'Saarloosi farkaskutya', 'http://localhost/kutyakepek/403.jpg', '', '', '', 'placeholder', '+36309926983'),
(21, 'Sakál', '2021-02-08 00:00:00', 0, 1, 0, 'szuka', 1, 16, 3, 'Spanyol masztiff', 'http://localhost/kutyakepek/138.jpg', '', '', '', 'placeholder', '+36404771856'),
(22, 'Zola', '2022-09-08 00:00:00', 0, 1, 0, 'kan', 15, 4, 1, 'Tervueren (Belga juhászkutya)', 'http://localhost/kutyakepek/170.jpg', '', '', '', 'placeholder', '+36307779212'),
(23, 'Pandúr', '2022-10-24 00:00:00', 0, 1, 0, 'szuka', 28, 6, 3, 'Manchester terrier', 'http://localhost/kutyakepek/470.jpg', '', '', '', 'placeholder', '+36406465510'),
(24, 'Bugatti', '2021-11-21 00:00:00', 0, 1, 1, 'szuka', 17, 16, 3, 'Bukovinai pásztorkutya', 'http://localhost/kutyakepek/376.jpg', '', '', '', 'placeholder', '+36302518687'),
(25, 'Rómeó', '2021-05-27 00:00:00', 1, 1, 0, 'szuka', 4, 24, 1, 'Közép uszkár', 'http://localhost/kutyakepek/521.jpg', '', '', '', 'placeholder', '+36509213128'),
(26, 'Szultán', '2020-06-20 00:00:00', 1, 0, 0, 'szuka', 27, 2, 2, 'Thai ridgeback', 'http://localhost/kutyakepek/480.jpg', '', '', '', 'placeholder', '+36604982033'),
(27, 'Vanília', '2023-08-14 00:00:00', 1, 0, 0, 'szuka', 14, 22, 2, 'Ír szetter', 'http://localhost/kutyakepek/19.jpg', '', '', '', 'placeholder', '+36402179419'),
(28, 'Jonathan', '2020-11-01 00:00:00', 0, 1, 1, 'szuka', 23, 1, 3, 'Thai ridgeback', 'http://localhost/kutyakepek/49.jpg', '', '', '', 'placeholder', '+36606122641'),
(29, 'Axel', '2020-08-18 00:00:00', 1, 0, 0, 'szuka', 2, 16, 2, 'Rajapalayam', 'http://localhost/kutyakepek/537.jpg', '', '', '', 'placeholder', '+36603956879'),
(30, 'Gróf', '2021-10-04 00:00:00', 0, 1, 1, 'szuka', 22, 26, 4, 'Francia kopó', 'http://localhost/kutyakepek/366.jpg', '', '', '', 'placeholder', '+36307961653'),
(31, 'Lasszó', '2022-01-24 00:00:00', 0, 0, 1, 'szuka', 29, 21, 3, 'Field spániel', 'http://localhost/kutyakepek/455.jpg', '', '', '', 'placeholder', '+36603827424'),
(32, 'Lassie', '2023-12-12 00:00:00', 1, 1, 0, 'szuka', 14, 19, 4, 'Nagy münsterlandi vizsla', 'http://localhost/kutyakepek/29.jpg', '', '', '', 'placeholder', '+36605171820'),
(33, 'Ládikó', '2022-07-15 00:00:00', 1, 1, 0, 'szuka', 15, 25, 1, 'Finn spicc', 'http://localhost/kutyakepek/346.jpg', '', '', '', 'placeholder', '+3650214395'),
(34, 'Kenny', '2022-12-15 00:00:00', 1, 0, 0, 'szuka', 9, 24, 2, 'Montenegrói hegyikopó', 'http://localhost/kutyakepek/509.jpg', '', '', '', 'placeholder', '+36606463699'),
(35, 'Ballu', '2021-02-01 00:00:00', 1, 0, 0, 'kan', 12, 2, 4, 'Estrelai hegyikutya', 'http://localhost/kutyakepek/414.jpg', '', '', '', 'placeholder', '+36305962634'),
(36, 'Csülök', '2020-08-06 00:00:00', 0, 0, 1, 'kan', 5, 14, 2, 'Eurázsiai', 'http://localhost/kutyakepek/501.jpg', '', '', '', 'placeholder', '+36602029672'),
(37, 'Pongó', '2020-12-05 00:00:00', 0, 0, 0, 'kan', 2, 26, 4, 'Bretagne-i cserszínű basset', 'http://localhost/kutyakepek/33.jpg', '', '', '', 'placeholder', '+36605963671'),
(38, 'Iván', '2021-11-07 00:00:00', 1, 1, 0, 'szuka', 8, 27, 2, 'Kis angol-francia rókakopó', 'http://localhost/kutyakepek/40.jpg', '', '', '', 'placeholder', '+36501168933'),
(39, 'Gringó', '2021-05-17 00:00:00', 0, 1, 1, 'szuka', 1, 24, 1, 'Mexikói meztelen kutya', 'http://localhost/kutyakepek/87.jpg', '', '', '', 'placeholder', '+3640757140'),
(40, 'Jade', '2022-11-26 00:00:00', 0, 1, 0, 'kan', 8, 28, 4, 'Soft coated wheaten terrier', 'http://localhost/kutyakepek/473.jpg', '', '', '', 'placeholder', '+36407275574'),
(41, 'Viti', '2023-04-20 00:00:00', 1, 1, 1, 'kan', 3, 5, 1, 'King Shepherd', 'http://localhost/kutyakepek/410.jpg', '', '', '', 'placeholder', '+36401317671'),
(42, 'Nudli', '2022-08-15 00:00:00', 0, 0, 1, 'kan', 27, 22, 1, 'Ausztrál terrier', 'http://localhost/kutyakepek/511.jpg', '', '', '', 'placeholder', '+36509894923'),
(43, 'Kefir', '2022-01-04 00:00:00', 0, 1, 1, 'kan', 6, 9, 3, 'Angol pointer', 'http://localhost/kutyakepek/212.jpg', '', '', '', 'placeholder', '+36402373643'),
(44, 'Cherie', '2022-01-19 00:00:00', 1, 0, 0, 'szuka', 28, 26, 3, 'Ír terrier', 'http://localhost/kutyakepek/434.jpg', '', '', '', 'placeholder', '+36406855648'),
(45, 'Melák', '2021-05-23 00:00:00', 1, 0, 0, 'szuka', 17, 30, 4, 'Ausztrál pásztorkutya', 'http://localhost/kutyakepek/450.jpg', '', '', '', 'placeholder', '+36607684768'),
(46, 'Igric', '2023-03-05 00:00:00', 1, 1, 1, 'szuka', 29, 4, 1, 'Tacskó', 'http://localhost/kutyakepek/145.jpg', '', '', '', 'placeholder', '+36308536621'),
(47, 'Nevada', '2023-05-11 00:00:00', 0, 1, 0, 'kan', 24, 17, 1, 'Schapendoes', 'http://localhost/kutyakepek/70.jpg', '', '', '', 'placeholder', '+36604954932'),
(48, 'Horka', '2023-04-11 00:00:00', 0, 0, 0, 'kan', 24, 11, 4, 'Si-cu', 'http://localhost/kutyakepek/420.jpg', '', '', '', 'placeholder', '+36407769437'),
(49, 'Melák', '2023-10-14 00:00:00', 0, 1, 0, 'szuka', 26, 11, 2, 'Fehér-fekete francia kopó', 'http://localhost/kutyakepek/112.jpg', '', '', '', 'placeholder', '+36401717214'),
(50, 'Ládikó', '2021-01-04 00:00:00', 1, 0, 0, 'szuka', 14, 20, 2, 'Amerikai pitbull terrier', 'http://localhost/kutyakepek/261.jpg', '', '', '', 'placeholder', '+36308874276'),
(51, 'Zizi', '2021-02-26 00:00:00', 1, 1, 1, 'szuka', 5, 3, 4, 'Dán-svéd őrkutya', 'http://localhost/kutyakepek/528.jpg', '', '', '', 'placeholder', '+36304689518'),
(52, 'Rolf', '2022-09-18 00:00:00', 0, 0, 0, 'kan', 2, 13, 1, 'Pikárdiai spániel', 'http://localhost/kutyakepek/54.jpg', '', '', '', 'placeholder', '+36607735191'),
(53, 'Ollé', '2021-04-22 00:00:00', 1, 1, 1, 'kan', 14, 2, 1, 'Staffordshire bullterrier', 'http://localhost/kutyakepek/342.jpg', '', '', '', 'placeholder', '+36601970922'),
(54, 'Károly', '2020-12-25 00:00:00', 1, 1, 1, 'szuka', 27, 7, 2, 'Szetter', 'http://localhost/kutyakepek/461.jpg', '', '', '', 'placeholder', '+36401893376'),
(55, 'Szofi', '2023-02-05 00:00:00', 0, 1, 0, 'szuka', 13, 27, 3, 'Kyi leo', 'http://localhost/kutyakepek/462.jpg', '', '', '', 'placeholder', '+36303111509'),
(56, 'Zizi', '2023-09-24 00:00:00', 1, 1, 1, 'szuka', 23, 9, 2, 'Harrier (Nyúlászkopó)', 'http://localhost/kutyakepek/474.jpg', '', '', '', 'placeholder', '+36308027426'),
(57, 'Kuku', '2021-03-28 00:00:00', 1, 1, 0, 'szuka', 8, 15, 3, 'Fríz vízikutya', 'http://localhost/kutyakepek/479.jpg', '', '', '', 'placeholder', '+36603523937'),
(58, 'Pötyi', '2021-11-18 00:00:00', 1, 0, 1, 'kan', 17, 23, 1, 'Wetterhoun', 'http://localhost/kutyakepek/554.jpg', '', '', '', 'placeholder', '+36604719879'),
(59, 'Gigi', '2022-10-17 00:00:00', 0, 1, 1, 'kan', 16, 13, 4, 'Field spániel', 'http://localhost/kutyakepek/159.jpg', '', '', '', 'placeholder', '+36402096683'),
(60, 'Shiva', '2022-05-04 00:00:00', 1, 1, 1, 'szuka', 14, 18, 1, 'Ausztrál juhászkutya', 'http://localhost/kutyakepek/505.jpg', '', '', '', 'placeholder', '+36308100525'),
(61, 'Grész', '2022-08-19 00:00:00', 1, 0, 1, 'kan', 2, 5, 4, 'Fáraókutya', 'http://localhost/kutyakepek/141.jpg', '', '', '', 'placeholder', '+36408556852'),
(62, 'Aramis', '2023-11-20 00:00:00', 0, 0, 1, 'szuka', 25, 26, 3, 'Beauce-i juhászkutya', 'http://localhost/kutyakepek/96.jpg', '', '', '', 'placeholder', '+36409942022'),
(63, 'Kuku', '2020-07-25 00:00:00', 0, 1, 1, 'szuka', 22, 2, 2, 'Bergamói juhászkutya', 'http://localhost/kutyakepek/446.jpg', '', '', '', 'placeholder', '+36406650734'),
(64, 'Scott', '2023-01-03 00:00:00', 1, 1, 0, 'szuka', 8, 9, 1, 'Silken Windhound', 'http://localhost/kutyakepek/122.jpg', '', '', '', 'placeholder', '+36404344754'),
(65, 'Furby', '2022-03-22 00:00:00', 1, 0, 0, 'kan', 10, 29, 3, 'Savoye-i pásztorkutya', 'http://localhost/kutyakepek/335.jpg', '', '', '', 'placeholder', '+36308150383'),
(66, 'Sziszi', '2021-06-13 00:00:00', 1, 0, 0, 'szuka', 12, 26, 2, 'Ariége-i kopó', 'http://localhost/kutyakepek/511.jpg', '', '', '', 'placeholder', '+36503320688'),
(67, 'Lady', '2023-03-08 00:00:00', 0, 1, 0, 'szuka', 4, 3, 2, 'Bulldog', 'http://localhost/kutyakepek/103.jpg', '', '', '', 'placeholder', '+36401804120'),
(68, 'Nelson', '2020-07-06 00:00:00', 0, 1, 0, 'kan', 17, 28, 3, 'Szlovák kopó', 'http://localhost/kutyakepek/400.jpg', '', '', '', 'placeholder', '+36505450328'),
(69, 'Darling', '2021-07-14 00:00:00', 1, 1, 0, 'kan', 2, 28, 2, 'Akita inu', 'http://localhost/kutyakepek/140.jpg', '', '', '', 'placeholder', '+36505462606'),
(70, 'Mézeske', '2020-05-03 00:00:00', 1, 0, 0, 'kan', 22, 30, 2, 'Rövidszőrű német vizsla', 'http://localhost/kutyakepek/509.jpg', '', '', '', 'placeholder', '+36602689960'),
(71, 'Lady', '2022-12-09 00:00:00', 0, 1, 1, 'szuka', 11, 4, 1, 'Savoye-i pásztorkutya', 'http://localhost/kutyakepek/558.jpg', '', '', '', 'placeholder', '+36607583495'),
(72, 'Szetti', '2023-05-21 00:00:00', 0, 1, 1, 'kan', 20, 20, 2, 'Pudelpointer', 'http://localhost/kutyakepek/537.jpg', '', '', '', 'placeholder', '+36609370688'),
(73, 'Jimmy', '2023-12-27 00:00:00', 0, 1, 1, 'szuka', 19, 7, 3, 'Wolfspitz', 'http://localhost/kutyakepek/336.jpg', '', '', '', 'placeholder', '+36604442184'),
(74, 'Zizi', '2022-11-11 00:00:00', 1, 0, 0, 'kan', 17, 18, 2, 'Boston terrier', 'http://localhost/kutyakepek/507.jpg', '', '', '', 'placeholder', '+36402930846'),
(75, 'Jade', '2020-12-01 00:00:00', 1, 0, 0, 'szuka', 13, 25, 3, 'bolonka francuska', 'http://localhost/kutyakepek/34.jpg', '', '', '', 'placeholder', '+3660976571'),
(76, 'Viti', '2023-03-20 00:00:00', 0, 1, 0, 'kan', 10, 22, 4, 'Lapp pásztorkutya', 'http://localhost/kutyakepek/561.jpg', '', '', '', 'placeholder', '+36504592850'),
(77, 'Bugatti', '2020-09-01 00:00:00', 1, 0, 0, 'kan', 19, 19, 4, 'Schiller-kopó', 'http://localhost/kutyakepek/215.jpg', '', '', '', 'placeholder', '+3640925548'),
(78, 'Keiko', '2021-01-24 00:00:00', 0, 0, 1, 'kan', 17, 20, 3, 'Orosz-európai lajka', 'http://localhost/kutyakepek/474.jpg', '', '', '', 'placeholder', '+36605754948'),
(79, 'Fickel', '2023-08-25 00:00:00', 0, 1, 1, 'szuka', 8, 17, 2, 'Sinka', 'http://localhost/kutyakepek/254.jpg', '', '', '', 'placeholder', '+3650176501'),
(80, 'Igric', '2022-10-21 00:00:00', 1, 0, 0, 'szuka', 20, 10, 2, 'Bali hegyikutya', 'http://localhost/kutyakepek/388.jpg', '', '', '', 'placeholder', '+36509920863'),
(81, 'Tofi', '2023-04-10 00:00:00', 0, 1, 1, 'szuka', 21, 29, 3, 'Broholmer', 'http://localhost/kutyakepek/434.jpg', '', '', '', 'placeholder', '+36502643833'),
(82, 'Dolfi', '2020-04-24 00:00:00', 0, 1, 1, 'kan', 6, 25, 3, 'Lhasa apso', 'http://localhost/kutyakepek/98.jpg', '', '', '', 'placeholder', '+36506735295'),
(83, 'Frakk', '2023-03-13 00:00:00', 1, 1, 1, 'kan', 13, 22, 4, 'Boerboel', 'http://localhost/kutyakepek/181.jpg', '', '', '', 'placeholder', '+36607507700'),
(84, 'Pötyi', '2021-09-07 00:00:00', 0, 1, 1, 'kan', 21, 28, 2, 'Angol szetter', 'http://localhost/kutyakepek/280.jpg', '', '', '', 'placeholder', '+36305193262'),
(85, 'Fifi', '2022-01-25 00:00:00', 0, 0, 1, 'kan', 3, 5, 3, 'Telomian', 'http://localhost/kutyakepek/27.jpg', '', '', '', 'placeholder', '+3630892461'),
(86, 'Parádé', '2023-03-26 00:00:00', 1, 0, 1, 'szuka', 10, 1, 1, 'Halden kopó', 'http://localhost/kutyakepek/130.jpg', '', '', '', 'placeholder', '+36407274823'),
(87, 'Gopher', '2020-04-04 00:00:00', 1, 1, 1, 'kan', 14, 7, 1, 'Lagotto romagnolo', 'http://localhost/kutyakepek/206.jpg', '', '', '', 'placeholder', '+366077433'),
(88, 'Fabula', '2020-11-03 00:00:00', 1, 1, 0, 'szuka', 26, 27, 2, 'Lengyel agár', 'http://localhost/kutyakepek/37.jpg', '', '', '', 'placeholder', '+36402701395'),
(89, 'Mancs', '2023-03-12 00:00:00', 0, 0, 0, 'kan', 26, 18, 2, 'Tacskó', 'http://localhost/kutyakepek/102.jpg', '', '', '', 'placeholder', '+36404601943'),
(90, 'FuFu', '2021-05-16 00:00:00', 1, 1, 1, 'szuka', 24, 23, 4, 'Német juhászkutya', 'http://localhost/kutyakepek/309.jpg', '', '', '', 'placeholder', '+36505665643'),
(91, 'Ládikó', '2021-08-17 00:00:00', 0, 0, 1, 'szuka', 7, 30, 4, 'Tiroli kopó', 'http://localhost/kutyakepek/20.jpg', '', '', '', 'placeholder', '+3660532915'),
(92, 'Rézi', '2022-07-25 00:00:00', 1, 0, 1, 'kan', 12, 30, 2, 'Amerikai vízispániel', 'http://localhost/kutyakepek/332.jpg', '', '', '', 'placeholder', '+36501142050'),
(93, 'Pongó', '2023-04-18 00:00:00', 0, 1, 1, 'kan', 17, 11, 2, 'Airedale terrier', 'http://localhost/kutyakepek/280.jpg', '', '', '', 'placeholder', '+36301160085'),
(94, 'Bella', '2022-01-20 00:00:00', 1, 0, 0, 'kan', 14, 23, 4, 'Bearded collie', 'http://localhost/kutyakepek/113.jpg', '', '', '', 'placeholder', '+36508165798'),
(95, 'Neutron', '2023-07-26 00:00:00', 0, 1, 1, 'szuka', 13, 23, 4, 'Gascogne-i kék basset', 'http://localhost/kutyakepek/517.jpg', '', '', '', 'placeholder', '+36305774789'),
(96, 'Espresso', '2020-08-15 00:00:00', 1, 0, 0, 'szuka', 3, 21, 1, 'Szlovák csuvacs', 'http://localhost/kutyakepek/298.jpg', '', '', '', 'placeholder', '+36502421071'),
(97, 'Illés', '2023-10-06 00:00:00', 0, 1, 1, 'szuka', 12, 6, 4, 'Kis schwyzi kopó', 'http://localhost/kutyakepek/78.jpg', '', '', '', 'placeholder', '+36506611222'),
(98, 'Sámson', '2020-10-06 00:00:00', 1, 0, 0, 'kan', 28, 25, 1, 'Belga griffon', 'http://localhost/kutyakepek/325.jpg', '', '', '', 'placeholder', '+36401977127'),
(99, 'Lucy', '2022-08-20 00:00:00', 0, 1, 0, 'kan', 13, 20, 2, 'Amerikai-kanadai fehér juhászkutya', 'http://localhost/kutyakepek/81.jpg', '', '', '', 'placeholder', '+36607238166'),
(100, 'Adél', '2021-05-17 00:00:00', 0, 1, 1, 'szuka', 26, 27, 2, 'Poitevin', 'http://localhost/kutyakepek/82.jpg', '', '', '', 'placeholder', '+36608655249'),
(101, 'Luigi', '2020-01-07 00:00:00', 0, 0, 0, 'kan', 30, 9, 4, 'Norrbotteni spicc', 'http://localhost/kutyakepek/458.jpg', '', '', '', 'placeholder', '+36507252484'),
(102, 'Shiva', '2023-03-25 00:00:00', 1, 0, 0, 'kan', 18, 1, 4, 'Biewer yorkshire terrier', 'http://localhost/kutyakepek/190.jpg', '', '', '', 'placeholder', '+36302951338'),
(103, 'Rüszi', '2020-03-15 00:00:00', 1, 0, 0, 'kan', 16, 8, 4, 'Kanadai eszkimó kutya', 'http://localhost/kutyakepek/80.jpg', '', '', '', 'placeholder', '+36609302626'),
(104, 'Axel', '2020-02-18 00:00:00', 1, 0, 0, 'kan', 2, 2, 1, 'Groenendael', 'http://localhost/kutyakepek/338.jpg', '', '', '', 'placeholder', '+36603128241'),
(105, 'Kai', '2022-09-15 00:00:00', 0, 1, 0, 'szuka', 6, 3, 3, 'Hokkaido inu', 'http://localhost/kutyakepek/534.jpg', '', '', '', 'placeholder', '+36607175626'),
(106, 'Melák', '2022-12-18 00:00:00', 1, 1, 1, 'kan', 17, 30, 1, 'Moszkvai őrkutya', 'http://localhost/kutyakepek/50.jpg', '', '', '', 'placeholder', '+36603956492'),
(107, 'Héra', '2021-09-20 00:00:00', 1, 1, 0, 'szuka', 27, 10, 2, 'Abruzzói juhászkutya', 'http://localhost/kutyakepek/174.jpg', '', '', '', 'placeholder', '+36309289246'),
(108, 'Destiny', '2023-07-15 00:00:00', 0, 1, 1, 'kan', 16, 15, 2, 'Sussexi spániel', 'http://localhost/kutyakepek/119.jpg', '', '', '', 'placeholder', '+3650974126'),
(109, 'Anasztázia', '2020-04-16 00:00:00', 1, 0, 0, 'kan', 13, 9, 2, 'Staffordshire bullterrier', 'http://localhost/kutyakepek/148.jpg', '', '', '', 'placeholder', '+36606663727'),
(110, 'Suzy', '2020-01-15 00:00:00', 0, 1, 0, 'szuka', 25, 14, 4, 'Brazil masztiff', 'http://localhost/kutyakepek/92.jpg', '', '', '', 'placeholder', '+36609690982'),
(111, 'Maggie', '2020-06-08 00:00:00', 1, 0, 0, 'szuka', 11, 30, 1, 'Lucas terrier', 'http://localhost/kutyakepek/514.jpg', '', '', '', 'placeholder', '+36407644658'),
(112, 'Nudli', '2022-12-15 00:00:00', 0, 0, 1, 'kan', 1, 15, 4, 'Francia vizsla', 'http://localhost/kutyakepek/333.jpg', '', '', '', 'placeholder', '+36301498704'),
(113, 'Nudli', '2020-12-24 00:00:00', 0, 1, 1, 'szuka', 1, 22, 3, 'Sealyham terrier', 'http://localhost/kutyakepek/34.jpg', '', '', '', 'placeholder', '+36404493428'),
(114, 'Héra', '2020-12-01 00:00:00', 1, 1, 0, 'szuka', 6, 30, 2, 'Lagotto romagnolo', 'http://localhost/kutyakepek/73.jpg', '', '', '', 'placeholder', '+36405372109'),
(115, 'Nimród', '2021-02-07 00:00:00', 1, 1, 0, 'kan', 7, 14, 2, 'Chinook', 'http://localhost/kutyakepek/235.jpg', '', '', '', 'placeholder', '+36504757908'),
(116, 'Azték', '2023-07-12 00:00:00', 0, 0, 0, 'kan', 2, 8, 4, 'Szávavölgyi kopó', 'http://localhost/kutyakepek/317.jpg', '', '', '', 'placeholder', '+363018839'),
(117, 'Félix', '2020-05-28 00:00:00', 0, 1, 1, 'kan', 22, 22, 3, 'Bandog', 'http://localhost/kutyakepek/122.jpg', '', '', '', 'placeholder', '+36308876844'),
(118, 'Orlando', '2020-10-01 00:00:00', 0, 0, 0, 'kan', 1, 2, 3, 'Német fürjészeb', 'http://localhost/kutyakepek/107.jpg', '', '', '', 'placeholder', '+36409635369'),
(119, 'Jet', '2021-02-02 00:00:00', 1, 0, 0, 'kan', 4, 25, 4, 'Német spicc', 'http://localhost/kutyakepek/523.jpg', '', '', '', 'placeholder', '+36407828418'),
(120, 'Bogáncs', '2022-02-03 00:00:00', 1, 1, 1, 'kan', 3, 9, 4, 'Dobermann', 'http://localhost/kutyakepek/377.jpg', '', '', '', 'placeholder', '+36401751675'),
(121, 'Pamacs', '2022-04-14 00:00:00', 1, 1, 1, 'szuka', 9, 9, 1, 'Fehér-fekete francia kopó', 'http://localhost/kutyakepek/447.jpg', '', '', '', 'placeholder', '+36402522823'),
(122, 'Narancs', '2020-07-27 00:00:00', 1, 0, 0, 'kan', 12, 12, 4, 'Szibériai husky', 'http://localhost/kutyakepek/461.jpg', '', '', '', 'placeholder', '+36307499143'),
(123, 'Gigi', '2023-02-22 00:00:00', 0, 0, 1, 'kan', 7, 22, 1, 'Drótszőrű foxterrier', 'http://localhost/kutyakepek/116.jpg', '', '', '', 'placeholder', '+36408391045'),
(124, 'Ádáz', '2023-06-20 00:00:00', 1, 0, 1, 'szuka', 7, 2, 1, 'Délorosz juhászkutya', 'http://localhost/kutyakepek/484.jpg', '', '', '', 'placeholder', '+36408347438'),
(125, 'Pufók', '2020-07-25 00:00:00', 0, 1, 1, 'kan', 1, 18, 2, 'Isztriai kopó', 'http://localhost/kutyakepek/14.jpg', '', '', '', 'placeholder', '+36309018358'),
(126, 'Grész', '2022-11-08 00:00:00', 0, 0, 0, 'szuka', 9, 9, 2, 'Rövidszőrű magyar vizsla', 'http://localhost/kutyakepek/398.jpg', '', '', '', 'placeholder', '+36507430668'),
(127, 'Dean', '2021-01-10 00:00:00', 1, 0, 0, 'szuka', 6, 18, 1, 'Pikárdiai kék spániel', 'http://localhost/kutyakepek/254.jpg', '', '', '', 'placeholder', '+36404643960'),
(128, 'Elíz', '2021-01-20 00:00:00', 1, 0, 0, 'kan', 11, 29, 1, 'Vendée-i griffon basset', 'http://localhost/kutyakepek/391.jpg', '', '', '', 'placeholder', '+36409670557'),
(129, 'Cadbury', '2023-06-05 00:00:00', 0, 0, 0, 'kan', 13, 15, 2, 'Atlaszi hegyikutya', 'http://localhost/kutyakepek/78.jpg', '', '', '', 'placeholder', '+36507744657'),
(130, 'Keksz', '2023-10-12 00:00:00', 1, 1, 0, 'szuka', 28, 23, 2, 'Angol-francia falkavadász kopó', 'http://localhost/kutyakepek/319.jpg', '', '', '', 'placeholder', '+36601798108'),
(131, 'Igric', '2020-03-12 00:00:00', 1, 1, 0, 'szuka', 7, 15, 2, 'Markiesje', 'http://localhost/kutyakepek/522.jpg', '', '', '', 'placeholder', '+36307332851'),
(132, 'Hasszán', '2022-05-17 00:00:00', 1, 1, 1, 'kan', 20, 20, 3, 'Ausztrál pásztorkutya', 'http://localhost/kutyakepek/513.jpg', '', '', '', 'placeholder', '+36406062425'),
(133, 'Mézeske', '2023-08-04 00:00:00', 1, 0, 1, 'kan', 4, 15, 1, 'Sarplaninai juhászkutya', 'http://localhost/kutyakepek/36.jpg', '', '', '', 'placeholder', '+36409675637'),
(134, 'Amaya', '2020-02-12 00:00:00', 0, 0, 0, 'kan', 22, 16, 3, 'Ardenneki pásztorkutya', 'http://localhost/kutyakepek/366.jpg', '', '', '', 'placeholder', '+36308096796'),
(135, 'Ollé', '2020-09-21 00:00:00', 0, 1, 0, 'szuka', 3, 26, 2, 'Savoye-i pásztorkutya', 'http://localhost/kutyakepek/160.jpg', '', '', '', 'placeholder', '+3660933571'),
(136, 'Stella', '2020-10-10 00:00:00', 1, 1, 0, 'kan', 9, 21, 4, 'Drótszőrű isztriai kopó', 'http://localhost/kutyakepek/118.jpg', '', '', '', 'placeholder', '+36508292282'),
(137, 'Szetti', '2023-03-10 00:00:00', 0, 1, 0, 'kan', 22, 16, 3, 'Délorosz juhászkutya', 'http://localhost/kutyakepek/459.jpg', '', '', '', 'placeholder', '+36402807558'),
(138, 'Mogyoró', '2021-10-27 00:00:00', 1, 0, 0, 'kan', 18, 21, 3, 'Portugál vízikutya', 'http://localhost/kutyakepek/132.jpg', '', '', '', 'placeholder', '+36608825535'),
(139, 'Karcsi', '2022-03-20 00:00:00', 0, 1, 1, 'kan', 14, 9, 4, 'Fehér-cser nagy angol-francia kopó', 'http://localhost/kutyakepek/428.jpg', '', '', '', 'placeholder', '+36409965275'),
(140, 'Lexi', '2022-06-16 00:00:00', 1, 1, 1, 'kan', 23, 19, 2, 'Stájeri drótszőrű kopó', 'http://localhost/kutyakepek/450.jpg', '', '', '', 'placeholder', '+36404353488'),
(141, 'Sakál', '2021-03-08 00:00:00', 0, 0, 0, 'szuka', 23, 25, 2, 'Közép schnauzer', 'http://localhost/kutyakepek/407.jpg', '', '', '', 'placeholder', '+36402988381'),
(142, 'Magnipuss', '2020-07-12 00:00:00', 0, 0, 1, 'szuka', 13, 19, 2, 'Eszkimó kutya', 'http://localhost/kutyakepek/188.jpg', '', '', '', 'placeholder', '+36306136626'),
(143, 'Pufók', '2022-08-10 00:00:00', 1, 0, 0, 'szuka', 25, 29, 2, 'Drótszőrű portugál kopó', 'http://localhost/kutyakepek/104.jpg', '', '', '', 'placeholder', '+36604554891'),
(144, 'Jorgosz', '2021-04-15 00:00:00', 0, 0, 1, 'szuka', 15, 8, 4, 'Kromfohrlandi', 'http://localhost/kutyakepek/73.jpg', '', '', '', 'placeholder', '+36301665296'),
(145, 'Pötyi', '2021-08-04 00:00:00', 1, 1, 1, 'szuka', 13, 26, 3, 'Grönlandi kutya', 'http://localhost/kutyakepek/118.jpg', '', '', '', 'placeholder', '+36507244370'),
(146, 'Bella', '2021-03-23 00:00:00', 0, 1, 0, 'kan', 17, 5, 2, 'Kaliba kutya', 'http://localhost/kutyakepek/378.jpg', '', '', '', 'placeholder', '+36601326269'),
(147, 'Rea', '2022-01-02 00:00:00', 1, 1, 0, 'kan', 3, 15, 1, 'Perui meztelen kutya', 'http://localhost/kutyakepek/296.jpg', '', '', '', 'placeholder', '+36304000436'),
(148, 'Afton', '2021-07-18 00:00:00', 0, 0, 1, 'kan', 4, 25, 1, 'Óriás uszkár', 'http://localhost/kutyakepek/546.jpg', '', '', '', 'placeholder', '+36608272213'),
(149, 'Bűvész', '2020-11-09 00:00:00', 0, 0, 1, 'szuka', 5, 28, 2, 'Magyar agár', 'http://localhost/kutyakepek/414.jpg', '', '', '', 'placeholder', '+36605131397'),
(150, 'Szeti', '2021-03-02 00:00:00', 0, 1, 0, 'kan', 20, 27, 1, 'Brazil kopó', 'http://localhost/kutyakepek/215.jpg', '', '', '', 'placeholder', '+36607773115'),
(151, 'Pitti', '2020-09-09 00:00:00', 1, 1, 1, 'szuka', 13, 13, 1, 'Pont-Audemer-i spániel', 'http://localhost/kutyakepek/101.jpg', '', '', '', 'placeholder', '+36407322510'),
(152, 'Espresso', '2022-02-28 00:00:00', 1, 1, 1, 'kan', 9, 29, 3, 'Norvég elghund', 'http://localhost/kutyakepek/405.jpg', '', '', '', 'placeholder', '+36509051667'),
(153, 'Zeusz', '2020-11-12 00:00:00', 0, 1, 0, 'kan', 27, 7, 4, 'Telomian', 'http://localhost/kutyakepek/329.jpg', '', '', '', 'placeholder', '+3650938755'),
(154, 'Maya', '2022-04-23 00:00:00', 0, 0, 1, 'szuka', 9, 23, 1, 'Tervueren', 'http://localhost/kutyakepek/359.jpg', '', '', '', 'placeholder', '+36501578012'),
(155, 'Szetti', '2023-06-14 00:00:00', 0, 0, 1, 'kan', 23, 14, 1, 'Rouilers-i pászorkutya', 'http://localhost/kutyakepek/379.jpg', '', '', '', 'placeholder', '+3660169482'),
(156, 'Cézár', '2022-03-25 00:00:00', 1, 0, 1, 'szuka', 14, 29, 2, 'Trikolor nagy angol-francia kopó', 'http://localhost/kutyakepek/28.jpg', '', '', '', 'placeholder', '+36409625732'),
(157, 'Hobbit', '2023-03-24 00:00:00', 1, 1, 1, 'kan', 27, 28, 4, 'Kánaán kutya', 'http://localhost/kutyakepek/494.jpg', '', '', '', 'placeholder', '+36503417380'),
(158, 'Mazsola', '2021-03-12 00:00:00', 0, 1, 1, 'szuka', 3, 1, 4, 'Sinka', 'http://localhost/kutyakepek/15.jpg', '', '', '', 'placeholder', '+36409380006'),
(159, 'Ursula', '2020-09-13 00:00:00', 1, 1, 1, 'kan', 15, 1, 3, 'Padilokoon', 'http://localhost/kutyakepek/5.jpg', '', '', '', 'placeholder', '+36609254956'),
(160, 'Teddy', '2022-01-12 00:00:00', 1, 1, 0, 'szuka', 27, 4, 2, 'Mudi', 'http://localhost/kutyakepek/211.jpg', '', '', '', 'placeholder', '+36408097369'),
(161, 'Melák', '2021-02-03 00:00:00', 0, 0, 1, 'kan', 7, 13, 1, 'Tibeti terrier', 'http://localhost/kutyakepek/349.jpg', '', '', '', 'placeholder', '+36502186822'),
(162, 'Mambó', '2020-04-19 00:00:00', 1, 1, 0, 'szuka', 6, 29, 4, 'Drenti vizsla', 'http://localhost/kutyakepek/502.jpg', '', '', '', 'placeholder', '+36604483538'),
(163, 'Mazsola', '2023-08-01 00:00:00', 1, 1, 0, 'szuka', 29, 10, 4, 'Lapp pásztorkutya', 'http://localhost/kutyakepek/355.jpg', '', '', '', 'placeholder', '+36406078671'),
(164, 'Szeszi', '2022-01-01 00:00:00', 1, 0, 1, 'szuka', 3, 4, 3, 'Spanyol agár', 'http://localhost/kutyakepek/146.jpg', '', '', '', 'placeholder', '+36604194585'),
(165, 'Szetti', '2021-10-11 00:00:00', 1, 0, 0, 'kan', 15, 25, 4, 'Tajvani kutya', 'http://localhost/kutyakepek/403.jpg', '', '', '', 'placeholder', '+36302492224'),
(166, 'Keiko', '2020-04-28 00:00:00', 1, 0, 0, 'kan', 26, 24, 3, 'Labrador retriever', 'http://localhost/kutyakepek/117.jpg', '', '', '', 'placeholder', '+36507826306'),
(167, 'Lassie', '2020-06-06 00:00:00', 0, 1, 0, 'szuka', 12, 27, 4, 'Szerb trikolor kopó', 'http://localhost/kutyakepek/400.jpg', '', '', '', 'placeholder', '+36602329474'),
(168, 'Zizi', '2021-10-09 00:00:00', 1, 0, 1, 'kan', 29, 9, 4, 'Mioritic pásztorkutya', 'http://localhost/kutyakepek/202.jpg', '', '', '', 'placeholder', '+36406090053'),
(169, 'Oszkár', '2023-02-11 00:00:00', 0, 0, 0, 'kan', 15, 5, 3, 'Lakeland terrier', 'http://localhost/kutyakepek/410.jpg', '', '', '', 'placeholder', '+36409917358'),
(170, 'Furby', '2022-02-07 00:00:00', 0, 1, 0, 'szuka', 14, 18, 1, 'Harlekin pincser', 'http://localhost/kutyakepek/506.jpg', '', '', '', 'placeholder', '+36303306984'),
(171, 'Pötyi', '2022-06-19 00:00:00', 1, 0, 0, 'kan', 25, 19, 1, 'Mioritic pásztorkutya', 'http://localhost/kutyakepek/103.jpg', '', '', '', 'placeholder', '+36405122079'),
(172, 'Iván', '2023-09-02 00:00:00', 0, 1, 1, 'szuka', 20, 22, 3, 'Kis angol terrier', 'http://localhost/kutyakepek/13.jpg', '', '', '', 'placeholder', '+36406572534'),
(173, 'Leó', '2022-03-09 00:00:00', 0, 0, 0, 'kan', 17, 20, 1, 'Castro Laboreiro-i pásztorkutya', 'http://localhost/kutyakepek/431.jpg', '', '', '', 'placeholder', '+36505500393'),
(174, 'Ádáz', '2021-09-22 00:00:00', 1, 0, 1, 'kan', 10, 12, 2, 'Finn kopó', 'http://localhost/kutyakepek/59.jpg', '', '', '', 'placeholder', '+3630559708'),
(175, 'Plutó', '2020-05-05 00:00:00', 1, 0, 1, 'kan', 27, 19, 2, 'Szürke norvég elghund', 'http://localhost/kutyakepek/286.jpg', '', '', '', 'placeholder', '+3630350087'),
(176, 'Elvis', '2022-06-25 00:00:00', 0, 1, 0, 'kan', 23, 28, 2, 'Hovawart', 'http://localhost/kutyakepek/151.jpg', '', '', '', 'placeholder', '+3650540602'),
(177, 'Viti', '2021-07-05 00:00:00', 0, 1, 0, 'szuka', 3, 6, 1, 'Belga juhászkutya', 'http://localhost/kutyakepek/454.jpg', '', '', '', 'placeholder', '+36505454420'),
(178, 'Gerry', '2022-09-23 00:00:00', 1, 0, 0, 'szuka', 29, 11, 3, 'Törpe schnauzer', 'http://localhost/kutyakepek/242.jpg', '', '', '', 'placeholder', '+36302221325'),
(179, 'Hektor', '2022-04-01 00:00:00', 0, 0, 1, 'kan', 5, 22, 1, 'Finn spicc', 'http://localhost/kutyakepek/94.jpg', '', '', '', 'placeholder', '+36505272486'),
(180, 'Scott', '2020-10-22 00:00:00', 1, 1, 0, 'szuka', 5, 16, 2, 'Brie-i juhászkutya', 'http://localhost/kutyakepek/282.jpg', '', '', '', 'placeholder', '+36309159364'),
(181, 'Lilla', '2022-06-11 00:00:00', 0, 0, 0, 'kan', 7, 15, 3, 'Rhodesian ridgeback (Afrikai oroszlánkutya)', 'http://localhost/kutyakepek/481.jpg', '', '', '', 'placeholder', '+36605974602'),
(182, 'Parádé', '2023-02-26 00:00:00', 1, 1, 0, 'kan', 28, 19, 4, 'Shetlandi juhászkutya', 'http://localhost/kutyakepek/531.jpg', '', '', '', 'placeholder', '+36402584990'),
(183, 'Rex', '2022-01-04 00:00:00', 0, 0, 1, 'szuka', 22, 23, 4, 'Német pinscher', 'http://localhost/kutyakepek/197.jpg', '', '', '', 'placeholder', '+36402943425'),
(184, 'Gróf', '2023-02-20 00:00:00', 1, 1, 0, 'kan', 21, 26, 3, 'Orosz toy terrier', 'http://localhost/kutyakepek/7.jpg', '', '', '', 'placeholder', '+36401944836'),
(185, 'Jágó', '2022-12-06 00:00:00', 0, 0, 1, 'kan', 29, 24, 3, 'Bergamói juhászkutya', 'http://localhost/kutyakepek/309.jpg', '', '', '', 'placeholder', '+36607773409'),
(186, 'Kefir', '2020-04-09 00:00:00', 1, 1, 0, 'kan', 26, 1, 3, 'Angol juhászkutya', 'http://localhost/kutyakepek/36.jpg', '', '', '', 'placeholder', '+3660251803'),
(187, 'Stella', '2022-10-18 00:00:00', 0, 0, 1, 'kan', 2, 14, 2, 'Olasz griffon', 'http://localhost/kutyakepek/404.jpg', '', '', '', 'placeholder', '+36409033928'),
(188, 'Aramis', '2023-04-06 00:00:00', 1, 1, 0, 'kan', 24, 27, 1, 'Landseer', 'http://localhost/kutyakepek/333.jpg', '', '', '', 'placeholder', '+36409353657'),
(189, 'Bogáncs', '2022-11-11 00:00:00', 1, 0, 0, 'szuka', 8, 15, 4, 'Groenendael', 'http://localhost/kutyakepek/274.jpg', '', '', '', 'placeholder', '+36609870619'),
(190, 'Szeszi', '2023-06-03 00:00:00', 0, 1, 0, 'szuka', 18, 27, 4, 'Lengyel vadászkutya', 'http://localhost/kutyakepek/387.jpg', '', '', '', 'placeholder', '+36405661844'),
(191, 'Wolf', '2023-12-15 00:00:00', 1, 1, 0, 'szuka', 22, 8, 3, 'Malinois', 'http://localhost/kutyakepek/58.jpg', '', '', '', 'placeholder', '+36605759987'),
(192, 'Don', '2020-04-25 00:00:00', 1, 0, 0, 'szuka', 12, 21, 2, 'Clumber spániel', 'http://localhost/kutyakepek/232.jpg', '', '', '', 'placeholder', '+36306765541'),
(193, 'Pedró', '2021-02-09 00:00:00', 1, 1, 1, 'kan', 23, 22, 4, 'Ausztrál juhászkutya', 'http://localhost/kutyakepek/35.jpg', '', '', '', 'placeholder', '+3660752649'),
(194, 'Emil', '2020-09-28 00:00:00', 0, 0, 0, 'szuka', 15, 28, 4, 'Kis vendée-i griffon basset', 'http://localhost/kutyakepek/430.jpg', '', '', '', 'placeholder', '+36309512996'),
(195, 'Jágó', '2022-08-14 00:00:00', 0, 1, 1, 'szuka', 26, 6, 1, 'Beagle', 'http://localhost/kutyakepek/158.jpg', '', '', '', 'placeholder', '+36401586888'),
(196, 'Orlando', '2020-04-07 00:00:00', 1, 0, 0, 'kan', 16, 26, 4, 'Berni kopó', 'http://localhost/kutyakepek/468.jpg', '', '', '', 'placeholder', '+36503598339'),
(197, 'Zorró', '2021-05-23 00:00:00', 1, 1, 0, 'kan', 27, 24, 1, 'Coton de tuléar', 'http://localhost/kutyakepek/532.jpg', '', '', '', 'placeholder', '+36501476125'),
(198, 'Gerry', '2023-04-27 00:00:00', 1, 1, 0, 'szuka', 21, 9, 2, 'Kis jurai kopó', 'http://localhost/kutyakepek/237.jpg', '', '', '', 'placeholder', '+36501868638'),
(199, 'Dean', '2020-06-08 00:00:00', 1, 1, 1, 'kan', 15, 17, 3, 'Kis angol terrier', 'http://localhost/kutyakepek/379.jpg', '', '', '', 'placeholder', '+36307336283'),
(200, 'Jorgosz', '2023-06-08 00:00:00', 1, 0, 1, 'szuka', 7, 10, 2, 'Tibeti masztiff', 'http://localhost/kutyakepek/217.jpg', '', '', '', 'placeholder', '+36601591505'),
(201, 'Peggi', '2022-12-02 00:00:00', 1, 0, 1, 'kan', 6, 14, 2, 'Chesapeake Bay retriever', 'http://localhost/kutyakepek/203.jpg', '', '', '', 'placeholder', '+36308539805'),
(202, 'Pajtás', '2021-06-04 00:00:00', 0, 1, 0, 'szuka', 10, 15, 2, 'Dán-svéd őrkutya', 'http://localhost/kutyakepek/28.jpg', '', '', '', 'placeholder', '+36309536270'),
(203, 'Jupiter', '2023-03-15 00:00:00', 1, 0, 1, 'szuka', 23, 5, 2, 'Barbet', 'http://localhost/kutyakepek/109.jpg', '', '', '', 'placeholder', '+36303100101'),
(204, 'Kuku', '2022-10-24 00:00:00', 0, 1, 1, 'kan', 4, 18, 4, 'Eszkimó kutya', 'http://localhost/kutyakepek/381.jpg', '', '', '', 'placeholder', '+36505323687'),
(205, 'Keisha', '2020-08-28 00:00:00', 1, 0, 1, 'szuka', 18, 2, 1, 'Cirneco dell’Etna', 'http://localhost/kutyakepek/45.jpg', '', '', '', 'placeholder', '+36306753034'),
(206, 'Éva', '2021-04-11 00:00:00', 0, 1, 0, 'szuka', 8, 13, 1, 'Sarplaninai juhászkutya', 'http://localhost/kutyakepek/136.jpg', '', '', '', 'placeholder', '+36601915761'),
(207, 'Lili', '2023-08-01 00:00:00', 1, 1, 1, 'kan', 11, 20, 4, 'Kánaán kutya', 'http://localhost/kutyakepek/420.jpg', '', '', '', 'placeholder', '+36605543398'),
(208, 'Kaarjack', '2023-02-05 00:00:00', 1, 1, 0, 'kan', 7, 26, 2, 'Breton spániel', 'http://localhost/kutyakepek/542.jpg', '', '', '', 'placeholder', '+36404767676'),
(209, 'Amaya', '2023-09-28 00:00:00', 0, 0, 1, 'szuka', 15, 25, 1, 'Kis angol-francia rókakopó', 'http://localhost/kutyakepek/306.jpg', '', '', '', 'placeholder', '+36409287745'),
(210, 'Zafír', '2021-12-24 00:00:00', 1, 0, 1, 'szuka', 19, 9, 4, 'Trikolor nagy angol-francia kopó', 'http://localhost/kutyakepek/280.jpg', '', '', '', 'placeholder', '+36404611369'),
(211, 'Szeszi', '2023-07-22 00:00:00', 1, 1, 1, 'szuka', 21, 12, 1, 'Beauce-i juhászkutya', 'http://localhost/kutyakepek/19.jpg', '', '', '', 'placeholder', '+36607929245'),
(212, 'Pongó', '2023-09-06 00:00:00', 1, 0, 1, 'szuka', 11, 15, 1, 'Észak-amerikai juhászkutya', 'http://localhost/kutyakepek/202.jpg', '', '', '', 'placeholder', '+36308209068'),
(213, 'Zafira', '2022-10-08 00:00:00', 0, 0, 0, 'szuka', 17, 12, 1, 'Szetter', 'http://localhost/kutyakepek/327.jpg', '', '', '', 'placeholder', '+36501560411'),
(214, 'Rolf', '2020-09-09 00:00:00', 0, 0, 0, 'kan', 18, 1, 2, 'Puli', 'http://localhost/kutyakepek/172.jpg', '', '', '', 'placeholder', '+36605655956'),
(215, 'Bohém', '2022-03-27 00:00:00', 1, 1, 0, 'kan', 14, 8, 1, 'Cardigan welsh corgi', 'http://localhost/kutyakepek/294.jpg', '', '', '', 'placeholder', '+36404481937'),
(216, 'Ballu', '2023-11-26 00:00:00', 1, 1, 0, 'kan', 4, 21, 2, 'Boerboel', 'http://localhost/kutyakepek/207.jpg', '', '', '', 'placeholder', '+36307228623'),
(217, 'Apolló', '2020-03-23 00:00:00', 1, 0, 0, 'szuka', 7, 10, 3, 'Leopard cur', 'http://localhost/kutyakepek/48.jpg', '', '', '', 'placeholder', '+36408089559'),
(218, 'Zafír', '2020-10-08 00:00:00', 0, 1, 0, 'kan', 17, 10, 1, 'Pekingi palotakutya', 'http://localhost/kutyakepek/14.jpg', '', '', '', 'placeholder', '+36508507534'),
(219, 'Ajax', '2023-04-08 00:00:00', 0, 0, 1, 'kan', 1, 26, 2, 'Ír vízispániel', 'http://localhost/kutyakepek/209.jpg', '', '', '', 'placeholder', '+36408762870'),
(220, 'Úrfi', '2023-11-26 00:00:00', 0, 1, 1, 'szuka', 4, 28, 4, 'Kelet-szibériai lajka', 'http://localhost/kutyakepek/266.jpg', '', '', '', 'placeholder', '+36303583815'),
(221, 'Limbó', '2021-04-17 00:00:00', 0, 0, 0, 'szuka', 12, 17, 1, 'Schipperke', 'http://localhost/kutyakepek/189.jpg', '', '', '', 'placeholder', '+36408719868'),
(222, 'Rómeó', '2023-01-21 00:00:00', 1, 1, 0, 'szuka', 2, 12, 3, 'Szerb trikolor kopó', 'http://localhost/kutyakepek/121.jpg', '', '', '', 'placeholder', '+36602064851'),
(223, 'Killer', '2023-11-13 00:00:00', 0, 0, 0, 'szuka', 18, 11, 1, 'Szürke norvég elghund', 'http://localhost/kutyakepek/239.jpg', '', '', '', 'placeholder', '+36601819359'),
(224, 'Fló', '2022-09-21 00:00:00', 1, 1, 0, 'kan', 8, 2, 2, 'Orosz agár', 'http://localhost/kutyakepek/215.jpg', '', '', '', 'placeholder', '+36408889206'),
(225, 'Jasper', '2021-12-12 00:00:00', 0, 0, 1, 'kan', 18, 15, 3, 'Kis schwyzi kopó', 'http://localhost/kutyakepek/471.jpg', '', '', '', 'placeholder', '+36508020054'),
(226, 'Csülök', '2020-11-11 00:00:00', 0, 1, 1, 'kan', 3, 8, 3, 'Azawakh', 'http://localhost/kutyakepek/16.jpg', '', '', '', 'placeholder', '+36602102378'),
(227, 'Fáraó', '2022-04-21 00:00:00', 1, 1, 1, 'kan', 16, 15, 3, 'Szerb kopó', 'http://localhost/kutyakepek/392.jpg', '', '', '', 'placeholder', '+36504600892'),
(228, 'Gingy', '2020-02-15 00:00:00', 1, 1, 0, 'szuka', 11, 5, 1, 'Amerikai Bulldog', 'http://localhost/kutyakepek/468.jpg', '', '', '', 'placeholder', '+36605866244'),
(229, 'Szerecsendió', '2022-09-16 00:00:00', 0, 1, 0, 'szuka', 26, 6, 2, 'Shetlandi juhászkutya', 'http://localhost/kutyakepek/442.jpg', '', '', '', 'placeholder', '+3640920232'),
(230, 'Gerry', '2021-02-28 00:00:00', 0, 1, 1, 'kan', 27, 13, 3, 'Flandriai pásztorkutya', 'http://localhost/kutyakepek/553.jpg', '', '', '', 'placeholder', '+36401888870'),
(231, 'Bagira', '2021-10-07 00:00:00', 0, 1, 1, 'kan', 2, 25, 2, 'Német vadászterrier', 'http://localhost/kutyakepek/424.jpg', '', '', '', 'placeholder', '+36603116042'),
(232, 'Szerecsendió', '2023-11-08 00:00:00', 0, 0, 0, 'szuka', 4, 29, 4, 'Soft coated wheaten terrier', 'http://localhost/kutyakepek/132.jpg', '', '', '', 'placeholder', '+36307021183'),
(233, 'Szerecsendió', '2020-12-07 00:00:00', 0, 0, 0, 'kan', 30, 25, 4, 'Fehér-fekete nagy angol-francia kopó', 'http://localhost/kutyakepek/310.jpg', '', '', '', 'placeholder', '+36406191011'),
(234, 'Molly', '2022-06-16 00:00:00', 1, 1, 0, 'kan', 19, 11, 4, 'Catahoulai leopárdkutya', 'http://localhost/kutyakepek/226.jpg', '', '', '', 'placeholder', '+36301763696'),
(235, 'Pötyi', '2023-11-14 00:00:00', 1, 1, 1, 'kan', 21, 3, 3, 'Szibériai husky', 'http://localhost/kutyakepek/476.jpg', '', '', '', 'placeholder', '+36604174024'),
(236, 'Nina', '2022-11-09 00:00:00', 0, 0, 0, 'szuka', 24, 15, 4, 'Amerikai meztelen terrier', 'http://localhost/kutyakepek/278.jpg', '', '', '', 'placeholder', '+36309709020'),
(237, 'Keiko', '2020-03-25 00:00:00', 0, 1, 1, 'kan', 17, 15, 1, 'Patterdale terrier', 'http://localhost/kutyakepek/562.jpg', '', '', '', 'placeholder', '+3640400153'),
(238, 'Sámson', '2021-10-19 00:00:00', 0, 0, 0, 'szuka', 19, 25, 2, 'Holland juhászkutya', 'http://localhost/kutyakepek/412.jpg', '', '', '', 'placeholder', '+36506382981'),
(239, 'Szerecsendió', '2022-08-11 00:00:00', 1, 0, 1, 'szuka', 29, 30, 4, 'Basenji', 'http://localhost/kutyakepek/167.jpg', '', '', '', 'placeholder', '+36501185547'),
(240, 'Szultán', '2023-08-11 00:00:00', 1, 0, 0, 'szuka', 10, 5, 1, 'Patterdale terrier', 'http://localhost/kutyakepek/116.jpg', '', '', '', 'placeholder', '+36408472970'),
(241, 'Elvis', '2022-06-18 00:00:00', 0, 0, 1, 'kan', 19, 29, 3, 'Közép-ázsiai juhászkutya', 'http://localhost/kutyakepek/358.jpg', '', '', '', 'placeholder', '+36301095303'),
(242, 'Kenny', '2021-07-07 00:00:00', 1, 0, 0, 'kan', 16, 30, 1, 'Cane corso', 'http://localhost/kutyakepek/325.jpg', '', '', '', 'placeholder', '+36601619388'),
(243, 'Igric', '2021-06-01 00:00:00', 0, 0, 0, 'szuka', 8, 9, 2, 'Abruzzói juhászkutya', 'http://localhost/kutyakepek/444.jpg', '', '', '', 'placeholder', '+36505033733'),
(244, 'Lexi', '2021-11-11 00:00:00', 1, 1, 1, 'kan', 7, 29, 1, 'Spanyol masztiff', 'http://localhost/kutyakepek/483.jpg', '', '', '', 'placeholder', '+36604363195'),
(245, 'Ballu', '2020-12-25 00:00:00', 0, 1, 1, 'kan', 2, 5, 1, 'Ibizai kopó', 'http://localhost/kutyakepek/289.jpg', '', '', '', 'placeholder', '+36407721999'),
(246, 'Afton', '2021-09-07 00:00:00', 0, 1, 0, 'kan', 12, 16, 2, 'Hortaye Borzaya (Chortaj)', 'http://localhost/kutyakepek/118.jpg', '', '', '', 'placeholder', '+36308668912'),
(247, 'Elíz', '2023-10-25 00:00:00', 0, 1, 0, 'kan', 22, 9, 4, 'Drótszőrű isztriai kopó', 'http://localhost/kutyakepek/63.jpg', '', '', '', 'placeholder', '+36505312982'),
(248, 'Gandhi', '2021-03-11 00:00:00', 1, 1, 1, 'szuka', 29, 25, 3, 'Tátrai juhászkutya', 'http://localhost/kutyakepek/388.jpg', '', '', '', 'placeholder', '+36306223542'),
(249, 'Léda', '2020-05-15 00:00:00', 1, 0, 1, 'szuka', 28, 14, 3, 'Cardigan welsh corgi', 'http://localhost/kutyakepek/237.jpg', '', '', '', 'placeholder', '+36303216851');

-- --------------------------------------------------------

--
-- Table structure for table `fog_dict`
--

CREATE TABLE `fog_dict` (
  `FOG_ALLAPOT` int(11) NOT NULL,
  `JELENTES` varchar(40) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `fog_dict`
--

INSERT INTO `fog_dict` (`FOG_ALLAPOT`, `JELENTES`) VALUES
(1, 'sértetlen'),
(2, 'fogkopás és vagy lazulás'),
(3, 'fogszuvas'),
(4, 'foghiányos');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allat`
--
ALTER TABLE `allat`
  ADD PRIMARY KEY (`ALLAT_ID`),
  ADD KEY `FOG_ALLAPOT` (`FOG_ALLAPOT`);

--
-- Indexes for table `fog_dict`
--
ALTER TABLE `fog_dict`
  ADD PRIMARY KEY (`FOG_ALLAPOT`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `allat`
--
ALTER TABLE `allat`
  MODIFY `ALLAT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `fog_dict`
--
ALTER TABLE `fog_dict`
  MODIFY `FOG_ALLAPOT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `fog_dict`
--
ALTER TABLE `fog_dict`
  ADD CONSTRAINT `fog_dict_ibfk_1` FOREIGN KEY (`FOG_ALLAPOT`) REFERENCES `allat` (`FOG_ALLAPOT`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
