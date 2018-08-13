-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2018 at 10:30 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sappman`
--

-- --------------------------------------------------------

--
-- Table structure for table `m_ba`
--

CREATE TABLE `m_ba` (
  `id` int(11) NOT NULL,
  `idba` int(4) NOT NULL,
  `nameba` varchar(255) NOT NULL,
  `date_live` date DEFAULT NULL,
  `p_fico` varchar(255) DEFAULT NULL,
  `p_mm` varchar(255) DEFAULT NULL,
  `p_pm` varchar(255) DEFAULT NULL,
  `p_pp` varchar(255) DEFAULT NULL,
  `p_sd` varchar(255) DEFAULT NULL,
  `chg_by` varchar(255) DEFAULT NULL,
  `chg_date` datetime DEFAULT NULL,
  `tlba` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `m_check`
--

CREATE TABLE `m_check` (
  `c_id` int(11) NOT NULL,
  `ctype` varchar(255) DEFAULT NULL,
  `ctypedesc` varchar(255) NOT NULL,
  `ctcode` varchar(255) NOT NULL,
  `ctable` varchar(255) NOT NULL,
  `cstat` varchar(255) NOT NULL,
  `cmodul` varchar(255) DEFAULT NULL,
  `chg_by` varchar(255) DEFAULT NULL,
  `chg_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `m_modul`
--

CREATE TABLE `m_modul` (
  `id` int(11) NOT NULL,
  `idmodul` varchar(255) NOT NULL,
  `namemodul` varchar(255) NOT NULL,
  `chg_by` varchar(255) DEFAULT NULL,
  `chg_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_modul`
--

INSERT INTO `m_modul` (`id`, `idmodul`, `namemodul`, `chg_by`, `chg_date`) VALUES
(11, 'ABAP', 'ABAP', NULL, NULL),
(12, 'BASIS', 'Basis', NULL, NULL),
(13, 'FICO', 'Financial Controlling', NULL, NULL),
(14, 'MM', 'Materials Management', NULL, NULL),
(15, 'PM', 'Plant Maintenance', NULL, NULL),
(16, 'PP', 'Production Planning', NULL, NULL),
(17, 'SD', 'Sales & Distribution', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_uat_scn`
--

CREATE TABLE `m_uat_scn` (
  `uat_id` int(11) NOT NULL,
  `uat_scn` varchar(255) NOT NULL,
  `uat_desc` varchar(255) NOT NULL,
  `chg_by` varchar(255) DEFAULT NULL,
  `chg_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `m_uat_step`
--

CREATE TABLE `m_uat_step` (
  `id_step` int(11) NOT NULL,
  `uat_scn` varchar(255) DEFAULT NULL,
  `no_step` int(11) NOT NULL,
  `bp_step` varchar(255) NOT NULL,
  `tcode_step` varchar(255) NOT NULL,
  `user_step` varchar(255) NOT NULL,
  `chg_by` varchar(255) DEFAULT NULL,
  `chg_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userno` int(4) NOT NULL,
  `userid` varchar(255) NOT NULL,
  `userpwd` varchar(255) NOT NULL,
  `userlname` varchar(255) NOT NULL,
  `usermodul` varchar(255) DEFAULT NULL,
  `chg_by` varchar(255) DEFAULT NULL,
  `chg_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userno`, `userid`, `userpwd`, `userlname`, `usermodul`, `chg_by`, `chg_date`) VALUES
(1, 'Admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 'ABAP', NULL, NULL),
(2, 'Sony', '33561003f44d374c719506bef4faeba4', 'Sony', 'ABAP', NULL, NULL),
(3, 'Ferry', '46171b077997b166bb30cf5494eff2f8', 'Ferry', 'ABAP', NULL, NULL),
(4, 'Faris', '7d77e825b80cff62a72e680c1c81424f', 'Faris', 'ABAP', NULL, NULL),
(5, 'Johan', '7fedcb034ecf9df4be8c1ea13362053b', 'Johan', 'ABAP', NULL, NULL),
(6, 'Tjandra', 'e680449ab372830240dc3d25336658e4', 'Tjandra', 'BASIS', NULL, NULL),
(7, 'Andrean', 'e8a49913d8fde635db167708f2ec03f4', 'Andrean', 'BASIS', NULL, NULL),
(8, 'Nurnia', '270a6ec508f0b6d7dc48ca66216e3119', 'Nurnia', 'FICO', NULL, NULL),
(9, 'Yohanes', '493331a7321bf622460493a8cda5e4c4', 'Yohanes', 'FICO', NULL, NULL),
(10, 'Putra', '5e0c5a0bf82decdd43b2150b622c66c5', 'Putra', 'FICO', NULL, NULL),
(11, 'Aris', '288077f055be4fadc3804a69422dd4f8', 'Aris', 'FICO', NULL, NULL),
(12, 'Purwandi', 'd25db176883c2e74f77f49f61d1ac376', 'Purwandi', 'MM', NULL, NULL),
(13, 'Nino', '45ff0fa8ba18b7a076efa812989dd948', 'Nino', 'MM', NULL, NULL),
(14, 'Thomas', 'ef6e65efc188e7dffd7335b646a85a21', 'Thomas', 'MM', NULL, NULL),
(15, 'Zamroni', 'a078479c3d251b9f229c801dfe5363cc', 'Zamroni', 'PM', NULL, NULL),
(16, 'Achmad', 'e590ad4b83ac97f84569825e8f00c730', 'Achmad', 'PM', NULL, NULL),
(17, 'Rita', '2794d223f90059c9f705c73a99384085', 'Rita', 'PP', NULL, NULL),
(18, 'Fitri', '534a0b7aa872ad1340d0071cbfa38697', 'Fitri', 'PP', NULL, NULL),
(19, 'Ridho', '926a161c6419512d711089538c80ac70', 'Ridho', 'PP', NULL, NULL),
(20, 'Rendra', 'bcb0195b3b8dcfd3f5656518d9063499', 'Rendra', 'SD', NULL, NULL),
(21, 'Suyanto', '96c003bd3849602eb10f0c31193dcdb2', 'Suyanto', 'SD', NULL, NULL),
(22, 'Alex', '534b44a19bf18d20b71ecc4eb77c572f', 'Alex', 'SD', NULL, NULL),
(23, 'Wasti', 'f9cfcb6b5956aa9edd1b0033c7ac6642', 'Wasti', 'SD', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `v_check`
--

CREATE TABLE `v_check` (
  `id` int(11) NOT NULL,
  `ctype` varchar(45) NOT NULL,
  `ctypedesc` varchar(255) NOT NULL,
  `ctcode` varchar(45) NOT NULL,
  `ctable` varchar(45) DEFAULT NULL,
  `cstat` varchar(45) NOT NULL,
  `cmodul` varchar(45) NOT NULL,
  `vcheck` varchar(45) DEFAULT NULL,
  `vcba` int(11) NOT NULL,
  `vctransreqs` varchar(45) DEFAULT NULL,
  `vcdate` date DEFAULT NULL,
  `vcpic` varchar(45) DEFAULT NULL,
  `chg_by` varchar(255) DEFAULT NULL,
  `chg_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `v_uat`
--

CREATE TABLE `v_uat` (
  `id` int(11) NOT NULL,
  `uat_scn` varchar(255) NOT NULL,
  `no_step` int(11) NOT NULL,
  `bp_step` varchar(255) NOT NULL,
  `tcode_step` varchar(45) NOT NULL,
  `user_step` varchar(45) NOT NULL,
  `vuba` varchar(45) NOT NULL,
  `vuinput` varchar(45) DEFAULT NULL,
  `vuoutput` varchar(45) DEFAULT NULL,
  `vupic` varchar(45) DEFAULT NULL,
  `vudate` date DEFAULT NULL,
  `chg_by` varchar(255) DEFAULT NULL,
  `chg_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `m_ba`
--
ALTER TABLE `m_ba`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_check`
--
ALTER TABLE `m_check`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `m_modul`
--
ALTER TABLE `m_modul`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_uat_scn`
--
ALTER TABLE `m_uat_scn`
  ADD PRIMARY KEY (`uat_id`);

--
-- Indexes for table `m_uat_step`
--
ALTER TABLE `m_uat_step`
  ADD PRIMARY KEY (`id_step`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userno`),
  ADD UNIQUE KEY `userid_UNIQUE` (`userid`);

--
-- Indexes for table `v_check`
--
ALTER TABLE `v_check`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `v_uat`
--
ALTER TABLE `v_uat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `m_ba`
--
ALTER TABLE `m_ba`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `m_check`
--
ALTER TABLE `m_check`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT for table `m_modul`
--
ALTER TABLE `m_modul`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `m_uat_scn`
--
ALTER TABLE `m_uat_scn`
  MODIFY `uat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userno` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `v_check`
--
ALTER TABLE `v_check`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT for table `v_uat`
--
ALTER TABLE `v_uat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
