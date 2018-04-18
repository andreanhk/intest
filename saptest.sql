-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2018 at 06:50 AM
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
(5000, 'Samator Wase Gas'),
(3016, 'SGI Rantau Prapat'),
(3916, 'SGI Depo Sibolga'),
(2072, 'AGI Manado'),
(2073, 'AGI Ternate'),
(2065, 'AGI Luwuk'),
(5010, 'Sandana Mulia Gas'),
(5020, 'Sandana Istana Multigas');

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
  `cmodul` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_check`
--

INSERT INTO `m_check` (`c_id`, `ctype`, `ctypedesc`, `ctcode`, `ctable`, `cstat`, `cmodul`) VALUES
(1, 'Enterprise Structure', 'Define BA', 'SPRO', 'V_TGSB', 'Create', 'FICO'),
(2, 'Enterprise Structure', 'Assign Business Area to Consolidation Business Area', 'SPRO', 'V_GSB_A', 'Check', 'FICO');

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
('SD', 'Sales & Distribution');

-- --------------------------------------------------------

--
-- Table structure for table `m_uat_scn`
--

CREATE TABLE `m_uat_scn` (
  `uat_id` int(10) NOT NULL,
  `uat_modul` varchar(255) NOT NULL,
  `uat_scn` varchar(255) NOT NULL,
  `uat_desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_uat_scn`
--

INSERT INTO `m_uat_scn` (`uat_id`, `uat_modul`, `uat_scn`, `uat_desc`) VALUES
(1, 'PP', 'Penjualan Botolan Reguler (MTS)', 'Penjualan gas dalam botol hasil produksi & sparepart ke Customer & IB Sales Order, Terima Botol Kosong, Produksi, Distribusi, Billing, Pelunasan A/R'),
(2, 'PP', 'Pembelian Bahan Baku', 'Pembelian Bahan Baku');

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
  `user_step` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_uat_step`
--

INSERT INTO `m_uat_step` (`id_step`, `uat_scn`, `no_step`, `bp_step`, `tcode_step`, `modul_step`, `user_step`) VALUES
(1, 'Penjualan Botolan Reguler (MTS)', 1, 'Buat Sales Order', 'VA01', 'PP', 'Sales Counter'),
(2, 'Penjualan Botolan Reguler (MTS)', 2, 'Release SO (Credit Management)', 'ZSDENH006', 'PP', 'Management'),
(3, 'Penjualan Botolan Reguler (MTS)', 3, 'Cetak SO', 'VA03', 'PP', 'Sales Counter'),
(4, 'Penjualan Botolan Reguler (MTS)', 4, 'Perintah Packing oleh Sales Counter', 'ZSDENH039', 'PP', 'Sales Counter'),
(5, 'Penjualan Botolan Reguler (MTS)', 5, 'Create TTBK & GR ke Sloc Empty Pack', 'ZMMENH025', 'PP', 'Adm.Panggung'),
(6, 'Penjualan Botolan Reguler (MTS)', 6, 'Konfirmasi SO & Buat Inquiry Jika Ada Pekerjaan Tambahan (Khusus MR)', 'ZSDENH040', 'PP', 'Panggung'),
(7, 'Penjualan Botolan Reguler (MTS)', 7, 'Report', 'ZSDRPT047', 'PP', 'Panggung'),
(8, 'Penjualan Botolan Reguler (MTS)', 8, 'Konversi Inquiry ke SO setelah konfirm ke relasi (Khusus MR)', 'ZSDENH043', 'PP', 'Sales Counter'),
(9, 'Penjualan Botolan Reguler (MTS)', 9, 'Report', 'ZSDRPT047', 'PP', 'Sales Counter'),
(10, 'Penjualan Botolan Reguler (MTS)', 10, 'Prosedur Running MRP & Create PRO MTS', 'ZSDENH043', 'PP', 'PPIC'),
(11, 'Penjualan Botolan Reguler (MTS)', 11, 'Input Hasil Produksi', 'ZPPENH001', 'PP', 'Produksi'),
(12, 'Penjualan Botolan Reguler (MTS)', 12, 'Transfer Packing dari Sloc Full Pack ke Sloc Distribusi', 'ZSDENH040', 'PP', 'Adm.Panggung'),
(13, 'Penjualan Botolan Reguler (MTS)', 13, 'Cetak Packing List (Dilampirkan di SO)', 'ZSDENH040', 'PP', 'Adm.Panggung'),
(14, 'Penjualan Botolan Reguler (MTS)', 14, 'Posting (GI) Surat Jalan', 'VL01N', 'PP', 'Distribusi/Logistik'),
(15, 'Penjualan Botolan Reguler (MTS)', 15, 'Posting (GI) Surat Jalan', 'VL02N', 'PP', 'Distribusi/Logistik'),
(16, 'Penjualan Botolan Reguler (MTS)', 16, 'Cetak Surat Jalan', 'VL03N', 'PP', 'Distribusi/Logistik'),
(17, 'Penjualan Botolan Reguler (MTS)', 17, 'Create Invoice', 'VF01', 'PP', 'Adm.Penjualan'),
(18, 'Penjualan Botolan Reguler (MTS)', 18, 'Cetak Invoice', 'VF03', 'PP', 'Adm.Penjualan'),
(19, 'Penjualan Botolan Reguler (MTS)', 19, 'Cetak Faktur Pajak', 'ZFIRPT038', 'PP', 'Adm.Penjualan'),
(20, 'Penjualan Botolan Reguler (MTS)', 20, 'Terima Plns dari Customer via Bank BCA Test Transfer', 'F-21', 'PP', 'GL Bank'),
(21, 'Penjualan Botolan Reguler (MTS)', 21, 'Account Clear AR', 'F-32', 'PP', 'Adm.Piutang'),
(22, 'Pembelian Bahan Baku', 1, 'Bon Permintaan Manual', 'MANUAL', 'PP', 'Marketing'),
(23, 'Pembelian Bahan Baku', 2, 'Create PR', 'ME51N', 'PP', 'Gudang'),
(24, 'Pembelian Bahan Baku', 3, 'Release PR (diwakilkan oleh Akuntansi)', 'ME55', 'PP', 'Kepala Filling'),
(25, 'Pembelian Bahan Baku', 4, 'Create PO', 'ME21N', 'PP', 'Pembelian'),
(26, 'Pembelian Bahan Baku', 5, 'Release PO (Hubungi tim untuk release PO)', 'ME28', 'PP', 'Manager/GM/Direktur'),
(27, 'Pembelian Bahan Baku', 6, 'Cetak PO - 1', 'ME22N', 'PP', 'Pembelian'),
(28, 'Pembelian Bahan Baku', 7, 'Cetak PO - 2', 'ZMMRPT001', 'PP', 'Pembelian'),
(29, 'Pembelian Bahan Baku', 8, 'LPB Bahan Baku Liquid', 'MIGO', 'PP', 'Gudang'),
(30, 'Pembelian Bahan Baku', 9, 'Losses Pembelian', 'ZMMENH012', 'PP', 'Gudang'),
(31, 'Pembelian Bahan Baku', 10, 'Transfer SLOC LIQUID', 'ZMMENH012', 'PP', 'Gudang'),
(32, 'Pembelian Bahan Baku', 11, 'Print LPB', 'ZMMRPT001', 'PP', 'Gudang'),
(33, 'Pembelian Bahan Baku', 12, 'Pengakuan Hutang', 'MIRO', 'PP', 'Akuntansi'),
(34, 'Pembelian Bahan Baku', 13, 'Pelunasan Hutang via Cash', 'FBCJ', 'PP', 'Kasir'),
(35, 'Pembelian Bahan Baku', 14, 'Pelunasan Hutang via Bank', 'F-42', 'PP', 'Kasir'),
(36, 'Pembelian Bahan Baku', 15, 'Clear Hutang', 'F-44', 'PP', 'Akuntansi');

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
(0, 'Andrean', 'andrean', 'Andrean HK', 'BASIS'),
(0, 'SAPFICO', 'sapfico', 'SAP Financial Controlling', 'FICO'),
(0, 'SAPMM', 'sapmm', 'SAP Materials Management', 'MM'),
(0, 'SAPPM', 'sappm', 'SAP Plant Maintenance', 'PM'),
(0, 'SAPPP', 'sappp', 'SAP Production Planning', 'PP'),
(0, 'SAPSD', 'sapsd', 'SAP Sales & Distribution', 'SD');

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `m_check`
--
ALTER TABLE `m_check`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `m_uat_scn`
--
ALTER TABLE `m_uat_scn`
  MODIFY `uat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `m_uat_step`
--
ALTER TABLE `m_uat_step`
  MODIFY `id_step` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
