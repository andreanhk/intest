-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2018 at 08:47 AM
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
-- Table structure for table `m_check`
--

CREATE TABLE `m_check` (
  `c_id` int(11) NOT NULL,
  `ccat` varchar(45) DEFAULT NULL,
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

INSERT INTO `m_check` (`c_id`, `ccat`, `ctype`, `ctypedesc`, `ctcode`, `ctable`, `cstat`, `cmodul`, `chg_by`, `chg_date`) VALUES
(1, '', 'Koreksi Report', 'ZFIRPT_008_F01 FI Reporting - Kas Bank, Voucher', '', '', '', 'ABAP', NULL, NULL),
(2, '', 'Koreksi Report', 'ZFIRPT_038_F01 Cetak Faktur Pajak', '', '', '', 'ABAP', NULL, NULL),
(3, '', 'Koreksi Report', 'ZFIRPT_039_F01 Re-print Faktur Pajak Standart', '', '', '', 'ABAP', NULL, NULL),
(4, '', 'Koreksi Report', 'ZFIRPT_040_F01 Retur Faktur Pajak', '', '', '', 'ABAP', NULL, NULL),
(5, '', 'Koreksi Report', 'ZFIRPT_042_F01 Cetak Faktur Pajak Own Consumption', '', '', '', 'ABAP', NULL, NULL),
(6, '', 'Koreksi Report', 'ZFIRPT_043_F01 Re-print Faktur Pajak Own Consumption', '', '', '', 'ABAP', NULL, NULL),
(7, '', 'Koreksi Report', 'ZFIENH_007_F01 Tanda Terima Nota Penjualan', '', '', '', 'ABAP', NULL, NULL),
(8, '', 'Koreksi Report', 'ZMMENH_006_F01 Penerimaan Barang Produksi (ZMMENH006)', '', '', '', 'ABAP', NULL, NULL),
(9, '', 'Koreksi Report', 'ZMMENH_007 Transfer Batch (ZMMENH007)', '', '', '', 'ABAP', NULL, NULL),
(10, '', 'Koreksi Report', 'ZMMENH_008 Transfer Posting Storage Location', '', '', '', 'ABAP', NULL, NULL),
(11, '', 'Koreksi Report', 'ZMMENH_008_F01 Transfer Posting Storage Location', '', '', '', 'ABAP', NULL, NULL),
(12, '', 'Koreksi Report', 'ZMMENH_009_F01 Transfer Posting Storage Location Khusus Speciality + MG', '', '', '', 'ABAP', NULL, NULL),
(13, '', 'Koreksi Report', 'ZMMENH_012 Posting Pembelian', '', '', '', 'ABAP', NULL, NULL),
(14, '', 'Koreksi Report', 'ZMMENH_012_F01 Posting Pembelian', '', '', '', 'ABAP', NULL, NULL),
(15, '', 'Koreksi Report', 'ZMMENH_013_F01 Good Issue (MB1A)', '', '', '', 'ABAP', NULL, NULL),
(16, '', 'Koreksi Report', 'ZMMENH_015 Program Transfer Produksi PGS dan Filling CO2', '', '', '', 'ABAP', NULL, NULL),
(17, '', 'Koreksi Report', 'ZMMENH_027 Transfer Posting Storage Location', '', '', '', 'ABAP', NULL, NULL),
(18, '', 'Koreksi Report', 'ZMMENH_027_F01 Transfer Posting Storage Location', '', '', '', 'ABAP', NULL, NULL),
(19, '', 'Koreksi Report', 'ZMMRPT_001_F01 Print Form', '', '', '', 'ABAP', NULL, NULL),
(20, '', 'Koreksi Report', 'ZMMRPT_009_F01 Cetak SJ titipan (5K2),Pinjaman(502), Pengisian(541), STO (351)', '', '', '', 'ABAP', NULL, NULL),
(21, '', 'Koreksi Report', 'ZSDENH_023_F01 Transaksi Stock Transfer Order', '', '', '', 'ABAP', NULL, NULL),
(22, '', 'Koreksi Report', 'ZSDENH_040_F01 Transfer Packing List Order', '', '', '', 'ABAP', NULL, NULL),
(23, '', 'Koreksi Report', 'ZSDENH_040_SCR1 Transfer Packing List Order', '', '', '', 'ABAP', NULL, NULL),
(24, '', 'Koreksi Report', 'ZSDENH_040_SCR2 Transfer Packing List Order', '', '', '', 'ABAP', NULL, NULL),
(25, '', 'Koreksi Report', 'ZSDRPT_001_F01 SD Reporting', '', '', '', 'ABAP', NULL, NULL),
(26, '', 'Koreksi Report', 'ZSDRPT_004_F01 Cetak invoice', '', '', '', 'ABAP', NULL, NULL),
(27, '', 'Koreksi Report', 'ZSDRPT_005_F01 Cetak Faktur Pajak', '', '', '', 'ABAP', NULL, NULL),
(28, '', 'Koreksi Report', 'ZSDRPT_028_F02 Laporan Sirkulasi Botol', '', '', '', 'ABAP', NULL, NULL),
(29, '', 'Koreksi Tabel', 'ZUSEREXIT_SD', '', '', '', 'ABAP', NULL, NULL),
(30, '', 'Koreksi Tabel', 'ZUSEREXIT_SD2', '', '', '', 'ABAP', NULL, NULL),
(31, '', 'Penyesuaian Smartforms', 'SO', '', '', '', 'ABAP', NULL, NULL),
(32, '', 'Penyesuaian Smartforms', 'SJ', '', '', '', 'ABAP', NULL, NULL),
(33, '', 'Penyesuaian Smartforms', 'Invoice Penjualan', '', '', '', 'ABAP', NULL, NULL),
(34, '', 'Penyesuaian Smartforms', 'Kas Bank Masuk', '', '', '', 'ABAP', NULL, NULL),
(35, '', 'Penyesuaian Smartforms', 'Kas Bank Keluar', '', '', '', 'ABAP', NULL, NULL),
(36, '', 'Penyesuaian Smartforms', 'Cek Masuk', '', '', '', 'ABAP', NULL, NULL),
(37, '', 'Penyesuaian Smartforms', 'Cek Keluar', '', '', '', 'ABAP', NULL, NULL),
(38, '', 'Penyesuaian Smartforms', 'Jurnal Memorial', '', '', '', 'ABAP', NULL, NULL),
(39, '', 'Penyesuaian Smartforms', 'PO', '', '', '', 'ABAP', NULL, NULL),
(40, '', 'Koreksi Exit', 'FM ZCHECKGL_BA', '', '', '', 'ABAP', NULL, NULL),
(41, '', 'Koreksi Exit', 'MV50AFZ1', '', '', '', 'ABAP', NULL, NULL),
(42, '', 'Koreksi Exit', 'ZXMBCU02', '', '', '', 'ABAP', NULL, NULL),
(43, '', 'Pembuatan Background Job', 'MM BALANCE BACKGROUND', '', '', 'Opsional', 'ABAP', NULL, NULL),
(44, '', 'Pembuatan Background Job', 'MM BALANCE BACKGROUND CV', '', '', 'Opsional', 'ABAP', NULL, NULL),
(45, '', 'Pembuatan Background Job', 'MM BALANCE BACKGROUND PJ', '', '', 'Opsional', 'ABAP', NULL, NULL),
(46, '', 'Koreksi Report', '(CC) ZABENH_001_F01 Lock / Unlock User', '', '', '', 'ABAP', NULL, NULL),
(47, '', 'Koreksi Report', '(CC) ZBIBO_CASHFLOW_FO1 Cashflow', '', '', '', 'ABAP', NULL, NULL),
(48, '', 'Koreksi Report', '(CC) ZBIBO_PR Report List Purchase Requisitions', '', '', '', 'ABAP', NULL, NULL),
(49, '', 'Koreksi Report', '(CC) ZCASHFLOW_F01 Cashflow', '', '', '', 'ABAP', NULL, NULL),
(50, '', 'Koreksi Report', '(CC) ZFIENH_007_F01 Tanda Terima Nota Penjualan', '', '', '', 'ABAP', NULL, NULL),
(51, '', 'Koreksi Report', '(CC) ZFIENH_008 Open and Close Posting Periods - Background Jobs', '', '', '', 'ABAP', NULL, NULL),
(52, '', 'Koreksi Report', '(CC) ZFIENH_008_F01 Open and Close Posting Periods - Background Jobs', '', '', '', 'ABAP', NULL, NULL),
(53, '', 'Koreksi Report', '(CC) ZFIENH_019_F01 Program Input Bank Keluar', '', '', '', 'ABAP', NULL, NULL),
(54, '', 'Koreksi Report', '(CC) ZFIRPT_056 Delivery Productivity Report - Actual', '', '', '', 'ABAP', NULL, NULL),
(55, '', 'Koreksi Report', '(CC) ZFIRPT_059 Plan and Actual Comparison for Statistical Key Figure', '', '', '', 'ABAP', NULL, NULL),
(56, '', 'Koreksi Report', '(CC) ZFIRPT_065 Laporan Laba Rugi & Penghasilan Komprehensif Lain', '', '', '', 'ABAP', NULL, NULL),
(57, '', 'Koreksi Report', '(CC) ZFIRPT_065_TOP Laporan Laba Rugi & Penghasilan Komprehensif Lain', '', '', '', 'ABAP', NULL, NULL),
(58, '', 'Koreksi Report', '(CC) ZHRRPT_002_F01 Laporan Karyawan Masuk / Keluar / Turn Over Karyawan', '', '', '', 'ABAP', NULL, NULL),
(59, '', 'Koreksi Report', '(CC) ZINIT_BAL3 MM Balance Background', '', '', '', 'ABAP', NULL, NULL),
(60, '', 'Koreksi Report', '(CC) ZFIINT_001 Upload Interface Data Sales & Cash Bank', '', '', '', 'ABAP', NULL, NULL),
(61, '', 'Koreksi Report', '(CC) ZMMENH_002 MM - Updating Previous Period', '', '', '', 'ABAP', NULL, NULL),
(62, '', 'Koreksi Report', '(CC) ZMMENH_002_F01 MM - Updating Previous Period', '', '', '', 'ABAP', NULL, NULL),
(63, '', 'Koreksi Report', '(CC) ZMMENH_012_F01 Posting Pembelian', '', '', '', 'ABAP', NULL, NULL),
(64, '', 'Koreksi Report', '(CC) ZMMENH_020 MM Balance Background', '', '', '', 'ABAP', NULL, NULL),
(65, '', 'Koreksi Report', '(CC) ZMMENH_021 MM Balance Background stock di Customer and Vendor', '', '', '', 'ABAP', NULL, NULL),
(66, '', 'Koreksi Report', '(CC) ZMMENH_029 MM Balance Background stock pinjaman', '', '', '', 'ABAP', NULL, NULL),
(67, '', 'Koreksi Report', '(CC) ZMMENH_030 MM Balance Background stock MR Customer', '', '', '', 'ABAP', NULL, NULL),
(68, '', 'Koreksi Report', '(CC) ZSDENH_010_F01 Timbangan - Liquid', '', '', '', 'ABAP', NULL, NULL),
(69, '', 'Koreksi Report', '(CC) ZSDENH_012_F01 Pricing Online SD', '', '', '', 'ABAP', NULL, NULL),
(70, '', 'Koreksi Report', '(CC) ZSDENH_023 Transaksi Stock Transfer Order', '', '', '', 'ABAP', NULL, NULL),
(71, '', 'Koreksi Report', '(CC) ZSDENH_039 Packing List Order', '', '', '', 'ABAP', NULL, NULL),
(72, '', 'Koreksi Report', '(CC) ZSDENH_040 Transfer Packing List Order', '', '', '', 'ABAP', NULL, NULL),
(73, '', 'Koreksi Report', '(CC) ZSDENH_054_F01 Timbangan - Liquid', '', '', '', 'ABAP', NULL, NULL),
(74, '', 'Koreksi Report', '(CC) ZRGGBS000', '', '', '', 'ABAP', NULL, NULL),
(75, '', 'Koreksi Exit', '(CC) FM ZCHECKGL_ORDER', '', '', '', 'ABAP', NULL, NULL),
(76, '', 'Koreksi Exit', '(CC) ZXCOFU13', '', '', '', 'ABAP', NULL, NULL),
(77, '', 'Koreksi Exit', '(CC) ZXCOFU14', '', '', '', 'ABAP', NULL, NULL),
(78, '', 'Koreksi Exit', '(CC) ZXCOFU23', '', '', '', 'ABAP', NULL, NULL),
(79, '', 'Pembuatan Background Job', '(CC) OPEN/CLOSE POSTING PERIODS', '', '', '', 'ABAP', NULL, NULL),
(80, '', 'Pembuatan Background Job', '(CC) ZFIENH_013', '', '', '', 'ABAP', NULL, NULL),
(81, '', 'Pembuatan Background Job', '(CC) ZFIENH_009 FLQAC & FLQAD', '', '', 'Modifikasi', 'ABAP', NULL, NULL),
(82, 'CC', 'Enterprise Structure', 'Define Comp. Code', 'SPRO', 'V_T880', 'Create', 'FICO', NULL, NULL),
(83, 'BA', 'Enterprise Structure', 'Define BA', 'SPRO', 'V_TGSB', 'Create', 'FICO', NULL, NULL),
(84, 'CC', 'Enterprise Structure', 'Edit Company Code Data', 'SPRO', 'V_T001', 'Create', 'FICO', NULL, NULL),
(85, '', 'Enterprise Structure', 'Define Location', 'SPRO', '', 'Check', 'FICO', NULL, NULL),
(86, 'CC', 'Assignment', 'Assign Company Code to Company', 'SPRO', 'V_001_Y', 'Check', 'FICO', NULL, NULL),
(87, 'CC', 'Assignment', 'Assign Company Code to Credit Control Area', 'SPRO', 'V_001_X', 'Create', 'FICO', NULL, NULL),
(88, 'BA', 'Assignment', 'Assign Business Area to Consolidation Business Area', 'SPRO', 'V_GSB_A', 'Check', 'FICO', NULL, NULL),
(89, 'CC', 'Assignment', 'Assign Company Code to Financial Management Area', 'SPRO', 'V_T001_FM', 'Create', 'FICO', NULL, NULL),
(90, 'CC', 'Assignment', 'Assign Company Code to Controlling Area', 'OX19', '', 'Create', 'FICO', NULL, NULL),
(91, 'CC', 'Financial Accounting Global Setting', 'Enter Global Parameters', 'SPRO', 'V_001_B', 'Check', 'FICO', NULL, NULL),
(92, 'CC', 'Financial Accounting Global Setting', 'Activate Cost of Sales Accounting for Preparation', 'SPRO', 'V_001_COS', 'Create', 'FICO', NULL, NULL),
(93, 'CC', 'Financial Accounting Global Setting', 'Activate Cost of Sales Accounting ', 'SPRO', 'V_001_COS', 'Check', 'FICO', NULL, NULL),
(94, '', 'Financial Accounting Global Setting', 'Activate Substitution', 'OBBZ', '', 'Create', 'FICO', NULL, NULL),
(95, 'CC', 'Financial Accounting Global Setting', 'Enable Business Area Balance Sheet', 'OB65', '', 'Create', 'FICO', NULL, NULL),
(96, 'COA + CC', 'Financial Accounting Global Setting', 'Assign Company Code to Fiscal Year Variant', 'OB37', '', 'Create', 'FICO', NULL, NULL),
(97, 'CC', 'Financial Accounting Global Setting', 'Define variants for Open posting Periods', 'SPRO', 'V_T010O', 'Create', 'FICO', NULL, NULL),
(98, 'CC', 'Financial Accounting Global Setting', 'Open and Close Posting Periods', 'SPRO', 'V_T001B', 'Create', 'FICO', NULL, NULL),
(99, 'CC', 'Financial Accounting Global Setting', 'Assign Variants to Company Code', 'SPRO', 'V_001_R', 'Create', 'FICO', NULL, NULL),
(100, 'CC', 'Financial Accounting Global Setting', 'Define Document Number Ranges', 'FBN1', '', 'Create', 'FICO', NULL, NULL),
(101, 'BA', 'Financial Accounting Global Setting', 'Validation in Accounting Documents', 'OB28', '', 'Create', 'FICO', NULL, NULL),
(102, 'CC', 'Financial Accounting Global Setting', 'Substitution in Accounting Documents', 'OBBH', '', 'Create', 'FICO', NULL, NULL),
(103, 'CC', 'Financial Accounting Global Setting', 'Define Maximum Exchange Rate Difference per Company Code', 'SPRO', 'V_001_D', 'Create', 'FICO', NULL, NULL),
(104, 'CC', 'Financial Accounting Global Setting', 'Define Field Status Variants', 'SPRO', 'V_T004V', 'Create', 'FICO', NULL, NULL),
(105, 'CC', 'Financial Accounting Global Setting', 'Assign Company Code to Field Status Variants', 'SPRO', 'V_001_P', 'Create', 'FICO', NULL, NULL),
(106, 'CC', 'Financial Accounting Global Setting', 'Screen Variants for Document Entry', 'SPRO', 'V_001_N', 'Check', 'FICO', NULL, NULL),
(107, 'CC', 'Financial Accounting Global Setting', 'Enable Fiscal Year Default', 'SPRO', 'V_001_G', 'Create', 'FICO', NULL, NULL),
(108, 'CC', 'Financial Accounting Global Setting', 'Default Value Date', 'SPRO', 'V_001_K', 'Create', 'FICO', NULL, NULL),
(109, 'C', 'Financial Accounting Global Setting', 'Define Condition Types', 'SPRO', 'V_T685A', 'Check', 'FICO', NULL, NULL),
(110, '', 'Financial Accounting Global Setting', 'Define Procedures', 'SPRO', 'V_T683', 'Check', 'FICO', NULL, NULL),
(111, '', 'Financial Accounting Global Setting', 'Check and Change Settings for Tax Processing', 'OBCN', '', 'Check', 'FICO', NULL, NULL),
(112, 'C', 'Financial Accounting Global Setting', 'Assign Country to Calculation Procedure', 'SPRO', 'V_005_E', 'Check', 'FICO', NULL, NULL),
(113, 'C', 'Financial Accounting Global Setting', 'Define Tax Codes for Sales and Purchases', 'FTXP', '', 'Check', 'FICO', NULL, NULL),
(114, 'CC', 'Financial Accounting Global Setting', 'Assign Company Code to Document Date for Tax Determination', 'SPRO', 'V_001_Z', 'Check', 'FICO', NULL, NULL),
(115, 'CC', 'Financial Accounting Global Setting', 'Specify Base Amount', 'OB69', '', 'Check', 'FICO', NULL, NULL),
(116, 'CC', 'Financial Accounting Global Setting', 'Change Foreign Currency Translation', 'SPRO', 'V_001_V', 'Check', 'FICO', NULL, NULL),
(117, '', 'Financial Accounting Global Setting', 'Define Tax Accounts', 'OB40', '', 'Check', 'FICO', NULL, NULL),
(118, 'CC', 'Financial Accounting Global Setting', 'Assign Tax Codes for Non-Taxable Transactions', 'OBCL', '', 'Check', 'FICO', NULL, NULL),
(119, 'COA', 'General Ledger Accounting', 'Edit Chart of Accounts List', 'OB13', '', 'Check', 'FICO', NULL, NULL),
(120, 'CC', 'General Ledger Accounting', 'Assign Company Code to Chart of Accounts ', 'OB62', '', 'Create', 'FICO', NULL, NULL),
(121, 'COA', 'General Ledger Accounting', 'Define Account Group', 'OBD4', '', 'Check', 'FICO', NULL, NULL),
(122, 'COA', 'General Ledger Accounting', 'Define Retained Earnings Account', 'OB53', 'GL Acc. 3211.010', 'Check', 'FICO', NULL, NULL),
(123, '', 'General Ledger Accounting', 'Define Document Types', 'OBA7', '', 'Check', 'FICO', NULL, NULL),
(124, 'COA', 'General Ledger Accounting', 'Prepare Automatic Clearing', 'SPRO', 'V_TF123', 'Check', 'FICO', NULL, NULL),
(125, '', 'General Ledger Accounting', 'Define Tolerance Groups for G/L Accounts', 'SPRO', 'V_T043S', 'Create', 'FICO', NULL, NULL),
(126, '', 'General Ledger Accounting', 'Define Tolerance Groups for Employees', 'SPRO', 'V_T043T', 'Create', 'FICO', NULL, NULL),
(127, 'C', 'General Ledger Accounting', 'Define Valuation Methods', 'OB59', '', 'Check', 'FICO', NULL, NULL),
(128, 'COA', 'General Ledger Accounting', 'Prepare Automatic Postings for Foreign Currency Valuation', 'OBA1', '', 'Check', 'FICO', NULL, NULL),
(129, 'COA', 'General Ledger Accounting', 'Define Accounts for Subsequent Adjustment', 'OBXM', '', 'Check', 'FICO', NULL, NULL),
(130, 'COA', 'General Ledger Accounting', 'Define Financial Statement Versions', 'SPRO', 'V_T011', 'Check', 'FICO', NULL, NULL),
(131, 'CC', 'General Ledger Accounting', 'Assign Company Codes to Tax on Sales/Purchases Groups', 'OBC6', '', 'Check', 'FICO', NULL, NULL),
(132, 'C', 'Accounts Receivable and Accounts Payable', 'Define Account Groups with Screen Layout (Customers)', 'SPRO', 'V_T077D', 'Check', 'FICO', NULL, NULL),
(133, 'C', 'Accounts Receivable and Accounts Payable', 'Define Industries', 'SPRO', 'V_T016', 'Check', 'FICO', NULL, NULL),
(134, '', 'Accounts Receivable and Accounts Payable', 'Create Number Ranges for Customer Accounts', 'XDN1', '', 'Check', 'FICO', NULL, NULL),
(135, '', 'Accounts Receivable and Accounts Payable', 'Assign Number Ranges to Customer Account Groups', 'SPRO', 'V_077D_B', 'Check', 'FICO', NULL, NULL),
(136, '', 'Accounts Receivable and Accounts Payable', 'Define Additional Fields for Line Item Display', 'SPRO', 'V_T021S', 'Check', 'FICO', NULL, NULL),
(137, '', 'Accounts Receivable and Accounts Payable', 'Define Account Groups with Screen Layout (Vendors)', 'SPRO', 'V_T077K', 'Check', 'FICO', NULL, NULL),
(138, '', 'Accounts Receivable and Accounts Payable', 'Create Number Ranges for Vendor Accounts', 'XKN1', '', 'Check', 'FICO', NULL, NULL),
(139, '', 'Accounts Receivable and Accounts Payable', 'Assign Number Ranges to Vendor Account Groups', 'SPRO', 'V_077K_B', 'Check', 'FICO', NULL, NULL),
(140, '', 'Accounts Receivable and Accounts Payable', 'Define Cash Discount base for Incoming Invoices', 'SPRO', 'V_001_M', 'Check', 'FICO', NULL, NULL),
(141, '', 'Accounts Receivable and Accounts Payable', 'Define Tolerances (Vendors)', 'SPRO', 'V_T043G', 'Create', 'FICO', NULL, NULL),
(142, '', 'Accounts Receivable and Accounts Payable', 'Set Up All Company Codes for Payment Transactions', 'SPRO', 'V_T042', 'Create', 'FICO', NULL, NULL),
(143, '', 'Accounts Receivable and Accounts Payable', 'Define Cash Discount base for Outgoing Invoices', 'SPRO', 'V_001M', 'Check', 'FICO', NULL, NULL),
(144, '', 'Accounts Receivable and Accounts Payable', 'Define Tax Accounts for Outgoing Invoices', 'OB40', '', 'Check', 'FICO', NULL, NULL),
(145, '', 'Accounts Receivable and Accounts Payable', 'Define Tolerances (Customers)', 'SPRO', 'V_T043G', 'Check', 'FICO', NULL, NULL),
(146, 'C', 'Accounts Receivable and Accounts Payable', 'Define Accounts for Exchange Rate Differences', 'OB09', '', 'Check', 'FICO', NULL, NULL),
(147, 'C', 'Accounts Receivable and Accounts Payable', 'Define Account for Rounding Differences', 'OB00', '', 'Check', 'FICO', NULL, NULL),
(148, '', 'Accounts Receivable and Accounts Payable', 'Define Reconciliation accounts for Customer Down Payments', 'OBXR', '', 'Check', 'FICO', NULL, NULL),
(149, '', 'Accounts Receivable and Accounts Payable', 'Define Account for Tax Clearing', 'OBXB', '', 'Check', 'FICO', NULL, NULL),
(150, '', 'Accounts Receivable and Accounts Payable', 'Define Alternative Reconciliation Accounts for Down Payments', 'OBYR', '', 'Check', 'FICO', NULL, NULL),
(151, '', 'Accounts Receivable and Accounts Payable', 'Define Alternative Reconciliation Accounts for Customers', 'OBXY', '', 'Check', 'FICO', NULL, NULL),
(152, '', 'Accounts Receivable and Accounts Payable', 'Define Alternative Reconciliation Accounts for Vendors', 'OBXT', '', 'Check', 'FICO', NULL, NULL),
(153, '', 'Accounts Receivable and Accounts Payable', 'Activate Test Scenario for Request for Adjustment Posting', 'SPRO', 'V_PCRTYPE', 'Check', 'FICO', NULL, NULL),
(154, '', 'Accounts Receivable and Accounts Payable', 'Assign Adjustment Postings to Scenario', 'SPRO', 'V_PCRACT', 'Check', 'FICO', NULL, NULL),
(155, '', 'Accounts Receivable and Accounts Payable', 'Define Reasons for Reversal', 'SPRO', 'T041CT', 'Check', 'FICO', NULL, NULL),
(156, '', 'Accounts Receivable and Accounts Payable', 'Define Number Ranges for Interest Forms', 'FBN1', '', 'Create', 'FICO', NULL, NULL),
(157, '', 'Accounts Receivable and Accounts Payable', 'Assign Permitted Credit Control Areas to Company Code', 'SPRO', 'T001CM', 'Create', 'FICO', NULL, NULL),
(158, '', 'Accounts Receivable and Accounts Payable', 'Define Risk Categories', 'SPRO', 'V_T691A', 'Check', 'FICO', NULL, NULL),
(159, 'BA', 'Bank Accounting', 'Define House Banks', 'FI12', '', 'Create', 'FICO', NULL, NULL),
(160, 'CC', 'Bank Accounting', 'Define Number Range Intervals for Cash Journal Documents', 'FBCJC1', '', 'Create', 'FICO', NULL, NULL),
(161, 'BA', 'Bank Accounting', 'Set Up Cash Journal', 'FBCJC0', '', 'Create', 'FICO', NULL, NULL),
(162, 'BA', 'Bank Accounting', 'Create, Change, Delete Business Transactions', 'FBCJC2', '', 'Create', 'FICO', NULL, NULL),
(163, 'CC', 'Bank Accounting', 'Set Up Print Parameters for Cash Journal', 'FBCJC3', '', 'Create', 'FICO', NULL, NULL),
(164, 'C', 'Asset Accounting', 'Copy Reference Chart of Depreciation/Depreciation Areas', 'EC08', '', '-', 'FICO', NULL, NULL),
(165, 'C', 'Asset Accounting', 'Specify Description of Chart of Depreciation', 'SPRO', 'V_T096_00', 'Check', 'FICO', NULL, NULL),
(166, 'CC', 'Asset Accounting', 'Assign Chart of Depreciation to Company Code', 'OAOB', '', 'Create', 'FICO', NULL, NULL),
(167, 'C', 'Asset Accounting', 'Specify depreciation areas for ordinary depreciation', 'OABN', '', 'Check', 'FICO', NULL, NULL),
(168, 'C', 'Asset Accounting', 'Specify depreciation areas for special depreciation', 'OABS', '', 'Check', 'FICO', NULL, NULL),
(169, 'C', 'Asset Accounting', 'Specify depreciation areas for unplanned depreciation', 'OABU', '', 'Check', 'FICO', NULL, NULL),
(170, 'C', 'Asset Accounting', 'Specify depreciation areas for transfer of reserves', 'OABM', '', 'Check', 'FICO', NULL, NULL),
(171, 'C', 'Asset Accounting', 'Specify depreciation areas for investment support', 'OABX', '', 'Check', 'FICO', NULL, NULL),
(172, 'C', 'Asset Accounting', 'Define How Depreciation Areas Post to General Ledger', 'SPRO', 'V_T093_00N', 'Check', 'FICO', NULL, NULL),
(173, 'C', 'Asset Accounting', 'Define Allowed Entries for User Fields', 'OAVA', '', 'Check', 'FICO', NULL, NULL),
(174, 'C', 'Asset Accounting', 'Copy Asset Classes from Reference', 'SPRO', 'V_ANKA_00', 'Check', 'FICO', NULL, NULL),
(175, 'C', 'Asset Accounting', 'Assign G/L Accounts', 'AO90', '', 'Create', 'FICO', NULL, NULL),
(176, 'CC', 'Asset Accounting', 'Assign Input Tax Indicator for Non-Taxable Acquisitions', 'OBCL', '', 'Create', 'FICO', NULL, NULL),
(177, 'CC', 'Asset Accounting', 'Specify Financial Statement Version for Asset Reports', 'OAYN', '', 'Create', 'FICO', NULL, NULL),
(178, 'C', 'Asset Accounting', 'Specify Description of Chart of Depreciation', 'SPRO', 'V_T096_00', 'Check', 'FICO', NULL, NULL),
(179, 'C', 'Asset Accounting', 'Specify Number Assignment Across Company Codes', 'AO11', '', 'Check', 'FICO', NULL, NULL),
(180, 'C', 'Asset Accounting', 'Specify Account Determination', 'SPRO', 'V_T095A_01', 'Check', 'FICO', NULL, NULL),
(181, 'C', 'Asset Accounting', 'Create Screen Layout Rules', 'SPRO', 'V_T082A_01', 'Check', 'FICO', NULL, NULL),
(182, 'CC', 'Asset Accounting', 'Define Number Range Interval', 'AS08', '', 'Create', 'FICO', NULL, NULL),
(183, 'C', 'Asset Accounting', 'Define Asset Classes', 'OAOA', '', 'Check', 'FICO', NULL, NULL),
(184, 'C', 'Asset Accounting', 'Specify Posting Key for Asset Posting', 'OBYD', '', 'Check', 'FICO', NULL, NULL),
(185, 'C', 'Asset Accounting', 'Define Field Status Variants', 'OBC4', '', 'Check', 'FICO', NULL, NULL),
(186, 'C', 'Asset Accounting', 'Check Assignment of Company Code to Field Status Variant', 'OBC5', '', 'Check', 'FICO', NULL, NULL),
(187, 'C', 'Asset Accounting', 'Specify Document Type for Posting of Depreciation', 'AO71', '', 'Check', 'FICO', NULL, NULL),
(188, 'C', 'Asset Accounting', 'Specify Intervals and Posting Rules', 'OAYR', '', 'Check', 'FICO', NULL, NULL),
(189, 'C', 'Asset Accounting', 'Activate Account Assignment Objects', 'SPRO', 'V_T093_ACCOBJ', 'Check', 'FICO', NULL, NULL),
(190, 'CC', 'Asset Accounting', 'Specify Account Assignment Types for Account Assignment Objects', 'ACSET', '', 'Create', 'FICO', NULL, NULL),
(191, 'C', 'Asset Accounting', 'Set Chart of Depreciation', '?', '', 'Check', 'FICO', NULL, NULL),
(192, '', 'Asset Accounting', 'Define Depreciation Areas', 'SPRO', 'V_T093_00N', 'Check', 'FICO', NULL, NULL),
(193, 'C', 'Asset Accounting', 'Specify Transfer of APC Values', 'OABC', '', 'Check', 'FICO', NULL, NULL),
(194, 'C', 'Asset Accounting', 'Determine Depreciation Areas in the Asset Class', 'OAYZ', '', 'Check', 'FICO', NULL, NULL),
(195, 'C', 'Asset Accounting', 'Specify LVA asset classes', 'OAY2', '', 'Check', 'FICO', NULL, NULL),
(196, 'CC', 'Asset Accounting', 'Specify amount for low value assets', 'OAYK', '', 'Create', 'FICO', NULL, NULL),
(197, 'C', 'Asset Accounting', 'Maintain Depreciation Key', 'AFAMA', '', 'Check', 'FICO', NULL, NULL),
(198, 'C', 'Asset Accounting', 'Define Depreciation Areas for Foreign Currencies', 'OAYH', '', 'Check', 'FICO', NULL, NULL),
(199, 'C', 'Asset Accounting', 'Specify the Use of Parallel Currencies', 'SPRO', 'V_T093A_T093_ALL', 'Check', 'FICO', NULL, NULL),
(200, 'C', 'Asset Accounting', 'Define Screen Layout for Asset Master Data', 'SPRO', 'V_T082A_10', 'Check', 'FICO', NULL, NULL),
(201, 'C', 'Asset Accounting', 'Define Screen Layout for Asset Depreciation Areas', 'AO21', '', 'Check', 'FICO', NULL, NULL),
(202, 'C', 'Asset Accounting', 'Define 4-Character Evaluation Groups', 'OAVA', '', 'Check', 'FICO', NULL, NULL),
(203, 'C', 'Asset Accounting', 'Assign Master Data Fields of Assets and Equipment', 'SPRO', 'V_TAAPM2', 'Check', 'FICO', NULL, NULL),
(204, 'C', 'Asset Accounting', 'Allow Down Payment Transaction Types in Asset Classes', 'OAYB', '', 'Check', 'FICO', NULL, NULL),
(205, 'C', 'Asset Accounting', 'Define Settlement Profile', 'OKO7', '', 'Check', 'FICO', NULL, NULL),
(206, 'CC', 'Asset Accounting', 'Assign Settlement Profile to Company Code', 'OAAZ', '', 'Create', 'FICO', NULL, NULL),
(207, 'C', 'Asset Accounting', 'Define variant for determining default asset value date', 'SPRO', 'V_TABVO', 'Check', 'FICO', NULL, NULL),
(208, 'C', 'Asset Accounting', 'Specify Sequence of Depreciation Areas', 'OAYE', '', 'Check', 'FICO', NULL, NULL),
(209, 'BA', 'Asset Accounting', 'Specify Transfer Date/Last Closed Fiscal Year', 'SPRO', 'V_T093C_08', 'Create', 'FICO', NULL, NULL),
(210, 'BA', 'Asset Accounting', 'Specify Last Period Posted in Prv.System (Transf.During FY)', 'OAYC', '', 'Create', 'FICO', NULL, NULL),
(211, '', 'Financial Supply Chain Management, Cash and Liquidity management', 'Define Account Groups ', 'OT37', '', 'Check', 'FICO', NULL, NULL),
(212, '', 'Financial Supply Chain Management, Cash and Liquidity management', 'Create Field Status Group ', 'OT32', '', 'Check', 'FICO', NULL, NULL),
(213, '', 'Financial Supply Chain Management, Cash and Liquidity management', 'Define Planning Groups', 'SPRO', 'V_T035', 'Check', 'FICO', NULL, NULL),
(214, 'BA', 'Financial Supply Chain Management, Cash and Liquidity management', 'Define Cash Management Account Name', 'SPRO', 'V_T035D', 'Create', 'FICO', NULL, NULL),
(215, '', 'Financial Supply Chain Management, Cash and Liquidity management', 'Define Groupings and Maintain Headers', 'SPRO', 'V_T038P', 'Check', 'FICO', NULL, NULL),
(216, 'BA', 'Financial Supply Chain Management, Cash and Liquidity management', 'Maintain Structure', 'SPRO', 'V_T038', 'Create', 'FICO', NULL, NULL),
(217, '', 'Financial Supply Chain Management, Cash and Liquidity management', 'Prpeare Production Starup and data Setup (Activate Cash Mgt)', 'FDFD(OT29)', '', 'Create', 'FICO', NULL, NULL),
(218, '', 'Financial Supply Chain Management, Cash and Liquidity management', 'Activate Company Code', 'FLQC3', '', 'Create', 'FICO', NULL, NULL),
(219, 'C', 'General Controlling', 'Maintain Controlling Area', 'OKKP', '', 'Check', 'FICO', NULL, NULL),
(220, 'C', 'General Controlling', 'Maintain Number Ranges for Controlling Documents', 'KANK', '', 'Check', 'FICO', NULL, NULL),
(221, 'C', 'General Controlling', 'Assign Currency and Valuation Profile to Controlling Area', '8KEQ', '', 'Check', 'FICO', NULL, NULL),
(222, 'C', 'Cost Element Accounting', 'Maintain Clearing Accounts for Business Area/Functional Area', 'OBXN', '', 'Check', 'FICO', NULL, NULL),
(223, 'C', 'Cost Center Accounting', 'Define Cost Center Categories', 'SPRO', 'V_TKA05', 'Check', 'FICO', NULL, NULL),
(224, 'C', 'Cost Center Accounting', 'Define Exchange Rate Types', 'OB07', '', 'Check', 'FICO', NULL, NULL),
(225, 'C', 'Cost Center Accounting', 'Define Exchange Rates', 'OB08', '', 'Check', 'FICO', NULL, NULL),
(226, 'CC', 'Cost Center Accounting', 'Determine Order Types for Accrual Orders', 'KOT2_OPA', '', 'Create', 'FICO', NULL, NULL),
(227, 'BA', 'Cost Center Accounting', 'Create Plan Distribution', 'KSV7', '', 'Create', 'FICO', NULL, NULL),
(228, 'C', 'Cost Center Accounting', 'Define Allocation Structures', 'KSES', '', 'Check', 'FICO', NULL, NULL),
(229, 'BA', 'Cost Center Accounting', 'Create Plan Assessment', 'KSU7', '', 'Create', 'FICO', NULL, NULL),
(230, 'C', 'Cost Center Accounting', 'Define Cost Component Structure', 'OKTZ', '', 'Check', 'FICO', NULL, NULL),
(231, 'BA', 'Cost Center Accounting', 'Edit Automatic Account Assignment', 'OKB9', '', 'Create', 'FICO', NULL, NULL),
(232, 'BA', 'Cost Center Accounting', 'Define Cost center - Actual Distribution', 'KSV1', '', 'Create', 'FICO', NULL, NULL),
(233, 'BA', 'Cost Center Accounting', 'Define Cost center - Actual Assessment', 'KSU1', '', 'Create', 'FICO', NULL, NULL),
(234, 'CC', 'Internal Order', 'Maintain Number Ranges for Orders', 'KONK', '', 'Create', 'FICO', NULL, NULL),
(235, 'C', 'Internal Order', 'Assign Number Ranges for Unit Costing', 'CKNR', '', 'Check', 'FICO', NULL, NULL),
(236, 'C', 'Internal Order', 'Define Planning Profile For Overall Planning', 'OKOS', '', 'Check', 'FICO', NULL, NULL),
(237, 'CC', 'Internal Order', 'Maintain Planning Profile for Order Types', 'KOAP', '', 'Check', 'FICO', NULL, NULL),
(238, 'C', 'Internal Order', 'Maintain Number Ranges for Overall Planning', 'OK11', '', 'Check', 'FICO', NULL, NULL),
(239, 'C', 'Internal Order', 'Maintain Settlement Profiles', 'SPRO', 'TKB1V', 'Check', 'FICO', NULL, NULL),
(240, 'C', 'Internal Order', 'Maintain Settlement Structure', 'SPRO', 'CO_SSTRCV1', 'Check', 'FICO', NULL, NULL),
(241, 'C', 'Internal Order', 'CO-PA: PA Transfer Structure', 'KEI1', '', 'Check', 'FICO', NULL, NULL),
(242, 'C', 'Internal Order', 'Assign Number Range for Settlement Documents', 'SNUM', '', 'Check', 'FICO', NULL, NULL),
(243, 'C', 'Internal Order', 'Define Number Ranges - fund comm', 'OK60', '', 'Check', 'FICO', NULL, NULL),
(244, 'C', 'Internal Order', 'Define Default Cost Elements for Down Payments', 'OKEP', '', '-', 'FICO', NULL, NULL),
(245, 'C', 'Internal Order', 'Enter Settlement Profile in Order Types', 'KOAL', '', 'Check', 'FICO', NULL, NULL),
(246, 'C', 'Activity-Based Costing', 'Define Target Cost Versions', 'OKV5', '', 'Check', 'FICO', NULL, NULL),
(247, '', 'Product Cost Controlling', 'Assign Splitting Structures to Cost centers', 'OKEW', '', 'Create', 'FICO', NULL, NULL),
(248, 'BA', 'Product Cost Controlling', 'Define Overhead Groups', 'OKZ2', '', 'Create', 'FICO', NULL, NULL),
(249, 'C', 'Product Cost Controlling', 'Define Costing Variants (PPC1, PPC2, PPC3, ZPC1, PREM)', 'OKKN', '', 'Check', 'FICO', NULL, NULL),
(250, 'C', 'Product Cost Controlling', 'Define Valuation Variants (Z01)', 'OKK4', '', 'Check', 'FICO', NULL, NULL),
(251, 'C', 'Product Cost Controlling', 'Define Date Control (ZCO1)', 'OKK6', '', 'Check', 'FICO', NULL, NULL),
(252, 'C', 'Product Cost Controlling', 'Define Quantity Structure Control (PC01)', 'OKK5', '', 'Check', 'FICO', NULL, NULL),
(253, 'BA', 'Product Cost Controlling', 'Check Special Procurement Types', 'SPRO', 'V460A', 'Check', 'FICO', NULL, NULL),
(254, 'C', 'Product Cost Controlling', 'Define Valuation Variants (Z01)', 'OKYN', '', 'Check', 'FICO', NULL, NULL),
(255, 'C', 'Product Cost Controlling', 'Define Valuation Variants (Z01)', 'OKKE', '', 'Check', 'FICO', NULL, NULL),
(256, 'C', 'Product Cost Controlling', 'Check Valuation Variants for Product Cost Collectors', 'OPN2', '', 'Check', 'FICO', NULL, NULL),
(257, 'CC', 'Product Cost Controlling', 'Check Order Types (RM01)', 'KOT2_PKOSA', '', 'Check', 'FICO', NULL, NULL),
(258, 'CC', 'Product Cost Controlling', 'Check Order Types', 'KOT2', '', 'Create', 'FICO', NULL, NULL),
(259, 'BA', 'Product Cost Controlling', 'Define Cost-Accounting-Relevant Default Values for Order Types and Plants', 'SPRO', 'V_T399X_PC', 'Create', 'FICO', NULL, NULL),
(260, 'BA', 'Product Cost Controlling', 'Activate Generation of Cost Log in Repetitive Manufacturing', 'SPRO', 'V_T437D_F', 'Create', 'FICO', NULL, NULL),
(261, 'BA', 'Product Cost Controlling', 'Define Default Variance Keys for Plants', 'OKVW', '', 'Create', 'FICO', NULL, NULL),
(262, 'CO area', 'Product Cost Controlling', 'Define Target Cost Versions', 'OKV6', '', 'Check', 'FICO', NULL, NULL),
(263, 'CO area', 'Product Cost Controlling', 'Define Target Cost Versions', 'OKV7', '', 'Check', 'FICO', NULL, NULL),
(264, 'CO area', 'Product Cost Controlling', 'Define Result Analysis Versions', 'OKG9', '', 'Check', 'FICO', NULL, NULL),
(265, 'CC', 'Product Cost Controlling', 'Define Posting Rules for Setting WIP ', 'OKG8*', '', 'Create', 'FICO', NULL, NULL),
(266, 'C', 'Product Cost Controlling', 'Check Valuation Variants for CO Production Orders', 'OKY5', '', 'Check', 'FICO', NULL, NULL),
(267, 'BA', 'Product Cost Controlling', 'Define Goods Received Valuation for Order Delivery', 'SPRO', 'V_TCO10', 'Check', 'FICO', NULL, NULL),
(268, 'C', 'Product Cost Controlling', 'Check Valuation Variants for Product Costing', 'OKY0', '', 'Check', 'FICO', NULL, NULL),
(269, 'C', 'Product Cost Controlling', 'Check Valuation Variants for Unit Costing', 'OKY7', '', 'Check', 'FICO', NULL, NULL),
(270, 'C', 'Product Cost Controlling', 'Check Valuation Variants for Cost Object ID', 'OKY6', '', 'Check', 'FICO', NULL, NULL),
(271, 'CC', 'Product Cost Controlling', 'Accounting Document Number Ranges', 'FBN1', '', 'Create', 'FICO', NULL, NULL),
(272, 'BA', 'Product Cost Controlling', 'Configure Dynamic Price Changes', 'SPRO', 'V_T001K_PR', 'Check', 'FICO', NULL, NULL),
(273, 'C', 'Profitability Analysis', 'Maintain Characteristics', 'KEA5', '', 'Check', 'FICO', NULL, NULL),
(274, 'C', 'Profitability Analysis', 'Maintain Value Fields', 'KEA6', '', 'Check', 'FICO', NULL, NULL),
(275, 'C', 'Profitability Analysis', 'Maintain Operating Concern', 'KEA0', '', 'Check', 'FICO', NULL, NULL),
(276, '', 'Profitability Analysis', 'Maintain Characteristice Value', 'KES1', '', 'Check', 'FICO', NULL, NULL),
(277, '', 'Profitability Analysis', 'Define Characteristic Derivation', 'KEDR', '', 'Check', 'FICO', NULL, NULL),
(278, '', 'Profitability Analysis', 'Characteristic Derivation : Maintain values', 'KEDE', '', 'Check', 'FICO', NULL, NULL),
(279, 'C', 'Profitability Analysis', 'Define Number Ranges for Planning Data', 'KEN2', '', 'Check', 'FICO', NULL, NULL),
(280, 'C', 'Profitability Analysis', 'Assign Quantity Fields', 'KE4M', '', 'Check', 'FICO', NULL, NULL),
(281, 'C', 'Profitability Analysis', 'Assign Receiver Plan Version', 'KEPV', '', 'Check', 'FICO', NULL, NULL),
(282, 'C', 'Profitability Analysis', 'Maintain Characteristic Groups', 'KEPA', '', 'Check', 'FICO', NULL, NULL),
(283, '', 'Profitability Analysis', 'Maintain characteristic assignment', 'SPRO', 'V_LISCOPAM', 'Check', 'FICO', NULL, NULL),
(284, 'C', 'Profitability Analysis', 'Define Number Ranges for Actual Postings', 'KEN1', '', 'Check', 'FICO', NULL, NULL),
(285, 'C', 'Profitability Analysis', 'Assign Characteristic Groups for Assignment Screen', 'KE4G', '', 'Check', 'FICO', NULL, NULL),
(286, 'C', 'Profitability Analysis', 'Maintain Assignment of SD Conditions to CO-PA Value Fields', 'KE4I', '', 'Check', 'FICO', NULL, NULL),
(287, 'C', 'Profitability Analysis', 'Activate Transfer of Incoming Sales Orders', 'KEKF', '', 'Check', 'FICO', NULL, NULL),
(288, 'C', 'Profitability Analysis', 'Reset Value/Quantity Fields', 'KE4W', '', 'Check', 'FICO', NULL, NULL),
(289, 'C', 'Profitability Analysis', 'Maintain PA Transfer Structure for Direct Postings', 'KEI2', '', 'Check', 'FICO', NULL, NULL),
(290, 'C', 'Profitability Analysis', 'Assign PA Transfer Structure to Business Transaction', 'KEVG6', '', 'Check', 'FICO', NULL, NULL),
(291, 'C', 'Profitability Analysis', 'Maintain PA Transfer Structure for Template and Activity Allocation', 'KEI3', '', 'Check', 'FICO', NULL, NULL),
(292, 'C', 'Profitability Analysis', 'Transfer Customer Rebate Agreements', 'KES4', '', 'Check', 'FICO', NULL, NULL),
(293, 'C', 'Profitability Analysis', 'Activate Profit Center Valuation', 'KEKG', '', 'Check', 'FICO', NULL, NULL),
(294, 'C', 'Profitability Analysis', 'Activate Profitability Analysis', 'KEKE', '', 'Check', 'FICO', NULL, NULL),
(295, 'C', 'Profit Center Accounting', 'Maintain Controlling Area Settings', '0KE5', '', 'Check', 'FICO', NULL, NULL),
(296, 'C', 'Profit Center Accounting', 'Set Control Parameters for Actual Data', '1KEF', '', 'Check', 'FICO', NULL, NULL),
(297, 'C', 'Profit Center Accounting', 'Maintain Retained Earnings Accounts', 'SPRO', 'V_T030_GL', 'Check', 'FICO', NULL, NULL),
(298, 'C', 'Profit Center Accounting', 'Define Number Ranges for Local Documents', 'GB02', '', 'Check', 'FICO', NULL, NULL),
(299, 'C', 'Enterprise Controlling', 'Set period', 'OKUO', '', 'Check', 'FICO', NULL, NULL),
(300, 'BA', 'Production Planning for Process Industries', 'Define Order Type-Dependent Parameters', 'COR4', '', 'Check', 'FICO', NULL, NULL),
(301, 'BA', 'Production Planning for Process Industries', 'Valuation Variant for Order Costing', 'OPK9', '', 'Check', 'FICO', NULL, NULL),
(302, 'BA', 'Production Planning for Process Industries', 'General Version Define', 'OKEV', '', 'Create', 'FICO', NULL, NULL),
(303, 'BA', 'Production Planning for Process Industries', 'Order Type - Dependent Parameters', 'OPL8', '', 'Check', 'FICO', NULL, NULL),
(304, 'BA', 'Maintain Tabel View', 'Mapping cost center untuk transaksi input Profit Segment', 'SM30', 'ZMAPCOSTCENTER', 'Create', 'FICO', NULL, NULL),
(305, 'BA', 'Maintain Tabel View', 'Mapping GL Account Cash Clrg/Bank utk UJB', 'SM30', 'ZREG_UJB_MAPV', 'Create', 'FICO', NULL, NULL),
(306, 'BA', 'Maintain Tabel View', 'Daftar no sertifikat UJB yg berlaku', 'SM30', 'ZUJB_NUMRANGE', 'Create', 'FICO', NULL, NULL),
(307, 'BA', 'Maintain Tabel View', 'No seri Faktur Pajak Sample', 'SM30', 'ZFI_Numbering', 'Create', 'FICO', NULL, NULL),
(308, 'BA', 'Maintain Tabel View', 'Tambah BA yg sdh LIVE di program ZFIINT001', 'SM30', 'ZFIINT_001GSBER', 'Create', 'FICO', NULL, NULL),
(309, '', 'Maintain Tabel View', 'Liquidity Planner', 'ZFIENH010', '', 'Create', 'FICO', NULL, NULL),
(310, '', 'Maintain Tabel View', 'Special Purpose Ledger', 'GCL3', 'Pilih OF', 'Create', 'FICO', NULL, NULL),
(311, 'BA', 'Material Ledger', 'Activate Material Ledger', 'OMX1', '', 'Create', 'FICO', NULL, NULL),
(312, 'BA', 'Material Ledger', 'Set Valuation Areas as Productive', 'CKMSTART', '', 'Create', 'FICO', NULL, NULL),
(313, 'BA', 'Material Ledger', 'Activate Actual Costing', 'SPRO', 'V_T001W_MV', 'Create', 'FICO', NULL, NULL),
(314, 'BA', 'Material Ledger', 'Activate WIP at Actual Costs', 'OMXW', '', 'Create', 'FICO', NULL, NULL),
(315, 'BA', 'Material Ledger', 'Activate Actual Cost Component Split', 'SPRO', '', 'Create', 'FICO', NULL, NULL),
(316, 'BA', 'COPA', 'Assess Cost Center Costs / Process Costs', 'KEU1', '', 'Create', 'FICO', NULL, NULL),
(317, '', 'Enterprise Struct (Define -Logistic General)', 'Define, copy, delete, check plant', 'SPRO/OX10', '', 'Create', 'MM', NULL, NULL),
(318, '', 'Material Management - Inventory Management and Physical Inventory', 'Plant Parameters', 'SPRO', 'V_159L', 'Create', 'MM', NULL, NULL),
(319, '', 'Enterprise Struct (Assign -Logistic General)', 'Assign plant to company code', 'SPRO/OX18', '', 'Create', 'MM', NULL, NULL),
(320, '', 'Enterprise Struct (Assign -Logistic General)', 'Assign Business Area to Plant/Valuation Area and Division', 'SPRO/OMJ7', '', 'Create', 'MM', NULL, NULL),
(321, '', 'Enterprise Struct (Assign -Material Management)', 'Maintain purchasing organization', 'SPRO/OX08 ', '', 'Check Only', 'MM', NULL, NULL),
(322, '', 'Enterprise Struct (Assign -Material Management)', 'Assign purchasing organization to company code', 'SPRO/OX17', '', 'Check Only', 'MM', NULL, NULL),
(323, '', 'Material Management - Purchasing', 'Create Purchasing Groups', 'SPRO/OME4', '', 'Create', 'MM', NULL, NULL),
(324, '', 'Enterprise Struct (Define -Material Management)', 'Maintain storage location', 'SPRO/OX09', '', 'Create', 'MM', NULL, NULL),
(325, '', 'Material Management - Purchasing', 'Create/Check TOP (Term Of Payment)', 'SPRO/OME2', '', 'Check Only', 'MM', NULL, NULL),
(326, '', 'Enterprise Struct (Assign -Material Management)', 'Assign purchasing organization to plant', 'SPRO', 'V_001W_E', 'Create', 'MM', NULL, NULL),
(327, '', 'Enterprise Struct (Assign -Material Management)', 'Assign standard purchasing organization to plant', 'SPRO', 'V_001W_E', 'Create', 'MM', NULL, NULL),
(328, '', 'Material Management - Inventory Management', 'Define Stock Determinationgroup', 'SPRO/OSPX', '', 'Create', 'MM', NULL, NULL),
(329, '', 'Material Management - Inventory Management', 'Assign Stock Determination Rule in Production Order', 'SPRO/OPJ2', '', 'Create', 'MM', NULL, NULL),
(330, '', 'Production-Repetitiv Manufacturing-Material Staging', 'Define Control Data for Pull List', 'SPRO', 'V_T435W', 'Create', 'MM', NULL, NULL),
(331, '', 'Material Management - Inventory Management', 'Assign Stock Determination Rule in Pull list', 'SPRO', 'V_T435W_BF', 'Check Only', 'MM', NULL, NULL),
(332, '', 'Material Management - Inventory Management', 'Define Storage Location MRP per Plant', 'SPRO', 'V_T001L_D', 'Create', 'MM', NULL, NULL),
(333, '', 'Material Management - Inventory Management and Physical Inventory', 'Account deteremnination for valuation areas', 'SPRO/OMWD', '', 'Create', 'MM', NULL, NULL),
(334, '', 'SAP Netweaver - General Settings', 'Create/Check Unit of Measure', 'SPRO/CUNI', '', 'Check Only', 'MM', NULL, NULL),
(335, '', 'Logistic General - Material Master', 'Define Material Groups', 'SPRO/OMSF', '', 'Check Only', 'MM', NULL, NULL),
(336, '', 'Material Management - Valuation and Account Assignment', 'Configure Split valuation  (per client)', 'SPRO/OMWC', '', 'Create', 'MM', NULL, NULL),
(337, '', 'Logistic General - Material Master', 'Define Attributes of Material Types', 'SPRO', 'T134M', 'Create', 'MM', NULL, NULL),
(338, '', 'Material Management - Purchasing', 'Create type PURCHASE REQUISITION (Number, Link)', 'SPRO', 'V_162', 'Check Only', 'MM', NULL, NULL),
(339, '', 'Material Management - Purchasing', 'Create type PURCHASE ORDER (Number, Link)', 'SPRO', 'V_162', 'Check Only', 'MM', NULL, NULL),
(340, '', 'Material Management - Purchasing', 'Create & Check Schema Prosedure', 'SPRO', 'V_TMKE', 'Check Only', 'MM', NULL, NULL),
(341, '', 'Material Management - Purchasing', 'Create/Define condition type PO', 'SPRO', 'V_T685A', 'Check Only', 'MM', NULL, NULL),
(342, '', 'Material Management - Consumption-Based Planning', 'Carry Out Overall Maint of MRP Groups (ZPRD, ZRAW, ZSPR, ZSUP, ZPCM)', 'SPRO / OMD1', '', 'Create', 'MM', NULL, NULL),
(343, '', 'Material Management - Consumption-Based Planning', 'Define MRP Group for Each Material Type', 'SPRO', 'V_TMW00', 'Create', 'MM', NULL, NULL),
(344, '', 'Material Management - Consumption-Based Planning', 'Define MRP Controllers  (PRD, RAW,SPR,SUP,PCM)', 'SPRO', 'V_T024D', 'Create', 'MM', NULL, NULL),
(345, '', 'Material Management - Consumption-Based Planning', 'Define Special Procurement Types', 'SPRO', 'V460A', 'Create', 'MM', NULL, NULL),
(346, '', 'Material Management - Consumption-Based Planning', 'Carry Out Overall Maintenance of Plant Parameter', 'SPRO', 'V438M', 'Create', 'MM', NULL, NULL),
(347, '', 'Material Management - Consumption-Based Planning', 'Define Document Life', 'SPRO', 'V_159R', 'Create', 'MM', NULL, NULL),
(348, '', 'Material Management - Purchasing', 'Set Up Procedure with Classification (PR)', 'SPRO', 'T16FK', 'Create', 'MM', NULL, NULL),
(349, '', 'Material Management - Purchasing', 'Define Release Procedure for Purchase Orders (PO)', 'SPRO', 'V_T16FS', 'Create', 'MM', NULL, NULL),
(350, '', 'Material Management - Inventory Management and Physical Inventory', 'Create/check movement type', 'SPRO/OMJJ', '', 'Check Only', 'MM', NULL, NULL),
(351, '', 'Material Management - Inventory Management and Physical Inventory', 'Configure automatic posting', 'SPRO/OBYC', '', 'Check Only', 'MM', NULL, NULL),
(352, '', 'Material Management - Inventory Management and Physical Inventory', 'Create reason for movement', 'SPRO', 'V_157L', 'Check Only', 'MM', NULL, NULL),
(353, '', 'Material Management - Inventory Management and Physical Inventory', 'Default Purchasing Document Type in Transactions', 'SPRO', 'V_T160', 'Check Only', 'MM', NULL, NULL),
(354, '', 'Material Management - Inventory Management and Physical Inventory', 'Set tolerance limits', 'SPRO', 'V_169G', 'Check Only', 'MM', NULL, NULL),
(355, '', 'Material Management - Logistic Invoice Verification', 'Set Check for duplicate invoice', 'SPRO', 'V_169P_DC', 'Check Only', 'MM', NULL, NULL),
(356, '', 'Material Management - Logistic Invoice Verification', 'Maintain Default Values for Tax Codes', 'SPRO', 'V_169V_ST', 'Check Only', 'MM', NULL, NULL),
(357, '', 'Material Management - Inventory Management and Physical Inventory', 'Allow Freezing of Book Inventory Balance in Storage Location', 'SPRO', '', 'Check Only', 'MM', NULL, NULL),
(358, '', 'Maintain tabel di server Production', 'Kombinasi PR', 'SM30', 'ZPRRELEASE', 'Create', 'MM', NULL, NULL),
(359, '', 'Maintain tabel di server Production', 'Kombinasi PO', 'SM30', 'ZPORELEASE', 'Create', 'MM', NULL, NULL),
(360, '', 'Maintain tabel di server Production', 'Nopol Kend Botolan u/ TTBK, Packing', 'SM30', 'ZNKEND', 'Create', 'MM', NULL, NULL),
(361, '', 'Maintain MM02', 'Field with qty Structure Terkait ORDER', 'MM03', '', 'Check Only', 'MM', NULL, NULL),
(362, '', 'Maintain MM02', 'Field Material Original Terkait ORDER', 'MM03', '', 'Check Only', 'MM', NULL, NULL),
(363, '', 'Maintain Valuation Type', 'Trading field', 'MM01/LSMW', '', 'Create', 'MM', NULL, NULL),
(364, '', 'Maintain Release PR/PO', 'Assign Objects to Classes . FRG_EBAN', 'CL20N', '', 'Create', 'MM', NULL, NULL),
(365, '', 'Maintain Release PR/PO', 'Assign Objects/Classes to Class . FRG_EKKO', 'CL24N', '', 'Create', 'MM', NULL, NULL),
(366, '', 'Variant Report', 'ZMMSQVI_RMD untuk interbranch', 'ZMMSQVI_RMD', '', 'Create', 'MM', NULL, NULL),
(367, '', 'Variant Report', 'Laporan Stock Harian Panggung', 'ZMMRPT043', '', 'Create', 'MM', NULL, NULL),
(368, '', 'Master Data Material', 'Upload data material di Server Development dan Production', 'LSMW', '', 'Create', 'MM', NULL, NULL),
(369, '', 'Master Data Vendor', 'Upload data material di Server Development dan Production', 'LSMW', '', 'Create', 'MM', NULL, NULL),
(370, '', 'Role Otorisasi', 'Create role di server Development & Print', 'PFCG', '', 'Create', 'MM', NULL, NULL),
(371, '', 'Enterprise Structure (Definition Plant Maintenance)', 'Maintain Maintenance Planning Plant', 'SPRO', '', 'Create', 'PM', NULL, NULL),
(372, '', 'Enterprise Structure (Assignment)', 'Plant Maintenance', 'SPRO', '', 'Assign', 'PM', NULL, NULL),
(373, '', 'General Data', 'Planner Groups', 'SPRO', '', 'Create', 'PM', NULL, NULL),
(374, '', 'Basic Setting', 'Maintenance Planner Groups', 'SPRO', '', 'Chek or Create', 'PM', NULL, NULL),
(375, '', 'General Data', 'Employees Responsible for Work Centers', 'SPRO', '', 'Create', 'PM', NULL, NULL),
(376, '', 'Technical Object', 'General Data Planner Groups', 'SPRO', '', 'Chek', 'PM', NULL, NULL),
(377, '', 'Functions and Settings', 'Assign Order Types to Maintenance Plants', 'OIOD', '', 'Create', 'PM', NULL, NULL),
(378, '', 'Functions and Settings', 'Define Default Order Types for Maintenance Items', 'SPRO', '', 'Assign', 'PM', NULL, NULL),
(379, '', 'Functions and Settings', 'Maintain Default Values for Control Keys for Order Types', 'OIO6', '', 'Assign \"PM01\"', 'PM', NULL, NULL),
(380, '', 'Functions and Settings', 'Assign Costing parameters and Result Analysis Keys', 'OIOF', '', 'Assign \"PM01\"', 'PM', NULL, NULL),
(381, '', 'Functions and Settings', 'Define Change Docs, Collective Purc.Req.Indicator, Opr. No.Interval', 'SPRO', '', 'Assign', 'PM', NULL, NULL),
(382, '', 'Functions and Settings', 'Define Documentation for Goods Movement for the Order', 'SPRO', '', 'Assign or Tick', 'PM', NULL, NULL),
(383, '', 'Functions and Settings', 'Define Inspection Control', 'OIOI', '', 'Create', 'PM', NULL, NULL),
(384, '', 'General Data', 'Default Values for Component Item Categories', 'SPRO', '', 'Create', 'PM', NULL, NULL),
(385, '', 'General Data', 'Activate Default Value for Current Date as Basic date', 'SPRO', '', 'Assign or Tick', 'PM', NULL, NULL),
(386, '', 'General Data', 'Define Default Values for Units for Operation', 'OIO9', '', 'Create', 'PM', NULL, NULL),
(387, '', 'Scheduling', 'Set Scheduling Paramaters', 'OPU7', '', 'Create', 'PM', NULL, NULL),
(388, '', 'Completion Confirmations', 'Define Control Parameters', 'SPRO', '', 'Create', 'PM', NULL, NULL),
(389, '', 'MASTER DATA', 'Master Data Work Center', 'SCAT - Z_WORK_CENTER', '', '', 'PM', NULL, NULL),
(390, '', 'MASTER DATA', 'Master Data Functional Location', 'SCAT - Z_FL', '', '', 'PM', NULL, NULL),
(391, '', 'MASTER DATA', 'Master Data Vehicle Equipment', 'SCAT - Z_EQUI_V', '', '', 'PM', NULL, NULL),
(392, '', 'MASTER DATA', 'Master Data General Equipment', 'SCAT - Z_EQUI', '', '', 'PM', NULL, NULL),
(393, '', 'General', 'Define Shift Sequence', 'OP4A', '', 'Check only', 'PP', NULL, NULL),
(394, '', 'General', 'Define Order Types', 'OPJH', '', 'Check only', 'PP', NULL, NULL),
(395, '', 'General', 'Define standard value key', 'OP19', '', 'Check only', 'PP', NULL, NULL),
(396, '', 'MRP, Production Order', 'Define scheduling parameters for Production orders', 'OPU3 ', '', 'Create', 'PP', NULL, NULL),
(397, '', 'MRP, Production Order', 'Define scheduling parameters for planned orders', 'OPU5', '', 'Create', 'PP', NULL, NULL),
(398, '', 'MRP, Production Order', 'Production Scheduling Profiles', 'OPKP ', '', 'Create', 'PP', NULL, NULL),
(399, '', 'MRP, Production Order', 'Production Scheduler', 'OPJ9', '', 'Create', 'PP', NULL, NULL),
(400, '', 'MRP, Production Order', 'Define MRP Controllers', 'OMD0', '', 'Create', 'PP', NULL, NULL),
(401, '', 'MRP, Production Order', 'Carryout Overall Maintenance of MRP Group', 'OPPZ ', '', 'Create', 'PP', NULL, NULL),
(402, '', 'MRP, Production Order', 'Define Scope of Total Planning', 'OM0E', '', 'Create', 'PP', NULL, NULL),
(403, '', 'MRP, Production Order', 'Define MRP Creation Indicator', 'SPRO ', '', 'Create', 'PP', NULL, NULL),
(404, '', 'MRP, Production Order', 'Define Order Type-Dependent Parameter', 'OPL8 ', '', 'Create', 'PP', NULL, NULL),
(405, '', 'MRP, Production Order', 'Tambahan centang PP01, Implementation', 'OPL8 ', '', 'Check only', 'PP', NULL, NULL),
(406, '', 'MRP, Production Order', 'Define Confirmation Parameter', 'OPK4 ', '', 'Create', 'PP', NULL, NULL),
(407, '', 'MRP, Production Order', 'Define Default Value', 'OPJG', '', 'Create', 'PP', NULL, NULL),
(408, '', 'MRP, Production Order', 'Maintain Checking Control', 'OPJK', '', 'Create', 'PP', NULL, NULL),
(409, '', 'MRP, Production Order', 'Activate MRP dan Set up Planning File', 'OMDU', '', 'Check', 'PP', NULL, NULL),
(410, '', 'MRP, Production Order', 'Define Order Type for Conversion to Production/Process Order', 'OPPE', '', 'Create', 'PP', NULL, NULL),
(411, '', 'MRP, Production Order', 'Define MRP group for each Material group', 'OPPR', '', 'Create', 'PP', NULL, NULL),
(412, '', 'MRP, Production Order', 'Define Planning Horizon', 'OMDX', '', 'Create', 'PP', NULL, NULL),
(413, '', 'MRP, Production Order', 'Define parameter for determining basic dates', 'SPRO ', '', 'Centang', 'PP', NULL, NULL);
INSERT INTO `m_check` (`c_id`, `ccat`, `ctype`, `ctypedesc`, `ctcode`, `ctable`, `cstat`, `cmodul`, `chg_by`, `chg_date`) VALUES
(414, '', 'MRP, Production Order', 'Define available check for component', 'OPPJ', '', 'Create', 'PP', NULL, NULL),
(415, '', 'MRP, Production Order', 'Maintain carry out maintenance all', 'OPPQ', '', 'Check & create', 'PP', NULL, NULL),
(416, '', 'MRP, Production Order', 'Set Up Production Scheduler Group', 'OPCH', '', 'Create', 'PP', NULL, NULL),
(417, '', 'MRP, Production Order', 'Define Production Scheduling for Process Orders', 'CORY', '', 'Create', 'PP', NULL, NULL),
(418, '', 'MRP, Production Order', 'Determinine Person Responsible - Work Center', 'SPRO', '', 'Create', 'PP', NULL, NULL),
(419, '', 'MRP, Production Order', 'Valuation variants order costing', 'OPK9', '', 'Create', 'PP', NULL, NULL),
(420, '', 'MRP, Production Order', 'Order type - dependent parameters', 'COR4', '', 'Create', 'PP', NULL, NULL),
(421, '', 'Maintain tabel/field program', 'Sloc Kode Material', 'SM30', '', 'Check Only', 'PP', NULL, NULL),
(422, '', 'Maintain tabel/field program', 'Kode + isi Botol', 'SM30', '', 'Check Only', 'PP', NULL, NULL),
(423, '', 'Maintain tabel/field program', 'LIVE PP', 'SM30', '', 'Centang', 'PP', NULL, NULL),
(424, '', 'Maintain tabel/field program', 'Kapasitas Produksi', 'ZPPENH016', '', 'Create', 'PP', NULL, NULL),
(425, '', 'Maintain tabel/field program', 'Mode ASP', 'ZPPENH016', '', 'Create', 'PP', NULL, NULL),
(426, '', 'Maintain tabel/field program', 'Bahan Baku Mixed Gas', 'ZPPENH016', '', 'Create', 'PP', NULL, NULL),
(427, '', 'Maintain tabel/field program', 'Map Plant dan sloc mixed Gas', 'ZPPENH016', '', 'Create', 'PP', NULL, NULL),
(428, '', 'Maintain tabel/field program', 'Mapping SlocPipeline', 'ZPPENH016', '', 'Create', 'PP', NULL, NULL),
(429, '', 'Maintain tabel/field program', 'Mapping Sloc tangki', 'ZPPENH016', '', 'Create', 'PP', NULL, NULL),
(430, '', 'Maintain tabel/field program', 'Mapping Sloc transfer', 'ZPPENH016', '', 'Create', 'PP', NULL, NULL),
(431, '', 'Maintain tabel/field program', 'Mapping report PP', 'ZPPENH016', '', 'Check Only', 'PP', NULL, NULL),
(432, '', 'Enterprise Structure (Def: Financial Accounting)', 'Define company', 'OX15', '', 'Check Only', 'SD', NULL, NULL),
(433, '', 'Enterprise Structure (Def: Financial Accounting)', 'Define Credit Control Area', 'OB45', '', 'Check Only', 'SD', NULL, NULL),
(434, '', 'Enterprise Structure (Def: Financial Accounting)', 'Define Business Area', 'OX03', '', 'Check Only', 'SD', NULL, NULL),
(435, '', 'Enterprise Structure (Def: Logistics-Plant)', 'Define Plant', 'OX10', '', 'Check Only', 'SD', NULL, NULL),
(436, '', 'Enterprise Structure (Def: Logistics-Division)', 'Define Division', 'OVXD', 'V_TSPA', 'Check Only', 'SD', NULL, NULL),
(437, '', 'Enterprise Structure (Def: Sales & Distribution)', 'Define, copy, delete, check sales organization', 'OVX5', 'V_TVKO', 'Create', 'SD', NULL, NULL),
(438, '', 'Enterprise Structure (Def: Sales & Distribution)', 'Define, copy, delete, check distribution channel', 'OVXI', 'V_TVTW', 'Check Only', 'SD', NULL, NULL),
(439, '', 'Enterprise Structure (Def: Sales & Distribution)', 'Maintain sales office', 'OVX1', 'V_TVBUR', 'Create', 'SD', NULL, NULL),
(440, '', 'Enterprise Structure (Def: Logistics Execution)', 'Define, copy, delete, check shipping point', 'OVXD', 'V_TVST', 'Create', 'SD', NULL, NULL),
(441, '', 'Enterprise Structure (Asg: Logistics General)', 'Assign Business Area to Plant/Valuation Area and Division', 'OMJ7', '', 'Create', 'SD', NULL, NULL),
(442, '', 'Enterprise Structure (Asg: Sales & Distribution)', 'Assign sales organization to company code', 'OVX3 / OVX3N', 'V_TVKO_ASSIGN', 'Create', 'SD', NULL, NULL),
(443, '', 'Enterprise Structure (Asg: Sales & Distribution)', 'Assign distribution channel to sales organization', 'OVXK (V_TVKOV_ASSIGN)', 'V_TVKOV_ASSIGN', 'Create', 'SD', NULL, NULL),
(444, '', 'Enterprise Structure (Asg: Sales & Distribution)', 'Assign division to sales organization', 'OVXA /  OVXAN (V_TVKOS_ASSIGN)', 'V_TVKOS_ASSIGN', 'Create', 'SD', NULL, NULL),
(445, '', 'Enterprise Structure (Asg: Sales & Distribution)', 'Set up sales area', 'OVXG (V_TVTA_ASSIGN)', 'V_TVTA_ASSIGN', 'Create', 'SD', NULL, NULL),
(446, '', 'Enterprise Structure (Asg: Sales & Distribution)', 'Assign sales office to sales area', 'OVXM (V_TVKBZ_ASSIGN)', 'V_TVKBZ_ASSIGN', 'Create', 'SD', NULL, NULL),
(447, '', 'Enterprise Structure (Asg: Sales & Distribution)', 'Assign sales organization - distribution channel - plant', 'OVX6 (V_TVKWZ_ASSIGN)', 'V_TVKWZ_ASSIGN', 'Create', 'SD', NULL, NULL),
(448, '', 'Enterprise Structure (Asg: Sales & Distribution)', 'Assign sales area to credit control area', 'OVFL (V_TVTA_KKB)', 'V_TVTA_KKB', 'Create', 'SD', NULL, NULL),
(449, '', 'Enterprise Structure (Asg: BA Acct Assignment)', 'Define Rules By Sales Area', 'OVF2', 'V_TVTA_GRE', 'Create', 'SD', NULL, NULL),
(450, '', 'Enterprise Structure (Asg: BA Acct Assignment)', 'Assign Business Area To Plant And Division', 'OVX2', 'V_T134G_WS', 'Check Only', 'SD', NULL, NULL),
(451, '', 'Enterprise Structure (Asg: Logistics Execution)', 'Assign shipping point to plant', 'OVXC', '', 'Create', 'SD', NULL, NULL),
(452, '', 'Logistics General (LIS Updating Control)', 'Assign Update Group at Item Level', 'OVRP', '', 'Create', 'SD', NULL, NULL),
(453, '', 'Logistics General (LIS Updating Control)', 'Assign Update Group at Header Level', 'OVRO', '', 'Create', 'SD', NULL, NULL),
(454, '', 'Sales & Distribution (Master Data)', 'Combine distribution channels', 'OVAM', '', 'Create', 'SD', NULL, NULL),
(455, '', 'Sales & Distribution (Master Data)', 'Combine divisions', 'OVAN', '', 'Create', 'SD', NULL, NULL),
(456, '', 'Sales & Distribution (Assign Pricing Procedure)', 'Define Pricing Procedure Determination', 'OVKK', '', 'Create', 'SD', NULL, NULL),
(457, '', 'Sales & Distribution (Assign Pricing Procedure)', 'Define Pricing Procedure Determination (IB)', 'OVKK', '', 'Create', 'SD', NULL, NULL),
(458, '', 'Sales & Distribution (Taxes)', 'Maintain Sales Tax Identification Number Determination', 'V_TVKO_TAX', '', 'Create', 'SD', NULL, NULL),
(459, '', 'Sales & Distribution (Assign G/L)', '1 Cust.Grp/MaterialGrp/AcctKey', 'VKOA (C001)', 'C001', 'Create', 'SD', NULL, NULL),
(460, '', 'Sales & Distribution (Assign G/L)', '3 Material Grp/Acct Key', 'VKOA (C003)', 'C003', 'Create', 'SD', NULL, NULL),
(461, '', 'Sales & Distribution (Assign G/L)', '5 Acct Key', 'VKOA (C005)', 'C005', 'Create', 'SD', NULL, NULL),
(462, '', 'Sales & Distribution (Assign G/L)', '501 Sales org./Ord.reason/Acct key', 'VKOA (C501)', 'C501', 'Create', 'SD', NULL, NULL),
(463, '', 'Sales & Distribution (Assign Sales Area to Sales Doc.Type)', 'Combine sales organizations', 'OVAO (V_TVKOS_AU)', 'V_TVKOS_AU', 'Create', 'SD', NULL, NULL),
(464, '', 'Sales & Distribution (Assign Sales Area to Sales Doc.Type)', 'Combine distribution channels', 'OVAO (V_TVKOV_AU)', 'V_TVKOV_AU', 'Create', 'SD', NULL, NULL),
(465, '', 'Sales & Distribution (Assign Sales Area to Sales Doc.Type)', 'Combine divisions', 'OVAO (V_TVKOS_AU)', 'V_TVKOS_AU', 'Create', 'SD', NULL, NULL),
(466, '', 'Sales & Distribution (Assign Sales Area to Sales Doc.Type)', 'Assign sales order types permitted for sales areas', 'OVAO (V_TVAKZ)', 'V_TVAKZ', 'Check Only', 'SD', NULL, NULL),
(467, '', 'Sales & Distribution (CAS Sales Summary)', 'Assign Default View To User', 'V80C', '', 'Create', 'SD', NULL, NULL),
(468, '', 'Logistics Execution (Ship Point & Goods Rcv Point)', 'Shipping Points Determination', '0VVW', '', 'Create', 'SD', NULL, NULL),
(469, '', 'Table (SM30)', 'Table View Sloc (View of ZSDRPT_035_SLOC)', 'ZSDRPT_035_SLOCV', 'SM30', 'Create', 'SD', NULL, NULL),
(470, '', 'Table (SM30)', 'Tabel Numrange SD (Number Ranges Mapping Table)', 'ZNUMRANGE', 'SM30', 'Create', 'SD', NULL, NULL),
(471, '', 'Table (SM30)', 'Tabel Numrange SD (Tabel Numbering Modul SD) :', 'ZSD_NUMBER', 'SM30', 'Create', 'SD', NULL, NULL),
(472, '', 'Table (SM30)', 'BA Perubahan Botol & Update Hydrostatic', 'ZSDENH_026', 'SM30', 'Create', 'SD', NULL, NULL),
(473, '', 'Table (SM30)', 'Pengajuan Kredit Limit Customer per Plant', 'ZSDENH_035', 'SM30', 'Create', 'SD', NULL, NULL),
(474, '', 'Table (SM30)', 'Report Rekapitulasi Perubahan Aset Botol', 'ZSDRPT_042', 'SM30', 'Create', 'SD', NULL, NULL),
(475, '', 'Table (SM30)', 'Pengantar Pengambilan Botol', 'ZSDRPT_055', 'SM30', 'Create', 'SD', NULL, NULL),
(476, '', 'Table (SM30)', 'Tabel Release Credit (Tabel Hak Release Credit Limit)', 'ZRELEASE_CREDIT', 'SM30', 'Create', 'SD', NULL, NULL),
(477, '', 'Table (SM30)', 'Tabel Release Pricing (Master User and Release Code)', 'ZPRICING_USER', 'SM30', 'Create', 'SD', NULL, NULL),
(478, '', 'Table (SM30)', 'Tabel User Release Pricing (Maintenance view of ZPRICING_STATUS)', 'ZPRICING_STATUSV', 'SM30', 'Check Only', 'SD', NULL, NULL),
(479, '', 'Table (SM30)', 'Table SJ hrs GI (User Exit untuk cetak surat jalan & GI)', 'ZCETAKSJEXIT', 'SM30', 'Create', 'SD', NULL, NULL),
(480, '', 'Table (SM30)', 'Tabel Sign Invoice (Hormat Kami Untuk Sign Invoice)', 'ZINV_HORMAT', 'SM30', 'Create', 'SD', NULL, NULL),
(481, '', 'Table (SM30)', 'Tabel Sign Surat Jalan (Nama kepala untuk sign surat jalan)', 'ZSJ_KEPALA', 'SM30', 'Create', 'SD', NULL, NULL),
(482, '', 'Table (SM30)', 'Tabel Kendaraan (Table No Kendaraan)', 'ZNKEND', 'SM30', 'Create', 'SD', NULL, NULL),
(483, '', 'Table (SM30)', 'Tabel SPK (Number Ranges for Surat Perintah Kirim (SPK) - Liquid)', 'ZNUM_LIQ', 'SM30', 'Create', 'SD', NULL, NULL),
(484, '', 'Table (SM30)', 'Tabel packing (Number Range for Packing List Order)', 'ZPACKNR', 'SM30', 'Create', 'SD', NULL, NULL),
(485, '', 'Table (SM30)', 'Tabel group (Tabel definisi customer  antar grup)', 'ZANTARGRUP', 'SM30', 'Create', 'SD', NULL, NULL),
(486, '', 'Table (SM30)', 'Tabel Number Botol Asset (Tabel Number Botol Asset)', 'ZTBANR', 'SM30', 'Create', 'SD', NULL, NULL),
(487, '', 'Table (SM30)', 'Tabel Number Botol Pinjaman (Tabel Number Botol Pinjaman)', 'ZTBPNR', 'SM30', 'Create', 'SD', NULL, NULL),
(488, '', 'Table (SM30)', 'Tabel Batch (Tabel Live Batch)', 'ZLIVE_BATCH', 'SM30', 'Create', 'SD', NULL, NULL),
(489, '', 'Table (SM30)', 'Tabel pemusatan (Customer yang termasuk pajak terpusat)', 'ZTERPUSAT', 'SM30', 'Create', 'SD', NULL, NULL),
(490, '', 'Table (SM30)', 'Tabel Customer Antar Grup (Customer Antar Grup)', 'ZANTARGRUP', 'SM30', 'Create', 'SD', NULL, NULL),
(491, '', 'Table (SM30)', 'Table exit saldo MR (Table control user exit SD)', 'ZUSEREXIT_SD', 'SM30', 'Check Only', 'SD', NULL, NULL),
(492, '', 'Table (SM30)', 'Table exit SN Btl MG (Table control user exit SD)', 'ZUSEREXIT_SD2', 'SM30', 'Check Only', 'SD', NULL, NULL),
(493, '', 'Table (SM30)', 'Tabel area sirkulasi btl (Daerah Sirkulasi Botol)', 'ZDAERAH_BOTOL', 'SM30', 'Create', 'SD', NULL, NULL),
(494, '', 'Table (SM30)', 'Tabel daerah cust (Master daerah customer untuk sirkulasi botol)', 'ZDAERAH_CUST', 'SM30', 'Create', 'SD', NULL, NULL),
(495, '', 'Table (SM30)', 'Table Report Asset Btl (Table Penanda Tangan Daftar Asset)', 'ZTTD_DAFTAR_ASET', 'SM30', 'Create', 'SD', NULL, NULL),
(496, '', 'MASTER DATA', 'Master Data Customer', 'LSMW - XD01', '', 'Create', 'SD', NULL, NULL),
(497, '', 'MASTER DATA', 'Master Data Pricing Botolan', 'LSMW - VK11', '', 'Create', 'SD', NULL, NULL),
(498, '', 'MASTER DATA', 'Master Data Pricing Non Botolan', 'LSMW - VK11', '', 'Create', 'SD', NULL, NULL),
(499, '', 'MASTER DATA', 'Master Data BOM MP', 'LSMW - CS01', '', 'Create', 'SD', NULL, NULL),
(500, '', 'MASTER DATA', 'Master Data BOM MR', 'LSMW - CS01', '', 'Create', 'SD', NULL, NULL),
(501, '', 'MASTER DATA', 'Master Data Plafon Customer', 'LSMW - FD32', '', 'Create', 'SD', NULL, NULL),
(502, '', 'MASTER DATA', 'Master Data Plafon Customer Per Plant', 'LSMW - ZSDENH035', '', 'Create', 'SD', NULL, NULL),
(503, '', 'Check & Preparation', 'Cek semua peralatan barcode (printer ok dan setting = ZSIM, barcode scanner frekuensi tidak ada yang sama, tab berfungsi)', '', '', '', 'BASIS', NULL, NULL),
(504, '', 'Installasi & Setting', 'Install dan setting program yang dibutuhkan pada tablet axioo untuk keperluan Implementasi Barcode Scanner (SAP Logon, ultravnc, wps office, adobe reader, anti virus, 7 zip dll)', '', '', '', 'BASIS', NULL, NULL),
(505, '', 'Create User', 'Create User BA yang akan live di server production berdasarkan form pengajuan create user dari team SAP functional (FI,MM,SD,PM,PP) yang sudah disetujui', 'SU01', '', '', 'BASIS', NULL, NULL),
(506, '', 'Rekap Role', 'Rekap pengajuan Role BA yang akan live dari tiap tim SAP functional (FI,MM,SD,PM,PP) dari file server folder standarisasi user dan cross check dengan print hard copy role pengajuan dari team SAP functional (FI,MM,SD,PM,PP)', '', '', '', 'BASIS', NULL, NULL),
(507, '', 'Transport role', 'Transport Role Spesifik dan Role Master (jika ada tambahan atau perubahan di role master) BA yang akan live dari dev 400 ke server production', 'PFCG', '', '', 'BASIS', NULL, NULL),
(508, '', 'Pasang role di user', 'Pasang role di user BA yang akan live di server production', 'SU01', '', '', 'BASIS', NULL, NULL),
(509, '', 'Pembuatan Background Job', 'Pembuatan Background Job mass Generate Role Spesifik dan role master (jika ada tambahan atau perubahan di role master) di server production', 'PFCG', '', '', 'BASIS', NULL, NULL),
(510, '', 'Setting', 'Setting Nomor seri FP untuk BA yang akan live di table zgsber_2008', 'SM30', 'ZGSBER_2008', '', 'BASIS', NULL, NULL);

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
(1, 'ABAP', 'ABAP', NULL, NULL),
(2, 'BASIS', 'Basis', NULL, NULL),
(3, 'FICO', 'Financial & Controlling', NULL, NULL),
(4, 'MM', 'Materials Management', NULL, NULL),
(5, 'PM', 'Plant Maintenance', NULL, NULL),
(6, 'PP', 'Production Planning', NULL, NULL),
(7, 'SD', 'Sales & Distribution', NULL, NULL);

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
(1, 'Pembelian Bahan Baku (Liquid)', 'Pembelian Bahan Baku Liquid', NULL, NULL),
(2, 'Pembelian Barang Dagangan Gas', 'Pembelian Bahan Baku', NULL, NULL),
(3, 'Penjualan Botolan Regular MTS (REGULER)', 'Penjualan gas dalam botol hasil produksi & sparepart ke Customer & IB Sales Order, Terima Botol Kosong, Produksi, Distribusi, Billing, Pelunasan A/R', NULL, NULL),
(4, 'Penjualan Botolan & Sparepart - Tunai-OTC', 'Penjualan gas dalam botol hasil produksi & sparepart ke Customer & IB Sales Order, Terima Botol Kosong, Produksi, Distribusi, Billing, Pelunasan A/R', NULL, NULL),
(5, 'Klaim & Pengganti Klaim', 'Klaim & Pengganti Klaim Customer', NULL, NULL),
(6, 'Retur Penjualan', 'Retur Penjualan (Nota Retur)', NULL, NULL),
(7, 'Penjualan Botolan IB MTS (SAP)', 'Penjualan Botolan IB MTS pada SAP', NULL, NULL),
(8, 'Penjualan Botolan Regular & IB MTS (Non SAP)', 'Penjualan Botolan IB MTS tanpa SAP', NULL, NULL),
(9, 'Penjualan Container Regular MTS', 'Penjualan gas dalam container hasil produksi & sparepart ke Customer Reguler Sales Order, Terima Container Kosong, Produksi, Distribusi, Billing, Pelunasan A/R', NULL, NULL),
(10, 'Penjualan Container Regular MTS (Reclass)', 'Penjualan gas dalam container hasil produksi & sparepart ke Customer & IB Sales Order, Terima Container Kosong, Produksi, Distribusi, Billing, Pelunasan A/R', NULL, NULL),
(11, 'Sales Kontrak Material', 'Transaksi sales kontrak Material Sales Contract, Produksi, Distribusi, Billing, Pelunasan A/R', NULL, NULL),
(12, 'Pengembalian Botol Rusak MR', 'Pengembalian Botol Rusak MR - Milik Customer', NULL, NULL),
(13, 'Perubahan Fungsi Gas', 'Perubahan Fungsi Gas - Botol', NULL, NULL),
(14, 'BA Perubahan SN Botol', 'BA Perubahan SN Botol - Botol MP', NULL, NULL),
(15, 'Pekerjaan Jasa External & Pembelian Material', 'Integrasi PM ke MM, FI, CO', NULL, NULL),
(16, 'Material Ambil Dari Gudang (PM Internal)', 'Integrasi PM ke MM, FI, CO', NULL, NULL);

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
(1, 'Pembelian Bahan Baku (Liquid)', 1, 'Bon Permintaan Manual', 'MANUAL', 'Marketing', NULL, NULL),
(2, 'Pembelian Bahan Baku (Liquid)', 2, 'Create PR', 'ME51N', 'Gudang', NULL, NULL),
(3, 'Pembelian Bahan Baku (Liquid)', 3, 'Release PR', 'ME55', 'Ka FS.', NULL, NULL),
(4, 'Pembelian Bahan Baku (Liquid)', 4, 'Create PO', 'ME21N', 'Pembelian', NULL, NULL),
(5, 'Pembelian Bahan Baku (Liquid)', 5, 'Release PO', 'ME28', 'Mgr / GM / Dir', NULL, NULL),
(6, 'Pembelian Bahan Baku (Liquid)', 6, 'Cetak PO', 'ME22N, ZMMRPT001', 'Pembelian', NULL, NULL),
(7, 'Pembelian Bahan Baku (Liquid)', 7, 'GR/LPB Bahan Baku Liquid di Sloc LT Supllier', 'MIGO', 'Gudang', NULL, NULL),
(8, 'Pembelian Bahan Baku (Liquid)', 8, 'Losses Pembelian Liquid di Sloc LT Supplier', 'ZMMENH012', 'Gudang', NULL, NULL),
(9, 'Pembelian Bahan Baku (Liquid)', 9, 'Transfer Liquid dari Sloc LT Supplier ke TI Liquid', 'ZMMENH012', 'Gudang', NULL, NULL),
(10, 'Pembelian Bahan Baku (Liquid)', 10, 'Print LPB', 'ZMMRPT001', 'Gudang', NULL, NULL),
(11, 'Pembelian Bahan Baku (Liquid)', 11, 'Pengakuan HUTANG', 'MIRO', 'Akuntansi', NULL, NULL),
(12, 'Pembelian Bahan Baku (Liquid)', 12, 'Pelunasan HUTANG via CASH: Kas Keluar', 'FBCJ', 'Kasir', NULL, NULL),
(13, 'Pembelian Bahan Baku (Liquid)', 13, 'Pelunasan HUTANG via CASH: Pelunasan Hutang + Clear AP', 'F-53', 'Kasir', NULL, NULL),
(14, 'Pembelian Bahan Baku (Liquid)', 14, 'Pelunasan HUTANG via BANK: Bank Keluar', 'F-02', 'Kasir', NULL, NULL),
(15, 'Pembelian Bahan Baku (Liquid)', 15, 'Pelunasan HUTANG via BANK: Pelunasan Hutang + Clear AP', 'F-53', 'Kasir', NULL, NULL),
(16, 'Pembelian Barang Dagangan Gas', 1, 'TTBK', 'ZMMENH025', 'Logistik In', NULL, NULL),
(17, 'Pembelian Barang Dagangan Gas', 2, 'Bon Permintaan Manual', 'MANUAL', 'Marketing', NULL, NULL),
(18, 'Pembelian Barang Dagangan Gas', 3, 'Create PR', 'ME51N', 'Gudang', NULL, NULL),
(19, 'Pembelian Barang Dagangan Gas', 4, 'Release PR', 'ME55', 'Ka FS.', NULL, NULL),
(20, 'Pembelian Barang Dagangan Gas', 5, 'Pengeluaran Botol Pengisian (541)', 'ZSDENH025', 'Panggung/Logistik Out', NULL, NULL),
(21, 'Pembelian Barang Dagangan Gas', 6, 'Create PO', 'ME21N', 'Pembelian', NULL, NULL),
(22, 'Pembelian Barang Dagangan Gas', 7, 'Release PO', 'ME28', 'Mgr / GM / Dir', NULL, NULL),
(23, 'Pembelian Barang Dagangan Gas', 8, 'CETAK PO', 'ME22N, ZMMRPT001', 'Pembelian', NULL, NULL),
(24, 'Pembelian Barang Dagangan Gas', 9, 'GR/LPB Barang Dagangan GAS', 'MIGO', 'Gudang', NULL, NULL),
(25, 'Pembelian Barang Dagangan Gas', 10, 'Penerimaan Botol Pengisian (542)', 'ZSDENH025', 'Panggung/Logistik In', NULL, NULL),
(26, 'Pembelian Barang Dagangan Gas', 11, 'Penerimaan Botol Pinjaman', 'ZSDENH020', 'Panggung/Logistik In', NULL, NULL),
(27, 'Pembelian Barang Dagangan Gas', 12, 'Print LPB', 'ZMMRPT001', 'Gudang', NULL, NULL),
(28, 'Pembelian Barang Dagangan Gas', 13, 'Pengakuan HUTANG', 'MIRO', 'Akuntansi', NULL, NULL),
(29, 'Pembelian Barang Dagangan Gas', 14, 'Pelunasan HUTANG via CASH: Kas Keluar', 'FBCJ', 'Kasir', NULL, NULL),
(30, 'Pembelian Barang Dagangan Gas', 15, 'Pelunasan HUTANG via CASH: Pelunasan Hutang + Clear AP', 'F-53', 'Kasir', NULL, NULL),
(31, 'Pembelian Barang Dagangan Gas', 16, 'Pelunasan HUTANG via BANK: Bank Keluar', 'F-02', 'Kasir', NULL, NULL),
(32, 'Pembelian Barang Dagangan Gas', 17, 'Pelunasan HUTANG via BANK: Pelunasan Hutang + Clear AP', 'F-53', 'Kasir', NULL, NULL),
(33, 'Penjualan Botolan Regular MTS (REGULER)', 1, 'Buat Sales Order (SO)', 'VA01', 'Sales Counter', NULL, NULL),
(34, 'Penjualan Botolan Regular MTS (REGULER)', 2, 'Release SO (Credit Management)', 'ZSDENH006', 'Management', NULL, NULL),
(35, 'Penjualan Botolan Regular MTS (REGULER)', 3, 'Cetak SO', 'VA03', 'Sales Counter', NULL, NULL),
(36, 'Penjualan Botolan Regular MTS (REGULER)', 4, 'Sales Counter buat perintah packing ', 'ZSDENH039', 'Sales Counter', NULL, NULL),
(37, 'Penjualan Botolan Regular MTS (REGULER)', 5, 'Create TTBK & GR ke Sloc Empty Pack', 'ZMMENH025', 'Adm Panggung/Logistik In', NULL, NULL),
(38, 'Penjualan Botolan Regular MTS (REGULER)', 6, 'Konfirmasi SO & buat Inquiry jika ada pekerjaan tambahan (Khusus MR)', 'ZSDENH040', 'Produksi', NULL, NULL),
(39, 'Penjualan Botolan Regular MTS (REGULER)', 7, 'Report', 'ZSDRPT047', 'Produksi', NULL, NULL),
(40, 'Penjualan Botolan Regular MTS (REGULER)', 8, 'Konversi Inquiry ke SO setelah konfirm ke relasi (Khusus MR)', 'ZSDENH043', 'Sales Counter', NULL, NULL),
(41, 'Penjualan Botolan Regular MTS (REGULER)', 9, 'Report', 'ZSDRPT047', 'Sales Counter', NULL, NULL),
(42, 'Penjualan Botolan Regular MTS (REGULER)', 10, 'Prosedur Running MRP & Create PRO MTS', '', 'PPIC', NULL, NULL),
(43, 'Penjualan Botolan Regular MTS (REGULER)', 11, 'Input Hasil Produksi ', 'ZPPENH001', 'Produksi', NULL, NULL),
(44, 'Penjualan Botolan Regular MTS (REGULER)', 12, 'Transfer Packing dari Sloc Full Pack ke sloc Distribusi', 'ZSDENH040', 'Adm Panggung/Logistik Out', NULL, NULL),
(45, 'Penjualan Botolan Regular MTS (REGULER)', 13, 'Cetak Packing List (dilampirkan di SO)', 'ZSDENH040', 'Adm Panggung/Logistik Out', NULL, NULL),
(46, 'Penjualan Botolan Regular MTS (REGULER)', 14, 'Change Surat Jalan ', 'VL02N', 'Distribusi/ Logistik Out', NULL, NULL),
(47, 'Penjualan Botolan Regular MTS (REGULER)', 15, 'Posting (GI) Surat Jalan ', 'VL02N', 'Distribusi/ Logistik Out', NULL, NULL),
(48, 'Penjualan Botolan Regular MTS (REGULER)', 16, 'Cetak Surat Jalan', 'VL03N', 'Distribusi/ Logistik Out / S.Counter', NULL, NULL),
(49, 'Penjualan Botolan Regular MTS (REGULER)', 17, 'Create Invoice ', 'VF01', 'Adm Penjualan', NULL, NULL),
(50, 'Penjualan Botolan Regular MTS (REGULER)', 18, 'Cetak Invoice', 'VF03', 'Adm Penjualan', NULL, NULL),
(51, 'Penjualan Botolan Regular MTS (REGULER)', 19, 'E-Faktur', 'E-Faktur', 'Adm Penjualan', NULL, NULL),
(52, 'Penjualan Botolan Regular MTS (REGULER)', 20, 'Terima Pelunasan dari Customer via Cash', 'FBCJ', 'Kasir', NULL, NULL),
(53, 'Penjualan Botolan Regular MTS (REGULER)', 21, 'Terima Pelunasan dari Customer via Bank transfer', 'F-21', 'Kasir', NULL, NULL),
(54, 'Penjualan Botolan Regular MTS (REGULER)', 22, 'Account Clear AR', 'F-32', 'Adm Piutang', NULL, NULL),
(55, 'Penjualan Botolan & Sparepart - Tunai-OTC', 1, 'Buat Sales Order (SO)', 'VA01', 'Sales Counter', NULL, NULL),
(56, 'Penjualan Botolan & Sparepart - Tunai-OTC', 2, 'Cetak SO', 'VA03', 'Sales Counter', NULL, NULL),
(57, 'Penjualan Botolan & Sparepart - Tunai-OTC', 3, 'Create Invoice ', 'VF01', 'Adm Penjualan', NULL, NULL),
(58, 'Penjualan Botolan & Sparepart - Tunai-OTC', 4, 'Cetak Invoice', 'VF03', 'Adm Penjualan', NULL, NULL),
(59, 'Penjualan Botolan & Sparepart - Tunai-OTC', 5, 'Cetak Faktur Pajak', 'ZFIENH014', 'Adm Penjualan', NULL, NULL),
(60, 'Penjualan Botolan & Sparepart - Tunai-OTC', 6, 'Terima Pelunasan dari Customer via Cash', 'FBCJ', 'Kasir', NULL, NULL),
(61, 'Penjualan Botolan & Sparepart - Tunai-OTC', 7, 'Account Clear AR', 'F-32', 'Adm Piutang', NULL, NULL),
(62, 'Penjualan Botolan & Sparepart - Tunai-OTC', 8, 'Create TTBK & GR ke Sloc Empty Pack', 'ZMMENH025', 'Adm Panggung/Logistik In', NULL, NULL),
(63, 'Penjualan Botolan & Sparepart - Tunai-OTC', 9, 'Konfirmasi SO & buat Inquiry jika ada pekerjaan tambahan (Khusus MR)', 'ZSDENH040', 'Produksi', NULL, NULL),
(64, 'Penjualan Botolan & Sparepart - Tunai-OTC', 10, 'Konversi Inquiry ke SO setelah konfirm ke relasi (Khusus MR)', 'ZSDENH043', 'Sales Counter', NULL, NULL),
(65, 'Penjualan Botolan & Sparepart - Tunai-OTC', 11, 'Prosedur Running MRP & Create PRO MTS', '', 'PPIC', NULL, NULL),
(66, 'Penjualan Botolan & Sparepart - Tunai-OTC', 12, 'Input Hasil Produksi ', 'ZPPENH001', 'Produksi', NULL, NULL),
(67, 'Penjualan Botolan & Sparepart - Tunai-OTC', 13, 'Sales Counter buat Perintah Packing ', 'ZSDENH039', 'Sales Counter', NULL, NULL),
(68, 'Penjualan Botolan & Sparepart - Tunai-OTC', 14, 'Transfer Packing dari Sloc Full Pack ke sloc Distribusi', 'ZSDENH040', 'Adm Panggung/Logistik Out', NULL, NULL),
(69, 'Penjualan Botolan & Sparepart - Tunai-OTC', 15, 'Cetak Packing List (dilampirkan di SO)', 'ZSDENH040', 'Adm Panggung/Logistik Out', NULL, NULL),
(70, 'Penjualan Botolan & Sparepart - Tunai-OTC', 16, 'Change Surat Jalan', 'VL02N', 'Distribusi/ Logistik Out', NULL, NULL),
(71, 'Penjualan Botolan & Sparepart - Tunai-OTC', 17, 'Posting (GI) Surat Jalan', 'VL02N', 'Distribusi/ Logistik Out', NULL, NULL),
(72, 'Penjualan Botolan & Sparepart - Tunai-OTC', 18, 'Cetak Surat Jalan ', 'VL03N', 'Distribusi/ Logistik Out / S.Counter', NULL, NULL),
(73, 'Klaim & Pengganti Klaim', 1, 'Buat TTBC', 'MANUAL', 'Adm Panggung', NULL, NULL),
(74, 'Klaim & Pengganti Klaim', 2, 'Cek Barang', 'MANUAL', 'QC', NULL, NULL),
(75, 'Klaim & Pengganti Klaim', 3, 'Release', 'MANUAL', 'GM Plant', NULL, NULL),
(76, 'Klaim & Pengganti Klaim', 4, 'Create Retur Req -> TYPE ZRR', 'VA01', 'Sales Counter', NULL, NULL),
(77, 'Klaim & Pengganti Klaim', 5, 'GR ke Gen Sloc', 'VL01N / VL02N', 'QC/ Panggung', NULL, NULL),
(78, 'Klaim & Pengganti Klaim', 6, 'Scrap', 'ZMMENH014', 'QC', NULL, NULL),
(79, 'Klaim & Pengganti Klaim', 7, 'Transfer SLoc di Gen Sloc ke EMPTY', 'ZMMENH014', 'QC', NULL, NULL),
(80, 'Klaim & Pengganti Klaim', 8, 'Create SO Replacement Request', 'VA01', 'Sales Counter', NULL, NULL),
(81, 'Klaim & Pengganti Klaim', 9, 'Cetak SO ', 'VA03', 'Sales Counter', NULL, NULL),
(82, 'Klaim & Pengganti Klaim', 10, 'Buat Document Packing', 'ZSDENH039', 'Sales Counter', NULL, NULL),
(83, 'Klaim & Pengganti Klaim', 11, 'Input Hasil Produksi ex Claim', 'ZPPENH001', 'Produksi', NULL, NULL),
(84, 'Klaim & Pengganti Klaim', 12, 'Transfer dari Sloc Full Pack ke Distribusi', 'ZSDENH040', 'Adm Panggung/Logistik Out', NULL, NULL),
(85, 'Klaim & Pengganti Klaim', 13, 'Cetak Telling List', 'ZSDENH040', 'Adm Panggung/Logistik Out', NULL, NULL),
(86, 'Klaim & Pengganti Klaim', 14, 'Change Surat Jalan ', 'VL02N', 'Distribusi/ Logistik Out', NULL, NULL),
(87, 'Klaim & Pengganti Klaim', 15, 'Posting (GI) Surat Jalan ', 'VL02N', 'Distribusi/ Logistik Out', NULL, NULL),
(88, 'Klaim & Pengganti Klaim', 16, 'Cetak Surat Jalan', 'VL03N', 'Distribusi/ Logistik Out / S.Counter', NULL, NULL),
(89, 'Klaim & Pengganti Klaim', 17, 'Proses Buku Besar', '', 'Distribusi/ Logistik', NULL, NULL),
(90, 'Retur Penjualan', 1, 'Buat TTBC', 'Manual', 'Adm Panggung', NULL, NULL),
(91, 'Retur Penjualan', 2, 'Cek Barang', 'Manual', 'QC', NULL, NULL),
(92, 'Retur Penjualan', 3, 'Release', 'Manual', 'GM Plant', NULL, NULL),
(93, 'Retur Penjualan', 4, 'Create Retur Req - type ZRR', 'VA01', 'Sales Counter', NULL, NULL),
(94, 'Retur Penjualan', 5, 'GR ke Gen Sloc', 'VL01N / VL02N', 'QC', NULL, NULL),
(95, 'Retur Penjualan', 6, 'Transfer Status di Gen Sloc', 'ZMMENH014', 'QC', NULL, NULL),
(96, 'Retur Penjualan', 7, 'Transfer Status di Gen Sloc ke EMPTY', 'ZMMENH014', 'QC', NULL, NULL),
(97, 'Retur Penjualan', 8, 'Create Nota Retur', 'VF01', 'Adm Penjualan', NULL, NULL),
(98, 'Retur Penjualan', 9, 'Cetak Nota Retur Faktur Pajak', 'ZFIRPT040', 'Adm Penjualan', NULL, NULL),
(99, 'Penjualan Botolan IB MTS (SAP)', 1, '(Cust IB) Create PR', 'ME51N', 'Gudang', NULL, NULL),
(100, 'Penjualan Botolan IB MTS (SAP)', 2, '(Cust IB) Release PR (IB NON RELEASE)', 'ME54N', 'GM Plant/Pemb', NULL, NULL),
(101, 'Penjualan Botolan IB MTS (SAP)', 3, '(Cust IB) Create PO', 'ME21N', 'Adm Pemb.', NULL, NULL),
(102, 'Penjualan Botolan IB MTS (SAP)', 4, '(Cust IB) Release PO', 'ME29N', 'Mgr & GM Pembelian/ Direksi', NULL, NULL),
(103, 'Penjualan Botolan IB MTS (SAP)', 5, 'Buat Sales Order (SO)', 'VA01', 'Sales Counter', NULL, NULL),
(104, 'Penjualan Botolan IB MTS (SAP)', 6, 'Release SO  (Credit Management)', 'ZSDENH006', 'Management', NULL, NULL),
(105, 'Penjualan Botolan IB MTS (SAP)', 7, 'Cetak SO', 'VA03', 'Sales Counter', NULL, NULL),
(106, 'Penjualan Botolan IB MTS (SAP)', 8, 'Sales Counter buat perintah packing ', 'ZSDENH039', 'Sales Counter', NULL, NULL),
(107, 'Penjualan Botolan IB MTS (SAP)', 9, 'Create TTBK & GR ke Sloc Empty Pack', 'ZMMENH025', 'Adm Panggung/Logistik In', NULL, NULL),
(108, 'Penjualan Botolan IB MTS (SAP)', 10, 'Konfirmasi SO & buat Inquiry jika ada pekerjaan tambahan (Khusus MR)', 'ZSDENH040', 'Produksi', NULL, NULL),
(109, 'Penjualan Botolan IB MTS (SAP)', 11, 'Report', 'ZSDRPT047', 'Produksi', NULL, NULL),
(110, 'Penjualan Botolan IB MTS (SAP)', 12, 'Konversi Inquiry ke SO setelah konfirm ke relasi (Khusus MR)', 'ZSDENH043', 'Sales Counter', NULL, NULL),
(111, 'Penjualan Botolan IB MTS (SAP)', 13, 'Report', 'ZSDRPT047', 'Sales Counter', NULL, NULL),
(112, 'Penjualan Botolan IB MTS (SAP)', 14, 'Prosedur Running MRP & Create PRO MTS', '', 'PPIC', NULL, NULL),
(113, 'Penjualan Botolan IB MTS (SAP)', 15, 'Input Hasil Produksi ', 'ZPPENH001', 'Produksi', NULL, NULL),
(114, 'Penjualan Botolan IB MTS (SAP)', 16, 'Transfer Packing dari Sloc Full Pack ke sloc Distribusi', 'ZSDENH040', 'Adm Panggung/Logistik Out', NULL, NULL),
(115, 'Penjualan Botolan IB MTS (SAP)', 17, 'Cetak Packing List (dilampirkan di SO)', 'ZSDENH040', 'Adm Panggung/Logistik Out', NULL, NULL),
(116, 'Penjualan Botolan IB MTS (SAP)', 18, 'Change Surat Jalan ', 'VL02N', 'Distribusi/ Logistik Out', NULL, NULL),
(117, 'Penjualan Botolan IB MTS (SAP)', 19, 'Posting (GI) Surat Jalan ', 'VL02N', 'Distribusi/ Logistik Out', NULL, NULL),
(118, 'Penjualan Botolan IB MTS (SAP)', 20, 'Cetak Surat Jalan', 'VL03N', 'Distribusi/ Logistik Out / S.Counter', NULL, NULL),
(119, 'Penjualan Botolan IB MTS (SAP)', 21, 'Create Invoice ', 'VF01', 'Adm Penjualan', NULL, NULL),
(120, 'Penjualan Botolan IB MTS (SAP)', 22, 'Cetak Invoice', 'VF03', 'Adm Penjualan', NULL, NULL),
(121, 'Penjualan Botolan IB MTS (SAP)', 23, 'Cetak Faktur Pajak', 'ZFIENH014', 'Adm Penjualan', NULL, NULL),
(122, 'Penjualan Botolan IB MTS (SAP)', 24, 'Terima Pelunasan dari Customer via Bank transfer', 'F-21', 'GL Bank / Kasir', NULL, NULL),
(123, 'Penjualan Botolan IB MTS (SAP)', 25, 'Account Clear AR', 'F-32', 'Adm Piutang', NULL, NULL),
(124, 'Penjualan Botolan IB MTS (SAP)', 26, '(Cust IB) Create Goods Receipt', 'MIGO', 'Gudang', NULL, NULL),
(125, 'Penjualan Botolan IB MTS (SAP)', 27, '(Cust IB) Melakukan Inv.Verification', 'MIRO', 'Adm Hutang', NULL, NULL),
(126, 'Penjualan Botolan Regular & IB MTS (Non SAP)', 1, 'Buat Sales Order (SO)', 'VA01', 'Sales Counter', NULL, NULL),
(127, 'Penjualan Botolan Regular & IB MTS (Non SAP)', 2, 'Release SO  (Credit Management)', 'ZSDENH006', 'Management', NULL, NULL),
(128, 'Penjualan Botolan Regular & IB MTS (Non SAP)', 3, 'Cetak SO', 'VA03', 'Sales Counter', NULL, NULL),
(129, 'Penjualan Botolan Regular & IB MTS (Non SAP)', 4, 'Sales Counter buat perintah packing ', 'ZSDENH039', 'Sales Counter', NULL, NULL),
(130, 'Penjualan Botolan Regular & IB MTS (Non SAP)', 5, 'Create TTBK & GR ke Sloc Empty Pack', 'ZMMENH025', 'Adm Panggung/Logistik In', NULL, NULL),
(131, 'Penjualan Botolan Regular & IB MTS (Non SAP)', 6, 'Konfirmasi SO & buat Inquiry jika ada pekerjaan tambahan (Khusus MR)', 'ZSDENH040', 'Produksi', NULL, NULL),
(132, 'Penjualan Botolan Regular & IB MTS (Non SAP)', 7, 'Report', 'ZSDRPT047', 'Produksi', NULL, NULL),
(133, 'Penjualan Botolan Regular & IB MTS (Non SAP)', 8, 'Konversi Inquiry ke SO setelah konfirm ke relasi (Khusus MR)', 'ZSDENH043', 'Sales Counter', NULL, NULL),
(134, 'Penjualan Botolan Regular & IB MTS (Non SAP)', 9, 'Report', 'ZSDRPT047', 'Sales Counter', NULL, NULL),
(135, 'Penjualan Botolan Regular & IB MTS (Non SAP)', 10, 'Prosedur Running MRP & Create PRO MTS', '', 'PPIC', NULL, NULL),
(136, 'Penjualan Botolan Regular & IB MTS (Non SAP)', 11, 'Input Hasil Produksi ', 'ZPPENH001', 'Produksi', NULL, NULL),
(137, 'Penjualan Botolan Regular & IB MTS (Non SAP)', 12, 'Transfer Packing dari Sloc Full Pack ke sloc Distribusi', 'ZSDENH040', 'Adm Panggung/Logistik Out', NULL, NULL),
(138, 'Penjualan Botolan Regular & IB MTS (Non SAP)', 13, 'Cetak Packing List (dilampirkan di SO)', 'ZSDENH040', 'Adm Panggung/Logistik Out', NULL, NULL),
(139, 'Penjualan Botolan Regular & IB MTS (Non SAP)', 14, 'Change Surat Jalan ', 'VL02N', 'Distribusi/ Logistik Out', NULL, NULL),
(140, 'Penjualan Botolan Regular & IB MTS (Non SAP)', 15, 'Posting (GI) Surat Jalan ', 'VL02N', 'Distribusi/ Logistik Out', NULL, NULL),
(141, 'Penjualan Botolan Regular & IB MTS (Non SAP)', 16, 'Cetak Surat Jalan', 'VL03N', 'Distribusi/ Logistik Out / S.Counter', NULL, NULL),
(142, 'Penjualan Botolan Regular & IB MTS (Non SAP)', 17, 'Create Invoice ', 'VF01', 'Adm Penjualan', NULL, NULL),
(143, 'Penjualan Botolan Regular & IB MTS (Non SAP)', 18, 'Cetak Invoice', 'VF03', 'Adm Penjualan', NULL, NULL),
(144, 'Penjualan Botolan Regular & IB MTS (Non SAP)', 19, 'Cetak Faktur Pajak', 'ZFIENH014', 'Adm Penjualan', NULL, NULL),
(145, 'Penjualan Botolan Regular & IB MTS (Non SAP)', 20, 'Terima Pelunasan dari Customer via Bank transfer', 'F-21', 'GL Bank / Kasir', NULL, NULL),
(146, 'Penjualan Botolan Regular & IB MTS (Non SAP)', 21, 'Account Clear AR', 'F-32', 'Adm Piutang', NULL, NULL),
(147, 'Penjualan Container Regular MTS', 1, 'Buat Sales Order (SO)', 'VA01', 'Sales Counter', NULL, NULL),
(148, 'Penjualan Container Regular MTS', 2, 'Release SO (Credit Management)', 'ZSDENH006', 'Management', NULL, NULL),
(149, 'Penjualan Container Regular MTS', 3, 'Cetak SO', 'VA03', 'Sales Counter', NULL, NULL),
(150, 'Penjualan Container Regular MTS', 4, 'Distribusi buat perintah packing ', 'ZSDENH039', 'Distribusi', NULL, NULL),
(151, 'Penjualan Container Regular MTS', 5, 'Create TTBK & GR ke Sloc Empty Pack', 'ZMMENH025', 'Adm Panggung/Logistik In', NULL, NULL),
(152, 'Penjualan Container Regular MTS', 6, 'Konfirmasi SO & buat Inquiry jika ada pekerjaan tambahan (Khusus MR)', 'ZSDENH040', 'Produksi', NULL, NULL),
(153, 'Penjualan Container Regular MTS', 7, 'Report', 'ZSDRPT047', 'Produksi', NULL, NULL),
(154, 'Penjualan Container Regular MTS', 8, 'Konversi Inquiry ke SO setelah konfirm ke relasi (Khusus MR)', 'ZSDENH043', 'Sales Counter', NULL, NULL),
(155, 'Penjualan Container Regular MTS', 9, 'Report', 'ZSDRPT047', 'Sales Counter', NULL, NULL),
(156, 'Penjualan Container Regular MTS', 10, 'Check PRO Container MR', 'COOIS', 'Produksi', NULL, NULL),
(157, 'Penjualan Container Regular MTS', 11, 'Input Hasil Produksi ', 'ZPPENH001', 'Produksi', NULL, NULL),
(158, 'Penjualan Container Regular MTS', 12, 'Transfer Packing dari Sloc Full Pack ke sloc Distribusi', 'ZSDENH040', 'Adm Panggung/Logistik Out', NULL, NULL),
(159, 'Penjualan Container Regular MTS', 13, 'Cetak Packing List (dilampirkan di SO)', 'ZSDENH040', 'Adm Panggung/Logistik Out', NULL, NULL),
(160, 'Penjualan Container Regular MTS', 14, 'Change Surat Jalan ', 'VL02N', 'Distribusi/ Logistik Out', NULL, NULL),
(161, 'Penjualan Container Regular MTS', 15, 'Posting (GI) Surat Jalan ', 'VL02N', 'Distribusi/ Logistik Out', NULL, NULL),
(162, 'Penjualan Container Regular MTS', 16, 'Cetak Surat Jalan', 'VL03N', 'Distribusi/ Logistik Out / S.Counter', NULL, NULL),
(163, 'Penjualan Container Regular MTS', 17, 'Create Invoice ', 'VF01', 'Adm Penjualan', NULL, NULL),
(164, 'Penjualan Container Regular MTS', 18, 'Cetak Invoice', 'VF03', 'Adm Penjualan', NULL, NULL),
(165, 'Penjualan Container Regular MTS', 19, 'Cetak Faktur Pajak', 'ZFIENH014', 'Adm Penjualan', NULL, NULL),
(166, 'Penjualan Container Regular MTS', 20, 'Terima Pelunasan dari Customer via Cash', 'FBCJ', 'Kasir', NULL, NULL),
(167, 'Penjualan Container Regular MTS', 21, 'Terima Pelunasan dari Customer via Bank transfer', 'F-21', 'Kasir', NULL, NULL),
(168, 'Penjualan Container Regular MTS', 22, 'Account Clear AR', 'F-32', 'Adm Piutang', NULL, NULL),
(169, 'Penjualan Container Regular MTS (Reclass)', 1, 'Buat Sales Order (SO)', 'VA01', 'Sales Counter', NULL, NULL),
(170, 'Penjualan Container Regular MTS (Reclass)', 2, 'Release SO  (Credit Management)', 'ZSDENH006', 'Management', NULL, NULL),
(171, 'Penjualan Container Regular MTS (Reclass)', 3, 'Cetak SO', 'VA03', 'Sales Counter', NULL, NULL),
(172, 'Penjualan Container Regular MTS (Reclass)', 4, 'Sales Counter buat perintah packing ', 'ZSDENH039', 'Sales Counter', NULL, NULL),
(173, 'Penjualan Container Regular MTS (Reclass)', 5, 'Adm Persedian buat Re-Class Material Raw (Bahan Baku) menjadi PRD (Barang Dagangan)', 'MB1B-309', 'Adm Persediaan', NULL, NULL),
(174, 'Penjualan Container Regular MTS (Reclass)', 6, 'Transfer Packing dari Sloc Full Pack ke sloc Distribusi', 'ZSDENH040', 'Adm Panggung/Logistik Out', NULL, NULL),
(175, 'Penjualan Container Regular MTS (Reclass)', 7, 'Cetak Packing List (dilampirkan di SO)', 'ZSDENH040', 'Adm Panggung/Logistik Out', NULL, NULL),
(176, 'Penjualan Container Regular MTS (Reclass)', 8, 'Change Surat Jalan ', 'VL02N', 'Distribusi/ Logistik Out', NULL, NULL),
(177, 'Penjualan Container Regular MTS (Reclass)', 9, 'Posting (GI) Surat Jalan ', 'VL02N', 'Distribusi/ Logistik Out', NULL, NULL),
(178, 'Penjualan Container Regular MTS (Reclass)', 10, 'Cetak Surat Jalan', 'VL03N', 'Distribusi/ Logistik Out / S.Counter', NULL, NULL),
(179, 'Penjualan Container Regular MTS (Reclass)', 11, 'Create Invoice ', 'VF01', 'Adm Penjualan', NULL, NULL),
(180, 'Penjualan Container Regular MTS (Reclass)', 12, 'Cetak Invoice', 'VF03', 'Adm Penjualan', NULL, NULL),
(181, 'Penjualan Container Regular MTS (Reclass)', 13, 'Cetak Faktur Pajak', 'ZFIENH014', 'Adm Penjualan', NULL, NULL),
(182, 'Penjualan Container Regular MTS (Reclass)', 14, 'Terima Pelunasan dari Customer via Cash', 'FBCJ', 'Kasir', NULL, NULL),
(183, 'Penjualan Container Regular MTS (Reclass)', 15, 'Terima Pelunasan dari Customer via Bank transfer', 'F-21', 'Kasir', NULL, NULL),
(184, 'Penjualan Container Regular MTS (Reclass)', 16, 'Account Clear AR', 'F-32', 'Adm Piutang', NULL, NULL),
(185, 'Sales Kontrak Material', 1, 'Prosedur create Master data Material, BOM, Routing baru', 'CS01,CR01,CA01,C223', '', NULL, NULL),
(186, 'Sales Kontrak Material', 2, 'Finish Good Standard Price Maintenance', 'CK11N', '', NULL, NULL),
(187, 'Sales Kontrak Material', 3, 'Finish Good Standard Price Maintenance', 'CK24', '', NULL, NULL),
(188, 'Sales Kontrak Material', 4, 'Master data pricing', 'VK11', '', NULL, NULL),
(189, 'Sales Kontrak Material', 5, 'Buat Sales Kontrak', 'VA41', 'Sales Counter', NULL, NULL),
(190, 'Sales Kontrak Material', 6, 'Release SO Kontrak (Credit Management)', 'ZSDENH006', 'Management', NULL, NULL),
(191, 'Sales Kontrak Material', 7, 'Create Invoice DP', 'VF01', 'Adm Penjualan', NULL, NULL),
(192, 'Sales Kontrak Material', 8, 'Penerimaan Uang Muka via cash', 'FBCJ', 'Kasir', NULL, NULL),
(193, 'Sales Kontrak Material', 9, 'Pengakuan Uang Muka', 'F-29', 'Adm Piutang', NULL, NULL),
(194, 'Sales Kontrak Material', 10, 'Create SO partial sesuai termin', 'VA01', 'Sales Counter', NULL, NULL),
(195, 'Sales Kontrak Material', 11, 'Sales Counter buat perintah \r\npacking ', 'ZSDENH039', 'Adm Panggung/Logistik Out', NULL, NULL),
(196, 'Sales Kontrak Material', 12, 'Input Hasil Produksi ', 'ZPPENH001', 'Produksi', NULL, NULL),
(197, 'Sales Kontrak Material', 13, 'Transfer Packing dari Sloc Full Pack ke sloc Distribusi', 'ZSDENH040', 'Adm Panggung/Logistik Out', NULL, NULL),
(198, 'Sales Kontrak Material', 14, 'Change Surat Jalan ', 'VL02N', 'Distribusi/ Logistik Out', NULL, NULL),
(199, 'Sales Kontrak Material', 15, 'Posting (GI) Surat Jalan ', 'VL02N', 'Distribusi/ Logistik Out', NULL, NULL),
(200, 'Sales Kontrak Material', 16, 'Cetak Surat Jalan', 'VL03N', 'Distribusi/ Logistik Out / S.Counter', NULL, NULL),
(201, 'Sales Kontrak Material', 17, 'Create Invoice ', 'VF01', 'Adm Penjualan', NULL, NULL),
(202, 'Sales Kontrak Material', 18, 'Terima Pelunasan dari Customer via Bank transfer', 'F-21', 'Kasir', NULL, NULL),
(203, 'Sales Kontrak Material', 19, 'Clear A/R', 'F-32', 'Adm Piutang', NULL, NULL),
(204, 'Pengembalian Botol Rusak MR', 1, 'Create TTBK & GR ke Sloc Empty Pack', 'ZMMENH025', 'Adm Panggung', NULL, NULL),
(205, 'Pengembalian Botol Rusak MR', 2, 'Buat Sales Order (SO) - ZNP', 'VA01', 'Sales Counter', NULL, NULL),
(206, 'Pengembalian Botol Rusak MR', 3, 'Sales Counter buat perintah packing ', 'ZSDENH039', 'Sales Counter', NULL, NULL),
(207, 'Pengembalian Botol Rusak MR', 4, 'Transfer Packing dari Sloc Empty Pack ke sloc Distribusi', 'ZSDENH040', 'Adm Panggung/Logistik Out', NULL, NULL),
(208, 'Pengembalian Botol Rusak MR', 5, 'Cetak Packing List (dilampirkan di SO)', 'ZSDENH040', 'Adm Panggung/Logistik Out', NULL, NULL),
(209, 'Pengembalian Botol Rusak MR', 6, 'Posting (GI) Surat Jalan ', 'VL02N', 'Distribusi/ Logistik Out', NULL, NULL),
(210, 'Pengembalian Botol Rusak MR', 7, 'Cetak Surat Jalan', 'VL03N', 'Distribusi/ Logistik Out / S.Counter', NULL, NULL),
(211, 'Perubahan Fungsi Gas', 1, 'Create SPI', 'Manual', 'Marketing', NULL, NULL),
(212, 'Perubahan Fungsi Gas', 2, 'Create BA Perubahan SN Botol - MP', 'Manual', 'Adm Botol', NULL, NULL),
(213, 'Perubahan Fungsi Gas', 3, 'Input BA Perubahan SN Botol - MP', 'ZSDENH026', 'Adm Botol', NULL, NULL),
(214, 'Perubahan Fungsi Gas', 4, 'Cetak BA Perubahan SN Botol - MP', 'ZSDENH026', 'Adm Botol', NULL, NULL),
(215, 'BA Perubahan SN Botol', 1, 'Create SPI', 'Manual', '', NULL, NULL),
(216, 'BA Perubahan SN Botol', 2, 'Create BA Perubahan SN Botol - MP', 'Manual', 'Adm Botol', NULL, NULL),
(217, 'BA Perubahan SN Botol', 3, 'Input BA Perubahan SN Botol - MP', 'ZSDENH026', 'Adm Botol', NULL, NULL),
(218, 'BA Perubahan SN Botol', 4, 'Cetak BA Perubahan SN Botol - MP', 'ZSDENH026', 'Adm Botol', NULL, NULL),
(219, 'Pekerjaan Jasa External & Pembelian Material', 1, 'Buat Notifikasi', 'IW21', 'Maintc.', NULL, NULL),
(220, 'Pekerjaan Jasa External & Pembelian Material', 2, 'Buat Maintenance Order', 'IW22', 'Maintc.', NULL, NULL),
(221, 'Pekerjaan Jasa External & Pembelian Material', 3, 'Release (PR) Purchase Requisition Jasa', 'ME54N', 'Gudang', NULL, NULL),
(222, 'Pekerjaan Jasa External & Pembelian Material', 4, 'Buat Purchase Order Service refer ke Purchase Requisition  Material pada langkah 3', 'ME21N', 'Pembelian', NULL, NULL),
(223, 'Pekerjaan Jasa External & Pembelian Material', 5, 'Release PO', 'ME29N', 'Pembelian', NULL, NULL),
(224, 'Pekerjaan Jasa External & Pembelian Material', 6, 'Goods Receipt untuk PO langkah ke 4 (Jasa & Material)', 'MIGO', 'Gudang', NULL, NULL),
(225, 'Pekerjaan Jasa External & Pembelian Material', 7, 'Sekaligus lakukan GI untuk Material', 'ZMMENH013', 'Gudang', NULL, NULL),
(226, 'Pekerjaan Jasa External & Pembelian Material', 8, 'Confirmation Work Time after finish working', 'IW41', 'Maintc.', NULL, NULL),
(227, 'Pekerjaan Jasa External & Pembelian Material', 9, 'Lakukan Settlement ke Cost Center, Internal Order atau FXA (Fix Asset)', 'KO88', 'Tim CO', NULL, NULL),
(228, 'Pekerjaan Jasa External & Pembelian Material', 10, 'Teco ( Technical Complete )', 'IW32 / IW38', 'Maintc.', NULL, NULL),
(229, 'Pekerjaan Jasa External & Pembelian Material', 11, 'Close MO', 'IW32 / IW38', 'Maintc.', NULL, NULL),
(230, 'Material Ambil Dari Gudang (PM Internal)', 1, 'Buat Notifikasi', 'IW21', 'Maintc.', NULL, NULL),
(231, 'Material Ambil Dari Gudang (PM Internal)', 2, 'Buat Maintenance Order', 'IW22', 'Maintc.', NULL, NULL),
(232, 'Material Ambil Dari Gudang (PM Internal)', 3, 'Lakukan Goods Issue untuk internal material (Refer NO. Reservasi)', 'ZMMENH013', 'Gudang', NULL, NULL),
(233, 'Material Ambil Dari Gudang (PM Internal)', 4, 'Confirmation Work Time after finish working', 'IW41', 'Maintc.', NULL, NULL),
(234, 'Material Ambil Dari Gudang (PM Internal)', 5, 'Lakukan Settlement ke Cost Center, Internal Order atau FXA', 'KO88', 'Tim CO', NULL, NULL),
(235, 'Material Ambil Dari Gudang (PM Internal)', 6, 'Teco ( Technical Complete )', 'IW32 / IW38', 'Maintc.', NULL, NULL),
(236, 'Material Ambil Dari Gudang (PM Internal)', 7, 'Close MO', 'IW32 / IW38', 'Maintc.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(4) NOT NULL,
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

INSERT INTO `user` (`id`, `userid`, `userpwd`, `userlname`, `usermodul`, `chg_by`, `chg_date`) VALUES
(1, 'Admin', 'ff2364a0be3d20e46cc69efb36afe9a5', 'Administrator', 'SUPER', NULL, NULL),
(2, 'Sony', '33561003f44d374c719506bef4faeba4', 'Sony', 'ABAP', NULL, NULL),
(3, 'Ferry', '46171b077997b166bb30cf5494eff2f8', 'Ferry', 'ABAP', NULL, NULL),
(4, 'Faris', '7d77e825b80cff62a72e680c1c81424f', 'Faris', 'ABAP', NULL, NULL),
(5, 'Johan', '7fedcb034ecf9df4be8c1ea13362053b', 'Johan', 'ABAP', NULL, NULL),
(6, 'Tjandra', 'e680449ab372830240dc3d25336658e4', 'Tjandra', 'BASIS', NULL, NULL),
(7, 'Andrean', 'de05930dd46a984ca32aad9feac718e8', 'Andrean', 'BASIS', NULL, NULL),
(8, 'Nurnia', '270a6ec508f0b6d7dc48ca66216e3119', 'Nurnia', 'FICO', NULL, NULL),
(9, 'Yohanes', '493331a7321bf622460493a8cda5e4c4', 'Yohanes', 'FICO', NULL, NULL),
(10, 'Aris', '288077f055be4fadc3804a69422dd4f8', 'Aris', 'FICO', NULL, NULL),
(11, 'Putra', '5e0c5a0bf82decdd43b2150b622c66c5', 'Putra', 'FICO', NULL, NULL),
(12, 'Purwandi', 'd25db176883c2e74f77f49f61d1ac376', 'Purwandi', 'MM', NULL, NULL),
(13, 'Thomas', 'ef6e65efc188e7dffd7335b646a85a21', 'Thomas', 'MM', NULL, NULL),
(14, 'Hendri', 'f68bac89085669468822b54a74b9b93e', 'Hendri', 'MM', NULL, NULL),
(15, 'Zamroni', '25d55ad283aa400af464c76d713c07ad', 'Zamroni', 'PM', NULL, NULL),
(16, 'Achmad', 'e590ad4b83ac97f84569825e8f00c730', 'Achmad', 'PM', NULL, NULL),
(17, 'Rita', '84bcf7453ea1257d8fa507ad894f1249', 'Rita', 'PP', NULL, NULL),
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
  `ccat` varchar(45) DEFAULT NULL,
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
  `vcinfo` varchar(255) DEFAULT NULL,
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
  `vuinfo` varchar(255) DEFAULT NULL,
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
  ADD PRIMARY KEY (`id`),
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `m_check`
--
ALTER TABLE `m_check`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=511;

--
-- AUTO_INCREMENT for table `m_modul`
--
ALTER TABLE `m_modul`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `m_uat_scn`
--
ALTER TABLE `m_uat_scn`
  MODIFY `uat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `m_uat_step`
--
ALTER TABLE `m_uat_step`
  MODIFY `id_step` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `v_check`
--
ALTER TABLE `v_check`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `v_uat`
--
ALTER TABLE `v_uat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
