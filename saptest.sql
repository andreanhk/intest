-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2018 at 12:50 PM
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
-- Table structure for table `login_data`
--

CREATE TABLE `login_data` (
  `loginuid` int(11) NOT NULL,
  `loginuname` varchar(255) NOT NULL,
  `loginpwd` varchar(255) NOT NULL,
  `loginright` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_data`
--

INSERT INTO `login_data` (`loginuid`, `loginuname`, `loginpwd`, `loginright`) VALUES
(1, 'admin', 'admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `m_ba`
--

CREATE TABLE `m_ba` (
  `idba` int(4) NOT NULL,
  `nameba` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_ba`
--

INSERT INTO `m_ba` (`idba`, `nameba`) VALUES
(1000, 'Samator'),
(2000, 'Aneka Gas Industri'),
(3000, 'Samator Gas Industri'),
(3016, 'SGI Rantau Prapat'),
(3916, 'SGI Depo Sibolga'),
(2072, 'AGI Manado'),
(2073, 'AGI Ternate'),
(2065, 'AGI Luwuk'),
(5000, 'Samator Wase Gas'),
(5020, 'Sandana Istana Multigas'),
(5010, 'Sandana Mulia Gas'),
(6000, 'Samabayu Mandala');

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
  `cmodul` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_check`
--

INSERT INTO `m_check` (`c_id`, `ctype`, `ctypedesc`, `ctcode`, `ctable`, `cstat`, `cmodul`) VALUES
(1, 'Enterprise Structure', 'Define BA', 'SPRO', 'V_TGSB', 'Create', 'FICO'),
(2, 'Enterprise Structure', 'Assign Business Area to Consolidation Business Area', 'SPRO', 'V_GSB_A', 'Check', 'FICO'),
(6, 'Financial Accounting (Bank Accounting)', 'Set Up Cash Journal', 'FBCJC0', '', 'Create', ''),
(7, 'Financial Accounting (Bank Accounting)', 'Define House Banks', 'F112', '', 'Create', '');

-- --------------------------------------------------------

--
-- Table structure for table `m_modul`
--

CREATE TABLE `m_modul` (
  `idmodul` varchar(255) NOT NULL,
  `namemodul` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_modul`
--

INSERT INTO `m_modul` (`idmodul`, `namemodul`) VALUES
('ABAP', 'ABAP'),
('BASIS', 'Basis'),
('FICO', 'Financial Controlling'),
('MM', 'Materials Management'),
('PM', 'Plant Maintenance'),
('PP', 'Production Planning'),
('SD', 'Sales & Distribution'),
('HR', 'Human Resource');

-- --------------------------------------------------------

--
-- Table structure for table `m_uat_scn`
--

CREATE TABLE `m_uat_scn` (
  `uat_id` int(11) NOT NULL,
  `uat_modul` varchar(255) NOT NULL,
  `uat_scn` varchar(255) NOT NULL,
  `uat_desc` varchar(255) NOT NULL,
  `no_scn` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_uat_scn`
--

INSERT INTO `m_uat_scn` (`uat_id`, `uat_modul`, `uat_scn`, `uat_desc`, `no_scn`) VALUES
(1, 'PP', 'Penjualan Botolan Reguler (MTS)', 'Penjualan gas dalam botol hasil produksi & sparepart ke Customer & IB Sales Order, Terima Botol Kosong, Produksi, Distribusi , Billing , Pelunasan A/R', 'PP01'),
(2, 'PP', 'Pembelian Bahan Baku', 'Pembelian Bahan Baku', 'PP02'),
(0, 'PP', 'Pembelian Barang Dagangan Gas', 'Pembelian Bahan Baku', 'PP03'),
(0, 'PP', 'Penjualan Botolan IB MTS (INTERBRANCH)', 'Penjualan gas dalam botol hasil produksi & sparepart ke Customer & IB Sales Order, Terima Botol Kosong, Produksi, Distribusi, Billing, Pelunasan A/R', 'PP04');

-- --------------------------------------------------------

--
-- Table structure for table `m_uat_step`
--

CREATE TABLE `m_uat_step` (
  `no_scn` varchar(4) NOT NULL,
  `no_step` int(11) NOT NULL,
  `bp_step` varchar(255) NOT NULL,
  `tcode_step` varchar(255) NOT NULL,
  `modul_step` varchar(255) NOT NULL,
  `user_step` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_uat_step`
--

INSERT INTO `m_uat_step` (`no_scn`, `no_step`, `bp_step`, `tcode_step`, `modul_step`, `user_step`) VALUES
('PP01', 1, 'Buat Sales Order', 'VA01', 'PP', 'Sales Counter'),
('PP01', 2, 'Release SO (Credit Management)', 'ZSDENH006', 'PP', 'Management'),
('PP01', 3, 'Cetak SO', 'VA03', 'PP', 'Sales Counter'),
('PP01', 4, 'Perintah Packing oleh Sales Counter', 'ZSDENH039', 'PP', 'Sales Counter'),
('PP01', 5, 'Create TTBK & GR ke Sloc Empty Pack', 'ZMMENH025', 'PP', 'Adm.Panggung'),
('PP01', 6, 'Konfirmasi SO & Buat Inquiry Jika Ada Pekerjaan Tambahan (Khusus MR)', 'ZSDENH040', 'PP', 'Panggung'),
('PP01', 7, 'Report', 'ZSDRPT047', 'PP', 'Panggung'),
('PP01', 8, 'Konversi Inquiry ke SO setelah konfirm ke relasi (Khusus MR)', 'ZSDENH043', 'PP', 'Sales Counter'),
('PP01', 9, 'Report', 'ZSDRPT047', 'PP', 'Sales Counter'),
('PP01', 10, 'Prosedur Running MRP & Create PRO MTS', 'ZSDENH043', 'PP', 'PPIC'),
('PP01', 11, 'Input Hasil Produksi', 'ZPPENH001', 'PP', 'Produksi'),
('PP01', 12, 'Transfer Packing dari Sloc Full Pack ke Sloc Distribusi', 'ZSDENH040', 'PP', 'Adm.Panggung'),
('PP01', 13, 'Cetak Packing List (Dilampirkan di SO)', 'ZSDENH040', 'PP', 'Adm.Panggung'),
('PP01', 14, 'Posting (GI) Surat Jalan', 'VL01N', 'PP', 'Distribusi/Logistik'),
('PP01', 15, 'Posting (GI) Surat Jalan', 'VL02N', 'PP', 'Distribusi/Logistik'),
('PP01', 16, 'Cetak Surat Jalan', 'VL03N', 'PP', 'Distribusi/Logistik'),
('PP01', 17, 'Create Invoice', 'VF01', 'PP', 'Adm.Penjualan'),
('PP01', 18, 'Cetak Invoice', 'VF03', 'PP', 'Adm.Penjualan'),
('PP01', 19, 'Cetak Faktur Pajak', 'ZFIRPT038', 'PP', 'Adm.Penjualan'),
('PP01', 20, 'Terima Plns dari Customer via Bank BCA Test Transfer', 'F-21', 'PP', 'GL Bank'),
('PP01', 21, 'Account Clear AR', 'F-32', 'PP', 'Adm.Piutang'),
('PP02', 1, 'Bon Permintaan Manual', 'MANUAL', 'PP', 'Marketing'),
('PP02', 2, 'Create PR', 'ME51N', 'PP', 'Gudang'),
('PP02', 3, 'Release PR (diwakilkan oleh Akuntansi)', 'ME55', 'PP', 'Kepala Filling'),
('PP02', 4, 'Create PO', 'ME21N', 'PP', 'Pembelian'),
('PP02', 5, 'Release PO (Hubungi tim untuk release PO)', 'ME28', 'PP', 'Manager/GM/Direktur'),
('PP02', 6, 'Cetak PO - 1', 'ME22N', 'PP', 'Pembelian'),
('PP02', 7, 'Cetak PO - 2', 'ZMMRPT001', 'PP', 'Pembelian'),
('PP02', 8, 'LPB Bahan Baku Liquid', 'MIGO', 'PP', 'Gudang'),
('PP02', 9, 'Losses Pembelian', 'ZMMENH012', 'PP', 'Gudang'),
('PP02', 10, 'Transfer SLOC LIQUID', 'ZMMENH012', 'PP', 'Gudang'),
('PP02', 11, 'Print LPB', 'ZMMRPT001', 'PP', 'Gudang'),
('PP02', 12, 'Pengakuan Hutang', 'MIRO', 'PP', 'Akuntansi'),
('PP02', 13, 'Pelunasan Hutang via Cash', 'FBCJ', 'PP', 'Kasir'),
('PP02', 14, 'Pelunasan Hutang via Bank', 'F-42', 'PP', 'Kasir'),
('PP02', 15, 'Clear Hutang', 'F-44', 'PP', 'Akuntansi');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userno` int(4) NOT NULL,
  `userid` varchar(255) NOT NULL,
  `userpwd` varchar(255) NOT NULL,
  `userlname` varchar(255) NOT NULL,
  `usermodul` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userno`, `userid`, `userpwd`, `userlname`, `usermodul`) VALUES
(1, 'Admin', 'admin', 'Administrator', 'ABAP'),
(2, 'Andrean', 'andrean', 'Andrean HK', 'BASIS'),
(3, 'SAPFICO', 'sapfico', 'SAP Financial Controlling', 'FICO'),
(4, 'SAPMM', 'sapmm', 'SAP Materials Management', 'MM'),
(5, 'SAPPM', 'sappm', 'SAP Plant Maintenance', 'PM'),
(6, 'SAPPP', 'sappp', 'SAP Production Planning', 'PP'),
(7, 'SAPSD', 'sapsd', 'SAP Sales & Distribution', 'SD'),
(8, 'SAPHR', 'saphr', 'SAP Human Resources', 'ABAP');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `m_check`
--
ALTER TABLE `m_check`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `m_check`
--
ALTER TABLE `m_check`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userno` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
