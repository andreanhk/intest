-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2018 at 09:55 AM
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

--
-- Dumping data for table `m_ba`
--

INSERT INTO `m_ba` (`id`, `idba`, `nameba`, `date_live`, `p_fico`, `p_mm`, `p_pm`, `p_pp`, `p_sd`, `chg_by`, `chg_date`, `tlba`) VALUES
(1, 2065, 'AGI Luwuk', '2018-06-01', NULL, NULL, NULL, NULL, NULL, 'Tjandra', '2018-06-05 14:22:35', NULL),
(2, 1000, 'Contoh Cabang 1', '2018-06-05', NULL, NULL, NULL, NULL, NULL, 'Admin', '2018-06-05 14:27:07', NULL),
(3, 1001, 'Contoh Cabang 2', '2018-06-05', NULL, NULL, NULL, NULL, NULL, 'Admin', '2018-06-05 14:27:18', NULL),
(4, 1002, 'Contoh Cabang 3', '2018-06-05', NULL, NULL, NULL, NULL, NULL, 'Admin', '2018-06-05 14:27:29', NULL);

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

--
-- Dumping data for table `m_check`
--

INSERT INTO `m_check` (`c_id`, `ctype`, `ctypedesc`, `ctcode`, `ctable`, `cstat`, `cmodul`, `chg_by`, `chg_date`) VALUES
(210, 'Koreksi Report', 'ZFIRPT_008_F01 FI Reporting - Kas Bank, Voucher', '', '', '', 'ABAP', NULL, NULL),
(211, 'Koreksi Report', 'ZFIRPT_038_F01 Cetak Faktur Pajak', '', '', '', 'ABAP', NULL, NULL),
(212, 'Koreksi Report', 'ZFIRPT_039_F01 Re-print Faktur Pajak Standart', '', '', '', 'ABAP', NULL, NULL),
(213, 'Koreksi Report', 'ZFIRPT_040_F01 Retur Faktur Pajak', '', '', '', 'ABAP', NULL, NULL),
(214, 'Koreksi Report', 'ZFIRPT_042_F01 Cetak Faktur Pajak Own Consumption', '', '', '', 'ABAP', NULL, NULL),
(215, 'Koreksi Report', 'ZFIRPT_043_F01 Re-print Faktur Pajak Own Consumption', '', '', '', 'ABAP', NULL, NULL),
(216, 'Koreksi Report', 'ZFIENH_007_F01 Tanda Terima Nota Penjualan', '', '', '', 'ABAP', NULL, NULL),
(217, 'Koreksi Report', 'ZMMENH_006_F01 Penerimaan Barang Produksi (ZMMENH006)', '', '', '', 'ABAP', NULL, NULL),
(218, 'Koreksi Report', 'ZMMENH_007 Transfer Batch (ZMMENH007)', '', '', '', 'ABAP', NULL, NULL),
(219, 'Koreksi Report', 'ZMMENH_008 Transfer Posting Storage Location', '', '', '', 'ABAP', NULL, NULL),
(220, 'Koreksi Report', 'ZMMENH_008_F01 Transfer Posting Storage Location', '', '', '', 'ABAP', NULL, NULL),
(221, 'Koreksi Report', 'ZMMENH_009_F01 Transfer Posting Storage Location Khusus Speciality + MG', '', '', '', 'ABAP', NULL, NULL),
(222, 'Koreksi Report', 'ZMMENH_012 Posting Pembelian', '', '', '', 'ABAP', NULL, NULL),
(223, 'Koreksi Report', 'ZMMENH_012_F01 Posting Pembelian', '', '', '', 'ABAP', NULL, NULL),
(224, 'Koreksi Report', 'ZMMENH_013_F01 Good Issue (MB1A)', '', '', '', 'ABAP', NULL, NULL),
(225, 'Koreksi Report', 'ZMMENH_015 Program Transfer Produksi PGS dan Filling CO2', '', '', '', 'ABAP', NULL, NULL),
(226, 'Koreksi Report', 'ZMMENH_027 Transfer Posting Storage Location', '', '', '', 'ABAP', NULL, NULL),
(227, 'Koreksi Report', 'ZMMENH_027_F01 Transfer Posting Storage Location', '', '', '', 'ABAP', NULL, NULL),
(228, 'Koreksi Report', 'ZMMRPT_001_F01 Print Form', '', '', '', 'ABAP', NULL, NULL),
(229, 'Koreksi Report', 'ZMMRPT_009_F01 Cetak SJ titipan (5K2),Pinjaman(502), Pengisian(541), STO (351)', '', '', '', 'ABAP', NULL, NULL),
(230, 'Koreksi Report', 'ZSDENH_023_F01 Transaksi Stock Transfer Order', '', '', '', 'ABAP', NULL, NULL),
(231, 'Koreksi Report', 'ZSDENH_040_F01 Transfer Packing List Order', '', '', '', 'ABAP', NULL, NULL),
(232, 'Koreksi Report', 'ZSDENH_040_SCR1 Transfer Packing List Order', '', '', '', 'ABAP', NULL, NULL),
(233, 'Koreksi Report', 'ZSDENH_040_SCR2 Transfer Packing List Order', '', '', '', 'ABAP', NULL, NULL),
(234, 'Koreksi Report', 'ZSDRPT_001_F01 SD Reporting', '', '', '', 'ABAP', NULL, NULL),
(235, 'Koreksi Report', 'ZSDRPT_004_F01 Cetak invoice', '', '', '', 'ABAP', NULL, NULL),
(236, 'Koreksi Report', 'ZSDRPT_005_F01 Cetak Faktur Pajak', '', '', '', 'ABAP', NULL, NULL),
(237, 'Koreksi Report', 'ZSDRPT_028_F02 Laporan Sirkulasi Botol', '', '', '', 'ABAP', NULL, NULL),
(238, 'Koreksi Tabel', 'ZUSEREXIT_SD', '', '', '', 'ABAP', NULL, NULL),
(239, 'Koreksi Tabel', 'ZUSEREXIT_SD2', '', '', '', 'ABAP', NULL, NULL),
(240, 'Penyesuaian Smartforms', 'SO', '', '', '', 'ABAP', NULL, NULL),
(241, 'Penyesuaian Smartforms', 'SJ', '', '', '', 'ABAP', NULL, NULL),
(242, 'Penyesuaian Smartforms', 'Invoice Penjualan', '', '', '', 'ABAP', NULL, NULL),
(243, 'Penyesuaian Smartforms', 'Kas Bank Masuk', '', '', '', 'ABAP', NULL, NULL),
(244, 'Penyesuaian Smartforms', 'Kas Bank Keluar', '', '', '', 'ABAP', NULL, NULL),
(245, 'Penyesuaian Smartforms', 'Cek Masuk', '', '', '', 'ABAP', NULL, NULL),
(246, 'Penyesuaian Smartforms', 'Cek Keluar', '', '', '', 'ABAP', NULL, NULL),
(247, 'Penyesuaian Smartforms', 'Jurnal Memorial', '', '', '', 'ABAP', NULL, NULL),
(248, 'Penyesuaian Smartforms', 'PO', '', '', '', 'ABAP', NULL, NULL),
(249, 'Koreksi Exit', 'FM ZCHECKGL_BA', '', '', '', 'ABAP', NULL, NULL),
(250, 'Koreksi Exit', 'MV50AFZ1', '', '', '', 'ABAP', NULL, NULL),
(251, 'Koreksi Exit', 'ZXMBCU02', '', '', '', 'ABAP', NULL, NULL),
(252, 'Pembuatan Background Job', 'MM BALANCE BACKGROUND', '', '', 'Opsional', 'ABAP', NULL, NULL),
(253, 'Pembuatan Background Job', 'MM BALANCE BACKGROUND CV', '', '', 'Opsional', 'ABAP', NULL, NULL),
(254, 'Pembuatan Background Job', 'MM BALANCE BACKGROUND PJ', '', '', 'Opsional', 'ABAP', NULL, NULL),
(255, 'Koreksi Report', '(CC) ZABENH_001_F01 Lock / Unlock User', '', '', '', 'ABAP', NULL, NULL),
(256, 'Koreksi Report', '(CC) ZBIBO_CASHFLOW_FO1 Cashflow', '', '', '', 'ABAP', NULL, NULL),
(257, 'Koreksi Report', '(CC) ZBIBO_PR Report List Purchase Requisitions', '', '', '', 'ABAP', NULL, NULL),
(258, 'Koreksi Report', '(CC) ZCASHFLOW_F01 Cashflow', '', '', '', 'ABAP', NULL, NULL),
(259, 'Koreksi Report', '(CC) ZFIENH_007_F01 Tanda Terima Nota Penjualan', '', '', '', 'ABAP', NULL, NULL),
(260, 'Koreksi Report', '(CC) ZFIENH_008 Open and Close Posting Periods - Background Jobs', '', '', '', 'ABAP', NULL, NULL),
(261, 'Koreksi Report', '(CC) ZFIENH_008_F01 Open and Close Posting Periods - Background Jobs', '', '', '', 'ABAP', NULL, NULL),
(262, 'Koreksi Report', '(CC) ZFIENH_019_F01 Program Input Bank Keluar', '', '', '', 'ABAP', NULL, NULL),
(263, 'Koreksi Report', '(CC) ZFIRPT_056 Delivery Productivity Report - Actual', '', '', '', 'ABAP', NULL, NULL),
(264, 'Koreksi Report', '(CC) ZFIRPT_059 Plan and Actual Comparison for Statistical Key Figure', '', '', '', 'ABAP', NULL, NULL),
(265, 'Koreksi Report', '(CC) ZFIRPT_065 Laporan Laba Rugi & Penghasilan Komprehensif Lain', '', '', '', 'ABAP', NULL, NULL),
(266, 'Koreksi Report', '(CC) ZFIRPT_065_TOP Laporan Laba Rugi & Penghasilan Komprehensif Lain', '', '', '', 'ABAP', NULL, NULL),
(267, 'Koreksi Report', '(CC) ZHRRPT_002_F01 Laporan Karyawan Masuk / Keluar / Turn Over Karyawan', '', '', '', 'ABAP', NULL, NULL),
(268, 'Koreksi Report', '(CC) ZINIT_BAL3 MM Balance Background', '', '', '', 'ABAP', NULL, NULL),
(269, 'Koreksi Report', '(CC) ZFIINT_001 Upload Interface Data Sales & Cash Bank', '', '', '', 'ABAP', NULL, NULL),
(270, 'Koreksi Report', '(CC) ZMMENH_002 MM - Updating Previous Period', '', '', '', 'ABAP', NULL, NULL),
(271, 'Koreksi Report', '(CC) ZMMENH_002_F01 MM - Updating Previous Period', '', '', '', 'ABAP', NULL, NULL),
(272, 'Koreksi Report', '(CC) ZMMENH_012_F01 Posting Pembelian', '', '', '', 'ABAP', NULL, NULL),
(273, 'Koreksi Report', '(CC) ZMMENH_020 MM Balance Background', '', '', '', 'ABAP', NULL, NULL),
(274, 'Koreksi Report', '(CC) ZMMENH_021 MM Balance Background stock di Customer and Vendor', '', '', '', 'ABAP', NULL, NULL),
(275, 'Koreksi Report', '(CC) ZMMENH_029 MM Balance Background stock pinjaman', '', '', '', 'ABAP', NULL, NULL),
(276, 'Koreksi Report', '(CC) ZMMENH_030 MM Balance Background stock MR Customer', '', '', '', 'ABAP', NULL, NULL),
(277, 'Koreksi Report', '(CC) ZSDENH_010_F01 Timbangan - Liquid', '', '', '', 'ABAP', NULL, NULL),
(278, 'Koreksi Report', '(CC) ZSDENH_012_F01 Pricing Online SD', '', '', '', 'ABAP', NULL, NULL),
(279, 'Koreksi Report', '(CC) ZSDENH_023 Transaksi Stock Transfer Order', '', '', '', 'ABAP', NULL, NULL),
(280, 'Koreksi Report', '(CC) ZSDENH_039 Packing List Order', '', '', '', 'ABAP', NULL, NULL),
(281, 'Koreksi Report', '(CC) ZSDENH_040 Transfer Packing List Order', '', '', '', 'ABAP', NULL, NULL),
(282, 'Koreksi Report', '(CC) ZSDENH_054_F01 Timbangan - Liquid', '', '', '', 'ABAP', NULL, NULL),
(283, 'Koreksi Report', '(CC) ZRGGBS000', '', '', '', 'ABAP', NULL, NULL),
(284, 'Koreksi Exit', '(CC) FM ZCHECKGL_ORDER', '', '', '', 'ABAP', NULL, NULL),
(285, 'Koreksi Exit', '(CC) ZXCOFU13', '', '', '', 'ABAP', NULL, NULL),
(286, 'Koreksi Exit', '(CC) ZXCOFU14', '', '', '', 'ABAP', NULL, NULL),
(287, 'Koreksi Exit', '(CC) ZXCOFU23', '', '', '', 'ABAP', NULL, NULL),
(288, 'Pembuatan Background Job', '(CC) OPEN/CLOSE POSTING PERIODS', '', '', '', 'ABAP', NULL, NULL),
(289, 'Pembuatan Background Job', '(CC) ZFIENH_013', '', '', '', 'ABAP', NULL, NULL),
(290, 'Pembuatan Background Job', '(CC) ZFIENH_009 FLQAC & FLQAD', '', '', 'Modifikasi', 'ABAP', 'Ferry', '2018-06-04 14:45:23'),
(291, 'Enterprise Structure', 'Define BA', 'SPRO', 'V_TGSB', 'Create', 'FICO', NULL, NULL),
(292, 'Enterprise Structure', 'Assign Business Area to Consolidation Business Area', 'SPRO', 'V_GSB_A', 'Check', 'FICO', NULL, NULL),
(293, 'Financial Accounting (Bank Accounting)', 'Define House Banks', 'FI12', '', 'Create', 'FICO', NULL, NULL),
(294, 'Financial Accounting (Bank Accounting)', 'Set Up Cash Journal', 'FBCJC0', '', 'Create', 'FICO', NULL, NULL),
(295, 'Financial Accounting (Bank Accounting)', 'Create, Change, Delete Business Transactions', 'FBCJC2', '', 'Create', 'FICO', NULL, NULL),
(296, 'Financial Accounting (Bank Accounting)', 'Validation in Accounting Documents (workbench req.)', 'OB28', '', 'Create', 'FICO', NULL, NULL),
(297, 'Financial Accounting (Asset Accounting)', 'Specify Transfer Date/Last Closed Fiscal Year', 'SPRO', 'V_T093C_08', 'Create', 'FICO', NULL, NULL),
(298, 'Financial Accounting (Asset Accounting)', 'Specify Last Period Posted in Prv.System (Transf.During FY)', 'OAYC', '', 'Create', 'FICO', NULL, NULL),
(299, 'Financial Supply Chain Mgmt (Cash & Liquidity)', 'Define Cash Management Account Name', 'SPRO', 'V_T035D', 'Create', 'FICO', NULL, NULL),
(300, 'Financial Supply Chain Mgmt (Cash & Liquidity)', 'Maintain Structure', 'SPRO', 'V_T038', 'Create', 'FICO', NULL, NULL),
(301, 'Controlling (Cost Center Acct)', 'Create Plan Distribution', 'KSV7', '', 'File Checklist PP', 'FICO', NULL, NULL),
(302, 'Controlling (Cost Center Acct)', 'Create Plan Assessment', 'KSU7', '', 'File Checklist PP', 'FICO', NULL, NULL),
(303, 'Controlling (Cost Center Acct)', 'Edit Automatic Account Assignment', 'OKB9', '', 'Create', 'FICO', NULL, NULL),
(304, 'Controlling (Cost Center Acct)', 'Create Actual Distribution', 'KSV1', '', 'File Checklist PP', 'FICO', NULL, NULL),
(305, 'Controlling (Cost Center Acct)', 'Create Actual Assessment', 'KSU1', '', 'File Checklist PP', 'FICO', NULL, NULL),
(306, 'Product Cost Controlling (Prd Cost Planning)', 'Define Overhead Groups', 'OKZ2', '', 'Create', 'FICO', NULL, NULL),
(307, 'Product Cost Controlling', 'Check Special Procurement Types ', 'SPRO', 'V460A', 'Check Only', 'FICO', NULL, NULL),
(308, 'Product Cost Controlling (Cost Obj Controlling)', 'Define Cost-Accounting-Relevant Default Values for Order Types and Plants', 'SPRO', 'V_T399X_PC', 'Create', 'FICO', NULL, NULL),
(309, 'Product Cost Controlling (Simulatenous Costing)', 'Activate Generation of Cost Log in Repetitive Manufacturing', 'SPRO', 'V_T437D_F', 'Create', 'FICO', NULL, NULL),
(310, 'Product Cost Controlling', 'Define Default Variance Keys for Plants', 'OKVW', '', 'Create', 'FICO', NULL, NULL),
(311, 'Product Cost Controlling', 'Define Goods Received Valuation for Order Delivery', 'SPRO', 'V_TCO10', 'Create', 'FICO', NULL, NULL),
(312, 'Product Cost Controlling (Actual Costing/Ml)', 'Configure Dynamic Price Changes', 'SPRO', 'V_T001K_PR', 'Check Only', 'FICO', NULL, NULL),
(313, 'Profitability Analysis (Ent. Controlling)', 'Define Order Type-Dependent Parameters', 'COR4', '', 'Check Only (PP)', 'FICO', NULL, NULL),
(314, 'Profitability Analysis (Ent. Controlling)', 'Order Type - Dependent Parameters', 'OPL8', '', 'Check Only (PP)', 'FICO', NULL, NULL),
(315, 'Profitability Analysis (Ent. Controlling)', 'Valuation Variant for Order Costing', 'OPK9', '', 'Check Only (PP)', 'FICO', NULL, NULL),
(316, 'Profitability Analysis (Ent. Controlling)', 'General Version Define', 'OKEV', '', 'Check Only', 'FICO', NULL, NULL),
(317, 'Maintain Table View', 'Mapping cost center untuk transaksi input Profit Segment', 'SM30', 'ZMAPCOSTCENTER', 'Create', 'FICO', NULL, NULL),
(318, 'Maintain Table View', 'Mapping GL Account Cash Clrg/Bank utk UJB', 'SM30', 'ZREG_UJB_MAPV', 'Create', 'FICO', NULL, NULL),
(319, 'Maintain Table View', 'Daftar no sertifikat UJB yg berlaku', 'SM30', 'ZUJB_NUMRANGE', 'Create', 'FICO', NULL, NULL),
(320, 'Enterprise Structure (Logistic General)', 'Plant', 'OX10', '', 'Create', 'MM', NULL, NULL),
(321, 'Enterprise Structure (Logistic General)', 'Plant Parameters', 'SM30', 'V_159L', 'Create', 'MM', NULL, NULL),
(322, 'Enterprise Structure (Logistic General)', 'Assign plant ke company code', 'OX18', '', 'Create', 'MM', NULL, NULL),
(323, 'Enterprise Structure (Logistic General)', 'Assign BA ke plant dan divisi', 'OMJ7', '', 'Create', 'MM', NULL, NULL),
(324, 'Enterprise Structure (Logistic General)', 'Create & Assign Porg ke Plant', 'OX08 ; OX17', '', 'Create', 'MM', NULL, NULL),
(325, 'Enterprise Structure (Logistic General)', 'Create Purchasing group', 'OME4', '', 'Create', 'MM', NULL, NULL),
(326, 'Enterprise Structure (Logistic General)', 'Storage Location', 'OX09', '', 'Create', 'MM', NULL, NULL),
(327, 'Enterprise Structure (Logistic General)', 'Create/Check TOP (Term Of Payment)', 'OME2', '', 'Check Only', 'MM', NULL, NULL),
(328, 'Enterprise Structure (Logistic General)', 'Assign standard purchasing organization to plant ', 'SM30', 'V_001W_E', 'Create', 'MM', NULL, NULL),
(329, 'Enterprise Structure (Logistic General)', 'Define Stock Determinationgroup', 'OSPX', '', 'Create', 'MM', NULL, NULL),
(330, 'Enterprise Structure (Logistic General)', 'Assign Stock Determination Rule in Production Order', 'OPJ2', '', 'Create', 'MM', NULL, NULL),
(331, 'Enterprise Structure (Logistic General)', 'Define Control Data for Pull List', 'SPRO', '', 'Create', 'MM', NULL, NULL),
(332, 'Enterprise Structure (Logistic General)', 'Assign Stock Determination Rule in Pull list', 'SM30', 'V_T435W_BF', 'Check Only', 'MM', NULL, NULL),
(333, 'Enterprise Structure (Logistic General)', 'Define Storage Location MRP per Plant', 'SM30', 'V_T001L_D', 'Create', 'MM', NULL, NULL),
(334, 'Enterprise Structure (Logistic General)', 'Account deteremnination for valuation areas', 'OMWD', '', 'Check Only', 'MM', NULL, NULL),
(335, 'Setting field selection material type', 'Create/Check Unit of Measure', 'CUNI', '', 'Check Only', 'MM', NULL, NULL),
(336, 'Setting field selection material type', 'Create material group', 'OMSF', '', 'Check Only', 'MM', NULL, NULL),
(337, 'Setting field selection material type', 'Configure Split valuation', 'OMWC', '', 'Create', 'MM', NULL, NULL),
(338, 'Setting field selection material type', 'Define Attributes of Material Types', 'T134M', '', 'Create', 'MM', NULL, NULL),
(339, 'Modify/Define MRP Type', 'Create type PURCHASE REQUISITION (Number, Link)', 'V_162', '', 'Check Only', 'MM', NULL, NULL),
(340, 'Modify/Define MRP Type', 'Create type PURCHASE ORDER (Number, Link)', 'V_162', '', 'Check Only', 'MM', NULL, NULL),
(341, 'Modify/Define MRP Type', 'Create & Check Schema Prosedure', 'V_TMKE', '', 'Check Only', 'MM', NULL, NULL),
(342, 'Modify/Define MRP Type', 'Create/Define condition type PO', 'V_T685A', '', 'Check Only', 'MM', NULL, NULL),
(343, 'Modify/Define MRP Type', 'Carry Out Overall Maint of MRP Groups', 'ZPRD, ZRAW, ZSPR, ZSUP', 'OMD1', 'Create', 'MM', NULL, NULL),
(344, 'Modify/Define MRP Type', 'Define MRP Group for Each Material Type', 'V_TMW00', '', 'Create', 'MM', NULL, NULL),
(345, 'Modify/Define MRP Type', 'Define MRP Controllers', 'PIC ZPRD, PIC ZRAW, PIC ZSPR, PIC ZSUP', 'V_T024D', 'Create', 'MM', NULL, NULL),
(346, 'Modify/Define MRP Type', 'Define Special Procurement Types', 'V460A', '', 'Create', 'MM', NULL, NULL),
(347, 'Modify/Define MRP Type', 'Carry Out Overall Maintenance of Plant Parameter', 'V438M', '', 'Create', 'MM', NULL, NULL),
(348, 'Modify/Define MRP Type', 'Define Document Life', 'V_159R', '', 'Create', 'MM', NULL, NULL),
(349, 'Maintain account assigment category', 'Purchase Requisition, Release Procedure, Procedure with Classification, Set Up Procedure with Classification', 'SPRO', 'V_T16FS', 'Create', 'MM', NULL, NULL),
(350, 'Maintain account assigment category', 'Create release strategy PURCHASE REQUISITION', 'T16FK', '', 'Create', 'MM', NULL, NULL),
(351, 'Maintain account assigment category', 'Create release CODE PURCHASE ORDER', 'VV_T16FC_2', '', 'Create', 'MM', NULL, NULL),
(352, 'Maintain account assigment category', 'Create release strategy PURCHASE ORDER', 'V_T16FS', '', 'Create', 'MM', NULL, NULL),
(353, 'Maintain account assigment category', 'Create/check movement type', 'OMJJ', '', 'Check Only', 'MM', NULL, NULL),
(354, 'Maintain account assigment category', 'Configure automatic posting', 'OBYC', '', 'Check Only', 'MM', NULL, NULL),
(355, 'Maintain account assigment category', 'Create reason for movement', 'V_157L', '', 'Check Only', 'MM', NULL, NULL),
(356, 'Maintain account assigment category', 'Defaul value of doc type', 'V_T160', '', 'Check Only', 'MM', NULL, NULL),
(357, 'Maintain account assigment category', 'Set tolerance limits', 'V_169G', '', 'Check Only', 'MM', NULL, NULL),
(358, 'Maintain account assigment category', 'Define permissible partner role per accout group', '', '', '', 'MM', NULL, NULL),
(359, 'Maintain account assigment category', 'Set Check for duplicate invoice', '', '', '', 'MM', NULL, NULL),
(360, 'Maintain account assigment category', 'Maintai default value per tax code', 'V_169V_ST', '', 'Check Only', 'MM', NULL, NULL),
(361, 'Maintain account assigment category', 'Allow freezing of book inventory balance in stor loc', '', '', '', 'MM', NULL, NULL),
(362, 'Maintain account assigment category', 'Define text type for header text', '', '', '', 'MM', NULL, NULL),
(363, 'Maintain tabel/field program Tcode SM30 CLIENT 400', 'Kombinasi PR', 'SM30', 'ZPRRELEASE', 'Check Only', 'MM', NULL, NULL),
(364, 'Maintain tabel/field program Tcode SM30 CLIENT 400', 'Kombinasi PR Interbranch & STO', 'SM30', 'ZPRRELEASE', 'Check Only', 'MM', NULL, NULL),
(365, 'Maintain tabel/field program Tcode SM30 CLIENT 400', 'Kombinasi PO', 'SM30', 'ZPORELEASE', 'Check Only', 'MM', NULL, NULL),
(366, 'Maintain tabel/field program Tcode SM30 CLIENT 400', 'Kombinasi PO Interbranch & STO', 'SM30', 'ZPORELEASE', 'Check Only', 'MM', NULL, NULL),
(367, 'Maintain tabel/field program Tcode SM30 CLIENT 400', 'Nopol Kend Botolan u/ TTBK, Packing', 'SM30', 'ZNKEND', '-', 'MM', NULL, NULL),
(368, 'Maintain MM02', 'Field with qty Structure terkait KKF3', 'MM02', '', '-', 'MM', NULL, NULL),
(369, 'Maintain MM02', 'Field Material Original Terkait KKF3', 'MM02', '', '-', 'MM', NULL, NULL),
(370, 'Maintain MM02', 'Trading field', 'MM02', '', '-', 'MM', NULL, NULL),
(371, 'Maintain MM02', 'Field Volume botol MP, MC, MS', 'MM02', '', '-', 'MM', NULL, NULL),
(372, 'MARA-XCHPF', 'Batch management botol BMC', 'MM02 / MM17', '', '-', 'MM', NULL, NULL),
(373, 'MARA-XCHPF', 'Revenue Stream (copy plant lain)', 'MM02 / MM17', '', '-', 'MM', NULL, NULL),
(374, 'Maintain Release PR/PO', 'Assign Objects to Classes ? Class Type : 032 FRG_EKKO [223]', 'CL20N', '', 'Create', 'MM', NULL, NULL),
(375, 'Maintain Release PR/PO', 'Assign Objects to Classes ? FRG_EBAN', 'CL20N', '', 'Create', 'MM', NULL, NULL),
(376, 'Maintain Release PR/PO', 'Assign Objects/Classes to Class ? FRG_EKKO', 'CL24N', '', 'Create', 'MM', NULL, NULL),
(377, 'Maintain Release PR/PO', 'Assign Objects/Classes to Class ? FRG_EBAN', 'CL24N', '', 'Create', 'MM', NULL, NULL),
(378, 'Maintain Release PR/PO', 'Assign Objects/Classes to Class ? INTERBranch', 'CL24N', '', 'Create', 'MM', NULL, NULL),
(379, 'Variant Report', 'ZMMSQVI_RMD untuk interbranch', 'ZMMSQVI_RMD', '', 'Create', 'MM', NULL, NULL),
(380, 'Master Data PM', 'Maintain Maintenance Planning Plant', 'SPRO', '', 'Define', 'PM', NULL, NULL),
(381, 'Master Data PM', 'Assign Maintenance Planning Plant to Maintenance Plant', 'SPRO', '', 'Assign', 'PM', NULL, NULL),
(382, 'Master Data PM', 'Planner Groups', 'SPRO', '', 'Define', 'PM', NULL, NULL),
(383, 'Master Data PM', 'Maintenance Planner Groups', 'SPRO', '', 'Check or Define', 'PM', NULL, NULL),
(384, 'Master Data PM', 'Employees Responsible for Work Centers', 'SPRO', '', 'Define', 'PM', NULL, NULL),
(385, 'Notifikasi', 'Planner Groups', 'SPRO', '', 'Check  ', 'PM', NULL, NULL),
(386, 'Maintenance Order', 'Assign Order Types to Maintenance Plants', 'OIOD', '', 'Create', 'PM', NULL, NULL),
(387, 'Maintenance Order', 'Default Order Types for Maintenance Items', 'SPRO', '', 'Assign', 'PM', NULL, NULL),
(388, 'Maintenance Order', 'Maintain Default Values for Control Keys for Order Types', 'OIO6', '', 'Assign \"PM01\"', 'PM', NULL, NULL),
(389, 'Maintenance Order', 'Assign Costing parameters and Result Analysis Keys', 'OIOF', '', 'Assign \"PM01\"', 'PM', NULL, NULL),
(390, 'Maintenance Order', 'Change Docs, Collective Purc.Req.Indicator, Operation No.Interval', 'SPRO', '', 'Assign', 'PM', NULL, NULL),
(391, 'Maintenance Order', 'Documentation for Goods Movement for the Order', 'SPRO', '', 'Tick', 'PM', NULL, NULL),
(392, 'Maintenance Order', 'Inspection Control', 'OIOI', '', 'Define', 'PM', NULL, NULL),
(393, 'Maintenance Order', 'Default Values for Component Item Categories', 'SPRO', '', 'Define', 'PM', NULL, NULL),
(394, 'Maintenance Order', 'Activate Default Value for Current Date as Basic date', 'SPRO', '', 'Tick', 'PM', NULL, NULL),
(395, 'Maintenance Order', 'Default Values for Units for Operation', 'OIO9', '', 'Define', 'PM', NULL, NULL),
(396, 'Maintenance Order', 'Set Scheduling Paramaters', 'OPU7', '', 'Define', 'PM', NULL, NULL),
(397, 'Maintenance Order', 'Control Parameters for Completion Confirmations', 'SPRO', '', 'Define', 'PM', NULL, NULL),
(398, 'General ', 'Define Shift Sequence', 'OP4A', '', '', 'PP', NULL, NULL),
(399, 'General ', 'Define Order Types', 'OPJH', '', '', 'PP', NULL, NULL),
(400, 'MRP, Production Order', 'Define scheduling parameters for Production orders ', 'OPU3 ( 2*/ 1*/ 3* ) RWK,SER', '', 'Create', 'PP', NULL, NULL),
(401, 'MRP, Production Order', 'Define scheduling parameters for planned orders ', 'OPU5', '', 'Create', 'PP', NULL, NULL),
(402, 'MRP, Production Order', 'Production Scheduling Profiles', 'OPKP ( 00001, 00002 )', '', 'Create', 'PP', NULL, NULL),
(403, 'MRP, Production Order', 'Production Scheduler', 'OPJ9', '', 'Create', 'PP', NULL, NULL),
(404, 'MRP, Production Order', 'Define MRP Controllers', 'OMD0 ( mrp..... )', '', 'Create', 'PP', NULL, NULL),
(405, 'MRP, Production Order', 'Carryout Overall Maintenance of MRP Group', 'OPPZ ( Z* ....  )', '', 'Create', 'PP', NULL, NULL),
(406, 'MRP, Production Order', 'Define Scope of Total Planning', 'OM0E ( nama plant )', '', 'Create', 'PP', NULL, NULL),
(407, 'MRP, Production Order', 'Define MRP Creation Indicator', 'SPRO Production - MRP - Planning - Define Creation Indicator', '', 'Create', 'PP', 'Rita', '2018-06-04 14:51:08'),
(408, 'MRP, Production Order', 'Define Order Type-Dependent Parameter', 'OPL8 ( 2*/1*/3* )', '', 'Create', 'PP', NULL, NULL),
(409, 'MRP, Production Order', 'Tambahan centang PP01, Implementation', '', '', 'Check', 'PP', NULL, NULL),
(410, 'MRP, Production Order', 'Define Confirmation Parameter', 'OPK4 (2*/1*/3* )', '', 'Create', 'PP', NULL, NULL),
(411, 'MRP, Production Order', 'Define Default Value', 'OPJG', '', 'Create', 'PP', NULL, NULL),
(412, 'MRP, Production Order', 'Maintain Checking Control', 'OPJK', '', 'Create', 'PP', NULL, NULL),
(413, 'MRP, Production Order', 'Activate MRP dan Set up Planning File', 'OMDU', '', 'Check', 'PP', NULL, NULL),
(414, 'MRP, Production Order', 'Define Order Type for Conversion to Production/Process Order', 'OPPE', '', 'Create', 'PP', NULL, NULL),
(415, 'MRP, Production Order', 'Define MRP group for each Material group', 'OPPR', '', 'Create', 'PP', NULL, NULL),
(416, 'MRP, Production Order', 'Define Planning Horizon', 'OMDX', '', 'Create', 'PP', NULL, NULL),
(417, 'MRP, Production Order', 'Define parameter for determining basic dates', 'SPRO – Production – MRP – Schedulling & Capacity Parameter – Parameter for Determining Basic Dates', '', 'Check', 'PP', NULL, NULL),
(418, 'MRP, Production Order', 'Define available check for component', 'OPPJ', '', 'Create', 'PP', NULL, NULL),
(419, 'MRP, Production Order', 'Maintain carry out maintenance all', 'OPPQ', '', 'alll maint', 'PP', NULL, NULL),
(420, 'MRP, Production Order', 'Set Up Production Scheduler Group', 'OPCH', '', 'Create', 'PP', NULL, NULL),
(421, 'MRP, Production Order', 'Define Production Scheduling for Process Orders ', 'CORY', '', 'Create', 'PP', NULL, NULL),
(422, 'MRP, Production Order', 'Determinine Person Responsible – work Center', 'SPRO Production – Basic Data – Work Center  – General Data – Determine Person Responsible', '', 'Create', 'PP', NULL, NULL),
(423, 'MRP, Production Order', 'valuation variants order costing', 'OPK9', '', 'Create', 'PP', NULL, NULL),
(424, 'MRP, Production Order', 'Order type - dependent parameters', 'COR4', '', 'Create', 'PP', NULL, NULL),
(425, 'Maintain tabel/field program ', 'Sloc Kode Material', 'SM30', 'ZBOTOL_SLOC', 'Check Only', 'PP', NULL, NULL),
(426, 'Maintain tabel/field program ', 'Kode + isi Botol', 'SM30', 'ZCAP_BOTOL', 'Check Only', 'PP', NULL, NULL),
(427, 'Maintain tabel/field program ', 'LIVE PP', 'SM30', 'ZLIVE_PP', 'centang', 'PP', NULL, NULL),
(428, 'Maintain tabel/field program ', 'LIVE PP + BATCH', 'SM30', 'ZLIVE_BATCH', 'centang', 'PP', NULL, NULL),
(429, 'Maintain tabel/field program', 'Kapasitas Produksi', 'ZPPENH016', 'Kapasitas Design, Kapasitas Commisioning', 'Create', 'PP', NULL, NULL),
(430, 'Maintain tabel/field program', 'Mode ASP', 'ZPPENH016', 'Mode ASP 1/ 2', 'Create', 'PP', NULL, NULL),
(431, 'Maintain tabel/field program', 'Bahan Baku Mixed Gas', 'ZPPENH016', 'Kode material Mixed Gas Bahan baku yang dipakai Mixed Gas', 'Create', 'PP', NULL, NULL),
(432, 'Maintain tabel/field program', 'Map Plant dan sloc mixed Gas', 'ZPPENH016', 'Sloc mixed Gas', 'Create', 'PP', NULL, NULL),
(433, 'Maintain tabel/field program', 'Mapping SlocPipeline', 'ZPPENH016', 'Produksi Pipeline yang ada', 'Create', 'PP', NULL, NULL),
(434, 'Maintain tabel/field program', 'Mapping Sloc tangki', 'ZPPENH016', 'Sloc tangki yang dipakai produksi', 'Create', 'PP', NULL, NULL),
(435, 'Maintain tabel/field program', 'Mapping Sloc transfer', 'ZPPENH016', 'Mapping mobil distribusi yang dipakai per kode material', 'Create', 'PP', NULL, NULL),
(436, 'Maintain tabel/field program', 'Mapping report PP', 'ZPPENH016', 'Mapping report PP yg dikirim lewat email', 'Via Email', 'PP', NULL, NULL),
(437, 'Enterprise Structure (Def: Financial Accounting)', 'Define company', 'OX15', '', 'Check Only', 'SD', NULL, NULL),
(438, 'Enterprise Structure (Def: Financial Accounting)', 'Define Credit Control Area', 'OB45', '', 'Check Only', 'SD', NULL, NULL),
(439, 'Enterprise Structure (Def: Financial Accounting)', 'Define Business Area', 'OX03', '', 'Check Only', 'SD', NULL, NULL),
(440, 'Enterprise Structure (Def: Logistics-Plant)', 'Define Plant', 'OX10', '', 'Check Only', 'SD', NULL, NULL),
(441, 'Enterprise Structure (Def: Logistics-Division)', 'Define Division', 'OVXD', 'V_TSPA', 'Check Only', 'SD', NULL, NULL),
(442, 'Enterprise Structure (Def: Sales & Distribution)', 'Define, copy, delete, check sales organization', 'OVX5', 'V_TVKO', 'Create', 'SD', NULL, NULL),
(443, 'Enterprise Structure (Def: Sales & Distribution)', 'Define, copy, delete, check distribution channel', 'OVXI', 'V_TVTW', 'Check Only', 'SD', NULL, NULL),
(444, 'Enterprise Structure (Def: Sales & Distribution)', 'Maintain sales office', 'OVX1', 'V_TVBUR', 'Create', 'SD', NULL, NULL),
(445, 'Enterprise Structure (Def: Logistics Execution)', 'Define, copy, delete, check shipping point', 'OVXD', 'V_TVST', 'Create', 'SD', NULL, NULL),
(446, 'Enterprise Structure (Asg: Logistics General)', 'Assign Business Area to Plant/Valuation Area and Division', 'OMJ7', '', 'Create', 'SD', NULL, NULL),
(447, 'Enterprise Structure (Asg: Sales & Distribution)', 'Assign sales organization to company code', 'OVX3 / OVX3N', 'V_TVKO_ASSIGN', 'Create', 'SD', 'Admin', '2018-06-04 15:44:44'),
(448, 'Enterprise Structure (Asg: Sales & Distribution)', 'Assign distribution channel to sales organization', 'OVXK (V_TVKOV_ASSIGN)', 'V_TVKOV_ASSIGN', 'Create', 'SD', NULL, NULL),
(449, 'Enterprise Structure (Asg: Sales & Distribution)', 'Assign division to sales organization', 'OVXA /  OVXAN (V_TVKOS_ASSIGN)', 'V_TVKOS_ASSIGN', 'Create', 'SD', NULL, NULL),
(450, 'Enterprise Structure (Asg: Sales & Distribution)', 'Set up sales area', 'OVXG (V_TVTA_ASSIGN)', 'V_TVTA_ASSIGN', 'Create', 'SD', NULL, NULL),
(451, 'Enterprise Structure (Asg: Sales & Distribution)', 'Assign sales office to sales area', 'OVXM (V_TVKBZ_ASSIGN)', 'V_TVKBZ_ASSIGN', 'Create', 'SD', NULL, NULL),
(452, 'Enterprise Structure (Asg: Sales & Distribution)', 'Assign sales organization - distribution channel - plant', 'OVX6 (V_TVKWZ_ASSIGN)', 'V_TVKWZ_ASSIGN', 'Create', 'SD', NULL, NULL),
(453, 'Enterprise Structure (Asg: Sales & Distribution)', 'Assign sales area to credit control area', 'OVFL (V_TVTA_KKB)', 'V_TVTA_KKB', 'Create', 'SD', NULL, NULL),
(454, 'Enterprise Structure (Asg: BA Acct Assignment)', 'Define Rules By Sales Area', 'OVF2', 'V_TVTA_GRE', 'Create', 'SD', 'Alex', '2018-06-04 15:22:59'),
(455, 'Enterprise Structure (Asg: BA Acct Assignment)', 'Assign Business Area To Plant And Division', 'OVX2', 'V_T134G_WS', 'Check Only', 'SD', 'Alex', '2018-06-04 15:23:05'),
(456, 'Enterprise Structure (Asg: Logistics Execution)', 'Assign shipping point to plant', 'OVXC', '', 'Create', 'SD', NULL, NULL),
(457, 'Logistics General (LIS Updating Control)', 'Assign Update Group at Item Level', 'OVRP', '', 'Create', 'SD', NULL, NULL),
(458, 'Logistics General (LIS Updating Control)', 'Assign Update Group at Header Level', 'OVRO', '', 'Create', 'SD', NULL, NULL),
(459, 'Sales & Distribution (Master Data)', 'Combine distribution channels', 'OVAM', '', 'Create', 'SD', NULL, NULL),
(460, 'Sales & Distribution (Master Data)', 'Combine divisions', 'OVAN', '', 'Create', 'SD', NULL, NULL),
(461, 'Sales & Distribution (Assign Pricing Procedure)', 'Define Pricing Procedure Determination', 'OVKK', '', 'Create', 'SD', NULL, NULL),
(462, 'Sales & Distribution (Assign Pricing Procedure)', 'Define Pricing Procedure Determination (IB)', 'OVKK', '', 'Create', 'SD', NULL, NULL),
(463, 'Sales & Distribution (Taxes)', 'Maintain Sales Tax Identification Number Determination', 'V_TVKO_TAX', '', 'Create', 'SD', NULL, NULL),
(464, 'Sales & Distribution (Assign G/L)', '1 – Cust.Grp/MaterialGrp/AcctKey', 'VKOA (C001)', 'C001', 'Create', 'SD', NULL, NULL),
(465, 'Sales & Distribution (Assign G/L)', '3 – Material Grp/Acct Key', 'VKOA (C003)', 'C003', 'Create', 'SD', NULL, NULL),
(466, 'Sales & Distribution (Assign G/L)', '5 – Acct Key', 'VKOA (C005)', 'C005', 'Create', 'SD', NULL, NULL),
(467, 'Sales & Distribution (Assign G/L)', '501 – Sales org./Ord.reason/Acct key', 'VKOA (C501)', 'C501', 'Create', 'SD', NULL, NULL),
(468, 'Sales & Distribution (Assign Sales Area to Sales Doc.Type)', 'Combine sales organizations', 'OVAO (V_TVKOS_AU)', 'V_TVKOS_AU', 'Create', 'SD', NULL, NULL),
(469, 'Sales & Distribution (Assign Sales Area to Sales Doc.Type)', 'Combine distribution channels', 'OVAO (V_TVKOV_AU)', 'V_TVKOV_AU', 'Create', 'SD', NULL, NULL),
(470, 'Sales & Distribution (Assign Sales Area to Sales Doc.Type)', 'Combine divisions', 'OVAO (V_TVKOS_AU)', 'V_TVKOS_AU', 'Create', 'SD', NULL, NULL),
(471, 'Sales & Distribution (Assign Sales Area to Sales Doc.Type)', 'Assign sales order types permitted for sales areas', 'OVAO (V_TVAKZ)', 'V_TVAKZ', 'Check Only', 'SD', NULL, NULL),
(472, 'Sales & Distribution (CAS Sales Summary)', 'Assign Default View To User', 'V80C', '', 'Create', 'SD', NULL, NULL),
(473, 'Logistics Execution (Ship Point & Goods Rcv Point)', 'Shipping Points Determination', '0VVW', '', 'Create', 'SD', NULL, NULL),
(474, 'Number Range SD', 'Define Number Ranges for Sales Doc.', 'VN01', '', 'Create', '', NULL, NULL),
(475, 'Number Range SD', 'Assign MWST = 0%', 'VK11', '', 'Create', '', NULL, NULL),
(476, 'Number Range SD', 'BOM MP', 'LSMW', '', 'Create', '', NULL, NULL),
(477, 'Number Range SD', 'BOM MR', 'LSMW', '', 'Create', '', NULL, NULL),
(478, 'Number Range SD', 'Create Customer', 'XD01', '', 'Create', '', NULL, NULL),
(479, 'Table (SM30)', 'Table View Sloc (View of ZSDRPT_035_SLOC)', 'ZSDRPT_035_SLOCV ', 'SM30', 'Create', 'SD', NULL, NULL),
(480, 'Table (SM30)', 'Tabel Numrange SD (Number Ranges Mapping Table)', 'ZNUMRANGE  ', 'SM30', 'Create', 'SD', NULL, NULL),
(481, 'Table (SM30)', 'Tabel Numrange SD (Tabel Numbering Modul SD)', 'ZSD_NUMBER ', 'SM30', 'Create', 'SD', NULL, NULL),
(482, 'Table (SM30)', 'Tabel Release Credit (Tabel Hak Release Credit Limit)', 'ZRELEASE_CREDIT', 'SM30', 'Create', 'SD', NULL, NULL),
(483, 'Table (SM30)', 'Tabel Release Pricing (Master User and Release Code)', 'ZPRICING_USER', 'SM30', 'Create', 'SD', NULL, NULL),
(484, 'Table (SM30)', 'Tabel User Release Pricing (Maintenance view of ZPRICING_STATUS)', 'ZPRICING_STATUSV ', 'SM30', 'Check Only', 'SD', NULL, NULL),
(485, 'Table (SM30)', 'Table SJ hrs GI (User Exit untuk cetak surat jalan & GI)', 'ZCETAKSJEXIT', 'SM30', 'Create', 'SD', NULL, NULL),
(486, 'Table (SM30)', 'Tabel Sign Invoice (Hormat Kami Untuk Sign Invoice)', 'ZINV_HORMAT  ', 'SM30', 'Create', 'SD', NULL, NULL),
(487, 'Table (SM30)', 'Tabel Sign Surat Jalan (Nama kepala untuk sign surat jalan)', 'ZSJ_KEPALA ', 'SM30', 'Create', 'SD', NULL, NULL),
(488, 'Table (SM30)', 'Tabel Kendaraan (Number Ranges for Surat Perintah Kirim (SPK) - Liquid)', 'ZNKEND ', 'SM30', 'Create', 'SD', NULL, NULL),
(489, 'Table (SM30)', 'Tabel SPK', 'ZNUM_LIQ  ', 'SM30', 'Create', 'SD', NULL, NULL),
(490, 'Table (SM30)', 'Tabel packing (Number Range for Packing List Order)', 'ZPACKNR ', 'SM30', 'Create', 'SD', NULL, NULL),
(491, 'Table (SM30)', 'Tabel group (Tabel definisi customer  antar grup)   ', 'ZANTARGRUP', 'SM30', 'Create', 'SD', NULL, NULL),
(492, 'Table (SM30)', 'Tabel Number Botol Asset (Tabel Number Botol Asset)', 'ZTBANR', 'SM30', 'Create', 'SD', NULL, NULL),
(493, 'Table (SM30)', 'Tabel Number Botol Pinjaman (Tabel Number Botol Pinjaman)', 'ZTBPNR', 'SM30', 'Create', 'SD', NULL, NULL),
(494, 'Table (SM30)', 'Tabel Batch (Tabel Live Batch)', 'ZLIVE_BATCH', 'SM30', 'Create', 'SD', NULL, NULL),
(495, 'Table (SM30)', 'Tabel pemusatan (Customer yang termasuk pajak terpusat)', 'ZTERPUSAT    ', 'SM30', 'Create', 'SD', NULL, NULL),
(496, 'Table (SM30)', 'Tabel Customer Antar Grup (Customer Antar Grup)', 'ZANTARGRUP', 'SM30', 'Create', 'SD', NULL, NULL),
(497, 'Table (SM30)', 'Table exit saldo MR (Table control user exit SD)', 'ZUSEREXIT_SD  ', 'SM30', 'Check Only', 'SD', NULL, NULL),
(498, 'Table (SM30)', 'Table exit SN Btl MG (Table control user exit SD)', 'ZUSEREXIT_SD2 ', 'SM30', 'Check Only', 'SD', NULL, NULL),
(499, 'Table (SM30)', 'Table Bgrnd btl MR (BMC) (Cek kode barang botol MR full name (BMC))', 'ZPLANT_MR_FULL ', 'SM30', 'Create', 'SD', NULL, NULL),
(500, 'Table (SM30)', 'Tabel F.Pajak (FPS-Business Area )', 'ZGSBER_2008 ', 'SM30', 'Create', 'SD', NULL, NULL),
(501, 'Table (SM30)', 'Tabel area sirkulasi btl (Daerah Sirkulasi Botol)', 'ZDAERAH_BOTOL ', 'SM30', 'Create', 'SD', NULL, NULL),
(502, 'Table (SM30)', 'Tabel daerah cust (Master daerah customer untuk sirkulasi botol)', 'ZDAERAH_CUST  ', 'SM30', 'Create', 'SD', NULL, NULL),
(503, 'Table (SM30)', 'Table Bgrnd btl MR (Tabel hasil background zsdrpt_028 u/ botol MR)', 'ZSDRPT_028_BGND ', 'SM30', 'Create', 'SD', NULL, NULL),
(504, 'Table (SM30)', 'Table report Asset Btl (Table Penanda Tangan Daftar Asset)', 'ZTTD_DAFTAR_ASET  ', 'SM30', 'Create', 'SD', NULL, NULL);

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

--
-- Dumping data for table `m_uat_scn`
--

INSERT INTO `m_uat_scn` (`uat_id`, `uat_scn`, `uat_desc`, `chg_by`, `chg_date`) VALUES
(1, 'Penjualan Botolan Regular MTS (REGULER)', 'Penjualan gas dalam botol hasil produksi & sparepart ke Customer & IB Sales Order,Terima Botol Kosong, Produksi, Distribusi, Billing, Pelunasan A/R', NULL, NULL),
(2, 'Pembelian Bahan Baku', 'Pembelian Bahan Baku', NULL, NULL),
(3, 'Pembelian Barang Dagangan Gas', 'Pembelian Bahan Baku', NULL, NULL),
(4, 'Penjualan Botolan IB MTS (INTERBRANCH)', 'Penjualan gas dalam botol hasil produksi & sparepart ke Customer & IB Sales Order, Terima Botol Kosong, Produksi, Distribusi, Billing, Pelunasan A/R', NULL, NULL),
(5, 'Penjualan Botolan Regular & IB MTS', 'Penjualan gas dalam botol hasil produksi & sparepart ke Customer & IB Sales Order, Terima Botol Kosong, Produksi, Distribusi, Billing, Pelunasan A/R', NULL, NULL),
(6, 'Pembelian Bahan Baku Liquid', 'Pembelian Bahan Baku Liquid', NULL, NULL),
(7, 'Penjualan Botolan & Sparepart - Tunai-OTC', 'Penjualan gas dalam botol hasil produksi & sparepart ke Customer & IB Sales Order, Terima Botol Kosong, Produksi, Distribusi, Billing, Pelunasan A/R', NULL, NULL),
(8, 'Penjualan Container Regular MTS', 'Penjualan gas dalam container hasil produksi & sparepart ke Customer Reguler Sales Order, Terima Container Kosong, Produksi, Distribusi, Billing, Pelunasan A/R', NULL, NULL),
(9, 'Penjualan Container Regular MTS (Reclass)', 'Penjualan gas dalam container hasil produksi & sparepart ke Customer & IB Sales Order, Terima Container Kosong, Produksi, Distribusi, Billing, Pelunasan A/R', NULL, NULL),
(10, 'Sales Kontrak Material', 'Transaksi sales kontrak Material Sales Contract, Produksi, Distribusi, Billing, Pelunasan A/R', NULL, NULL),
(11, 'Penjualan Botolan & Sparepart – OTC / TUNAI', 'Penjualan gas dalam botol hasil produksi & sparepart ke Customer Sales Order, Terima Botol Kosong, Produksi, Distribusi, Billing, Pelunasan A/R', NULL, NULL),
(12, 'Klaim & Pengganti Klaim', 'Klaim & Pengganti Klaim Customer', NULL, NULL),
(13, 'Perubahan Fungsi Gas', 'Perubahan Fungsi Gas - Botol', NULL, NULL),
(14, 'Retur Penjualan', 'Retur Penjualan (Nota Retur)', NULL, NULL),
(15, 'BA Perubahan SN Botol', 'BA Perubahan SN Botol - Botol MP', NULL, NULL),
(16, 'Pekerjaan Jasa External & Pembelian Material', 'Integrasi PM ke MM, FI, CO', NULL, NULL),
(17, 'Plant Maintenance', 'Integrasi PM ke MM, FI, CO', NULL, NULL),
(18, 'Material Ambil Dari Gudang (PM Internal)', 'Integrasi PM ke MM, FI, CO', NULL, NULL),
(19, 'Pekerjaan Jasa External & Pembelian Material', 'Integrasi PM ke MM, FI, CO', NULL, NULL),
(20, 'Pengembalian Botol Rusak MR', 'Pengembalian Botol Rusak MR - Milik Customer', NULL, NULL);

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

--
-- Dumping data for table `m_uat_step`
--

INSERT INTO `m_uat_step` (`id_step`, `uat_scn`, `no_step`, `bp_step`, `tcode_step`, `user_step`, `chg_by`, `chg_date`) VALUES
(1, 'Penjualan Botolan Regular MTS (REGULER)', 1, 'Buat Sales Order (SO)', 'VA01', 'Sales Counter', NULL, NULL),
(2, 'Penjualan Botolan Regular MTS (REGULER)', 2, 'Release SO  (Credit Management)', 'ZSDENH006', 'Management', NULL, NULL),
(3, 'Penjualan Botolan Regular MTS (REGULER)', 2, 'Cetak SO', 'VA03', 'Sales Counter', NULL, NULL),
(4, 'Penjualan Botolan Regular MTS (REGULER)', 3, 'Sales Counter buat perintah packing ', 'ZSDENH039', 'Sales Counter', NULL, NULL),
(5, 'Penjualan Botolan Regular MTS (REGULER)', 4, 'Create TTBK & GR ke Sloc Empty Pack', 'ZMMENH025', 'Adm Panggung', NULL, NULL),
(6, 'Penjualan Botolan Regular MTS (REGULER)', 5, 'Konfirmasi SO & buat Inquiry jika ada pekerjaan tambahan (Khusus MR)', 'ZSDENH040', 'Panggung', NULL, NULL),
(7, 'Penjualan Botolan Regular MTS (REGULER)', 5, 'Report', 'ZSDRPT047', 'Panggung', NULL, NULL),
(8, 'Penjualan Botolan Regular MTS (REGULER)', 6, 'Konversi Inquiry ke SO setelah konfirm ke relasi (Khusus MR)', 'ZSDENH043', 'Sales Counter', NULL, NULL),
(9, 'Penjualan Botolan Regular MTS (REGULER)', 6, 'Report', 'ZSDRPT047', 'Sales Counter', NULL, NULL),
(10, 'Penjualan Botolan Regular MTS (REGULER)', 7, 'Prosedur Running MRP & Create PRO MTS', '', 'PPIC', NULL, NULL),
(11, 'Penjualan Botolan Regular MTS (REGULER)', 8, 'Input Hasil Produksi ', 'ZPPENH001', 'Produksi', NULL, NULL),
(12, 'Penjualan Botolan Regular MTS (REGULER)', 9, 'Transfer Packing dari Sloc Full Pack ke sloc Distribusi', 'ZSDENH040', 'Adm Panggung', NULL, NULL),
(13, 'Penjualan Botolan Regular MTS (REGULER)', 10, 'Cetak Packing List (dilampirkan di SO)', 'ZSDENH040', 'Adm Panggung', NULL, NULL),
(14, 'Penjualan Botolan Regular MTS (REGULER)', 11, 'Posting (GI) Surat Jalan ', 'VL01N', 'Distribusi/ Logistik', NULL, NULL),
(15, 'Penjualan Botolan Regular MTS (REGULER)', 11, 'Posting (GI) Surat Jalan ', 'VL02N', 'Distribusi/ Logistik', NULL, NULL),
(16, 'Penjualan Botolan Regular MTS (REGULER)', 11, 'Cetak Surat Jalan', 'VL03N', 'Distribusi/ Logistik', NULL, NULL),
(17, 'Penjualan Botolan Regular MTS (REGULER)', 12, 'Create Invoice ', 'VF01', 'Adm Penjualan', NULL, NULL),
(18, 'Penjualan Botolan Regular MTS (REGULER)', 12, 'Cetak Invoice', 'VF03', 'Adm Penjualan', NULL, NULL),
(19, 'Penjualan Botolan Regular MTS (REGULER)', 12, 'Cetak Faktur Pajak', 'ZFIRPT038', 'Adm Penjualan', NULL, NULL),
(20, 'Penjualan Botolan Regular MTS (REGULER)', 13, 'Terima Plns dari Customer via bank BCA Test Transfer', 'F-21', 'GL Bank', NULL, NULL),
(21, 'Penjualan Botolan Regular MTS (REGULER)', 14, 'Account Clear AR', 'F-32', 'Adm Piutang', NULL, NULL),
(22, 'Pembelian Bahan Baku', 1, 'Bon Permintaan Manual', 'MANUAL', 'MARKETING', NULL, NULL),
(23, 'Pembelian Bahan Baku', 2, 'Create PR', 'ME51N', 'GUDANG', NULL, NULL),
(24, 'Pembelian Bahan Baku', 3, 'Release PR (diwakilkan oleh Akuntansi)', 'ME55', 'KA FS.', NULL, NULL),
(25, 'Pembelian Bahan Baku', 4, 'Create PO', 'ME21N', 'PEMBELIAN', NULL, NULL),
(26, 'Pembelian Bahan Baku', 5, 'Release PO (Hub. Tim untuk rilis PO)', 'ME28', 'Mgr / GM / Dir', NULL, NULL),
(27, 'Pembelian Bahan Baku', 6, 'Cetak PO', 'ME22N', 'PEMBELIAN', NULL, NULL),
(28, 'Pembelian Bahan Baku', 6, 'Cetak PO', 'ZMMRPT001', 'PEMBELIAN', NULL, NULL),
(29, 'Pembelian Bahan Baku', 7, 'LPB BAHAN BAKU LIQUID', 'MIGO', 'GUDANG', NULL, NULL),
(30, 'Pembelian Bahan Baku', 8, 'Losses Pembelian', 'ZMMENH012', 'GUDANG', NULL, NULL),
(31, 'Pembelian Bahan Baku', 9, 'Transfer SLOC LIQUID', 'ZMMENH012', 'GUDANG', NULL, NULL),
(32, 'Pembelian Bahan Baku', 10, 'Print LPB', 'ZMMRPT001', 'GUDANG', NULL, NULL),
(33, 'Pembelian Bahan Baku', 11, 'Pengakuan HUTANG', 'MIRO', 'AKUNTANSI', NULL, NULL),
(34, 'Pembelian Bahan Baku', 12, 'Pelunasan HUTANG via CASH', 'FBCJ', 'KASIR', NULL, NULL),
(35, 'Pembelian Bahan Baku', 13, 'Pelunasan HUTANG via BANK', 'F-42', 'KASIR', NULL, NULL),
(36, 'Pembelian Bahan Baku', 14, 'Clear HUTANG', 'F-44', 'AKUNTANSI', NULL, NULL),
(37, 'Pembelian Barang Dagangan Gas', 1, 'TTBK', 'ZMMENH025', 'LOGISTIK IN', NULL, NULL),
(38, 'Pembelian Barang Dagangan Gas', 2, 'Bon Permintaan Manual', 'MANUAL', 'MARKETING', NULL, NULL),
(39, 'Pembelian Barang Dagangan Gas', 3, 'Create PR', 'ME51N', 'GUDANG', NULL, NULL),
(40, 'Pembelian Barang Dagangan Gas', 4, 'Release PR (diwakilkan oleh Akuntansi)', 'ME55', 'KA FS.', NULL, NULL),
(41, 'Pembelian Barang Dagangan Gas', 5, 'Pengeluaran Botol Pengisian (541)', 'ZSDENH025', 'LOGISTIK OUT', NULL, NULL),
(42, 'Pembelian Barang Dagangan Gas', 6, 'CREATE PO', 'ME21N', 'PEMBELIAN', NULL, NULL),
(43, 'Pembelian Barang Dagangan Gas', 7, 'Release PO (HUBUNGI TEAM UNTUK RELEASE PO)', 'ME28', 'Mgr / GM / Dir', NULL, NULL),
(44, 'Pembelian Barang Dagangan Gas', 8, 'CETAK PO', 'ME22N', 'PEMBELIAN', NULL, NULL),
(45, 'Pembelian Barang Dagangan Gas', 8, 'CETAK PO', 'ZMMRPT001', 'PEMBELIAN', NULL, NULL),
(46, 'Pembelian Barang Dagangan Gas', 9, 'LPB Barang Dagangan GAS', 'MIGO', 'GUDANG', NULL, NULL),
(47, 'Pembelian Barang Dagangan Gas', 10, 'Penerimaan Botol Pengisian (542)', 'ZSDENH025', 'LOGISTIK IN', NULL, NULL),
(48, 'Pembelian Barang Dagangan Gas', 11, 'Penerimaan Botol Pinjaman', 'ZSDENH020', 'LOGISTIK IN', NULL, NULL),
(49, 'Pembelian Barang Dagangan Gas', 12, 'Print LPB', 'ZMMRPT001', 'GUDANG', NULL, NULL),
(50, 'Pembelian Barang Dagangan Gas', 13, 'Pengakuan HUTANG', 'MIRO', 'Akuntansi', NULL, NULL),
(51, 'Pembelian Barang Dagangan Gas', 14, 'Pelunasan HUTANG via CASH', 'FBCJ', 'Kasir', NULL, NULL),
(52, 'Pembelian Barang Dagangan Gas', 15, 'Pelunasan HUTANG via BANK', 'F-42', 'Kasir', NULL, NULL),
(53, 'Pembelian Barang Dagangan Gas', 16, 'Clear HUTANG', 'F-44', 'Akuntansi', NULL, NULL),
(54, 'Penjualan Botolan IB MTS (INTERBRANCH)', 1, '(Cust IB) Create PR', 'ME51N', 'Gudang', NULL, NULL),
(55, 'Penjualan Botolan IB MTS (INTERBRANCH)', 2, '(Cust IB) Release PR (IB NON RELEASE)', 'ME54N', 'GM Plant/Pemb', NULL, NULL),
(56, 'Penjualan Botolan IB MTS (INTERBRANCH)', 3, '(Cust IB) Create PO', 'ME21N', 'Adm Pemb.', NULL, NULL),
(57, 'Penjualan Botolan IB MTS (INTERBRANCH)', 4, '(Cust IB) Release PO', 'ME29N', 'Mgr & GM Pembelian/ Direksi', NULL, NULL),
(58, 'Penjualan Botolan IB MTS (INTERBRANCH)', 1, 'Buat Sales Order (SO)', 'VA01', 'Sales Counter', NULL, NULL),
(59, 'Penjualan Botolan IB MTS (INTERBRANCH)', 2, 'Release SO  (Credit Management)', 'ZSDENH006', 'Management', NULL, NULL),
(60, 'Penjualan Botolan IB MTS (INTERBRANCH)', 2, 'Cetak SO', 'VA03', 'Sales Counter', NULL, NULL),
(61, 'Penjualan Botolan IB MTS (INTERBRANCH)', 3, 'Sales Counter buat perintah packing ', 'ZSDENH039', 'Sales Counter', NULL, NULL),
(62, 'Penjualan Botolan IB MTS (INTERBRANCH)', 4, 'Create TTBK & GR ke Sloc Empty Pack', 'ZMMENH025', 'Adm Panggung', NULL, NULL),
(63, 'Penjualan Botolan IB MTS (INTERBRANCH)', 5, 'Konfirmasi SO & buat Inquiry jika ada pekerjaan tambahan (Khusus MR)', 'ZSDENH040', 'Panggung', NULL, NULL),
(64, 'Penjualan Botolan IB MTS (INTERBRANCH)', 5, 'Report', 'ZSDRPT047', 'Panggung', NULL, NULL),
(65, 'Penjualan Botolan IB MTS (INTERBRANCH)', 6, 'Konversi Inquiry ke SO setelah konfirm ke relasi (Khusus MR)', 'ZSDENH043', 'Sales Counter', NULL, NULL),
(66, 'Penjualan Botolan IB MTS (INTERBRANCH)', 6, 'Report', 'ZSDRPT047', 'Sales Counter', NULL, NULL),
(67, 'Penjualan Botolan IB MTS (INTERBRANCH)', 7, 'Prosedur Running MRP & Create PRO MTS', '', 'PPIC', NULL, NULL),
(68, 'Penjualan Botolan IB MTS (INTERBRANCH)', 8, 'Input Hasil Produksi ', 'ZPPENH001', 'Produksi', NULL, NULL),
(69, 'Penjualan Botolan IB MTS (INTERBRANCH)', 9, 'Transfer Packing dari Sloc Full Pack ke sloc Distribusi', 'ZSDENH040', 'Adm Panggung', NULL, NULL),
(70, 'Penjualan Botolan IB MTS (INTERBRANCH)', 10, 'Cetak Packing List (dilampirkan di SO)', 'ZSDENH040', 'Adm Panggung', NULL, NULL),
(71, 'Penjualan Botolan IB MTS (INTERBRANCH)', 11, 'Posting (GI) Surat Jalan ', 'VL01N', 'Distribusi/ Logistik', NULL, NULL),
(72, 'Penjualan Botolan IB MTS (INTERBRANCH)', 11, 'Posting (GI) Surat Jalan ', 'VL02N', 'Distribusi/ Logistik', NULL, NULL),
(73, 'Penjualan Botolan IB MTS (INTERBRANCH)', 11, 'Cetak Surat Jalan', 'VL03N', 'Distribusi/ Logistik', NULL, NULL),
(74, 'Penjualan Botolan IB MTS (INTERBRANCH)', 12, 'Create Invoice ', 'VF01', 'Adm Penjualan', NULL, NULL),
(75, 'Penjualan Botolan IB MTS (INTERBRANCH)', 12, 'Cetak Invoice', 'VF03', 'Adm Penjualan', NULL, NULL),
(76, 'Penjualan Botolan IB MTS (INTERBRANCH)', 12, 'Cetak Faktur Pajak', 'ZFIRPT038', 'Adm Penjualan', NULL, NULL),
(77, 'Penjualan Botolan IB MTS (INTERBRANCH)', 13, 'Terima Plns dari Customer via bank BCA Test Transfer', 'F-21', 'GL Bank', NULL, NULL),
(78, 'Penjualan Botolan IB MTS (INTERBRANCH)', 14, 'Account Clear AR', 'F-32', 'Adm Piutang', NULL, NULL),
(79, 'Penjualan Botolan IB MTS (INTERBRANCH)', 1, '(Cust IB) Create Goods Receipt', 'MIGO', 'Gudang', NULL, NULL),
(80, 'Penjualan Botolan IB MTS (INTERBRANCH)', 2, '(Cust IB) Melakukan Inv.Verification', 'MIRO', 'Adm Hutang', NULL, NULL),
(81, 'Penjualan Botolan Regular & IB MTS', 1, 'Buat Sales Order (SO)', 'VA01', 'Sales Counter', NULL, NULL),
(82, 'Penjualan Botolan Regular & IB MTS', 2, 'Release SO  (Credit Management)', 'ZSDENH006', 'Management', NULL, NULL),
(83, 'Penjualan Botolan Regular & IB MTS', 2, 'Cetak SO', 'VA03', 'Sales Counter', NULL, NULL),
(84, 'Penjualan Botolan Regular & IB MTS', 3, 'Sales Counter buat perintah packing ', 'ZSDENH039', 'Sales Counter', NULL, NULL),
(85, 'Penjualan Botolan Regular & IB MTS', 4, 'Create TTBK & GR ke Sloc Empty Pack', 'ZMMENH025', 'Adm Panggung', NULL, NULL),
(86, 'Penjualan Botolan Regular & IB MTS', 5, 'Konfirmasi SO & buat Inquiry jika ada pekerjaan tambahan (Khusus MR)', 'ZSDENH040', 'Panggung', NULL, NULL),
(87, 'Penjualan Botolan Regular & IB MTS', 5, 'Report', 'ZSDRPT047', 'Panggung', NULL, NULL),
(88, 'Penjualan Botolan Regular & IB MTS', 6, 'Konversi Inquiry ke SO setelah konfirm ke relasi (Khusus MR)', 'ZSDENH043', 'Sales Counter', NULL, NULL),
(89, 'Penjualan Botolan Regular & IB MTS', 6, 'Report', 'ZSDRPT047', 'Sales Counter', NULL, NULL),
(90, 'Penjualan Botolan Regular & IB MTS', 7, 'Prosedur Running MRP & Create PRO MTS', '', 'PPIC', NULL, NULL),
(91, 'Penjualan Botolan Regular & IB MTS', 8, 'Input Hasil Produksi ', 'ZPPENH001', 'Produksi', NULL, NULL),
(92, 'Penjualan Botolan Regular & IB MTS', 9, 'Transfer Packing dari Sloc Full Pack ke sloc Distribusi', 'ZSDENH040', 'Adm Panggung', NULL, NULL),
(93, 'Penjualan Botolan Regular & IB MTS', 10, 'Cetak Packing List (dilampirkan di SO)', 'ZSDENH040', 'Adm Panggung', NULL, NULL),
(94, 'Penjualan Botolan Regular & IB MTS', 11, 'Posting (GI) Surat Jalan ', 'VL01N', 'Distribusi/ Logistik', NULL, NULL),
(95, 'Penjualan Botolan Regular & IB MTS', 11, 'Posting (GI) Surat Jalan ', 'VL02N', 'Distribusi/ Logistik', NULL, NULL),
(96, 'Penjualan Botolan Regular & IB MTS', 11, 'Cetak Surat Jalan', 'VL03N', 'Distribusi/ Logistik', NULL, NULL),
(97, 'Penjualan Botolan Regular & IB MTS', 12, 'Create Invoice ', 'VF01', 'Adm Penjualan', NULL, NULL),
(98, 'Penjualan Botolan Regular & IB MTS', 12, 'Cetak Invoice', 'VF03', 'Adm Penjualan', NULL, NULL),
(99, 'Penjualan Botolan Regular & IB MTS', 12, 'Cetak Faktur Pajak', 'ZFIRPT038', 'Adm Penjualan', NULL, NULL),
(100, 'Penjualan Botolan Regular & IB MTS', 13, 'Terima Plns dari Customer via bank BCA Test Transfer', 'F-21', 'GL Bank', NULL, NULL),
(101, 'Penjualan Botolan Regular & IB MTS', 14, 'Account Clear AR', 'F-32', 'Adm Piutang', NULL, NULL),
(102, 'Pembelian Bahan Baku Liquid', 1, 'Bon Permintaan Manual', 'MANUAL', 'MARKETING', NULL, NULL),
(103, 'Pembelian Bahan Baku Liquid', 2, 'Create PR', 'ME51N', 'GUDANG', NULL, NULL),
(104, 'Pembelian Bahan Baku Liquid', 3, 'Release PR (diwakilkan oleh Akuntansi)', 'ME55', 'KA FS.', NULL, NULL),
(105, 'Pembelian Bahan Baku Liquid', 4, 'CREATE PO', 'ME21N', 'PEMBELIAN', NULL, NULL),
(106, 'Pembelian Bahan Baku Liquid', 5, 'Release PO (HUBUNGI TEAM UNTUK RELEASE PO)', 'ME28', 'Mgr / GM / Dir', NULL, NULL),
(107, 'Pembelian Bahan Baku Liquid', 6, 'CETAK PO', 'ME22N', 'PEMBELIAN', NULL, NULL),
(108, 'Pembelian Bahan Baku Liquid', 6, 'CETAK PO', 'ZMMRPT001', 'PEMBELIAN', NULL, NULL),
(109, 'Pembelian Bahan Baku Liquid', 7, 'LPB BAHAN BAKU LIQUID', 'MIGO', 'GUDANG', NULL, NULL),
(110, 'Pembelian Bahan Baku Liquid', 8, 'Losses Pembelian', 'ZMMENH012', 'GUDANG', NULL, NULL),
(111, 'Pembelian Bahan Baku Liquid', 9, 'Transfer SLOC LIQUID', 'ZMMENH012', 'GUDANG', NULL, NULL),
(112, 'Pembelian Bahan Baku Liquid', 10, 'Print LPB', 'ZMMRPT001', 'GUDANG', NULL, NULL),
(113, 'Pembelian Bahan Baku Liquid', 11, 'Pengakuan HUTANG', 'MIRO', 'AKUNTANSI', NULL, NULL),
(114, 'Pembelian Bahan Baku Liquid', 12, 'Pelunasan HUTANG via CASH', 'FBCJ', 'KASIR', NULL, NULL),
(115, 'Pembelian Bahan Baku Liquid', 13, 'Pelunasan HUTANG via BANK', 'F-42', 'KASIR', NULL, NULL),
(116, 'Pembelian Bahan Baku Liquid', 14, 'Clear HUTANG', 'F-44', 'AKUNTANSI', NULL, NULL),
(117, 'Penjualan Botolan & Sparepart - Tunai-OTC', 1, 'Buat Sales Order (SO)', 'VA01', 'Sales Counter', NULL, NULL),
(118, 'Penjualan Botolan & Sparepart - Tunai-OTC', 1, 'Cetak SO', 'VA03', 'Sales Counter', NULL, NULL),
(119, 'Penjualan Botolan & Sparepart - Tunai-OTC', 2, 'Create Invoice ', 'VF01', 'Adm Penjualan', NULL, NULL),
(120, 'Penjualan Botolan & Sparepart - Tunai-OTC', 2, 'Cetak Invoice', 'VF03', 'Adm Penjualan', NULL, NULL),
(121, 'Penjualan Botolan & Sparepart - Tunai-OTC', 2, 'Cetak Faktur Pajak', 'ZFIRPT038', 'Adm Penjualan', NULL, NULL),
(122, 'Penjualan Botolan & Sparepart - Tunai-OTC', 3, 'Terima Plns dari Customer via Cash', 'FBCJ', 'GL Bank', NULL, NULL),
(123, 'Penjualan Botolan & Sparepart - Tunai-OTC', 4, 'Account Clear AR', 'F-32', 'Adm Piutang', NULL, NULL),
(124, 'Penjualan Botolan & Sparepart - Tunai-OTC', 5, 'Create TTBK & GR ke Sloc Empty Pack', 'ZMMENH025', 'Adm Panggung', NULL, NULL),
(125, 'Penjualan Botolan & Sparepart - Tunai-OTC', 6, 'Konfirmasi SO & buat Inquiry jika ada pekerjaan tambahan (Khusus MR)', 'ZSDENH040', 'Produksi', NULL, NULL),
(126, 'Penjualan Botolan & Sparepart - Tunai-OTC', 7, 'Konversi Inquiry ke SO setelah konfirm ke relasi (Khusus MR)', 'ZSDENH043', 'Sales Counter', NULL, NULL),
(127, 'Penjualan Botolan & Sparepart - Tunai-OTC', 8, 'Prosedur Running MRP & Create PRO MTS', '', 'PPIC', NULL, NULL),
(128, 'Penjualan Botolan & Sparepart - Tunai-OTC', 9, 'Input Hasil Produksi ', 'ZPPENH001', 'Produksi', NULL, NULL),
(129, 'Penjualan Botolan & Sparepart - Tunai-OTC', 10, 'Sales Counter buat Perintah Packing ', 'ZSDENH039', 'Sales Counter', NULL, NULL),
(130, 'Penjualan Botolan & Sparepart - Tunai-OTC', 11, 'Transfer Packing dari Sloc Full Pack ke sloc Distribusi', 'ZSDENH040', 'Adm Panggung', NULL, NULL),
(131, 'Penjualan Botolan & Sparepart - Tunai-OTC', 12, 'Cetak Packing List (dilampirkan di SO)', 'ZSDENH040', 'Adm Panggung', NULL, NULL),
(132, 'Penjualan Botolan & Sparepart - Tunai-OTC', 13, 'Posting (GI) Surat Jalan', 'VL01N', 'Distribusi/ Logistik', NULL, NULL),
(133, 'Penjualan Botolan & Sparepart - Tunai-OTC', 13, 'Posting (GI) Surat Jalan', 'VL02N', 'Distribusi/ Logistik', NULL, NULL),
(134, 'Penjualan Botolan & Sparepart - Tunai-OTC', 14, 'Cetak Surat Jalan ', 'VL03N', 'Distribusi', NULL, NULL),
(135, 'Penjualan Container Regular MTS', 1, 'Buat Sales Order (SO)', 'VA01', 'Sales Counter', NULL, NULL),
(136, 'Penjualan Container Regular MTS', 2, 'Release SO  (Credit Management)', 'ZSDENH006', 'Management', NULL, NULL),
(137, 'Penjualan Container Regular MTS', 2, 'Cetak SO', 'VA03', 'Sales Counter', NULL, NULL),
(138, 'Penjualan Container Regular MTS', 3, 'Distribusi buat perintah packing ', 'ZSDENH039', 'Distribusi', NULL, NULL),
(139, 'Penjualan Container Regular MTS', 4, 'Create TTBK & GR ke Sloc Empty Pack', 'ZMMENH025', 'Adm Panggung', NULL, NULL),
(140, 'Penjualan Container Regular MTS', 5, 'Konfirmasi SO & buat Inquiry jika ada pekerjaan tambahan (Khusus MR)', 'ZSDENH040', 'Panggung', NULL, NULL),
(141, 'Penjualan Container Regular MTS', 5, 'Report', 'ZSDRPT047', 'Panggung', NULL, NULL),
(142, 'Penjualan Container Regular MTS', 6, 'Konversi Inquiry ke SO setelah konfirm ke relasi (Khusus MR)', 'ZSDENH043', 'Sales Counter', NULL, NULL),
(143, 'Penjualan Container Regular MTS', 6, 'Report', 'ZSDRPT047', 'Sales Counter', NULL, NULL),
(144, 'Penjualan Container Regular MTS', 7, 'Check PRO Container MR', 'COOIS', 'Produksi', NULL, NULL),
(145, 'Penjualan Container Regular MTS', 8, 'Input Hasil Produksi ', 'ZPPENH001', 'Produksi', NULL, NULL),
(146, 'Penjualan Container Regular MTS', 9, 'Transfer Packing dari Sloc Full Pack ke sloc Distribusi', 'ZSDENH040', 'Adm Panggung', NULL, NULL),
(147, 'Penjualan Container Regular MTS', 10, 'Cetak Packing List (dilampirkan di SO)', 'ZSDENH040', 'Adm Panggung', NULL, NULL),
(148, 'Penjualan Container Regular MTS', 11, 'Posting (GI) Surat Jalan ', 'VL01N', 'Distribusi/ Logistik', NULL, NULL),
(149, 'Penjualan Container Regular MTS', 11, 'Posting (GI) Surat Jalan ', 'VL02N', 'Distribusi/ Logistik', NULL, NULL),
(150, 'Penjualan Container Regular MTS', 11, 'Cetak Surat Jalan', 'VL03N', 'Distribusi/ Logistik', NULL, NULL),
(151, 'Penjualan Container Regular MTS', 12, 'Create Invoice ', 'VF01', 'Adm Penjualan', NULL, NULL),
(152, 'Penjualan Container Regular MTS', 12, 'Cetak Invoice', 'VF03', 'Adm Penjualan', NULL, NULL),
(153, 'Penjualan Container Regular MTS', 12, 'Cetak Faktur Pajak', '', 'Adm Penjualan', NULL, NULL),
(154, 'Penjualan Container Regular MTS', 13, 'Terima Plns dari Customer via bank Transfer', 'F-21', 'GL Bank', NULL, NULL),
(155, 'Penjualan Container Regular MTS', 14, 'Account Clear AR', 'F-32', 'Adm Piutang', NULL, NULL),
(156, 'Penjualan Container Regular MTS (Reclass)', 1, 'Buat Sales Order (SO)', 'VA01', 'Sales Counter', NULL, NULL),
(157, 'Penjualan Container Regular MTS (Reclass)', 2, 'Release SO  (Credit Management)', 'ZSDENH006', 'Management', NULL, NULL),
(158, 'Penjualan Container Regular MTS (Reclass)', 2, 'Cetak SO', 'VA03', 'Sales Counter', NULL, NULL),
(159, 'Penjualan Container Regular MTS (Reclass)', 3, 'Sales Counter buat perintah packing ', 'ZSDENH039', 'Sales Counter', NULL, NULL),
(160, 'Penjualan Container Regular MTS (Reclass)', 4, 'Adm Persedian buat Re-Class Material Raw (Bahan Baku) menjadi PRD (Barang Dagangan)', 'MB1B-309', 'Adm Persediaan', NULL, NULL),
(161, 'Penjualan Container Regular MTS (Reclass)', 5, 'Transfer Packing dari Sloc Full Pack ke sloc Distribusi', 'ZSDENH040', 'Adm Panggung', NULL, NULL),
(162, 'Penjualan Container Regular MTS (Reclass)', 6, 'Cetak Packing List (dilampirkan di SO)', 'ZSDENH040', 'Adm Panggung', NULL, NULL),
(163, 'Penjualan Container Regular MTS (Reclass)', 7, 'Posting (GI) Surat Jalan ', 'VL01N', 'Distribusi/ Logistik', NULL, NULL),
(164, 'Penjualan Container Regular MTS (Reclass)', 7, 'Posting (GI) Surat Jalan ', 'VL02N', 'Distribusi/ Logistik', NULL, NULL),
(165, 'Penjualan Container Regular MTS (Reclass)', 8, 'Cetak Surat Jalan', 'VL03N', 'Distribusi/ Logistik', NULL, NULL),
(166, 'Penjualan Container Regular MTS (Reclass)', 9, 'Create Invoice ', 'VF01', 'Adm Penjualan', NULL, NULL),
(167, 'Penjualan Container Regular MTS (Reclass)', 9, 'Cetak Invoice', 'VF03', 'Adm Penjualan', NULL, NULL),
(168, 'Penjualan Container Regular MTS (Reclass)', 9, 'Cetak Faktur Pajak', '', 'Adm Penjualan', NULL, NULL),
(169, 'Penjualan Container Regular MTS (Reclass)', 10, 'Terima Plns dari Customer via cash', 'FBCJ', 'GL Cash', NULL, NULL),
(170, 'Penjualan Container Regular MTS (Reclass)', 11, 'Account Clear AR', 'F-32', 'Adm Piutang', NULL, NULL),
(171, 'Sales Kontrak Material', 1, 'Prosedur create Master data Material, BOM, Routing baru', 'CS01,CR01,CA01,C223', '', NULL, NULL),
(172, 'Sales Kontrak Material', 2, 'Finish Good Standard Price Maintenance', 'CK11N', '', NULL, NULL),
(173, 'Sales Kontrak Material', 2, 'Finish Good Standard Price Maintenance', 'CK24', '', NULL, NULL),
(174, 'Sales Kontrak Material', 3, 'Master data pricing', 'VK11', '', NULL, NULL),
(175, 'Sales Kontrak Material', 4, 'Buat Sales Kontrak', 'VA41', 'Sales Counter', NULL, NULL),
(176, 'Sales Kontrak Material', 5, 'Release SO Kontrak (Credit Management)', 'ZSDENH006', 'Management', NULL, NULL),
(177, 'Sales Kontrak Material', 6, 'Create Invoice DP', 'VF01', 'Adm Penjualan', NULL, NULL),
(178, 'Sales Kontrak Material', 7, 'Penerimaan Uang Muka via cash', 'FBCJ', 'Kasir', NULL, NULL),
(179, 'Sales Kontrak Material', 8, 'Pengakuan Uang Muka', 'F-29', 'Adm Piutang', NULL, NULL),
(180, 'Sales Kontrak Material', 9, 'Create SO partial sesuai termin', 'VA01', 'Sales Counter', NULL, NULL),
(182, 'Sales Kontrak Material', 10, 'Sales Counter buat perintah \r\npacking ', 'ZSDENH039', 'Sales Counter', NULL, NULL),
(183, 'Sales Kontrak Material', 10, 'Sales Counter buat perintah \r\npacking ', 'ZSDENH039', 'Sales Counter', NULL, NULL),
(184, 'Sales Kontrak Material', 11, 'Input Hasil Produksi ', 'ZPPENH001', 'Produksi', NULL, NULL),
(185, 'Sales Kontrak Material', 12, 'Transfer Packing dari Sloc Full Pack ke sloc Distribusi', 'ZSDENH040', 'Adm Panggung', NULL, NULL),
(186, 'Sales Kontrak Material', 13, 'Buat Surat Jalan, posting (GI) dan Cetak ', 'VL02N', 'Distribusi', NULL, NULL),
(187, 'Sales Kontrak Material', 14, 'Create Invoice ', 'VF01', 'Adm Penjualan', NULL, NULL),
(188, 'Sales Kontrak Material', 15, 'Terima plns d/ cust. Via Bank BCA Test trf', 'F-21', 'Kasir', NULL, NULL),
(189, 'Sales Kontrak Material', 16, 'Clear A/R', 'F-32', 'Adm Piutang', NULL, NULL),
(190, 'Penjualan Botolan & Sparepart – OTC / TUNAI', 1, 'Buat Sales Order (SO)', 'VA01', 'Sales Counter', NULL, NULL),
(191, 'Penjualan Botolan & Sparepart – OTC / TUNAI', 1, 'Cetak SO', 'VA03', 'Sales Counter', NULL, NULL),
(192, 'Penjualan Botolan & Sparepart – OTC / TUNAI', 2, 'Create Invoice ', 'VF01', 'Adm Penjualan', NULL, NULL),
(193, 'Penjualan Botolan & Sparepart – OTC / TUNAI', 2, 'Cetak Invoice', 'VF03', 'Adm Penjualan', NULL, NULL),
(194, 'Penjualan Botolan & Sparepart – OTC / TUNAI', 3, 'Terima Plns dari Customer via bank Transfer', 'F-21', 'Kasir', NULL, NULL),
(195, 'Penjualan Botolan & Sparepart – OTC / TUNAI', 4, 'Terima Plns dari Customer via cash', 'F-21', 'Kasir', NULL, NULL),
(196, 'Penjualan Botolan & Sparepart – OTC / TUNAI', 5, 'Account Clear AR', 'F-32', 'Adm Piutang', NULL, NULL),
(197, 'Penjualan Botolan & Sparepart – OTC / TUNAI', 6, 'Create TTBK & GR ke Sloc Empty Pack', 'ZMMENH025', 'Adm Panggung', NULL, NULL),
(198, 'Penjualan Botolan & Sparepart – OTC / TUNAI', 7, 'Konfirmasi SO & buat Inquiry jika ada pekerjaan tambahan (Khusus MR)', 'ZSDENH040', 'Produksi', NULL, NULL),
(199, 'Penjualan Botolan & Sparepart – OTC / TUNAI', 8, 'Konversi Inquiry ke SO setelah konfirm ke relasi (Khusus MR)', 'ZSDENH043', 'Sales Counter', NULL, NULL),
(200, 'Penjualan Botolan & Sparepart – OTC / TUNAI', 9, 'Prosedur Running MRP & Create PRO MTS', '', 'PPIC', NULL, NULL),
(201, 'Penjualan Botolan & Sparepart – OTC / TUNAI', 10, 'Input Hasil Produksi ', 'ZPPENH001', 'Produksi', NULL, NULL),
(202, 'Penjualan Botolan & Sparepart – OTC / TUNAI', 11, 'Sales Counter buat Perintah Packing ', 'ZSDENH039', 'Sales Counter', NULL, NULL),
(203, 'Penjualan Botolan & Sparepart – OTC / TUNAI', 12, 'Transfer Packing dari Sloc Full Pack ke sloc Distribusi', 'ZSDENH040', 'Adm Panggung', NULL, NULL),
(204, 'Penjualan Botolan & Sparepart – OTC / TUNAI', 13, 'Cetak Packing List (dilampirkan di SO)', 'ZSDENH040', 'Adm Panggung', NULL, NULL),
(205, 'Penjualan Botolan & Sparepart – OTC / TUNAI', 14, 'Posting (GI) Surat Jalan', 'VL01N', 'Distribusi/ Logistik', NULL, NULL),
(206, 'Penjualan Botolan & Sparepart – OTC / TUNAI', 14, 'Posting (GI) Surat Jalan', 'VL02N', 'Distribusi/ Logistik', NULL, NULL),
(207, 'Penjualan Botolan & Sparepart – OTC / TUNAI', 15, 'Cetak Surat Jalan ', 'VL03N', 'Distribusi', NULL, NULL),
(208, 'Klaim & Pengganti Klaim', 1, 'Buat TTBC', 'MANUAL', 'Adm Panggung', NULL, NULL),
(209, 'Klaim & Pengganti Klaim', 2, 'Cek Barang', 'MANUAL', 'QC', NULL, NULL),
(210, 'Klaim & Pengganti Klaim', 3, 'Release', 'MANUAL', 'GM Plant', NULL, NULL),
(211, 'Klaim & Pengganti Klaim', 4, 'Create Retur Req -> TYPE ZRR', 'VA01', 'Sales Counter', NULL, NULL),
(212, 'Klaim & Pengganti Klaim', 5, 'GR ke Gen Sloc', 'VL01N / VL02N', 'QC/ Panggung', NULL, NULL),
(213, 'Klaim & Pengganti Klaim', 6, 'Scrapp', 'ZMMENH014', 'QC', NULL, NULL),
(214, 'Klaim & Pengganti Klaim', 6, 'Transfer SLoc di Gen Sloc ke EMPTY', 'ZMMENH014', 'QC', NULL, NULL),
(215, 'Klaim & Pengganti Klaim', 7, 'Create SO Replacement Request', 'VA01', 'Sales Counter', NULL, NULL),
(216, 'Klaim & Pengganti Klaim', 7, 'Cetak SO ', 'VA03', 'Sales Counter', NULL, NULL),
(217, 'Klaim & Pengganti Klaim', 8, 'Buat Document Packing', 'ZSDENH039', 'Sales Counter', NULL, NULL),
(218, 'Klaim & Pengganti Klaim', 8, 'Input Hasil Produksi ex Claim', 'ZPPENH001', 'Produksi', NULL, NULL),
(219, 'Klaim & Pengganti Klaim', 9, 'Transfer dari Sloc Full Pack ke Distribusi', 'ZSDENH040', 'Adm Panggung', NULL, NULL),
(220, 'Klaim & Pengganti Klaim', 11, 'Cetak Telling List', 'ZSDENH040', 'Adm Panggung', NULL, NULL),
(221, 'Klaim & Pengganti Klaim', 12, 'Realisasi & Cetak DO, Melakukan GI', 'VL02N / VL03N', 'Sales Counter / Distribusi', NULL, NULL),
(222, 'Klaim & Pengganti Klaim', 13, 'Proses Buku Besar', '', 'Distribusi/ Logistik', NULL, NULL),
(223, 'Perubahan Fungsi Gas', 1, 'Create SPI', 'Manual', 'Marketing', NULL, NULL),
(224, 'Perubahan Fungsi Gas', 2, 'Create BA Perubahan SN Botol - MP', 'Manual', 'Adm Botol', NULL, NULL),
(225, 'Perubahan Fungsi Gas', 3, 'Input BA Perubahan SN Botol – MP', 'ZSDENH026', 'Adm Botol', NULL, NULL),
(226, 'Perubahan Fungsi Gas', 4, 'Cetak BA Perubahan SN Botol - MP', 'ZSDENH026', 'Adm Botol', NULL, NULL),
(227, 'Retur Penjualan', 1, 'Buat TTBC', 'Manual', 'Adm Panggung', NULL, NULL),
(228, 'Retur Penjualan', 2, 'Cek Barang', 'Manual', 'QC', NULL, NULL),
(229, 'Retur Penjualan', 3, 'Release', 'Manual', 'GM Plant', NULL, NULL),
(230, 'Retur Penjualan', 4, 'Create Retur Req à type ZRR', 'VA01', 'Sales Counter', NULL, NULL),
(231, 'Retur Penjualan', 5, 'GR ke Gen Sloc', 'VL01N / VL02N', 'QC', NULL, NULL),
(232, 'Retur Penjualan', 6, 'Transfer Status di Gen Sloc', 'ZMMENH014', 'QC', NULL, NULL),
(233, 'Retur Penjualan', 7, 'Transfer Status di Gen Sloc ke EMPTY', 'ZMMENH014', 'QC', NULL, NULL),
(234, 'Retur Penjualan', 8, 'Create Nota Retur', 'VF01', 'Adm Penjualan', NULL, NULL),
(235, 'Retur Penjualan', 9, 'Cetak Nota Retur Faktur Pajak', 'ZFIRPT040', 'Adm Penjualan', NULL, NULL),
(236, 'BA Perubahan SN Botol', 1, 'Create SPI', 'Manual', '', NULL, NULL),
(237, 'BA Perubahan SN Botol', 2, 'Create BA Perubahan SN Botol - MP', 'Manual', 'Adm Botol', NULL, NULL),
(238, 'BA Perubahan SN Botol', 3, 'Input BA Perubahan SN Botol – MP', 'ZSDENH026', 'Adm Botol', NULL, NULL),
(239, 'BA Perubahan SN Botol', 4, 'Cetak BA Perubahan SN Botol - MP', 'ZSDENH026', 'Adm Botol', NULL, NULL),
(240, 'Pekerjaan Jasa External & Pembelian Material', 1, 'Buat Notifikasi', 'IW21', 'Maintc.', NULL, NULL),
(241, 'Pekerjaan Jasa External & Pembelian Material', 2, 'Buat Maintenance Order', 'IW22', 'Maintc.', NULL, NULL),
(242, 'Pekerjaan Jasa External & Pembelian Material', 3, 'Release ( PR ) Purchase Requisition Jasa', 'ME54N', 'Gudang', NULL, NULL),
(243, 'Pekerjaan Jasa External & Pembelian Material', 4, 'Buat Purchase Order Service refer ke Purchase Requisition  Material pada langkah 3', 'ME21N', 'Pembelian', NULL, NULL),
(244, 'Pekerjaan Jasa External & Pembelian Material', 4, 'Release PO', 'ME29N', 'Pembelian', NULL, NULL),
(245, 'Pekerjaan Jasa External & Pembelian Material', 5, 'Goods Receipt untuk PO langkah ke 4 (Jasa & Material)', 'MIGO', 'Gudang', NULL, NULL),
(246, 'Pekerjaan Jasa External & Pembelian Material', 6, 'Sekaligus lakukan GI untuk Material', 'ZMMENH013', 'Gudang', NULL, NULL),
(247, 'Pekerjaan Jasa External & Pembelian Material', 7, 'Confirmation Work Time after finish working', 'IW41', 'Maintc.', NULL, NULL),
(248, 'Pekerjaan Jasa External & Pembelian Material', 8, 'Lakukan Settlement ke Cost Center, Internal Order atau FXA (Fix Asset)', 'KO88', 'Tim PM & CO', NULL, NULL),
(249, 'Pekerjaan Jasa External & Pembelian Material', 9, 'Teco ( Tecnical Complete )', 'IW32 / IW38', '', NULL, NULL),
(250, 'Pekerjaan Jasa External & Pembelian Material', 10, 'Close MO', 'IW32 / IW38', '', NULL, NULL),
(251, 'Plant Maintenance', 1, 'Buat Notifikasi', 'IW21', 'Tim PM', NULL, NULL),
(252, 'Plant Maintenance', 2, 'Buat Maintenance Order', 'IW22', 'Tim PM', NULL, NULL),
(253, 'Plant Maintenance', 3, 'Lakukan Goods Issue untuk internal material refer ke M Order (movement type 261)', 'ZMMENH013', 'Tim MM ', NULL, NULL),
(254, 'Plant Maintenance', 4, 'Confirmation Work Time after finish working', 'IW41', 'Maintc.', NULL, NULL),
(255, 'Plant Maintenance', 5, 'Lakukan Settlement ke Cost Center, Internal Order atau FXA (Fix Asset)', 'KO88', 'Tim PM & CO', NULL, NULL),
(256, 'Plant Maintenance', 6, 'Teco ( Tecnical Complete )', 'IW32 / IW38', '', NULL, NULL),
(257, 'Material Ambil Dari Gudang (PM Internal)', 1, 'Buat Notifikasi', 'IW21', 'Tim PM', NULL, NULL),
(258, 'Material Ambil Dari Gudang (PM Internal)', 2, 'Buat Maintenance Order', 'IW22', 'Tim PM', NULL, NULL),
(259, 'Material Ambil Dari Gudang (PM Internal)', 3, 'Lakukan Goods Issue untuk internal material (Refer NO. Reservasi)', 'ZMMENH013', 'Tim MM', NULL, NULL),
(260, 'Material Ambil Dari Gudang (PM Internal)', 3, 'Lakukan Goods Issue untuk internal material (Refer NO. Reservasi)', 'ZMMENH013', 'Tim PM', NULL, NULL),
(261, 'Material Ambil Dari Gudang (PM Internal)', 4, 'Confirmation Work Time after finish working', 'IW41', 'Maintc.', NULL, NULL),
(262, 'Material Ambil Dari Gudang (PM Internal)', 5, 'Lakukan Settlement ke Cost Center, Internal Order atau FXA', 'KO88', 'Tim PM & CO', NULL, NULL),
(263, 'Material Ambil Dari Gudang (PM Internal)', 6, 'Teco ( Tecnical Complete )', 'IW32 / IW38', '', NULL, NULL),
(264, 'Pengembalian Botol Rusak MR', 1, 'Create TTBK & GR ke Sloc Empty Pack', 'ZMMENH025', 'Adm Panggung', NULL, NULL),
(265, 'Pengembalian Botol Rusak MR', 2, 'Buat Sales Order (SO) - ZNP', 'VA01', 'Sales Counter', NULL, NULL),
(266, 'Pengembalian Botol Rusak MR', 3, 'Sales Counter buat perintah packing ', 'ZSDENH039', 'Sales Counter', NULL, NULL),
(267, 'Pengembalian Botol Rusak MR', 4, 'Transfer Packing dari Sloc Empty Pack ke sloc Distribusi', 'ZSDENH040', 'Distribusi/ Logistik', NULL, NULL),
(268, 'Pengembalian Botol Rusak MR', 5, 'Cetak Packing List (dilampirkan di SO)', 'ZSDENH040', 'Distribusi/ Logistik', NULL, NULL),
(269, 'Pengembalian Botol Rusak MR', 6, 'Posting (GI) Surat Jalan ', 'VL02N', 'Distribusi/ Logistik', NULL, NULL),
(270, 'Pengembalian Botol Rusak MR', 7, 'Cetak Surat Jalan', 'VL03N', 'Sales Counter', NULL, NULL);

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
(1, 'Admin', 'ff2364a0be3d20e46cc69efb36afe9a5', 'Administrator', 'SUPER', 'Admin', '2018-06-04 09:39:33'),
(2, 'Sony', '33561003f44d374c719506bef4faeba4', 'Sony', 'ABAP', NULL, NULL),
(3, 'Ferry', '46171b077997b166bb30cf5494eff2f8', 'Ferry', 'ABAP', NULL, NULL),
(4, 'Faris', '7d77e825b80cff62a72e680c1c81424f', 'Faris', 'ABAP', 'Faris', '2018-06-05 14:05:50'),
(5, 'Johan', '7fedcb034ecf9df4be8c1ea13362053b', 'Johan', 'ABAP', NULL, NULL),
(6, 'Tjandra', 'e680449ab372830240dc3d25336658e4', 'Tjandra', 'BASIS', NULL, NULL),
(7, 'Andrean', 'de05930dd46a984ca32aad9feac718e8', 'Andrean', 'BASIS', 'Andrean', '2018-06-04 10:06:44'),
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

--
-- Dumping data for table `v_check`
--

INSERT INTO `v_check` (`id`, `ctype`, `ctypedesc`, `ctcode`, `ctable`, `cstat`, `cmodul`, `vcheck`, `vcba`, `vctransreqs`, `vcdate`, `vcpic`, `chg_by`, `chg_date`) VALUES
(1, 'Koreksi Report', 'ZFIRPT_008_F01 FI Reporting - Kas Bank, Voucher', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(2, 'Koreksi Report', 'ZFIRPT_038_F01 Cetak Faktur Pajak', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(3, 'Koreksi Report', 'ZFIRPT_039_F01 Re-print Faktur Pajak Standart', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(4, 'Koreksi Report', 'ZFIRPT_040_F01 Retur Faktur Pajak', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(5, 'Koreksi Report', 'ZFIRPT_042_F01 Cetak Faktur Pajak Own Consumption', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(6, 'Koreksi Report', 'ZFIRPT_043_F01 Re-print Faktur Pajak Own Consumption', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(7, 'Koreksi Report', 'ZFIENH_007_F01 Tanda Terima Nota Penjualan', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(8, 'Koreksi Report', 'ZMMENH_006_F01 Penerimaan Barang Produksi (ZMMENH006)', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(9, 'Koreksi Report', 'ZMMENH_007 Transfer Batch (ZMMENH007)', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(10, 'Koreksi Report', 'ZMMENH_008 Transfer Posting Storage Location', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(11, 'Koreksi Report', 'ZMMENH_008_F01 Transfer Posting Storage Location', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(12, 'Koreksi Report', 'ZMMENH_009_F01 Transfer Posting Storage Location Khusus Speciality + MG', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(13, 'Koreksi Report', 'ZMMENH_012 Posting Pembelian', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(14, 'Koreksi Report', 'ZMMENH_012_F01 Posting Pembelian', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(15, 'Koreksi Report', 'ZMMENH_013_F01 Good Issue (MB1A)', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(16, 'Koreksi Report', 'ZMMENH_015 Program Transfer Produksi PGS dan Filling CO2', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(17, 'Koreksi Report', 'ZMMENH_027 Transfer Posting Storage Location', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(18, 'Koreksi Report', 'ZMMENH_027_F01 Transfer Posting Storage Location', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(19, 'Koreksi Report', 'ZMMRPT_001_F01 Print Form', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(20, 'Koreksi Report', 'ZMMRPT_009_F01 Cetak SJ titipan (5K2),Pinjaman(502), Pengisian(541), STO (351)', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(21, 'Koreksi Report', 'ZSDENH_023_F01 Transaksi Stock Transfer Order', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(22, 'Koreksi Report', 'ZSDENH_040_F01 Transfer Packing List Order', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(23, 'Koreksi Report', 'ZSDENH_040_SCR1 Transfer Packing List Order', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(24, 'Koreksi Report', 'ZSDENH_040_SCR2 Transfer Packing List Order', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(25, 'Koreksi Report', 'ZSDRPT_001_F01 SD Reporting', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(26, 'Koreksi Report', 'ZSDRPT_004_F01 Cetak invoice', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(27, 'Koreksi Report', 'ZSDRPT_005_F01 Cetak Faktur Pajak', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(28, 'Koreksi Report', 'ZSDRPT_028_F02 Laporan Sirkulasi Botol', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(29, 'Koreksi Tabel', 'ZUSEREXIT_SD', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(30, 'Koreksi Tabel', 'ZUSEREXIT_SD2', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(31, 'Penyesuaian Smartforms', 'SO', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(32, 'Penyesuaian Smartforms', 'SJ', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(33, 'Penyesuaian Smartforms', 'Invoice Penjualan', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(34, 'Penyesuaian Smartforms', 'Kas Bank Masuk', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(35, 'Penyesuaian Smartforms', 'Kas Bank Keluar', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(36, 'Penyesuaian Smartforms', 'Cek Masuk', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(37, 'Penyesuaian Smartforms', 'Cek Keluar', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(38, 'Penyesuaian Smartforms', 'Jurnal Memorial', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(39, 'Penyesuaian Smartforms', 'PO', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(40, 'Koreksi Exit', 'FM ZCHECKGL_BA', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(41, 'Koreksi Exit', 'MV50AFZ1', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(42, 'Koreksi Exit', 'ZXMBCU02', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(43, 'Pembuatan Background Job', 'MM BALANCE BACKGROUND', '', '', 'Opsional', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(44, 'Pembuatan Background Job', 'MM BALANCE BACKGROUND CV', '', '', 'Opsional', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(45, 'Pembuatan Background Job', 'MM BALANCE BACKGROUND PJ', '', '', 'Opsional', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(46, 'Koreksi Report', '(CC) ZABENH_001_F01 Lock / Unlock User', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(47, 'Koreksi Report', '(CC) ZBIBO_CASHFLOW_FO1 Cashflow', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(48, 'Koreksi Report', '(CC) ZBIBO_PR Report List Purchase Requisitions', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(49, 'Koreksi Report', '(CC) ZCASHFLOW_F01 Cashflow', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(50, 'Koreksi Report', '(CC) ZFIENH_007_F01 Tanda Terima Nota Penjualan', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(51, 'Koreksi Report', '(CC) ZFIENH_008 Open and Close Posting Periods - Background Jobs', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(52, 'Koreksi Report', '(CC) ZFIENH_008_F01 Open and Close Posting Periods - Background Jobs', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(53, 'Koreksi Report', '(CC) ZFIENH_019_F01 Program Input Bank Keluar', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(54, 'Koreksi Report', '(CC) ZFIRPT_056 Delivery Productivity Report - Actual', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(55, 'Koreksi Report', '(CC) ZFIRPT_059 Plan and Actual Comparison for Statistical Key Figure', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(56, 'Koreksi Report', '(CC) ZFIRPT_065 Laporan Laba Rugi & Penghasilan Komprehensif Lain', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(57, 'Koreksi Report', '(CC) ZFIRPT_065_TOP Laporan Laba Rugi & Penghasilan Komprehensif Lain', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(58, 'Koreksi Report', '(CC) ZHRRPT_002_F01 Laporan Karyawan Masuk / Keluar / Turn Over Karyawan', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(59, 'Koreksi Report', '(CC) ZINIT_BAL3 MM Balance Background', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(60, 'Koreksi Report', '(CC) ZFIINT_001 Upload Interface Data Sales & Cash Bank', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(61, 'Koreksi Report', '(CC) ZMMENH_002 MM - Updating Previous Period', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(62, 'Koreksi Report', '(CC) ZMMENH_002_F01 MM - Updating Previous Period', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(63, 'Koreksi Report', '(CC) ZMMENH_012_F01 Posting Pembelian', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(64, 'Koreksi Report', '(CC) ZMMENH_020 MM Balance Background', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(65, 'Koreksi Report', '(CC) ZMMENH_021 MM Balance Background stock di Customer and Vendor', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(66, 'Koreksi Report', '(CC) ZMMENH_029 MM Balance Background stock pinjaman', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(67, 'Koreksi Report', '(CC) ZMMENH_030 MM Balance Background stock MR Customer', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(68, 'Koreksi Report', '(CC) ZSDENH_010_F01 Timbangan - Liquid', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(69, 'Koreksi Report', '(CC) ZSDENH_012_F01 Pricing Online SD', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(70, 'Koreksi Report', '(CC) ZSDENH_023 Transaksi Stock Transfer Order', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(71, 'Koreksi Report', '(CC) ZSDENH_039 Packing List Order', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(72, 'Koreksi Report', '(CC) ZSDENH_040 Transfer Packing List Order', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(73, 'Koreksi Report', '(CC) ZSDENH_054_F01 Timbangan - Liquid', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(74, 'Koreksi Report', '(CC) ZRGGBS000', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(75, 'Koreksi Exit', '(CC) FM ZCHECKGL_ORDER', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(76, 'Koreksi Exit', '(CC) ZXCOFU13', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(77, 'Koreksi Exit', '(CC) ZXCOFU14', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(78, 'Koreksi Exit', '(CC) ZXCOFU23', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(79, 'Pembuatan Background Job', '(CC) OPEN/CLOSE POSTING PERIODS', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(80, 'Pembuatan Background Job', '(CC) ZFIENH_013', '', '', '', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(81, 'Pembuatan Background Job', '(CC) ZFIENH_009 FLQAC & FLQAD', '', '', 'Modifikasi', 'ABAP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(82, 'Enterprise Structure', 'Define BA', 'SPRO', 'V_TGSB', 'Create', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(83, 'Enterprise Structure', 'Assign Business Area to Consolidation Business Area', 'SPRO', 'V_GSB_A', 'Check', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(84, 'Financial Accounting (Bank Accounting)', 'Define House Banks', 'FI12', '', 'Create', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(85, 'Financial Accounting (Bank Accounting)', 'Set Up Cash Journal', 'FBCJC0', '', 'Create', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(86, 'Financial Accounting (Bank Accounting)', 'Create, Change, Delete Business Transactions', 'FBCJC2', '', 'Create', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(87, 'Financial Accounting (Bank Accounting)', 'Validation in Accounting Documents (workbench req.)', 'OB28', '', 'Create', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(88, 'Financial Accounting (Asset Accounting)', 'Specify Transfer Date/Last Closed Fiscal Year', 'SPRO', 'V_T093C_08', 'Create', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(89, 'Financial Accounting (Asset Accounting)', 'Specify Last Period Posted in Prv.System (Transf.During FY)', 'OAYC', '', 'Create', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(90, 'Financial Supply Chain Mgmt (Cash & Liquidity', 'Define Cash Management Account Name', 'SPRO', 'V_T035D', 'Create', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(91, 'Financial Supply Chain Mgmt (Cash & Liquidity', 'Maintain Structure', 'SPRO', 'V_T038', 'Create', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(92, 'Controlling (Cost Center Acct)', 'Create Plan Distribution', 'KSV7', '', 'File Checklist PP', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(93, 'Controlling (Cost Center Acct)', 'Create Plan Assessment', 'KSU7', '', 'File Checklist PP', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(94, 'Controlling (Cost Center Acct)', 'Edit Automatic Account Assignment', 'OKB9', '', 'Create', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(95, 'Controlling (Cost Center Acct)', 'Create Actual Distribution', 'KSV1', '', 'File Checklist PP', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(96, 'Controlling (Cost Center Acct)', 'Create Actual Assessment', 'KSU1', '', 'File Checklist PP', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(97, 'Product Cost Controlling (Prd Cost Planning)', 'Define Overhead Groups', 'OKZ2', '', 'Create', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(98, 'Product Cost Controlling', 'Check Special Procurement Types ', 'SPRO', 'V460A', 'Check Only', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(99, 'Product Cost Controlling (Cost Obj Controllin', 'Define Cost-Accounting-Relevant Default Values for Order Types and Plants', 'SPRO', 'V_T399X_PC', 'Create', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(100, 'Product Cost Controlling (Simulatenous Costin', 'Activate Generation of Cost Log in Repetitive Manufacturing', 'SPRO', 'V_T437D_F', 'Create', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(101, 'Product Cost Controlling', 'Define Default Variance Keys for Plants', 'OKVW', '', 'Create', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(102, 'Product Cost Controlling', 'Define Goods Received Valuation for Order Delivery', 'SPRO', 'V_TCO10', 'Create', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(103, 'Product Cost Controlling (Actual Costing/Ml)', 'Configure Dynamic Price Changes', 'SPRO', 'V_T001K_PR', 'Check Only', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(104, 'Profitability Analysis (Ent. Controlling)', 'Define Order Type-Dependent Parameters', 'COR4', '', 'Check Only (PP)', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(105, 'Profitability Analysis (Ent. Controlling)', 'Order Type - Dependent Parameters', 'OPL8', '', 'Check Only (PP)', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(106, 'Profitability Analysis (Ent. Controlling)', 'Valuation Variant for Order Costing', 'OPK9', '', 'Check Only (PP)', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(107, 'Profitability Analysis (Ent. Controlling)', 'General Version Define', 'OKEV', '', 'Check Only', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(108, 'Maintain Table View', 'Mapping cost center untuk transaksi input Profit Segment', 'SM30', 'ZMAPCOSTCENTER', 'Create', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(109, 'Maintain Table View', 'Mapping GL Account Cash Clrg/Bank utk UJB', 'SM30', 'ZREG_UJB_MAPV', 'Create', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(110, 'Maintain Table View', 'Daftar no sertifikat UJB yg berlaku', 'SM30', 'ZUJB_NUMRANGE', 'Create', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(111, 'Enterprise Structure (Logistic General)', 'Plant', 'OX10', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(112, 'Enterprise Structure (Logistic General)', 'Plant Parameters', 'SM30', 'V_159L', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(113, 'Enterprise Structure (Logistic General)', 'Assign plant ke company code', 'OX18', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(114, 'Enterprise Structure (Logistic General)', 'Assign BA ke plant dan divisi', 'OMJ7', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(115, 'Enterprise Structure (Logistic General)', 'Create & Assign Porg ke Plant', 'OX08 ; OX17', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(116, 'Enterprise Structure (Logistic General)', 'Create Purchasing group', 'OME4', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(117, 'Enterprise Structure (Logistic General)', 'Storage Location', 'OX09', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(118, 'Enterprise Structure (Logistic General)', 'Create/Check TOP (Term Of Payment)', 'OME2', '', 'Check Only', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(119, 'Enterprise Structure (Logistic General)', 'Assign standard purchasing organization to plant ', 'SM30', 'V_001W_E', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(120, 'Enterprise Structure (Logistic General)', 'Define Stock Determinationgroup', 'OSPX', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(121, 'Enterprise Structure (Logistic General)', 'Assign Stock Determination Rule in Production Order', 'OPJ2', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(122, 'Enterprise Structure (Logistic General)', 'Define Control Data for Pull List', 'SPRO', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(123, 'Enterprise Structure (Logistic General)', 'Assign Stock Determination Rule in Pull list', 'SM30', 'V_T435W_BF', 'Check Only', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(124, 'Enterprise Structure (Logistic General)', 'Define Storage Location MRP per Plant', 'SM30', 'V_T001L_D', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(125, 'Enterprise Structure (Logistic General)', 'Account deteremnination for valuation areas', 'OMWD', '', 'Check Only', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(126, 'Setting field selection material type', 'Create/Check Unit of Measure', 'CUNI', '', 'Check Only', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(127, 'Setting field selection material type', 'Create material group', 'OMSF', '', 'Check Only', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(128, 'Setting field selection material type', 'Configure Split valuation', 'OMWC', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(129, 'Setting field selection material type', 'Define Attributes of Material Types', 'T134M', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(130, 'Modify/Define MRP Type', 'Create type PURCHASE REQUISITION (Number, Link)', 'V_162', '', 'Check Only', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(131, 'Modify/Define MRP Type', 'Create type PURCHASE ORDER (Number, Link)', 'V_162', '', 'Check Only', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(132, 'Modify/Define MRP Type', 'Create & Check Schema Prosedure', 'V_TMKE', '', 'Check Only', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(133, 'Modify/Define MRP Type', 'Create/Define condition type PO', 'V_T685A', '', 'Check Only', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(134, 'Modify/Define MRP Type', 'Carry Out Overall Maint of MRP Groups', 'ZPRD, ZRAW, ZSPR, ZSUP', 'OMD1', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(135, 'Modify/Define MRP Type', 'Define MRP Group for Each Material Type', 'V_TMW00', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(136, 'Modify/Define MRP Type', 'Define MRP Controllers', 'PIC ZPRD, PIC ZRAW, PIC ZSPR, PIC ZSUP', 'V_T024D', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(137, 'Modify/Define MRP Type', 'Define Special Procurement Types', 'V460A', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(138, 'Modify/Define MRP Type', 'Carry Out Overall Maintenance of Plant Parameter', 'V438M', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(139, 'Modify/Define MRP Type', 'Define Document Life', 'V_159R', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(140, 'Maintain account assigment category', 'Purchase Requisition, Release Procedure, Procedure with Classification, Set Up Procedure with Classification', 'SPRO', 'V_T16FS', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(141, 'Maintain account assigment category', 'Create release strategy PURCHASE REQUISITION', 'T16FK', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(142, 'Maintain account assigment category', 'Create release CODE PURCHASE ORDER', 'VV_T16FC_2', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(143, 'Maintain account assigment category', 'Create release strategy PURCHASE ORDER', 'V_T16FS', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(144, 'Maintain account assigment category', 'Create/check movement type', 'OMJJ', '', 'Check Only', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(145, 'Maintain account assigment category', 'Configure automatic posting', 'OBYC', '', 'Check Only', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(146, 'Maintain account assigment category', 'Create reason for movement', 'V_157L', '', 'Check Only', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(147, 'Maintain account assigment category', 'Defaul value of doc type', 'V_T160', '', 'Check Only', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(148, 'Maintain account assigment category', 'Set tolerance limits', 'V_169G', '', 'Check Only', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(149, 'Maintain account assigment category', 'Define permissible partner role per accout group', '', '', '', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(150, 'Maintain account assigment category', 'Set Check for duplicate invoice', '', '', '', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(151, 'Maintain account assigment category', 'Maintai default value per tax code', 'V_169V_ST', '', 'Check Only', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(152, 'Maintain account assigment category', 'Allow freezing of book inventory balance in stor loc', '', '', '', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(153, 'Maintain account assigment category', 'Define text type for header text', '', '', '', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(154, 'Maintain tabel/field program Tcode SM30 CLIEN', 'Kombinasi PR', 'SM30', 'ZPRRELEASE', 'Check Only', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(155, 'Maintain tabel/field program Tcode SM30 CLIEN', 'Kombinasi PR Interbranch & STO', 'SM30', 'ZPRRELEASE', 'Check Only', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(156, 'Maintain tabel/field program Tcode SM30 CLIEN', 'Kombinasi PO', 'SM30', 'ZPORELEASE', 'Check Only', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(157, 'Maintain tabel/field program Tcode SM30 CLIEN', 'Kombinasi PO Interbranch & STO', 'SM30', 'ZPORELEASE', 'Check Only', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(158, 'Maintain tabel/field program Tcode SM30 CLIEN', 'Nopol Kend Botolan u/ TTBK, Packing', 'SM30', 'ZNKEND', '-', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(159, 'Maintain MM02', 'Field with qty Structure terkait KKF3', 'MM02', '', '-', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(160, 'Maintain MM02', 'Field Material Original Terkait KKF3', 'MM02', '', '-', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(161, 'Maintain MM02', 'Trading field', 'MM02', '', '-', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(162, 'Maintain MM02', 'Field Volume botol MP, MC, MS', 'MM02', '', '-', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(163, 'MARA-XCHPF', 'Batch management botol BMC', 'MM02 / MM17', '', '-', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(164, 'MARA-XCHPF', 'Revenue Stream (copy plant lain)', 'MM02 / MM17', '', '-', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(165, 'Maintain Release PR/PO', 'Assign Objects to Classes ? Class Type : 032 FRG_EKKO [223]', 'CL20N', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(166, 'Maintain Release PR/PO', 'Assign Objects to Classes ? FRG_EBAN', 'CL20N', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(167, 'Maintain Release PR/PO', 'Assign Objects/Classes to Class ? FRG_EKKO', 'CL24N', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(168, 'Maintain Release PR/PO', 'Assign Objects/Classes to Class ? FRG_EBAN', 'CL24N', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(169, 'Maintain Release PR/PO', 'Assign Objects/Classes to Class ? INTERBranch', 'CL24N', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(170, 'Variant Report', 'ZMMSQVI_RMD untuk interbranch', 'ZMMSQVI_RMD', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(171, 'Master Data PM', 'Maintain Maintenance Planning Plant', 'SPRO', '', 'Define', 'PM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(172, 'Master Data PM', 'Assign Maintenance Planning Plant to Maintenance Plant', 'SPRO', '', 'Assign', 'PM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(173, 'Master Data PM', 'Planner Groups', 'SPRO', '', 'Define', 'PM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(174, 'Master Data PM', 'Maintenance Planner Groups', 'SPRO', '', 'Check or Define', 'PM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(175, 'Master Data PM', 'Employees Responsible for Work Centers', 'SPRO', '', 'Define', 'PM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(176, 'Notifikasi', 'Planner Groups', 'SPRO', '', 'Check  ', 'PM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(177, 'Maintenance Order', 'Assign Order Types to Maintenance Plants', 'OIOD', '', 'Create', 'PM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(178, 'Maintenance Order', 'Default Order Types for Maintenance Items', 'SPRO', '', 'Assign', 'PM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(179, 'Maintenance Order', 'Maintain Default Values for Control Keys for Order Types', 'OIO6', '', 'Assign \"PM01\"', 'PM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(180, 'Maintenance Order', 'Assign Costing parameters and Result Analysis Keys', 'OIOF', '', 'Assign \"PM01\"', 'PM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(181, 'Maintenance Order', 'Change Docs, Collective Purc.Req.Indicator, Operation No.Interval', 'SPRO', '', 'Assign', 'PM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(182, 'Maintenance Order', 'Documentation for Goods Movement for the Order', 'SPRO', '', 'Tick', 'PM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(183, 'Maintenance Order', 'Inspection Control', 'OIOI', '', 'Define', 'PM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(184, 'Maintenance Order', 'Default Values for Component Item Categories', 'SPRO', '', 'Define', 'PM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(185, 'Maintenance Order', 'Activate Default Value for Current Date as Basic date', 'SPRO', '', 'Tick', 'PM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(186, 'Maintenance Order', 'Default Values for Units for Operation', 'OIO9', '', 'Define', 'PM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(187, 'Maintenance Order', 'Set Scheduling Paramaters', 'OPU7', '', 'Define', 'PM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(188, 'Maintenance Order', 'Control Parameters for Completion Confirmations', 'SPRO', '', 'Define', 'PM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(189, 'General ', 'Define Shift Sequence', 'OP4A', '', '', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(190, 'General ', 'Define Order Types', 'OPJH', '', '', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(191, 'MRP, Production Order', 'Define scheduling parameters for Production orders ', 'OPU3 ( 2*/ 1*/ 3* ) RWK,SER', '', 'Create', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(192, 'MRP, Production Order', 'Define scheduling parameters for planned orders ', 'OPU5', '', 'Create', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(193, 'MRP, Production Order', 'Production Scheduling Profiles', 'OPKP ( 00001, 00002 )', '', 'Create', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(194, 'MRP, Production Order', 'Production Scheduler', 'OPJ9', '', 'Create', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(195, 'MRP, Production Order', 'Define MRP Controllers', 'OMD0 ( mrp..... )', '', 'Create', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(196, 'MRP, Production Order', 'Carryout Overall Maintenance of MRP Group', 'OPPZ ( Z* ....  )', '', 'Create', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(197, 'MRP, Production Order', 'Define Scope of Total Planning', 'OM0E ( nama plant )', '', 'Create', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(198, 'MRP, Production Order', 'Define MRP Creation Indicator', 'SPRO Production - MRP - Planning - Define Cre', '', 'Create', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(199, 'MRP, Production Order', 'Define Order Type-Dependent Parameter', 'OPL8 ( 2*/1*/3* )', '', 'Create', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(200, 'MRP, Production Order', 'Tambahan centang PP01, Implementation', '', '', 'Check', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(201, 'MRP, Production Order', 'Define Confirmation Parameter', 'OPK4 (2*/1*/3* )', '', 'Create', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(202, 'MRP, Production Order', 'Define Default Value', 'OPJG', '', 'Create', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(203, 'MRP, Production Order', 'Maintain Checking Control', 'OPJK', '', 'Create', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(204, 'MRP, Production Order', 'Activate MRP dan Set up Planning File', 'OMDU', '', 'Check', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(205, 'MRP, Production Order', 'Define Order Type for Conversion to Production/Process Order', 'OPPE', '', 'Create', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(206, 'MRP, Production Order', 'Define MRP group for each Material group', 'OPPR', '', 'Create', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(207, 'MRP, Production Order', 'Define Planning Horizon', 'OMDX', '', 'Create', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(208, 'MRP, Production Order', 'Define parameter for determining basic dates', 'SPRO – Production – MRP – Schedulling & Capac', '', 'Check', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(209, 'MRP, Production Order', 'Define available check for component', 'OPPJ', '', 'Create', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(210, 'MRP, Production Order', 'Maintain carry out maintenance all', 'OPPQ', '', 'alll maint', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(211, 'MRP, Production Order', 'Set Up Production Scheduler Group', 'OPCH', '', 'Create', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(212, 'MRP, Production Order', 'Define Production Scheduling for Process Orders ', 'CORY', '', 'Create', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(213, 'MRP, Production Order', 'Determinine Person Responsible – work Center', 'SPRO Production – Basic Data – Work Center  –', '', 'Create', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(214, 'MRP, Production Order', 'valuation variants order costing', 'OPK9', '', 'Create', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(215, 'MRP, Production Order', 'Order type - dependent parameters', 'COR4', '', 'Create', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(216, 'Maintain tabel/field program ', 'Sloc Kode Material', 'SM30', 'ZBOTOL_SLOC', 'Check Only', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(217, 'Maintain tabel/field program ', 'Kode + isi Botol', 'SM30', 'ZCAP_BOTOL', 'Check Only', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(218, 'Maintain tabel/field program ', 'LIVE PP', 'SM30', 'ZLIVE_PP', 'centang', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(219, 'Maintain tabel/field program ', 'LIVE PP + BATCH', 'SM30', 'ZLIVE_BATCH', 'centang', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(220, 'Maintain tabel/field program', 'Kapasitas Produksi', 'ZPPENH016', 'Kapasitas Design, Kapasitas Commisioning', 'Create', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(221, 'Maintain tabel/field program', 'Mode ASP', 'ZPPENH016', 'Mode ASP 1/ 2', 'Create', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(222, 'Maintain tabel/field program', 'Bahan Baku Mixed Gas', 'ZPPENH016', 'Kode material Mixed Gas Bahan baku yang dipak', 'Create', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(223, 'Maintain tabel/field program', 'Map Plant dan sloc mixed Gas', 'ZPPENH016', 'Sloc mixed Gas', 'Create', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(224, 'Maintain tabel/field program', 'Mapping SlocPipeline', 'ZPPENH016', 'Produksi Pipeline yang ada', 'Create', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(225, 'Maintain tabel/field program', 'Mapping Sloc tangki', 'ZPPENH016', 'Sloc tangki yang dipakai produksi', 'Create', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(226, 'Maintain tabel/field program', 'Mapping Sloc transfer', 'ZPPENH016', 'Mapping mobil distribusi yang dipakai per kod', 'Create', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(227, 'Maintain tabel/field program', 'Mapping report PP', 'ZPPENH016', 'Mapping report PP yg dikirim lewat email', 'Via Email', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(228, 'Enterprise Structure (Def: Financial Accounti', 'Define company', 'OX15', '', 'Check Only', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(229, 'Enterprise Structure (Def: Financial Accounti', 'Define Credit Control Area', 'OB45', '', 'Check Only', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(230, 'Enterprise Structure (Def: Financial Accounti', 'Define Business Area', 'OX03', '', 'Check Only', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(231, 'Enterprise Structure (Def: Logistics-Plant)', 'Define Plant', 'OX10', '', 'Check Only', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(232, 'Enterprise Structure (Def: Logistics-Division', 'Define Division', 'OVXD', 'V_TSPA', 'Check Only', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(233, 'Enterprise Structure (Def: Sales & Distributi', 'Define, copy, delete, check sales organization', 'OVX5', 'V_TVKO', 'Create', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(234, 'Enterprise Structure (Def: Sales & Distributi', 'Define, copy, delete, check distribution channel', 'OVXI', 'V_TVTW', 'Check Only', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(235, 'Enterprise Structure (Def: Sales & Distributi', 'Maintain sales office', 'OVX1', 'V_TVBUR', 'Create', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(236, 'Enterprise Structure (Def: Logistics Executio', 'Define, copy, delete, check shipping point', 'OVXD', 'V_TVST', 'Create', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(237, 'Enterprise Structure (Asg: Logistics General)', 'Assign Business Area to Plant/Valuation Area and Division', 'OMJ7', '', 'Create', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(238, 'Enterprise Structure (Asg: Sales & Distributi', 'Assign sales organization to company code', 'OVX3 / OVX3N', 'V_TVKO_ASSIGN', 'Create', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(239, 'Enterprise Structure (Asg: Sales & Distributi', 'Assign distribution channel to sales organization', 'OVXK (V_TVKOV_ASSIGN)', 'V_TVKOV_ASSIGN', 'Create', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(240, 'Enterprise Structure (Asg: Sales & Distributi', 'Assign division to sales organization', 'OVXA /  OVXAN (V_TVKOS_ASSIGN)', 'V_TVKOS_ASSIGN', 'Create', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(241, 'Enterprise Structure (Asg: Sales & Distributi', 'Set up sales area', 'OVXG (V_TVTA_ASSIGN)', 'V_TVTA_ASSIGN', 'Create', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(242, 'Enterprise Structure (Asg: Sales & Distributi', 'Assign sales office to sales area', 'OVXM (V_TVKBZ_ASSIGN)', 'V_TVKBZ_ASSIGN', 'Create', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(243, 'Enterprise Structure (Asg: Sales & Distributi', 'Assign sales organization - distribution channel - plant', 'OVX6 (V_TVKWZ_ASSIGN)', 'V_TVKWZ_ASSIGN', 'Create', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(244, 'Enterprise Structure (Asg: Sales & Distributi', 'Assign sales area to credit control area', 'OVFL (V_TVTA_KKB)', 'V_TVTA_KKB', 'Create', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(245, 'Enterprise Structure (Asg: BA Acct Assignment', 'Define Rules By Sales Area', 'OVF2', 'V_TVTA_GRE', 'Create', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(246, 'Enterprise Structure (Asg: BA Acct Assignment', 'Assign Business Area To Plant And Division', 'OVX2', 'V_T134G_WS', 'Check Only', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(247, 'Enterprise Structure (Asg: Logistics Executio', 'Assign shipping point to plant', 'OVXC', '', 'Create', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(248, 'Logistics General (LIS Updating Control)', 'Assign Update Group at Item Level', 'OVRP', '', 'Create', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(249, 'Logistics General (LIS Updating Control)', 'Assign Update Group at Header Level', 'OVRO', '', 'Create', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(250, 'Sales & Distribution (Master Data)', 'Combine distribution channels', 'OVAM', '', 'Create', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(251, 'Sales & Distribution (Master Data)', 'Combine divisions', 'OVAN', '', 'Create', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(252, 'Sales & Distribution (Assign Pricing Procedur', 'Define Pricing Procedure Determination', 'OVKK', '', 'Create', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(253, 'Sales & Distribution (Assign Pricing Procedur', 'Define Pricing Procedure Determination (IB)', 'OVKK', '', 'Create', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(254, 'Sales & Distribution (Taxes)', 'Maintain Sales Tax Identification Number Determination', 'V_TVKO_TAX', '', 'Create', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(255, 'Sales & Distribution (Assign G/L)', '1 – Cust.Grp/MaterialGrp/AcctKey', 'VKOA (C001)', 'C001', 'Create', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(256, 'Sales & Distribution (Assign G/L)', '3 – Material Grp/Acct Key', 'VKOA (C003)', 'C003', 'Create', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(257, 'Sales & Distribution (Assign G/L)', '5 – Acct Key', 'VKOA (C005)', 'C005', 'Create', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(258, 'Sales & Distribution (Assign G/L)', '501 – Sales org./Ord.reason/Acct key', 'VKOA (C501)', 'C501', 'Create', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(259, 'Sales & Distribution (Assign Sales Area to Sa', 'Combine sales organizations', 'OVAO (V_TVKOS_AU)', 'V_TVKOS_AU', 'Create', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(260, 'Sales & Distribution (Assign Sales Area to Sa', 'Combine distribution channels', 'OVAO (V_TVKOV_AU)', 'V_TVKOV_AU', 'Create', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(261, 'Sales & Distribution (Assign Sales Area to Sa', 'Combine divisions', 'OVAO (V_TVKOS_AU)', 'V_TVKOS_AU', 'Create', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(262, 'Sales & Distribution (Assign Sales Area to Sa', 'Assign sales order types permitted for sales areas', 'OVAO (V_TVAKZ)', 'V_TVAKZ', 'Check Only', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(263, 'Sales & Distribution (CAS Sales Summary)', 'Assign Default View To User', 'V80C', '', 'Create', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(264, 'Logistics Execution (Ship Point & Goods Rcv P', 'Shipping Points Determination', '0VVW', '', 'Create', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(265, 'Number Range SD', 'Define Number Ranges for Sales Doc.', 'VN01', '', 'Create', '', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(266, 'Number Range SD', 'Assign MWST = 0%', 'VK11', '', 'Create', '', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(267, 'Number Range SD', 'BOM MP', 'LSMW', '', 'Create', '', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(268, 'Number Range SD', 'BOM MR', 'LSMW', '', 'Create', '', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(269, 'Number Range SD', 'Create Customer', 'XD01', '', 'Create', '', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(270, 'Table (SM30)', 'Table View Sloc (View of ZSDRPT_035_SLOC)', 'ZSDRPT_035_SLOCV ', 'SM30', 'Create', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(271, 'Table (SM30)', 'Tabel Numrange SD (Number Ranges Mapping Table)', 'ZNUMRANGE  ', 'SM30', 'Create', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(272, 'Table (SM30)', 'Tabel Numrange SD (Tabel Numbering Modul SD)', 'ZSD_NUMBER ', 'SM30', 'Create', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(273, 'Table (SM30)', 'Tabel Release Credit (Tabel Hak Release Credit Limit)', 'ZRELEASE_CREDIT', 'SM30', 'Create', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(274, 'Table (SM30)', 'Tabel Release Pricing (Master User and Release Code)', 'ZPRICING_USER', 'SM30', 'Create', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(275, 'Table (SM30)', 'Tabel User Release Pricing (Maintenance view of ZPRICING_STATUS)', 'ZPRICING_STATUSV ', 'SM30', 'Check Only', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(276, 'Table (SM30)', 'Table SJ hrs GI (User Exit untuk cetak surat jalan & GI)', 'ZCETAKSJEXIT', 'SM30', 'Create', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(277, 'Table (SM30)', 'Tabel Sign Invoice (Hormat Kami Untuk Sign Invoice)', 'ZINV_HORMAT  ', 'SM30', 'Create', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(278, 'Table (SM30)', 'Tabel Sign Surat Jalan (Nama kepala untuk sign surat jalan)', 'ZSJ_KEPALA ', 'SM30', 'Create', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(279, 'Table (SM30)', 'Tabel Kendaraan (Number Ranges for Surat Perintah Kirim (SPK) - Liquid)', 'ZNKEND ', 'SM30', 'Create', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(280, 'Table (SM30)', 'Tabel SPK', 'ZNUM_LIQ  ', 'SM30', 'Create', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(281, 'Table (SM30)', 'Tabel packing (Number Range for Packing List Order)', 'ZPACKNR ', 'SM30', 'Create', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(282, 'Table (SM30)', 'Tabel group (Tabel definisi customer  antar grup)   ', 'ZANTARGRUP', 'SM30', 'Create', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(283, 'Table (SM30)', 'Tabel Number Botol Asset (Tabel Number Botol Asset)', 'ZTBANR', 'SM30', 'Create', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(284, 'Table (SM30)', 'Tabel Number Botol Pinjaman (Tabel Number Botol Pinjaman)', 'ZTBPNR', 'SM30', 'Create', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(285, 'Table (SM30)', 'Tabel Batch (Tabel Live Batch)', 'ZLIVE_BATCH', 'SM30', 'Create', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(286, 'Table (SM30)', 'Tabel pemusatan (Customer yang termasuk pajak terpusat)', 'ZTERPUSAT    ', 'SM30', 'Create', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(287, 'Table (SM30)', 'Tabel Customer Antar Grup (Customer Antar Grup)', 'ZANTARGRUP', 'SM30', 'Create', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(288, 'Table (SM30)', 'Table exit saldo MR (Table control user exit SD)', 'ZUSEREXIT_SD  ', 'SM30', 'Check Only', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(289, 'Table (SM30)', 'Table exit SN Btl MG (Table control user exit SD)', 'ZUSEREXIT_SD2 ', 'SM30', 'Check Only', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(290, 'Table (SM30)', 'Table Bgrnd btl MR (BMC) (Cek kode barang botol MR full name (BMC))', 'ZPLANT_MR_FULL ', 'SM30', 'Create', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(291, 'Table (SM30)', 'Tabel F.Pajak (FPS-Business Area )', 'ZGSBER_2008 ', 'SM30', 'Create', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(292, 'Table (SM30)', 'Tabel area sirkulasi btl (Daerah Sirkulasi Botol)', 'ZDAERAH_BOTOL ', 'SM30', 'Create', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(293, 'Table (SM30)', 'Tabel daerah cust (Master daerah customer untuk sirkulasi botol)', 'ZDAERAH_CUST  ', 'SM30', 'Create', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(294, 'Table (SM30)', 'Table Bgrnd btl MR (Tabel hasil background zsdrpt_028 u/ botol MR)', 'ZSDRPT_028_BGND ', 'SM30', 'Create', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(295, 'Table (SM30)', 'Table report Asset Btl (Table Penanda Tangan Daftar Asset)', 'ZTTD_DAFTAR_ASET  ', 'SM30', 'Create', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `m_check`
--
ALTER TABLE `m_check`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=505;

--
-- AUTO_INCREMENT for table `m_modul`
--
ALTER TABLE `m_modul`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `m_uat_scn`
--
ALTER TABLE `m_uat_scn`
  MODIFY `uat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `m_uat_step`
--
ALTER TABLE `m_uat_step`
  MODIFY `id_step` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userno` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `v_check`
--
ALTER TABLE `v_check`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=512;

--
-- AUTO_INCREMENT for table `v_uat`
--
ALTER TABLE `v_uat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
