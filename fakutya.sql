-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2023 at 06:57 PM
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
  `FAJ` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
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

INSERT INTO `allat` (`ALLAT_ID`, `NEV`, `ADDED_AT`, `IS_QUARANTINED`, `IS_BEFOGADHATO`, `IS_IVARTALAN`, `IVAR`, `KOR`, `SULY`, `FOG_ALLAPOT`, `FAJ`, `TIPUS`, `img`, `ALLAPOT`, `TULAJDONSAGOK`, `COMMENT`, `EMAIL`, `TELEFON`) VALUES
(1, 'Karcsi', '2021-03-01 00:00:00', 1, 1, 0, 'szuka', 2, 18, 2, '', 'Brüsszeli griffon', 'http://localhost/kutyakepek/465.jpg', '', '', 'Bors egy fekete lány cica. Bekerülésekor ő volt a legfélénkebb. Ha hozzá akartunk érni lelapult és fújt is, de ez csak egy jelzés értékű fújás volt. Szép lassan elkezdett nyílni az emberek felé, de még sok türelem, simogatás és jutalomfalat kell ahhoz, hogy igazi ölcica legyen. Játékos természetű, testvéreivel nagyon jókat szórakozik ', 'XMfMAi1P@k9GB4VI.com', '+36604484245'),
(2, 'Vénusz', '2021-03-25 00:00:00', 1, 1, 1, 'kan', 12, 5, 3, '', 'Smålandi kopó', 'http://localhost/kutyakepek/294.jpg', '', '', '', 'pnD3OCY9y@RsMhbS4Bnj.com', '+36408223456'),
(3, 'Elza', '2021-03-02 00:00:00', 1, 0, 0, 'kan', 24, 26, 3, '', 'Rottweiler', 'http://localhost/kutyakepek/116.jpg', '', '', '', 'VCm@iVS.com', '+36301075316'),
(4, 'Anasztázia', '2022-06-16 00:00:00', 1, 1, 1, 'szuka', 16, 3, 1, '', 'Nagy vendée-i griffon', 'http://localhost/kutyakepek/532.jpg', '', '', '', 'vmR@e8M7M1wMhl.com', '+36402662733'),
(5, 'Panka', '2023-08-01 00:00:00', 0, 1, 0, 'szuka', 30, 29, 2, '', 'Montenegrói hegyikopó', 'http://localhost/kutyakepek/447.jpg', '', '', '', '1mjfKtC@kkpZ0.com', '+36408912684'),
(6, 'Rénó', '2020-05-09 00:00:00', 1, 0, 1, 'szuka', 25, 28, 4, '', 'Shar pei', 'http://localhost/kutyakepek/234.jpg', '', '', '', '9ZpJYXetX7@aG7SG0e.com', '+36509360018'),
(7, 'Parádé', '2021-02-22 00:00:00', 0, 0, 0, 'kan', 4, 17, 1, '', 'Rövidszőrű isztriai kopó', 'http://localhost/kutyakepek/38.jpg', '', '', '', 'n7DlMX@7mef2.com', '+363030105'),
(8, 'Emil', '2022-10-17 00:00:00', 0, 0, 0, 'szuka', 28, 19, 1, '', 'West highland white terrier', 'http://localhost/kutyakepek/471.jpg', '', '', '', 'FonIYw3k@8U0X.com', '+36307321045'),
(9, 'Elíz', '2022-05-06 00:00:00', 1, 0, 0, 'szuka', 1, 20, 2, '', 'Berni pásztorkutya', 'http://localhost/kutyakepek/401.jpg', '', '', '', 'tsGbS@DZwc.com', '+36609547372'),
(10, 'Polli', '2021-02-12 00:00:00', 0, 1, 0, 'kan', 26, 27, 3, '', 'Havannai pincs', 'http://localhost/kutyakepek/454.jpg', '', '', '', '4Re10@Eo6ZnxDyc9.com', '+36306493220'),
(11, 'Gopher', '2023-05-19 00:00:00', 1, 0, 1, 'szuka', 24, 14, 3, '', 'Vesztfáliai tacskókopó', 'http://localhost/kutyakepek/535.jpg', '', '', '', '9o3Tb@btsB.com', '+3630622202'),
(12, 'Jasper', '2020-07-17 00:00:00', 1, 1, 1, 'szuka', 18, 10, 4, '', 'Kalag Tazi', 'http://localhost/kutyakepek/559.jpg', '', '', '', 'SDRKKwV41@RdA2.com', '+3650933465'),
(13, 'Meggi', '2022-01-15 00:00:00', 1, 1, 0, 'kan', 19, 5, 3, '', 'Pikárdiai juhászkutya', 'http://localhost/kutyakepek/183.jpg', '', '', '', 'xze@Yv6G2uVRM.com', '+36302128321'),
(14, 'Károly', '2021-02-22 00:00:00', 0, 0, 0, 'kan', 15, 29, 3, '', 'Drever', 'http://localhost/kutyakepek/470.jpg', '', '', '', 'KSgmd00n8@qTR.com', '+36603862120'),
(15, 'Foxi', '2022-11-14 00:00:00', 0, 0, 0, 'szuka', 13, 15, 3, '', 'Csau csau', 'http://localhost/kutyakepek/436.jpg', '', '', '', 'A2XHigtJx2@Ii68Jtm.com', '+36308103706'),
(16, 'Nimród', '2022-12-27 00:00:00', 1, 0, 1, 'szuka', 10, 2, 4, '', 'Nagy gascon-saintonge-i kopó', 'http://localhost/kutyakepek/123.jpg', '', '', '', 'mcZp6s8ag@xftYkud.com', '+36408113027'),
(17, 'Dorel', '2022-05-19 00:00:00', 1, 1, 1, 'szuka', 3, 5, 2, '', 'Csau csau', 'http://localhost/kutyakepek/414.jpg', '', '', '', 'PKX@ApTetOf9N1.com', '+36403654690'),
(18, 'Melák', '2022-03-23 00:00:00', 0, 1, 1, 'kan', 11, 18, 3, '', 'Akbash', 'http://localhost/kutyakepek/508.jpg', '', '', '', '79ye19@AI3xdy.com', '+36601391856'),
(19, 'Kelly', '2020-10-08 00:00:00', 0, 0, 1, 'szuka', 21, 9, 1, '', 'Francia kopó', 'http://localhost/kutyakepek/542.jpg', '', '', '', 'f7O3@3NE31wF.com', '+36507580100'),
(20, 'Panka', '2022-06-26 00:00:00', 0, 0, 1, 'szuka', 14, 5, 2, '', 'Holland smoushond', 'http://localhost/kutyakepek/193.jpg', '', '', '', 'F1vSIfg8@AHIzxd.com', '+3630587345'),
(21, 'Meggi', '2020-03-06 00:00:00', 1, 0, 1, 'szuka', 27, 8, 3, '', 'Szálkásszőrű német vizsla', 'http://localhost/kutyakepek/431.jpg', '', '', '', 'VnRyzD0X9m@SyIX.com', '+36408605927'),
(22, 'Stella', '2022-01-07 00:00:00', 0, 1, 1, 'kan', 21, 8, 2, '', 'Vörös ír szetter', 'http://localhost/kutyakepek/418.jpg', '', '', '', 'CQzlcon@CDnN7XH.com', '+366060598'),
(23, 'Pongó', '2020-10-14 00:00:00', 0, 1, 0, 'szuka', 1, 8, 4, '', 'Fehér-fekete francia kopó', 'http://localhost/kutyakepek/51.jpg', '', '', '', 'IN4pwRJat4@GdLYN.com', '+36605420827'),
(24, 'Jegecske', '2022-11-20 00:00:00', 0, 0, 0, 'kan', 1, 18, 3, '', 'Amerikai akita inu', 'http://localhost/kutyakepek/34.jpg', '', '', '', 'PRl1B1k7@hqbWn.com', '+36603943987'),
(25, 'Adél', '2021-09-01 00:00:00', 1, 1, 1, 'szuka', 7, 27, 2, '', 'Rhodesian ridgeback (Afrikai oroszlánkutya)', 'http://localhost/kutyakepek/468.jpg', '', '', '', 'loq@dFe.com', '+36307457230'),
(26, 'Bodri', '2023-08-24 00:00:00', 0, 0, 0, 'kan', 23, 4, 3, '', 'Bolognai pincs', 'http://localhost/kutyakepek/213.jpg', '', '', '', 'rGm7a7@wcBUsr7f.com', '+36604395495'),
(27, 'Jasper', '2022-07-07 00:00:00', 1, 0, 1, 'szuka', 15, 2, 4, '', 'Göndörszőrű retriever', 'http://localhost/kutyakepek/400.jpg', '', '', '', 'sl0XnmWJns@LyQX8JLP3.com', '+36605179661'),
(28, 'Neutron', '2022-02-26 00:00:00', 1, 1, 0, 'szuka', 18, 2, 3, '', 'King Shepherd', 'http://localhost/kutyakepek/115.jpg', '', '', '', '2wPTDizVG@s6E57Uy.com', '+36503855840'),
(29, 'Bohém', '2020-11-28 00:00:00', 1, 0, 0, 'kan', 5, 24, 2, '', 'Affenpinscher', 'http://localhost/kutyakepek/261.jpg', '', '', '', 'uzp@QoQG.com', '+364071324'),
(30, 'Károly', '2020-01-25 00:00:00', 0, 1, 0, 'kan', 21, 15, 4, '', 'Border terrier', 'http://localhost/kutyakepek/447.jpg', '', '', '', 'pPq1@xMF0f.com', '+36601534055'),
(31, 'Plutó', '2020-11-16 00:00:00', 1, 1, 1, 'kan', 3, 4, 3, '', 'Komondor  Magyarország', 'http://localhost/kutyakepek/175.jpg', '', '', '', 'Uutti@n4ynv9i8.com', '+36601181746'),
(32, 'Karcsi', '2020-12-27 00:00:00', 1, 0, 0, 'kan', 27, 5, 1, '', 'Havannai pincs', 'http://localhost/kutyakepek/31.jpg', '', '', '', 'Tqw8ALvw@r5p.com', '+36504147555'),
(33, 'Szerecsendió', '2022-05-08 00:00:00', 0, 1, 0, 'kan', 4, 20, 2, '', 'Amerikai pitbull terrier', 'http://localhost/kutyakepek/358.jpg', '', '', '', 'oGe03RLZGX@mbq.com', '+36508881917'),
(34, 'Zsuzsu', '2022-08-25 00:00:00', 0, 1, 0, 'szuka', 25, 11, 1, '', 'Perzsa agár', 'http://localhost/kutyakepek/457.jpg', '', '', '', '0DeZmKVlk@7ScXe1.com', '+36303944910'),
(35, 'Héra', '2022-07-10 00:00:00', 1, 1, 1, 'kan', 26, 15, 3, '', 'Moszkvai hosszú szőrű toy terrier', 'http://localhost/kutyakepek/415.jpg', '', '', '', 'IwZ@GN0aAdgG.com', '+36305956874'),
(36, 'Mézeske', '2021-10-16 00:00:00', 1, 1, 0, 'szuka', 11, 16, 2, '', 'Amerikai Bulldog', 'http://localhost/kutyakepek/76.jpg', '', '', '', 'WT9Be@jlp.com', '+36508449111'),
(37, 'Kenny', '2023-07-02 00:00:00', 0, 0, 1, 'szuka', 6, 3, 4, '', 'Utonagan', 'http://localhost/kutyakepek/544.jpg', '', '', '', 'q34Axz@Owx.com', '+36307380479'),
(38, 'Molly', '2022-09-18 00:00:00', 0, 0, 0, 'kan', 8, 14, 2, '', 'Erdélyi kopó  Magyarország', 'http://localhost/kutyakepek/5.jpg', '', '', '', 'f6i@w6765mp7IZ.com', '+36501834209'),
(39, 'Amanda', '2020-03-23 00:00:00', 0, 0, 0, 'kan', 13, 9, 4, '', 'Szetter', 'http://localhost/kutyakepek/78.jpg', '', '', '', 'k9cwbiI5@tXYmE.com', '+36605337740'),
(40, 'Pongó', '2023-12-21 00:00:00', 0, 0, 0, 'szuka', 3, 2, 1, '', 'Isztriai kopó', 'http://localhost/kutyakepek/258.jpg', '', '', '', 'x7YD@DQkFA6U.com', '+36505706844'),
(41, 'Pisze', '2023-12-10 00:00:00', 0, 0, 1, 'szuka', 23, 13, 3, '', 'Göndörszőrű retriever', 'http://localhost/kutyakepek/75.jpg', '', '', '', '2Uz7@A17Cr.com', '+36606739915'),
(42, 'Kloé', '2022-04-18 00:00:00', 1, 1, 0, 'szuka', 28, 27, 3, '', 'Moszkvai hosszú szőrű toy terrier', 'http://localhost/kutyakepek/288.jpg', '', '', '', 'grngL@Z8rL.com', '+36607476164'),
(43, 'Zsömi', '2023-04-12 00:00:00', 1, 1, 1, 'kan', 23, 27, 1, '', 'Trikolor nagy angol-francia kopó', 'http://localhost/kutyakepek/119.jpg', '', '', '', 'KOKSYV@bMzv6v.com', '+36404436834'),
(44, 'Hobbit', '2022-11-27 00:00:00', 1, 1, 1, 'kan', 9, 27, 1, '', 'Pomerániai törpespicc', 'http://localhost/kutyakepek/75.jpg', '', '', '', 'OJhdog@Lp14VFx.com', '+36609491750'),
(45, 'Mambó', '2020-04-16 00:00:00', 1, 1, 0, 'kan', 15, 25, 3, '', 'Basset hound', 'http://localhost/kutyakepek/362.jpg', '', '', '', 'C6rOHx6@kFzywinj1.com', '+36509137040'),
(46, 'Szetti', '2023-04-03 00:00:00', 1, 1, 1, 'szuka', 23, 18, 1, '', 'Tátrai juhászkutya', 'http://localhost/kutyakepek/250.jpg', '', '', '', 'Xz6L@FyKPRFBz.com', '+36404926333'),
(47, 'Kuku', '2023-07-07 00:00:00', 0, 0, 1, 'kan', 30, 14, 3, '', 'Tacskó', 'http://localhost/kutyakepek/183.jpg', '', '', '', 'Djg1Jqufu@5Ua4q4oQ.com', '+36606856908'),
(48, 'Edith', '2020-02-22 00:00:00', 0, 0, 1, 'szuka', 17, 23, 2, '', 'Perui meztelen kutya', 'http://localhost/kutyakepek/524.jpg', '', '', '', 'Mfm4U1ubF@B2TLNv1O.com', '+36605992805'),
(49, 'Keksz', '2023-11-05 00:00:00', 0, 0, 0, 'kan', 23, 9, 4, '', 'Skót juhászkutya', 'http://localhost/kutyakepek/279.jpg', '', '', '', 'ka7K@c3Ve.com', '+36607681064'),
(50, 'Kefir', '2023-12-13 00:00:00', 1, 0, 1, 'kan', 11, 2, 4, '', 'Brie-i juhászkutya', 'http://localhost/kutyakepek/76.jpg', '', '', '', '6i27Dl@tXDEhjpUga.com', '+36303989731'),
(51, 'Leila', '2021-05-04 00:00:00', 0, 1, 1, 'szuka', 12, 19, 4, '', 'Mudhol Hound', 'http://localhost/kutyakepek/280.jpg', '', '', '', 'y0B10S@9jRF.com', '+36308582871'),
(52, 'Melák', '2021-03-14 00:00:00', 1, 0, 0, 'kan', 19, 4, 3, '', 'Bernáthegyi', 'http://localhost/kutyakepek/472.jpg', '', '', '', '1txtp0TQ@iRO.com', '+36606761339'),
(53, 'Zorró', '2020-12-14 00:00:00', 1, 1, 1, 'kan', 8, 17, 1, '', 'Landseer', 'http://localhost/kutyakepek/101.jpg', '', '', '', 'iiux@FrM3.com', '+36401774838'),
(54, 'Rea', '2021-03-13 00:00:00', 1, 1, 1, 'kan', 5, 11, 1, '', 'Hovawart', 'http://localhost/kutyakepek/87.jpg', '', '', '', 'w5ZC@voxLCx7.com', '+3640529569'),
(55, 'Lasszó', '2023-02-03 00:00:00', 1, 1, 0, 'kan', 7, 4, 3, '', 'Welsh springer spániel', 'http://localhost/kutyakepek/395.jpg', '', '', '', 'M7m@1qoEC.com', '+36304485515'),
(56, 'Desiré', '2020-02-01 00:00:00', 0, 1, 1, 'szuka', 13, 12, 3, '', 'Ír farkaskutya', 'http://localhost/kutyakepek/109.jpg', '', '', '', '1Gonwccr@70X.com', '+36301014119'),
(57, 'Pötyi', '2023-08-09 00:00:00', 0, 0, 1, 'kan', 6, 15, 3, '', 'Nivernais-i griffon', 'http://localhost/kutyakepek/503.jpg', '', '', '', 'LGLYZ@UexJH9d.com', '+36606699702'),
(58, 'Nina', '2020-07-24 00:00:00', 1, 1, 0, 'kan', 23, 15, 1, '', 'Norwich terrier', 'http://localhost/kutyakepek/9.jpg', '', '', '', '1SItZUgpI@OSY.com', '+36409982259'),
(59, 'Szofi', '2022-03-04 00:00:00', 0, 1, 0, 'szuka', 20, 14, 3, '', 'Törpespicc', 'http://localhost/kutyakepek/557.jpg', '', '', '', '9O4JrP@xnBscwa7Er.com', '+36504199081'),
(60, 'Jupiter', '2022-03-03 00:00:00', 0, 1, 1, 'szuka', 5, 7, 4, '', 'Kanári-szigeteki kopó', 'http://localhost/kutyakepek/387.jpg', '', '', '', 'RzEmx2g@GozQ.com', '+36609804751'),
(61, 'Zeusz', '2021-05-02 00:00:00', 0, 1, 0, 'szuka', 24, 4, 4, '', 'Olasz kopó', 'http://localhost/kutyakepek/321.jpg', '', '', '', 'Xf2drw5@yj8RZj.com', '+36504948654'),
(62, 'Bohém', '2021-07-07 00:00:00', 1, 1, 1, 'kan', 27, 4, 3, '', 'Törpe schnauzer', 'http://localhost/kutyakepek/331.jpg', '', '', '', 'YrSoPc@09E.com', '+36606012689'),
(63, 'Aramis', '2022-07-14 00:00:00', 0, 0, 0, 'szuka', 28, 30, 3, '', 'Welsh corgi', 'http://localhost/kutyakepek/389.jpg', '', '', '', 'VmH@urMmE36.com', '+3630999514'),
(64, 'Tofi', '2023-12-10 00:00:00', 0, 1, 0, 'szuka', 27, 3, 1, '', 'Délorosz juhászkutya', 'http://localhost/kutyakepek/180.jpg', '', '', '', 'vaixTOP@QLjBZy.com', '+36309521075'),
(65, 'Kenny', '2022-08-19 00:00:00', 0, 1, 1, 'kan', 8, 14, 4, '', 'Vidrakopó', 'http://localhost/kutyakepek/437.jpg', '', '', '', 'Dk0@7RC2.com', '+36507523628'),
(66, 'Azték', '2023-09-18 00:00:00', 1, 0, 0, 'szuka', 17, 28, 3, '', 'Hortaye Borzaya (Chortaj)', 'http://localhost/kutyakepek/167.jpg', '', '', '', 'PmjUwb@xzZGl.com', '+36602162021'),
(67, 'Teddy', '2023-07-07 00:00:00', 1, 1, 1, 'kan', 16, 9, 4, '', 'Atlaszi hegyikutya', 'http://localhost/kutyakepek/174.jpg', '', '', '', '9oA9yueA@DORr6v.com', '+36404631879'),
(68, 'Nina', '2022-01-11 00:00:00', 0, 1, 1, 'kan', 21, 24, 1, '', 'Dobermann', 'http://localhost/kutyakepek/197.jpg', '', '', '', 'OsWZ@N6x.com', '+36306330120'),
(69, 'Ofra', '2020-06-02 00:00:00', 1, 0, 0, 'kan', 9, 10, 3, '', 'Berni kopó', 'http://localhost/kutyakepek/122.jpg', '', '', '', 'lb47oswTy@cJEoG.com', '+36306037331'),
(70, 'Smokie', '2022-01-09 00:00:00', 0, 1, 0, 'szuka', 13, 20, 3, '', 'Szibériai husky', 'http://localhost/kutyakepek/167.jpg', '', '', '', 'T7jF@zKPaSG.com', '+36302149967'),
(71, 'Mazsola', '2020-04-28 00:00:00', 0, 1, 1, 'kan', 5, 13, 3, '', 'Wolfspitz', 'http://localhost/kutyakepek/423.jpg', '', '', '', 'BBbDTL9r@AKaxw.com', '+36304411158'),
(72, 'Kloé', '2023-04-06 00:00:00', 1, 0, 1, 'kan', 22, 5, 2, '', 'Tervueren', 'http://localhost/kutyakepek/59.jpg', '', '', '', 'RMEBO6II@Aje46bEa.com', '+36406667954'),
(73, 'Mazsola', '2021-01-26 00:00:00', 1, 0, 1, 'kan', 22, 30, 3, '', 'Cardigan welsh corgi', 'http://localhost/kutyakepek/352.jpg', '', '', '', 'ZV1MoQ@ZbELGp.com', '+36305748711'),
(74, 'Panka', '2020-07-17 00:00:00', 0, 1, 0, 'szuka', 3, 21, 4, '', 'Tacskó', 'http://localhost/kutyakepek/225.jpg', '', '', '', 'M9MDTubUtx@dL5WKfcsiH.com', '+36308225745'),
(75, 'Kevin', '2023-08-18 00:00:00', 1, 1, 0, 'szuka', 24, 21, 3, '', 'Rouilers-i pászorkutya', 'http://localhost/kutyakepek/98.jpg', '', '', '', 'WGUXO6Y@zWh9Cktd.com', '+36403331523'),
(76, 'Grész', '2020-11-07 00:00:00', 1, 1, 0, 'kan', 27, 8, 4, '', 'bolonka francuska', 'http://localhost/kutyakepek/53.jpg', '', '', '', 'x424wB@WmAajLSHZ.com', '+36402334083'),
(77, 'Nessy', '2022-12-24 00:00:00', 1, 0, 0, 'szuka', 12, 13, 1, '', 'Vendée-i griffonkopó', 'http://localhost/kutyakepek/254.jpg', '', '', '', 'aMI293f@MWQB17wXF.com', '+36609721179'),
(78, 'Azték', '2021-01-02 00:00:00', 0, 0, 0, 'kan', 13, 27, 4, '', 'Keeshond', 'http://localhost/kutyakepek/428.jpg', '', '', '', 'aV70@5lT.com', '+36604633439'),
(79, 'Limbó', '2022-07-22 00:00:00', 1, 1, 1, 'szuka', 28, 27, 1, '', 'Pembroke welsh corgi', 'http://localhost/kutyakepek/64.jpg', '', '', '', '6sdjtQlm0@xsWjMc7.com', '+36608437742'),
(80, 'Leó', '2021-09-13 00:00:00', 1, 1, 1, 'kan', 2, 4, 3, '', 'Belga griffon', 'http://localhost/kutyakepek/12.jpg', '', '', '', 'oMPYkL3ExS@uBss1he.com', '+36502793698'),
(81, 'Morti', '2020-06-10 00:00:00', 0, 0, 1, 'kan', 29, 3, 2, '', 'Eurázsiai', 'http://localhost/kutyakepek/451.jpg', '', '', '', 'uqirUh@tEgLyTzTb.com', '+36407864276'),
(82, 'Mazsola', '2022-09-12 00:00:00', 1, 1, 0, 'szuka', 26, 12, 1, '', 'Drenti vizsla', 'http://localhost/kutyakepek/478.jpg', '', '', '', 'ErBS0@0GL.com', '+36309682345'),
(83, 'Boomer', '2020-06-06 00:00:00', 1, 1, 0, 'szuka', 5, 7, 1, '', 'Drótszőrű német vizsla', 'http://localhost/kutyakepek/8.jpg', '', '', '', 'uVD@1pDr4TqfR.com', '+36308049367'),
(84, 'Melák', '2022-10-10 00:00:00', 0, 0, 0, 'kan', 12, 26, 2, '', 'Perzsa agár', 'http://localhost/kutyakepek/220.jpg', '', '', '', 'lA8v@Lstu77hc7d.com', '+36408436414'),
(85, 'Jabba', '2022-06-05 00:00:00', 0, 0, 0, 'kan', 6, 12, 4, '', 'Kis angol terrier', 'http://localhost/kutyakepek/305.jpg', '', '', '', 'GvzMz@d1LXeccr.com', '+3650494066'),
(86, 'Dorel', '2023-07-15 00:00:00', 1, 0, 1, 'kan', 9, 30, 3, '', 'Szerb kopó', 'http://localhost/kutyakepek/150.jpg', '', '', '', 'Yw8@Wlu.com', '+3630536305'),
(87, 'Pedró', '2022-09-07 00:00:00', 1, 1, 1, 'kan', 7, 7, 3, '', 'King Shepherd', 'http://localhost/kutyakepek/234.jpg', '', '', '', 'TJy2@ne5Xen.com', '+36604169236'),
(88, 'Sonny', '2020-03-09 00:00:00', 1, 1, 0, 'szuka', 1, 1, 3, '', 'Barbet', 'http://localhost/kutyakepek/52.jpg', '', '', '', 'LZTu57Sas@0pDRGvP.com', '+36405248743'),
(89, 'Ollé', '2023-04-11 00:00:00', 0, 1, 1, 'szuka', 13, 12, 3, '', 'Nagy münsterlandi vizsla', 'http://localhost/kutyakepek/506.jpg', '', '', '', 'vCAb0i@YbiJN5.com', '+36509736386'),
(90, 'Okonor', '2020-10-07 00:00:00', 0, 0, 0, 'szuka', 19, 16, 4, '', 'Staffordshire bullterrier', 'http://localhost/kutyakepek/306.jpg', '', '', '', 'g0Xio@5OQS.com', '+36606530827'),
(91, 'Jázmina', '2020-05-09 00:00:00', 0, 0, 0, 'szuka', 9, 10, 1, '', 'Ariége-i kopó', 'http://localhost/kutyakepek/195.jpg', '', '', '', 'IBqa@igUJ3Fux.com', '+36503946402'),
(92, 'Fabula', '2021-10-13 00:00:00', 0, 0, 1, 'szuka', 19, 20, 3, '', 'Angol szetter', 'http://localhost/kutyakepek/264.jpg', '', '', '', 'InoRz@NYSgBaY0Pf.com', '+3630453659'),
(93, 'Sonny', '2021-01-14 00:00:00', 0, 1, 1, 'szuka', 17, 9, 3, '', 'Berni pásztorkutya', 'http://localhost/kutyakepek/96.jpg', '', '', '', 'F5DBOg22@lMu.com', '+36604604608'),
(94, 'Pisze', '2020-12-19 00:00:00', 0, 1, 0, 'kan', 23, 15, 2, '', 'Szálkásszőrű német vizsla', 'http://localhost/kutyakepek/10.jpg', '', '', '', 'PHcI@ipATIJd.com', '+36307949504'),
(95, 'Csülök', '2022-06-13 00:00:00', 0, 0, 0, 'kan', 2, 14, 4, '', 'Holland juhászkutya', 'http://localhost/kutyakepek/187.jpg', '', '', '', 'IQZeQvK@Jdu.com', '+36404865552'),
(96, 'Jázmina', '2022-11-09 00:00:00', 1, 1, 1, 'szuka', 26, 14, 3, '', 'Catahoulai leopárdkutya', 'http://localhost/kutyakepek/42.jpg', '', '', '', 'VsbNbVnc@mUlawtBxn.com', '+36509469866'),
(97, 'Lassie', '2022-05-15 00:00:00', 1, 1, 0, 'szuka', 30, 28, 2, '', 'Törpespitz', 'http://localhost/kutyakepek/14.jpg', '', '', '', 'rEhZ@QCr.com', '+36507953103'),
(98, 'Cherie', '2020-02-16 00:00:00', 1, 0, 1, 'kan', 1, 4, 3, '', 'Bichon havanese', 'http://localhost/kutyakepek/444.jpg', '', '', '', 'bURmv@QGSuJrv.com', '+36608491305'),
(99, 'Inzy', '2023-04-15 00:00:00', 0, 1, 0, 'szuka', 6, 30, 2, '', 'Amerikai akita inu', 'http://localhost/kutyakepek/516.jpg', '', '', '', 'GCqd@aJHuNg4baw.com', '+36609237772'),
(100, 'Goldy', '2022-01-03 00:00:00', 1, 0, 1, 'szuka', 18, 26, 1, '', 'Kunming kutya', 'http://localhost/kutyakepek/430.jpg', '', '', '', '4Z7qBaefI2@3Pbo8E5O.com', '+36307995754'),
(101, 'Pisze', '2020-08-13 00:00:00', 1, 1, 0, 'szuka', 3, 24, 3, '', 'Rottweiler', 'http://localhost/kutyakepek/364.jpg', '', '', '', 'KBKW6OQB@gcc.com', '+36608191824'),
(102, 'Adél', '2023-07-05 00:00:00', 1, 1, 1, 'kan', 24, 8, 3, '', 'Japán terrier', 'http://localhost/kutyakepek/164.jpg', '', '', '', '3JNU3@GeCvjsM6.com', '+36603219228'),
(103, 'Lucy', '2023-11-17 00:00:00', 0, 1, 0, 'kan', 13, 8, 1, '', 'Vörös ír szetter', 'http://localhost/kutyakepek/90.jpg', '', '', '', 'IeuFs@mHAKBY.com', '+36603053991'),
(104, 'Inez', '2022-11-01 00:00:00', 1, 1, 1, 'kan', 24, 15, 3, '', 'Lancashire heeler', 'http://localhost/kutyakepek/71.jpg', '', '', '', 'aBjUgh@0tnUjfPDdN.com', '+36602476123'),
(105, 'Behemót', '2022-11-01 00:00:00', 1, 1, 1, 'szuka', 12, 13, 1, '', 'Affenpinscher', 'http://localhost/kutyakepek/195.jpg', '', '', '', 'mDYJT@XPMkNpM517.com', '+36304135823'),
(106, 'Orchidea', '2020-02-15 00:00:00', 0, 0, 1, 'szuka', 4, 14, 4, '', 'Nagy münsterlandi vizsla', 'http://localhost/kutyakepek/419.jpg', '', '', '', 'Pqk@8FIEVwv.com', '+36607089953'),
(107, 'Vitéz', '2020-10-23 00:00:00', 1, 1, 1, 'kan', 5, 9, 2, '', 'Boykin spániel', 'http://localhost/kutyakepek/416.jpg', '', '', '', '8hck0@d9ULIE4.com', '+36606969370'),
(108, 'Neutron', '2022-08-25 00:00:00', 0, 0, 1, 'szuka', 23, 15, 4, '', 'Francia bulldog', 'http://localhost/kutyakepek/491.jpg', '', '', '', 'htpU@LHXOdiuEH.com', '+36403118668'),
(109, 'Lewis', '2020-07-25 00:00:00', 0, 1, 0, 'szuka', 5, 15, 3, '', 'Bordeaux-i dog', 'http://localhost/kutyakepek/523.jpg', '', '', '', 'x4cCybT@I9SBqyCVLV.com', '+36402495494'),
(110, 'Pajtás', '2022-03-22 00:00:00', 0, 1, 0, 'szuka', 13, 15, 3, '', 'Cimarrón Uruguayo', 'http://localhost/kutyakepek/230.jpg', '', '', '', 'uZPg9@dGs.com', '+36506101632'),
(111, 'Sparco', '2021-02-02 00:00:00', 1, 1, 1, 'szuka', 26, 8, 1, '', 'Szlovák kopó', 'http://localhost/kutyakepek/399.jpg', '', '', '', '8G8zhp2q@Rvigt.com', '+36305105824'),
(112, 'Suhanc', '2022-04-19 00:00:00', 0, 0, 0, 'szuka', 1, 3, 3, '', 'Schapendoes', 'http://localhost/kutyakepek/198.jpg', '', '', '', 'Devj7k@Jf4z5Csk.com', '+36301101621'),
(113, 'Pitti', '2021-12-07 00:00:00', 0, 0, 1, 'szuka', 19, 4, 1, '', 'Longdog', 'http://localhost/kutyakepek/165.jpg', '', '', '', '3I2aN1n@yrVCC.com', '+36403631616'),
(114, 'Pénzecske', '2022-06-20 00:00:00', 0, 0, 0, 'kan', 8, 24, 1, '', 'Szíriai pásztorkutya', 'http://localhost/kutyakepek/416.jpg', '', '', '', 'WvQgqgQ@CZKr.com', '+36605180817'),
(115, 'Fáraó', '2023-02-07 00:00:00', 0, 0, 1, 'szuka', 17, 9, 1, '', 'Új-guineai éneklő kutya', 'http://localhost/kutyakepek/180.jpg', '', '', '', '3POecgt@KsS.com', '+36308908877'),
(116, 'Narancs', '2020-09-01 00:00:00', 0, 0, 0, 'szuka', 10, 9, 3, '', 'Vidrakopó', 'http://localhost/kutyakepek/138.jpg', '', '', '', '0NvuSy@mm2OIO.com', '+36403287179'),
(117, 'Kelly', '2020-09-07 00:00:00', 0, 1, 0, 'kan', 8, 29, 4, '', 'Lengyel kopó', 'http://localhost/kutyakepek/369.jpg', '', '', '', 'JaC@Za6IZzD1o.com', '+36404319627'),
(118, 'Okonor', '2021-01-01 00:00:00', 1, 1, 1, 'szuka', 27, 5, 3, '', 'Hygen kopó', 'http://localhost/kutyakepek/536.jpg', '', '', '', 'K6l@XwbfB.com', '+36409342819'),
(119, 'Sátán', '2022-02-26 00:00:00', 0, 1, 1, 'kan', 22, 26, 4, '', 'Osztrák pinscher', 'http://localhost/kutyakepek/530.jpg', '', '', '', 'GlH@wle5rqo.com', '+36304700326'),
(120, 'Vacak', '2020-04-15 00:00:00', 0, 0, 1, 'kan', 9, 16, 1, '', 'Mallorcai masztiff', 'http://localhost/kutyakepek/284.jpg', '', '', '', 'GaMD2@Wbxlv8.com', '+36506437498'),
(121, 'Héra', '2022-06-09 00:00:00', 1, 0, 0, 'szuka', 4, 6, 3, '', 'Kangal', 'http://localhost/kutyakepek/342.jpg', '', '', '', 'JxwhHc0aAr@fcxB.com', '+36602797907'),
(122, 'Oszkár', '2023-07-04 00:00:00', 1, 1, 0, 'szuka', 2, 15, 3, '', 'Griffon', 'http://localhost/kutyakepek/73.jpg', '', '', '', 'gqe@kJJ1.com', '+36307977403'),
(123, 'Napóleon', '2021-06-05 00:00:00', 1, 0, 0, 'szuka', 20, 27, 3, '', 'Újfundlandi', 'http://localhost/kutyakepek/314.jpg', '', '', '', 'ZCU8OW@FOGo.com', '+36406839269'),
(124, 'Morti', '2021-04-18 00:00:00', 0, 0, 1, 'szuka', 9, 25, 2, '', 'Pumi', 'http://localhost/kutyakepek/481.jpg', '', '', '', 'bbeK7@cuFfq0mG9.com', '+36402612619'),
(125, 'Lilla', '2021-08-05 00:00:00', 1, 0, 0, 'kan', 14, 9, 1, '', 'Orosz toy terrier', 'http://localhost/kutyakepek/79.jpg', '', '', '', 'MmU@LTIV.com', '+36301645922'),
(126, 'Iván', '2023-11-22 00:00:00', 0, 0, 0, 'szuka', 4, 9, 2, '', 'Norwich terrier', 'http://localhost/kutyakepek/450.jpg', '', '', '', 'szGP@Lrtmo5HD.com', '+36609284247'),
(127, 'Lexi', '2023-02-12 00:00:00', 0, 0, 1, 'szuka', 10, 4, 3, '', 'Bergamói juhászkutya', 'http://localhost/kutyakepek/59.jpg', '', '', '', 'CGb@2cI4V0.com', '+36607072782'),
(128, 'Frida', '2022-03-04 00:00:00', 1, 1, 1, 'kan', 5, 25, 3, '', 'Shiloh juhászkutya', 'http://localhost/kutyakepek/558.jpg', '', '', '', 'OfZ@8bop.com', '+36509422416'),
(129, 'Amaya', '2020-09-21 00:00:00', 1, 0, 0, 'szuka', 16, 29, 3, '', 'Border terrier', 'http://localhost/kutyakepek/433.jpg', '', '', '', 'krrm@Sfu.com', '+36302441210'),
(130, 'Éva', '2023-12-21 00:00:00', 1, 1, 0, 'szuka', 14, 5, 3, '', 'Abruzzói juhászkutya', 'http://localhost/kutyakepek/254.jpg', '', '', '', 'VVR0g9skck@lNg4wge.com', '+36303177101'),
(131, 'Shiva', '2022-12-15 00:00:00', 0, 1, 0, 'kan', 7, 27, 3, '', 'Boerboel', 'http://localhost/kutyakepek/348.jpg', '', '', '', 'ukfgmasm@xLF.com', '+36309733014'),
(132, 'Furby', '2022-09-07 00:00:00', 0, 0, 0, 'szuka', 28, 10, 4, '', 'Porcelánkopó', 'http://localhost/kutyakepek/526.jpg', '', '', '', 'FOBrlIqmY@kUX1eJj.com', '+36409722988'),
(133, 'Teo', '2023-11-18 00:00:00', 0, 0, 1, 'szuka', 13, 15, 3, '', 'Si-cu', 'http://localhost/kutyakepek/153.jpg', '', '', '', 'uF0A7Uu@2yqYHo1D.com', '+36504915239'),
(134, 'Pedró', '2023-02-18 00:00:00', 0, 1, 0, 'szuka', 21, 7, 3, '', 'Bukovinai pásztorkutya', 'http://localhost/kutyakepek/85.jpg', '', '', '', 'NPiUl@yaHK.com', '+36308419711'),
(135, 'Nessy', '2021-02-25 00:00:00', 0, 0, 1, 'szuka', 24, 26, 3, '', 'Kishu ken', 'http://localhost/kutyakepek/366.jpg', '', '', '', '9tzD4@QVGqml4.com', '+36405467646'),
(136, 'Vénusz', '2023-10-07 00:00:00', 1, 0, 1, 'kan', 28, 26, 3, '', 'Fehér-fekete nagy angol-francia kopó', 'http://localhost/kutyakepek/325.jpg', '', '', '', 'd8Eomb@fzsVi.com', '+3650680732'),
(137, 'Adolf', '2023-11-05 00:00:00', 0, 1, 1, 'szuka', 14, 9, 1, '', 'Sarplaninai juhászkutya', 'http://localhost/kutyakepek/295.jpg', '', '', '', '7kcUrft0@1gEtGPG82e.com', '+36603775503'),
(138, 'Piszok', '2022-12-22 00:00:00', 1, 0, 0, 'kan', 10, 20, 4, '', 'Bichon bolognese', 'http://localhost/kutyakepek/494.jpg', '', '', '', '97DI@9dZvCfQA.com', '+36604346832'),
(139, 'Gingy', '2023-01-05 00:00:00', 0, 0, 1, 'szuka', 25, 5, 2, '', 'Perui meztelen kutya', 'http://localhost/kutyakepek/330.jpg', '', '', '', 'lMJwp0Sf44@HyYQDZfot.com', '+36605809155'),
(140, 'Rüszi', '2020-02-19 00:00:00', 0, 1, 1, 'szuka', 11, 23, 2, '', 'Boykin spániel', 'http://localhost/kutyakepek/0.jpg', '', '', '', 'Zsrw@dF8vUufGz.com', '+3660768288'),
(141, 'Pongó', '2022-07-06 00:00:00', 1, 1, 1, 'szuka', 30, 29, 4, '', 'Berni pásztorkutya', 'http://localhost/kutyakepek/37.jpg', '', '', '', 'SbH@94H9E.com', '+36403805556'),
(142, 'Wolf', '2020-01-15 00:00:00', 1, 0, 0, 'kan', 25, 14, 3, '', 'Mexikói meztelen kutya', 'http://localhost/kutyakepek/266.jpg', '', '', '', 'qmKEteE0X@9YDJX.com', '+36403039080'),
(143, 'Horka', '2023-05-23 00:00:00', 1, 1, 1, 'szuka', 21, 29, 3, '', 'Bulldog', 'http://localhost/kutyakepek/464.jpg', '', '', '', 'asGkBmG@yBJfDgOrmB.com', '+36605385400'),
(144, 'Oszkár', '2021-11-05 00:00:00', 1, 0, 0, 'kan', 27, 26, 1, '', 'Kanadai eszkimó kutya', 'http://localhost/kutyakepek/358.jpg', '', '', '', 'GhyNcA@oydjgQN.com', '+36509754519'),
(145, 'Kleó', '2020-11-20 00:00:00', 0, 0, 1, 'szuka', 5, 29, 3, '', 'Kis vendée-i griffon basset', 'http://localhost/kutyakepek/246.jpg', '', '', '', '6R5U@xCqe2m3.com', '+36401224918'),
(146, 'Desiré', '2022-01-27 00:00:00', 1, 0, 1, 'kan', 5, 3, 3, '', 'Belga vizsla', 'http://localhost/kutyakepek/238.jpg', '', '', '', 'Dk9@ciXkWplss.com', '+36502024923'),
(147, 'Elvis', '2020-11-28 00:00:00', 0, 1, 0, 'szuka', 26, 28, 3, '', 'Bearded collie', 'http://localhost/kutyakepek/319.jpg', '', '', '', 'QCI0CZY@CVZTUFvsx.com', '+36306756441'),
(148, 'Úrfi', '2020-06-02 00:00:00', 0, 0, 1, 'szuka', 20, 5, 4, '', 'Mudhol Hound', 'http://localhost/kutyakepek/232.jpg', '', '', '', 'Pwga@kEBzt5qg.com', '+36407650512'),
(149, 'Anasztázia', '2020-01-18 00:00:00', 0, 0, 1, 'kan', 1, 1, 1, '', 'Ónémet juhászkutya', 'http://localhost/kutyakepek/123.jpg', '', '', '', 'aKH8QYhSbs@GOI.com', '+36404306978'),
(150, 'Lolka', '2020-06-21 00:00:00', 0, 1, 1, 'kan', 10, 27, 3, '', 'Nagy angol-francia kopó', 'http://localhost/kutyakepek/8.jpg', '', '', '', 'TaKa9rz7@iaGnHl.com', '+36607610133'),
(151, 'Beethoven', '2022-11-10 00:00:00', 1, 0, 1, 'szuka', 4, 15, 1, '', 'Rat terrier', 'http://localhost/kutyakepek/106.jpg', '', '', '', '5TvWz56@Okedc.com', '+36605065235'),
(152, 'Jabba', '2020-12-07 00:00:00', 1, 0, 1, 'szuka', 2, 11, 2, '', 'Drenti vizsla', 'http://localhost/kutyakepek/547.jpg', '', '', '', 'U6YOgG@2fQ.com', '+3630849480'),
(153, 'Sziszi', '2022-01-02 00:00:00', 0, 1, 1, 'szuka', 16, 23, 3, '', 'Délorosz juhászkutya', 'http://localhost/kutyakepek/448.jpg', '', '', '', 'yTMioxdsL@DsiwE.com', '+36407387665'),
(154, 'Lady', '2023-06-19 00:00:00', 1, 0, 1, 'szuka', 28, 13, 3, '', 'Majestic tree hound', 'http://localhost/kutyakepek/8.jpg', '', '', '', 'Krq@a2s7e.com', '+36409521171'),
(155, 'Szerecsendió', '2021-09-01 00:00:00', 0, 1, 1, 'kan', 8, 12, 3, '', 'Bullmasztiff', 'http://localhost/kutyakepek/49.jpg', '', '', '', 'd3l@5l4.com', '+36608886521'),
(156, 'Plutó', '2021-08-17 00:00:00', 1, 0, 1, 'kan', 9, 21, 3, '', 'Szlovák kopó', 'http://localhost/kutyakepek/222.jpg', '', '', '', 'GqJvcV@GhhJm4.com', '+36604793231'),
(157, 'Zafír', '2022-06-01 00:00:00', 0, 1, 0, 'szuka', 2, 19, 1, '', 'Rottweiler', 'http://localhost/kutyakepek/531.jpg', '', '', '', 'Pa0PNmM@7Qf.com', '+36405846554'),
(158, 'Melák', '2023-11-18 00:00:00', 0, 1, 0, 'szuka', 16, 20, 3, '', 'Kangal', 'http://localhost/kutyakepek/134.jpg', '', '', '', 'Udgqkc@yM1qjpTBT.com', '+36604213283'),
(159, 'Shiva', '2020-05-25 00:00:00', 1, 0, 1, 'szuka', 10, 10, 2, '', 'Rövidszőrű skót juhászkutya', 'http://localhost/kutyakepek/301.jpg', '', '', '', 'utxn@levjEvoP.com', '+36604938025'),
(160, 'Glédis', '2021-03-18 00:00:00', 1, 0, 0, 'szuka', 10, 13, 2, '', 'Billy', 'http://localhost/kutyakepek/374.jpg', '', '', '', 'zBO8uniN@7EZP.com', '+36506923508'),
(161, 'Gerry', '2020-09-16 00:00:00', 0, 0, 0, 'szuka', 5, 5, 3, '', 'Welsh corgi', 'http://localhost/kutyakepek/371.jpg', '', '', '', 'iLS@WqdO3Msj.com', '+36505009287'),
(162, 'Károly', '2020-10-10 00:00:00', 1, 1, 0, 'szuka', 10, 8, 1, '', 'Francia spániel', 'http://localhost/kutyakepek/385.jpg', '', '', '', 'p1LVV@1T6Kg.com', '+36401449059'),
(163, 'Mackó', '2022-07-26 00:00:00', 0, 0, 0, 'kan', 9, 11, 2, '', 'Jämthund', 'http://localhost/kutyakepek/113.jpg', '', '', '', 'aRbCU1rql7@uD0BvpkZ.com', '+36408906340'),
(164, 'Karesz', '2023-06-11 00:00:00', 1, 1, 0, 'kan', 13, 1, 3, '', 'Berni kopó', 'http://localhost/kutyakepek/90.jpg', '', '', '', 'Elir@072scBoEc.com', '+36504010473'),
(165, 'Szultán', '2022-09-11 00:00:00', 0, 0, 1, 'kan', 8, 5, 2, '', 'Angol pointer', 'http://localhost/kutyakepek/356.jpg', '', '', '', 'wIQiIA@VzIoNNW6.com', '+36507998410'),
(166, 'Jasper', '2020-10-09 00:00:00', 0, 0, 0, 'szuka', 1, 29, 1, '', 'Rövidszőrű isztriai kopó', 'http://localhost/kutyakepek/177.jpg', '', '', '', 'mTlFyDdrwU@mMlSVX1y9.com', '+36301649617'),
(167, 'Mimi', '2021-12-01 00:00:00', 0, 0, 1, 'kan', 26, 21, 2, '', 'Ausztrál terrier', 'http://localhost/kutyakepek/224.jpg', '', '', '', '7lw@yJv.com', '+36308934937'),
(168, 'Lolka', '2020-11-10 00:00:00', 1, 0, 1, 'szuka', 21, 30, 2, '', 'Fáraókutya', 'http://localhost/kutyakepek/283.jpg', '', '', '', 'veu9@KqicKwIYFl.com', '+36508689317'),
(169, 'Vadóc', '2021-07-06 00:00:00', 0, 0, 1, 'kan', 6, 13, 3, '', 'Chesapeake Bay retriever', 'http://localhost/kutyakepek/132.jpg', '', '', '', 'RwjWtWe@OdRa2WCKPe.com', '+36502360372'),
(170, 'Sonny', '2021-05-14 00:00:00', 0, 0, 1, 'kan', 1, 19, 4, '', 'Óriás schnauzer', 'http://localhost/kutyakepek/489.jpg', '', '', '', 'iFAXp@R2UyX8O.com', '+36406522885'),
(171, 'Csülök', '2022-01-27 00:00:00', 1, 0, 0, 'kan', 15, 10, 4, '', 'King Charles spániel', 'http://localhost/kutyakepek/485.jpg', '', '', '', 'Jbzs98Pl@DV2O.com', '+36605287073'),
(172, 'Rómeó', '2022-02-12 00:00:00', 1, 0, 0, 'szuka', 15, 17, 4, '', 'Lengyel kopó', 'http://localhost/kutyakepek/224.jpg', '', '', '', 'mrwPI@3Yt.com', '+36602953058'),
(173, 'Dorel', '2023-03-24 00:00:00', 1, 0, 0, 'kan', 9, 22, 3, '', 'Vesztfáliai tacskókopó', 'http://localhost/kutyakepek/254.jpg', '', '', '', 'ZGn@rTnIfz.com', '+36502343464'),
(174, 'Milli', '2020-12-18 00:00:00', 0, 1, 0, 'szuka', 12, 2, 1, '', 'Soft coated wheaten terrier', 'http://localhost/kutyakepek/566.jpg', '', '', '', 'q5SeTRf@JuMGGgjs.com', '+36507797281'),
(175, 'Behemót', '2020-12-03 00:00:00', 1, 1, 0, 'szuka', 21, 18, 3, '', 'Angol pointer', 'http://localhost/kutyakepek/223.jpg', '', '', '', 'zaWxs64z@vjP.com', '+36404134524'),
(176, 'Kaarjack', '2021-09-01 00:00:00', 1, 0, 1, 'szuka', 1, 26, 2, '', 'Tajvani kutya', 'http://localhost/kutyakepek/383.jpg', '', '', '', 'HCh@7mOzV5XAhX.com', '+36301200052'),
(177, 'Zizi', '2022-12-23 00:00:00', 1, 1, 0, 'szuka', 21, 4, 3, '', 'Eszkimó kutya', 'http://localhost/kutyakepek/168.jpg', '', '', '', 'yXAXNY@NWe8KKIOgE.com', '+36402328718'),
(178, 'Fifi', '2022-09-11 00:00:00', 1, 0, 0, 'kan', 19, 24, 2, '', 'Akbash', 'http://localhost/kutyakepek/226.jpg', '', '', '', 'jQqkRUXTiD@gekS.com', '+36303367612'),
(179, 'Jet', '2020-07-04 00:00:00', 1, 0, 1, 'szuka', 30, 9, 2, '', 'Bukovinai pásztorkutya', 'http://localhost/kutyakepek/169.jpg', '', '', '', 'QGEdNRH3Y@ZXI0Uqe.com', '+36603110717'),
(180, 'Jupiter', '2021-12-13 00:00:00', 1, 1, 1, 'kan', 22, 19, 4, '', 'Whippet', 'http://localhost/kutyakepek/94.jpg', '', '', '', 'SzI3@P8Kv3Vfvj8.com', '+3640782881'),
(181, 'Pitti', '2020-04-06 00:00:00', 0, 0, 0, 'szuka', 15, 12, 4, '', 'Amerikai pitbull terrier', 'http://localhost/kutyakepek/427.jpg', '', '', '', 'HXggo6V@7otrcYQ.com', '+36305619029'),
(182, 'Goldy', '2020-12-04 00:00:00', 0, 1, 1, 'kan', 19, 23, 1, '', 'Portugál vizsla', 'http://localhost/kutyakepek/400.jpg', '', '', '', '6V2fP0@hn68oQo8q.com', '+36304705423'),
(183, 'Ballu', '2023-06-12 00:00:00', 1, 0, 1, 'szuka', 21, 28, 3, '', 'Vizsla', 'http://localhost/kutyakepek/28.jpg', '', '', '', '6SBYqgM3Wu@koO.com', '+36408358957'),
(184, 'FuFu', '2020-05-17 00:00:00', 1, 0, 0, 'kan', 12, 17, 2, '', 'Hannoveri véreb', 'http://localhost/kutyakepek/320.jpg', '', '', '', 'ijwb1aKW@FEmUq.com', '+36504691448'),
(185, 'Pötyi', '2023-11-27 00:00:00', 1, 0, 1, 'szuka', 19, 17, 4, '', 'Vendée-i griffonkopó', 'http://localhost/kutyakepek/140.jpg', '', '', '', 'l7e7uwUOE@N7lT.com', '+36407539753'),
(186, 'Rinó', '2023-06-27 00:00:00', 1, 0, 1, 'kan', 18, 10, 3, '', 'Orosz-európai lajka', 'http://localhost/kutyakepek/352.jpg', '', '', '', 'gXP5nqcgG@qq0gAX8H.com', '+36306675174'),
(187, 'Luigi', '2020-06-25 00:00:00', 1, 1, 0, 'kan', 10, 20, 4, '', 'Trikolor nagy angol-francia kopó', 'http://localhost/kutyakepek/91.jpg', '', '', '', 'fh4@0JFF5w.com', '+36501035186'),
(188, 'Orchidea', '2021-04-10 00:00:00', 0, 0, 0, 'szuka', 17, 30, 2, '', 'Amerikai pitbull terrier', 'http://localhost/kutyakepek/58.jpg', '', '', '', 'v3oo1EO@JfND7jfPaD.com', '+36606970193'),
(189, 'Bütyök', '2023-07-15 00:00:00', 1, 1, 0, 'szuka', 23, 6, 3, '', 'Karéliai medvekutya', 'http://localhost/kutyakepek/327.jpg', '', '', '', 'r0bwg9Lsd@E3s.com', '+36602387412'),
(190, 'Gringó', '2020-05-27 00:00:00', 0, 1, 1, 'kan', 6, 24, 3, '', 'Gascogne-i kék basset', 'http://localhost/kutyakepek/203.jpg', '', '', '', '42Qk6La2@3eNqY.com', '+36304938684'),
(191, 'Gopher', '2020-12-14 00:00:00', 1, 1, 0, 'kan', 20, 3, 1, '', 'Szávavölgyi kopó', 'http://localhost/kutyakepek/199.jpg', '', '', '', '3rde@RK3zyK73.com', '+36505810148'),
(192, 'Ádáz', '2020-05-08 00:00:00', 0, 0, 0, 'kan', 26, 25, 3, '', 'Havannai pincs', 'http://localhost/kutyakepek/145.jpg', '', '', '', 'tAON96j22j@cjQd7.com', '+36503574717'),
(193, 'Karcsi', '2021-12-07 00:00:00', 0, 0, 1, 'kan', 25, 24, 3, '', 'Amerikai eszkimó kutya', 'http://localhost/kutyakepek/178.jpg', '', '', '', '2ZQ6FPj1@khb.com', '+36505978627'),
(194, 'Jade', '2023-07-19 00:00:00', 0, 0, 0, 'szuka', 10, 3, 2, '', 'Drenti vizsla', 'http://localhost/kutyakepek/331.jpg', '', '', '', 'oOMEh7@MGKes.com', '+36507397787'),
(195, 'Rézi', '2022-03-19 00:00:00', 0, 0, 0, 'szuka', 20, 22, 3, '', 'Moszkvai hosszú szőrű toy terrier', 'http://localhost/kutyakepek/37.jpg', '', '', '', 'QGEGxonFiv@5rZYFLH79.com', '+36307231537'),
(196, 'Ballu', '2020-12-03 00:00:00', 1, 1, 0, 'szuka', 20, 26, 1, '', 'Komondor  Magyarország', 'http://localhost/kutyakepek/14.jpg', '', '', '', 'Vc2NTy@l10t.com', '+36302299813'),
(197, 'Mazsola', '2021-03-16 00:00:00', 1, 0, 0, 'kan', 19, 9, 3, '', 'Groenendael', 'http://localhost/kutyakepek/10.jpg', '', '', '', 'NzfNTcI2c@tYzo.com', '+36302976996'),
(198, 'Fifi', '2020-07-14 00:00:00', 0, 0, 0, 'szuka', 12, 24, 2, '', 'Bordeaux-i dog', 'http://localhost/kutyakepek/482.jpg', '', '', '', '2uEV@D57b4.com', '+36307170897'),
(199, 'Darling', '2023-06-15 00:00:00', 0, 1, 0, 'kan', 26, 23, 3, '', 'Ausztrál juhászkutya', 'http://localhost/kutyakepek/554.jpg', '', '', '', 'HPi7@UAkqdL1.com', '+36305382702'),
(200, 'Jázmin', '2021-01-11 00:00:00', 0, 1, 1, 'kan', 6, 1, 4, '', 'Simaszőrű foxterrier', 'http://localhost/kutyakepek/327.jpg', '', '', '', 'NNrv@wjbNyQ.com', '+36604853844'),
(201, 'Destiny', '2022-12-15 00:00:00', 0, 1, 0, 'szuka', 5, 14, 4, '', 'Cirneco dell’Etna', 'http://localhost/kutyakepek/560.jpg', '', '', '', 'Yrmb8gV5@vsZ.com', '+3640180511'),
(202, 'Sziszi', '2020-10-21 00:00:00', 0, 1, 1, 'szuka', 21, 22, 4, '', 'Bedlington terrier', 'http://localhost/kutyakepek/31.jpg', '', '', '', 'GslI@HW1JPvzpQr.com', '+36605450396'),
(203, 'Oszkár', '2020-03-19 00:00:00', 0, 0, 0, 'szuka', 24, 9, 2, '', 'Kis gascogne-i kék kopó', 'http://localhost/kutyakepek/417.jpg', '', '', '', 'y1dqj9@2pcl.com', '+36307742929'),
(204, 'Milli', '2021-08-10 00:00:00', 0, 1, 0, 'szuka', 18, 18, 2, '', 'Affenpinscher', 'http://localhost/kutyakepek/235.jpg', '', '', '', '0LlsuG@GTd7H.com', '+36603474615'),
(205, 'Jabba', '2022-12-28 00:00:00', 0, 0, 1, 'szuka', 23, 17, 4, '', 'Német dog', 'http://localhost/kutyakepek/479.jpg', '', '', '', 'NY5iIoCEd@iHd.com', '+36405326159'),
(206, 'Pisze', '2023-09-03 00:00:00', 0, 0, 1, 'kan', 13, 14, 2, '', 'Phu-quoc kutya', 'http://localhost/kutyakepek/261.jpg', '', '', '', 'v6fvOSV8W@Sw4ny0qw64.com', '+36403849778'),
(207, 'Melák', '2021-03-18 00:00:00', 0, 0, 1, 'kan', 8, 24, 4, '', 'Csivava', 'http://localhost/kutyakepek/295.jpg', '', '', '', 'CO1LWqR6@j8JFKn1A.com', '+36606390963'),
(208, 'Gopher', '2023-04-25 00:00:00', 1, 1, 1, 'kan', 27, 17, 3, '', 'Skót juhászkutya', 'http://localhost/kutyakepek/184.jpg', '', '', '', '2F7@dFfz.com', '+36301928853'),
(209, 'Bogáncs', '2023-09-11 00:00:00', 0, 0, 1, 'szuka', 14, 18, 1, '', 'Dandie Dinmont-terrier', 'http://localhost/kutyakepek/394.jpg', '', '', '', 'xQ4X@qRIkuVnj.com', '+36304433181'),
(210, 'Molly', '2021-01-15 00:00:00', 1, 0, 0, 'kan', 7, 17, 1, '', 'Kalag Tazi', 'http://localhost/kutyakepek/9.jpg', '', '', '', '6EZXnu1La3@0orIIlK.com', '+36603510571'),
(211, 'Ördög', '2022-12-06 00:00:00', 0, 1, 1, 'szuka', 20, 8, 1, '', 'Finn spicc', 'http://localhost/kutyakepek/436.jpg', '', '', '', 'EMgXJMjS@OC5xmQP.com', '+36407525719'),
(212, 'Stuki', '2023-03-01 00:00:00', 1, 0, 0, 'kan', 30, 29, 3, '', 'Magyar agár', 'http://localhost/kutyakepek/550.jpg', '', '', '', 'evB0@xkCELe9x.com', '+36607318201'),
(213, 'Plutó', '2022-04-20 00:00:00', 1, 0, 0, 'szuka', 21, 15, 2, '', 'Nagyspitz', 'http://localhost/kutyakepek/0.jpg', '', '', '', 'VhGg@hQIqdLwTT.com', '+36608026836'),
(214, 'Vadóc', '2021-05-27 00:00:00', 0, 0, 1, 'kan', 26, 6, 2, '', 'Német vizsla', 'http://localhost/kutyakepek/328.jpg', '', '', '', 'tMzMbV0@1kL.com', '+36402824092'),
(215, 'Fló', '2020-10-17 00:00:00', 0, 0, 1, 'kan', 24, 29, 1, '', 'Kis angol agár', 'http://localhost/kutyakepek/547.jpg', '', '', '', '4RrsWa@NMmabRdc.com', '+36408975008'),
(216, 'Boomer', '2021-06-18 00:00:00', 1, 0, 0, 'kan', 9, 9, 1, '', 'Tiroli kopó', 'http://localhost/kutyakepek/349.jpg', '', '', '', 'tAV8Nd@fNqmb9w.com', '+36405970387'),
(217, 'Kuku', '2023-10-09 00:00:00', 0, 0, 1, 'szuka', 27, 29, 4, '', 'Svájci fehér juhászkutya', 'http://localhost/kutyakepek/384.jpg', '', '', '', 'nNovZUM@u1AXVd3.com', '+36509843863'),
(218, 'Peggi', '2020-12-20 00:00:00', 0, 0, 0, 'szuka', 12, 5, 2, '', 'Nápolyi masztiff', 'http://localhost/kutyakepek/421.jpg', '', '', '', 'YIzyrB05@B0POYC.com', '+36304815002'),
(219, 'Pepe', '2020-08-02 00:00:00', 0, 1, 0, 'szuka', 12, 28, 3, '', 'Estrelai hegyikutya', 'http://localhost/kutyakepek/19.jpg', '', '', '', 'q7Ufq@eC5d.com', '+36407939480'),
(220, 'Beethoven', '2021-01-22 00:00:00', 0, 0, 1, 'szuka', 27, 7, 4, '', 'Ausztrál selyemszőrű terrier', 'http://localhost/kutyakepek/274.jpg', '', '', '', 'M9ODihUP5U@32saC.com', '+36506830898'),
(221, 'Rinó', '2022-07-02 00:00:00', 0, 0, 0, 'kan', 19, 23, 4, '', 'Tasi (Kelet-ázsiai barzoj)', 'http://localhost/kutyakepek/59.jpg', '', '', '', 'rrr@l29iZV4.com', '+3630521608'),
(222, 'Úrfi', '2022-09-23 00:00:00', 0, 1, 0, 'kan', 6, 18, 1, '', 'Tervueren', 'http://localhost/kutyakepek/508.jpg', '', '', '', 'qPimViWF@idct.com', '+36303033538'),
(223, 'Zsozsó', '2023-01-03 00:00:00', 0, 1, 1, 'kan', 25, 12, 4, '', 'Akbash', 'http://localhost/kutyakepek/23.jpg', '', '', '', '16q7@KzdBOsK3F.com', '+36502600256'),
(224, 'Zsömi', '2023-04-07 00:00:00', 1, 0, 0, 'szuka', 27, 16, 1, '', 'Mountain cur', 'http://localhost/kutyakepek/450.jpg', '', '', '', '81tp5pGT76@KwkMXbh.com', '+3660752158'),
(225, 'Pisze', '2023-10-05 00:00:00', 0, 1, 0, 'szuka', 11, 8, 2, '', 'Bergamói juhászkutya', 'http://localhost/kutyakepek/558.jpg', '', '', '', 'PYP7wh@SOrvPW.com', '+36607992141'),
(226, 'Limbó', '2023-08-22 00:00:00', 0, 0, 1, 'kan', 9, 14, 4, '', 'Amerikai meztelen terrier', 'http://localhost/kutyakepek/265.jpg', '', '', '', 'nv1Yy9x@DA5E0xl.com', '+36409258537'),
(227, 'Orlando', '2023-11-17 00:00:00', 1, 1, 0, 'szuka', 3, 11, 2, '', 'Portugál vízikutya', 'http://localhost/kutyakepek/28.jpg', '', '', '', 'oYv@OWYvBx1X.com', '+3660579477'),
(228, 'Lolka', '2021-02-15 00:00:00', 0, 0, 1, 'szuka', 7, 21, 3, '', 'Fáraókutya', 'http://localhost/kutyakepek/468.jpg', '', '', '', 'T8ZQNm6ZX@EVaVR.com', '+36504737619'),
(229, 'Espresso', '2020-01-15 00:00:00', 0, 0, 1, 'kan', 5, 4, 4, '', 'Kisspitz', 'http://localhost/kutyakepek/150.jpg', '', '', '', 'Izsu@Gf6.com', '+36506631925'),
(230, 'Kevin', '2023-08-09 00:00:00', 1, 1, 1, 'szuka', 14, 26, 3, '', 'Csehszlovák farkaskutya', 'http://localhost/kutyakepek/242.jpg', '', '', '', '41N@i2onaqn8n.com', '+36408736411'),
(231, 'Iván', '2021-03-11 00:00:00', 1, 1, 0, 'kan', 14, 1, 1, '', 'Hannoveri véreb', 'http://localhost/kutyakepek/267.jpg', '', '', '', 'nMuDOBqbn@O0w6b5A.com', '+36404770585'),
(232, 'Bagira', '2021-07-03 00:00:00', 0, 1, 0, 'szuka', 19, 12, 4, '', 'Mexikói meztelen kutya', 'http://localhost/kutyakepek/39.jpg', '', '', '', 'Mbjc@Kgr.com', '+36308436042'),
(233, 'Okonor', '2023-11-08 00:00:00', 0, 1, 0, 'kan', 22, 6, 3, '', 'Schiller-kopó', 'http://localhost/kutyakepek/367.jpg', '', '', '', '9K9N@0Vo.com', '+36607514324'),
(234, 'Lehár', '2020-01-22 00:00:00', 0, 0, 0, 'kan', 2, 15, 3, '', 'Kis münsterlandi vizsla', 'http://localhost/kutyakepek/524.jpg', '', '', '', 'x5qsSZSA6@YICv.com', '+3660389630'),
(235, 'Leó', '2021-04-19 00:00:00', 1, 1, 0, 'szuka', 2, 15, 3, '', 'Sibaken', 'http://localhost/kutyakepek/233.jpg', '', '', '', 'mzieGePR@o1AKRj.com', '+36302762443'),
(236, 'Goldy', '2021-12-12 00:00:00', 1, 0, 0, 'szuka', 1, 26, 1, '', 'Affenpinscher', 'http://localhost/kutyakepek/66.jpg', '', '', '', 'AZBwfa@cJQ0N26VSt.com', '+36505469116'),
(237, 'Nina', '2020-07-24 00:00:00', 1, 1, 1, 'kan', 29, 2, 3, '', 'Brazil masztiff', 'http://localhost/kutyakepek/220.jpg', '', '', '', 'XS3sv@AFU.com', '+3640967982'),
(238, 'Illés', '2023-11-13 00:00:00', 1, 1, 0, 'szuka', 26, 4, 4, '', 'Schiller-kopó', 'http://localhost/kutyakepek/349.jpg', '', '', '', 'MqYc@IH7MNqM.com', '+36503445759'),
(239, 'Kevin', '2021-03-06 00:00:00', 0, 1, 1, 'szuka', 24, 28, 3, '', 'Gascogne-i francia vizsla', 'http://localhost/kutyakepek/476.jpg', '', '', '', 'XFCWZK0vC@tfQ2l.com', '+36408857130'),
(240, 'Cherie', '2023-11-02 00:00:00', 0, 1, 0, 'kan', 12, 20, 4, '', 'Leonbergi', 'http://localhost/kutyakepek/179.jpg', '', '', '', 'MEO@4ThAwJ.com', '+36508435326'),
(241, 'Alfonz', '2020-11-05 00:00:00', 0, 0, 0, 'szuka', 25, 7, 3, '', 'Pointer', 'http://localhost/kutyakepek/379.jpg', '', '', '', 'l1CqAIbht3@Y4i8.com', '+36408284878'),
(242, 'Vénusz', '2023-02-16 00:00:00', 1, 1, 1, 'szuka', 21, 3, 4, '', 'Rhodesian ridgeback (Afrikai oroszlánkutya)', 'http://localhost/kutyakepek/57.jpg', '', '', '', 'JtGJDRgZ@VVSzd54AR.com', '+36402553314'),
(243, 'Napóleon', '2020-09-10 00:00:00', 0, 0, 0, 'kan', 22, 17, 4, '', 'Akbash', 'http://localhost/kutyakepek/320.jpg', '', '', '', 'ETc@X4wE.com', '+36406403638'),
(244, 'Keksz', '2021-09-16 00:00:00', 0, 1, 0, 'kan', 25, 25, 3, '', 'Olasz vizsla', 'http://localhost/kutyakepek/402.jpg', '', '', '', 'XPkRlhPEV@2FkudL.com', '+3640435044'),
(245, 'Szeti', '2022-09-06 00:00:00', 0, 0, 0, 'szuka', 8, 3, 1, '', 'Orosz toy terrier', 'http://localhost/kutyakepek/436.jpg', '', '', '', '0u3WYEXt8@p2HZOoXU.com', '+36504201959'),
(246, 'Lolka', '2020-07-19 00:00:00', 0, 0, 1, 'kan', 15, 21, 2, '', 'Boykin spániel', 'http://localhost/kutyakepek/7.jpg', '', '', '', 'qUA@JPMiT.com', '+36507862803'),
(247, 'Fló', '2021-10-22 00:00:00', 1, 1, 0, 'kan', 22, 30, 1, '', 'Pekingi palotakutya', 'http://localhost/kutyakepek/365.jpg', '', '', '', 'WpLRmv@PAW.com', '+36606114175'),
(248, 'Müzli', '2021-01-03 00:00:00', 0, 0, 0, 'szuka', 1, 12, 4, '', 'Rövidszőrű isztriai kopó', 'http://localhost/kutyakepek/1.jpg', '', '', '', 'xERnvnXz@ek66y9F9GH.com', '+36504327633'),
(249, 'Meggi', '2023-10-16 00:00:00', 1, 1, 0, 'szuka', 23, 14, 2, '', 'Bichon frisé', 'http://localhost/kutyakepek/468.jpg', '', '', '', '8eV78@pB4y8V.com', '+36603694351');

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

-- --------------------------------------------------------

--
-- Table structure for table `orokbefogado`
--

CREATE TABLE `orokbefogado` (
  `USER_ID` int(11) NOT NULL,
  `USERNAME` varchar(20) COLLATE utf8_hungarian_ci NOT NULL,
  `PASSWORD` varchar(20) COLLATE utf8_hungarian_ci NOT NULL,
  `EMAIL` varchar(320) COLLATE utf8_hungarian_ci NOT NULL,
  `CREATED_AT` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `orokbefogado`
--

INSERT INTO `orokbefogado` (`USER_ID`, `USERNAME`, `PASSWORD`, `EMAIL`, `CREATED_AT`) VALUES
(1, 'Pista', '$2y$10$q09bSq02rxZhi', 'gaborkorpa@gmail.com', '2023-04-01 15:58:04'),
(2, 'Pista2', '$2y$10$SLUY/l.qe287f', 'hagaja5131@jthoven.com', '2023-04-01 16:19:53'),
(3, 'Pista3', '$2y$10$ZMqHmAgfvmpOa', 'asd@gmail.com', '2023-04-01 17:04:51'),
(4, 'test', '$2y$10$2iz3f38AnF2zi', 'test@test.com', '2023-04-06 15:18:23'),
(5, 'asd', '$2y$10$COU9Mj5UAUXc/', 'test2@test.com', '2023-04-06 15:21:11');

-- --------------------------------------------------------

--
-- Table structure for table `tranzakciok`
--

CREATE TABLE `tranzakciok` (
  `TRANZAKCIO_ID` int(11) NOT NULL,
  `ALLAT_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `DATE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

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
-- Indexes for table `orokbefogado`
--
ALTER TABLE `orokbefogado`
  ADD PRIMARY KEY (`USER_ID`);

--
-- Indexes for table `tranzakciok`
--
ALTER TABLE `tranzakciok`
  ADD PRIMARY KEY (`TRANZAKCIO_ID`),
  ADD UNIQUE KEY `ALLAT_ID_2` (`ALLAT_ID`,`USER_ID`),
  ADD KEY `ALLAT_ID` (`ALLAT_ID`,`USER_ID`),
  ADD KEY `USER_ID` (`USER_ID`);

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
-- AUTO_INCREMENT for table `orokbefogado`
--
ALTER TABLE `orokbefogado`
  MODIFY `USER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tranzakciok`
--
ALTER TABLE `tranzakciok`
  MODIFY `TRANZAKCIO_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `fog_dict`
--
ALTER TABLE `fog_dict`
  ADD CONSTRAINT `fog_dict_ibfk_1` FOREIGN KEY (`FOG_ALLAPOT`) REFERENCES `allat` (`FOG_ALLAPOT`);

--
-- Constraints for table `tranzakciok`
--
ALTER TABLE `tranzakciok`
  ADD CONSTRAINT `tranzakciok_ibfk_1` FOREIGN KEY (`ALLAT_ID`) REFERENCES `allat` (`ALLAT_ID`),
  ADD CONSTRAINT `tranzakciok_ibfk_2` FOREIGN KEY (`USER_ID`) REFERENCES `orokbefogado` (`USER_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
