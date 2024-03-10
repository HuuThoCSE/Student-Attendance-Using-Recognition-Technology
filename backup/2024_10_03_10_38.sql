-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2024 at 04:38 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flask_db`
--
CREATE DATABASE IF NOT EXISTS `flask_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `flask_db`;

-- --------------------------------------------------------

--
-- Table structure for table `accs_hist`
--

CREATE TABLE `accs_hist` (
  `accs_id` int(11) NOT NULL,
  `accs_date` date NOT NULL,
  `accs_prsn` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `accs_added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accs_hist`
--

INSERT INTO `accs_hist` (`accs_id`, `accs_date`, `accs_prsn`, `accs_added`) VALUES
(171, '2024-03-06', '101', '2024-03-06 17:14:32'),
(172, '2024-03-06', '105', '2024-03-06 17:15:01'),
(173, '2024-03-06', '102', '2024-03-06 17:15:15'),
(174, '2024-03-06', '101', '2024-03-06 17:15:34'),
(175, '2024-03-06', '103', '2024-03-06 17:15:46'),
(176, '2024-03-06', '104', '2024-03-06 17:16:00'),
(177, '2024-03-06', '107', '2024-03-06 17:16:13'),
(178, '2024-03-06', '106', '2024-03-06 17:16:43'),
(179, '2024-03-06', '110', '2024-03-06 17:17:14'),
(180, '2024-03-06', '103', '2024-03-06 17:17:44'),
(181, '2024-03-06', '105', '2024-03-06 17:18:11'),
(182, '2024-03-06', '106', '2024-03-06 17:18:28'),
(183, '2024-03-06', '106', '2024-03-06 17:22:04');

-- --------------------------------------------------------

--
-- Table structure for table `courseclass`
--

CREATE TABLE `courseclass` (
  `idCourseClass` int(11) NOT NULL,
  `codeCourseClass` varchar(255) NOT NULL,
  `nameCourseClass` text NOT NULL,
  `hide` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courseclass`
--

INSERT INTO `courseclass` (`idCourseClass`, `codeCourseClass`, `nameCourseClass`, `hide`) VALUES
(1, '233_1SP1418_KS1A_tructiep', 'SP1418 - Chuẩn bị dạy học', 0),
(2, '231_1TH1336_KS2A_01_tructiep', 'TH1336 - Lập trình Web', 0),
(3, 'DD01', 'Điểm danh 1, thử nghiệm 1', 0),
(4, 'DD02', 'Điểm danh 2', 0),
(5, 'DD03', 'Điểm danh 3', 0),
(6, 'DD04', 'Điểm danh 3', 0),
(8, 'DD05', 'Điểm danh 5, thử nghiệm 5', 0),
(9, 'DDD06', 'Điểm danh 6', 0),
(10, 'DD07', 'Điểm danh 7', 0),
(11, 'DD08', 'Điểm danh 8', 0),
(13, 'DD09', 'Điểm danh 9', 0),
(14, 'DD010', 'Điểm danh 10', 0),
(15, 'DD011', 'Điểm danh 11', 0),
(16, 'DD12', 'Điểm danh 12, thử nghiệm 12', 0),
(17, 'DD13', 'Điểm danh 13', 0),
(18, 'DD14', 'Điểm danh 14', 0),
(19, 'DD15', 'Điểm danh 14', 0),
(20, 'DD16', 'Điểm danh 16', 0),
(21, 'DD17', 'Điểm danh 17', 0),
(22, 'DD18', 'Điểm danh 18', 0),
(23, 'DD19', 'Điểm danh 19', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dayclass`
--

CREATE TABLE `dayclass` (
  `idDayClass` int(11) NOT NULL,
  `idCourseClass` int(11) NOT NULL,
  `nameDayClass` text NOT NULL,
  `datetimeDayClass` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dayclass`
--

INSERT INTO `dayclass` (`idDayClass`, `idCourseClass`, `nameDayClass`, `datetimeDayClass`) VALUES
(1, 1, 'Buổi học 1', '2024-03-06 04:00:00'),
(2, 1, 'Buổi học 2', '2024-03-05 13:00:00'),
(4, 2, 'Buổi học 1', '2024-03-07 07:00:00'),
(5, 1, 'Buổi học 3', '2024-03-07 07:00:00'),
(6, 1, 'Buổi 4', '2024-03-10 00:00:00'),
(7, 1, 'Buổi 5', '0000-00-00 00:00:00'),
(8, 1, 'Buổi 6', '2024-03-09 10:55:00'),
(9, 1, 'Buổi 7', '2024-03-10 15:41:00'),
(10, 1, 'Buổi 7', '2024-03-10 15:41:00'),
(11, 1, 'Buổi 7', '2024-03-10 15:41:00'),
(14, 8, 'Buổi 1', '2024-03-10 18:03:00'),
(15, 8, 'Buổi 2', '2024-03-10 18:03:00'),
(16, 8, 'Buổi 3', '2024-03-12 17:11:00'),
(17, 3, 'Buổi 1', '2024-03-10 20:37:00'),
(18, 3, 'Buổi 1', '2024-03-10 20:37:00'),
(19, 4, 'Buổi 1', '2024-03-09 19:26:00'),
(22, 9, 'Buổi 1', '2024-03-10 22:43:00'),
(25, 10, 'Buổi 1', '2024-03-10 07:24:00'),
(28, 11, 'Buổi 1', '2024-03-10 07:00:00'),
(33, 13, 'Buổi 4', '2024-03-10 01:03:00'),
(35, 17, 'Buổi 1', '2024-03-11 07:00:00'),
(38, 17, 'Buổi 2', '2024-03-11 01:17:00'),
(40, 20, 'Buổi 1', '2024-03-11 01:26:00'),
(43, 21, 'Buổi 1', '2024-03-11 01:29:00'),
(45, 22, 'Buổi 1', '2024-03-11 07:33:00'),
(47, 22, 'Buổi 1', '2024-03-11 07:33:00'),
(48, 22, 'Buổi 1', '2024-03-11 07:33:00'),
(49, 22, 'Buổi 4', '0000-00-00 00:00:00'),
(50, 22, 'Buổi 4', '0000-00-00 00:00:00'),
(51, 22, 'Buổi 5', '2024-03-11 01:37:00'),
(52, 22, 'Buổi 6', '2024-03-14 01:37:00'),
(54, 23, 'Buổi 1', '2024-03-10 07:45:00'),
(55, 23, 'Buổi 2', '2024-03-12 01:40:00');

-- --------------------------------------------------------

--
-- Table structure for table `dayroom`
--

CREATE TABLE `dayroom` (
  `idRoom` int(11) NOT NULL,
  `idPersonal` int(11) NOT NULL,
  `nameRoom` text NOT NULL,
  `datetimeRoom` datetime NOT NULL,
  `hide` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dayroom`
--

INSERT INTO `dayroom` (`idRoom`, `idPersonal`, `nameRoom`, `datetimeRoom`, `hide`) VALUES
(1, 1, 'Phòng 1', '2024-03-10 20:30:00', 0),
(2, 1, 'Phòng 2', '2024-03-11 20:39:00', 0),
(3, 1, 'Phòng 3', '2024-03-11 20:49:00', 0),
(4, 1, 'Phòng 4', '2024-03-09 21:56:00', 0),
(5, 1, 'Phòng 5', '2024-03-11 22:03:00', 0),
(6, 1, 'Phòng 6', '2024-03-11 22:16:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dusers`
--

CREATE TABLE `dusers` (
  `idUser` int(11) NOT NULL,
  `nameUser` varchar(255) DEFAULT NULL,
  `mssv` varchar(8) NOT NULL,
  `prs_active` tinyint(1) DEFAULT NULL,
  `prs_added` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dusers`
--

INSERT INTO `dusers` (`idUser`, `nameUser`, `mssv`, `prs_active`, `prs_added`) VALUES
(101, 'Lê Anh Khoa', '21022001', NULL, NULL),
(102, 'Nguyễn Hữu Thọ', '21022008', NULL, NULL),
(103, 'Trần Quốc Huy', '21022011', NULL, NULL),
(104, 'Trịnh Văn Diệu Anh', '21022012', NULL, NULL),
(105, 'Hồ Quốc Cường', '21022013', NULL, NULL),
(106, 'Nguyễn Thuận Nguyên', '21022014', NULL, NULL),
(107, 'Lưu Quốc Kiệt', '21022015', NULL, NULL),
(108, 'Lê Thành Đạt', '21022016', NULL, NULL),
(109, 'Nguyễn Hoài Khang', '21022017', NULL, NULL),
(110, 'Trần Minh Đạt', '21022018', NULL, NULL),
(111, 'Võ Hoàng Khải', '21022019', NULL, NULL),
(112, 'Ngọc Bảo', '21022020', NULL, NULL),
(113, 'Trương Quốc Bảo', '21022021', NULL, NULL),
(114, 'Kim Anh', '21022022', NULL, NULL),
(115, 'Võ Nhân', '21022023', NULL, NULL),
(116, 'Võ Trung Nhân', '22003004', NULL, NULL),
(117, 'Ngọc Kiều', '21022025', NULL, NULL),
(118, 'Hữu Phước', '21022027', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `enrollroom`
--

CREATE TABLE `enrollroom` (
  `idEnrollRoom` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `idRoom` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `accs_dated` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enrollroom`
--

INSERT INTO `enrollroom` (`idEnrollRoom`, `idUser`, `idRoom`, `status`, `accs_dated`) VALUES
(1, 102, 2, 1, '2024-03-09 21:40:47'),
(2, 102, 1, 1, '2024-03-09 21:28:17'),
(3, 102, 3, 1, '2024-03-09 21:53:19'),
(5, 102, 4, 1, '2024-03-09 21:56:34'),
(6, 102, 5, 1, '2024-03-09 22:03:23'),
(7, 116, 6, 1, '2024-03-09 22:17:11');

-- --------------------------------------------------------

--
-- Table structure for table `enroll_dayclass`
--

CREATE TABLE `enroll_dayclass` (
  `id_enrolldayclass` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `idDayClass` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `accs_dated` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enroll_dayclass`
--

INSERT INTO `enroll_dayclass` (`id_enrolldayclass`, `idUser`, `idDayClass`, `status`, `accs_dated`) VALUES
(1, 102, 1, 1, '2024-03-07 00:29:06'),
(2, 102, 2, 1, '2024-03-07 00:29:43'),
(3, 102, 3, 1, '2024-03-07 00:30:23'),
(4, 106, 3, 1, '2024-03-07 00:32:12'),
(5, 105, 1, 1, '2024-03-07 00:38:54'),
(6, 106, 1, 1, '2024-03-07 01:00:24'),
(7, 102, 4, 1, '2024-03-07 01:06:32'),
(8, 105, 4, 1, '2024-03-07 01:06:53'),
(9, 106, 4, 1, '2024-03-07 01:08:49'),
(10, 102, 5, 1, '2024-03-07 01:23:05'),
(11, 106, 5, 1, '2024-03-07 01:32:36'),
(12, 114, 4, 1, '2024-03-07 01:43:36'),
(13, 114, 1, 1, '2024-03-07 01:46:35'),
(14, 114, 3, 1, '2024-03-07 02:20:46'),
(15, 116, 1, 1, '2024-03-07 12:54:20'),
(16, 107, 1, 1, '2024-03-07 13:01:27'),
(17, 108, 1, 1, '2024-03-08 11:56:52'),
(18, 104, 1, 1, '2024-03-08 11:57:53'),
(19, 117, 1, 1, '2024-03-08 12:07:22'),
(20, 118, 2, 1, '2024-03-08 12:41:46'),
(21, 102, 8, 1, '2024-03-09 10:02:42'),
(22, 102, 19, 1, '2024-03-09 19:27:16'),
(23, 108, 16, 1, '2024-03-09 22:25:19'),
(24, 102, 16, 1, '2024-03-09 22:25:38'),
(25, 102, 22, 1, '2024-03-09 22:48:04'),
(26, 102, 54, 1, '2024-03-10 01:41:15');

-- --------------------------------------------------------

--
-- Table structure for table `img_dataset`
--

CREATE TABLE `img_dataset` (
  `img_id` int(11) NOT NULL,
  `img_person` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `img_dataset`
--

INSERT INTO `img_dataset` (`img_id`, `img_person`) VALUES
(1, '101'),
(2, '101'),
(3, '101'),
(4, '101'),
(5, '101'),
(6, '101'),
(7, '101'),
(8, '101'),
(9, '101'),
(10, '101'),
(11, '101'),
(12, '101'),
(13, '101'),
(14, '101'),
(15, '101'),
(16, '101'),
(17, '101'),
(18, '101'),
(19, '101'),
(20, '101'),
(21, '101'),
(22, '101'),
(23, '101'),
(24, '101'),
(25, '101'),
(26, '101'),
(27, '101'),
(28, '101'),
(29, '101'),
(30, '101'),
(31, '101'),
(32, '101'),
(33, '101'),
(34, '101'),
(35, '101'),
(36, '101'),
(37, '101'),
(38, '101'),
(39, '101'),
(40, '101'),
(41, '101'),
(42, '101'),
(43, '101'),
(44, '101'),
(45, '101'),
(46, '101'),
(47, '101'),
(48, '101'),
(49, '101'),
(50, '101'),
(51, '101'),
(52, '101'),
(53, '101'),
(54, '101'),
(55, '101'),
(56, '101'),
(57, '101'),
(58, '101'),
(59, '101'),
(60, '101'),
(61, '101'),
(62, '101'),
(63, '101'),
(64, '101'),
(65, '101'),
(66, '101'),
(67, '101'),
(68, '101'),
(69, '101'),
(70, '101'),
(71, '101'),
(72, '101'),
(73, '101'),
(74, '101'),
(75, '101'),
(76, '101'),
(77, '101'),
(78, '101'),
(79, '101'),
(80, '101'),
(81, '101'),
(82, '101'),
(83, '101'),
(84, '101'),
(85, '101'),
(86, '101'),
(87, '101'),
(88, '101'),
(89, '101'),
(90, '101'),
(91, '101'),
(92, '101'),
(93, '101'),
(94, '101'),
(95, '101'),
(96, '101'),
(97, '101'),
(98, '101'),
(99, '101'),
(100, '101'),
(101, '102'),
(102, '102'),
(103, '102'),
(104, '102'),
(105, '102'),
(106, '102'),
(107, '102'),
(108, '102'),
(109, '102'),
(110, '102'),
(111, '102'),
(112, '102'),
(113, '102'),
(114, '102'),
(115, '102'),
(116, '102'),
(117, '102'),
(118, '102'),
(119, '102'),
(120, '102'),
(121, '102'),
(122, '102'),
(123, '102'),
(124, '102'),
(125, '102'),
(126, '102'),
(127, '102'),
(128, '102'),
(129, '102'),
(130, '102'),
(131, '102'),
(132, '102'),
(133, '102'),
(134, '102'),
(135, '102'),
(136, '102'),
(137, '102'),
(138, '102'),
(139, '102'),
(140, '102'),
(141, '102'),
(142, '102'),
(143, '102'),
(144, '102'),
(145, '102'),
(146, '102'),
(147, '102'),
(148, '102'),
(149, '102'),
(150, '102'),
(151, '102'),
(152, '102'),
(153, '102'),
(154, '102'),
(155, '102'),
(156, '102'),
(157, '102'),
(158, '102'),
(159, '102'),
(160, '102'),
(161, '102'),
(162, '102'),
(163, '102'),
(164, '102'),
(165, '102'),
(166, '102'),
(167, '102'),
(168, '102'),
(169, '102'),
(170, '102'),
(171, '102'),
(172, '102'),
(173, '102'),
(174, '102'),
(175, '102'),
(176, '102'),
(177, '102'),
(178, '102'),
(179, '102'),
(180, '102'),
(181, '102'),
(182, '102'),
(183, '102'),
(184, '102'),
(185, '102'),
(186, '102'),
(187, '102'),
(188, '102'),
(189, '102'),
(190, '102'),
(191, '102'),
(192, '102'),
(193, '102'),
(194, '102'),
(195, '102'),
(196, '102'),
(197, '102'),
(198, '102'),
(199, '102'),
(200, '102'),
(201, '103'),
(202, '103'),
(203, '103'),
(204, '103'),
(205, '103'),
(206, '103'),
(207, '103'),
(208, '103'),
(209, '103'),
(210, '103'),
(211, '103'),
(212, '103'),
(213, '103'),
(214, '103'),
(215, '103'),
(216, '103'),
(217, '103'),
(218, '103'),
(219, '103'),
(220, '103'),
(221, '103'),
(222, '103'),
(223, '103'),
(224, '103'),
(225, '103'),
(226, '103'),
(227, '103'),
(228, '103'),
(229, '103'),
(230, '103'),
(231, '103'),
(232, '103'),
(233, '103'),
(234, '103'),
(235, '103'),
(236, '103'),
(237, '103'),
(238, '103'),
(239, '103'),
(240, '103'),
(241, '103'),
(242, '103'),
(243, '103'),
(244, '103'),
(245, '103'),
(246, '103'),
(247, '103'),
(248, '103'),
(249, '103'),
(250, '103'),
(251, '103'),
(252, '103'),
(253, '103'),
(254, '103'),
(255, '103'),
(256, '103'),
(257, '103'),
(258, '103'),
(259, '103'),
(260, '103'),
(261, '103'),
(262, '103'),
(263, '103'),
(264, '103'),
(265, '103'),
(266, '103'),
(267, '103'),
(268, '103'),
(269, '103'),
(270, '103'),
(271, '103'),
(272, '103'),
(273, '103'),
(274, '103'),
(275, '103'),
(276, '103'),
(277, '103'),
(278, '103'),
(279, '103'),
(280, '103'),
(281, '103'),
(282, '103'),
(283, '103'),
(284, '103'),
(285, '103'),
(286, '103'),
(287, '103'),
(288, '103'),
(289, '103'),
(290, '103'),
(291, '103'),
(292, '103'),
(293, '103'),
(294, '103'),
(295, '103'),
(296, '103'),
(297, '103'),
(298, '103'),
(299, '103'),
(300, '103'),
(301, '104'),
(302, '104'),
(303, '104'),
(304, '104'),
(305, '104'),
(306, '104'),
(307, '104'),
(308, '104'),
(309, '104'),
(310, '104'),
(311, '104'),
(312, '104'),
(313, '104'),
(314, '104'),
(315, '104'),
(316, '104'),
(317, '104'),
(318, '104'),
(319, '104'),
(320, '104'),
(321, '104'),
(322, '104'),
(323, '104'),
(324, '104'),
(325, '104'),
(326, '104'),
(327, '104'),
(328, '104'),
(329, '104'),
(330, '104'),
(331, '104'),
(332, '104'),
(333, '104'),
(334, '104'),
(335, '104'),
(336, '104'),
(337, '104'),
(338, '104'),
(339, '104'),
(340, '104'),
(341, '104'),
(342, '104'),
(343, '104'),
(344, '104'),
(345, '104'),
(346, '104'),
(347, '104'),
(348, '104'),
(349, '104'),
(350, '104'),
(351, '104'),
(352, '104'),
(353, '104'),
(354, '104'),
(355, '104'),
(356, '104'),
(357, '104'),
(358, '104'),
(359, '104'),
(360, '104'),
(361, '104'),
(362, '104'),
(363, '104'),
(364, '104'),
(365, '104'),
(366, '104'),
(367, '104'),
(368, '104'),
(369, '104'),
(370, '104'),
(371, '104'),
(372, '104'),
(373, '104'),
(374, '104'),
(375, '104'),
(376, '104'),
(377, '104'),
(378, '104'),
(379, '104'),
(380, '104'),
(381, '104'),
(382, '104'),
(383, '104'),
(384, '104'),
(385, '104'),
(386, '104'),
(387, '104'),
(388, '104'),
(389, '104'),
(390, '104'),
(391, '104'),
(392, '104'),
(393, '104'),
(394, '104'),
(395, '104'),
(396, '104'),
(397, '104'),
(398, '104'),
(399, '104'),
(400, '104'),
(401, '105'),
(402, '105'),
(403, '105'),
(404, '105'),
(405, '105'),
(406, '105'),
(407, '105'),
(408, '105'),
(409, '105'),
(410, '105'),
(411, '105'),
(412, '105'),
(413, '105'),
(414, '105'),
(415, '105'),
(416, '105'),
(417, '105'),
(418, '105'),
(419, '105'),
(420, '105'),
(421, '105'),
(422, '105'),
(423, '105'),
(424, '105'),
(425, '105'),
(426, '105'),
(427, '105'),
(428, '105'),
(429, '105'),
(430, '105'),
(431, '105'),
(432, '105'),
(433, '105'),
(434, '105'),
(435, '105'),
(436, '105'),
(437, '105'),
(438, '105'),
(439, '105'),
(440, '105'),
(441, '105'),
(442, '105'),
(443, '105'),
(444, '105'),
(445, '105'),
(446, '105'),
(447, '105'),
(448, '105'),
(449, '105'),
(450, '105'),
(451, '105'),
(452, '105'),
(453, '105'),
(454, '105'),
(455, '105'),
(456, '105'),
(457, '105'),
(458, '105'),
(459, '105'),
(460, '105'),
(461, '105'),
(462, '105'),
(463, '105'),
(464, '105'),
(465, '105'),
(466, '105'),
(467, '105'),
(468, '105'),
(469, '105'),
(470, '105'),
(471, '105'),
(472, '105'),
(473, '105'),
(474, '105'),
(475, '105'),
(476, '105'),
(477, '105'),
(478, '105'),
(479, '105'),
(480, '105'),
(481, '105'),
(482, '105'),
(483, '105'),
(484, '105'),
(485, '105'),
(486, '105'),
(487, '105'),
(488, '105'),
(489, '105'),
(490, '105'),
(491, '105'),
(492, '105'),
(493, '105'),
(494, '105'),
(495, '105'),
(496, '105'),
(497, '105'),
(498, '105'),
(499, '105'),
(500, '105'),
(501, '106'),
(502, '106'),
(503, '106'),
(504, '106'),
(505, '106'),
(506, '106'),
(507, '106'),
(508, '106'),
(509, '106'),
(510, '106'),
(511, '106'),
(512, '106'),
(513, '106'),
(514, '106'),
(515, '106'),
(516, '106'),
(517, '106'),
(518, '106'),
(519, '106'),
(520, '106'),
(521, '106'),
(522, '106'),
(523, '106'),
(524, '106'),
(525, '106'),
(526, '106'),
(527, '106'),
(528, '106'),
(529, '106'),
(530, '106'),
(531, '106'),
(532, '106'),
(533, '106'),
(534, '106'),
(535, '106'),
(536, '106'),
(537, '106'),
(538, '106'),
(539, '106'),
(540, '106'),
(541, '106'),
(542, '106'),
(543, '106'),
(544, '106'),
(545, '106'),
(546, '106'),
(547, '106'),
(548, '106'),
(549, '106'),
(550, '106'),
(551, '106'),
(552, '106'),
(553, '106'),
(554, '106'),
(555, '106'),
(556, '106'),
(557, '106'),
(558, '106'),
(559, '106'),
(560, '106'),
(561, '106'),
(562, '106'),
(563, '106'),
(564, '106'),
(565, '106'),
(566, '106'),
(567, '106'),
(568, '106'),
(569, '106'),
(570, '106'),
(571, '106'),
(572, '106'),
(573, '106'),
(574, '106'),
(575, '106'),
(576, '106'),
(577, '106'),
(578, '106'),
(579, '106'),
(580, '106'),
(581, '106'),
(582, '106'),
(583, '106'),
(584, '106'),
(585, '106'),
(586, '106'),
(587, '106'),
(588, '106'),
(589, '106'),
(590, '106'),
(591, '106'),
(592, '106'),
(593, '106'),
(594, '106'),
(595, '106'),
(596, '106'),
(597, '106'),
(598, '106'),
(599, '106'),
(600, '106'),
(601, '107'),
(602, '107'),
(603, '107'),
(604, '107'),
(605, '107'),
(606, '107'),
(607, '107'),
(608, '107'),
(609, '107'),
(610, '107'),
(611, '107'),
(612, '107'),
(613, '107'),
(614, '107'),
(615, '107'),
(616, '107'),
(617, '107'),
(618, '107'),
(619, '107'),
(620, '107'),
(621, '107'),
(622, '107'),
(623, '107'),
(624, '107'),
(625, '107'),
(626, '107'),
(627, '107'),
(628, '107'),
(629, '107'),
(630, '107'),
(631, '107'),
(632, '107'),
(633, '107'),
(634, '107'),
(635, '107'),
(636, '107'),
(637, '107'),
(638, '107'),
(639, '107'),
(640, '107'),
(641, '107'),
(642, '107'),
(643, '107'),
(644, '107'),
(645, '107'),
(646, '107'),
(647, '107'),
(648, '107'),
(649, '107'),
(650, '107'),
(651, '107'),
(652, '107'),
(653, '107'),
(654, '107'),
(655, '107'),
(656, '107'),
(657, '107'),
(658, '107'),
(659, '107'),
(660, '107'),
(661, '107'),
(662, '107'),
(663, '107'),
(664, '107'),
(665, '107'),
(666, '107'),
(667, '107'),
(668, '107'),
(669, '107'),
(670, '107'),
(671, '107'),
(672, '107'),
(673, '107'),
(674, '107'),
(675, '107'),
(676, '107'),
(677, '107'),
(678, '107'),
(679, '107'),
(680, '107'),
(681, '107'),
(682, '107'),
(683, '107'),
(684, '107'),
(685, '107'),
(686, '107'),
(687, '107'),
(688, '107'),
(689, '107'),
(690, '107'),
(691, '107'),
(692, '107'),
(693, '107'),
(694, '107'),
(695, '107'),
(696, '107'),
(697, '107'),
(698, '107'),
(699, '107'),
(700, '107'),
(701, '108'),
(702, '108'),
(703, '108'),
(704, '108'),
(705, '108'),
(706, '108'),
(707, '108'),
(708, '108'),
(709, '108'),
(710, '108'),
(711, '108'),
(712, '108'),
(713, '108'),
(714, '108'),
(715, '108'),
(716, '108'),
(717, '108'),
(718, '108'),
(719, '108'),
(720, '108'),
(721, '108'),
(722, '108'),
(723, '108'),
(724, '108'),
(725, '108'),
(726, '108'),
(727, '108'),
(728, '108'),
(729, '108'),
(730, '108'),
(731, '108'),
(732, '108'),
(733, '108'),
(734, '108'),
(735, '108'),
(736, '108'),
(737, '108'),
(738, '108'),
(739, '108'),
(740, '108'),
(741, '108'),
(742, '108'),
(743, '108'),
(744, '108'),
(745, '108'),
(746, '108'),
(747, '108'),
(748, '108'),
(749, '108'),
(750, '108'),
(751, '108'),
(752, '108'),
(753, '108'),
(754, '108'),
(755, '108'),
(756, '108'),
(757, '108'),
(758, '108'),
(759, '108'),
(760, '108'),
(761, '108'),
(762, '108'),
(763, '108'),
(764, '108'),
(765, '108'),
(766, '108'),
(767, '108'),
(768, '108'),
(769, '108'),
(770, '108'),
(771, '108'),
(772, '108'),
(773, '108'),
(774, '108'),
(775, '108'),
(776, '108'),
(777, '108'),
(778, '108'),
(779, '108'),
(780, '108'),
(781, '108'),
(782, '108'),
(783, '108'),
(784, '108'),
(785, '108'),
(786, '108'),
(787, '108'),
(788, '108'),
(789, '108'),
(790, '108'),
(791, '108'),
(792, '108'),
(793, '108'),
(794, '108'),
(795, '108'),
(796, '108'),
(797, '108'),
(798, '108'),
(799, '108'),
(800, '108'),
(801, '109'),
(802, '109'),
(803, '109'),
(804, '109'),
(805, '109'),
(806, '109'),
(807, '109'),
(808, '109'),
(809, '109'),
(810, '109'),
(811, '109'),
(812, '109'),
(813, '109'),
(814, '109'),
(815, '109'),
(816, '109'),
(817, '109'),
(818, '109'),
(819, '109'),
(820, '109'),
(821, '109'),
(822, '109'),
(823, '109'),
(824, '109'),
(825, '109'),
(826, '109'),
(827, '109'),
(828, '109'),
(829, '109'),
(830, '109'),
(831, '109'),
(832, '109'),
(833, '109'),
(834, '109'),
(835, '109'),
(836, '109'),
(837, '109'),
(838, '109'),
(839, '109'),
(840, '109'),
(841, '109'),
(842, '109'),
(843, '109'),
(844, '109'),
(845, '109'),
(846, '109'),
(847, '109'),
(848, '109'),
(849, '109'),
(850, '109'),
(851, '109'),
(852, '109'),
(853, '109'),
(854, '109'),
(855, '109'),
(856, '109'),
(857, '109'),
(858, '109'),
(859, '109'),
(860, '109'),
(861, '109'),
(862, '109'),
(863, '109'),
(864, '109'),
(865, '109'),
(866, '109'),
(867, '109'),
(868, '109'),
(869, '109'),
(870, '109'),
(871, '109'),
(872, '109'),
(873, '109'),
(874, '109'),
(875, '109'),
(876, '109'),
(877, '109'),
(878, '109'),
(879, '109'),
(880, '109'),
(881, '109'),
(882, '109'),
(883, '109'),
(884, '109'),
(885, '109'),
(886, '109'),
(887, '109'),
(888, '109'),
(889, '109'),
(890, '109'),
(891, '109'),
(892, '109'),
(893, '109'),
(894, '109'),
(895, '109'),
(896, '109'),
(897, '109'),
(898, '109'),
(899, '109'),
(900, '109'),
(901, '110'),
(902, '110'),
(903, '110'),
(904, '110'),
(905, '110'),
(906, '110'),
(907, '110'),
(908, '110'),
(909, '110'),
(910, '110'),
(911, '110'),
(912, '110'),
(913, '110'),
(914, '110'),
(915, '110'),
(916, '110'),
(917, '110'),
(918, '110'),
(919, '110'),
(920, '110'),
(921, '110'),
(922, '110'),
(923, '110'),
(924, '110'),
(925, '110'),
(926, '110'),
(927, '110'),
(928, '110'),
(929, '110'),
(930, '110'),
(931, '110'),
(932, '110'),
(933, '110'),
(934, '110'),
(935, '110'),
(936, '110'),
(937, '110'),
(938, '110'),
(939, '110'),
(940, '110'),
(941, '110'),
(942, '110'),
(943, '110'),
(944, '110'),
(945, '110'),
(946, '110'),
(947, '110'),
(948, '110'),
(949, '110'),
(950, '110'),
(951, '110'),
(952, '110'),
(953, '110'),
(954, '110'),
(955, '110'),
(956, '110'),
(957, '110'),
(958, '110'),
(959, '110'),
(960, '110'),
(961, '110'),
(962, '110'),
(963, '110'),
(964, '110'),
(965, '110'),
(966, '110'),
(967, '110'),
(968, '110'),
(969, '110'),
(970, '110'),
(971, '110'),
(972, '110'),
(973, '110'),
(974, '110'),
(975, '110'),
(976, '110'),
(977, '110'),
(978, '110'),
(979, '110'),
(980, '110'),
(981, '110'),
(982, '110'),
(983, '110'),
(984, '110'),
(985, '110'),
(986, '110'),
(987, '110'),
(988, '110'),
(989, '110'),
(990, '110'),
(991, '110'),
(992, '110'),
(993, '110'),
(994, '110'),
(995, '110'),
(996, '110'),
(997, '110'),
(998, '110'),
(999, '110'),
(1000, '110'),
(1001, '111'),
(1002, '111'),
(1003, '111'),
(1004, '111'),
(1005, '111'),
(1006, '111'),
(1007, '111'),
(1008, '111'),
(1009, '111'),
(1010, '111'),
(1011, '111'),
(1012, '111'),
(1013, '111'),
(1014, '111'),
(1015, '111'),
(1016, '111'),
(1017, '111'),
(1018, '111'),
(1019, '111'),
(1020, '111'),
(1021, '111'),
(1022, '111'),
(1023, '111'),
(1024, '111'),
(1025, '111'),
(1026, '111'),
(1027, '111'),
(1028, '111'),
(1029, '111'),
(1030, '111'),
(1031, '111'),
(1032, '111'),
(1033, '111'),
(1034, '111'),
(1035, '111'),
(1036, '111'),
(1037, '111'),
(1038, '111'),
(1039, '111'),
(1040, '111'),
(1041, '111'),
(1042, '111'),
(1043, '111'),
(1044, '111'),
(1045, '111'),
(1046, '111'),
(1047, '111'),
(1048, '111'),
(1049, '111'),
(1050, '111'),
(1051, '111'),
(1052, '111'),
(1053, '111'),
(1054, '111'),
(1055, '111'),
(1056, '111'),
(1057, '111'),
(1058, '111'),
(1059, '111'),
(1060, '111'),
(1061, '111'),
(1062, '111'),
(1063, '111'),
(1064, '111'),
(1065, '111'),
(1066, '111'),
(1067, '111'),
(1068, '111'),
(1069, '111'),
(1070, '111'),
(1071, '111'),
(1072, '111'),
(1073, '111'),
(1074, '111'),
(1075, '111'),
(1076, '111'),
(1077, '111'),
(1078, '111'),
(1079, '111'),
(1080, '111'),
(1081, '111'),
(1082, '111'),
(1083, '111'),
(1084, '111'),
(1085, '111'),
(1086, '111'),
(1087, '111'),
(1088, '111'),
(1089, '111'),
(1090, '111'),
(1091, '111'),
(1092, '111'),
(1093, '111'),
(1094, '111'),
(1095, '111'),
(1096, '111'),
(1097, '111'),
(1098, '111'),
(1099, '111'),
(1100, '111'),
(1101, '114'),
(1102, '114'),
(1103, '114'),
(1104, '114'),
(1105, '114'),
(1106, '114'),
(1107, '114'),
(1108, '114'),
(1109, '114'),
(1110, '114'),
(1111, '114'),
(1112, '114'),
(1113, '114'),
(1114, '114'),
(1115, '114'),
(1116, '114'),
(1117, '114'),
(1118, '114'),
(1119, '114'),
(1120, '114'),
(1121, '114'),
(1122, '114'),
(1123, '114'),
(1124, '114'),
(1125, '114'),
(1126, '114'),
(1127, '114'),
(1128, '114'),
(1129, '114'),
(1130, '114'),
(1131, '114'),
(1132, '114'),
(1133, '114'),
(1134, '114'),
(1135, '114'),
(1136, '114'),
(1137, '114'),
(1138, '114'),
(1139, '114'),
(1140, '114'),
(1141, '114'),
(1142, '114'),
(1143, '114'),
(1144, '114'),
(1145, '114'),
(1146, '114'),
(1147, '114'),
(1148, '114'),
(1149, '114'),
(1150, '114'),
(1151, '114'),
(1152, '114'),
(1153, '114'),
(1154, '114'),
(1155, '114'),
(1156, '114'),
(1157, '114'),
(1158, '114'),
(1159, '114'),
(1160, '114'),
(1161, '114'),
(1162, '114'),
(1163, '114'),
(1164, '114'),
(1165, '114'),
(1166, '114'),
(1167, '114'),
(1168, '114'),
(1169, '114'),
(1170, '114'),
(1171, '114'),
(1172, '114'),
(1173, '114'),
(1174, '114'),
(1175, '114'),
(1176, '114'),
(1177, '114'),
(1178, '114'),
(1179, '114'),
(1180, '114'),
(1181, '114'),
(1182, '114'),
(1183, '114'),
(1184, '114'),
(1185, '114'),
(1186, '114'),
(1187, '114'),
(1188, '114'),
(1189, '114'),
(1190, '114'),
(1191, '114'),
(1192, '114'),
(1193, '114'),
(1194, '114'),
(1195, '114'),
(1196, '114'),
(1197, '114'),
(1198, '114'),
(1199, '114'),
(1200, '114'),
(1201, '115'),
(1202, '115'),
(1203, '116'),
(1204, '116'),
(1205, '116'),
(1206, '116'),
(1207, '116'),
(1208, '116'),
(1209, '116'),
(1210, '116'),
(1211, '116'),
(1212, '116'),
(1213, '116'),
(1214, '116'),
(1215, '116'),
(1216, '116'),
(1217, '116'),
(1218, '116'),
(1219, '116'),
(1220, '116'),
(1221, '116'),
(1222, '116'),
(1223, '116'),
(1224, '116'),
(1225, '116'),
(1226, '116'),
(1227, '116'),
(1228, '116'),
(1229, '116'),
(1230, '116'),
(1231, '116'),
(1232, '116'),
(1233, '116'),
(1234, '116'),
(1235, '116'),
(1236, '116'),
(1237, '116'),
(1238, '116'),
(1239, '116'),
(1240, '116'),
(1241, '116'),
(1242, '116'),
(1243, '116'),
(1244, '116'),
(1245, '116'),
(1246, '116'),
(1247, '116'),
(1248, '116'),
(1249, '116'),
(1250, '116'),
(1251, '116'),
(1252, '116'),
(1253, '116'),
(1254, '116'),
(1255, '116'),
(1256, '116'),
(1257, '116'),
(1258, '116'),
(1259, '116'),
(1260, '116'),
(1261, '116'),
(1262, '116'),
(1263, '116'),
(1264, '116'),
(1265, '116'),
(1266, '116'),
(1267, '116'),
(1268, '116'),
(1269, '116'),
(1270, '116'),
(1271, '116'),
(1272, '116'),
(1273, '116'),
(1274, '116'),
(1275, '116'),
(1276, '116'),
(1277, '116'),
(1278, '116'),
(1279, '116'),
(1280, '116'),
(1281, '116'),
(1282, '116'),
(1283, '116'),
(1284, '116'),
(1285, '116'),
(1286, '116'),
(1287, '116'),
(1288, '116'),
(1289, '116'),
(1290, '116'),
(1291, '116'),
(1292, '116'),
(1293, '116'),
(1294, '116'),
(1295, '116'),
(1296, '116'),
(1297, '116'),
(1298, '116'),
(1299, '116'),
(1300, '116'),
(1301, '116'),
(1302, '116'),
(1303, '117'),
(1304, '117'),
(1305, '117'),
(1306, '117'),
(1307, '117'),
(1308, '117'),
(1309, '117'),
(1310, '117'),
(1311, '117'),
(1312, '117'),
(1313, '117'),
(1314, '117'),
(1315, '117'),
(1316, '117'),
(1317, '117'),
(1318, '117'),
(1319, '117'),
(1320, '117'),
(1321, '117'),
(1322, '117'),
(1323, '117'),
(1324, '117'),
(1325, '117'),
(1326, '117'),
(1327, '117'),
(1328, '117'),
(1329, '117'),
(1330, '117'),
(1331, '117'),
(1332, '117'),
(1333, '117'),
(1334, '117'),
(1335, '117'),
(1336, '117'),
(1337, '117'),
(1338, '117'),
(1339, '117'),
(1340, '117'),
(1341, '117'),
(1342, '117'),
(1343, '117'),
(1344, '117'),
(1345, '117'),
(1346, '117'),
(1347, '117'),
(1348, '117'),
(1349, '117'),
(1350, '117'),
(1351, '117'),
(1352, '117'),
(1353, '117'),
(1354, '117'),
(1355, '117'),
(1356, '117'),
(1357, '117'),
(1358, '117'),
(1359, '117'),
(1360, '117'),
(1361, '117'),
(1362, '117'),
(1363, '117'),
(1364, '117'),
(1365, '117'),
(1366, '117'),
(1367, '117'),
(1368, '117'),
(1369, '117'),
(1370, '117'),
(1371, '117'),
(1372, '117'),
(1373, '117'),
(1374, '117'),
(1375, '117'),
(1376, '117'),
(1377, '117'),
(1378, '117'),
(1379, '117'),
(1380, '117'),
(1381, '117'),
(1382, '117'),
(1383, '117'),
(1384, '117'),
(1385, '117'),
(1386, '117'),
(1387, '117'),
(1388, '117'),
(1389, '117'),
(1390, '117'),
(1391, '117'),
(1392, '117'),
(1393, '117'),
(1394, '117'),
(1395, '117'),
(1396, '117'),
(1397, '117'),
(1398, '117'),
(1399, '117'),
(1400, '117'),
(1401, '117'),
(1402, '117'),
(1403, '118'),
(1404, '118'),
(1405, '118'),
(1406, '118'),
(1407, '118'),
(1408, '118'),
(1409, '118'),
(1410, '118'),
(1411, '118'),
(1412, '118'),
(1413, '118'),
(1414, '118'),
(1415, '118'),
(1416, '118'),
(1417, '118'),
(1418, '118'),
(1419, '118'),
(1420, '118'),
(1421, '118'),
(1422, '118'),
(1423, '118'),
(1424, '118'),
(1425, '118'),
(1426, '118'),
(1427, '118'),
(1428, '118'),
(1429, '118'),
(1430, '118'),
(1431, '118'),
(1432, '118'),
(1433, '118'),
(1434, '118'),
(1435, '118'),
(1436, '118'),
(1437, '118'),
(1438, '118'),
(1439, '118'),
(1440, '118'),
(1441, '118'),
(1442, '118'),
(1443, '118'),
(1444, '118'),
(1445, '118'),
(1446, '118'),
(1447, '118'),
(1448, '118'),
(1449, '118'),
(1450, '118'),
(1451, '118'),
(1452, '118'),
(1453, '118'),
(1454, '118'),
(1455, '118'),
(1456, '118'),
(1457, '118'),
(1458, '118'),
(1459, '118'),
(1460, '118'),
(1461, '118'),
(1462, '118'),
(1463, '118'),
(1464, '118'),
(1465, '118'),
(1466, '118'),
(1467, '118'),
(1468, '118'),
(1469, '118'),
(1470, '118'),
(1471, '118'),
(1472, '118'),
(1473, '118'),
(1474, '118'),
(1475, '118'),
(1476, '118'),
(1477, '118'),
(1478, '118'),
(1479, '118'),
(1480, '118'),
(1481, '118'),
(1482, '118'),
(1483, '118'),
(1484, '118'),
(1485, '118'),
(1486, '118'),
(1487, '118'),
(1488, '118'),
(1489, '118'),
(1490, '118'),
(1491, '118'),
(1492, '118'),
(1493, '118'),
(1494, '118'),
(1495, '118'),
(1496, '118'),
(1497, '118'),
(1498, '118'),
(1499, '118'),
(1500, '118'),
(1501, '118'),
(1502, '118');

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE `permission` (
  `idPerm` int(11) NOT NULL,
  `codePerm` varchar(4) NOT NULL,
  `namePerm` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`idPerm`, `codePerm`, `namePerm`) VALUES
(1, 'ADMN', 'ADMIN'),
(2, 'GV', 'Giáo viên'),
(3, 'SV', 'Sinh viên');

-- --------------------------------------------------------

--
-- Table structure for table `personal`
--

CREATE TABLE `personal` (
  `idPersonal` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `firstnamePersonal` text NOT NULL,
  `lastnamPersonal` text NOT NULL,
  `sex` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `personal`
--

INSERT INTO `personal` (`idPersonal`, `idUser`, `firstnamePersonal`, `lastnamPersonal`, `sex`) VALUES
(1, 3, 'Teacher', 'Nguyen', 1),
(2, 2, 'Admin', '2024-03-08 15:14:51', NULL),
(3, 1, 'Hữu Thọ', '2024-03-08 15:15:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--
-- Error reading structure for table flask_db.users: #1932 - Table &#039;flask_db.users&#039; doesn&#039;t exist in engine
-- Error reading data for table flask_db.users: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `flask_db`.`users`&#039; at line 1

-- --------------------------------------------------------

--
-- Table structure for table `users1`
--

CREATE TABLE `users1` (
  `id` int(11) NOT NULL,
  `username` varchar(12) NOT NULL,
  `password` varchar(12) NOT NULL,
  `idPersonal` int(11) NOT NULL,
  `idPerm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users1`
--

INSERT INTO `users1` (`id`, `username`, `password`, `idPersonal`, `idPerm`) VALUES
(1, 'admin', 'admin', 2, 1),
(2, 'teacher', '123456', 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accs_hist`
--
ALTER TABLE `accs_hist`
  ADD PRIMARY KEY (`accs_id`),
  ADD KEY `accs_date` (`accs_date`);

--
-- Indexes for table `courseclass`
--
ALTER TABLE `courseclass`
  ADD PRIMARY KEY (`idCourseClass`),
  ADD UNIQUE KEY `codeCourseClass` (`codeCourseClass`);

--
-- Indexes for table `dayclass`
--
ALTER TABLE `dayclass`
  ADD PRIMARY KEY (`idDayClass`);

--
-- Indexes for table `dayroom`
--
ALTER TABLE `dayroom`
  ADD PRIMARY KEY (`idRoom`);

--
-- Indexes for table `dusers`
--
ALTER TABLE `dusers`
  ADD PRIMARY KEY (`idUser`);

--
-- Indexes for table `enrollroom`
--
ALTER TABLE `enrollroom`
  ADD PRIMARY KEY (`idEnrollRoom`),
  ADD UNIQUE KEY `idUser` (`idUser`,`idRoom`);

--
-- Indexes for table `enroll_dayclass`
--
ALTER TABLE `enroll_dayclass`
  ADD PRIMARY KEY (`id_enrolldayclass`),
  ADD UNIQUE KEY `idUser` (`idUser`,`idDayClass`);

--
-- Indexes for table `img_dataset`
--
ALTER TABLE `img_dataset`
  ADD PRIMARY KEY (`img_id`);

--
-- Indexes for table `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`idPerm`);

--
-- Indexes for table `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`idPersonal`),
  ADD KEY `fk_personal_user` (`idUser`);

--
-- Indexes for table `users1`
--
ALTER TABLE `users1`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accs_hist`
--
ALTER TABLE `accs_hist`
  MODIFY `accs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT for table `courseclass`
--
ALTER TABLE `courseclass`
  MODIFY `idCourseClass` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `dayclass`
--
ALTER TABLE `dayclass`
  MODIFY `idDayClass` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `dayroom`
--
ALTER TABLE `dayroom`
  MODIFY `idRoom` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `enrollroom`
--
ALTER TABLE `enrollroom`
  MODIFY `idEnrollRoom` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `enroll_dayclass`
--
ALTER TABLE `enroll_dayclass`
  MODIFY `id_enrolldayclass` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `permission`
--
ALTER TABLE `permission`
  MODIFY `idPerm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal`
--
ALTER TABLE `personal`
  MODIFY `idPersonal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dayclass`
--
ALTER TABLE `dayclass`
  ADD CONSTRAINT `fk_day_class` FOREIGN KEY (`idCourseClass`) REFERENCES `courseclass` (`idCourseClass`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `personal`
--
ALTER TABLE `personal`
  ADD CONSTRAINT `fk_personal_user` FOREIGN KEY (`idUser`) REFERENCES `users` (`idUser`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
