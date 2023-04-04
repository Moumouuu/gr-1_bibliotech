-- phpMyAdmin SQL Dump
-- version 5.0.4deb2+deb11u1
-- https://www.phpmyadmin.net/
--
-- Hôte : 172.16.1.2
-- Généré le : lun. 27 mars 2023 à 10:02
-- Version du serveur :  10.3.29-MariaDB-0+deb10u1
-- Version de PHP : 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `etu_icissokho`
--

-- --------------------------------------------------------

--
-- Structure de la table `test_Author`
--

CREATE TABLE `test_Author` (
  `id_author` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `test_Author`
--

INSERT INTO `test_Author` (`id_author`, `name`) VALUES
(0, 'Victor Hugo'),
(1, 'Adrien Goetz'),
(2, 'Emile Zola'),
(3, 'Zola, Emile'),
(4, 'By Label AA-Prod/Edits (Artmusiclitte) 2015'),
(5, 'Zola Emile'),
(6, 'Agatha Christie'),
(7, 'Albert Camus'),
(8, 'Jacques Ferrandez'),
(9, 'Charles Dickens'),
(10, 'Dominique Barbéris'),
(11, 'Andre Gide'),
(12, 'Claude Mahias'),
(13, 'ANDRE. GIDE'),
(14, 'Marcel Pagnol'),
(15, 'Raymond Castans'),
(16, 'Carl Gustav Jung'),
(17, 'Roland Cahen'),
(18, 'J.K. Rowling'),
(19, 'John Tiffany'),
(20, 'Joanne K. Rowling'),
(21, 'Jack Thorne'),
(22, 'J. K. Rowling'),
(23, 'Stephen King'),
(24, 'Frank Herbert'),
(25, 'George Orwell'),
(26, 'Mériam Korichi'),
(27, 'J.R.R. Tolkien'),
(28, 'John Ronald Reuel Tolkien'),
(29, 'JULIO VERNE'),
(30, 'Piero Gondolo della Riva'),
(31, 'Jules Verne'),
(32, 'Marcel Proust'),
(33, 'Proust, Marcel'),
(34, 'Guy de Maupassant'),
(35, 'Josée Bonneville'),
(36, 'Guillaume Musso'),
(38, 'Kentarō Miura'),
(39, 'Kentaro Miura'),
(40, 'Studio Gaga'),
(41, 'Stephen Hultgren'),
(42, 'Stephen Spender'),
(43, 'Stephen Simon Kimondo'),
(44, 'Stephen Marlowe'),
(45, 'Stephen Arterburn'),
(46, 'CSB Bibles by Holman'),
(47, 'Stephen Michael Shearer'),
(48, 'Stephen A. Black'),
(49, 'Stephen Fox'),
(50, 'Stephen Tapert'),
(51, 'Stephen D. Edington'),
(52, 'Stephen P. Gordon'),
(53, 'Emily Chubbuck Judson'),
(54, 'Pete Daniel'),
(55, 'Pete Wilson'),
(56, 'Michael C. Desch'),
(57, 'Michael Olinick'),
(58, 'W. Michael Gear'),
(59, 'Kenneth Michael Absher'),
(60, 'Michael Charles Desch'),
(61, 'Roman Popadiuk'),
(62, 'Sahni Birbal'),
(63, 'Birbal Sahni Institute of Palaeobotany'),
(64, 'Divya Darshan Pant'),
(65, 'James F. Brennan'),
(66, 'James Phillip McAuley'),
(67, 'James F. Simon'),
(68, 'Indiana. Supreme Court'),
(69, 'Horace E. Carter'),
(70, 'Albert Gallatin Porter'),
(71, 'Gordon Tanner'),
(72, 'Benjamin Harrison'),
(73, 'Michael Crawford Kerr'),
(74, 'James Buckley Black'),
(75, 'Augustus Newton Martin'),
(76, 'Francis Marion Dice'),
(77, 'John Worth Kern'),
(78, 'John Lewis Griffiths'),
(79, 'Sidney Romelee Moon'),
(80, 'Charles Frederick Remy'),
(81, 'James E. DeVoe'),
(82, 'Stephen Law'),
(83, 'Stephen C. Hutchins'),
(84, 'Stephen Wiacek'),
(85, 'DK'),
(86, 'Stan Lee'),
(87, 'Adam Bray'),
(88, 'Stephen Martin Leake'),
(89, 'Kevin Murray'),
(90, 'Kevin J. Cooney'),
(91, 'Kevin Cooney'),
(92, 'Kevin Schmiesing'),
(93, 'Kevin N. Daniel'),
(94, 'Lon Kurashige'),
(95, 'Alice Yang'),
(96, 'Lon Y. Kurashige'),
(97, 'Lon Yuki Kurashige'),
(98, 'Edgar Allan Poe'),
(99, 'Michel Zéraffa'),
(100, 'Harold Beaver'),
(101, 'Gad Freudenthal'),
(102, 'Judah (ha-Levi)'),
(103, 'Charles Touati'),
(104, 'David Louapre'),
(105, 'Julian Mischi'),
(106, 'Claire Lombardo'),
(107, 'Noël Diamant-Berger'),
(108, 'José Salmeron'),
(109, 'Philippe Jouanny'),
(110, 'Aurélie Plotton'),
(111, 'Mireille Perrin'),
(112, 'Claire Pierrart'),
(113, 'Florent A. Meyer'),
(114, 'Quentin Meillassoux'),
(115, 'Isaac Asimov'),
(116, 'Francis Berguin'),
(117, 'Mauritius'),
(118, 'Francis Taylor Piggott'),
(119, 'Louis Arthur Thibaud'),
(120, 'Annette Tamarkin'),
(121, 'Jean-Jacques Rousseau'),
(122, 'Jean-jacques Rousseau'),
(123, 'Michael Wu'),
(124, 'Catherine Clément'),
(125, 'Catherine Clement'),
(126, 'Ryo Azumi'),
(127, 'Ryō Azumi'),
(128, 'Kozumi Shinozawa'),
(129, 'James Redfield'),
(130, 'James M. Redfield'),
(131, 'Carol Adrienne'),
(132, 'Joseph Garnotel'),
(133, 'Sian Lewis'),
(134, 'Guan-Sian Li'),
(135, 'Sian Reynolds'),
(136, 'Kian Guan Lim'),
(137, 'Peggy Avez'),
(138, 'Peggy Raffy-Hideux'),
(139, 'Peggy Webb'),
(140, 'Liz Flaherty'),
(141, 'Peggy MIGNOT-PAILLET'),
(142, 'Walter Isaacson'),
(143, 'Jean La Fontaine'),
(144, 'Jean de La Fontaine'),
(145, 'Lúcia Tulchinski'),
(146, 'Salmo Dansa'),
(147, 'Michel Houellebecq'),
(148, 'Pierre Corneille'),
(149, 'Oscar Wilde'),
(150, 'Merlin Holland');

-- --------------------------------------------------------

--
-- Structure de la table `test_belongs`
--

CREATE TABLE `test_belongs` (
  `id_book` int(11) NOT NULL,
  `id_category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `belongs`
--

INSERT INTO `test_belongs` (`id_book`, `id_category`) VALUES
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 3),
(36, 3),
(37, 3),
(38, 3),
(39, 3),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 4),
(71, 4),
(72, 4),
(73, 4),
(74, 4),
(75, 2),
(76, 2),
(77, 2),
(78, 2),
(79, 2),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(90, 5),
(91, 5),
(92, 5),
(93, 5),
(94, 5),
(95, 6),
(96, 6),
(97, 6),
(98, 6),
(99, 6),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(110, 7),
(111, 7),
(112, 7),
(113, 7),
(114, 7),
(115, 8),
(116, 8),
(117, 8),
(118, 8),
(119, 8),
(120, 9),
(121, 9),
(122, 9),
(123, 9),
(124, 9),
(125, 10),
(126, 10),
(127, 10),
(128, 10),
(129, 10),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 8),
(136, 8),
(137, 8),
(138, 8),
(139, 8),
(140, 7),
(141, 7),
(142, 7),
(143, 7),
(144, 7),
(145, 1),
(146, 1),
(147, 1),
(148, 1),
(149, 1),
(150, 11),
(151, 11),
(152, 11),
(153, 11),
(154, 11),
(155, 9),
(156, 9),
(157, 9),
(158, 9),
(159, 9),
(160, 1),
(161, 1),
(162, 1),
(163, 1),
(164, 1),
(170, 12),
(171, 12),
(172, 12),
(173, 12),
(174, 12),
(175, 13),
(176, 13),
(177, 13),
(178, 13),
(179, 13),
(190, 14),
(191, 14),
(192, 14),
(193, 14),
(194, 14),
(200, 1),
(201, 1),
(202, 1),
(203, 1),
(204, 1),
(210, 15),
(211, 15),
(212, 15),
(213, 15),
(214, 3),
(215, 3),
(216, 3),
(217, 3),
(218, 3),
(219, 6),
(220, 6),
(221, 6),
(222, 6),
(223, 6),
(224, 12),
(225, 12),
(226, 12),
(227, 12),
(228, 12),
(229, 1),
(230, 1),
(231, 1),
(232, 1),
(233, 1),
(239, 16),
(240, 16),
(241, 16),
(242, 16),
(243, 16);

-- --------------------------------------------------------

--
-- Structure de la table `test_BiblioUser`
--

CREATE TABLE `test_BiblioUser` (
  `id_user` int(11) NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `test_BiblioUser`
--

INSERT INTO `test_BiblioUser` (`id_user`, `surname`, `name`, `password`, `p_picture`) VALUES
(0, 'Joshua', 'Morris', 'k8-797563u', 'https://randomuser.me/api/portraits/med/women/92.jpg'),
(1, 'Dr.', 'Kelly', 'f8-1467476t', 'https://randomuser.me/api/portraits/med/women/57.jpg'),
(2, 'Richard', 'Cortez', 's1-9443886t', 'https://randomuser.me/api/portraits/med/men/44.jpg'),
(3, 'Miguel', 'Nixon', 'P3-0367482h', 'https://randomuser.me/api/portraits/med/women/43.jpg'),
(4, 'Christine', 'Payne', 'c8-8478959j', 'https://randomuser.me/api/portraits/med/women/74.jpg'),
(5, 'Andrew', 'Rogers', 'o7-0032775B', 'https://randomuser.me/api/portraits/med/women/22.jpg'),
(6, 'Patrick', 'Bates', 'f3-9884814O', 'https://randomuser.me/api/portraits/med/men/0.jpg'),
(7, 'Dean', 'Gibson', 'c3-7341458Y', 'https://randomuser.me/api/portraits/med/men/56.jpg'),
(8, 'Benjamin', 'Adams', 'N0-2035824S', 'https://randomuser.me/api/portraits/med/women/63.jpg'),
(9, 'Michelle', 'Murphy', 'g2-9037712G', 'https://randomuser.me/api/portraits/med/men/11.jpg'),
(10, 'Daniel', 'Campbell', 'J3-5855272e', 'https://randomuser.me/api/portraits/med/men/64.jpg'),
(11, 'Eduardo', 'Reyes', 'T2-7071358z', 'https://randomuser.me/api/portraits/med/women/96.jpg'),
(12, 'Amanda', 'Smith', 'M5-4928470u', 'https://randomuser.me/api/portraits/med/men/42.jpg'),
(13, 'Connor', 'Stephens', 'm2-7915540J', 'https://randomuser.me/api/portraits/med/women/22.jpg'),
(14, 'Kathryn', 'Cuevas', 'q5-2897380H', 'https://randomuser.me/api/portraits/med/men/29.jpg'),
(15, 'Christopher', 'Bishop', 'e6-8962917F', 'https://randomuser.me/api/portraits/med/women/39.jpg'),
(16, 'Connie', 'Howard', 'u0-2988783A', 'https://randomuser.me/api/portraits/med/men/62.jpg'),
(17, 'Michelle', 'Massey', 'j5-1551012H', 'https://randomuser.me/api/portraits/med/women/1.jpg'),
(18, 'Kristen', 'Lutz', 'O7-9735770y', 'https://randomuser.me/api/portraits/med/women/29.jpg'),
(19, 'Jared', 'Kelly', 'V4-2355583m', 'https://randomuser.me/api/portraits/med/men/31.jpg'),
(20, 'Christopher', 'Wallace', 'b6-8569304r', 'https://randomuser.me/api/portraits/med/women/86.jpg'),
(21, 'Eric', 'Rodriguez', 'h0-5564138V', 'https://randomuser.me/api/portraits/med/men/30.jpg'),
(22, 'Jesse', 'Wall', 'W2-2296888W', 'https://randomuser.me/api/portraits/med/women/94.jpg'),
(23, 'Jose', 'Carter', 'w7-7472984g', 'https://randomuser.me/api/portraits/med/men/99.jpg'),
(24, 'Jennifer', 'Snyder', 'C2-4391308j', 'https://randomuser.me/api/portraits/med/men/27.jpg'),
(25, 'Arthur', 'Guerra', 'I3-6048976M', 'https://randomuser.me/api/portraits/med/women/56.jpg'),
(26, 'Caitlin', 'Lane', 'L7-957927Y', 'https://randomuser.me/api/portraits/med/women/1.jpg'),
(27, 'Jerry', 'Graham', 'J4-7532882F', 'https://randomuser.me/api/portraits/med/men/70.jpg'),
(28, 'Susan', 'Bryant', 'U4-0189497M', 'https://randomuser.me/api/portraits/med/women/71.jpg'),
(29, 'Jennifer', 'Anderson', 'z7-2628441L', 'https://randomuser.me/api/portraits/med/women/35.jpg'),
(30, 'Mallory', 'Wood', 'i0-2297077M', 'https://randomuser.me/api/portraits/med/men/11.jpg'),
(31, 'James', 'Fuentes', 'E5-5943465X', 'https://randomuser.me/api/portraits/med/women/88.jpg'),
(32, 'Erin', 'Oconnor', 'R6-5845061M', 'https://randomuser.me/api/portraits/med/men/31.jpg'),
(33, 'Amber', 'Brandt', 'E2-377996p', 'https://randomuser.me/api/portraits/med/men/58.jpg'),
(34, 'Courtney', 'Ayers', 'b1-1735735T', 'https://randomuser.me/api/portraits/med/women/28.jpg'),
(35, 'Stephen', 'Porter', 'Y6-3117396P', 'https://randomuser.me/api/portraits/med/men/76.jpg'),
(36, 'Jared', 'Costa', 'U1-6628322u', 'https://randomuser.me/api/portraits/med/women/9.jpg'),
(37, 'John', 'Martin', 'K0-5017237O', 'https://randomuser.me/api/portraits/med/men/97.jpg'),
(38, 'Misty', 'Alvarado', 'S9-1452271r', 'https://randomuser.me/api/portraits/med/women/85.jpg'),
(39, 'Joseph', 'Hughes', 'R9-160588K', 'https://randomuser.me/api/portraits/med/women/83.jpg'),
(40, 'Jenna', 'Brown', 'u7-316930A', 'https://randomuser.me/api/portraits/med/men/57.jpg'),
(41, 'Linda', 'Garrison', 'w6-4532240O', 'https://randomuser.me/api/portraits/med/men/90.jpg'),
(42, 'Edward', 'Jordan', 'L9-1099592Q', 'https://randomuser.me/api/portraits/med/men/13.jpg'),
(43, 'James', 'Campbell', 'w8-1651764p', 'https://randomuser.me/api/portraits/med/men/18.jpg'),
(44, 'Adam', 'Jones', 'F3-3471836C', 'https://randomuser.me/api/portraits/med/men/0.jpg'),
(45, 'Holly', 'Shepherd', 'v8-3174346q', 'https://randomuser.me/api/portraits/med/men/9.jpg'),
(46, 'Douglas', 'Schwartz', 'N4-2063850i', 'https://randomuser.me/api/portraits/med/men/88.jpg'),
(47, 'Francisco', 'Phelps', 'c5-8896715p', 'https://randomuser.me/api/portraits/med/women/83.jpg'),
(48, 'Mary', 'Barnes', 'Y5-9413761e', 'https://randomuser.me/api/portraits/med/women/8.jpg'),
(49, 'Daniel', 'Rubio', 'M3-7554832i', 'https://randomuser.me/api/portraits/med/men/60.jpg'),
(50, 'Kathy', 'Williams', 'E7-6406809I', 'https://randomuser.me/api/portraits/med/women/78.jpg'),
(51, 'Maxwell', 'Sanchez', 'P8-0798672T', 'https://randomuser.me/api/portraits/med/women/52.jpg'),
(52, 'Jonathan', 'Smith', 't7-1592946d', 'https://randomuser.me/api/portraits/med/men/44.jpg'),
(53, 'Larry', 'Graham', 'V7-6881732e', 'https://randomuser.me/api/portraits/med/women/6.jpg'),
(54, 'Theresa', 'Johnson', 'U7-2659042d', 'https://randomuser.me/api/portraits/med/men/46.jpg'),
(55, 'Audrey', 'Carson', 'H5-7241219p', 'https://randomuser.me/api/portraits/med/women/8.jpg'),
(56, 'Mr.', 'Marcus', 'C7-2128226h', 'https://randomuser.me/api/portraits/med/men/82.jpg'),
(57, 'Courtney', 'Larson', 'g7-4168512O', 'https://randomuser.me/api/portraits/med/women/55.jpg'),
(58, 'Nathaniel', 'Bray', 'w9-1457937s', 'https://randomuser.me/api/portraits/med/women/34.jpg'),
(59, 'Cynthia', 'Young', 'P3-105473h', 'https://randomuser.me/api/portraits/med/men/49.jpg'),
(60, 'Robert', 'Tate', 'I5-9082998X', 'https://randomuser.me/api/portraits/med/women/40.jpg'),
(61, 'Michael', 'Turner', 'x7-2357329D', 'https://randomuser.me/api/portraits/med/men/52.jpg'),
(62, 'Diane', 'Davis', 'i8-8025084r', 'https://randomuser.me/api/portraits/med/women/6.jpg'),
(63, 'Blake', 'Watson', 'h5-0769745Y', 'https://randomuser.me/api/portraits/med/men/71.jpg'),
(64, 'Zachary', 'Fitzpatrick', 'i2-496177s', 'https://randomuser.me/api/portraits/med/men/92.jpg'),
(65, 'Marisa', 'Marsh', 'L4-2854400w', 'https://randomuser.me/api/portraits/med/men/28.jpg'),
(66, 'Gregory', 'Clark', 'A9-3298845q', 'https://randomuser.me/api/portraits/med/women/87.jpg'),
(67, 'Stephanie', 'Gray', 'F2-2025621o', 'https://randomuser.me/api/portraits/med/women/22.jpg'),
(68, 'Michelle', 'Ritter', 'R7-2899050s', 'https://randomuser.me/api/portraits/med/women/85.jpg'),
(69, 'Stephen', 'Washington', 'n7-5465502d', 'https://randomuser.me/api/portraits/med/men/37.jpg'),
(70, 'Andrew', 'Wagner', 's2-9776111u', 'https://randomuser.me/api/portraits/med/women/66.jpg'),
(71, 'Jennifer', 'Howard', 'J8-3702735K', 'https://randomuser.me/api/portraits/med/men/47.jpg'),
(72, 'Jack', 'Aguilar', 'T9-8931053n', 'https://randomuser.me/api/portraits/med/men/7.jpg'),
(73, 'Victoria', 'Jones', 'd5-0256310K', 'https://randomuser.me/api/portraits/med/women/82.jpg'),
(74, 'Kevin', 'Myers', 'm3-2548858f', 'https://randomuser.me/api/portraits/med/men/45.jpg'),
(75, 'Shawna', 'Webb', 'a5-0807675Y', 'https://randomuser.me/api/portraits/med/men/58.jpg'),
(76, 'Richard', 'Mcneil', 'p3-5797345A', 'https://randomuser.me/api/portraits/med/men/44.jpg'),
(77, 'Rebecca', 'Cohen', 'n1-6401073x', 'https://randomuser.me/api/portraits/med/women/42.jpg'),
(78, 'Leslie', 'Olsen', 'w9-7873336x', 'https://randomuser.me/api/portraits/med/women/77.jpg'),
(79, 'Theodore', 'Hammond', 'T1-1143717n', 'https://randomuser.me/api/portraits/med/men/52.jpg'),
(80, 'Angel', 'Mcdonald', 'I5-0437766K', 'https://randomuser.me/api/portraits/med/women/74.jpg'),
(81, 'Kevin', 'Stewart', 'F5-2246772M', 'https://randomuser.me/api/portraits/med/men/37.jpg'),
(82, 'David', 'Carpenter', 'D2-7676298G', 'https://randomuser.me/api/portraits/med/women/37.jpg'),
(83, 'Steven', 'Quinn', 'k2-6092652i', 'https://randomuser.me/api/portraits/med/men/80.jpg'),
(84, 'Adam', 'Lynn', 'p5-0613702e', 'https://randomuser.me/api/portraits/med/men/79.jpg'),
(85, 'James', 'Duncan', 'q4-979487Z', 'https://randomuser.me/api/portraits/med/women/40.jpg'),
(86, 'Catherine', 'Strong', 'g0-8498250h', 'https://randomuser.me/api/portraits/med/women/91.jpg'),
(87, 'Troy', 'Graham', 'R3-7785337D', 'https://randomuser.me/api/portraits/med/men/86.jpg'),
(88, 'Tiffany', 'Cameron', 'H3-5407043S', 'https://randomuser.me/api/portraits/med/women/82.jpg'),
(89, 'Justin', 'Nelson', 'G7-8403895n', 'https://randomuser.me/api/portraits/med/women/34.jpg'),
(90, 'Mr.', 'Dustin', 'K3-8422315Y', 'https://randomuser.me/api/portraits/med/women/21.jpg'),
(91, 'Jessica', 'Evans', 'Q1-444167h', 'https://randomuser.me/api/portraits/med/women/64.jpg'),
(92, 'Cody', 'Sanders', 'X0-5523383x', 'https://randomuser.me/api/portraits/med/women/82.jpg'),
(93, 'Thomas', 'Thomas', 'O0-0073396I', 'https://randomuser.me/api/portraits/med/women/24.jpg'),
(94, 'Lauren', 'Santiago', 'B7-749147l', 'https://randomuser.me/api/portraits/med/women/57.jpg'),
(95, 'Colleen', 'Davidson', 'F9-0164547q', 'https://randomuser.me/api/portraits/med/women/35.jpg'),
(96, 'Charles', 'Ramos', 'C8-8695190B', 'https://randomuser.me/api/portraits/med/women/56.jpg'),
(97, 'Tracy', 'Rodriguez', 'T9-341872F', 'https://randomuser.me/api/portraits/med/men/95.jpg'),
(98, 'Dawn', 'Bell', 'd1-7481931H', 'https://randomuser.me/api/portraits/med/men/33.jpg'),
(99, 'Christopher', 'Frank', 'Y1-9457319g', 'https://randomuser.me/api/portraits/med/women/20.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `test_Book`
--

CREATE TABLE `test_Book` (
  `id_book` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_of_pages` int(11) DEFAULT NULL,
  `acquiring_date` date NOT NULL,
  `id_year` int(11) DEFAULT NULL,
  `id_editor` int(11) DEFAULT NULL,
  `id_language` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `test_Book`
--

INSERT INTO `test_Book` (`id_book`, `title`, `cover`, `description`, `number_of_pages`, `acquiring_date`, `id_year`, `id_editor`, `id_language`) VALUES
(0, 'Poèmes de Victor Hugo', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'L’oeuvre est immense et monumentale, le personnage est imposant. Pourtant, aller à la rencontre de l’homme, l’amoureux fervent, le père, le grand-père, le « rêveur, le camarade des petites fleurs, et l’interlocuteur des arbres et du vent...», qui écrivait en contemplant l’océan, c’est aussi entendre une voix amie. Une voix émouvante. Son amour des enfants est sans réserve. Son dialogue avec la nature prodigieux, son goût de la vie intense et son souci de justice et d’équité exemplaire. ...', 93, '2019-01-05', 0, 0, 0),
(1, 'Les misérables', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'Le destin de Jean Valjean, forçat échappé du bagne, est bouleversé par sa rencontre avec Fantine. Mourante et sans le sou, celle-ci lui demande de prendre soin de Cosette, sa fille confiée aux Thénardier. Ce couple d\'aubergistes, malhonnête et sans scrupules, exploitent la fillette jusqu\'à ce que Jean Valjean tienne sa promesse et l\'adopte. Cosette devient alors sa raison de vivre. Mais son passé le rattrape et l\'inspecteur Javert le traque. ...', 347, '2006-12-23', 1, 1, 0),
(2, 'Notre-Dame de Paris', 'http://books.google.com/books/content?id=UxyoPwAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'Il était là, grave, immobile, absorbé dans un regard et dans une pensée. Tout Paris était sous ses pieds, avec les mille flèches de ses édifices et son circulaire horizon de molles collines, avec son fleuve qui serpente sous ses ponts et son peuple qui ondule dans ses rues, avec le nuage de ses fumées, avec la chaîne montueuse de ses toits qui presse Notre-Dame de ses mailles redoublées. Mais dans toute cette ville, l\'archidiacre ne regardait qu\'un point du pavé: la place du Parvis; clans toute cette foule, qu\'une figure: la bohémienne. Il eût été difficile de dire de quelle nature était ce regard, et d\'où venait la flamme qui en jaillissait. C\'était un regard fixe, et pourtant plein de trouble et de tumulte. Et à l\'immobilité profonde de tout son corps, à peine agité par intervalles d\'un frisson machinal, connue un arbre air vent, à la roideur de ses coudes plus marbre que la rampe où ils s\'appuyaient, à voir le sourire pétrifié qui contractait son visage, on eût dit qu\'il n\'y av ...', 953, '2019-12-11', 2, 2, 0),
(3, 'Quatrevingt-treize', 'http://books.google.com/books/content?id=KbqctAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'Dans a Vendée de 1793, trois personnages s\'affrontent : l\'aristocrate Lantenac, fidèle à son passé, son petit-neveu Gauvain, tourné vers l\'avenir généreux de la République, et le conventionnel Cimourdain, plus durement soucieux des exigences présentes de la Révolution et de la Terreur. Dans cette épopée où le romancier mêle la fiction de l\'intrigue et la réalité de l\'Histoire - Danton, Robespierre et Marat sont au centre du livre -, chacun des trois héros se trouve ainsi guidé par une certaine idée du devoir et de l\'honneur. Et chacun sera conduit à une forme d\'héroïsme qui n\'écarte pas la mort. L\'écrivain se refuse donc à trancher, et Quatrevingt-Treize n\'est pas un roman à thèse : \" Je ne veux ni du crime rouge ni du crime blanc. \" Mais la violence où s\'achevait l\'Ancien Régime était certainement un mal nécessaire, et ce qui s\'affirme dans ce livre qui paraît en 1874 et sera le dernier roman de Hugo, c\'est une vision de l\'Histoire qui garde trace, sans doute, de la Commune récen ...', 575, '2022-05-05', 3, 3, 0),
(4, 'L\'homme qui rit', 'http://books.google.com/books/content?id=CIORAAAAIAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'Publié en 1869, ce dernier roman du poète a pour décor l\'Angleterre du début du XVIIIe siècle. D\'une veine sociale aussi prononcée que \"Les misérables\", il demeure vraiment \"brutalisé\" par une intrigue violente où l\'antithèse chère à l\'auteur est mise au service de son idéologie. Passionné et passionnant, ce récit vaut le détour car même s\'il n\'est pas la meilleure des oeuvres romanesques d\'Hugo, il en est la plus typique. ...', 902, '2018-04-26', 4, 0, 0),
(5, 'Germinal', 'http://books.google.com/books/content?id=OLOEEsbsfEsC&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'The thirteenth novel in Émile Zola’s great Rougon-Macquart sequence, Germinal expresses outrage at the exploitation of the many by the few, but also shows humanity’s capacity for compassion and hope. Etienne Lantier, an unemployed railway worker, is a clever but uneducated young man with a dangerous temper. Forced to take a back-breaking job at Le Voreux mine when he cannot get other work, he discovers that his fellow miners are ill, hungry, and in debt, unable to feed and clothe their families. When conditions in the mining community deteriorate even further, Lantier finds himself leading a strike that could mean starvation or salvation for all. New translation Includes introduction, suggestions for further reading, filmography, chronology, explanatory notes, and glossary ...', 596, '2003-05-19', 5, 4, 1),
(6, 'Emile Zola : Oeuvres complètes – suivi d\'annexes (annotées, illustrées)', 'http://books.google.com/books/content?id=lWmNDwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Nouvelle édition 2019 enrichie de centaines de notes explicatives, d\'introductions, de notices, d\'annexes biographiques et critiques, de gravures originales, qui en font à ce jour l\'ouvrage le plus complet des oeuvres d\'Emile Zola. Vous y retrouverez 101 titres, organisés et mis en forme spécifiquement pour votre liseuse. Contenu détaillé: Les 20 titres des ROUGON-MACQUART : La fortune des Rougon - La curée - Le ventre de Paris - La conquête de Plassans - La faute de l\'abbé Mouret - Son Excellence Eugène Rougon - L\'Assommoir - Une page d\'amour - Nana - Pot-Bouille - Au Bonheur des Dames - La Joie de vivre - Germinal - L\'Oeuvre - La Terre - Le Rêve - La Bête humaine - L\'Argent - La Débâcle - Le Docteur Pascal LES 12 ROMANS : Thérèse Raquin - Le Voeu d’une morte - Madeleine Férat - L’Attaque du moulin - Les Mystères de Marseille - La Confession de Claude - Les Trois Villes: Lourdes - Les Trois Villes: Paris - Les Trois Villes: Rome - Les quatre Évangiles: Fécondité - Les quatre Évan ...', -1, '2019-01-01', 6, 5, 0),
(7, 'Emile Zola - Les oeuvres complètes (édition augmentée)', 'http://books.google.com/books/content?id=sLkeCwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Edition augmentée de nombreuses notes et annexes. Vous y retouverez l\'intégrale des oeuvres de Emile Zola et plus encore. Cet ebook énorme a fait l\'objet d\'un véritable travail de recherche, correction, mise en page pour votre plus grand confort de lecture. La navigation se fait aisément au sein de l\'oeuvre grâce aux tables des matières hyperliées et NCX intégrées. Pour nous faire part de vos remarques ou signaler une erreur, veuillez nous écrire à editions@ligram.com, les titres seront mis à jour dans les plus brefs délais. Sommaire : Les Rougon-Macquart : La Fortune des Rougon - La Curée - Le Ventre de Paris - La Conquête de Plassans - La Faute de L\'abbé Mouret - Son Excellence Eugène Rougon - L\'Assommoir - Une Page d\'amour - Nana - Pot-Bouille - Au Bonheur des dames - La Joie de vivre - Germinal - L\'oeuvre - La Terre - Le Rêve - La Bête humaine - L\'Argent - La Débacle - Le Docteur Pascal Les romans : Therèse Raquin - Le Voeu d’une morte - Madeleine Férat - L’Attaque du Moulin - ...', -1, '2003-07-07', 7, 6, 0),
(8, 'Emile Zola : Oeuvres complètes — 101 titres et annexes (Nouvelle édition enrichie)', 'http://books.google.com/books/content?id=XvJkfUAdXrYC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'L\'intégrale des oeuvres de Zola, soit 65 titres abondamment annotés. La mise en page et la navigation ont fait l\'objet d\'un soin particulier en intégrant les spécificités propres à votre liseuse. Les éditions Arvensa vous font bénéficier régulièrement de mises à jour gratuites et mettent à votre disposition leur service qualité. www.arvensa.com - La référence des ebooks classiques. ...', 11000, '2016-07-31', 8, 5, 0),
(9, 'Zola Emile 22 (ouvrages classique)', 'http://books.google.com/books/content?id=LFXsDwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Zola Emile 22 (ouvrages classique) Au bonheur des dames , germinal , j\'accuse , l\'argent , l\'assommoir , l\'oeuvre , la bête humaine , la conquête de plassans , la curée , la debacle , la faute de l\'abbe mouret , la fortune des rougon , la joie de vivre , la terre , le docteur pascal , le rêve , le ventre de paris , lettre a la jeunesse , nana , pot-bouille , son excellence Eugène Rougon , une page d\'amour . ...', 7397, '2005-10-24', 9, 7, 0),
(10, 'Une autobiographie', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'Publiée pour la première fois en 1977 en Angleterre l\'autobiographie d\'Agatha Christie nous permet d\'entrer dans l\'intimité d\'une femme au destin incroyable. Sacrée \" reine du crime \" de son vivant, elle connut un succès mondial. C\'est avec un humour ravageur qu\'elle se raconte : ses souvenirs d\'enfance, le naufrage de son premier mariage, sa relation particulière avec sa fille et, bien sûr, sa passion pour le suspense et la littérature... Mais ce que l\'on retiendra surtout chez cette femme qui met si bien la mort en scène, c\'est son admirable appétit de vivre. ...', 985, '2014-11-08', 10, 3, 0),
(11, 'Dix petits nègres', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'Il se passe quelque chose d\'anormal. Les dix personnes conviées sur l\'île du Nègre en ont la certitude. Pourquoi leur hôte est-il absent ? Soudain, une voix s\'élève, accusant d\'un crime chaque invité. Commence alors une ronde mortelle, rythmée par les couplets d\'une étrange comptine... ...', 320, '2010-12-13', 11, 1, 0),
(12, 'Cinq petits cochons', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'Amyas Crale, un peintre célèbre, a été assassiné, et sa femme, condamnée pour ce meurtre. Seize ans plus tard, leur fille, persuadée de l\'innocence de sa mère, demande à Hercule Poirot de mener une nouvelle enquête. Ayant retrouvé les cinq témoins de ce drame, tous coupables potentiels, Poirot déploie son exceptionnelle faculté de déduction pour découvrir qui a vraiment tué Amyas Crale. ...', 352, '2021-05-04', 11, 1, 0),
(13, 'An Autobiography', 'http://books.google.com/books/content?id=c3SgtwAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'Millions of fans the world over got to know her beloved characters, Hercule Poirot, Miss Jane Marple, and the rest, yet for decades little was known about their creator. Dame Agatha Christie was a woman who scrupulously kept her private life hidden from view, dodging the press, granting no interviews, and even, for a brief time, famously disappearing. But shortly after the great lady\'s death, the silence was broken when An Autobiography was finally published. The witty, insightful, and immensely entertaining reflections of a marvelous talent, An Autobiography is as compulsively readable as Christie\'s novels. In her own inimitable style, a brilliant eccentric whose life encapsulated her times sheds light on her past, including her childhood in Victorian England, her volunteer work during World War II, and, of course, her phenomenal career. Agatha Christie\'s An Autobiography brings into sharp focus a beloved and enduring literary icon whose imagination continues to mesmerize readers ...', 576, '2004-06-17', 12, 8, 1),
(14, 'Les travaux d\'Hercule', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'Pas de répit pour Hercule Poirot. Douze nouvelles, douze mystères brillamment élucidés. ...', 317, '2003-03-05', 13, 3, 0),
(15, 'Le premier homme', 'http://books.google.com/books/content?id=uFZfQgAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'Le manuscrit inachevé du roman auquel travaillait Camus pendant les dernières années de sa vie. Dans sa rédaction initiale, il a un caractère autobiographique qui aurait disparu dans sa version finale. En annexe, un carnet intitulé \"Premier homme : notes et plans\" et un échange de lettres avec Louis Germain. ...', 380, '2000-03-04', 14, 0, 0),
(16, 'L\'étranger', 'http://books.google.com/books/content?id=uRfuAAAAMAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'The Stranger, unabridged. ...', 202, '2005-09-28', 15, 9, 1),
(17, 'L\'étranger', 'http://books.google.com/books/content?id=u3hkngEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'Dans Folioplus Classiques, le texte intégral, enrichi d\'une lecture d\'image, écho pictural de l\'œuvre, est suivi de sa mise en perpective organisée en six points : Mouvement littéraire -La littérature engagée ; le genre et le registre -\" Un court roman de moraliste \" ; l\'écrivain à sa table de travail -Un classicisme \" instinctif \" ; le groupement de textes -Personnages insoumis ; la chronologie -Albert Camus et son temps ; la fiche -Des pistes pour rendre compte de sa lecture. ...', 206, '2017-06-05', 16, 0, 0),
(18, '˜Laœ chute', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'd ...', 152, '2019-02-22', 17, NULL, 0),
(19, 'L\' hôte : d\'après l\'oeuvre d\'Albert Camus', 'http://books.google.com/books/content?id=SvTtzgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'd ...', 62, '2019-09-11', 18, NULL, 2),
(20, 'Contes de Noël', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'Dans ces cinq contes, Dickens célèbre l\'esprit de Noël, le partage et la charité, et dénonce l\'injustice sociale qui exclut les pauvres de cette fête.. C\'est un portrait truculent de la vie quotidienne et une condamnation sans appel de l\'exploitation et de la misère. Ce message social, Dickens nous le donne en douceur, par le détour du conte et du fantastique. Comme l\'écrit Dominique Barbéris, \"ces contes nous rendent un peu d\'enfance à l\'état pur, dans la vigueur native des sentiments : l\'indignation et la pitié, le rire, la peur. Ils nous redonnent le bonheur oublié de nos premières lectures, ces lectures d\'adhésion sans distance critique, sans réserve, non pas sceptiques et endurcies, mais merveilleusement sensibles et \"crédules\" ...', 712, '2001-04-06', 19, 0, 0),
(21, 'L\'histoire, les aventures, et l\'expérience personnelles de David Copperfield le jeune', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'Lorsqu\'en 1850 il publie David Copperfield Charles Dickens offre à ses lecteurs le premier roman qu\'il ait écrit à la première personne, et derrière l\'histoire de son jeune héros, c\'est aussi parfois la sienne qu\'on peut lire. Mais ce que dessinent surtout les douloureuses premières années, le dur apprentissage de la vie dans une fabrique, puis la fuite et l\'errance picaresque du jeune Copperfield, c\'est un roman de formation où le personnage se fait son propre biographe. Il arrive alors qu\'on ne sache pas si le réel évoqué est celui que l\'enfant vécut au présent ou celui que l\'adulte revisite au passé. Car, d\'épreuve en épreuve, c\'est une nouvelle image de soi que le narrateur peu à peu reconstruit, avant de devenir lui-même à la fin du livre un écrivain semblable à celui qui, dès le début, a pris la plume pour raconter sa vie - et nous offrir ce qui est encore aujourd\'hui le plus grand roman anglais du XIXe siècle. Cette édition du texte intégral, dans la traduction établie sous ...', 1024, '2007-08-26', 3, 3, 0),
(22, 'Hard Times', 'http://books.google.com/books/content?id=dtgVDAAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Hard Times--Dickens\'s shortest novel and one of his triumphs--tells the tragic story of Louisa Gradgrind and her father and has had lasting appeal to generations of readers. Paul Schlicke is lecturer in English at the University of Aberdeen. ...', 338, '2018-01-16', 20, 10, 1),
(23, 'Pictures from Italy', 'http://books.google.com/books/content?id=xmV4jWDnsoQC&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'A delightful travelogue in the unique style of one of the greatest writers in the English language In 1844, Charles Dickens took a break from novel writing to travel through Italy for almost a year and Pictures from Italy is an illuminating account of his experiences there. He presents the country like a magic-lantern show, as vivid images ceaselessly appear before his - and his readers\' - eyes. Italy\'s most famous sights are all to be found here - St Peter\'s in Rome, Naples with Vesuvius smouldering in the background, the fairytale buildings and canals of Venice - but Dickens\'s chronicle is not simply that of a tourist. Avoiding preconceptions and stereotypes, he portrays a nation of great contrasts: between grandiose buildings and squalid poverty, and between past and present, as he observes everyday life beside ancient monuments. Combining thrilling travelogue with piercing social commentary, Pictures from Italy is a revealing depiction of an exciting and disquieting journey. I ...', 266, '2002-11-12', 21, 11, 1),
(24, 'Major Works of Charles Dickens', 'http://books.google.com/books/content?id=IYqMEAAAQBAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'This perfect gift of perennial favorite Dickens classics includes Great Expectations, Hard Times, Oliver Twist, A Christmas Carol, Bleak House, and A Tale of Two Cities. Bound in high-quality, colorful linen cases with foil-stamped designs inspired by each classic, this specially curated boxed set of Penguin Clothbound Classics is designed by the award-winning Coralie Bickford-Smith. ...', 0, '2007-07-21', 22, 12, 1),
(25, 'Kalpazanlar', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'd ...', 402, '2009-11-16', 23, NULL, 3),
(26, 'La Vie d\'Andre Gide. Avant-propos et commentaires par Pierre Herbart. (Textes servant de \"legendes\" aux photogr. tires des oeuvres d\'Andre Gide.) - (Paris): nrf (Gallimard 1955). 135 S. 8°', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'd ...', 135, '2015-11-17', 15, NULL, 0),
(27, 'CORRESPONDANCE', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'd ...', -1, '2018-03-24', 24, NULL, 0),
(28, 'Correspondance', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'd ...', -1, '2014-02-25', 25, NULL, 0),
(29, 'Dünya Nimetleri Ve Yeni Nimetler', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'd ...', 216, '2014-01-01', 26, NULL, 3),
(30, 'Marius', 'http://books.google.com/books/content?id=FzqSuAAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'Le port de Marseille, dans les années vingt. Marius, le fils de César, patron du bar de la Marine, est partagé entre son amour pour Fanny, la petite marchande de coquillages, et son désir de prendre la mer, de parcourir le monde... Lorsque Marcel Pagnol, en 1929, fait représenter Marius sur une scène parisienne, sans doute ne se doute-t-il pas que ses personnages deviendront aussi célèbres qu\'Harpagon ou monsieur Jourdain.Deux ans plus tard, Pagnol et Alexander Korda en tirent un film. Raimu, Charpin, Orane Demazis, Pierre Fresnay reprennent leurs rôles, et la pellicule les immortalise. Ils feront le tour de la terre... ...', 189, '2015-12-23', 27, NULL, 0),
(31, 'Marcel Pagnol, biographie', 'http://books.google.com/books/content?id=E00dAQAAIAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'd ...', 424, '2015-07-31', 28, NULL, 0),
(32, 'Topaze', 'http://books.google.com/books/content?id=hshsBQAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Marcel Pagnol Topaze Un modeste professeur, honnête, naïf et méprisé, se trouve embauché par un conseiller municipal véreux qui veut l’utiliser comme prête-nom... Topaze, créé en 1928, est le premier succès théâtral de Pagnol. C’est sa grande comédie de caractères, la plus classique, la plus moliéresque de ses pièces. Le personnage de Topaze devient aussitôt une figure archétypale du théâtre français. ...', 251, '2003-07-23', 29, 13, 0),
(33, 'La Gloire de mon père de Pagnol (fiche de lecture de référence)', 'http://books.google.com/books/content?id=n9mVDwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Venez découvrir La Gloire de mon père, le roman de Marcel Pagnol, grâce à une analyse littéraire de référence. Écrite par un spécialiste universitaire, cette fiche de lecture est recommandée par de nombreux enseignants. Cet ouvrage contient plusieurs parties : • la biographie de l\'écrivain • le résumé détaillé • le mouvement littéraire • le contexte de publication du roman • l\'analyse complète Retrouvez tous nos titres sur : www.fichedelecture.fr. ...', -1, '2006-02-24', 30, 14, 0),
(34, 'Le Château de ma mère de Pagnol (fiche de lecture de référence)', 'http://books.google.com/books/content?id=r9mVDwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Venez découvrir Le Château de ma mère, le roman de Marcel Pagnol, grâce à une analyse littéraire de référence. Écrite par un spécialiste universitaire, cette fiche de lecture est recommandée par de nombreux enseignants. Cet ouvrage contient plusieurs parties : • la biographie de l\'écrivain • le résumé détaillé • le mouvement littéraire • le contexte de publication du roman • l\'analyse complète Retrouvez tous nos titres sur : www.fichedelecture.fr. ...', -1, '2017-10-06', 30, 14, 0),
(35, 'Psychologie de l\'inconscient', 'http://books.google.com/books/content?id=ulFBGwAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'C\'est en 1916, trois ans après la rupture - douloureuse - avec Sigmund Freud, que Carl Gustav Jung (1875-1961) publie ce court traité, plusieurs fois réédité depuis, où il expose l\'essentiel de sa pensée. Reparcourant un demi-siècle de découvertes - travaux de Charcot ou de Breuer sur l\'origine psychologique des névroses, découvertes capitales de Freud concernant le \" trauma \" initial -, il définit avec fermeté et netteté les notions qui désormais le séparent de son maître viennois : celle de \" volonté de puissance \" comme moteur fondamental de l\'être, non réductible à la seule libido ; et celle, devenue célèbre, d\' \" inconscient collectif \", qui le conduira par la suite à l\'étude des mythes, religions et légendes, conçus comme archétypes de l\'esprit humain. Ecrit dans une langue simple et accessible, ce traité demeure la meilleure introduction à la pensée du grand psychiatre et psychologue suisse, auteur de Métamorphoses de l\'âme et ses symboles. ...', 218, '2015-10-11', 31, 3, 0),
(36, 'Ma vie', 'http://books.google.com/books/content?id=Hp13PQAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', '\" J\'ai donc entrepris aujourd\'hui, dans ma quatre-vingt-troisième année, de raconter le mythe de ma vie. \" C\'est au printemps 1957, quatre ans avant sa mort, que C.G. Jung, un des grands fondateurs de la psychanalyse, se fait le témoin de lui-même. Très peu d\'évènements extérieurs : l\'enfance de fils de pasteur, les combats psychiatriques du début du siècle, les voyages en Amérique du Sud et au Nouveau-Mexique, la construction sur un plan symbolique de la tour de Bollingen : autant de précisions autobiographiques qui éclairent cependant la genèse d\'une des œuvres qui ont le plus influencé l\'essor contemporain de la psychologie des profondeurs. C\'est aussi la rencontre avec Freud, puis les démêlés avec le maître, jusqu\'à la rupture de l\'héritier présomptif à propos du rôle de la sexualité dans le développement du psychisme. Mais toutes ces aventures ne sont évoquées qu\'en fonction des rencontres plus fondamentales du conscient et de l\'inconscient. \" Ma vie est l\'histoire d\'un incon ...', 528, '2012-09-05', 32, 0, 0),
(37, 'Le Livre Rouge', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'Le texte peut être désormais lu pour lui-même : un voyage intérieur et la matrice de l\'œuvre de Jung, gardée secrète toute sa vie. Pour l\'auteur de L\'homme et ses symboles, la psychologie doit apprendre de la mythologie et de la religion. Il a l\'intuition qu\'il existe une strate profonde de l\'inconscient, qui dépasse notre propre personne. Jung part à la recherche de son âme. Le Livre Rouge montre comment chacun peut essayer de transformer la plomb de sa nature en or spirituel. L\'automne dernier, la parution du Livre Rouge a été un événement en librairie. ...', 650, '2006-11-28', 19, 15, 0),
(38, 'L\'homme à la découverte de son âme', 'http://books.google.com/books/content?id=XMnWAAAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'Enfin à la portée de tout \"honnête homme\" de tout être, de tout esprit curieux de lui-même, ce chef-d\'œuvre capital, clair, sans jargon, simple et limpide dans sa langue, profond dans ses apports, ses découvertes, ses vérités, devenues aujourd\'hui des évidences. A la fois nouveau bien que déjà classique, L\'Homme à la découverte de son âme fut trop longtemps introuvable. Depuis toujours l\'homme se débat, pour le meilleur comme pour le pire, avec ces plans vivants qu\'il sent s\'agiter et palpiter au tréfonds de lui-même et qu\'il a épinglé du nom d\'âme. Rendre accessible ce qui est de l\'ordre de l\'âme à l\'approche expérimentale, tel fut, faits et preuves en main, le miracle paradoxalement réussi par Jung. C\'est ce lien expérimental à l\'inconscient : que le génie de Jung apporta en dot au génie de Freud dans la période de leur compagnonnage. Les complexes que Jung a mis en évidence, ces mélis-mélos, ignorés mais brûlants, de sensations et de besoins, ces nœuds, inconscients mais contra ...', 352, '2012-12-18', 28, 16, 0),
(39, 'L\'âme et la vie', 'http://books.google.com/books/content?id=JWHwPAAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'Ce choix de textes - plus d\'un millier - éclaire et illustre les aspects les plus caractéristiques, les plus accessibles aussi, de la doctrine de Jung. L\'ouvrage s\'adresse moins au spécialiste qu\'au lecteur soucieux de découvrir les perspectives originales qu\'ouvre cettre pensée sur les domaines les plus importants de l\'existence humaine. Parmi les thèmes abordés, on retiendra l\'essence et l\'activité de la psyché (l\'âme, la conscience et l\'inconscient, les archétypes, le rêve), l\'homme dans sa vie relationnelle (médecin et malade, l\'homme et la femme, jeunesse et vieillesse, l\'individu et la communauté), le royaume des valeurs et des choses dernières (la connaissance de soi, la vie de l\'esprit, la création, le bien et le mal, le devenir de la personnalité, l\'Occident et l\'Orient, destin, mort et rénovation, la voie vers Dieu). Le lecteur pourra aussi se laisser guider, à son gré, par les titres plus précis figurant en haut de chaque page et qui en résument le contenu essentiel. En ...', 415, '2006-01-01', 17, 3, 0),
(40, 'The Casual Vacancy', 'http://books.google.com/books/content?id=FjMbGietIZ4C&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'When Barry Fairbrother dies in his early forties, the town of Pagford is left in shock. Pagford is, seemingly, an English idyll, with a cobbled market square and an ancient abbey, but what lies behind the pretty facade is a town at war. Rich at war with poor, teenagers at war with their parents, wives at war with their husbands, teachers at war with their pupils. . . Pagford is not what it first seems. And the empty seat left by Barry on the parish council soon becomes the catalyst for the biggest war the town has yet seen. Who will triumph in an election fraught with passion, duplicity and unexpected revelations? A big novel about a small town, THE CASUAL VACANCY is J.K. Rowling\'s first novel for adults. It is the work of a storyteller like no other. ...', 480, '2019-08-12', 33, 17, 1),
(41, 'The Christmas Pig', 'http://books.google.com/books/content?id=ZVAoEAAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'One boy and his toy are about to change everything... Jack loves his childhood toy, Dur Pig. DP has always been there for him, through good and bad. Until one Christmas Eve, something terrible happens - DP is lost. But Christmas Eve is a night for miracles and lost causes, a night when all things can come to life... even toys. And Jack\'s newest toy - the Christmas Pig (DP\'s annoying replacement) - has a daring plan: Together they\'ll embark on a magical journey to seek something lost, and to save the best friend Jack has ever known... A heartwarming page-turning adventure about one child\'s love for his most treasured thing, and how far he will go to find it. A tale for the whole family to fall in love with, from one of the world\'s greatest storytellers. Featuring 9 black and white spreads and decorative inside art from renowned illustrator, Jim Field. ...', 256, '2014-07-06', 34, 17, 1),
(42, 'Very Good Lives', 'http://books.google.com/books/content?id=mF2GBwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'In 2008, J.K. Rowling delivered a deeply affecting commencement speech at Harvard University. Now published for the first time in book form, Very Good Lives offers J.K. Rowling\'s words of wisdom for anyone at a turning point in life, asking the profound and provocative questions: How can we embrace failure? And how can we use our imagination to better both ourselves and others? Drawing from stories of her own post-graduate years, the world-famous author addresses some of life\'s most important issues with acuity and emotional force. ...', 80, '2011-10-27', 35, 17, 1),
(43, 'Harry Potter et l\'enfant maudit. Texte intégral de la pièce de théâtre Parties 1 et 2', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'Etre Harry Potter n\'a jamais été facile et ne l\'est pas davantage depuis qu\'il est un employé surmené du ministère de la Magie, marié et père de trois enfants. Tandis que Harry se débat avec un passé qui refuse de le laisser en paix, son plus jeune fils, Albus Severus, doit lutter avec le poids d\'un héritage familial dont il n\'a jamais voulu. Le destin vient fusionner passé et présent. Père et fils se retrouvent face à une dure vérité : parfois, les ténèbres surviennent des endroits les plus inattendus. ...', 350, '2015-11-10', 36, 18, 0),
(44, 'The Ickabog', 'http://books.google.com/books/content?id=IY2uzQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'As the legend of the fearsome Ickabog spreads terror in the peaceful kingdom of Cornucopia, best friends Bert and Daisy set out to discover the truth and bring happiness back to the kingdom. ...', 304, '2011-01-06', 37, NULL, 1),
(45, 'Ça', 'http://books.google.com/books/content?id=SimPQAAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'Enfants, dans leur petite ville de Derry, Ben, Eddie, Richie et la petite bande du \"Club des ratés\", comme ils se désignaient, ont été confrontés à l\'horreur absolue : ça, cette chose épouvantable, tapie dans les égouts et capable de déchiqueter vif un garçonnet de six ans... Vingt-sept ans plus tard, l\'appel de l\'un d\'entre eux les réunit sur les lieux de leur enfance. Car l\'horreur, de nouveau, se déchaîne, comme si elle devait de façon cyclique et régulière frapper la petite cité. Entre le passé et le présent, l\'enfance et l\'âge adulte, l\'oubli des terreurs et leur insoutenable retour, l\'auteur de Sac d\'os nous convie à un fascinant voyage vers le Mal, avec une de ses oeuvres les plus amples et les plus fortes. [Source : 4e de couv.] ...', 799, '2000-02-13', 4, 3, 0),
(46, 'Running Man', 'http://books.google.com/books/content?id=LEBenQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'Premier quart du XXIe siècle. La dictature s\'est installée aux États-Unis. La télévision, arme suprême du nouveau pouvoir, règne sans partage sur le peuple. Une chaîne unique diffuse une émission de jeux suivie par des millions de fans : c\'est \" La Grande Traque \". Ben Richards, un homme qui n\'a plus rien à perdre, décide de s\'engager dans la compétition mortelle. Pendant trente jours il devra fuir les redoutables \" chasseurs \" lancés sur sa piste et activement aidés par une population encouragée à la délation. Tous les moyens sont bons pour éliminer Ben Richards... Dans ce livre terrifiant, le maître incontesté du suspense, le grand écrivain américain Stephen King, alias Richard Bachman, nous fait vivre cette diabolique course contre la mort sans nous laisser un instant de répit. Fascinant. ...', 315, '2018-12-06', 38, 3, 0),
(47, 'Dôme', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', '\"Le Dôme : personne n\'y entre, personne n\'en sort. A la fin de l\'automne, la petite ville de Chester Mill, dans le Maine, est inexplicablement et brutalement isolée du reste du monde par un champ de force invisible. Personne ne comprend ce qu\'est ce dôme transparent, d\'où il vient et quand - ou si - il partira. L\'armée semble impuissante à ouvrir un passage tandis que les ressources à l\'intérieur de Chester Mill se raréfient. Big Jim Rennie, un politicien pourri jusqu\'à l\'os, voit tout de suite le bénéfice qu\'il peut tirer de la situation, lui qui a toujours rêvé de mettre la ville sous sa coupe. Un nouvel ordre social régi par la terreur s\'installe et la résistance s\'organise autour de Dale Barbara, vétéran de l\'Irak et chef cuistot fraîchement débarqué en ville.\"--[Résumé de l\'éditeur]. ...', 640, '2005-01-11', 0, 16, 0),
(48, 'Si ça saigne', 'http://books.google.com/books/content?id=hzU7zgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', '\"Les journalistes le savent : si ça saigne, l’info se vend. Et l’explosion d’une bombe au collège Albert Macready est du pain béni dans le monde des news en continu. Holly Gibney de l’agence de détectives Finders Keepers, travaille sur sa dernière enquête lorsqu’elle apprend l’effroyable nouvelle en allumant la télévision. Elle ne sait pas pourquoi, le journaliste qui couvre les événements attire son attention...Quatre nouvelles magistrales, dont cette suite inédite au thriller L’Outsider, qui illustrent, une fois de plus, l’étendue du talent de Stephen King.\"--Page 4 de la couverture ...', 457, '2019-08-30', 39, NULL, 0),
(49, 'La Ligne verte', 'http://books.google.com/books/content?id=MSCK1GwuiLUC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Paul Edgecombe, ancien gardien-chef d’un pénitencier dans les années 1930, entreprend d’écrire ses mémoires. Il revient sur l’affaire John Caffey – ce grand Noir au regard absent, condamné à mort pour le viol et le meurtre de deux fillettes – qui défraya la chronique en 1932. La Ligne verte décrit un univers étouffant et brutal, où la défiance est la règle. Personne ne sort indemne de ce bâtiment coupé du monde, où cohabitent une étrange souris apprivoisée par un Cajun pyromane, le sadique Percy Wetmore, et Caffey, prisonnier sans problème. Assez rapidement convaincu de l’innocence de cet homme doté de pouvoirs surnaturels, Paul fera tout pour le sauver de la chaise électrique. Aux frontières du roman noir et du fantastique, ce récit est aussi une brillante réflexion sur la peine de mort. Un livre de Stephen King très différent de ses habituelles incursions dans l’horreur, terriblement efficace et dérangeant. ...', 512, '2011-08-09', 40, 19, 0),
(50, 'Dune', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'd ...', 928, '2011-11-20', 41, NULL, 0),
(51, 'Dune - Tome 2 Collector : Le Messie de Dune', 'http://books.google.com/books/content?id=1eD7DwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Le chef-d\'œuvre absolu de la science-fiction, adapté au cinéma par Denis Villeneuve. Paul Atréides a triomphé de ses ennemis. En douze ans de guerre sainte, ses Fremen ont conquis l\'univers. II est devenu l\'empereur Muad\'Dib. Presque un dieu, puisqu\'il voit l\'avenir. Ses ennemis, il les connaît. II sait quand et comment ils frapperont. Ils vont essayer de lui reprendre l\'épice qui donne la prescience et peut-être de percer le secret de son pouvoir. Il peut déjouer leurs plans, mais voit plus loin encore. II sait que tous les futurs possibles mènent au désastre et est hanté par la vision de sa propre mort. Peut-être n\'y a-t-il pas d\'autre liberté pour le prescient que celle du sacrifice... ...', 272, '2014-03-24', 42, 20, 0),
(52, 'Dune - Livre 1', 'http://books.google.com/books/content?id=B2wNEAAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Dune, le chef-d\'œuvre épique de science-fiction de Frank Herbert se déroulant dans un avenir lointain au milieu d\'une société interstellaire féodale tentaculaire, raconte l\'histoire de Paul Atréides alors que lui et sa famille acceptent le contrôle de la planète désertique Arrakis... Un mélange étonnant d\'aventure et de mysticisme, d\'environnementalisme, et de politique, Dune est une histoire puissante et fantastique qui jette un regard sans précédent sur notre univers et est ici transfigurée par son adaptation en roman graphique. Brian Herbert et Kevin J. Anderson ont conservé l\'intégrité du roman original, et Raúl Allén et Patricia Martín ont réalisé de splendides illustrations. Le tout est magnifié par les couvertures de Bill Sienkiewicz. Découvrez ou redécouvrez cette saga incontournable ! ...', 180, '2013-07-14', 43, 21, 0),
(53, 'Le programme conscience', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'Ils sont quatre à bord de l\'astronef Terra, la situation est critique : les cerveaux humains incorporés à l\'ordinateur de bord ont lâché les uns après les autres, et il fallut passer en commandes manuelles. L\'objectif, Tau Ceti, ne sera pas atteint avant quatre cents ans. A moins de bricoler l\'ordinateur jusqu\'à ce qu\'il devienne son propre opérateur. Peut-on inventer dans un astronef en perdition ce que le Programme Conscience a cherché en vain depuis tant d\'années ? Bickel ne se pose pas la question : il s\'y met. Il est débrouillard, compétent et agressif. Bien sûr, il ne sait pas tout. Il ne sait pas que la recherche est plus importante que les chercheurs, que la conscience doit rêver, qu\'elle a besoin d\'un territoire pour ses rêves. Ceux qui l\'ont envoyé ont parié là-dessus : ils ont programmé les avaries, les pannes et les frustrations. L\'équipage du Terra va droit vers le vide - la substance brute à partir de laquelle on peut tout créer. ...', 321, '2015-05-22', 27, NULL, 0),
(54, 'La Ruche d\'Hellstrom', 'http://books.google.com/books/content?id=ZUE7DwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Collection dirigée par gérard klein Hellstrom est un spécialiste réputé des insectes et en particulier des fourmis et des termites. Il a installé ses laboratoires dans une vallée perdue de l’Oregon. Mais quel est son véritable projet, le fameux et mystérieux Projet 40 ? Trois hommes de l’Agence, le plus puissant des services secrets américains, parfaitement équipés et entraînés, ont disparu en se contentant d’observer la Vallée. Comme s’ils avaient été avalés par la terre, par cette monstrueuse termitière humaine souterraine qui est l’avenir qu’une secte pluriséculaire a promis à l’humanité. Hellstrom n’est qu’une façade. Le roman le plus inquiétant de l’auteur de Dune. ...', 480, '2007-08-23', 44, 19, 0),
(55, '1984', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'd ...', 377, '2010-11-26', 45, NULL, 1),
(56, 'The Complete Novels of George Orwell', 'http://books.google.com/books/content?id=zyMluFEwA7AC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', '\'The greatest writer of the twentieth century\' Observer George Orwell\'s best-known novels, Animal Farm, describing a revolution that goes horribly wrong, and Nineteen Eighty-Four, portraying a world where human freedom has been crushed, are two of the most famous, well-quoted and influential political satires ever written. The other novels in this volume also tell stories of people at odds with repressive institutions: the corrupt imperialism of Burmese Days, disaffection with materialistic society in Keep the Aspidistra Flying, the perils of modern suburban living in Coming Up for Air and surviving on the streets in A Clergyman\'s Daughter. All the novels brought together here display Orwell\'s humour, his understanding of human nature and his great compassion. ...', 1514, '2008-08-17', 46, 22, 1),
(57, 'La ferme des animaux', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'A la ferme du Manoir, la révolte gronde. Entraînés par les cochons, les animaux chassent l\'homme qui les exploitait et prennent le pouvoir. Ils rêvent d\'instaurer une démocratie dans laquelle chacun participera aux décisions et travaillera à sa mesure. Mais chassez la tyrannie, elle revient au galop. A travers cette fable à l\'humour grinçant, George Orwell compose une virulente dénonciation du totalitarisme et invite à réfléchir sur la nature humaine. - Le texte intégral de l\'oeuvre accompagné de notes de bas de page. ...', 192, '2022-09-29', 47, 23, 0),
(58, 'La ferme des animaux', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'Dans Folioplus classiques, le texte intégral, enrichi d\'une lecture d\'image, écho pictural de l\'œuvre, est suivi de sa mise en perspective organisée en six points : Mouvement littéraire : Littérature politique ; Genre et registre : Une fable politique ; L\'écrivain à sa table de travail : \" Fondre en un tout dessein politique et ambition artistique \" ; Groupement de textes : Littérature française et révolution ; Chronologie : Georges Orwell et son temps ; Fiche : Des pistes pour rendre compte de sa lecture. ...', 187, '2009-08-09', 10, 2, 0),
(59, 'Essays', 'http://books.google.com/books/content?id=PqGMFPCiBEsC&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'These essays, reviews and articles illuminate the life and work of one of the most individual writers of this century - a man who created a unique literary manner from the process of thinking aloud and who elevated political writing to an art. ...', 601, '2005-05-03', 48, 22, 1),
(60, 'Le Seigneur des Anneaux T2 Les deux tours', 'http://books.google.com/books/content?id=VmOFEAAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'La Fraternité de l’Anneau poursuit son voyage vers la Montagne du Feu où l’Anneau Unique fut forgé, et où Frodo a pour mission de le détruire. Cette quête terrible est parsemée d’embûches : Gandalf a disparu dans les Mines de la Moria et Boromir a succombé au pouvoir de l’Anneau. Frodo et Sam se sont échappés afin de poursuivre leur voyage jusqu’au cœur du Mordor. À présent, ils cheminent seuls dans la désolation qui entoure le pays de Sauron – mais c’est sans compter la mystérieuse silhouette qui les suit partout où ils vont. Chef-d’œuvre de la fantasy, découverte d’un monde imaginaire, de sa géographie, de son histoire et de ses langues, mais aussi réflexion sur le pouvoir et la mort, Le Seigneur des Anneaux est sans équivalent par sa puissance d’évocation, son souffle et son ampleur. Cette traduction de Daniel Lauzon prend en compte la dernière version du texte anglais, les indications laissées par Tolkien à l’intention des traducteurs et les découvertes permises par les public ...', 603, '2018-12-21', 49, 24, 0),
(61, 'Le Seigneur des Anneaux T1 La fraternité de l\'anneau', 'http://books.google.com/books/content?id=WmOFEAAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Dans un paisible village du Comté, le jeune Frodo est sur le point de recevoir un cadeau qui changera sa vie à jamais : l’Anneau de Pouvoir. Forgé par Sauron au cœur de la Montagne du Feu, on croyait l’Anneau perdu depuis qu’un homme l’avait arraché au Seigneur des Ténèbres avant de le chasser hors du monde. À présent, de noirs présages s’étendent à nouveau sur la Terre du Milieu, les créatures maléfiques se multiplient et, dans les Montagnes de Brume, les Orques traquent les Nains. L’ennemi veut récupérer son bien afin de dominer le monde ; l’Œil de Sauron est désormais pointé sur le Comté. Heureusement Gandalf les a devancés. S’ils font vite, Frodo et lui parviendront peut-être à détruire l’Anneau à temps. Chef-d’œuvre de la fantasy, découverte d’un monde imaginaire, de sa géographie, de son histoire et de ses langues, mais aussi réflexion sur le pouvoir et la mort, Le Seigneur des Anneaux est sans équivalent par sa puissance d’évocation, son souffle et son ampleur. Cette traduc ...', 712, '2006-07-13', 49, 24, 0),
(62, 'Le Hobbit', 'http://books.google.com/books/content?id=wJyVDAAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Premier récit publié par J.R.R. Tolkien, en 1937, cette histoire, inventée par l’auteur pour ses propres enfants, rapporte les aventures de Bilbo, un jeune Hobbit, héros malgré lui lancé en quête d’un trésor gardé par un dragon, en compagnie de Nains et du magicien Gandalf. Bien que destiné initialement à la jeunesse, ce texte a également enchanté des générations de lecteurs adultes, par son suspense, ses coups de théâtre, son humour, sa poésie... mais aussi parce qu’il introduit le lecteur dans un monde inventé par Tolkien, la Terre du Milieu, qui sert de décor à la plupart de ses récits (dont Le Seigneur des Anneaux) ; et parce qu’il présente des personnages appelés à connaître une grande postérité, dont les Hobbits, Gandalf et... l’Anneau. Cette édition est servie par une nouvelle traduction, assurée par Daniel Lauzon, traducteur reconnu des œuvres de J.R.R. Tolkien depuis douze ans. Cette traduction inédite respecte les particularités du texte, son jeu avec les registres (du p ...', 181, '2020-11-10', 50, 24, 0),
(63, 'Le Seigneur des Anneaux T3 Le retour du roi', 'http://books.google.com/books/content?id=VGOFEAAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Alors que les armées de Sauron se rassemblent et que son ombre maléfique s’étend de plus en plus en Terre du Milieu, Hommes, Nains, Elfes et Ents unissent leurs forces pour se battre contre les Ténèbres. Gandalf, quant à lui, élabore une stratégie désespérée afin de triompher du mal. Le Mordor s’est armé, ses créatures malfaisantes se sont multipliées, la riposte se prépare. Si l’Anneau tombe entre les mains du Seigneur des Ténèbres, qui pourra l’arrêter ? Tous les espoirs reposent sur Frodo et Sam, qui peinent à atteindre la Montagne du Feu afin de détruire, une bonne fois pour toutes, l’Anneau de Sauron. Chef-d’œuvre de la fantasy, découverte d’un monde imaginaire, de sa géographie, de son histoire et de ses langues, mais aussi réflexion sur le pouvoir et la mort, Le Seigneur des Anneaux est sans équivalent par sa puissance d’évocation, son souffle et son ampleur. Cette traduction de Daniel Lauzon prend en compte la dernière version du texte anglais, les indications laissées par ...', 705, '2016-09-01', 49, 24, 0);
INSERT INTO `Book` (`id_book`, `title`, `cover`, `description`, `number_of_pages`, `acquiring_date`, `id_year`, `id_editor`, `id_language`) VALUES
(64, 'Du conte de fées', 'http://books.google.com/books/content?id=li2WEAAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Qu’est-ce que le conte de fées ? Où puise-t-il son origine ? Quelles sont ses fonctions ? En répondant à ces trois questions, ce court essai, qui a tout d’un grand texte théorique, donne des clés fondamentales tant pour comprendre l’œuvre de J.R.R. Tolkien que le conte de fées et son influence sur nos vies. L’auteur aborde le sujet comme « un territoire périlleux qui réserve des chausse-trappes aux imprudents et des cachots aux téméraires », et on l’y suit comme on partirait pour une formidable aventure. L’essentiel ne tient-il pas dans le pouvoir d’enchantement, d’évasion, de consolation et de création du conte de fées ? ...', 78, '2004-08-31', 51, 24, 0),
(65, 'Paris au XXe siècle', 'http://books.google.com/books/content?id=l7_jHAAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'Paris, 1960 : une métropole splendide, étincelante d\'électricité, reliée à la mer par un gigantesque canal, sillonnée d\'autos et de métros silencieux...Tel est le monde fascinant qu\'ont forgé, conjuguant leurs efforts, la Finance et la Technique. Pourtant, cet avenir radieux a son envers. Seuls quelques marginaux, méprisés, bientôt vaincus par la misère et la faim, persistent dans le culte de l\'Art et de la Poésie, tandis qu\'un Etat omniprésent organise la distribution du savoir scientifique... Composé avant les \" Voyages extraordinaires \", refusé par l\'éditeur Hetzel, ce roman aura attendu cent trente ans avant de revoir le jour. Surprenant par la pertinence de son information scientifique, il vaut aussi et surtout par l\'acuité de son analyse des intrications de l\'économie, de la technique et la politique. Une vision ambiguë qui fait justice de l\'image d\'un Jules Verne chantre béat du Progrès. Et d\'abord un roman prenant, coloré, où le grandiose se teinte volontiers d\'un humour d ...', 186, '2003-08-19', 52, 3, 0),
(66, 'Voyage au Centre de la Terre', 'http://books.google.com/books/content?id=DuVRCE41gjgC&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'd ...', -1, '2001-01-17', NULL, NULL, 0),
(67, 'Voyage au centre de la Terre', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'Le professeur Lidenbrock est persuadé d\'avoir découvert le chemin qui mène au centre de la Terre. Accompagné de son neveu Axel, l\'impétueux géologue part en Islande. Là, au fond d\'un volcan, les deux explorateurs et leur guide s\'enfoncent dans les entrailles mystérieuses du globe. Un voyage d\'une folle audace, véritable défi lancé à la science. ...', 288, '2020-04-29', 53, 1, 0),
(68, 'From the Earth to the Moon', 'http://books.google.com/books/content?id=0fdvDwAAQBAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'Written almost a century before the daring flights of the astronauts, Jules Verne’s prophetic novel of man’s race to the stars is a classic adventure tale enlivened by broad satire and scientific acumen. When the members of the elite Baltimore Gun Club find themselves lacking any urgent assignments at the close of the Civil War, their president, Impey Barbicane, proposes that they build a gun big enough to launch a rocket to the moon. But when Barbicane’s adversary places a huge wager that the project will fail and a daring volunteer elevates the mission to a “manned” flight, one man’s dream turns into an international space race. A story of rip-roaring action, humor, and wild imagination, From the Earth to the Moon is as uncanny in its accuracy and as filled with authentic detail and startling immediacy as Verne’s timeless masterpieces 20,000 Leagues Under the Sea and Around the World in Eighty Days. ...', 242, '2010-02-14', 54, 25, 1),
(69, 'Around the World in Eighty Days', 'http://books.google.com/books/content?id=jsSMEAAAQBAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'Verne\'s classic novel of global voyaging One night in the reform club, Phileas Fogg bets his companions that he can travel across the globe in just eighty days. Breaking the well-established routine of his daily life, he immediately sets off for Dover with his astonished valet Passepartout. Passing through exotic lands and dangerous locations, they seize whatever transportation is at hand - whether train or elephant - overcoming set-backs and always racing against the clock. For more than seventy years, Penguin has been the leading publisher of classic literature in the English-speaking world. With more than 1,700 titles, Penguin Classics represents a global bookshelf of the best works throughout history and across genres and disciplines. Readers trust the series to provide authoritative texts enhanced by introductions and notes by distinguished scholars and contemporary authors, as well as up-to-date translations by award-winning translators. ...', 0, '2022-11-18', 55, 12, 1),
(70, 'A la recherche du temps perdu', 'http://books.google.com/books/content?id=VVj-oQEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'Les parties blanches de barbes jusque-là entièrement noires rendaient mélancolique le paysage humain de cette matinée, comme les premières feuilles jaunes des arbres alors qu\'on croyait encore pouvoir compter sur un long été, et qu\'avant d\'avoir commencé d\'en profiter on voit que c\'est déjà l\'automne. Alors moi qui depuis mon enfance, vivant au jour le jour et ayant reçu d\'ailleurs de moi-même et des autres une impression définitive, je m\'aperçus pour la première fois, d\'après les métamorphoses qui s\'étaient produites dans tous ces gens, du temps qui avait passé pour eux, ce qui me bouleversa par la révélation qu\'il avait passé aussi pour moi. Et indifférente en elle-même, leur vieillesse me désolait en m\'avertissant des approches de la mienne. ...', 447, '2015-08-26', 56, 0, 0),
(71, 'The Complete Short Stories of Marcel Proust', 'http://books.google.com/books/content?id=fP1UvtGM8bwC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'This volume gathers together all of Marcel Proust\'s short fiction and six tales never before translated into English. ...', 224, '2002-05-17', 57, 26, 1),
(72, 'In Search of Lost Time Volume I Swann\'s Way', 'http://books.google.com/books/content?id=mDckn3svlBoC&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'In Swann’s Way, the themes of Proust’s masterpiece are introduced, and the narrator’s childhood in Paris and Combray is recalled, most memorably in the evocation of the famous maternal good-night kiss. The recollection of the narrator’s love for Swann’s daughter Gilberte leads to an account of Swann’s passion for Odette and the rise of the nouveaux riches Verdurins. For this authoritative English-language edition, D. J. Enright has revised the late Terence Kilmartin’s acclaimed reworking of C. K. Scott Moncrieff’s translation to take into account the new definitive French editions of Á la recherché du temps perdu (the final volume of these new editions was published by the Bibliothèque de la Pléiade in 1989). ...', 660, '2008-08-04', 58, 27, 1),
(73, 'Marcel Proust : Oeuvres complètes — Les 40 titres et annexes (Nouvelle édition enrichie)', 'http://books.google.com/books/content?id=tLFaokWg8vMC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'L\'intégrale des oeuvres de Proust, soit 40 titres et annexes abondamment annotés et particulièrement destinés aux lecteurs exigeants. La mise en page et la navigation ont fait l\'objet d\'un soin particulier en intégrant les spécificités propres à votre liseuse. Les éditions Arvensa vous font bénéficier régulièrement de mises à jour gratuites et mettent à votre disposition leur service qualité. www.arvensa.com - La référence des ebooks classiques. ...', 8000, '2001-11-07', 59, 5, 0),
(74, 'Les Oeuvres Complètes de Marcel Proust', 'http://books.google.com/books/content?id=wSlCBAAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Ce livre numérique présente Les Oeuvres Complètes de Marcel Proust avec une table des matières dynamique et détaillée. Marcel Proust (prénoms complets : Valentin Louis Georges Eugène Marcel), né à Auteuil le 10 juillet 1871 et mort à Paris le 18 novembre 1922, est un écrivain français, dont l\'oeuvre principale est une suite romanesque intitulée À la recherche du temps perdu, publiée de 1913 à 1927. En 1907, Marcel Proust commence l\'écriture de son grand œuvre À la recherche du temps perdu dont les sept tomes seront publiés entre 1913 (Du côté de chez Swann) et 1927, c\'est-à-dire en partie après sa mort ; le second volume, À l’ombre des jeunes filles en fleurs, obtiendra le prix Goncourt en 1919. Marcel Proust meurt épuisé, le 18 novembre 1922, d\'une bronchite mal soignée : il est inhumé au cimetière du Père-Lachaise à Paris, accompagné par une assistance nombreuse qui salue un écrivain d\'importance que les générations suivantes placeront au plus haut en faisant de lui un véritable ...', -1, '2022-07-18', 60, 28, 0),
(75, 'Théâtre', 'http://books.google.com/books/content?id=LdDQAJE59eUC&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'Ce livre est la première édition du théâtre complet de Maupassant. Il regroupe les cinq pièces jouées ou publiées du vivant de Maupassant : A la feuille de rose, maison turque (1875), Histoire du vieux temps (1879), Une répétition (1880), Musotte (1891), et La Paix du ménage (1893). En annexe figure La Trahison de la Comtesse de Rhune (1877), jamais jouée et laissée à l\'état de manuscrit, et la saynète La Revanche (1886). Volontiers contradictoire, Maupassant disait ne pas aimer se rendre au théâtre, par crainte de l\'ennui et du manque de confort, mais était en réalité passionné par la scène, comme en attestent les souvenirs de Charles Lapierre : \"Une seule chose pouvait distraire Maupassant du canotage, c\'était le théâtre. Il avait pour complice de sa passion Robert P[inchon], avec lequel il fit, en 1873, pour son début, une comédie-libre, en un acte, quelque chose comme une Lysistrata en diminutif. Le sujet était scabreux, si la forme était châtiée. Il nous suffira de dire que l ...', 506, '2012-12-10', 0, 29, 0),
(76, 'La parure', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'Mathilde Loisel n\'est pas pauvre, mais elle n\'est pas riche non plus. Elle qui ne rêve que de luxe et du grand monde, comment peut-elle répondre à l\'invitation d\'un ministre sans toilette digne de ce nom ? Elle emprunte alors le collier en diamant d\'une de ses amies et se rend à la réception, plus belle que jamais. Elle ne sait pas encore que cette parure signera sa chute... ...', 192, '2022-02-27', 61, 1, 0),
(77, 'Contes du jour et de la nuit', 'http://books.google.com/books/content?id=gcCKuQAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'Parricides, ivrognes, enfants pervers, maris aveugles, ravissantes idiotes, bourgeois lâches et mesquins, paysans cruels et cupides, vous ne trouverez dans ces contes, de jour comme de nuit, que bourreaux ou victimes. Mais s\'ils sont tous à tuer, ils tuent aussi beaucoup, ou se pendent, ou se tirent à la rigueur un coup de revolver dans la bouche par peur de la mort... Maupassant serait-il le grand ancêtre méconnu du néo-polar ? ...', 219, '2013-06-18', 62, 3, 0),
(78, 'Cinq nouvelles réalistes', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'Une misérable rempailleuse se prive toute sa vie pour laisser un héritage au pharmacien qu\'elle aime en secret ; un couple de bourgeois sans enfant \" achète \" le fils d\'une famille de paysans ; une famille attend une vie durant le retour d\'un oncle parti faire fortune en Amérique ; un couple de citadins se déchire autour d\'un parapluie ; un autre vit dans la misère pendant dix ans pour rembourser une parure perdue... Les atouts d\'une œuvre commentée avec, en plus, tous les repères pour les élèves : des rabats panoramiques avec l\'œuvre d\'art en grand format, une frise historique et culturelle inédite ; des élements d\'histoire des arts ; des notes de vocabulaire adaptées ; des rubriques outils de la langue pratiques ; des encadres méthode efficaces ; un lexique. ...', 95, '2014-05-23', 0, NULL, 0),
(79, 'Contes Réalistes et Contes Fantastiques', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'd ...', 222, '2007-01-20', 63, NULL, 0),
(80, 'La vie est un roman', 'http://books.google.com/books/content?id=2lrRDwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'POUR LUI, TOUT EST ÉCRIT D\'AVANCE POUR ELLE TOUT RESTE À ÉCRIRE « Un jour d’avril, ma fille de trois ans, Carrie, a disparu alors que nous jouions toutes les deux à cache-cache dans mon appartement de Brooklyn. » Ainsi débute le récit de Flora Conway, romancière renommée à la discrétion légendaire. La disparition de Carrie n’a aucune explication. La porte et les fenêtres de l’appartement étaient closes, les caméras de ce vieil immeuble new-yorkais ne montrent pas d’intrusion. L’enquête de police n’a rien donné. Au même moment, de l’autre côté de l’Atlantique, un écrivain au cœur broyé se terre dans une maison délabrée. Lui seul détient la clé du mystère. Et Flora va le débusquer. Une lecture à nulle autre pareille. En trois actes et deux coups de théâtre, Guillaume Musso nous immerge dans une histoire étourdissante qui puise sa force dans le pouvoir des livres et la rage de vivre de ses personnages. « Un roman peut en cacher un autre. (...) Une vertigineuse mise en abyme et [Guill ...', 230, '2022-04-07', 64, 30, 0),
(81, 'Demain', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'Elle est son passé... il est son avenir. Emma vit à New York. À 32 ans, elle continue de chercher l’homme de sa vie. Matthew habite à Boston. Il a perdu sa femme dans un terrible accident et élève seul sa fille de quatre ans. Ils font connaissance grâce à Internet et bientôt, leurs échanges de mails les laissent penser qu’ils ont enfin droit au bonheur. Désireux de se rencontrer, ils se donnent rendez-vous dans un petit restaurant italien de Manhattan. Le même jour à la même heure, ils poussent chacun à leur tour la porte du restaurant. Ils sont conduits à la même table et pourtant... ils ne se croiseront jamais. Jeu de mensonges ? Fantasme de l’un ? Manipulation de l’autre ? Victimes d’une réalité qui les dépasse, Matthew et Emma vont rapidement se rendre compte qu’il ne s’agit pas d’un simple rendez-vous manqué... Une aventure aussi mystérieuse que bouleversante. Une intrigue virtuose aux frontières du réel. Un suspense diabolique, intense et captivant. ...', 438, '2023-01-22', 65, NULL, 0),
(82, 'Je reviens te chercher', 'http://books.google.com/books/content?id=KghFDwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Peut-on, en quelques heures, rattraper les erreurs de toute une vie ? Un matin, Ethan reçoit le faire-part de mariage de Céline, la femme qu\'il aimait et qu\'il a quittée pour se consacrer à sa fulgurante carrière. Une décision qu\'il regrette amèrement aujourd\'hui. Sur un coup de tête, il se rend au mariage et se met au défi de reconquérir la jeune femme. Il ne lui reste que quelques heures pour y parvenir. Quelques heures folles et pleines de mystère, au terme desquelles il est abattu par un inconnu. C\'est alors que l\'incroyable se produit... ...', 336, '2011-03-15', 66, 31, 0),
(83, 'Parce que je t\'aime', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'Un livre profondément humain. Un dénouement stupéfiant. Layla, une petite fille de cinq ans, disparaît dans un centre commercial de Los Angeles. Brisés, ses parents finissent par se séparer. Cinq ans plus tard, Layla est retrouvée à l\'endroit exact où on avait perdu sa trace. Elle est vivante, mais reste plongée dans un étrange mutisme. À la joie des retrouvailles, succèdent les interrogations. Où était Layla pendant toutes ces années ? Avec qui ? Et surtout : pourquoi est-elle revenue ? « Guillaume Musso signe sans doute son meilleur roman. Le plus surprenant, le plus intime, le plus humain. » La Voix du Nord « Les personnnages sont dotés d\'une fragilité extrêmement touchante et d\'une humanité qui nous ficelle viscéralement à eux. Chez Musso, l\'émotion a des accents majeurs. » Le Figaro Magazine ...', 425, '2012-01-12', 67, NULL, 0),
(84, 'L\'instant présent', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'Lisa rêve de devenir comédienne. Pour payer ses études d\'art dramatique, elle travaille dans un bar de Manhattan. Un soir, elle fait la connaissance d\'Arthur Costello, un jeune médecin urgentiste. Leur complicité est immédiate. Pour le séduire, Lisa est prête à tout. Dans une ville-labyrinthe qui n\'offre aucun répit, elle prend tous les risques. Mais Arthur n\'est pas un homme comme les autres. Bientôt, il révèle à Lisa la terrible vérité qui lui interdit de l\'aimer : «Ce qui m\'arrive est inimaginable, et pourtant bien réel...» Dans un New York plus imprévisible que jamais, Arthur et Lisa vont lier leur destin pour déjouer les pièges que leur impose le plus impitoyable des ennemis : le temps. ...', 371, '2001-06-17', 68, NULL, 0),
(85, 'Berserk', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'd ...', 122, '2014-01-05', 69, NULL, 0),
(86, 'Dur-an-ki', 'http://books.google.com/books/content?id=qm95EAAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'L\'œuvre inachevée Parallèmement à Berserk, Kentaro Miura s\'était lancé dans un nouveau projet : créer un nouvel univers fantasy, qui serait dessiné par les artistes qui l\'assistent au quotidien, à savoir le studio Gaga. C\'est ainsi qu\'est né Dur-an-ki, racontant les aventures trépidantes de Usumgall, mi-dieu et mi-humain, mi-homme et mi-femme qui grandit et chasse aux côtés de ses amis humains. Suite au décès de Miura, la série a été arrêtée et ne connaîtra donc pas de fin. Cependant, ce tome inachevé contient le scénario d\'origine écrit par Miura, ainsi que toutes ses esquisses et documents préparatoires. De précieux documents qui permettront aux lecteurs de se plonger dans le processus créatif du grand maître. ...', 260, '2006-09-16', 70, 32, 0),
(87, 'Berserk', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'd ...', 228, '2000-06-08', 71, NULL, 0),
(88, 'Giganto Maxia', 'http://books.google.com/books/content?id=C2PZCwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', '100 million years after the Great Destruction, life hangs on in the wastelands with human, demi-humans, and massive creatures fighting for survival. With the Empire of Olympus using colossal beasts to crush their adversaries, only gladiator Delos, mystic Prome, and the titan Gohra they become can hope to stem genocide and heal the shattered Earth! From the immense imagination of Berserk creator Kentaro Miura comes Giganto Maxia, a science-fiction/fantasy manga of titanic proportions! ...', 236, '2009-07-22', 72, 33, 1),
(89, 'Berserk Deluxe Volume 12', 'http://books.google.com/books/content?id=oStfEAAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'The Game of Thrones of adult fantasy/horror manga continues in deluxe oversized hardcover editions, collecting Berserk volumes 34–36 in the original oversized serialization format, including three fold-out posters. Griffith\'s new Band of the Hawk assume their unholy forms to battle the monstrous Kushan emperor and his horde of demons, leaving the terrified Midland citizenry to wonder if their rescuers are another horrific curse. Meanwhile, Guts and his companions seek refuge to repair their ship on a small island that is not the safe haven they\'d hoped for—it\'s a sinister place watched over by an ancient, vengeful god whose power is about to be unleashed! Collects Berserk Volumes 34, 35, and 36. ...', 678, '2022-12-23', 73, 33, 1),
(90, 'From the Damascus Covenant to the Covenant of the Community', 'http://books.google.com/books/content?id=jNuvCQAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'This volume offers new insight into the origins of the \"new covenant in the land of Damascus\" and the Qumran community, and explores topics related to their covenantal theology. ...', 639, '2019-09-01', 74, 34, 1),
(91, 'Le Temple', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'd ...', 310, '2019-06-24', 75, NULL, 0),
(92, 'The Gospel of Mark and the Roman-Jewish War of 66–70 CE', 'http://books.google.com/books/content?id=Rp2DDwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'This book interprets Mark\'s gospel in light of the Roman-Jewish War of 66-70 CE. Locating the authorship of Mark\'s gospel in rural Galilee or southern Syria after the fall of Jerusalem and the temple, and after Vespasian\'s enthronement as the new emperor, Kimondo argues that Mark\'s first hearers--people who lived through and had knowledge of the important events of the war--may have evaluated Mark\'s story of Jesus as a contrast to Roman imperial values. He makes an intriguing case that Jesus\' proclamation as the Messiah in the villages of Caesarea Philippi set up a deliberate contrast between Jesus\'s teaching and Vespasian\'s proclamation of himself as the world\'s divine ruler. He suggests that Mark\'s hearers may have interpreted Jesus\' liberative campaign in Galilee as a deliberate contrast to Vespasian\'s destructive military campaigns in the area. Jesus\'s teachings about wealth, power, and status while on the way to Jerusalem may have been heard as contrasts to Roman imperial val ...', 272, '2004-05-25', 76, 35, 1),
(93, 'Recruit for Andromeda', 'http://books.google.com/books/content?id=ETvtCgAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'When Kit Temple was drafted for the Nowhere Journey, he figured that he\'d left his home, his girl, and the Earth for good. For though those called were always promised \"rotation,\" not a man had ever returned from that mysterious flight into the unknown. Kit\'s fellow-draftee Arkalion, the young man with the strange, old-man eyes, seemed to know more than he should. So when Kit twisted the tail of fate and followed Arkalion to the ends of space and time, he found the secret behind \"Nowhere\" and a personal challenge upon which the entire future of Earth depended. ...', 76, '2019-04-07', 77, 36, 1),
(94, 'CSB Restoration Bible, Brown LeatherTouch, Indexed', 'http://books.google.com/books/content?id=eV5xDwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'We all face difficulties in life. The death of a loved one, financial problems, divorce, health issues, job loss . . . the list can go on and on. In the midst of these difficult seasons of life there is hope. The CSB Life Restoration Bible features relevant and applicable notes and helps focus on life recovery in an easy-to-follow format to help individuals find hope and joy within the Bible as they embrace the truths and promises found in God’s Word during difficult seasons of life. The key helps in this Bible include over 500 guided notes following seven Life Restoration Principles via the easy-to-remember R.E.S.T.O.R.E acrostic (Rest and Reflect–Eternal Perspective–Support–Thanksgiving and Contentment–Other-centeredness–Relationships–Exercise of Faith). Each note is based on a key verse in God’s Word related to a specific Life Restoration Principle followed by a short devotional to help expound upon the principle before guiding the reader to the “Next Step” in the restoration j ...', 1696, '2012-08-19', 78, 37, 1),
(95, 'Patricia Neal', 'http://books.google.com/books/content?id=8bfGYghnSEUC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'The internationally acclaimed actress Patricia Neal has been a star on stage, film, and television for nearly sixty years. On Broadway she appeared in such lauded productions as Lillian Hellman’s Another Part of the Forest, for which she won the very first Tony Award, and The Miracle Worker. In Hollywood she starred opposite the likes of Ronald Reagan, Gary Cooper, John Wayne, Paul Newman, Fred Astaire, and Tyrone Power in some thirty films. Neal anchored such classic pictures as The Day the Earth Stood Still, A Face in the Crowd, and Breakfast at Tiffany’s, but she is perhaps best known for her portrayal of Alma Brown in Hud, which earned her the Academy Award for Best Actress in 1963. But there has been much, much more to Neal’s life. She was born Patsy Louise Neal on January 20, 1926, in Packard, Kentucky, though she spent most of her childhood in Knoxville, Tennessee. Neal quickly gained attention for her acting abilities in high school, community, and college performances. He ...', 504, '2016-03-12', 79, 38, 1),
(96, 'Eugene O\'Neill', 'http://books.google.com/books/content?id=nhmYkU-S6GIC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Stricken with guilt and grief when his father, mother and brother died in quick succession, Eugene O\'Neill mourned deeply for two decades. This critical biography presents an understanding of O\'Neill\'s life, work and slow grieving. ...', 606, '2021-03-27', 80, 39, 1),
(97, 'The Country Houses of John F. Staub', 'http://books.google.com/books/content?id=H0PU9rLEFh4C&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', '\"This ambitious study of Staub\'s work by architectural historian Stephen Fox goes beyond a description of Staub\'s houses. Fox analyzes the roles of space, structure, and decoration in creating, defining, and maintaining social class structures and expectations and shows how Staub was able to incorporate these elements and understandings into the elegant buildings he designed for his clients. In the process, he contributes greatly to a fuller understanding of Houston\'s emergence as a premier American city.\"--BOOK JACKET. ...', 388, '2018-10-06', 10, 40, 1),
(98, 'Best Actress', 'http://books.google.com/books/content?id=zeDBDwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Ingrid Bergman. Audrey Hepburn. Elizabeth Taylor. Jane Fonda. Meryl Streep. The list of women who have won the coveted and legendary Academy Award for Best Actress is long and varied. Through this illustrious roster we can trace the history of women in Hollywood, from the rise of Mary Pickford in the early 20th century to the #MeToo and Time’s Up movements of today, which have galvanized women across the world to speak out for equal pay, respect, power, and opportunity. This lavishly illustrated coffee table book offers a vital examination of the first 75 women to have won the Best Actress Oscar over the span of 90 years. From inaugural recipient Janet Gaynor to Frances McDormand’s 2018 acceptance speech that assertively brought women to the forefront, Best Actress: The History of Oscar®-Winning Women serves to promote a new appreciation for the cinematic roles these women won for, as well as the real-life roles many of them played – and still play – in advancing women’s rights an ...', 711, '2008-01-11', 81, 41, 1),
(99, 'The Beat Face of God', 'http://books.google.com/books/content?id=O9MbqZOB_NgC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Jack Kerouac claimed, in the 1950s, that the Beat Generation was a religious generation. He was right then, and his claim remains true for anyone on a spiritual journey today. ...', 170, '2019-10-21', 16, 42, 1),
(100, 'The Wind Through the Keyhole', 'http://books.google.com/books/content?id=x5oYMmRDE8EC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'In his New York Times bestselling The Wind Through the Keyhole, Stephen King returns to the spectacular territory of the Dark Tower fantasy saga to tell a story about gunslinger Roland Deschain in his early days. The Wind Through the Keyhole is a sparkling contribution to the series that can be placed between Dark Tower IV and Dark Tower V. This Russian doll of a novel, a story within a story within a story, visits Roland and his ka-tet as a ferocious, frigid storm halts their progress along the Path of the Beam. Roland tells a tale from his early days as a gunslinger, in the guilt-ridden year following his mother’s death. Sent by his father to investigate evidence of a murderous shape-shifter, Roland takes charge of Bill Streeter, a brave but terrified boy who is the sole surviving witness to the beast’s most recent slaughter. Roland, himself only a teenager, calms the boy by reciting a story from the Book of Eld that his mother used to read to him at bedtime, “The Wind through t ...', 320, '2014-05-27', 82, 43, 1),
(101, 'The Dark Tower Boxed Set', 'http://books.google.com/books/content?id=StsyDwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'For the first time ever as a complete ebook series, all of Stephen King’s eight Dark Tower novels—one of the most acclaimed and popular series of all time. Special bonus: The ebook boxed set now includes The Complete Concordance, a user’s guide to the Dark Tower world. Set in a world of ominous landscape and macabre menace, The Dark Tower series features one of Stephen King’s most powerful creations—The Gunslinger—a haunting figure who embodies the qualities of the lone hero through the ages, from ancient myth to frontier Western legend. As Roland crosses a desert of damnation in a treacherous world that is a twisted image of our own, he moves ever closer to the Dark Tower of his dreams—and nightmares. This stunning, must-have collection includes: The Dark Tower I: The Gunslinger; The Dark Tower II: The Drawing of the Three; The Dark Tower III: The Waste Lands; The Dark Tower IV: Wizard and Glass; The Dark Tower: The Wind Through the Keyhole; The Dark Tower V: Wolves of the Calla; ...', 4720, '2014-04-16', 83, 43, 1),
(102, 'The Dark Tower VI: Song of Susannah', 'http://books.google.com/books/content?id=xbyPxN04shEC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'SONG OF SUSANNAH is the sixth volume in Stephen King\'s epic Dark Tower series. The Dark Tower is now a major motion picture starring Matthew McConaughey and Idris Elba. The pivotal sixth novel in Stephen King\'s bestselling epic fantasy saga provides the key to the quest that defines Roland\'s life. Susannah has used the power of Black Thirteen to get to New York where she can give birth to a child fated to grow up as Roland\'s nemesis. Jake and Father Callahan set out to break her date with destiny and to find Calvin Tower, owner of the vacant lot where a magical rose grows - a rose that must be saved at all costs. Meanwhile, Roland and Eddie tumble into Maine in the Summer of 1977. Here they are greeted by the gangster Balazar and must face their maker, a man called Stephen King... JOIN THE QUEST FOR THE DARK TOWER... THE DARK TOWER SERIES: THE DARK TOWER I: THE GUNSLINGER THE DARK TOWER II: THE DRAWING OF THE THREE THE DARK TOWER III: THE WASTE LANDS THE DARK TOWER IV: WIZARD AND  ...', 480, '2002-11-03', 84, 17, 1),
(103, 'Professional Development for School Improvement', 'http://books.google.com/books/content?id=EBVKAAAAYAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'This book integrates knowledge from professional development and school improvement to describe frameworks that can increase the capacity of individuals, teams, and organizations to grow and develop. The text argues that both professional development and school improvement should have as their primary purpose the improvement of teaching and learning. Eleven frameworks for professional development are presented, along with strategies for integrating multiple frameworks in comprehensive programs. School leader development is addressed as a prerequisite for professional and school development. ...', 316, '2004-08-27', 27, 44, 1),
(104, 'The Dark Tower V: Wolves of the Calla', 'http://books.google.com/books/content?id=Qrm13Tw1zQcC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'WOLVES OF THE CALLA is the fifth volume in Stephen King\'s epic Dark Tower series. The Dark Tower is now a major motion picture starring Matthew McConaughey and Idris Elba. In the fifth novel in StephenKing\'s bestselling fantasy series, Roland and his ka-tet are bearing through the forests of the Mid-World on their journey to the Dark Tower. Tracking their every move is a group of farmers from the town of Calla Bryn Sturgis. The trackers have been warned that the Wolves, a band of masked riders, are about to gallop out of the dark land of Thunderclap and raid their town. And they want to enlist the help of the four gunslingers. How can Roland and his tet both protect the innocent community and return to New York to save our world\'s incarnation of the Dark Tower from the machinations of the evil Sombra Corporation? JOIN THE QUEST FOR THE DARK TOWER... THE DARK TOWER SERIES: THE DARK TOWER I: THE GUNSLINGER THE DARK TOWER II: THE DRAWING OF THE THREE THE DARK TOWER III: THE WASTE LAN ...', 816, '2002-08-24', 85, 17, 1),
(105, 'Missionary biography. The memoir of Sarah B. Judson, by Fanny Forester', 'http://books.google.com/books/content?id=TiMEAAAAQAAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'd ...', 200, '2007-10-14', 86, NULL, 1),
(106, 'The Life and Letters of Emily Chubbuck Judson (Fanny Forester): 1846-1847', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'd ...', -1, '2008-01-20', 87, NULL, 1),
(107, 'The Life and Letters of Emily Chubbuck Judson (Fanny Forester): 1826-1854', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'd ...', -1, '2016-01-21', 87, NULL, 1),
(108, 'The Life and Letters of Emily Chubbuck Judson (Fanny Forester): 1836-1845', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'd ...', 0, '2013-01-04', 87, NULL, 1),
(109, 'The Life and Letters of Emily Chubbuck Judson (Fanny Forester): Biographies and timelines', 'http://books.google.com/books/content?id=Ss06PgAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'Emily Chubbick Judson (1817-1854) is a well-known name, but for more reasons than most know. She was a nationally known writer (her pseudonym was Fanny Forrester) with pieces appearing alongside those by Edgar Allan Poe and Walt Whitman, and she walked in literary company second to none. She wrote children\'s books, essays, and stories. Then, in 1845, she met Adoniram Judson and they married in 1846. Their work in Burma made them famous as Baptist missionaries. After his death in 1850, she returned to the States in 1851 and spent the last years of her life writing and publishing her essays and poetry, and helping to produce a biography of her husband. During her fascinating life, she was a prolific letter writer. This is the first volume of her life and works, with volumes 2 through 6 containing all of her letters. As these volumes are presented, readers and scholars in the future will find in this material encouragement for sharing more about the Judson lives, and the wonderful wo ...', 399, '2012-12-11', 87, NULL, 1),
(110, 'The Shadow of Slavery', 'http://books.google.com/books/content?id=52ao9kTYMPAC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Whether peonage in the South grew out of slavery, a natural and perhaps unavoidable interlude between bondage and freedom, or whether employers distorted laws and customs to create debt servitude, most Southerners quietly accepted peonage. To the employer it was a way to control laborers; to the peon it was a bewildering system that could not be escaped without risk of imprisonment, beating, or death. Pete Daniel\'s book is about this largely ignored form of twentieth-century slavery. It is in part \"the record of an American failure, the inability of federal, state, and local law-enforcement officers to end peonage.\" In a series of case studies and histories, Daniel re-creates the neglected and frightening world of peonage, demanding, \"If a form of slavery yet exists in the United States, as so much evidence suggests, then the relevant questions are why, and by whose irresponsibility?\" Peonage grew out of labor settlements following emancipation, when employers forbade croppers to  ...', 218, '2011-05-22', 88, 45, 1),
(111, 'Breaking the Land', 'http://books.google.com/books/content?id=OTLo5F0SQ28C&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Winner of the Herbert Feis Award of the American Historical Association, 1985. Winner of the Charles S. Sydnor Award of the Southern Historical Association, 1985. Winner of the 1990 Robert Athearn Award of the Western History Association and an Honorable Mention for the 1990 James S. Donnelly, Sr., Prize in History and the Social Sciences from the American Conference for Irish Studies. ...', 372, '2016-09-06', 89, 45, 1),
(112, 'What Keeps You Up at Night?', 'http://books.google.com/books/content?id=pheMBQAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', '“I just can’t ever seem to shut off my brain and rest.” It\'s easy to feel paralyzed by uncertainty. We want our questions answered, our decisions affirmed, and our plans applauded. But life doesn\'t come with an instruction manual and rarely follows a straight path. How would your life change if you learned to lean into uncertainty instead of waiting on the sidelines for just the right moment or opportunity? The paradox of faith is that you can\'t activate it until you act on it. Trust compels us to move forward. If you don\'t, then you\'ll be left with a laundry list of unrealized expectations. You were meant to experience a life of abundance and blessing, not frustration and failure. Clarity only comes when we look back. So if you wait until you have clarity, you\'ll never find it. Instead, you must move forward even when you feel scared to death. That is when you\'ll be able to turn the fears that keep you up at night into fuel for your journey. If you want to experience a breakthrou ...', 238, '2007-08-13', 90, 46, 1),
(113, 'Deep\'n as it Come', 'http://books.google.com/books/content?id=WZGkrV5lmu4C&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'The spring and summer of 1927, the Mississippi River and its tributaries flooded from Cairo, Illinois, to New Orleans, Louisiana, and the Gulf of Mexico, tearing through seven states, sometimes spreading out to nearly one hundred miles across. Pete Daniel\'s Deep\'n as It Come, available again in a new format, chronicles the worst flood in the history of the South and re-creates, with extraordinary immediacy, the Mississippi River\'s devastating assault on property and lives. Daniel weaves his narrative with newspaper and firsthand accounts, interviews with survivors, official reports, and over 140 contemporary photographs. The story of the common refugee who suffered most from the effects of the flood emerges alongside the details of the massive rescue and relief operation - one of the largest ever mounted in the United States. The title, Deep\'n as It Come, is a phrase from Cora Lee Campbell\'s earthy description of the approaching water, which, Daniel writes, \"moved at a pace of som ...', 236, '2015-10-18', 91, 47, 1),
(114, 'Toxic Drift', 'http://books.google.com/books/content?id=m_3s_QWVve0C&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Following World War II, chemical companies and agricultural experts promoted the use of synthetic chemicals as pesticides on weeds and insects. It was, Pete Daniel points out, a convenient way for companies to apply their wartime research to the domestic market. In Toxic Drift, Daniel documents the particularly disastrous effects this campaign had on the South\'s public health and environment, exposing the careless mentality that allowed pesticide application to swerve out of control. The quest to destroy pests, Daniel contends, unfortunately outran research on insect resistance, ignored environmental damage, and downplayed the dangers of residue accumulation and threats to fish, wildlife, domestic animals, and humans. Using legal sources, archival records, newspapers, and congressional hearings, Daniel constructs a moving, fact-filled account of the use, abuse, and regulation of pesticides from World War II until 1970. ...', 226, '2002-12-21', 92, 48, 1),
(115, 'Civilian Control of the Military', 'http://books.google.com/books/content?id=VPtzf6i6U6sC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', '\"Power and Military Effectiveness is an instructive reassessment of the increasingly popular belief that military success is one of democracy\'s many virtues. International relations scholars, policy makers, and military minds will be well served by its lessons.\"--BOOK JACKET. ...', 204, '2012-01-04', 93, 49, 1),
(116, 'Simply Turing', 'http://books.google.com/books/content?id=z3ESEAAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', '“Michael Olinick has written a vibrant and absorbing biography of Alan Turing. Turing\'s work as a cryptographer during WW II and his pioneering development of the digital computer helped us win that war and make our technology-driven world of today possible—all this against the backdrop of the homophobic world Turing tried to navigate.” — Joseph Malkevitch, Professor of Mathematics at York College (CUNY) and CUNY Graduate Center Alan Turing (1912-1954) was born in London and showed signs of genius from a very young age. Turing was just 24 when he devised the theory that led to the development of modern computers and he went on to achieve major breakthroughs in probability, number theory, cryptology, and mathematical biology. His codebreaking efforts during World War II allowed the British to decipher secret German communications, effectively shortening the war and saving millions of lives. Yet instead of being celebrated for his accomplishments, Turing was prosecuted for being a h ...', 204, '2012-06-07', 94, 50, 1),
(117, 'Adrift', 'http://books.google.com/books/content?id=tleJEAAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'The fifth book in the thrilling Donovan sci-fi series returns to a treacherous alien planet where corporate threats and dangerous creatures imperil the lives of the colonists. The Maritime Unit had landed in paradise. After a terrifying ten-year transit from Solar System aboard the Ashanti, the small band of oceanographers and marine scientists were finally settled. Perched on a reef five hundred kilometers out from shore, they were about to embark on the first exploration of Donovan\'s seas. For the twenty-two adults and nine children, everything is new, exciting, and filled with wonder as they discover dazzling sea creatures, stunning plant life, and fascinating organisms. But Donovan is never what it seems; the changes in the children were innocuous--oddities of behavior normal to kids who\'d found themselves in a new world. Even then it was too late. An alien intelligence, with its own agenda, now possesses the children, and it will use them in a most insidious way: as the perfe ...', 513, '2000-02-17', 95, 51, 1),
(118, 'Power and Military Effectiveness', 'http://books.google.com/books/content?id=bf8b6xiaMGAC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'International relations scholars, policy makers, and military minds will be well served by its lessons. ...', 248, '2014-03-21', 96, 49, 1),
(119, 'Privileged and Confidential', 'http://books.google.com/books/content?id=W-bYW3nMPEYC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'This is the first and only study of the PIAB. As foreign policy veterans, the authors trace the board\'s history from Eisenhower through Obama and evaluate its effectiveness under each president. Created to be an independent panel of nonpartisan experts, the PIAB has become increasingly susceptible to politics in recent years and has lost some of its influence. The authors clearly demonstrate the board\'s potential to offer a unique and valuable perspective on intelligence issues and not only illuminates a little-known element of U.S. intelligence operations but also offers suggestions for enhancing a critical executive function. ...', 525, '2021-12-06', 97, 38, 1),
(120, 'Revisions of Indian Fossil Plants, Part III', 'http://books.google.com/books/content?id=RQNtDwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'd ...', 122, '2017-06-25', 98, 52, 1),
(121, 'Special Publication - Birbal Sahni Institute of Palaeobotany', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'd ...', -1, '2013-05-09', 99, NULL, 1),
(122, 'Birbal Sahni Memorial Volume', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'd ...', 533, '2016-01-15', 100, NULL, 1),
(123, 'An Introduction to Gymnosperms, Cycas, and Cycadales', 'http://books.google.com/books/content?id=TJEMAQAAMAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'd ...', 418, '2001-03-18', 4, NULL, 1),
(124, 'RECENT ADVANCES IN INDIAN PALAEOBOTANY', 'http://books.google.com/books/content?id=VqA2DwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'd ...', 120, '2009-03-29', 101, 52, 1),
(125, 'Historia y sistemas de la psicología', 'http://books.google.com/books/content?id=Q4CEsW3yiU8C&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'd ...', 392, '2008-04-11', 56, 53, 4),
(126, 'Christopher Brennan', 'http://books.google.com/books/content?id=48ghAAAAMAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'd ...', 64, '2020-10-05', 102, NULL, 1),
(127, 'The Center Holds', 'http://books.google.com/books/content?id=RUiUsOwZ8ScC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'The Center Holds provides an intimate look at who the Supreme Court justices are, how they have made critical decisions, and why, ultimately, the Rehnquist Revolution failed. Focusing on four key areas of civil rights and liberties—racial discrimination, abortion, criminal law, and First Amendment freedoms—The Center Holds provides an in-depth look at the Supreme Court documents that illustrate the battle between the old liberal order and emerging conservative majority, beginning in the early 1980s. James F. Simon, a former Time correspondent and contributing editor, ex-dean of New York Law School, and nationally recognized scholar of constitutional law, examines key decisions on civil rights and civil liberties in a readable, intimate look at some key Supreme Court Cases and includes absorbing descriptions of confidential memos and drafts gleaned from sources from within the court. ...', 342, '2022-09-23', 103, 43, 1),
(128, 'Reports of Cases Argued and Determined in the Supreme Court of Judicature of the State of Indiana', 'http://books.google.com/books/content?id=oVsLAAAAYAAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', '\"With tables of the cases and principal matters\" (varies). ...', 706, '2008-05-09', 104, NULL, 1);
INSERT INTO `Book` (`id_book`, `title`, `cover`, `description`, `number_of_pages`, `acquiring_date`, `id_year`, `id_editor`, `id_language`) VALUES
(129, 'Daydreamer', 'http://books.google.com/books/content?id=SnFj-AdDCCAC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'DYLAN LAWSON IS a typical 13-year-old boy growing up in a small, rural community in the northern Adirondacks of New York; a community that provides a lifestyle rich in outdoor adventure and homespun values. Together with his best friends Brennan and Kennedi, Dylan finds adventure and excitement in what always turns out to be anything but a typical day. But Dylan lives in a different world than everyone else. Dylan is the world’s biggest daydreamer, and he lives his life in both the real world and his dream world. Worlds that often collide, causing struggles and challenges that also provide valuable lessons learned. It begins with a harrowing experience when the boys find themselves lost on Titus Mountain in the midst of the season’s worst snowstorm and ends with the kids taking on the challenge of solving the great murder mystery when they stumble upon a dead body while out kayaking. In between, they become entrepreneurs of a successful start-up business as a result of a school pr ...', 143, '2011-11-15', 105, 54, 1),
(130, 'Tailings of Warren Peace', 'http://books.google.com/books/content?id=UwB0EAAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'A corrupt mining company, repossessed gravestones, a man’s fractured past, mysterious notes posted to lampposts and murder deep in the highlands of Guatemala. In Tailings of Warren Peace, Stephen Law effortlessly weaves these elements into a powerful story of love and memory, exploring how the past haunts us and how solidarity can save us all. Mysterious, passionate and powerful, Tailings of Warren Peace shows us the interconnections that exist between us, transcending social class, culture and geography. ...', -1, '2020-02-01', 106, 55, 1),
(131, 'Civil List and Constitutional History of the Colony and State of New York', 'http://books.google.com/books/content?id=FSJAAAAAYAAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Each edition contains \"the names and origin of the civil divisions, and the names and dates of election or appointment of the principal state and county officers from the Revolution to the present time.\" ...', 610, '2010-04-13', 107, NULL, 1),
(132, 'Marvel Encyclopedia New Edition', 'http://books.google.com/books/content?id=NgXeDwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', '\"[A] book that mankind has been hungering for, a book that is-now and forever-a shining beacon of wonder, a titanic tribute to talent unleashed\" - Stan Lee. Keep up with the ever-expanding Marvel Universe with the new edition of DK\'s best-selling Marvel Encyclopedia. Discover the essential facts about Marvel Comics\' timeless characters: mighty heroes such as Captain America, Spider-Man, Black Widow, and Iron Man, and malevolent villains like Thanos, Galactus, Loki, and Kingpin. Featuring an introduction by Marvel Comics supremo Stan Lee, this definitive Who\'s Who of Marvel Comics reveals vital info and secret histories of more than 1200 classic and brand new Marvel characters, and provides the lowdown on recent key events including Civil War 2, Secret Empire, and Infinity Countdown. From iconic teams such as the Avengers, X-Men, and Guardians of the Galaxy, and fan favourites Black Panther, Deadpool, and Captain Marvel, to rising stars Amadeus Cho, Squirrel Girl, and the Exiles, e ...', 450, '2011-01-19', 108, 56, 1),
(133, 'A Digest of the Law of Uses and Profits of Land', 'http://books.google.com/books/content?id=qr8yAAAAIAAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'd ...', 662, '2020-05-30', 109, NULL, 1),
(134, 'An Elementary Digest of the Law of Property in Land', 'http://books.google.com/books/content?id=Pp5LAAAAYAAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'd ...', 696, '2005-03-09', 109, NULL, 1),
(135, 'THE 1ST FIGHTING IRISH: The 35th Indiana Volunteer Infantry', 'http://books.google.com/books/content?id=W_ZOAgAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'The 1st Fighting Irish: The 35th Indiana Volunteer Infantry, tells the compelling story of the exile of Ireland, Hoosiers who fought to preserve the Union of their newly adopted country. They fought for America at a time when the \"native\" American \"Know Nothings\" hated them for their foreign birth and Roman Catholic religion. Wearing green kepis to celebrate the \"Ould Sod\" the 1st Irish shed their red blood for the rather abstract idea of the \"Union.\" The text features this complex Indiana Regiment, and its southern battles, trials and tribulations. But the true story is the many unique and colorful individuals who made up this Celtic \"Band of Brothers.\" The Band was led by a Notre Dame Priest, and its nickname was eventually bestowed on the University of Notre Dame\'s athletic teams. The 1st Fighting Irish: The Indiana 35th Indiana Volunteer Infantry, Hoosier Hibernians in the War for the Union, provides a fresh retrospective on the \"War for the Union,\" and serves to help preserve ...', 157, '2021-12-11', 110, 57, 1),
(136, 'Japan\'s Foreign Policy Since 1945', 'http://books.google.com/books/content?id=k3esBwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'This student-friendly text provides a detailed and up-to-date assessment of Japan\'s foreign policy since 1945, including policy options and choices that Japan faces in the twenty-first century. Using information based on interviews with policymakers in Japan, the author provides new insight into Japan\'s foreign policy options and analyzes the nation\'s evolving role in international affairs. The book begins with a brief overview of major issues related to Japan\'s foreign policy since the mid-nineteenth century, and then focuses on the direction of Japanese foreign policy from 1945 to the present. It examines issues such as Article Nine of the Japanese Constitution, national security needs, the way Japan views the world around it, the role of nationalism in setting policy, and the influence of big industry. It also includes material on Japan\'s response to 9/11 and the war in Iraq. Designed for both undergraduate and graduate level courses, the text includes Discussion Questions, map ...', 320, '2000-11-25', 68, 58, 1),
(137, 'Pulpits and Plain Sailing', 'http://books.google.com/books/content?id=uIHeDQAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'After leaving the Merchant Navy Kevin Cooney started out on his own with a humble back-garden engineering shop. A chance encounter led him to specialise in manufacturing stainless steel components for yachts, and it wasn\'t long before he caught the sailing bug himself. Thanks to ingenuity, determination and a great deal of hard work, Kevin managed to pilot Cooney Marine successfully through the difficult decades of British industrial strife and build it into the largest independent supplier of stainless steel rails and fittings in the UK. Now semi-retired and with his son at the helm, Kevin is free to indulge his passion by sailing the oceans and even crossing the Atlantic several times. This book is based on the diary he has been keeping for more than 40 years.ÿ ...', 414, '2019-09-04', 111, 59, 1),
(138, 'Merchants and Ministers', 'http://books.google.com/books/content?id=USmjDQAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Merchants and Ministers explores the relationship between businesspeople and clergy in the United States from the colonial period to the present. This book traces the contours of American history by placing anecdotal detail in the context of general developments in commerce and Christianity. ...', 260, '2015-05-17', 112, 60, 1),
(139, 'Reinventing the Truth', 'http://books.google.com/books/content?id=7y04X8o6JOIC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Explores the historical claims of the Two by Twos, a supposedly nameless worldwide religion. A glimpse into a religious system all but unknown to outsiders, and even families and acquaintances. The group has unofficial and official names, including \"The Truth,\" \"Home Meetings,\" \"The Testimony of Jesus,\" \"Cooneyites,\" \"Christian Conventions,\" \"Assemblies of Christians,\" \"the Workers and Friends,\" \"Les Anonymes,\" \"Die Namenlosen,\" \"Gospel Meetings,\" etc. ...', 320, '2006-12-03', 113, 61, 1),
(140, 'Two Faces of Exclusion', 'http://books.google.com/books/content?id=qaYwDAAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'From the Chinese Exclusion Act of 1882 to the Immigration Act of 1924 to Japanese American internment during World War II, the United States has a long history of anti-Asian policies. But Lon Kurashige demonstrates that despite widespread racism, Asian exclusion was not the product of an ongoing national consensus; it was a subject of fierce debate. This book complicates the exclusion story by examining the organized and well-funded opposition to discrimination that involved some of the most powerful public figures in American politics, business, religion, and academia. In recovering this opposition, Kurashige explains the rise and fall of exclusionist policies through an unstable and protracted political rivalry that began in the 1850s with the coming of Asian immigrants, extended to the age of exclusion from the 1880s until the 1960s, and since then has shaped the memory of past discrimination. In this first book-length analysis of both sides of the debate, Kurashige argues that ...', 337, '2018-04-12', 114, 62, 1),
(141, 'Japanese American Celebration and Conflict', 'http://books.google.com/books/content?id=HgcRhDk9szEC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'A history of the struggles over identity within the Japanese American community, using ethnic festivals to reveal the conflicts from the 1930s (a period of wealthy Japanese enclaves) through the WWII internment to the late 20th century influx of investment from Japan. ...', 300, '2019-10-12', 115, 63, 1),
(142, 'Major Problems in Asian American History', 'http://books.google.com/books/content?id=RLcaCgAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Designed to be the primary anthology or textbook for courses in Asian American history, this collection covers the subject’s entire chronological span. The volume presents a carefully selected group of readings that requires students to evaluate primary sources, test the interpretations of distinguished historians, and draw their own conclusions. Important Notice: Media content referenced within the product description or the product text may not be available in the ebook version. ...', 544, '2010-07-24', 116, 64, 1),
(143, 'The Asian American Movement, 1968-1972', 'http://books.google.com/books/content?id=CGNbAAAAMAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'd ...', 238, '2005-02-23', 117, NULL, 1),
(144, 'Made in Little Tokyo', 'http://books.google.com/books/content?id=TOtyAAAAMAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'd ...', 344, '2017-07-18', 118, NULL, 1),
(145, 'Histoires extraordinaires', 'http://books.google.com/books/content?id=sCOSnAEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'd ...', 285, '2012-05-17', 119, 3, 0),
(146, 'Poèmes', 'http://books.google.com/books/content?id=Je8DAQAAIAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'd ...', 202, '2003-11-28', 25, 0, 0),
(147, 'Contes, essais, poèmes', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'Baudelaire et Mallarmé ont fait de Poe un grand auteur français. Un maître du fantastique, un ancêtre de la science-fiction, un poète digne de Valéry. Mais au prix d\'un énorme sacrifice, qui consistait à ignorer un tiers des contes, la moitié des poèmes et presque toute l\'œuvre critique. Cette édition offre, pour la première fois en France, la totalité des contes et des poèmes, accompagnés d\'un choix d\'essais critiques. Les traductions de Claude Richard et de Jean-Marie Maguin, jointes à celles de Baudelaire et de Mallarmé, font apparaître un auteur infiniment plus complexe et plus moderne. Poe est d\'abord un grand humoriste qui se joue de toutes les modes littéraires, un parodiste qui arrache tous les masques. Un poète, enfin, qui ne cesse de dénoncer l\'illusoire pouvoir des mots. Le seul, pourtant, qui nous soit concédé et qui nous aide à vivre. Il fallait enfin rendre Poe à Poe, rétablir les dimensions d\'une œuvre qui, avant d\'être française, reste profondément américaine. \" Da ...', 1598, '2010-10-08', 120, 20, 0),
(148, 'The Science Fiction of Edgar Allan Poe', 'http://books.google.com/books/content?id=Tq8rcQQItSIC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'One of the greatest of all horror writers, Edgar Allan Poe (1809-49) also composed pioneering tales that seized upon the scientific developments of an era marked by staggering change. In this collection of sixteen stories, he explores such wide-ranging contemporary themes as galvanism, time travel and resurrection of the dead. \'The Unparalleled Adventure of One Hans Pfall\' relates a man\'s balloon journey to the moon with a combination of scientific precision and astonishing fantasy. Elsewhere, the boundaries between horror and science are elegantly blurred in stories such as \'The Facts in the Case of M. Valdemar\', while the great essay \'Eureka\' outlines Poe\'s own interpretation of the universe. Powerfully influential on later authors including Jules Verne, these works are essential reading for anyone wishing to trace the genealogy of science fiction, or to understand the complexity of Poe\'s own creative vision ...', 464, '2002-10-18', 121, 22, 1),
(149, 'Complete Stories and Poems of Edgar Allan Poe', 'http://books.google.com/books/content?id=gxXHOU5Ni6UC&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'This single volume brings together all of Poe\'s stories and poems, and illuminates the diverse and multifaceted genius of one of the greatest and most influential figures in American literary history. ...', 836, '2001-11-20', 122, 65, 1),
(150, 'Torah et science', 'http://books.google.com/books/content?id=KmEwAAAAYAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'Par son enseignement au Seminaire Israelite de France et a l\'Ecole Pratique des Hautes Etudes (Section de Sciences Religieuses), et par son oeuvre ecrite, Charles Touati a fourni des contributions de premiere importance a l\'etude de la Torah et de la hokhmah, les sciences sacrees et les sciences profanes, dans le judaisme talmudique et medieval. En particulier, son apport a la connaissance de Gersonide et des philosophes et halakhistes provencaux a ete decisif. Des disciples et des collegues, en France et a l\'etranger, lui offrent un tribut d\'articles (en francais ou en anglais) qui illustrent le theme, constitutif du judaisme et de ses contradictions, des relations entre la Torah et la hokhmah, depuis l\'epoque hellenistique jusqu\'a nos jours. Contributeurs: R. Brague, S. Feldman, P. Fenton, G. Freudenthal, R. Goetschel, A. Guetta, M. Hadas-Lebel, W.Z Harvey, M. Kellner, D. Lasker, J.-P. Rotschild, D. Schwartz, C. Sirat. L\'ouvrage comprend une bibliographie des travaux de Ch. Toua ...', 300, '2014-01-11', 3, 66, 0),
(151, 'Le Kuzari', 'http://books.google.com/books/content?id=_vMWNQkGtFoC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Ayant vecu en Espagne chretienne et en Espagne musulmane, en butte aux humiliations de la Croix et du Croissant, temoin de la diffusion parmi les Juifs de la philosophie greco-arabe dont il reconnait et deplore le pouvoir de seduction et les ravages qu\'elle provoque, Juda Hallevi, l\'un des plus grands poetes de l\'Age d\'or, achevera vers la fin de sa vie un ouvrage et accomplira une action d\'eclat qui lui assureront une place de premier plan dans le judaisme. Defendant dans un livre, devenu classique, sa foi contre la philosophie, le christianisme et l\'Islam, il tentera, contrairement a la plupart des penseurs juifs du Moyen Age, de mettre en lumiere la specificite de la religion, qui cesse d\'etre pour lui la version populaire allegorisee du systeme de Platon ou d\'Aristote, et de fournir une interpretation de l\'existence juive sur sa terre ancestrale et dans l\'Exil. Ayant egalement compris que ni en Orient ni en Occident il n\'existe (pour son peuple) un lieu d\'espoir en qui (il) pu ...', 278, '2012-06-19', 123, 67, 0),
(152, 'Prophètes, talmudistes, philosophes', 'http://books.google.com/books/content?id=fAO8Woj4IvsC&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'd ...', 314, '2003-08-06', 117, NULL, 0),
(153, 'Les guerres du Seigneur. Livres III et IV. Introduction, traduction et notes par Charles Touati', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'd ...', 208, '2011-01-31', 124, NULL, 0),
(154, 'Le Kuzari', 'http://books.google.com/books/content?id=_vMWNQkGtFoC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Ayant vecu en Espagne chretienne et en Espagne musulmane, en butte aux humiliations de la Croix et du Croissant, temoin de la diffusion parmi les Juifs de la philosophie greco-arabe dont il reconnait et deplore le pouvoir de seduction et les ravages qu\'elle provoque, Juda Hallevi, l\'un des plus grands poetes de l\'Age d\'or, achevera vers la fin de sa vie un ouvrage et accomplira une action d\'eclat qui lui assureront une place de premier plan dans le judaisme. Defendant dans un livre, devenu classique, sa foi contre la philosophie, le christianisme et l\'Islam, il tentera, contrairement a la plupart des penseurs juifs du Moyen Age, de mettre en lumiere la specificite de la religion, qui cesse d\'etre pour lui la version populaire allegorisee du systeme de Platon ou d\'Aristote, et de fournir une interpretation de l\'existence juive sur sa terre ancestrale et dans l\'Exil. Ayant egalement compris que ni en Orient ni en Occident il n\'existe (pour son peuple) un lieu d\'espoir en qui (il) pu ...', 278, '2002-07-16', 123, 67, 0),
(155, 'Insoluble mais vrai ! Ces énigmes et casse-tête qui résistent encore à la science', 'http://books.google.com/books/content?id=QyWVDwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Tout ou presque semble avoir été découvert en science. Pourtant, à bien y regarder, elle fourmille de propositions insolubles – à ce jour – mais vraies, d’énigmes millénaires et de casse-tête pas toujours aussi saugrenus qu’on pourrait l’imaginer... Et si vous vous essayiez à ces questions qui résistent encore et toujours à la sagacité des chercheurs ? En voici une sélection, présentée par le créateur de la chaîne YouTube « Science étonnante » (plus de 600 000 abonnés). Pourquoi dort-on ? Mais comment la vie est-elle apparue ? Y a-t-il une infinité de nombres premiers « jumeaux »? L\'énergie noire, c\'est quoi ? ...', 320, '2016-01-29', 125, 68, 0),
(156, 'Insoluble mais vrai ! Ces énigmes et casse-tête qui résistent encore à la science', 'http://books.google.com/books/content?id=QyWVDwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Tout ou presque semble avoir été découvert en science. Pourtant, à bien y regarder, elle fourmille de propositions insolubles – à ce jour – mais vraies, d’énigmes millénaires et de casse-tête pas toujours aussi saugrenus qu’on pourrait l’imaginer... Et si vous vous essayiez à ces questions qui résistent encore et toujours à la sagacité des chercheurs ? En voici une sélection, présentée par le créateur de la chaîne YouTube « Science étonnante » (plus de 600 000 abonnés). Pourquoi dort-on ? Mais comment la vie est-elle apparue ? Y a-t-il une infinité de nombres premiers « jumeaux »? L\'énergie noire, c\'est quoi ? ...', 320, '2009-03-27', 125, 68, 0),
(157, 'Mais qui a attrapé le bison de Higgs ?', 'http://books.google.com/books/content?id=10BpEAAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Un atome, c’est petit comment ? Pourquoi le pastis se trouble-t-il quand on y ajoute de l’eau ? Mais d’où vient la Lune ? Si les premiers hommes, le Big-Bang et le boson de Higgs vous intriguent, si vous fourmillez de questions sans toujours oser les poser à haute voix, alors ce livre est fait pour vous ! Laissez le créateur de la chaîne YouTube « Science étonnante » vous révéler ses découvertes préférées, au travers d’une vingtaine de questions innocentes posées par ses filles. Vous n’avez qu’une vague idée de ce qu’est une particule, un gène ou une probabilité ? Embarquez, vous en savez bien assez ! ...', 219, '2021-12-23', 126, 68, 0),
(158, 'Mais qui a attrapé le bison de Higgs ?', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'Un atome, c\'est petit comment ? Pourquoi le pastis se trouble-t-il quand on y ajoute de l\'eau ? Mais d\'où vient la Lune ? Si les premiers hommes, le Big-Bang et le boson de Higgs vous intriguent, si vous fourmillez de questions sans toujours oser les poser à haute voix, alors ce livre est fait pour vous ! ... ...', 266, '2005-12-01', 127, NULL, 0),
(159, 'Sociabilité et politique en milieu rural', 'http://books.google.com/books/content?id=RT0RCwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Du soulèvement des nudz-piedz bretons aux militants de la Confédération paysanne, en passant par les sans-culottes ruraux, cet ouvrage évoque toute une variété de mobilisations sociales et politiques en milieu rural, essentiellement en France, mais également dans des territoires étrangers (Espagne, Portugal, Allemagne, Italie), de la fin du Moyen Âge à la période contemporaine. Une quarantaine de chercheurs travaillant sur différentes périodes historiques ont été rassemblés pour réaliser ce projet ambitieux. Historiens, sociologues ou politistes, tous partagent un intérêt commun pour les mondes ruraux qu’ils interrogent ici à travers le concept de sociabilité. Cette approche leur permet de faire éclater l’unicité supposée d’une « communauté rurale », mais aussi de souligner la diversité des mondes ruraux en fonction des groupes envisagés et des territoires investis. Les diverses contributions oscillent entre une attention portée aux rapports sociaux et politiques qui se construise ...', 474, '2011-12-10', 128, 69, 0),
(160, 'The Most Fun We Ever Had', 'http://books.google.com/books/content?id=vaBtDwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'NEW YORK TIMES BEST SELLER • “A gripping and poignant ode to a messy, loving family in all its glory.” —Madeline Miller, bestselling author of Circe In this “rich, complex family saga” (USA Today) full of long-buried family secrets, Marilyn Connolly and David Sorenson fall in love in the 1970s, blithely ignorant of all that awaits them. By 2016, they have four radically different daughters, each in a state of unrest. Wendy, widowed young, soothes herself with booze and younger men; Violet, a litigator turned stay-at-home-mom, battles anxiety and self-doubt; Liza, a neurotic and newly tenured professor, finds herself pregnant with a baby she\'s not sure she wants by a man she\'s not sure she loves; and Grace, the dawdling youngest daughter, begins living a lie that no one in her family even suspects. With the unexpected arrival of young Jonah Bendt—a child placed for adoption by one of the daughters fifteen years before—the Sorensons will be forced to reckon with the rich and varied  ...', 544, '2001-12-12', 129, 70, 1),
(161, 'Tout le bonheur du monde', 'http://books.google.com/books/content?id=DB5JzgEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'Il était une fois en Amérique... la famille idéale. Dans leur belle maison de Chicago, David et Marilyn s\'aiment d\'un amour ardent. Mais pour leurs quatre filles, Wendy, Violet, Liza et Grace. le modèle est écrasant : comment être à la hauteur quand on a grandi à l\'ombre de parents toujours aussi épris l\'un de l\'autre à soixante ans qu\'à vingt ? Chacune apprivoise ce traumatisme inversé à sa manière, entre complicité et vacheries, cachotteries et mensonges, échecs et aspirations. Jusqu\'à ce que resurgisse Jonah, quinze ans, le douloureux secret de Violet. authentique avis de tempête sur la météo domestique. Des années 1970 à nos jours, des joies et blessures de l\'enfance aux enjeux décisifs de l\'âge adulte, Tout le bonheur du monde nous offre une place privilégiée dans ce grand-huit familial endiablé. Aussi drôle que touchante. Claire Lombardo a l\'oreille absolue pour les nuances et les contradictions qui font des relations humaines l\'inépuisable source de tous les tourments. Et d ...', 702, '2010-03-26', 39, NULL, 0),
(162, 'Tout le bonheur du monde', 'http://books.google.com/books/content?id=RiwXEAAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Ce roman marque l’arrivée d’une plume talentueuse dans le paysage littéraire américain. Claire Lombardo, 30 ans à peine, s’inscrit dans la lignée des conteuses que nous aimons tant : Jane Smiley, Anne Tyler ou encore Ann Patchett... Elle signe un portrait de famille aussi drôle que percutant, qui possède un redoutable pouvoir d’addiction. Lombardo réinvente la tradition de la saga dans une version qui flirte avec le soap opera ou la série This is us, sans jamais renoncer à une vraie ambition littéraire. Sa langue est vive, parfois féroce, inventive et rythmée. Dès sa sortie aux USA, le livre a emporté l’enthousiasme de la presse, des clubs de lecture, se plaçant plusieurs semaines dans la fameuse liste des best-sellers du New York Times. Une série est en cours de développement pour HBO, avec Laura Dern et Amy Adams côté casting et production. ...', 704, '2020-11-27', 130, 71, 0),
(163, '100 idées pour accompagner un élève dys équipé d\'un cartable numérique', 'http://books.google.com/books/content?id=NJJcDwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'À partir d’une idée simple : aucun enfant ne se lève le matin pour échouer dans ce qu’il entreprend, découvrons ensemble comment sauver le parcours scolaire des enfants « DYS », loin des idées reçues et forts de ce que nous avons initié et observé avec des centaines d’entre eux que le numérique a placé sur le chemin de la reconnaissance, de l’autonomie et de l’estime d’eux-mêmes. De plus en plus d’enfants se voient prescrire ou indiquer l’utilisation d’un ordinateur pour aller à l’école. Ils sont concernés par la dyspraxie, la dyslexie, les troubles de l’attention avec ou sans hyperactivité, le haut potentiel, les troubles autistiques, d’autres causes diagnostiquées par un neuropédiatre. Avec ou sans reconnaissance de handicap par la MDPH, ces apprenants, souffrant de troubles des apprentissages, sont toujours en grande difficulté à l’école, au collège et au lycée. Avec à l’horizon, la menace du décrochage et de l’échec scolaire. Bienvenue dans la grande famille des « DYS » ! Pour ...', 232, '2007-12-08', 131, 72, 0),
(164, 'Lettres italiennes de Claire de Gonzague, comtesse de Bourbon-Montpensier (1464-1503)', 'http://books.google.com/books/content?id=aq7jDwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'La correspondance italienne de Claire de Gonzague, conservée essentiellement dans les Archives de Mantoue, rassemble de très nombreux sujets éclectiques qui traduisent les préoccupations publiques et privées des Gonzague et des Bourbon-Montpensier. Si ceux-ci sont le plus souvent évoqués dans le style informel, naturel et spontané de lettres familiales, toutefois quelques missives sont rédigées dans une prose baroque qui s\'orne d\'images hyperboliques témoignant d\'une vénération pour Dieu, le roi de France et surtout pour son frère François, héritier de la lignée princière. Ces échanges épistolaires font état notamment de la relation particulièrement intense qui unit la comtesse et son frère, une tendresse qui se traduit par des petites phrases affectueuses empreintes d\'une admiration qui ne se démentira jamais. Les liens affectifs de Claire avec ses jeunes soeurs sont presque aussi vifs et des relations très cordiales unissent les deux beaux-frères, Gilbert et François, qu\'aucun é ...', -1, '2005-07-05', 132, 73, 0),
(165, 'Appliquer le ToC Lean Six Sigma dans les services', 'http://books.google.com/books/content?id=4BjLAgAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Préface de Stéphane Chabrier; Dans son premier ouvrage relatif à l’amélioration algorithmique des processus « La révolution ToC Lean Six Sigma dans les services: Comprendre, analyser et améliorer la performance de sa relation de service » Florent A. MEYER a montré l’apport considérable de ce type de démarche au management de l’excellence opérationnelle et de la performance durable d’une entreprise ou d’une autre organisation. Dans le présent ouvrage, en plus de rappeler quelques fondamentaux techniques des trois méthodes, l’auteur rassemble le fruit de ces retours d’expérience de démarches intégrées ToC Lean Six Sigma. Un livre donc plus tourné « ingénierie et mise en oeuvre » qui s’adresse de ce fait en priorité aux responsables qualité, spécialistes et étudiants qui souhaitent intervenir avec ces techniques dans le secteur tertiaire. Le ToC Lean Six Sigma fait désormais partie soit de la panoplie de survie, soit de l’arsenal compétitif de bien des entreprises de services, admini ...', 586, '2017-12-09', 133, 74, 0),
(166, 'Pratiques de benchmarking', 'http://books.google.com/books/content?id=PBMzA2TMJMUC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Le benchmarking est certainement la meilleure démarche qui permette à une organisation d\'apprendre de la performance des autres et de la sienne propre en les comparant tant du point de vue des approches managériales que des résultats. C\'est un formidable chemin d\'apprentissage collectif d\'une entreprise avec d\'autres organisations, à partir de l\'étude comparative détaillée de leurs succès respectifs.Spécialiste reconnu du benchmarking, Florent A.Meyer nous livre ici un ouvrage qui rassemble l\'ensemble des connaissances à ce jour sur le sujet et les meilleures pratiques pour une mise en oeuvre simple et efficace d\'un projet de benchmarking réussi.L\'ouvrage de référence pour tous ceux qui souhaitent mettre en oeuvre de manière concrète et efficace un projet de benchmarking. ...', 222, '2007-02-20', 134, 75, 0),
(167, 'Pratiques de benchmarking + Le challenge partenarial RECUEIL COLLECTION 1+1', 'http://books.google.com/books/content?id=JfV88HjPLwgC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'd ...', 574, '2007-04-16', 65, 75, 0),
(168, 'Appliquer le ToC Lean Six Sigma dans les services', 'http://books.google.com/books/content?id=4BjLAgAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Préface de Stéphane Chabrier; Dans son premier ouvrage relatif à l’amélioration algorithmique des processus « La révolution ToC Lean Six Sigma dans les services: Comprendre, analyser et améliorer la performance de sa relation de service » Florent A. MEYER a montré l’apport considérable de ce type de démarche au management de l’excellence opérationnelle et de la performance durable d’une entreprise ou d’une autre organisation. Dans le présent ouvrage, en plus de rappeler quelques fondamentaux techniques des trois méthodes, l’auteur rassemble le fruit de ces retours d’expérience de démarches intégrées ToC Lean Six Sigma. Un livre donc plus tourné « ingénierie et mise en oeuvre » qui s’adresse de ce fait en priorité aux responsables qualité, spécialistes et étudiants qui souhaitent intervenir avec ces techniques dans le secteur tertiaire. Le ToC Lean Six Sigma fait désormais partie soit de la panoplie de survie, soit de l’arsenal compétitif de bien des entreprises de services, admini ...', 586, '2009-11-23', 133, 74, 0),
(169, 'Le challenge partenarial', 'http://books.google.com/books/content?id=k_8gQopQmk4C&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Pour faire face à une situation économique de plus en plus tendue et imprévisible, l\'impératif partenarial s\'impose aux organisations qui veulent survivre dans un contexte mondialisé secoué par des évolutions rapides et souvent irréversibles. En effet, la réussite de sa stratégie d\'alliance avec d\'autres organisations est désormais cruciale pour une entreprise qui veut innover et conquérir de nouveaux marchés. Dans nos marchés globalisés, raisonner en termes de coups ponctuels entre vendeurs et acheteurs n\'a plus de sens. Il faut désormais penser autrement et établir de solides relations partenariales pour atteindre nos objectifs et réussir sur des marchés hautement évolutifs et incertains. Florent A Meyer nous livre ici un ouvrage qui réunit les éléments de réflexions stratégiques et la boîte à outils complète pour initier, gérer et réussir ses partenariats. Le livre de référence pour comprendre et mettre en ouvre ses stratégies partenariales. Une première partie présente l\'histo ...', 350, '2019-08-25', 0, 75, 0),
(170, 'Le nombre et la sirène', 'http://books.google.com/books/content?id=84JW1jVGuLIC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Un coup de dés jamais n’abolira le hasard est composé par Mallarmé, dans sa version finale, en 1898, l’année même de sa mort. Le poème constitue l’une des ruptures littéraires les plus radicales de la modernité : lignes éclatées sur tout l’espace de la double page, jeu sur la taille des caractères empruntant au procédé des affiches, multiplication des incises qui déroutent la lecture. Mais son énigme la plus profonde tient peut-être à son contenu : une intrigue, à peine suggérée, dont le sens, l’étrangeté continuent aujourd’hui d’échapper à une pleine élucidation. L’hypothèse de Quentin Meillassoux consiste à affirmer que Mallarmé a caché dans son poème un mètre secret, un Nombre unique, qui devait permettre de réinventer une poésie à la fois moderne et toujours liée à l’antique règle du décompte. Une investigation est alors menée, qui tient à la fois de l’étude littéraire, de la chasse au trésor et de l’enquête policière à la Edgar Poe. On y découvre progressivement que le Nombre ...', 256, '2019-09-07', 135, 76, 0),
(171, 'Après la finitude', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'd ...', 189, '2013-11-21', 19, NULL, 0),
(172, 'Le nombre et la sirène', 'http://books.google.com/books/content?id=84JW1jVGuLIC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Un coup de dés jamais n’abolira le hasard est composé par Mallarmé, dans sa version finale, en 1898, l’année même de sa mort. Le poème constitue l’une des ruptures littéraires les plus radicales de la modernité : lignes éclatées sur tout l’espace de la double page, jeu sur la taille des caractères empruntant au procédé des affiches, multiplication des incises qui déroutent la lecture. Mais son énigme la plus profonde tient peut-être à son contenu : une intrigue, à peine suggérée, dont le sens, l’étrangeté continuent aujourd’hui d’échapper à une pleine élucidation. L’hypothèse de Quentin Meillassoux consiste à affirmer que Mallarmé a caché dans son poème un mètre secret, un Nombre unique, qui devait permettre de réinventer une poésie à la fois moderne et toujours liée à l’antique règle du décompte. Une investigation est alors menée, qui tient à la fois de l’étude littéraire, de la chasse au trésor et de l’enquête policière à la Edgar Poe. On y découvre progressivement que le Nombre ...', 256, '2012-05-09', 135, 76, 0),
(173, 'Après la finitude. Essai sur la nécessité de la contingence', 'http://books.google.com/books/content?id=m765DAAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'La critique empiriste des prétentions universelles de la pensée humaine est-elle réellement fondée ? On sait que c\'est le problème de Kant. Mais Quentin Meillassoux montre avec une force étonnante qu\'une autre compréhension de cette critique, restée en quelque sorte dissimulée, bien que plus \"naturelle\", aboutit à un partage des ambitions de la pensée très différent de celui proposé par Kant. Il établit en effet qu\'une seule chose est absolument nécessaire : que les lois de la nature soient contingentes. Ce noeud entièrement nouveau entre les modalités contraires installe la pensée dans un tout autre rapport à l\'expérience du monde, un rapport qui défait simultanément les prétentions \"nécessitantes\" de la métaphysique classique, et le partage \"critique\" entre l\'empirique et le transcendantal. Cette remarquable \"critique de la Critique\" est ici introduite sans fioritures, coupant vers l\'essentiel dans un style particulièrement clair et démonstratif. Elle autorise à nouveau que le d ...', 192, '2020-01-24', 136, 77, 0),
(174, 'Métaphysique et fiction des mondes hors-science', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'd ...', 116, '2020-07-04', 137, NULL, 0),
(175, 'Le fonctionnaire expatrié', 'http://books.google.com/books/content?id=g7t0cUwEVYUC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Les implantations culturelles françaises à l’étranger sont animées par plus de 30 000 personnes. Il y a plus de 2 000 établissements ou services scolaires et culturels et des centaines d’actions de coopération. Le rôle décisif de l’État dans ce processus place ainsi la fonction publique ou les acteurs satellisés par elle au cŒur de la réalisation de cette ambition nationale. Dès lors, l’expatriation de la fonction publique, construction juridique particulièrement originale bien que méconnue, devient la clé de celle-ci. ...', 659, '2009-05-11', 56, 78, 0),
(176, 'Les personnels du service public de l\'action culturelle extérieure de la France', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'd ...', -1, '2010-10-14', 138, NULL, 0),
(177, 'LE FONCTIONNAIRE EXPATRIE', 'http://books.google.com/books/content?id=rfkfbdXF-roC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Les implantations culturelles françaises à l’étranger sont animées par plus de 30 000 personnes. Il y a plus de 2 000 établissements ou services scolaires et culturels et des centaines d’actions de coopération. Le rôle décisif de l’État dans ce processus place ainsi la fonction publique ou les acteurs satellisés par elle au cœur de la réalisation de cette ambition nationale. Dès lors, l’expatriation de la fonction publique, construction juridique particulièrement originale bien que méconnue, devient la clé de celle-ci. ...', 656, '2022-02-26', 139, 78, 0),
(178, 'Certificat d\'aptitude au professorat de l\'enseignement du second degré (C.A.P.E.S. Nouveau régime)', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'd ...', 23, '2019-12-09', 15, NULL, 0),
(179, 'Chronological tables of ordinances, revision and amendment ordinances, general indes, appendix', 'http://books.google.com/books/content?id=545DAQAAMAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'd ...', 366, '2000-08-24', 140, NULL, 1),
(180, 'Qui mange quoi ?', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'Une carotte géante et son petit lapin, un gros poisson rouge qui avale un petit coeur... un livre pour les tout-petits, plein de surprises sous les rabats, des couleurs vives, toute la simplicité et le talent de Annette Tamarkin qui enchanteront une fois de plus petits et grands. ...', 10, '2002-09-09', 141, NULL, 0),
(181, 'Tout blanc', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'Un graphisme aux lignes pures, des couleurs contrastées et éclatantes, des livres tout en papier découpé pour faire découvrir aux tout-petits les formes et les couleurs et leur donner le goût des livres. ...', 10, '2016-09-21', 142, NULL, 0),
(182, 'Tout noir', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'Un graphisme aux lignes pures, des formes noires, des images à soulever, des livres tout en papier découpé pour faire découvrir aux tout-petits un univers tendre et coloré et leur donner le goût des livres. ...', 12, '2021-04-17', 142, NULL, 0),
(183, 'Dans la forêt, il y a...', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'Dans la forêt, il y a un écureuil, trois jolis peupliers, un champignon, une jacinthe bleue, un renard, un gigantesque sapin, un hibou... ...', 14, '2005-01-25', 143, NULL, 0),
(184, 'Ma petite rentrée', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'C\'est bientôt l\'heure de la rentrée. Un livre qui fait le bonheur des tout-petits juste avant l\'école. Comme les grands, ils pourront se préparer, apprendre, découvrir, et surtout s\'amuser : un gros crayon bleu pour apprendre à faire des lignes, des courbes, un beau cartable rouge qui est un jeu de mémo, un pinceau et sa palette pour découvrir les couleurs, des coccinelles cachées sous les rabats pour compter, des ronds qui glissent pour distinguer la gauche de la droite, le haut du bas. On retrouvera dans cet ouvrage l\'harmonie des couleurs, la simplicité des formes et la pureté du graphisme d\'Annette Tamarkin. ...', 10, '2012-03-31', 144, NULL, 0),
(185, 'Discours sur l\'origine et les fondements de l\'inégalité parmi les hommes', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'Paru en 1755, le Discorns sur l\'origine et les fondements de l\'inégalité parmi les hommes peut être considéré comme la matrice de l\'oeuvre morale et politique de Rousseau : il y affirme sa stature de philosophe, l\'originalité de sa voix, la force de son \"système\". Résoudre le problème posé par l\'Académie de Dijon, \"quelle est la source de l\'inégalité parmi les hommes et si elle est autorisée par la loi naturelle ?\" en d\'autres termes expliquer que riches et puissants dominent leurs semblables sur lesquels ils n\'ont pas de réelle supériorité, exige aux yeux de Rousseau de poser à nouveaux frais la question \"qu\'est-ce que l\'homme ?\". Pour cela, il faut comprendre comment s\'est formée sa \"nature actuelle\", si éloignée de ce que serait son état de nature : \"Si je me suis étendu si longtemps sur la supposition de cette condition primitive, c\'est qu\'ayant d\'anciennes erreurs et des préjugés invétérés à détruire, j\'ai cru devoir creuser jusqu\'à la racine...\" ...', 302, '2011-07-23', 145, NULL, 0),
(186, 'The Major Political Writings of Jean-Jacques Rousseau', 'http://books.google.com/books/content?id=BM8JngEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'Individualist and communitarian. Anarchist and totalitarian. Classicist and romanticist. Progressive and reactionary. Since the eighteenth century, Jean-Jacques Rousseau has been said to be all of these things. Few philosophers have been the subject of as much or as intense debate, yet almost everyone agrees that Rousseau is among the most important and influential thinkers in the history of political philosophy. This new edition of his major political writings, published in the year of the three-hundredth anniversary of his birth, renews attention to the perennial importance of Rousseau’s work. The book brings together superb new translations by renowned Rousseau scholar John T. Scott of three of Rousseau’s works: the Discourse on the Sciences and Arts, the Discourse on the Origin and Foundations of Inequality Among Men, and On the Social Contract. The two Discourses show Rousseau developing his well-known conception of the natural goodness of man and the problems posed by life i ...', 0, '2011-07-07', 146, 79, 1),
(187, 'Emile', 'http://books.google.com/books/content?id=ObOWswEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'Alan Bloom\'s new translation of Emile, Rousseau\'s masterpiece on the education and training of the young, is the first in more than seventy years. In it, Bloom, whose magnificent translation of Plato\'s Republic has been universally hailed as a virtual rediscovery of that timeless text, again brings together the translator\'s gift for journeying between two languages and cultures and the philosopher\'s perception of the true meaning and significance of the issues being examined in the work. The result is a clear, readable, and highly engrossing text that at the same time offers a wholly new sense of the importance and relevance of Rousseau\'s thought to us.In addition to his translation, Bloom provides a brilliant introduction that relates the structure and themes of the book to the vital preoccupation\'s of our own age, particularly in the field of education, but also more generally to the current concerns about the limits and possibilities of human nature. Thus in this translation Em ...', 0, '2017-01-20', 147, 80, 1),
(188, 'A Discourse on Inequality', 'http://books.google.com/books/content?id=fYKMEAAAQBAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'In A Discourse on Inequality, Rousseau sets out to demonstrate how the growth of civilization corrupts man’s natural happiness and freedom by creating artificial inequalities of wealth, power and social privilege. Contending that primitive man was equal to his fellows, Rousseau believed that as societies become more sophisticated, the strongest and most intelligent members of the community gain an unnatural advantage over their weaker brethren, and that constitutions set up to rectify these imbalances through peace and justice in fact do nothing but perpetuate them. Rousseau’s political and social arguments in the Discourse were a hugely influential denunciation of the social conditions of his time and one of the most revolutionary documents of the eighteenth-century. For more than seventy years, Penguin has been the leading publisher of classic literature in the English-speaking world. With more than 1,700 titles, Penguin Classics represents a global bookshelf of the best works t ...', 0, '2002-02-14', 148, 12, 1),
(189, 'Les Confessions', 'http://books.google.com/books/content?id=Sa6XDwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Les Confessions de Jean-Jacques Rousseau est une autobiographie couvrant les cinquante-trois premières années de la vie de Rousseau, jusqu\'à 1765. Les douze livres des Confessions se divisent en deux ensembles distincts, définis par Rousseau lui-même : la première partie constituée par les livres i à vi avec le Préambule, rédigée en 1765-1767, couvre les années 1712-1740 (années de formation, de la naissance à Genève à l\'installation à Paris à 28 ans) alors que la deuxième partie, constituée par les livres vii à xii et rédigée en 1769-1770, couvre les années 1741-1765, c\'est-à-dire sa vie à Paris dans les milieux de la musique et des philosophes, avec ses réussites (Discours - La Nouvelle Héloïse) et ses déboires, comme les attaques qui suivent la publication de l\'Émile, qui l\'obligent à fuir en Suisse. L\'oeuvre aura une publication entièrement posthume : en 1782 pour la première partie et en 1789 pour la deuxième. Rousseau avait cependant déjà fait des lectures publiques de certa ...', 562, '2005-08-09', 149, 74, 0);
INSERT INTO `Book` (`id_book`, `title`, `cover`, `description`, `number_of_pages`, `acquiring_date`, `id_year`, `id_editor`, `id_language`) VALUES
(190, 'Maison mère', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', '\" Je n\'aurais jamais pu vivre sans la maison. Pendant de longues années, j\'ai séjourné dans les pays du Sud, à dix mille ou cinq mille kilomètres de là, et, en pleine chaleur, je ne survivais qu\'à cause d\'elle. Elle ne me manquait pas tous les jours, je n\'y pensais pas très souvent, je n\'avais pas de nostalgie, mais j\'avais éperdument besoin d\'y retourner, au moins une fois l\'an. Une maison où l\'on a survécu à de très grands dangers vous protège. \" C. C. C\'est une histoire d\'amour que nous raconte Catherine Clément, celle qui la lie à un refuge. Une maison de famille, au bord de la Loire, l\'a recueillie dès 1939 pour la protéger de l\'Occupation et de la terreur. Lui offrir une enfance. Catherine Clément se souvient tour à tour des conserves de sa grand-mère Yvonne, de sa nourrice au teint de jeune fille, des peintures bucoliques de Louis, des baigneurs du dimanche, des engins volants de l\'oncle Pierre. Aujourd\'hui c\'est dans cette maison où se retrouve toute sa tribu qu\'elle puise ...', 208, '2002-10-17', 123, 81, 0),
(191, 'Opera, Or, The Undoing of Women', 'http://books.google.com/books/content?id=dc4HeHS3ulMC&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'This was the first work to have applied a systematised feminist theory to opera. It concentrates on the stories & text of opera, that perhaps have more relevence today in a growing literature than it had when it was the \"sacrilegious\" pioneering work. ...', 228, '2001-09-16', 62, 82, 1),
(192, 'La nuit et l\'été', 'http://books.google.com/books/content?id=aNBkAAAAMAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'Evaluation, analyse et propositions concernant l\'offre culturelle à France Télévision. Pose la question de la place et de l\'influence de la culture sur la télévision publique, les émissions culturelles étant diffusées essentiellement après minuit et pendant l\'été. Donne des solutions pour que la culture retrouve une place moins confidentielle sur les chaînes publiques. ...', 150, '2002-12-14', 57, NULL, 0),
(193, 'L\'opéra', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', '\"L\'opéra est affaire de femmes\" (page 24). L\'auteur, qui aime sortir des sentiers battus dans ses réflexions critiques, se livre à une analyse du sort fait aux femmes dans les intrigues des opéras. Son regard critique est fortement féministe, parfois un peu sarcastique. ...', 374, '2017-07-30', 150, 83, 0),
(194, 'Les révolutions de l\'inconscient', 'http://books.google.com/books/content?id=l0MQAQAAIAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'Au-delà et avant Freud, d\'une société et d\'un siècle à l\'autre, l\'inconscient ne cesse de se présenter comme bien autre chose qu\'un concept occidental, se manifestant aussi bien en séance d\'analyse que lors d\'un rituel en Afrique. Convaincue de cette existence universelle et intemporelle de l\'inconscient, C. Clément en retrouve les diverses facettes chez Moïse comme chez Freud. ...', 332, '2020-11-04', 3, 84, 0),
(195, 'La Bible manga', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'Ils ont été choisis pour devenir la lumière des nations... Mais leur royaume n’est désormais que ruines et désolations... Leur Seigneur ne cesse de les rappeler à lui... Ils refusent de l’entendre et éliminent tous ses messagers... Reste-t-il encore un espoir de voir un jour le messie promis ? ...', 288, '2011-08-07', 151, NULL, 0),
(196, 'Coffret La Bible manga', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'Retrouvez toute la Bible dans un coffret d\'exception. Les 3 volumes de l\'Ancien Testament et les 2 volumes du Nouveau Testament sont regroupés dans un solide coffret aux finitions très soignées. La Bible Manga, en un produit. Un cadeau idéal. ...', 1435, '2020-03-17', 152, NULL, 0),
(197, 'MYSTERION', 'http://books.google.com/books/content?id=_A5CDwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'In a time where violent heretic hunting occurred, a secret society called the Rose Cross, who practiced Alchemy, were under oppression for being blasphemous. The Alchemist Leon rewrote his own memory and was living his life as a completely different person. The Philosopher\'s Stone, homunculus, and the secrets of his past are about to be revealed...! ...', 28, '2006-08-11', NULL, 85, 1),
(198, 'SCARLET BLADE', 'http://books.google.com/books/content?id=2q9aDwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Ro was abandoned in the wild by his father as soon as he was born. Luckily the Aesir god Loki took him in and raised him. After 13 years, Ro returns to his real home and the secrets around his birth are unraveled. This is the grand tale of the young viking Ro, set on the stage of Scandinavian mythology! ...', 29, '2022-10-08', NULL, 85, 1),
(199, 'PAIRAZAHDA', 'http://books.google.com/books/content?id=_V01DwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'd ...', 28, '2021-05-01', NULL, 85, 1),
(200, 'La dixième prophétie', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'Avec La dixième prophétie, notre héros se trouve de nouveau entraîné dans une passionnante aventure. Charlène a disparu dans un parc naturel aux États-Unis, où des scientifiques mènent - en toute illégalité - d\'inquiétantes expériences. Préoccupé, James décide de partir à sa recherche. Cette poursuite donne lieu à quatre rencontres qui l\'aident à pousser encore plus loin sa quête spirituelle. Grâce à son ami Wil, il entre dans une autre dimension, l\'Après-Vie, et atteint un niveau de conscience jusque-là insoupçonné. Au cœur de cette forêt des Appalaches, il comprend mieux que jamais la raison de sa présence sur terre et le sens profond de la vie. Récit d\'aventures et roman initiatique, La dixième prophétie nous invite à choisir le chemin de notre propre aventure spirituelle. ...', 314, '2013-01-13', 153, 86, 0),
(201, 'The Tenth Insight', 'http://books.google.com/books/content?id=sQE5AQAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'The adventure that began with The Celestine Prophecy continues as the action shifts to a wilderness in the American Southeast where the narrator\'s friend has disappeared. ...', 256, '2003-06-13', 154, 17, 1),
(202, 'Nature and Culture in the Iliad', 'http://books.google.com/books/content?id=OoMPwfGHO2MC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'By focusing on the story of Hector, James M. Redfield presents an imaginative perspective not only on the Iliad but also on the whole of Homeric culture. In an expansive discussion informed by a reinterpretation of Aristotle\'s Poetics and a reflection on the human meaning of narrative art, the analysis of Hector leads to an inquiry into the fundamental features of Homeric culture and of culture generally in its relation to nature. Through Hector, as the \"true tragic hero of the poem,\" the events and themes of the Iliad are understood and the function of tragedy within culture is examined. Redfield\'s work represents a significant application of anthropological perspectives to Homeric poetry. Originally published in 1975 (University of Chicago Press), this revised edition includes a new preface and concluding chapter by the author. ...', 340, '2014-11-24', 118, 87, 1),
(203, 'Les leçons de vie de la prophétie des Andes', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', '\" La planète Terre ne peut acquérir une conscience spirituelle plus élevée que grâce à des individus comme vous, qui prennent du recul et décident que la vie est vraiment beaucoup plus mystérieuse que nous ne le croyions ; ils devront ensuite rompre avec leurs habitudes de scepticisme et de négation... pour découvrir la nature de leur propre mission et trouver une manière intuitive de contribuer à l\'élévation spirituelle de ce monde. \" La prophétie des Andes est un livre qui a changé la vie de millions de personnes dans le monde. Ceux qui ont lu ce formidable roman initiatique ont découvert des coïncidences troublantes dans leur existence. Voici aujourd\'hui le guide-compagnon du best-seller mondial de l\'aventure spirituelle. A travers des explications précises et des exercices, James Redfield vous apprend à clarifier votre passé et vos idées, à améliorer vos relations avec les autres et à travailler avec les énergies positives. ...', 322, '2023-03-08', 155, NULL, 0),
(204, 'La prophétie des Andes', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'Objet de toutes les convoitises, un mystérieux manuscrit péruvien rédigé six cents ans avant J.-C. dévoile une prophétie : notre société va subir un grand bouleversement. Commence alors pour le héros une aventure magique mais dangereuse : une quête en onze révélations qui le mène du sommet des Andes au cœur de l\'Himalaya. Quand, au terme de son périple, le héros découvre le vrai sens de son existence, c\'est la propre quête du lecteur qui débute. ...', 759, '2017-07-03', 87, NULL, 0),
(205, 'Un récit familial et l\'histoire', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'd ...', 107, '2003-05-18', 156, NULL, 0),
(206, 'Au banquet de la nature', 'http://books.google.com/books/content?id=Tx2eAwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'À l’origine d’une multitude de gestes et d’activités humaines, l’acte alimentaire — en tant que fait social total — imprime une marque profonde sur l’économie et les sociétés. À l’heure du village planétaire, ce livre incite le lecteur à scruter le système alimentaire mondial, promu par les multinationales de l’agrofourniture, de l’agroalimentaire ou de la grande distribution, mais aussi les modèles alternatifs, porté par le mouvement social, en vue de produire, d’échanger et de consommer des biens agricoles et alimentaires dans une perspective vertueuse. ...', 194, '2021-05-25', 157, 88, 0),
(207, 'La saga du sucre', 'http://books.google.com/books/content?id=Q4PiDwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Le sucre s’est imposé comme un produit d’un usage universel. Ce livre retrace son histoire, qui fut parfois dramatique. Mais le sucre a aussi une économie, un business, une géopolitique propre, impliquant de nombreux acteurs privés ou institutionnels, que l’auteur met en lumière. Ce livre explore le chemin, long et tortueux, qui mène des champs de canne et de betterave à sucre à la table des consommateurs. ...', 176, '2000-08-21', 158, 89, 0),
(208, 'Au banquet de la nature', 'http://books.google.com/books/content?id=OOciCwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'L’acte alimentaire — en tant que fait social total — imprime une marque profonde sur l’économie et les sociétés. À l’heure du village planétaire, ce livre incite le lecteur à scruter le système alimentaire mondial, promu par les multinationales de l’agroalimentaire, mais aussi à examiner les modèles alternatifs visant à renouveler les façons de produire, d’échanger et de manger. L’auteur analyse ici les ressorts de la consommation alimentaire, dans ses dimensions culturelle, nutritionnelle et économique. Il définit les grands traits de l’agriculture mondiale et des échanges agroalimentaires, et retrace la trajectoire qui fut celle de l’agriculture hexagonale à travers l’histoire. Les politiques publiques, au service de la production agricole et de la sécurité alimentaire, sont également passées au crible. Chemin faisant, l’auteur met en exergue les questions de société qui font débat sur le sujet, qu’il s’agisse des désordres alimentaires du monde, de l’avenir des agrosystèmes ou  ...', 192, '2007-10-07', 157, 89, 0),
(209, 'L\'ascension d\'une grande agriculture', 'http://books.google.com/books/content?id=4qsuAAAAMAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'd ...', 336, '2016-11-22', 159, NULL, 0),
(210, 'The Athenian Woman', 'http://books.google.com/books/content?id=jzCwGoWpksIC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Sian Lewis considers the full range of female existence in classical Greece. Specific topics investigated include domestic labour, seclusion and relationships with men. ...', 282, '2009-07-15', 4, 90, 1),
(211, 'Fabrication of Miniature Filter-Array-Based Spectrometer for NIR Band', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'd ...', -1, '2007-10-19', 160, NULL, 1),
(212, 'Britannica\'s Typesetters', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'd ...', 192, '2003-10-30', 75, 91, 1),
(213, 'Capital Financing During Recession (Singapore)', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'd ...', -1, '2005-04-05', 28, NULL, 1),
(214, 'L’envers de la liberté', 'http://books.google.com/books/content?id=YyqFDwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Les désaccords philosophiques dont l\'idée de liberté fait constamment l\'objet ne font-ils pas signe, au-delà des querelles métaphysiques, vers la dynamique réelle de la liberté - et indissociablement de son idée - dans ses productions socio-historiques et, par conséquent, jusque dans ses négations ? Cet essai propose un travail généalogique autour du mot « liberté » : les significations successivement attribuées à ce concept sont essentiellement reliées à des expériences d\'aliénation, dont elles constituent des projections en positif, idéalisées. Articulant histoire de la philosophie et philosophie sociale, Peggy Avez explore plusieurs configurations - la peur de l\'exil dans l\'Antiquité, la conception chrétienne de l\'homme endetté, la crainte asservissante d\'autrui pour les modernes et la peur contemporaine de l\'objectivation unilatérale - chacune forgeant des significations de la liberté comme autochtonie, rédemption, sécurité et réinsertion du sens. De la « dialectique négative  ...', 246, '2013-03-17', 161, 92, 0),
(215, 'Les premiers entretiens de recrutement : les clés pour se démarquer et réussir. Concours, stages, emplois', 'http://books.google.com/books/content?id=KBtEEAAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Cet ouvrage s’adresse à tous ceux qui doivent se présenter à des entretiens de recrutement pour la première fois : jeunes diplômés qui entrent sur le marché de l’emploi, étudiants qui postulent à un stage, à une poursuite d’études ou encore lycéens face à une épreuve orale de concours. Vous y trouverez des exercices pratiques, des conseils méthodologiques, des outils concrets, des astuces et des témoignages de professionnels. À partir d’exemples vécus, de tests, de QCM, ou encore des 50 questions les plus posées en entretien, vous pourrez acquérir des connaissances sur les méthodes de recrutement et les dernières tendances en la matière. Vous aiguiserez ainsi votre capacité à vous présenter, à argumenter, à interagir positivement avec le recruteur ou encore à négocier. Au-delà des recettes toutes faites, l’objectif de cet ouvrage est de vous faire prendre conscience des enjeux fondamentaux de l’entretien et de ses codes bien spécifiques. Il doit vous permettre de trouver, en vous, ...', 264, '2005-05-07', 162, 93, 0),
(216, 'Au piège du désir - La rivière des serments (Harlequin Passions)', 'http://books.google.com/books/content?id=uuAYLGJn54IC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Au piège du désir, Peggy Webb En apprenant que le reporter Clint Garrett souhaite l\'interviewer, Crystal Jean sent une pointe d\'exaspération la gagner. Après tout il n\'y a rien de si extraordinaire au fait de postuler au titre de Reine de Beauté du Mississippi. Et si elle se présente, c\'est surtout pour faire plaisir à ses proches. Mais le jour de l\'entrevue, Crystal Jean perd brusquement toute son assurance. Car Clint est l\'homme le plus troublant qu\'elle ait jamais rencontré. Arrogant, sûr de lui, il la toise d\'un regard de prédateur. Un regard grâce auquel — elle en est persuadée - il a séduit des centaines d\'autres avant elle. Un regard auquel elle doit, elle va résister... La rivière des serments, Liz Flaherty Après vingt ans d\'absence, Micah Walker, l\'ex-mauvais garçon, est de retour à Taft, la ville de son enfance. Tout au long de la rivière Twilight, la rumeur enfle : Micah est devenu célèbre, il a fait fortune, il est plus solitaire, plus silencieux que jamais... Chacun r ...', 480, '2017-04-11', 163, 94, 0),
(217, 'Mon mariage', 'http://books.google.com/books/content?id=aN-x26MINqIC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Organisez votre mariage en restant zen et détendu(e) ! Enfin vous vous êtes décidés : vous allez vous marier ! Passé le petit rire nerveux et le romantique baiser, vous avez un défi à relever : organiser votre mariage en restant zen et détendu(e) ! Dans cette troisième édition du Mariage pour les débutants (10 000 exemplaires vendus), on vous dit tout ce que les autres ne vous disent pas sur ce jour si spécial. De la proclamation de la nouvelle au monde entier au wedding blues, ce livre vous guide dans tous vos préparatifs. ...', 188, '2010-12-04', 164, 95, 0),
(218, 'Mon mariage', 'http://books.google.com/books/content?id=aN-x26MINqIC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Organisez votre mariage en restant zen et détendu(e) ! Enfin vous vous êtes décidés : vous allez vous marier ! Passé le petit rire nerveux et le romantique baiser, vous avez un défi à relever : organiser votre mariage en restant zen et détendu(e) ! Dans cette troisième édition du Mariage pour les débutants (10 000 exemplaires vendus), on vous dit tout ce que les autres ne vous disent pas sur ce jour si spécial. De la proclamation de la nouvelle au monde entier au wedding blues, ce livre vous guide dans tous vos préparatifs. ...', 188, '2000-05-22', 164, 95, 0),
(219, 'Leonardo Da Vinci', 'http://books.google.com/books/content?id=vkA5DwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'The #1 New York Times bestseller \"A powerful story of an exhilarating mind and life...a study in creativity: how to define it, how to achieve it.\" --The New Yorker \"Vigorous, insightful.\" --The Washington Post \"A masterpiece.\" --San Francisco Chronicle \"Luminous.\" --The Daily Beast He was history\'s most creative genius. What secrets can he teach us? The author of the acclaimed bestsellers Steve Jobs, Einstein, and Benjamin Franklin brings Leonardo da Vinci to life in this exciting new biography. Based on thousands of pages from Leonardo\'s astonishing notebooks and new discoveries about his life and work, Walter Isaacson weaves a narrative that connects his art to his science. He shows how Leonardo\'s genius was based on skills we can improve in ourselves, such as passionate curiosity, careful observation, and an imagination so playful that it flirted with fantasy. He produced the two most famous paintings in history, The Last Supper and the Mona Lisa. But in his own mind, he was ju ...', 624, '2005-12-26', 165, 43, 1),
(220, 'Léonard de Vinci', 'http://books.google.com/books/content?id=EbaCDwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Il a été le génie le plus créatif de l’histoire. Quels secrets peut-il encore nous apprendre? Léonard de Vinci était enfant illégitime, homosexuel, gaucher, végétarien, distrait et parfois hérétique. Cette inadéquation aux mœurs de l’époque a décuplé sa créativité. À travers les milliers de pages de ses carnets et les plus récentes découvertes des historiens, Walter Isaacson dépeint l’émergence de son génie, alimenté par une curiosité passionnée, une capacité d’observation de tous les instants et une imagination sans limites. La créativité de Léonard de Vinci trouve sa source à la croisée des sciences et de la technologie. Il a épluché la chair des cadavres, dessiné les muscles des lèvres, puis peint le plus mémorable sourire de l’Histoire sur La Joconde. Il a exploré les mathématiques de l’optique, montré comment les rayons lumineux frappent la rétine et produisent les perspectives changeantes de La Cène. Sa capacité à combiner l’art et la science reste, aujourd’hui encore, la re ...', 595, '2002-09-18', 166, 96, 0),
(221, 'Einstein', 'http://books.google.com/books/content?id=d2WZDgAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'From Isaacson, the bestselling author of \"Benjamin Franklin,\" comes the first full biography of Albert Einstein since all his papers have become available--a fully realized portrait of a premier icon of his era. ...', 704, '2012-08-25', 167, 43, 1),
(222, 'Kissinger', 'http://books.google.com/books/content?id=rDqcp3WtoqoC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'By the time Henry Kissinger was made secretary of state in 1973, he had become, according to the Gallup Poll, the most admired person in America and one of the most unlikely celebrities ever to capture the world\'s imagination. Yet Kissinger was also reviled by large segments of the American public, ranging from liberal intellectuals to conservative activists. Kissinger explores the relationship between this complex man\'s personality and the foreign policy he pursued. Drawing on extensive interviews with Kissinger as well as 150 other sources, including U.S. presidents and his business clients, this first full-length biography makes use of many of Kissinger\'s private papers and classified memos to tell his uniquely American story. The result is an intimate narrative, filled with surprising revelations, that takes this grandly colorful statesman from his childhood as a persecuted Jew in Nazi Germany, through his tortured relationship with Richard Nixon, to his later years as a globe ...', 896, '2020-05-24', 168, 43, 1),
(223, 'Steve Jobs', 'http://books.google.com/books/content?id=zIZGEAAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Walter Isaacson’s “enthralling” (The New Yorker) worldwide bestselling biography of Apple cofounder Steve Jobs. Based on more than forty interviews with Steve Jobs conducted over two years—as well as interviews with more than 100 family members, friends, adversaries, competitors, and colleagues—Walter Isaacson has written a riveting story of the roller-coaster life and searingly intense personality of a creative entrepreneur whose passion for perfection and ferocious drive revolutionized six industries: personal computers, animated movies, music, phones, tablet computing, and digital publishing. At a time when America is seeking ways to sustain its innovative edge, Jobs stands as the ultimate icon of inventiveness and applied imagination. He knew that the best way to create value in 21st century was to connect creativity with technology. He built a company where leaps of the imagination were combined with remarkable feats of engineering. Although Jobs cooperated with the author, h ...', 672, '2016-12-12', 169, 43, 1),
(224, 'The Complete Fables of Jean de La Fontaine', 'http://books.google.com/books/content?id=hibRrS-YWHQC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Charming and elegant, Jean de La Fontaine\'s (1621-1695) animal fables depict sly foxes and scheming cats, vain birds and greedy wolves, all of which subtly express his penetrating insights into French society and the beasts found in all of us. Norman R. Shapiro has been translating La Fontaine\'s fables for over twenty years, capturing the original works\' lively mix of plain and archaic language. This newly complete collection is destined to set the English standard for the oeuvre of one of the world\'s greatest fabulists. ...', 507, '2016-02-05', 170, 45, 1),
(225, 'Fables', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'd ...', 255, '2003-09-29', 88, NULL, 0),
(226, 'Les fables de La Fontaine', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'La 4e de couverture : \"Près de quatre siècles nous séparent de la parution du chef-d\'oeuvre de La Fontaine, mais le plaisir de plonger dans la lecture de ses Fables demeure intact. Leur inventivité, leur fraîcheur et leur morale ne laissent personne indifférent. Cet ouvrage réunit la totalité de cette oeuvre considérable et intemporelle. On retrouve avec bonheur les fables les plus célèbres, celles qui ont bercé l\'enfance de toutes les générations : Le Corbeau et le Renard, La Cigale et la Fourmi ou encore Le Lièvre et la Tortue et l\'on découvre la richesse des fables moins connues. Par la beauté de ses illustrations, Jean-Noël Rochut renforce le plaisir de retrouver l\'oeuvre de ce conteur du XVIIe siècle. Petits ou grands, venez donc découvrir ou redécouvrir le monde fabuleux de La Fontaine.\" ...', 552, '2003-08-01', 0, NULL, 0),
(227, 'Fábulas de Jean de La Fontaine', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'Cada um deve valorizar os seus próprios dons. O que serve para uma pessoa pode não funcionar para outra. O céu ajuda a quem se ajuda. Quem trabalha garante o seu futuro. Esses e outros ensinamentos aparecem nas fábulas reunidas neste volume. ...', 48, '2014-04-16', 10, NULL, 5),
(228, 'Un regard sur Oudry', 'http://books.google.com/books/content?id=gypLAQAAIAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'Cet ouvrage reproduit les deux cent soixante-quinze planches en couleurs composées par Jean-Baptiste Oudry, peintre du roi Louis XV et professeur à l\'Académie royale de peinture, pour illustrer la totalité des deux cent quarante-cinq Fables de La Fontaine. Crayonnées, gravées et rehaussées à la gouache et à l\'aquarelle, les gravures témoignent de la maîtrise de l\'artiste. Les scènes représentées captent les instants les plus significatifs du texte tout en offrant, à travers le dessin des paysages, des costumes et de l\'architecture, une fresque de la société de la fin du XVIIe siècle. De même, personne mieux qu\'Oudry n\'a su faire vivre les animaux, et ses compositions apportent aux Fables une dimension nouvelle : le peintre fait s\'animer les animaux comme le fabuliste les fait parler. ...', 634, '2000-07-10', 10, 97, 0),
(229, 'Les particules élémentaires', 'http://books.google.com/books/content?id=NnZMEAAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Michel, chercheur en biologie rigoureusement déterministe, incapable d\'aimer, gère le déclin de sa sexualité en se consacrant au travail, à son Monoprix et aux tranquillisants. Une année sabbatique donne à ses découvertes un tour qui bouleversera la face du monde. Bruno, de son côté, s\'acharne en une quête désespérée du plaisir sexuel. Un séjour au Lieu du Changement, camping post-soixante-huitard tendance new age, changera t-il sa vie ? Un soir, dans le jacuzzi, une inconnue à la bouche hardie lui fait entrevoir la possibilité pratique du bonheur. Par leur parcours familial et sentimental chaotique, les deux demi-frères illustrent de manière exemplaire le suicide occidental – à moins qu\'ils n\'annoncent l\'imminence d\'une mutation. ...', 364, '2004-09-29', 171, 68, 0),
(230, 'Soumission', 'https://img.freepik.com/photos-gratuite/livre-bibliotheque-manuel-ouvert_1150-5920.jpg?w=900&t=st=1679903283~exp=1679903883~hmac=5aa808a43730e9b63cf1a3dd90b2e9c81299c8ecf970b0f04b365e4ac97f42d9', 'd ...', -1, '2008-03-18', 172, NULL, 0),
(231, 'Extension du domaine de la lutte', 'http://books.google.com/books/content?id=PHZMEAAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Voici l\'odyssée désenchantée d\'un informaticien entre deux âges, jouant son rôle en observant les mouvements humains et les banalités qui s\'échangent autour des machines à café. L\'installation d\'un progiciel en province lui permettra d\'étendre le champ de ses observations, d\'anéantir les dernières illusions d\'un collègue – obsédé malchanceux – et d\'élaborer une théorie complète du libéralisme, qu\'il soit économique ou sexuel. ...', 158, '2008-03-06', 171, 68, 0),
(232, 'Whatever', 'http://books.google.com/books/content?id=1pVOzwEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', '\"Houellebecq captures precisely the cynical disillusionment of disaffected youth.\"?Booklist \"This boy needs serious therapy. He may be beyond help.\"?The Washington Post Just thirty, with a well-paid job, depression and no love life, the narrator and anti-hero par excellence of this grim, funny, and clever novel smokes four packs of cigarettes a day and writes weird animal stories in his spare time. A painfully realistic portrayal of the vanishing freedom of a world governed by science and by the empty rituals of daily life. Michel Houellebecq is a multi-award-winning French author. He currently lives in Spain. ...', 0, '2008-10-10', 0, 98, 1),
(233, 'The Elementary Particles', 'http://books.google.com/books/content?id=3SuPG9xA9EYC&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'An international literary phenomenon, The Elementary Particles is a frighteningly original novel–part Marguerite Duras and part Bret Easton Ellis-that leaps headlong into the malaise of contemporary existence. Bruno and Michel are half-brothers abandoned by their mother, an unabashed devotee of the drugged-out free-love world of the sixties. Bruno, the older, has become a raucously promiscuous hedonist himself, while Michel is an emotionally dead molecular biologist wholly immersed in the solitude of his work. Each is ultimately offered a final chance at genuine love, and what unfolds is a brilliantly caustic and unpredictable tale. Translated from the French by Frank Wynne. ...', 274, '2010-12-06', 173, 99, 1),
(234, 'Théâtre de Pierre Corneille: Biographie de Corneille. Étude sur les comédies. Édudes sur medée. Livres consultés et cités. Le Cid', 'http://books.google.com/books/content?id=kklNAQAAIAAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'd ...', -1, '2001-07-10', 174, NULL, 0),
(235, 'Pierre Corneille : Oeuvres complètes et annexes (annotées, illustrées)', 'http://books.google.com/books/content?id=7KONDwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Une édition numérique originale des oeuvres complètes de Pierre Corneille complétée de présentations, de notices, de centaines d’illustrations, près de 5000 notes et d’annexes biographiques. Elle regroupe l’intégralité des oeuvres de Corneille : ses oeuvres théâtrales, ses oeuvres en prose, ses oeuvres poétiques, sa correspondance, ses traductions. L\'ouvrage a été mis en forme spécifiquement pour une navigation et une lecture optimales sur votre liseuse. CONTENU DÉTAILLÉ : LES 34 oeuvres THÉÂTRALES : Mélite • Clitandre • La Veuve • La Galerie du Palais • La Suivante • La Place Royale • La Comédie des Tuileries par les cinq auteurs • Médée • L’illusion comique • Le Cid • Horace • Cinna • Polyeucte martyr • Pompée • Le Menteur • La Suite du Menteur • Rodogune • Théodore vierge et martyre • Héraclius • Andromède • Don Sanche d’Aragon • Nicomède • Pertharite, roi des Lombards • Œdipe • La Toison d’Or • Sertorius • Sophonisbe • Othon • Agésilas roi des Huns • Tite et Bérénice • Psyché  ...', -1, '2020-03-04', 6, 5, 0),
(236, 'Oeuvres de P. Corneille', 'http://books.google.com/books/content?id=PrIrAAAAMAAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'd ...', -1, '2022-02-07', 175, NULL, 0),
(237, 'Le théâtre de Pierre Corneille', 'http://books.google.com/books/content?id=2GI7prF_Z8wC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'd ...', 634, '2013-10-22', 176, NULL, 0),
(238, 'Le théâtre de Pierre Corneille: 1664. -638 p.; 2. 1664. -672 p.-XVIIp', 'http://books.google.com/books/content?id=QX2KqG5UgGQC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'd ...', 648, '2012-07-20', 177, NULL, 0),
(239, 'Oscar Wilde\'s Wit and Wisdom', 'http://books.google.com/books/content?id=hyDDAgAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Amusing, thought-provoking epigrams, aphorisms, and other jests from the plays, essays, and lively conversation of Oscar Wilde offer a feast of humorous and profound quips. Nearly 400 quotes. ...', 64, '2000-12-08', 178, 100, 1),
(240, 'Le portrait de Dorian Gray', 'http://books.google.com/books/content?id=fNMrMQAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'Par la magie d\'un vœu, Dorian Gray conserve la grâce et la beauté de la jeunesse. Seul son portrait vieillira. Le jeune dandy s\'adonne alors à toutes les expériences, s\'enivre de sensations et recherche les plaisirs secrets et raffinés. \" Les folies sont les seules choses qu\'on ne regrette jamais \", \" il faut guérir l\'âme par les sens, guérir les sens par l\'âme \". Oscar Wilde voulut libérer l\'homme en lui donnant comme modèle l\'artiste. Pour se réaliser, il doit rechercher le plaisir et la beauté, sous toutes ses formes, bien ou mal. L\'art n\'a rien à voir avec la morale. Dans une langue raffinée, l\'auteur remet en question la société, le mariage, la morale et l\'art. Ses propos sont incisifs et humoristiques. Ce livre scandalisa l\'Angleterre victorienne, Oscar Wilde fut mis en prison pour avoir vécu ce qu\'il écrivait. Au siècle suivant, Proust, Gide, Montherlant, Malraux ont contribué à la célébrité du génial écrivain. ...', 285, '2020-01-11', 3, 101, 0),
(241, 'Collins Complete Works of Oscar Wilde', 'http://books.google.com/books/content?id=9yjuAAAAMAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api', 'This authoritative single-volume edition of Oscar Wilde\'s works contains all of his plays, stories, essays, poems and \'The Picture of Dorian Gray\'. ...', 1302, '2005-05-17', 57, 102, 1),
(242, 'Collected Poems of Oscar Wilde', 'http://books.google.com/books/content?id=-2bO0I-lGvcC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'Oscar Wilde, glamorous and notorious, more famous as a playwright or prisoner than as a poet, invites readers of his verse to meet an unknown and intimate figure. ...', 228, '2007-10-02', 14, 103, 1),
(243, 'Oscar Wilde - The Major Works', 'http://books.google.com/books/content?id=nKcVDAAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api', 'This book contains five stories by Irish author Oscar Wilde and are retold, with an introduction by Oscar Wilde\'s grandson. The book was edited by Merlin Holland. ...', 673, '2014-01-14', 66, 10, 1);

-- --------------------------------------------------------

--
-- Structure de la table `test_BooksLike`
--

CREATE TABLE `test_BooksLike` (
  `id_book` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `test_BooksLike`
--

INSERT INTO `test_BooksLike` (`id_book`, `id_user`) VALUES
(24, 21),
(34, 13),
(41, 72),
(43, 2),
(43, 3),
(43, 43),
(48, 79),
(50, 1),
(50, 3),
(51, 80),
(57, 50),
(58, 81),
(60, 81),
(63, 1),
(75, 13),
(85, 8),
(85, 35),
(95, 55),
(96, 8),
(105, 62),
(127, 68),
(150, 35),
(152, 35),
(182, 43);

-- --------------------------------------------------------

--
-- Structure de la table `test_Category`
--

CREATE TABLE `test_Category` (
  `id_category` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `test_Category`
--

INSERT INTO `test_Category` (`id_category`, `label`) VALUES
(14, 'Authors, French'),
(6, 'Biography & Autobiography'),
(13, 'Culture and law'),
(11, 'Faith and reason'),
(1, 'Fiction'),
(2, 'French drama'),
(8, 'History'),
(12, 'Literary Criticism'),
(4, 'Love stories'),
(3, 'Philosophy'),
(15, 'Pottery, Greek'),
(10, 'Psychology'),
(16, 'Reference'),
(5, 'Religion'),
(9, 'Science'),
(7, 'Social Science');

-- --------------------------------------------------------

--
-- Structure de la table `test_Editor`
--

CREATE TABLE `test_Editor` (
  `id_editor` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `test_Editor`
--

INSERT INTO `test_Editor` (`id_editor`, `label`) VALUES
(36, 'ACE BOOKS, INC.'),
(52, 'ALEXANDER DOWELD'),
(44, 'ALLYN & BACON'),
(70, 'ANCHOR'),
(5, 'ARVENSA EDITIONS'),
(51, 'ASTRA PUBLISHING HOUSE'),
(57, 'AUTHOR HOUSE'),
(25, 'BANTAM CLASSICS'),
(80, 'BASIC BOOKS'),
(85, 'BEAGLEE INC.'),
(74, 'BOD - BOOKS ON DEMAND'),
(75, 'BOD - BOOKS ON DEMAND FRANCE'),
(34, 'BRILL'),
(7, 'BY LABEL AA-PROD/EDITS (ARTMUSICLITTE) 2015'),
(30, 'CALMANN-LÉVY'),
(64, 'CENGAGE LEARNING'),
(24, 'CHRISTIAN BOURGOIS ÉDITEUR'),
(102, 'COLLINS'),
(23, 'COMPANYÉDITION BELIN/GALLIMARD'),
(14, 'COMPRENDRE LA LITTÉRATURE'),
(100, 'COURIER CORPORATION'),
(33, 'DARK HORSE COMICS'),
(97, 'DIANE DE SELLIERS'),
(56, 'DORLING KINDERSLEY LTD'),
(65, 'DOUBLEDAY'),
(87, 'DUKE UNIVERSITY PRESS'),
(28, 'E-ARTNOW SRO'),
(91, 'EDINBURGH : EDINBURGH UNIVERSITY PRESS'),
(16, 'EDITIONS ALBIN MICHEL'),
(31, 'ÉDITIONS DE L\'ÉPÉE'),
(84, 'EDITIONS DE LA MARTINIÈRE'),
(92, 'ÉDITIONS DE LA SORBONNE'),
(29, 'EDITIONS DU SANDRE'),
(93, 'EDITIONS ELLIPSES'),
(0, 'EDITIONS GALLIMARD'),
(78, 'EDITIONS L\'HARMATTAN'),
(15, 'EDITIONS LES ARÈNES'),
(81, 'EDITIONS NIL'),
(88, 'EDITIONS QUAE'),
(96, 'EDITIONS QUANTO'),
(71, 'ÉDITIONS RIVAGES'),
(76, 'FAYARD'),
(55, 'FERNWOOD PUBLISHING'),
(95, 'FIRST'),
(68, 'FLAMMARION'),
(2, 'GALLIMARD EDUCATION'),
(18, 'GALLIMARD JEUNESSE'),
(32, 'GLÉNAT MANGA'),
(13, 'GRASSET'),
(83, 'GRASSET & FASQUELLE'),
(17, 'HACHETTE UK'),
(94, 'HARLEQUIN'),
(37, 'HOLMAN BIBLE PUBLISHERS'),
(21, 'HUGINN & MUNINN'),
(86, 'J\'AI LU'),
(49, 'JHU PRESS'),
(19, 'LE LIVRE DE POCHE'),
(60, 'LEXINGTON BOOKS'),
(3, 'LGF/LE LIVRE DE POCHE'),
(6, 'LIGRAM ÉDITIONS'),
(101, 'LIVRE DE POCHE'),
(1, 'LIVRE DE POCHE JEUNESSE (LE)'),
(48, 'LSU PRESS'),
(77, 'MÉDIA DIFFUSION'),
(59, 'MEREO BOOKS, MEREOBOOK, MEREOBOOKS'),
(27, 'MODERN LIBRARY'),
(12, 'NATIONAL GEOGRAPHIC BOOKS'),
(10, 'OXFORD UNIVERSITY PRESS'),
(53, 'PEARSON EDUCACIÓN'),
(66, 'PEETERS LEUVEN'),
(67, 'PEETERS PUBLISHERS'),
(4, 'PENGUIN'),
(11, 'PENGUIN CLASSICS'),
(22, 'PENGUIN UK'),
(9, 'PRENTICE HALL'),
(69, 'PRESSES UNIVERSITAIRES DE RENNES'),
(90, 'PSYCHOLOGY PRESS'),
(73, 'PUBLICATIONS DE L’INSTITUT DE RECHERCHES HISTORIQUES DU SEPTENTRION'),
(89, 'QUAE'),
(61, 'RIS INC'),
(20, 'ROBERT LAFFONT'),
(58, 'ROUTLEDGE'),
(26, 'ROWMAN & LITTLEFIELD'),
(41, 'RUTGERS UNIVERSITY PRESS'),
(98, 'SERPENT\'S TAIL CLASSICS'),
(43, 'SIMON AND SCHUSTER'),
(50, 'SIMPLY CHARLY'),
(40, 'TEXAS A&M UNIVERSITY PRESS'),
(46, 'THOMAS NELSON'),
(72, 'TOM POUSSE'),
(42, 'TRAFFORD PUBLISHING'),
(82, 'U OF MINNESOTA PRESS'),
(62, 'UNC PRESS BOOKS'),
(63, 'UNIV OF CALIFORNIA PRESS'),
(47, 'UNIVERSITY OF ARKANSAS PRESS'),
(79, 'UNIVERSITY OF CHICAGO PRESS'),
(45, 'UNIVERSITY OF ILLINOIS PRESS'),
(38, 'UNIVERSITY PRESS OF KENTUCKY'),
(99, 'VINTAGE'),
(8, 'WILLIAM MORROW PAPERBACKS'),
(35, 'WIPF AND STOCK PUBLISHERS'),
(103, 'WORDSWORTH EDITIONS'),
(54, 'XLIBRIS CORPORATION'),
(39, 'YALE UNIVERSITY PRESS');

-- --------------------------------------------------------

--
-- Structure de la table `test_isFriend`
--

CREATE TABLE `test_isFriend` (
  `id_user` int(11) NOT NULL,
  `id_user_1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `test_isFriend`
--

INSERT INTO `test_isFriend` (`id_user`, `id_user_1`) VALUES
(0, 54),
(0, 72),
(0, 97),
(2, 58),
(4, 82),
(4, 91),
(5, 78),
(7, 66),
(10, 83),
(11, 62),
(11, 74),
(13, 70),
(13, 89),
(14, 84),
(15, 55),
(15, 67),
(16, 52),
(16, 70),
(17, 53),
(20, 50),
(21, 82),
(26, 59),
(27, 52),
(27, 80),
(27, 94),
(30, 56),
(30, 64),
(31, 65),
(31, 69),
(31, 76),
(32, 62),
(32, 67),
(36, 80),
(36, 98),
(37, 86),
(39, 52),
(39, 65),
(40, 54),
(41, 68),
(42, 64),
(42, 78),
(43, 52),
(43, 96),
(44, 76),
(45, 91),
(46, 52),
(46, 65),
(46, 94),
(49, 81),
(49, 97);

-- --------------------------------------------------------

--
-- Structure de la table `test_isWritten`
--

CREATE TABLE `test_isWritten` (
  `id_author` int(11) NOT NULL,
  `id_book` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `test_isWritten`
--

INSERT INTO `test_isWritten` (`id_author`, `id_book`) VALUES
(0, 0),
(0, 1),
(0, 2),
(0, 3),
(0, 4),
(1, 2),
(2, 5),
(2, 6),
(2, 7),
(3, 8),
(4, 9),
(5, 9),
(6, 10),
(6, 11),
(6, 12),
(6, 13),
(6, 14),
(7, 15),
(7, 16),
(7, 17),
(7, 18),
(7, 19),
(8, 19),
(9, 20),
(9, 21),
(9, 22),
(9, 23),
(9, 24),
(10, 20),
(11, 25),
(11, 29),
(12, 26),
(13, 27),
(13, 28),
(14, 30),
(14, 32),
(14, 33),
(14, 34),
(15, 31),
(16, 35),
(16, 36),
(16, 37),
(16, 38),
(16, 39),
(17, 38),
(18, 40),
(18, 41),
(18, 42),
(19, 43),
(20, 43),
(21, 43),
(22, 44),
(23, 45),
(23, 46),
(23, 47),
(23, 48),
(23, 49),
(23, 100),
(23, 101),
(23, 102),
(23, 104),
(24, 50),
(24, 51),
(24, 52),
(24, 53),
(24, 54),
(25, 55),
(25, 56),
(25, 57),
(25, 58),
(25, 59),
(26, 58),
(27, 60),
(27, 61),
(27, 63),
(27, 64),
(28, 62),
(29, 65),
(30, 65),
(31, 66),
(31, 67),
(31, 68),
(31, 69),
(32, 70),
(32, 71),
(32, 72),
(32, 74),
(33, 73),
(34, 75),
(34, 76),
(34, 77),
(34, 78),
(34, 79),
(35, 79),
(36, 80),
(36, 81),
(36, 82),
(36, 84),
(38, 85),
(39, 86),
(39, 87),
(39, 88),
(39, 89),
(40, 86),
(41, 90),
(42, 91),
(43, 92),
(44, 93),
(45, 94),
(46, 94),
(47, 95),
(48, 96),
(49, 97),
(50, 98),
(51, 99),
(52, 103),
(53, 105),
(53, 106),
(53, 107),
(53, 108),
(53, 109),
(54, 110),
(54, 111),
(54, 113),
(54, 114),
(55, 112),
(56, 115),
(56, 118),
(57, 116),
(58, 117),
(59, 119),
(60, 119),
(61, 119),
(62, 120),
(62, 124),
(63, 121),
(63, 122),
(64, 123),
(65, 125),
(66, 126),
(67, 127),
(68, 128),
(69, 128),
(70, 128),
(71, 128),
(72, 128),
(73, 128),
(74, 128),
(75, 128),
(76, 128),
(77, 128),
(78, 128),
(79, 128),
(80, 128),
(81, 129),
(82, 130),
(83, 131),
(84, 132),
(85, 132),
(86, 132),
(87, 132),
(88, 133),
(88, 134),
(89, 135),
(90, 136),
(91, 137),
(92, 138),
(93, 139),
(94, 140),
(94, 141),
(94, 142),
(95, 142),
(96, 143),
(97, 144),
(98, 145),
(98, 146),
(98, 147),
(98, 148),
(98, 149),
(99, 145),
(100, 148),
(101, 150),
(102, 151),
(102, 154),
(103, 151),
(103, 152),
(103, 153),
(103, 154),
(104, 155),
(104, 156),
(104, 157),
(104, 158),
(105, 159),
(106, 160),
(106, 161),
(106, 162),
(106, 163),
(107, 163),
(108, 163),
(109, 163),
(110, 163),
(111, 163),
(112, 164),
(113, 165),
(113, 166),
(113, 167),
(113, 168),
(113, 169),
(114, 170),
(114, 171),
(114, 172),
(114, 173),
(114, 174),
(115, 174),
(116, 175),
(116, 176),
(116, 177),
(116, 178),
(117, 179),
(118, 179),
(119, 179),
(120, 180),
(120, 181),
(120, 182),
(120, 183),
(120, 184),
(121, 185),
(121, 186),
(121, 188),
(121, 189),
(122, 187),
(123, 187),
(124, 190),
(124, 192),
(124, 193),
(124, 194),
(125, 191),
(126, 195),
(126, 197),
(126, 198),
(126, 199),
(127, 196),
(128, 196),
(129, 200),
(129, 201),
(129, 203),
(129, 204),
(130, 202),
(131, 203),
(132, 205),
(132, 206),
(132, 207),
(132, 208),
(132, 209),
(133, 210),
(134, 211),
(135, 212),
(136, 213),
(137, 214),
(138, 215),
(139, 216),
(140, 216),
(141, 217),
(141, 218),
(142, 219),
(142, 220),
(142, 221),
(142, 222),
(142, 223),
(143, 224),
(144, 225),
(144, 226),
(144, 227),
(144, 228),
(145, 227),
(146, 227),
(147, 229),
(147, 230),
(147, 231),
(147, 232),
(147, 233),
(148, 234),
(148, 235),
(148, 236),
(148, 237),
(148, 238),
(149, 239),
(149, 240),
(149, 241),
(149, 242),
(149, 243),
(150, 241);

-- --------------------------------------------------------

--
-- Structure de la table `test_Languages`
--

CREATE TABLE `test_Languages` (
  `id_language` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `test_Languages`
--

INSERT INTO `test_Languages` (`id_language`, `label`) VALUES
(2, 'de'),
(1, 'en'),
(4, 'es'),
(0, 'fr'),
(5, 'pt-BR'),
(3, 'tr');

-- --------------------------------------------------------

--
-- Structure de la table `test_Loan`
--

CREATE TABLE `test_Loan` (
  `id_loan` int(11) NOT NULL,
  `loan_date` date NOT NULL,
  `return_date` date DEFAULT NULL,
  `id_user` int(11) NOT NULL,
  `id_book` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `test_Loan`
--

INSERT INTO `test_Loan` (`id_loan`, `loan_date`, `return_date`, `id_user`, `id_book`) VALUES
(1, '2022-03-08', '2022-03-10', 5, 5),
(2, '2023-03-08', '2023-03-10', 5, 5),
(3, '2022-04-10', '2022-04-15', 1, 50),
(4, '2023-01-08', '2023-03-10', 1, 55),
(5, '2023-03-01', '2023-02-20', 23, 50),
(6, '2022-03-08', '2022-03-10', 56, 23),
(7, '2023-01-01', '2023-01-10', 56, 52),
(8, '2022-06-18', '2022-07-10', 97, 100),
(9, '2022-06-18', '2022-07-10', 97, 101),
(10, '2022-06-18', '2022-07-10', 97, 102),
(11, '2023-03-10', '2023-03-11', 7, 35),
(12, '2022-11-11', '2022-12-12', 9, 63),
(13, '2022-03-08', '2022-03-10', 72, 180),
(14, '2022-02-03', '2022-02-06', 3, 2),
(15, '2022-09-09', '2022-11-08', 50, 36),
(16, '2022-11-08', '2022-12-10', 50, 41),
(17, '2022-12-10', '2023-01-08', 50, 14),
(18, '2023-01-08', '2023-03-09', 50, 189),
(19, '2023-03-09', '2023-03-23', 50, 195),
(20, '2023-03-23', NULL, 50, 28);

-- --------------------------------------------------------

--
-- Structure de la table `test_PublishedYear`
--

CREATE TABLE `test_PublishedYear` (
  `id_year` int(11) NOT NULL,
  `published_year` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `test_PublishedYear`
--

INSERT INTO `test_PublishedYear` (`id_year`, `published_year`) VALUES
(177, '1664'),
(176, '1740'),
(175, '1817'),
(86, '1848'),
(107, '1882'),
(104, '1884'),
(174, '1886'),
(109, '1888'),
(140, '1905'),
(101, '1938-05-01'),
(100, '1952'),
(15, '1955'),
(98, '1964-11-01'),
(124, '1968'),
(88, '1972'),
(102, '1973'),
(99, '1974'),
(91, '1977-01-01'),
(150, '1979'),
(147, '1979-06-29'),
(24, '1981'),
(25, '1982'),
(119, '1983-01'),
(122, '1984-08-15'),
(159, '1985'),
(148, '1985-02-05'),
(89, '1986'),
(28, '1987'),
(62, '1988'),
(75, '1989'),
(117, '1990'),
(32, '1991'),
(113, '1993'),
(54, '1993-05-01'),
(118, '1994'),
(17, '1995'),
(31, '1996'),
(138, '1998'),
(58, '1998-06-23'),
(21, '1998-07-01'),
(56, '1999'),
(103, '1999-04'),
(14, '2000'),
(48, '2000-06-29'),
(139, '2000-11'),
(3, '2001'),
(46, '2001-02-22'),
(93, '2001-03-20'),
(173, '2001-11-13'),
(4, '2002'),
(80, '2002-01-01'),
(52, '2002-05-01'),
(115, '2002-06-03'),
(57, '2003'),
(153, '2003-12-01'),
(27, '2004'),
(5, '2004-05-25'),
(44, '2004-06-16'),
(155, '2004-10'),
(16, '2005'),
(38, '2005-01-01'),
(13, '2005-11-16'),
(123, '2006'),
(85, '2006-01-02'),
(84, '2006-04-10'),
(79, '2006-05-19'),
(121, '2006-07-27'),
(10, '2007'),
(63, '2007-04'),
(92, '2007-04-01'),
(74, '2007-04-30'),
(170, '2007-10-15'),
(96, '2008-04-14'),
(66, '2008-04-17'),
(163, '2008-05-01'),
(20, '2008-05-08'),
(87, '2009'),
(69, '2009-02-11'),
(2, '2009-03-01'),
(154, '2009-11-29'),
(142, '2010'),
(105, '2010-05-07'),
(134, '2010-12-28'),
(0, '2011'),
(120, '2011-03-30'),
(71, '2011-06-29'),
(135, '2011-09-21'),
(22, '2011-11'),
(19, '2012'),
(145, '2012-01-04'),
(178, '2012-03-01'),
(82, '2012-04-24'),
(97, '2012-08-16'),
(12, '2012-09-11'),
(33, '2012-09-27'),
(50, '2012-10-03'),
(151, '2012-10-05'),
(65, '2013'),
(164, '2013-01-24'),
(40, '2013-01-29'),
(106, '2013-03-01T00:00:00Z'),
(152, '2013-03-07'),
(60, '2013-03-27'),
(168, '2013-05-21'),
(110, '2013-12'),
(8, '2014-01-02'),
(7, '2014-01-05'),
(137, '2014-01-08'),
(133, '2014-02-04'),
(18, '2014-02-10'),
(157, '2014-03-24'),
(146, '2014-04-01'),
(1, '2014-08-13'),
(11, '2014-08-20'),
(141, '2014-10-02'),
(29, '2014-11-24'),
(128, '2015-02-25'),
(53, '2015-03-25'),
(68, '2015-03-26'),
(35, '2015-04-14'),
(90, '2015-05-05'),
(144, '2015-06-25'),
(116, '2015-07-06'),
(59, '2015-09-14'),
(77, '2015-11-17'),
(156, '2016'),
(72, '2016-03-08'),
(136, '2016-07-25'),
(47, '2016-08-05'),
(114, '2016-09-02'),
(61, '2016-09-21'),
(36, '2016-10-14'),
(111, '2016-11-10'),
(112, '2016-12-14'),
(172, '2017-01'),
(67, '2017-01-05'),
(167, '2017-04-11'),
(143, '2017-08-31'),
(83, '2017-09-05'),
(165, '2017-10-17'),
(160, '2018'),
(166, '2018-03-07'),
(131, '2018-05-14'),
(76, '2018-07-19'),
(149, '2018-10-29'),
(78, '2018-12-01'),
(161, '2019-01-24'),
(6, '2019-03-18'),
(108, '2019-04-04'),
(30, '2019-04-30'),
(125, '2019-05-15T00:00:00+02:00'),
(129, '2019-06-25'),
(81, '2019-12-10'),
(132, '2020-05-06'),
(64, '2020-05-26'),
(158, '2020-05-28'),
(9, '2020-06-19'),
(162, '2020-08-25'),
(42, '2020-09-24'),
(37, '2020-11-10'),
(39, '2021'),
(94, '2021-01-03'),
(43, '2021-01-15T00:00:00+01:00'),
(45, '2021-02-10'),
(23, '2021-03'),
(130, '2021-04-07T00:00:00+02:00'),
(26, '2021-05'),
(95, '2021-06-01'),
(41, '2021-08-26'),
(169, '2021-10-05'),
(34, '2021-10-12'),
(171, '2021-11-17T00:00:00+01:00'),
(55, '2021-11-30'),
(127, '2022'),
(126, '2022-04-20T00:00:00+02:00'),
(70, '2022-07-06'),
(49, '2022-09-01'),
(51, '2022-11-03'),
(73, '2022-12-06');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `test_Author`
--
ALTER TABLE `test_Author`
  ADD PRIMARY KEY (`id_author`);

--
-- Index pour la table `test_belongs`
--
ALTER TABLE `test_belongs`
  ADD PRIMARY KEY (`id_book`,`id_category`),
  ADD KEY `id_category` (`id_category`);

--
-- Index pour la table `test_BiblioUser`
--
ALTER TABLE `test_BiblioUser`
  ADD PRIMARY KEY (`id_user`);

--
-- Index pour la table `test_Book`
--
ALTER TABLE `test_Book`
  ADD PRIMARY KEY (`id_book`),
  ADD KEY `id_year` (`id_year`),
  ADD KEY `id_editor` (`id_editor`),
  ADD KEY `id_language` (`id_language`);

--
-- Index pour la table `test_BooksLike`
--
ALTER TABLE `test_BooksLike`
  ADD PRIMARY KEY (`id_book`,`id_user`),
  ADD KEY `id_user` (`id_user`);

--
-- Index pour la table `test_Category`
--
ALTER TABLE `test_Category`
  ADD PRIMARY KEY (`id_category`),
  ADD UNIQUE KEY `label` (`label`);

--
-- Index pour la table `test_Editor`
--
ALTER TABLE `test_Editor`
  ADD PRIMARY KEY (`id_editor`),
  ADD UNIQUE KEY `label` (`label`);

--
-- Index pour la table `test_isFriend`
--
ALTER TABLE `test_isFriend`
  ADD PRIMARY KEY (`id_user`,`id_user_1`),
  ADD KEY `id_user_1` (`id_user_1`);

--
-- Index pour la table `test_isWritten`
--
ALTER TABLE `test_isWritten`
  ADD PRIMARY KEY (`id_author`,`id_book`),
  ADD KEY `id_book` (`id_book`);

--
-- Index pour la table `test_Languages`
--
ALTER TABLE `test_Languages`
  ADD PRIMARY KEY (`id_language`),
  ADD UNIQUE KEY `label` (`label`);

--
-- Index pour la table `test_Loan`
--
ALTER TABLE `test_Loan`
  ADD PRIMARY KEY (`id_loan`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_book` (`id_book`);

--
-- Index pour la table `test_PublishedYear`
--
ALTER TABLE `test_PublishedYear`
  ADD PRIMARY KEY (`id_year`),
  ADD UNIQUE KEY `published_year` (`published_year`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `test_belongs`
--
ALTER TABLE `belongs`
  ADD CONSTRAINT `belongs_ibfk_1` FOREIGN KEY (`id_book`) REFERENCES `test_Book` (`id_book`),
  ADD CONSTRAINT `belongs_ibfk_2` FOREIGN KEY (`id_category`) REFERENCES `test_Category` (`id_category`);

--
-- Contraintes pour la table `test_Book`
--
ALTER TABLE `test_Book`
  ADD CONSTRAINT `Book_ibfk_1` FOREIGN KEY (`id_year`) REFERENCES `test_PublishedYear` (`id_year`),
  ADD CONSTRAINT `Book_ibfk_2` FOREIGN KEY (`id_editor`) REFERENCES `test_Editor` (`id_editor`),
  ADD CONSTRAINT `Book_ibfk_3` FOREIGN KEY (`id_language`) REFERENCES `test_Languages` (`id_language`);

--
-- Contraintes pour la table `test_BooksLike`
--
ALTER TABLE `test_BooksLike`
  ADD CONSTRAINT `BooksLike_ibfk_1` FOREIGN KEY (`id_book`) REFERENCES `test_Book` (`id_book`),
  ADD CONSTRAINT `BooksLike_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `test_BiblioUser` (`id_user`);

--
-- Contraintes pour la table `test_isFriend`
--
ALTER TABLE `test_isFriend`
  ADD CONSTRAINT `isFriend_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `test_BiblioUser` (`id_user`),
  ADD CONSTRAINT `isFriend_ibfk_2` FOREIGN KEY (`id_user_1`) REFERENCES `test_BiblioUser` (`id_user`);

--
-- Contraintes pour la table `test_isWritten`
--
ALTER TABLE `test_isWritten`
  ADD CONSTRAINT `isWritten_ibfk_1` FOREIGN KEY (`id_author`) REFERENCES `test_Author` (`id_author`),
  ADD CONSTRAINT `isWritten_ibfk_2` FOREIGN KEY (`id_book`) REFERENCES `test_Book` (`id_book`);

--
-- Contraintes pour la table `test_Loan`
--
ALTER TABLE `test_Loan`
  ADD CONSTRAINT `Loan_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `test_BiblioUser` (`id_user`),
  ADD CONSTRAINT `Loan_ibfk_2` FOREIGN KEY (`id_book`) REFERENCES `test_Book` (`id_book`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
