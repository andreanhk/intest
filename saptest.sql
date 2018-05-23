-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2018 at 11:14 AM
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
-- Database: `saptest`
--

-- --------------------------------------------------------

--
-- Table structure for table `m_ba`
--

CREATE TABLE `m_ba` (
  `id` int(11) NOT NULL,
  `idba` int(4) NOT NULL,
  `nameba` varchar(255) NOT NULL,
  `date_live` varchar(255) DEFAULT NULL,
  `p_fico` varchar(255) DEFAULT NULL,
  `p_mm` varchar(255) DEFAULT NULL,
  `p_pm` varchar(255) DEFAULT NULL,
  `p_pp` varchar(255) DEFAULT NULL,
  `p_sd` varchar(255) DEFAULT NULL,
  `chg_by` varchar(255) DEFAULT NULL,
  `chg_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_ba`
--

INSERT INTO `m_ba` (`id`, `idba`, `nameba`, `date_live`, `p_fico`, `p_mm`, `p_pm`, `p_pp`, `p_sd`, `chg_by`, `chg_date`) VALUES
(1, 1000, 'Samator', '', '', '', '', '', '', 'Admin', '2018-05-23 09:56:56'),
(2, 2000, 'Aneka Gas Industri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 2065, 'AGI Luwuk', '2018-06-01', 'Aris', 'Thomas', 'Zamroni', 'Rita', 'Suyanto', 'Admin', '2018-05-23 15:36:06'),
(6, 3000, 'Samator Gas Industri', '', NULL, NULL, NULL, NULL, NULL, 'Admin', '2018-05-23 11:25:49'),
(8, 3916, 'SGI Depo Sibolga', '2018-04-01', 'Yohanes', 'Nino', 'Zamroni', 'Rita', 'Suyanto', 'Admin', '2018-05-23 15:37:11'),
(11, 3016, 'SGI Rantau Prapat', '2018-04-01', 'Putra', 'Purwandi', 'Zamroni', 'Abta', 'Alex', 'Admin', '2018-05-23 15:36:54'),
(12, 2072, 'AGI Manado', '2018-04-01', 'Aris', 'Thomas', 'Achmad', 'Fitri', 'Rendra', 'Admin', '2018-05-23 15:37:44'),
(13, 2073, 'AGI Ternate', '2018-04-01', 'Aris', 'Thomas', 'Achmad', 'Fitri', 'Rendra', 'Admin', '2018-05-23 15:38:32');

-- --------------------------------------------------------

--
-- Table structure for table `m_check`
--

CREATE TABLE `m_check` (
  `c_id` int(11) NOT NULL,
  `ctype` varchar(255) NOT NULL,
  `ctypedesc` varchar(255) NOT NULL,
  `ctcode` varchar(255) NOT NULL,
  `ctable` varchar(255) NOT NULL,
  `cstat` varchar(255) NOT NULL,
  `cmodul` varchar(255) DEFAULT NULL,
  `chg_by` varchar(255) DEFAULT NULL,
  `chg_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_check`
--

INSERT INTO `m_check` (`c_id`, `ctype`, `ctypedesc`, `ctcode`, `ctable`, `cstat`, `cmodul`, `chg_by`, `chg_date`) VALUES
(1, 'Enterprise Structure', 'Define BA', 'SPRO', 'V_TGSB', 'Create', '', 'Admin', '2018-05-23 10:10:00'),
(2, 'Enterprise Structure', 'Assign Business Area to Consolidation Business Area', 'SPRO', 'V_GSB_A', 'Check', '', 'Admin', '2018-05-23 10:09:51');

-- --------------------------------------------------------

--
-- Table structure for table `m_modul`
--

CREATE TABLE `m_modul` (
  `idmodul` varchar(255) NOT NULL,
  `namemodul` varchar(255) NOT NULL,
  `chg_by` varchar(255) DEFAULT NULL,
  `chg_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_modul`
--

INSERT INTO `m_modul` (`idmodul`, `namemodul`, `chg_by`, `chg_date`) VALUES
('ABAP', 'ABAP', NULL, NULL),
('BASIS', 'Basis', NULL, NULL),
('FICO', 'Financial Controlling', NULL, NULL),
('MM', 'Materials Management', NULL, NULL),
('PM', 'Plant Maintenance', NULL, NULL),
('PP', 'Production Planning', NULL, NULL),
('SD', 'Sales & Distribution', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_uat_scn`
--

CREATE TABLE `m_uat_scn` (
  `uat_id` int(10) NOT NULL,
  `uat_modul` varchar(255) NOT NULL,
  `uat_scn` varchar(255) NOT NULL,
  `uat_desc` varchar(255) NOT NULL,
  `chg_by` varchar(255) DEFAULT NULL,
  `chg_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_uat_scn`
--

INSERT INTO `m_uat_scn` (`uat_id`, `uat_modul`, `uat_scn`, `uat_desc`, `chg_by`, `chg_date`) VALUES
(1, 'PP', 'Penjualan Botolan Reguler (MTS)', 'Penjualan gas dalam botol hasil produksi & sparepart ke Customer & IB Sales Order, Terima Botol Kosong, Produksi, Distribusi, Billing, Pelunasan A/R', NULL, NULL),
(2, 'PP', 'Pembelian Bahan Baku', 'Pembelian Bahan Baku', NULL, NULL),
(3, '', 'Skenario Tes', 'Skenario hanya untuk tes saja', NULL, NULL),
(4, '', 'Contoh Master Skenario', 'Ini contoh master skenario', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_uat_step`
--

CREATE TABLE `m_uat_step` (
  `id_step` int(11) NOT NULL,
  `uat_scn` varchar(255) NOT NULL,
  `no_step` int(11) NOT NULL,
  `bp_step` varchar(255) NOT NULL,
  `tcode_step` varchar(255) NOT NULL,
  `modul_step` varchar(255) NOT NULL,
  `user_step` varchar(255) NOT NULL,
  `chg_by` varchar(255) DEFAULT NULL,
  `chg_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_uat_step`
--

INSERT INTO `m_uat_step` (`id_step`, `uat_scn`, `no_step`, `bp_step`, `tcode_step`, `modul_step`, `user_step`, `chg_by`, `chg_date`) VALUES
(1, 'Penjualan Botolan Reguler (MTS)', 1, 'Buat Sales Order', 'VA01', 'PP', 'Sales Counter', NULL, NULL),
(2, 'Penjualan Botolan Reguler (MTS)', 2, 'Release SO (Credit Management)', 'ZSDENH006', 'PP', 'Management', NULL, NULL),
(3, 'Penjualan Botolan Reguler (MTS)', 3, 'Cetak SO', 'VA03', 'PP', 'Sales Counter', NULL, NULL),
(4, 'Penjualan Botolan Reguler (MTS)', 4, 'Perintah Packing oleh Sales Counter', 'ZSDENH039', 'PP', 'Sales Counter', NULL, NULL),
(5, 'Penjualan Botolan Reguler (MTS)', 5, 'Create TTBK & GR ke Sloc Empty Pack', 'ZMMENH025', 'PP', 'Adm.Panggung', NULL, NULL),
(6, 'Penjualan Botolan Reguler (MTS)', 6, 'Konfirmasi SO & Buat Inquiry Jika Ada Pekerjaan Tambahan (Khusus MR)', 'ZSDENH040', 'PP', 'Panggung', NULL, NULL),
(7, 'Penjualan Botolan Reguler (MTS)', 7, 'Report', 'ZSDRPT047', 'PP', 'Panggung', NULL, NULL),
(8, 'Penjualan Botolan Reguler (MTS)', 8, 'Konversi Inquiry ke SO setelah konfirm ke relasi (Khusus MR)', 'ZSDENH043', 'PP', 'Sales Counter', NULL, NULL),
(9, 'Penjualan Botolan Reguler (MTS)', 9, 'Report', 'ZSDRPT047', 'PP', 'Sales Counter', NULL, NULL),
(10, 'Penjualan Botolan Reguler (MTS)', 10, 'Prosedur Running MRP & Create PRO MTS', 'ZSDENH043', 'PP', 'PPIC', NULL, NULL),
(11, 'Penjualan Botolan Reguler (MTS)', 11, 'Input Hasil Produksi', 'ZPPENH001', 'PP', 'Produksi', NULL, NULL),
(12, 'Penjualan Botolan Reguler (MTS)', 12, 'Transfer Packing dari Sloc Full Pack ke Sloc Distribusi', 'ZSDENH040', 'PP', 'Adm.Panggung', NULL, NULL),
(13, 'Penjualan Botolan Reguler (MTS)', 13, 'Cetak Packing List (Dilampirkan di SO)', 'ZSDENH040', 'PP', 'Adm.Panggung', NULL, NULL),
(14, 'Penjualan Botolan Reguler (MTS)', 14, 'Posting (GI) Surat Jalan', 'VL01N', 'PP', 'Distribusi/Logistik', NULL, NULL),
(15, 'Penjualan Botolan Reguler (MTS)', 15, 'Posting (GI) Surat Jalan', 'VL02N', 'PP', 'Distribusi/Logistik', NULL, NULL),
(16, 'Penjualan Botolan Reguler (MTS)', 16, 'Cetak Surat Jalan', 'VL03N', 'PP', 'Distribusi/Logistik', NULL, NULL),
(17, 'Penjualan Botolan Reguler (MTS)', 17, 'Create Invoice', 'VF01', 'PP', 'Adm.Penjualan', NULL, NULL),
(18, 'Penjualan Botolan Reguler (MTS)', 18, 'Cetak Invoice', 'VF03', 'PP', 'Adm.Penjualan', NULL, NULL),
(19, 'Penjualan Botolan Reguler (MTS)', 19, 'Cetak Faktur Pajak', 'ZFIRPT038', 'PP', 'Adm.Penjualan', NULL, NULL),
(20, 'Penjualan Botolan Reguler (MTS)', 20, 'Terima Plns dari Customer via Bank BCA Test Transfer', 'F-21', 'PP', 'GL Bank', NULL, NULL),
(21, 'Penjualan Botolan Reguler (MTS)', 21, 'Account Clear AR', 'F-32', 'PP', 'Adm.Piutang', NULL, NULL),
(22, 'Pembelian Bahan Baku', 1, 'Bon Permintaan Manual', 'MANUAL', 'PP', 'Marketing', NULL, NULL),
(23, 'Pembelian Bahan Baku', 2, 'Create PR', 'ME51N', 'PP', 'Gudang', NULL, NULL),
(24, 'Pembelian Bahan Baku', 3, 'Release PR (diwakilkan oleh Akuntansi)', 'ME55', 'PP', 'Kepala Filling', NULL, NULL),
(25, 'Pembelian Bahan Baku', 4, 'Create PO', 'ME21N', 'PP', 'Pembelian', NULL, NULL),
(26, 'Pembelian Bahan Baku', 5, 'Release PO (Hubungi tim untuk release PO)', 'ME28', 'PP', 'Manager/GM/Direktur', NULL, NULL),
(27, 'Pembelian Bahan Baku', 6, 'Cetak PO - 1', 'ME22N', 'PP', 'Pembelian', NULL, NULL),
(28, 'Pembelian Bahan Baku', 7, 'Cetak PO - 2', 'ZMMRPT001', 'PP', 'Pembelian', NULL, NULL),
(29, 'Pembelian Bahan Baku', 8, 'LPB Bahan Baku Liquid', 'MIGO', 'PP', 'Gudang', NULL, NULL),
(30, 'Pembelian Bahan Baku', 9, 'Losses Pembelian', 'ZMMENH012', 'PP', 'Gudang', NULL, NULL),
(31, 'Pembelian Bahan Baku', 10, 'Transfer SLOC LIQUID', 'ZMMENH012', 'PP', 'Gudang', NULL, NULL),
(32, 'Pembelian Bahan Baku', 11, 'Print LPB', 'ZMMRPT001', 'PP', 'Gudang', NULL, NULL),
(33, 'Pembelian Bahan Baku', 12, 'Pengakuan Hutang', 'MIRO', 'PP', 'Akuntansi', NULL, NULL),
(34, 'Pembelian Bahan Baku', 13, 'Pelunasan Hutang via Cash', 'FBCJ', 'PP', 'Kasir', NULL, NULL),
(35, 'Pembelian Bahan Baku', 14, 'Pelunasan Hutang via Bank', 'F-42', 'PP', 'Kasir', NULL, NULL),
(36, 'Pembelian Bahan Baku', 15, 'Clear Hutang', 'F-44', 'PP', 'Akuntansi', NULL, NULL),
(41, 'Contoh Master Skenario', 1, 'Step 1', 'TCode 1', '', 'User 1', NULL, NULL),
(42, 'Contoh Master Skenario', 2, 'Step 2', 'TCode 2', '', 'User 2', NULL, NULL),
(52, 'Skenario Tes', 1, 'Step 1', 'Tcode 1', '', 'User 1', NULL, NULL),
(53, 'Skenario Tes', 2, 'Step 2', 'Tcode 2', '', 'User 2', NULL, NULL),
(54, 'Skenario Tes', 3, 'Step 3', 'Tcode 3', '', 'User 3', NULL, NULL),
(55, 'Skenario Tes', 0, 'Step 4', 'Tcode 4', '', 'User 4', NULL, NULL);

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
(1, 'Admin', 'admin', 'Administrator', 'ABAP', NULL, NULL),
(0, 'Andrean', 'andrean', 'Andrean HK', 'BASIS', 'Admin', '2018-05-23 10:09:40'),
(0, 'SAPFICO', 'sapfico', 'SAP Financial Controlling', 'FICO', NULL, NULL),
(0, 'SAPMM', 'sapmm', 'SAP Materials Management', 'MM', NULL, NULL),
(0, 'SAPPM', 'sappm', 'SAP Plant Maintenance', 'PM', NULL, NULL),
(0, 'SAPPP', 'sappp', 'SAP Production Planning', 'PP', NULL, NULL),
(0, 'SAPSD', 'sapsd', 'SAP Sales & Distribution', 'SD', NULL, NULL),
(0, 'Sony', 'sony', 'Sony', 'ABAP', NULL, NULL),
(0, 'Ferry', 'ferry', 'Ferry', 'ABAP', NULL, NULL),
(0, 'Faris', 'faris', 'Faris', 'ABAP', NULL, NULL),
(0, 'Johan', 'johan', 'Johan', 'ABAP', NULL, NULL),
(0, 'Tjandra', 'tjandra', 'Tjandra', 'BASIS', NULL, NULL),
(0, 'Nurnia', 'nurnia', 'Nurnia', 'FICO', NULL, NULL),
(0, 'Yohanes', 'yohanes', 'Yohanes', 'FICO', NULL, NULL),
(0, 'Putra', 'putra', 'Putra', 'FICO', NULL, NULL),
(0, 'Aris', 'aris', 'Aris', 'FICO', NULL, NULL),
(0, 'Purwandi', 'purwandi', 'Purwandi', 'MM', NULL, NULL),
(0, 'Nino', 'nino', 'Nino', 'MM', NULL, NULL),
(0, 'Thomas', 'thomas', 'Thomas', 'MM', NULL, NULL),
(0, 'Zamroni', 'zamroni', 'Zamroni', 'PM', NULL, NULL),
(0, 'Achmad', 'achmad', 'Achmad', 'PM', NULL, NULL),
(0, 'Rita', 'rita', 'Rita', 'PP', NULL, NULL),
(0, 'Fitri', 'fitri', 'Fitri', 'PP', NULL, NULL),
(0, 'Abta', 'abta', 'Abta', 'PP', NULL, NULL),
(0, 'Rendra', 'rendra', 'Rendra', 'SD', NULL, NULL),
(0, 'Suyanto', 'suyanto', 'Suyanto', 'SD', NULL, NULL),
(0, 'Alex', 'alex', 'Alex', 'SD', NULL, NULL),
(0, 'Wasti', 'wasti', 'Wasti', 'SD', NULL, NULL);

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

--
-- Dumping data for table `v_check`
--

INSERT INTO `v_check` (`id`, `ctype`, `ctypedesc`, `ctcode`, `ctable`, `cstat`, `cmodul`, `vcheck`, `vcba`, `vctransreqs`, `vcdate`, `vcpic`, `chg_by`, `chg_date`) VALUES
(15, 'Enterprise Structure', 'Define BA', 'SPRO', 'V_TGSB', 'Create', 'FICO', 'OK', 1000, 'SMDK900000', '2018-04-24', 'Andrean', NULL, NULL),
(16, 'Enterprise Structure', 'Assign Business Area to Consolidation Business Area', 'SPRO', 'V_GSB_A', 'Check', 'FICO', '', 1000, '', '0000-00-00', '', NULL, NULL),
(17, 'Financial Accounting (Bank Accounting)', 'Set Up Cash Journal', 'FBCJC0', '', 'Create', 'FICO', NULL, 1000, NULL, NULL, NULL, NULL, NULL),
(18, 'Financial Accounting (Bank Accounting)', 'Define House Banks', 'F112', '', 'Create', 'FICO', NULL, 1000, NULL, NULL, NULL, NULL, NULL),
(19, 'Enterprise Structure', 'Define BA', 'SPRO', 'V_TGSB', 'Create', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(20, 'Enterprise Structure', 'Assign Business Area to Consolidation Business Area', 'SPRO', 'V_GSB_A', 'Check', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(22, 'Enterprise Structure', 'Define BA', 'SPRO', 'V_TGSB', 'Create', 'FICO', NULL, 2073, NULL, NULL, NULL, NULL, NULL),
(23, 'Enterprise Structure', 'Assign Business Area to Consolidation Business Area', 'SPRO', 'V_GSB_A', 'Check', 'FICO', ' ', 2073, '', '0000-00-00', '', 'Admin', '2018-05-23 15:40:41');

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
-- Dumping data for table `v_uat`
--

INSERT INTO `v_uat` (`id`, `uat_scn`, `no_step`, `bp_step`, `tcode_step`, `user_step`, `vuba`, `vuinput`, `vuoutput`, `vupic`, `vudate`, `chg_by`, `chg_date`) VALUES
(16, 'Penjualan Botolan Reguler (MTS)', 1, 'Buat Sales Order', 'VA01', 'Sales Counter', '2000', 'Cetak di form D/O', 'Doc. No: 3113000054', 'SAPFICO', '2017-09-28', NULL, NULL),
(17, 'Penjualan Botolan Reguler (MTS)', 2, 'Release SO (Credit Management)', 'ZSDENH006', 'Management', '2000', '0', '0', 'Admin', '2018-04-04', NULL, NULL),
(18, 'Penjualan Botolan Reguler (MTS)', 3, 'Cetak SO', 'VA03', 'Sales Counter', '2000', NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'Penjualan Botolan Reguler (MTS)', 4, 'Perintah Packing oleh Sales Counter', 'ZSDENH039', 'Sales Counter', '2000', NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'Penjualan Botolan Reguler (MTS)', 5, 'Create TTBK & GR ke Sloc Empty Pack', 'ZMMENH025', 'Adm.Panggung', '2000', NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'Penjualan Botolan Reguler (MTS)', 6, 'Konfirmasi SO & Buat Inquiry Jika Ada Pekerjaan Tambahan (Khusus MR)', 'ZSDENH040', 'Panggung', '2000', NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'Penjualan Botolan Reguler (MTS)', 7, 'Report', 'ZSDRPT047', 'Panggung', '2000', NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'Penjualan Botolan Reguler (MTS)', 8, 'Konversi Inquiry ke SO setelah konfirm ke relasi (Khusus MR)', 'ZSDENH043', 'Sales Counter', '2000', NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'Penjualan Botolan Reguler (MTS)', 9, 'Report', 'ZSDRPT047', 'Sales Counter', '2000', NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'Penjualan Botolan Reguler (MTS)', 10, 'Prosedur Running MRP & Create PRO MTS', 'ZSDENH043', 'PPIC', '2000', NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'Penjualan Botolan Reguler (MTS)', 11, 'Input Hasil Produksi', 'ZPPENH001', 'Produksi', '2000', NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'Penjualan Botolan Reguler (MTS)', 12, 'Transfer Packing dari Sloc Full Pack ke Sloc Distribusi', 'ZSDENH040', 'Adm.Panggung', '2000', NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'Penjualan Botolan Reguler (MTS)', 13, 'Cetak Packing List (Dilampirkan di SO)', 'ZSDENH040', 'Adm.Panggung', '2000', NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'Penjualan Botolan Reguler (MTS)', 14, 'Posting (GI) Surat Jalan', 'VL01N', 'Distribusi/Logistik', '2000', NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'Penjualan Botolan Reguler (MTS)', 15, 'Posting (GI) Surat Jalan', 'VL02N', 'Distribusi/Logistik', '2000', NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'Penjualan Botolan Reguler (MTS)', 16, 'Cetak Surat Jalan', 'VL03N', 'Distribusi/Logistik', '2000', NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'Penjualan Botolan Reguler (MTS)', 17, 'Create Invoice', 'VF01', 'Adm.Penjualan', '2000', NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'Penjualan Botolan Reguler (MTS)', 18, 'Cetak Invoice', 'VF03', 'Adm.Penjualan', '2000', NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'Penjualan Botolan Reguler (MTS)', 19, 'Cetak Faktur Pajak', 'ZFIRPT038', 'Adm.Penjualan', '2000', NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'Penjualan Botolan Reguler (MTS)', 20, 'Terima Plns dari Customer via Bank BCA Test Transfer', 'F-21', 'GL Bank', '2000', NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'Penjualan Botolan Reguler (MTS)', 21, 'Account Clear AR', 'F-32', 'Adm.Piutang', '2000', NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'Penjualan Botolan Reguler (MTS)', 1, 'Buat Sales Order', 'VA01', 'Sales Counter', '2065', NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'Penjualan Botolan Reguler (MTS)', 2, 'Release SO (Credit Management)', 'ZSDENH006', 'Management', '2065', NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'Penjualan Botolan Reguler (MTS)', 3, 'Cetak SO', 'VA03', 'Sales Counter', '2065', NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'Penjualan Botolan Reguler (MTS)', 4, 'Perintah Packing oleh Sales Counter', 'ZSDENH039', 'Sales Counter', '2065', NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'Penjualan Botolan Reguler (MTS)', 5, 'Create TTBK & GR ke Sloc Empty Pack', 'ZMMENH025', 'Adm.Panggung', '2065', NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'Penjualan Botolan Reguler (MTS)', 6, 'Konfirmasi SO & Buat Inquiry Jika Ada Pekerjaan Tambahan (Khusus MR)', 'ZSDENH040', 'Panggung', '2065', NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'Penjualan Botolan Reguler (MTS)', 7, 'Report', 'ZSDRPT047', 'Panggung', '2065', NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'Penjualan Botolan Reguler (MTS)', 8, 'Konversi Inquiry ke SO setelah konfirm ke relasi (Khusus MR)', 'ZSDENH043', 'Sales Counter', '2065', NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'Penjualan Botolan Reguler (MTS)', 9, 'Report', 'ZSDRPT047', 'Sales Counter', '2065', NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'Penjualan Botolan Reguler (MTS)', 10, 'Prosedur Running MRP & Create PRO MTS', 'ZSDENH043', 'PPIC', '2065', NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'Penjualan Botolan Reguler (MTS)', 11, 'Input Hasil Produksi', 'ZPPENH001', 'Produksi', '2065', NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'Penjualan Botolan Reguler (MTS)', 12, 'Transfer Packing dari Sloc Full Pack ke Sloc Distribusi', 'ZSDENH040', 'Adm.Panggung', '2065', NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'Penjualan Botolan Reguler (MTS)', 13, 'Cetak Packing List (Dilampirkan di SO)', 'ZSDENH040', 'Adm.Panggung', '2065', NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'Penjualan Botolan Reguler (MTS)', 14, 'Posting (GI) Surat Jalan', 'VL01N', 'Distribusi/Logistik', '2065', NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'Penjualan Botolan Reguler (MTS)', 15, 'Posting (GI) Surat Jalan', 'VL02N', 'Distribusi/Logistik', '2065', NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'Penjualan Botolan Reguler (MTS)', 16, 'Cetak Surat Jalan', 'VL03N', 'Distribusi/Logistik', '2065', NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'Penjualan Botolan Reguler (MTS)', 17, 'Create Invoice', 'VF01', 'Adm.Penjualan', '2065', NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'Penjualan Botolan Reguler (MTS)', 18, 'Cetak Invoice', 'VF03', 'Adm.Penjualan', '2065', NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'Penjualan Botolan Reguler (MTS)', 19, 'Cetak Faktur Pajak', 'ZFIRPT038', 'Adm.Penjualan', '2065', NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'Penjualan Botolan Reguler (MTS)', 20, 'Terima Plns dari Customer via Bank BCA Test Transfer', 'F-21', 'GL Bank', '2065', NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'Penjualan Botolan Reguler (MTS)', 21, 'Account Clear AR', 'F-32', 'Adm.Piutang', '2065', NULL, NULL, NULL, NULL, NULL, NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `m_check`
--
ALTER TABLE `m_check`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `m_uat_scn`
--
ALTER TABLE `m_uat_scn`
  MODIFY `uat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `m_uat_step`
--
ALTER TABLE `m_uat_step`
  MODIFY `id_step` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `v_check`
--
ALTER TABLE `v_check`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `v_uat`
--
ALTER TABLE `v_uat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
