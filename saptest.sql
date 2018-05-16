-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 16 Mei 2018 pada 19.24
-- Versi Server: 10.1.30-MariaDB
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
-- Struktur dari tabel `login_data`
--

CREATE TABLE `login_data` (
  `loginuid` int(11) NOT NULL,
  `loginuname` varchar(255) DEFAULT NULL,
  `loginpwd` varchar(255) DEFAULT NULL,
  `loginright` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login_data`
--

INSERT INTO `login_data` (`loginuid`, `loginuname`, `loginpwd`, `loginright`, `date`) VALUES
(1, 'admin', 'admin', 1, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_ba`
--

CREATE TABLE `m_ba` (
  `idba` int(4) NOT NULL,
  `nameba` varchar(255) NOT NULL,
  `chg_by` varchar(255) DEFAULT NULL,
  `chg_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_ba`
--

INSERT INTO `m_ba` (`idba`, `nameba`, `chg_by`, `chg_date`) VALUES
(1000, 'Samator', NULL, NULL),
(2000, 'Aneka Gas Industri', NULL, NULL),
(3000, 'Samator Gas Industri', NULL, NULL),
(3016, 'SGI Rantau Prapat', NULL, NULL),
(3916, 'SGI Depo Sibolga', NULL, NULL),
(2072, 'AGI Manado', NULL, NULL),
(2073, 'AGI Ternate', NULL, NULL),
(2065, 'AGI Luwuk', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_check`
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

--
-- Dumping data untuk tabel `m_check`
--

INSERT INTO `m_check` (`c_id`, `ctype`, `ctypedesc`, `ctcode`, `ctable`, `cstat`, `cmodul`, `chg_by`, `chg_date`) VALUES
(1, 'Enterprise Structure', 'Define BA', 'SPRO', 'V_TGSB', 'Create', 'FICO', 'SAPFICO', '2018-05-16 22:54:06'),
(2, 'Enterprise Structure', 'Assign Business Area to Consolidation Business Area', 'SPRO', 'V_GSB_A', 'Check', 'FICO', NULL, NULL),
(6, 'Financial Accounting (Bank Accounting)', 'Set Up Cash Journal', 'FBCJC0', '', 'Create', 'FICO', NULL, NULL),
(7, 'Financial Accounting (Bank Accounting)', 'Define House Banks', 'F112', '', 'Create', 'FICO', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_modul`
--

CREATE TABLE `m_modul` (
  `id` int(11) NOT NULL,
  `idmodul` varchar(255) NOT NULL,
  `namemodul` varchar(255) NOT NULL,
  `chg_by` varchar(255) DEFAULT NULL,
  `chg_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_modul`
--

INSERT INTO `m_modul` (`id`, `idmodul`, `namemodul`, `chg_by`, `chg_date`) VALUES
(1, 'ABAP', 'ABAP', NULL, NULL),
(2, 'BASIS', 'Basis', NULL, NULL),
(3, 'FICO', 'Financial Controlling', NULL, NULL),
(4, 'MM', 'Materials Management', NULL, NULL),
(5, 'PM', 'Plant Maintenance', NULL, NULL),
(6, 'PP', 'Production Planning', NULL, NULL),
(7, 'SD', 'Sales & Distribution', NULL, NULL),
(8, 'HR', 'Human Resource', NULL, NULL),
(10, 'TEST', 'Test Modul', 'Admin', '2018-05-13 16:53:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_uat_scn`
--

CREATE TABLE `m_uat_scn` (
  `uat_id` int(11) NOT NULL,
  `uat_scn` varchar(255) NOT NULL,
  `uat_desc` varchar(255) NOT NULL,
  `chg_by` varchar(255) DEFAULT NULL,
  `chg_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_uat_scn`
--

INSERT INTO `m_uat_scn` (`uat_id`, `uat_scn`, `uat_desc`, `chg_by`, `chg_date`) VALUES
(1, 'Penjualan Botolan Reguler (MTS)', 'Penjualan gas dalam botol hasil produksi & sparepart ke Customer & IB Sales Order, Terima Botol Kosong, Produksi, Distribusi, Billing, Pelunasan A/R', NULL, NULL),
(2, 'Pembelian Bahan Baku', 'Pembelian Bahan Baku', NULL, NULL),
(3, 'Pembelian Barang Dagangan Gas', 'Pembelian Bahan Baku', NULL, NULL),
(4, 'Penjualan Botolan IB MTS (INTERBRANCH)', 'Penjualan gas dalam botol hasil produksi & sparepart ke Customer & IB Sales Order, Terima Botol Kosong, Produksi, Distribusi, Billing, Pelunasan A/R', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_uat_step`
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

--
-- Dumping data untuk tabel `m_uat_step`
--

INSERT INTO `m_uat_step` (`id_step`, `uat_scn`, `no_step`, `bp_step`, `tcode_step`, `user_step`, `chg_by`, `chg_date`) VALUES
(1, 'Penjualan Botolan Reguler (MTS)', 1, 'Buat Sales Order', 'VA01', 'Sales Counter', NULL, NULL),
(2, 'Penjualan Botolan Reguler (MTS)', 2, 'Release SO (Credit Management)', 'ZSDENH006', 'Management', NULL, NULL),
(3, 'Penjualan Botolan Reguler (MTS)', 3, 'Cetak SO', 'VA03', 'Sales Counter', NULL, NULL),
(4, 'Penjualan Botolan Reguler (MTS)', 4, 'Perintah Packing oleh Sales Counter', 'ZSDENH039', 'Sales Counter', NULL, NULL),
(5, 'Penjualan Botolan Reguler (MTS)', 5, 'Create TTBK & GR ke Sloc Empty Pack', 'ZMMENH025', 'Adm.Panggung', NULL, NULL),
(6, 'Penjualan Botolan Reguler (MTS)', 6, 'Konfirmasi SO & Buat Inquiry Jika Ada Pekerjaan Tambahan (Khusus MR)', 'ZSDENH040', 'Panggung', NULL, NULL),
(7, 'Penjualan Botolan Reguler (MTS)', 7, 'Report', 'ZSDRPT047', 'Panggung', NULL, NULL),
(8, 'Penjualan Botolan Reguler (MTS)', 8, 'Konversi Inquiry ke SO setelah konfirm ke relasi (Khusus MR)', 'ZSDENH043', 'Sales Counter', NULL, NULL),
(9, 'Penjualan Botolan Reguler (MTS)', 9, 'Report', 'ZSDRPT047', 'Sales Counter', NULL, NULL),
(10, 'Penjualan Botolan Reguler (MTS)', 10, 'Prosedur Running MRP & Create PRO MTS', 'ZSDENH043', 'PPIC', NULL, NULL),
(11, 'Penjualan Botolan Reguler (MTS)', 11, 'Input Hasil Produksi', 'ZPPENH001', 'Produksi', NULL, NULL),
(12, 'Penjualan Botolan Reguler (MTS)', 12, 'Transfer Packing dari Sloc Full Pack ke Sloc Distribusi', 'ZSDENH040', 'Adm.Panggung', NULL, NULL),
(13, 'Penjualan Botolan Reguler (MTS)', 13, 'Cetak Packing List (Dilampirkan di SO)', 'ZSDENH040', 'Adm.Panggung', NULL, NULL),
(14, 'Penjualan Botolan Reguler (MTS)', 14, 'Posting (GI) Surat Jalan', 'VL01N', 'Distribusi/Logistik', NULL, NULL),
(15, 'Penjualan Botolan Reguler (MTS)', 15, 'Posting (GI) Surat Jalan', 'VL02N', 'Distribusi/Logistik', NULL, NULL),
(16, 'Penjualan Botolan Reguler (MTS)', 16, 'Cetak Surat Jalan', 'VL03N', 'Distribusi/Logistik', NULL, NULL),
(17, 'Penjualan Botolan Reguler (MTS)', 17, 'Create Invoice', 'VF01', 'Adm.Penjualan', NULL, NULL),
(18, 'Penjualan Botolan Reguler (MTS)', 18, 'Cetak Invoice', 'VF03', 'Adm.Penjualan', NULL, NULL),
(19, 'Penjualan Botolan Reguler (MTS)', 19, 'Cetak Faktur Pajak', 'ZFIRPT038', 'Adm.Penjualan', NULL, NULL),
(20, 'Penjualan Botolan Reguler (MTS)', 20, 'Terima Plns dari Customer via Bank BCA Test Transfer', 'F-21', 'GL Bank', NULL, NULL),
(21, 'Penjualan Botolan Reguler (MTS)', 21, 'Account Clear AR', 'F-32', 'Adm.Piutang', NULL, NULL),
(22, 'Pembelian Bahan Baku', 1, 'Bon Permintaan Manual', 'MANUAL', 'Marketing', NULL, NULL),
(23, 'Pembelian Bahan Baku', 2, 'Create PR', 'ME51N', 'Gudang', NULL, NULL),
(24, 'Pembelian Bahan Baku', 3, 'Release PR (diwakilkan oleh Akuntansi)', 'ME55', 'Kepala Filling', NULL, NULL),
(25, 'Pembelian Bahan Baku', 4, 'Create PO', 'ME21N', 'Pembelian', NULL, NULL),
(26, 'Pembelian Bahan Baku', 5, 'Release PO (Hubungi tim untuk release PO)', 'ME28', 'Manager/GM/Direktur', NULL, NULL),
(27, 'Pembelian Bahan Baku', 6, 'Cetak PO - 1', 'ME22N', 'Pembelian', NULL, NULL),
(28, 'Pembelian Bahan Baku', 7, 'Cetak PO - 2', 'ZMMRPT001', 'Pembelian', NULL, NULL),
(29, 'Pembelian Bahan Baku', 8, 'LPB Bahan Baku Liquid', 'MIGO', 'Gudang', NULL, NULL),
(30, 'Pembelian Bahan Baku', 9, 'Losses Pembelian', 'ZMMENH012', 'Gudang', NULL, NULL),
(31, 'Pembelian Bahan Baku', 10, 'Transfer SLOC LIQUID', 'ZMMENH012', 'Gudang', NULL, NULL),
(32, 'Pembelian Bahan Baku', 11, 'Print LPB', 'ZMMRPT001', 'Gudang', NULL, NULL),
(33, 'Pembelian Bahan Baku', 12, 'Pengakuan Hutang', 'MIRO', 'Akuntansi', NULL, NULL),
(34, 'Pembelian Bahan Baku', 13, 'Pelunasan Hutang via Cash', 'FBCJ', 'Kasir', NULL, NULL),
(35, 'Pembelian Bahan Baku', 14, 'Pelunasan Hutang via Bank', 'F-42', 'Kasir', NULL, NULL),
(36, 'Pembelian Bahan Baku', 15, 'Clear Hutang', 'F-44', 'Akuntansi', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
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
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`userno`, `userid`, `userpwd`, `userlname`, `usermodul`, `chg_by`, `chg_date`) VALUES
(1, 'Admin', 'admin', 'Administrator', 'ABAP', NULL, NULL),
(2, 'Andrean', 'andrean', 'Andrean HK', 'BASIS', 'Admin', '2018-05-16 22:51:18'),
(3, 'SAPFICO', 'sapfico', 'SAP Financial Controlling', 'FICO', NULL, NULL),
(4, 'SAPMM', 'sapmm', 'SAP Materials Management', 'MM', NULL, NULL),
(5, 'SAPPM', 'sappm', 'SAP Plant Maintenance', 'PM', NULL, NULL),
(6, 'SAPPP', 'sappp', 'SAP Production Planning', 'PP', NULL, NULL),
(7, 'SAPSD', 'sapsd', 'SAP Sales & Distribution', 'SD', NULL, NULL),
(8, 'SAPHR', 'saphr', 'SAP Human Resources', 'HR', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `v_check`
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
-- Dumping data untuk tabel `v_check`
--

INSERT INTO `v_check` (`id`, `ctype`, `ctypedesc`, `ctcode`, `ctable`, `cstat`, `cmodul`, `vcheck`, `vcba`, `vctransreqs`, `vcdate`, `vcpic`, `chg_by`, `chg_date`) VALUES
(15, 'Enterprise Structure', 'Define BA', 'SPRO', 'V_TGSB', 'Create', 'FICO', 'OK', 1000, 'SMDK900000', '2018-04-24', 'Andrean', NULL, NULL),
(16, 'Enterprise Structure', 'Assign Business Area to Consolidation Business Area', 'SPRO', 'V_GSB_A', 'Check', 'FICO', '', 1000, '', '0000-00-00', '', NULL, NULL),
(17, 'Financial Accounting (Bank Accounting)', 'Set Up Cash Journal', 'FBCJC0', '', 'Create', 'FICO', NULL, 1000, NULL, NULL, NULL, NULL, NULL),
(18, 'Financial Accounting (Bank Accounting)', 'Define House Banks', 'F112', '', 'Create', 'FICO', NULL, 1000, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `v_uat`
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
-- Dumping data untuk tabel `v_uat`
--

INSERT INTO `v_uat` (`id`, `uat_scn`, `no_step`, `bp_step`, `tcode_step`, `user_step`, `vuba`, `vuinput`, `vuoutput`, `vupic`, `vudate`, `chg_by`, `chg_date`) VALUES
(1, 'Penjualan Botolan Reguler (MTS)', 1, 'Buat Sales Order', 'VA01', 'Sales Counter', '1000', 'Sample input', 'Sample output', 'SAPFICO', '2018-05-16', 'Admin', '2018-05-16 23:37:09'),
(2, 'Penjualan Botolan Reguler (MTS)', 2, 'Release SO (Credit Management)', 'ZSDENH006', 'Management', '1000', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Penjualan Botolan Reguler (MTS)', 3, 'Cetak SO', 'VA03', 'Sales Counter', '1000', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Penjualan Botolan Reguler (MTS)', 4, 'Perintah Packing oleh Sales Counter', 'ZSDENH039', 'Sales Counter', '1000', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Penjualan Botolan Reguler (MTS)', 5, 'Create TTBK & GR ke Sloc Empty Pack', 'ZMMENH025', 'Adm.Panggung', '1000', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Penjualan Botolan Reguler (MTS)', 6, 'Konfirmasi SO & Buat Inquiry Jika Ada Pekerjaan Tambahan (Khusus MR)', 'ZSDENH040', 'Panggung', '1000', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Penjualan Botolan Reguler (MTS)', 7, 'Report', 'ZSDRPT047', 'Panggung', '1000', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Penjualan Botolan Reguler (MTS)', 8, 'Konversi Inquiry ke SO setelah konfirm ke relasi (Khusus MR)', 'ZSDENH043', 'Sales Counter', '1000', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Penjualan Botolan Reguler (MTS)', 9, 'Report', 'ZSDRPT047', 'Sales Counter', '1000', NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Penjualan Botolan Reguler (MTS)', 10, 'Prosedur Running MRP & Create PRO MTS', 'ZSDENH043', 'PPIC', '1000', NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Penjualan Botolan Reguler (MTS)', 11, 'Input Hasil Produksi', 'ZPPENH001', 'Produksi', '1000', NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'Penjualan Botolan Reguler (MTS)', 12, 'Transfer Packing dari Sloc Full Pack ke Sloc Distribusi', 'ZSDENH040', 'Adm.Panggung', '1000', NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'Penjualan Botolan Reguler (MTS)', 13, 'Cetak Packing List (Dilampirkan di SO)', 'ZSDENH040', 'Adm.Panggung', '1000', NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Penjualan Botolan Reguler (MTS)', 14, 'Posting (GI) Surat Jalan', 'VL01N', 'Distribusi/Logistik', '1000', NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'Penjualan Botolan Reguler (MTS)', 15, 'Posting (GI) Surat Jalan', 'VL02N', 'Distribusi/Logistik', '1000', NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'Penjualan Botolan Reguler (MTS)', 16, 'Cetak Surat Jalan', 'VL03N', 'Distribusi/Logistik', '1000', NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'Penjualan Botolan Reguler (MTS)', 17, 'Create Invoice', 'VF01', 'Adm.Penjualan', '1000', NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'Penjualan Botolan Reguler (MTS)', 18, 'Cetak Invoice', 'VF03', 'Adm.Penjualan', '1000', NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'Penjualan Botolan Reguler (MTS)', 19, 'Cetak Faktur Pajak', 'ZFIRPT038', 'Adm.Penjualan', '1000', NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'Penjualan Botolan Reguler (MTS)', 20, 'Terima Plns dari Customer via Bank BCA Test Transfer', 'F-21', 'GL Bank', '1000', NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'Penjualan Botolan Reguler (MTS)', 21, 'Account Clear AR', 'F-32', 'Adm.Piutang', '1000', NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login_data`
--
ALTER TABLE `login_data`
  ADD PRIMARY KEY (`loginuid`);

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
  ADD PRIMARY KEY (`userno`);

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
-- AUTO_INCREMENT for table `login_data`
--
ALTER TABLE `login_data`
  MODIFY `loginuid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `m_check`
--
ALTER TABLE `m_check`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `m_modul`
--
ALTER TABLE `m_modul`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `m_uat_scn`
--
ALTER TABLE `m_uat_scn`
  MODIFY `uat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userno` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `v_check`
--
ALTER TABLE `v_check`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `v_uat`
--
ALTER TABLE `v_uat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
