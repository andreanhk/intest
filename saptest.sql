-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2018 at 09:27 PM
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
  `loginuname` varchar(255) DEFAULT NULL,
  `loginpwd` varchar(255) DEFAULT NULL,
  `loginright` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_data`
--

INSERT INTO `login_data` (`loginuid`, `loginuname`, `loginpwd`, `loginright`, `date`) VALUES
(1, 'admin', 'admin', 1, NULL);

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
  `chg_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_ba`
--

INSERT INTO `m_ba` (`id`, `idba`, `nameba`, `date_live`, `p_fico`, `p_mm`, `p_pm`, `p_pp`, `p_sd`, `chg_by`, `chg_date`) VALUES
(1, 1000, 'Samator', NULL, 'SAPFICO', 'SAPMM', 'SAPPM', 'SAPPP', 'SAPSD', 'Admin', '2018-05-20 17:29:33'),
(2, 2000, 'Aneka Gas Industri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 3000, 'Samator Gas Industri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 3016, 'SGI Rantau Prapat', '2018-04-01', 'Putra', 'Purwandi', 'Zamroni', 'Abta', 'Alex', 'Admin', '2018-05-26 00:06:59'),
(5, 3916, 'SGI Depo Sibolga', '2018-04-01', 'Yohanes', 'Nino', 'Zamroni', 'Rita', 'Suyanto', 'Admin', '2018-05-26 00:07:39'),
(6, 2072, 'AGI Manado', '2018-04-01', 'Aris', 'Thomas', 'Achmad', 'Fitri', 'Rendra', 'Admin', '2018-05-26 00:06:15'),
(7, 2073, 'AGI Ternate', '2018-04-01', 'Aris', 'Thomas', 'Achmad', 'Fitri', 'Rendra', 'Admin', '2018-05-26 00:07:12'),
(8, 2065, 'AGI Luwuk', '2018-06-01', 'Aris', 'Thomas', 'Zamroni', 'Fitri', 'Suyanto', 'Admin', '2018-05-26 00:03:37');

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
(1, 'Enterprise Structure', 'Define BA', 'SPRO', 'V_TGSB', 'Create', 'FICO', 'SAPFICO', '2018-05-16 22:54:06'),
(2, 'Enterprise Structure', 'Assign Business Area to Consolidation Business Area', 'SPRO', 'V_GSB_A', 'Check', 'FICO', NULL, NULL),
(6, 'Financial Accounting (Bank Accounting)', 'Set Up Cash Journal', 'FBCJC0', '', 'Create', 'FICO', NULL, NULL),
(7, 'Financial Accounting (Bank Accounting)', 'Define House Banks', 'F112', '', 'Create', 'FICO', NULL, NULL),
(8, 'Financial Accounting (Bank Accounting)', 'Create, Change, Delete Business Transactions', 'FBCJC2', '', 'Create', 'FICO', NULL, NULL),
(9, 'Financial Accounting (Bank Accounting)', 'Validation in Accounting Documents (workbench req.)', 'OB28', '', 'Create', 'FICO', NULL, NULL),
(10, 'Financial Accounting (Asset Accounting)', 'Specify Transfer Date/Last Closed Fiscal Year', 'SPRO', 'V_T093C_08', 'Create', 'FICO', NULL, NULL),
(11, 'Financial Accounting (Asset Accounting)', 'Specify Last Period Posted in Prv.System (Transf.During FY)', 'OAYC', '', 'Create', 'FICO', NULL, NULL),
(12, 'Financial Supply Chain Mgmt (Cash & Liquidity)', 'Define Cash Management Account Name', 'SPRO', 'V_T035D', 'Create', 'FICO', NULL, NULL),
(13, 'Financial Supply Chain Mgmt (Cash & Liquidity)', 'Maintain Structure', 'SPRO', 'V_T038', 'Create', 'FICO', NULL, NULL),
(14, 'Controlling (Cost Center Acct)', 'Create Plan Distribution', 'KSV7', '', 'File Checklist PP', 'FICO', NULL, NULL),
(15, 'Controlling (Cost Center Acct)', 'Create Plan Assessment', 'KSU7', '', 'File Checklist PP', 'FICO', NULL, NULL),
(16, 'Controlling (Cost Center Acct)', 'Edit Automatic Account Assignment', 'OKB9', '', 'Create', 'FICO', NULL, NULL),
(17, 'Controlling (Cost Center Acct)', 'Create Actual Distribution', 'KSV1', '', 'File Checklist PP', 'FICO', NULL, NULL),
(18, 'Controlling (Cost Center Acct)', 'Create Actual Assessment', 'KSU1', '', 'File Checklist PP', 'FICO', NULL, NULL),
(19, 'Product Cost Controlling (Prd Cost Planning)', 'Define Overhead Groups', 'OKZ2', '', 'Create', 'FICO', NULL, NULL),
(20, 'Product Cost Controlling', 'Check Special Procurement Types ', 'SPRO', 'V460A', 'Check Only', 'FICO', NULL, NULL),
(21, 'Product Cost Controlling (Cost Obj Controlling)', 'Define Cost-Accounting-Relevant Default Values for Order Types and Plants', 'SPRO', 'V_T399X_PC', 'Create', 'FICO', NULL, NULL),
(22, 'Product Cost Controlling (Simulatenous Costing)', 'Activate Generation of Cost Log in Repetitive Manufacturing', 'SPRO', 'V_T437D_F', 'Create', 'FICO', NULL, NULL),
(23, 'Product Cost Controlling', 'Define Default Variance Keys for Plants', 'OKVW', '', 'Create', 'FICO', NULL, NULL),
(24, 'Product Cost Controlling', 'Define Goods Received Valuation for Order Delivery', 'SPRO', 'V_TCO10', 'Create', 'FICO', NULL, NULL),
(25, 'Product Cost Controlling (Actual Costing/Ml)', 'Configure Dynamic Price Changes', 'SPRO', 'V_T001K_PR', 'Check Only', 'FICO', NULL, NULL),
(26, 'Profitability Analysis (Ent. Controlling)', 'Define Order Type-Dependent Parameters', 'COR4', '', 'Check Only (PP)', 'FICO', NULL, NULL),
(27, 'Profitability Analysis (Ent. Controlling)', 'Order Type - Dependent Parameters', 'OPL8', '', 'Check Only (PP)', 'FICO', NULL, NULL),
(28, 'Profitability Analysis (Ent. Controlling)', 'Valuation Variant for Order Costing', 'OPK9', '', 'Check Only (PP)', 'FICO', NULL, NULL),
(29, 'Profitability Analysis (Ent. Controlling)', 'General Version Define', 'OKEV', '', 'Check Only', 'FICO', NULL, NULL),
(30, 'Maintain Table View', 'Mapping cost center untuk transaksi input Profit Segment', 'SM30', 'ZMAPCOSTCENTER', 'Create', 'FICO', NULL, NULL),
(31, 'Maintain Table View', 'Mapping GL Account Cash Clrg/Bank utk UJB', 'SM30', 'ZREG_UJB_MAPV', 'Create', 'FICO', NULL, NULL),
(32, 'Maintain Table View', 'Daftar no sertifikat UJB yg berlaku', 'SM30', 'ZUJB_NUMRANGE', 'Create', 'FICO', NULL, NULL),
(33, 'Enterprise Structure (Logistic General)', 'Plant', 'OX10', '', 'Create', 'MM', NULL, NULL),
(34, 'Enterprise Structure (Logistic General)', 'Plant Parameters', 'SM30', 'V_159L', 'Create', 'MM', NULL, NULL),
(35, 'Enterprise Structure (Logistic General)', 'Assign plant ke company code', 'OX18', '', 'Create', 'MM', NULL, NULL),
(36, 'Enterprise Structure (Logistic General)', 'Assign BA ke plant dan divisi', 'OMJ7', '', 'Create', 'MM', NULL, NULL),
(37, 'Enterprise Structure (Logistic General)', 'Create & Assign Porg ke Plant', 'OX08 ; OX17', '', 'Create', 'MM', NULL, NULL),
(38, 'Enterprise Structure (Logistic General)', 'Create Purchasing group', 'OME4', '', 'Create', 'MM', NULL, NULL),
(39, 'Enterprise Structure (Logistic General)', 'Storage Location', 'OX09', '', 'Create', 'MM', NULL, NULL),
(40, 'Enterprise Structure (Logistic General)', 'Create/Check TOP (Term Of Payment)', 'OME2', '', 'Check Only', 'MM', NULL, NULL),
(41, 'Enterprise Structure (Logistic General)', 'Assign standard purchasing organization to plant ', 'SM30', 'V_001W_E', 'Create', 'MM', NULL, NULL),
(42, 'Enterprise Structure (Logistic General)', 'Define Stock Determinationgroup', 'OSPX', '', 'Create', 'MM', NULL, NULL),
(43, 'Enterprise Structure (Logistic General)', 'Assign Stock Determination Rule in Production Order', 'OPJ2', '', 'Create', 'MM', NULL, NULL),
(44, 'Enterprise Structure (Logistic General)', 'Define Control Data for Pull List', 'SPRO', '', 'Create', 'MM', NULL, NULL),
(45, 'Enterprise Structure (Logistic General)', 'Assign Stock Determination Rule in Pull list', 'SM30', 'V_T435W_BF', 'Check Only', 'MM', NULL, NULL),
(46, 'Enterprise Structure (Logistic General)', 'Define Storage Location MRP per Plant', 'SM30', 'V_T001L_D', 'Create', 'MM', NULL, NULL),
(47, 'Enterprise Structure (Logistic General)', 'Account deteremnination for valuation areas', 'OMWD', '', 'Check Only', 'MM', NULL, NULL),
(48, 'Setting field selection material type', 'Create/Check Unit of Measure', 'CUNI', '', 'Check Only', 'MM', NULL, NULL),
(49, 'Setting field selection material type', 'Create material group', 'OMSF', '', 'Check Only', 'MM', NULL, NULL),
(50, 'Setting field selection material type', 'Configure Split valuation', 'OMWC', '', 'Create', 'MM', NULL, NULL),
(51, 'Setting field selection material type', 'Define Attributes of Material Types', 'T134M', '', 'Create', 'MM', NULL, NULL),
(52, 'Modify/Define MRP Type', 'Create type PURCHASE REQUISITION (Number, Link)', 'V_162', '', 'Check Only', 'MM', NULL, NULL),
(53, 'Modify/Define MRP Type', 'Create type PURCHASE ORDER (Number, Link)', 'V_162', '', 'Check Only', 'MM', NULL, NULL),
(54, 'Modify/Define MRP Type', 'Create & Check Schema Prosedure', 'V_TMKE', '', 'Check Only', 'MM', NULL, NULL),
(55, 'Modify/Define MRP Type', 'Create/Define condition type PO', 'V_T685A', '', 'Check Only', 'MM', NULL, NULL),
(56, 'Modify/Define MRP Type', 'Carry Out Overall Maint of MRP Groups', 'ZPRD, ZRAW, ZSPR, ZSUP', 'OMD1', 'Create', 'MM', NULL, NULL),
(57, 'Modify/Define MRP Type', 'Define MRP Group for Each Material Type', 'V_TMW00', '', 'Create', 'MM', NULL, NULL),
(58, 'Modify/Define MRP Type', 'Define MRP Controllers', 'PIC ZPRD, PIC ZRAW, PIC ZSPR, PIC ZSUP', 'V_T024D', 'Create', 'MM', NULL, NULL),
(59, 'Modify/Define MRP Type', 'Define Special Procurement Types', 'V460A', '', 'Create', 'MM', NULL, NULL),
(60, 'Modify/Define MRP Type', 'Carry Out Overall Maintenance of Plant Parameter', 'V438M', '', 'Create', 'MM', NULL, NULL),
(61, 'Modify/Define MRP Type', 'Define Document Life', 'V_159R', '', 'Create', 'MM', NULL, NULL),
(62, 'Maintain account assigment category', 'Purchase Requisition, Release Procedure, Procedure with Classification, Set Up Procedure with Classification', 'SPRO', 'V_T16FS', 'Create', 'MM', NULL, NULL),
(63, 'Maintain account assigment category', 'Create release strategy PURCHASE REQUISITION', 'T16FK', '', 'Create', 'MM', NULL, NULL),
(64, 'Maintain account assigment category', 'Create release CODE PURCHASE ORDER', 'VV_T16FC_2', '', 'Create', 'MM', NULL, NULL),
(65, 'Maintain account assigment category', 'Create release strategy PURCHASE ORDER', 'V_T16FS', '', 'Create', 'MM', NULL, NULL),
(66, 'Maintain account assigment category', 'Create/check movement type', 'OMJJ', '', 'Check Only', 'MM', NULL, NULL),
(67, 'Maintain account assigment category', 'Configure automatic posting', 'OBYC', '', 'Check Only', 'MM', NULL, NULL),
(68, 'Maintain account assigment category', 'Create reason for movement', 'V_157L', '', 'Check Only', 'MM', NULL, NULL),
(69, 'Maintain account assigment category', 'Defaul value of doc type', 'V_T160', '', 'Check Only', 'MM', NULL, NULL),
(70, 'Maintain account assigment category', 'Set tolerance limits', 'V_169G', '', 'Check Only', 'MM', NULL, NULL),
(71, 'Maintain account assigment category', 'Define permissible partner role per accout group', '', '', '', 'MM', NULL, NULL),
(72, 'Maintain account assigment category', 'Set Check for duplicate invoice', '', '', '', 'MM', NULL, NULL),
(73, 'Maintain account assigment category', 'Maintai default value per tax code', 'V_169V_ST', '', 'Check Only', 'MM', NULL, NULL),
(74, 'Maintain account assigment category', 'Allow freezing of book inventory balance in stor loc', '', '', '', 'MM', NULL, NULL),
(75, 'Maintain account assigment category', 'Define text type for header text', '', '', '', 'MM', NULL, NULL),
(76, 'Maintain tabel/field program Tcode SM30 CLIENT 400', 'Kombinasi PR', 'SM30', 'ZPRRELEASE', 'Check Only', 'MM', NULL, NULL),
(77, 'Maintain tabel/field program Tcode SM30 CLIENT 400', 'Kombinasi PR Interbranch & STO', 'SM30', 'ZPRRELEASE', 'Check Only', 'MM', NULL, NULL),
(78, 'Maintain tabel/field program Tcode SM30 CLIENT 400', 'Kombinasi PO', 'SM30', 'ZPORELEASE', 'Check Only', 'MM', NULL, NULL),
(79, 'Maintain tabel/field program Tcode SM30 CLIENT 400', 'Kombinasi PO Interbranch & STO', 'SM30', 'ZPORELEASE', 'Check Only', 'MM', NULL, NULL),
(80, 'Maintain tabel/field program Tcode SM30 CLIENT 400', 'Nopol Kend Botolan u/ TTBK, Packing', 'SM30', 'ZNKEND', '-', 'MM', NULL, NULL),
(81, 'Maintain MM02', 'Field Material Original Terkait KKF3', 'MM02', '', '-', 'MM', NULL, NULL),
(82, 'Maintain MM02', 'Trading field', 'MM02', '', '-', 'MM', NULL, NULL),
(83, 'Enterprise Structure (Logistic General)', 'Plant', 'OX10', '', 'Create', 'MM', NULL, NULL),
(84, 'Enterprise Structure (Logistic General)', 'Plant Parameters', 'SM30', 'V_159L', 'Create', 'MM', NULL, NULL),
(85, 'Enterprise Structure (Logistic General)', 'Assign plant ke company code', 'OX18', '', 'Create', 'MM', NULL, NULL),
(86, 'Enterprise Structure (Logistic General)', 'Assign BA ke plant dan divisi', 'OMJ7', '', 'Create', 'MM', NULL, NULL),
(87, 'Enterprise Structure (Logistic General)', 'Create & Assign Porg ke Plant', 'OX08 ; OX17', '', 'Create', 'MM', NULL, NULL),
(88, 'Enterprise Structure (Logistic General)', 'Create Purchasing group', 'OME4', '', 'Create', 'MM', NULL, NULL),
(89, 'Enterprise Structure (Logistic General)', 'Storage Location', 'OX09', '', 'Create', 'MM', NULL, NULL),
(90, 'Enterprise Structure (Logistic General)', 'Create/Check TOP (Term Of Payment)', 'OME2', '', 'Check Only', 'MM', NULL, NULL),
(91, 'Enterprise Structure (Logistic General)', 'Assign standard purchasing organization to plant ', 'SM30', 'V_001W_E', 'Create', 'MM', NULL, NULL),
(92, 'Enterprise Structure (Logistic General)', 'Define Stock Determinationgroup', 'OSPX', '', 'Create', 'MM', NULL, NULL),
(93, 'Enterprise Structure (Logistic General)', 'Assign Stock Determination Rule in Production Order', 'OPJ2', '', 'Create', 'MM', NULL, NULL),
(94, 'Enterprise Structure (Logistic General)', 'Define Control Data for Pull List', 'SPRO', '', 'Create', 'MM', NULL, NULL),
(95, 'Enterprise Structure (Logistic General)', 'Assign Stock Determination Rule in Pull list', 'SM30', 'V_T435W_BF', 'Check Only', 'MM', NULL, NULL),
(96, 'Enterprise Structure (Logistic General)', 'Define Storage Location MRP per Plant', 'SM30', 'V_T001L_D', 'Create', 'MM', NULL, NULL),
(97, 'Enterprise Structure (Logistic General)', 'Account deteremnination for valuation areas', 'OMWD', '', 'Check Only', 'MM', NULL, NULL),
(98, 'Setting field selection material type', 'Create/Check Unit of Measure', 'CUNI', '', 'Check Only', 'MM', NULL, NULL),
(99, 'Setting field selection material type', 'Create material group', 'OMSF', '', 'Check Only', 'MM', NULL, NULL),
(100, 'Setting field selection material type', 'Configure Split valuation', 'OMWC', '', 'Create', 'MM', NULL, NULL),
(101, 'Setting field selection material type', 'Define Attributes of Material Types', 'T134M', '', 'Create', 'MM', NULL, NULL),
(102, 'Modify/Define MRP Type', 'Create type PURCHASE REQUISITION (Number, Link)', 'V_162', '', 'Check Only', 'MM', NULL, NULL),
(103, 'Modify/Define MRP Type', 'Create type PURCHASE ORDER (Number, Link)', 'V_162', '', 'Check Only', 'MM', NULL, NULL),
(104, 'Modify/Define MRP Type', 'Create & Check Schema Prosedure', 'V_TMKE', '', 'Check Only', 'MM', NULL, NULL),
(105, 'Modify/Define MRP Type', 'Create/Define condition type PO', 'V_T685A', '', 'Check Only', 'MM', NULL, NULL),
(106, 'Modify/Define MRP Type', 'Carry Out Overall Maint of MRP Groups', 'ZPRD, ZRAW, ZSPR, ZSUP', 'OMD1', 'Create', 'MM', NULL, NULL),
(107, 'Modify/Define MRP Type', 'Define MRP Group for Each Material Type', 'V_TMW00', '', 'Create', 'MM', NULL, NULL),
(108, 'Modify/Define MRP Type', 'Define MRP Controllers', 'PIC ZPRD, PIC ZRAW, PIC ZSPR, PIC ZSUP', 'V_T024D', 'Create', 'MM', NULL, NULL),
(109, 'Modify/Define MRP Type', 'Define Special Procurement Types', 'V460A', '', 'Create', 'MM', NULL, NULL),
(110, 'Modify/Define MRP Type', 'Carry Out Overall Maintenance of Plant Parameter', 'V438M', '', 'Create', 'MM', NULL, NULL),
(111, 'Modify/Define MRP Type', 'Define Document Life', 'V_159R', '', 'Create', 'MM', NULL, NULL),
(112, 'Maintain account assigment category', 'Purchase Requisition, Release Procedure, Procedure with Classification, Set Up Procedure with Classification', 'SPRO', 'V_T16FS', 'Create', 'MM', NULL, NULL),
(113, 'Maintain account assigment category', 'Create release strategy PURCHASE REQUISITION', 'T16FK', '', 'Create', 'MM', NULL, NULL),
(114, 'Maintain account assigment category', 'Create release CODE PURCHASE ORDER', 'VV_T16FC_2', '', 'Create', 'MM', NULL, NULL),
(115, 'Maintain account assigment category', 'Create release strategy PURCHASE ORDER', 'V_T16FS', '', 'Create', 'MM', NULL, NULL),
(116, 'Maintain account assigment category', 'Create/check movement type', 'OMJJ', '', 'Check Only', 'MM', NULL, NULL),
(117, 'Maintain account assigment category', 'Configure automatic posting', 'OBYC', '', 'Check Only', 'MM', NULL, NULL),
(118, 'Maintain account assigment category', 'Create reason for movement', 'V_157L', '', 'Check Only', 'MM', NULL, NULL),
(119, 'Maintain account assigment category', 'Defaul value of doc type', 'V_T160', '', 'Check Only', 'MM', NULL, NULL),
(120, 'Maintain account assigment category', 'Set tolerance limits', 'V_169G', '', 'Check Only', 'MM', NULL, NULL),
(121, 'Maintain account assigment category', 'Define permissible partner role per accout group', '', '', '', 'MM', NULL, NULL),
(122, 'Maintain account assigment category', 'Set Check for duplicate invoice', '', '', '', 'MM', NULL, NULL),
(123, 'Maintain account assigment category', 'Maintai default value per tax code', 'V_169V_ST', '', 'Check Only', 'MM', NULL, NULL),
(124, 'Maintain account assigment category', 'Allow freezing of book inventory balance in stor loc', '', '', '', 'MM', NULL, NULL),
(125, 'Maintain account assigment category', 'Define text type for header text', '', '', '', 'MM', NULL, NULL),
(126, 'Maintain tabel/field program Tcode SM30 CLIENT 400', 'Kombinasi PR', 'SM30', 'ZPRRELEASE', 'Check Only', 'MM', NULL, NULL),
(127, 'Maintain tabel/field program Tcode SM30 CLIENT 400', 'Kombinasi PR Interbranch & STO', 'SM30', 'ZPRRELEASE', 'Check Only', 'MM', NULL, NULL),
(128, 'Maintain tabel/field program Tcode SM30 CLIENT 400', 'Kombinasi PO', 'SM30', 'ZPORELEASE', 'Check Only', 'MM', NULL, NULL),
(129, 'Maintain tabel/field program Tcode SM30 CLIENT 400', 'Kombinasi PO Interbranch & STO', 'SM30', 'ZPORELEASE', 'Check Only', 'MM', NULL, NULL),
(130, 'Maintain tabel/field program Tcode SM30 CLIENT 400', 'Nopol Kend Botolan u/ TTBK, Packing', 'SM30', 'ZNKEND', '-', 'MM', NULL, NULL),
(131, 'Maintain MM02', 'Field with qty Structure terkait KKF3', 'MM02', '', '-', 'MM', NULL, NULL),
(132, 'Maintain MM02', 'Field Material Original Terkait KKF3', 'MM02', '', '-', 'MM', NULL, NULL),
(133, 'Maintain MM02', 'Trading field', 'MM02', '', '-', 'MM', NULL, NULL),
(134, 'Maintain MM02', 'Field Volume botol MP, MC, MS', 'MM02', '', '-', 'MM', NULL, NULL),
(135, 'MARA-XCHPF', 'Batch management botol BMC', 'MM02 / MM17', '', '-', 'MM', NULL, NULL),
(136, 'MARA-XCHPF', 'Revenue Stream (copy plant lain)', 'MM02 / MM17', '', '-', 'MM', NULL, NULL),
(137, 'Maintain Release PR/PO', 'Assign Objects to Classes ? Class Type : 032 FRG_EKKO [223]', 'CL20N', '', 'Create', 'MM', NULL, NULL),
(138, 'Maintain Release PR/PO', 'Assign Objects to Classes ? FRG_EBAN', 'CL20N', '', 'Create', 'MM', NULL, NULL),
(139, 'Maintain Release PR/PO', 'Assign Objects/Classes to Class ? FRG_EKKO', 'CL24N', '', 'Create', 'MM', NULL, NULL),
(140, 'Maintain Release PR/PO', 'Assign Objects/Classes to Class ? FRG_EBAN', 'CL24N', '', 'Create', 'MM', NULL, NULL),
(141, 'Maintain Release PR/PO', 'Assign Objects/Classes to Class ? INTERBranch', 'CL24N', '', 'Create', 'MM', NULL, NULL),
(142, 'Variant Report', 'ZMMSQVI_RMD untuk interbranch', 'ZMMSQVI_RMD', '', 'Create', 'MM', NULL, NULL),
(143, 'Master Data PM', 'Maintain Maintenance Planning Plant', 'SPRO', '', 'Define', 'PM', NULL, NULL),
(144, 'Master Data PM', 'Assign Maintenance Planning Plant to Maintenance Plant', 'SPRO', '', 'Assign', 'PM', NULL, NULL),
(145, 'Master Data PM', 'Planner Groups', 'SPRO', '', 'Define', 'PM', NULL, NULL),
(146, 'Master Data PM', 'Maintenance Planner Groups', 'SPRO', '', 'Check or Define', 'PM', NULL, NULL),
(147, 'Master Data PM', 'Employees Responsible for Work Centers', 'SPRO', '', 'Define', 'PM', NULL, NULL),
(148, 'Notifikasi', 'Planner Groups', 'SPRO', '', 'Check  ', 'PM', NULL, NULL),
(149, 'Maintenance Order', 'Assign Order Types to Maintenance Plants', 'OIOD', '', 'Create', 'PM', NULL, NULL),
(150, 'Maintenance Order', 'Default Order Types for Maintenance Items', 'SPRO', '', 'Assign', 'PM', NULL, NULL),
(151, 'Maintenance Order', 'Maintain Default Values for Control Keys for Order Types', 'OIO6', '', 'Assign \"PM01\"', 'PM', NULL, NULL),
(152, 'Maintenance Order', 'Assign Costing parameters and Result Analysis Keys', 'OIOF', '', 'Assign \"PM01\"', 'PM', NULL, NULL),
(153, 'Maintenance Order', 'Change Docs, Collective Purc.Req.Indicator, Operation No.Interval', 'SPRO', '', 'Assign', 'PM', NULL, NULL),
(154, 'Maintenance Order', 'Documentation for Goods Movement for the Order', 'SPRO', '', 'Tick', 'PM', NULL, NULL),
(155, 'Maintenance Order', 'Inspection Control', 'OIOI', '', 'Define', 'PM', NULL, NULL),
(156, 'Maintenance Order', 'Default Values for Component Item Categories', 'SPRO', '', 'Define', 'PM', NULL, NULL),
(157, 'Maintenance Order', 'Activate Default Value for Current Date as Basic date', 'SPRO', '', 'Tick', 'PM', NULL, NULL),
(158, 'Maintenance Order', 'Default Values for Units for Operation', 'OIO9', '', 'Define', 'PM', NULL, NULL),
(159, 'Maintenance Order', 'Set Scheduling Paramaters', 'OPU7', '', 'Define', 'PM', NULL, NULL),
(160, 'Maintenance Order', 'Control Parameters for Completion Confirmations', 'SPRO', '', 'Define', 'PM', NULL, NULL),
(161, 'General ', 'Define Shift Sequence', 'OP4A', '', '', 'PP', NULL, NULL),
(162, 'General ', 'Define Order Types', 'OPJH', '', '', 'PP', NULL, NULL),
(163, 'MRP, Prd.Order', 'Define scheduling parameters for Production orders ', 'OPU3 ( 2*/ 1*/ 3* ) RWK,SER', '', 'Create', 'PP', NULL, NULL),
(164, 'MRP, Prd.Order', 'Define scheduling parameters for planned orders ', 'OPU5', '', 'Create', 'PP', NULL, NULL),
(165, 'MRP, Prd.Order', 'Production Scheduling Profiles', 'OPKP ( 00001, 00002 )', '', 'Create', 'PP', NULL, NULL),
(166, 'MRP, Prd.Order', 'Production Scheduler', 'OPJ9', '', 'Create', 'PP', NULL, NULL),
(167, 'MRP, Prd.Order', 'Define MRP Controllers', 'OMD0 ( mrp..... )', '', 'Create', 'PP', NULL, NULL),
(168, 'MRP, Prd.Order', 'Carryout Overall Maintenance of MRP Group', 'OPPZ ( Z* ....  )', '', 'Create', 'PP', NULL, NULL),
(169, 'MRP, Prd.Order', 'Define Scope of Total Planning', 'OM0E ( nama plant )', '', 'Create', 'PP', NULL, NULL),
(170, 'MRP, Prd.Order', 'Define MRP Creation Indicator', 'SPRO Production - MRP - Planning - Define Creation Indicator', '', 'Create', 'PP', 'Admin', '2018-05-26 11:24:12'),
(171, 'MRP, Prd.Order', 'Define Order Type-Dependent Parameter', 'OPL8 ( 2*/1*/3* )', '', 'Create', 'PP', NULL, NULL),
(172, 'MRP, Prd.Order', 'Tambahan centang PP01, Implementation', '', '', 'Check', 'PP', NULL, NULL),
(173, 'MRP, Prd.Order', 'Define Confirmation Parameter', 'OPK4 (2*/1*/3* )', '', 'Create', 'PP', NULL, NULL),
(174, 'MRP, Prd.Order', 'Define Default Value', 'OPJG', '', 'Create', 'PP', NULL, NULL),
(175, 'MRP, Prd.Order', 'Maintain Checking Control', 'OPJK', '', 'Create', 'PP', NULL, NULL),
(176, 'MRP, Prd.Order', 'Activate MRP dan Set up Planning File', 'OMDU', '', 'Check', 'PP', NULL, NULL),
(177, 'MRP, Prd.Order', 'Define Order Type for Conversion to Production/Process Order', 'OPPE', '', 'Create', 'PP', NULL, NULL),
(178, 'MRP, Prd.Order', 'Define MRP group for each Material group', 'OPPR', '', 'Create', 'PP', NULL, NULL),
(179, 'MRP, Prd.Order', 'Define Planning Horizon', 'OMDX', '', 'Create', 'PP', NULL, NULL),
(180, 'MRP, Prd.Order', 'Define parameter for determining basic dates', 'SPRO-Production-MRP-Schedulling & Capacity Parameter-Parameter for Determining Basic Dates', '', 'Check', 'PP', 'Admin', '2018-05-26 11:26:35'),
(181, 'MRP, Prd.Order', 'Define available check for component', 'OPPJ', '', 'Create', 'PP', NULL, NULL),
(182, 'MRP, Prd.Order', 'Maintain carry out maintenance all', 'OPPQ', '', 'alll maint', 'PP', NULL, NULL),
(183, 'MRP, Prd.Order', 'Set Up Production Scheduler Group', 'OPCH', '', 'Create', 'PP', NULL, NULL),
(184, 'MRP, Prd.Order', 'Define Production Scheduling for Process Orders ', 'CORY', '', 'Create', 'PP', NULL, NULL),
(185, 'MRP, Prd.Order', 'Determinine Person Responsible - work Center', 'SPRO Production - Basic Data - Work Center - General Data - Determine Person Responsible', '', 'Create', 'PP', 'Admin', '2018-05-26 11:22:07'),
(186, 'MRP, Prd.Order', 'valuation variants order costing', 'OPK9', '', 'Create', 'PP', NULL, NULL),
(187, 'MRP, Prd.Order', 'Order type - dependent parameters', 'COR4', '', 'Create', 'PP', NULL, NULL),
(188, 'Maintain tabel/field program ', 'Sloc Kode Material', 'SM30', 'ZBOTOL_SLOC', 'Check Only', 'PP', NULL, NULL),
(189, 'Maintain tabel/field program ', 'Kode + isi Botol', 'SM30', 'ZCAP_BOTOL', 'Check Only', 'PP', NULL, NULL),
(190, 'Maintain tabel/field program ', 'LIVE PP', 'SM30', 'ZLIVE_PP', 'centang', 'PP', NULL, NULL),
(191, 'Maintain tabel/field program ', 'LIVE PP + BATCH', 'SM30', 'ZLIVE_BATCH', 'centang', 'PP', NULL, NULL),
(192, 'Maintain tabel/field program', 'Kapasitas Produksi', 'ZPPENH016', 'Kapasitas Design, Kapasitas Commisioning', 'Create', 'PP', NULL, NULL),
(193, 'Maintain tabel/field program', 'Mode ASP', 'ZPPENH016', 'Mode ASP 1/ 2', 'Create', 'PP', NULL, NULL),
(194, 'Maintain tabel/field program', 'Bahan Baku Mixed Gas', 'ZPPENH016', 'Kode material Mixed Gas Bahan baku yang dipakai Mixed Gas', 'Create', 'PP', NULL, NULL),
(195, 'Maintain tabel/field program', 'Map Plant dan sloc mixed Gas', 'ZPPENH016', 'Sloc mixed Gas', 'Create', 'PP', NULL, NULL),
(196, 'Maintain tabel/field program', 'Mapping SlocPipeline', 'ZPPENH016', 'Produksi Pipeline yang ada', 'Create', 'PP', NULL, NULL),
(197, 'Maintain tabel/field program', 'Mapping Sloc tangki', 'ZPPENH016', 'Sloc tangki yang dipakai produksi', 'Create', 'PP', NULL, NULL),
(198, 'Maintain tabel/field program', 'Mapping Sloc transfer', 'ZPPENH016', 'Mapping mobil distribusi yang dipakai per kode material', 'Create', 'PP', NULL, NULL),
(199, 'Maintain tabel/field program', 'Mapping report PP', 'ZPPENH016', 'Mapping report PP yg dikirim lewat email', 'Via Email', 'PP', NULL, NULL),
(200, 'Enterprise Structure (Financial Accounting)', 'Define company', 'OX15', '', 'Check Only', 'SD', NULL, NULL),
(201, 'Enterprise Structure (Financial Accounting)', 'Define Credit Control Area', 'OB45', '', 'Check Only', 'SD', NULL, NULL),
(202, 'Enterprise Structure (Financial Accounting)', 'Define Business Area', 'OX03', '', 'Check Only', 'SD', NULL, NULL),
(203, 'Enterprise Structure (Logistics-Plant)', 'Define Plant', 'OX10', '', 'Check Only', 'SD', NULL, NULL),
(204, 'Enterprise Structure (Logistics-Division)', 'Define Division', 'OVXD', 'V_TSPA', 'Check Only', 'SD', NULL, NULL),
(205, 'Enterprise Structure (Sales & Distribution)', 'Define, copy, delete, check sales organization', 'OVX5', 'V_TVKO', 'Create', 'SD', NULL, NULL),
(206, 'Enterprise Structure (Sales & Distribution)', 'Define, copy, delete, check distribution channel', 'OVXI', 'V_TVTW', 'Check Only', 'SD', NULL, NULL),
(207, 'Enterprise Structure (Sales & Distribution)', 'Maintain sales office', 'OVX1', 'V_TVBUR', 'Create', 'SD', NULL, NULL),
(208, 'Enterprise Structure (Logistics Execution)', 'Define, copy, delete, check shipping point', 'OVXD', 'V_TVST', 'Create', 'SD', NULL, NULL),
(209, 'Enterprise Structure (Logistics General)', 'Assign Business Area to Plant/Valuation Area and Division', 'OMJ7', '', 'Create', 'SD', NULL, NULL);

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
(3, 'FICO', 'Financial Controlling', NULL, NULL),
(4, 'MM', 'Materials Management', NULL, NULL),
(5, 'PM', 'Plant Maintenance', NULL, NULL),
(6, 'PP', 'Production Planning', NULL, NULL),
(7, 'SD', 'Sales & Distribution', NULL, NULL),
(8, 'HR', 'Human Resource', NULL, NULL),
(10, 'TEST', 'Test Modul', 'Admin', '2018-05-13 16:53:07');

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
(1, 'Penjualan Botolan Reguler (MTS)', 'Penjualan gas dalam botol hasil produksi & sparepart ke Customer & IB Sales Order, Terima Botol Kosong, Produksi, Distribusi, Billing, Pelunasan A/R', NULL, NULL),
(2, 'Pembelian Bahan Baku', 'Pembelian Bahan Baku', NULL, NULL),
(3, 'Pembelian Barang Dagangan Gas', 'Pembelian Bahan Baku', NULL, NULL),
(4, 'Penjualan Botolan IB MTS (INTERBRANCH)', 'Penjualan gas dalam botol hasil produksi & sparepart ke Customer & IB Sales Order, Terima Botol Kosong, Produksi, Distribusi, Billing, Pelunasan A/R', NULL, NULL);

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
(2, 'Andrean', 'e8a49913d8fde635db167708f2ec03f4', 'Andrean HK', 'BASIS', 'Admin', '2018-05-16 22:51:18'),
(3, 'SAPFICO', '05bc84715938a06a136ff53089d16b2a', 'SAP Financial Controlling', 'FICO', NULL, NULL),
(4, 'SAPMM', '200c6d44300a7ceb0a569ae8669e60df', 'SAP Materials Management', 'MM', NULL, NULL),
(5, 'SAPPM', 'cbed855b37f6bf12cec6a21ac6b47787', 'SAP Plant Maintenance', 'PM', NULL, NULL),
(6, 'SAPPP', '6d463bb928d71e2f3fcb69f66f99c473', 'SAP Production Planning', 'PP', NULL, NULL),
(7, 'SAPSD', '19ad8310c4496f6f23e2b7b3787777e4', 'SAP Sales & Distribution', 'SD', NULL, NULL),
(8, 'SAPHR', '1d76e9098ac289171803e143316a8e0d', 'SAP Human Resources', 'HR', NULL, NULL),
(10, 'Sony', '33561003f44d374c719506bef4faeba4', 'Sony', 'ABAP', NULL, NULL),
(11, 'Ferry', '46171b077997b166bb30cf5494eff2f8', 'Ferry', 'ABAP', NULL, NULL),
(12, 'Faris', '7d77e825b80cff62a72e680c1c81424f', 'Faris', 'ABAP', NULL, NULL),
(13, 'Johan', '7fedcb034ecf9df4be8c1ea13362053b', 'Johan', 'ABAP', NULL, NULL),
(14, 'Tjandra', 'e680449ab372830240dc3d25336658e4', 'Tjandra', 'BASIS', NULL, NULL),
(16, 'Nurnia', '270a6ec508f0b6d7dc48ca66216e3119', 'Nurnia', 'FICO', NULL, NULL),
(17, 'Yohanes', '493331a7321bf622460493a8cda5e4c4', 'Yohanes', 'FICO', NULL, NULL),
(18, 'Putra', '5e0c5a0bf82decdd43b2150b622c66c5', 'Putra', 'FICO', NULL, NULL),
(19, 'Aris', '288077f055be4fadc3804a69422dd4f8', 'Aris', 'FICO', NULL, NULL),
(20, 'Purwandi', 'd25db176883c2e74f77f49f61d1ac376', 'Purwandi', 'MM', NULL, NULL),
(21, 'Nino', '45ff0fa8ba18b7a076efa812989dd948', 'Nino', 'MM', NULL, NULL),
(22, 'Thomas', 'ef6e65efc188e7dffd7335b646a85a21', 'Thomas', 'MM', NULL, NULL),
(23, 'Zamroni', 'a078479c3d251b9f229c801dfe5363cc', 'Zamroni', 'PM', NULL, NULL),
(24, 'Achmad', 'e590ad4b83ac97f84569825e8f00c730', 'Achmad', 'PM', NULL, NULL),
(25, 'Rita', '2794d223f90059c9f705c73a99384085', 'Rita', 'PP', NULL, NULL),
(26, 'Fitri', '534a0b7aa872ad1340d0071cbfa38697', 'Fitri', 'PP', NULL, NULL),
(27, 'Abta', '8d437b535e5f466d04227b1ed1d7c71f', 'Abta', 'PP', NULL, NULL),
(28, 'Rendra', 'bcb0195b3b8dcfd3f5656518d9063499', 'Rendra', 'SD', NULL, NULL),
(29, 'Suyanto', '96c003bd3849602eb10f0c31193dcdb2', 'Suyanto', 'SD', NULL, NULL),
(30, 'Alex', '534b44a19bf18d20b71ecc4eb77c572f', 'Alex', 'SD', NULL, NULL),
(31, 'Wasti', 'f9cfcb6b5956aa9edd1b0033c7ac6642', 'Wasti', 'SD', NULL, NULL);

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
(21, 'Financial Accounting (Bank Accounting)', 'Set Up Cash Journal', 'FBCJC0', '', 'Create', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(22, 'Financial Accounting (Bank Accounting)', 'Define House Banks', 'F112', '', 'Create', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(23, 'Financial Accounting (Bank Accounting)', 'Create, Change, Delete Business Transactions', 'FBCJC2', '', 'Create', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(24, 'Financial Accounting (Bank Accounting)', 'Validation in Accounting Documents (workbench req.)', 'OB28', '', 'Create', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(25, 'Financial Accounting (Asset Accounting)', 'Specify Transfer Date/Last Closed Fiscal Year', 'SPRO', 'V_T093C_08', 'Create', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(26, 'Financial Accounting (Asset Accounting)', 'Specify Last Period Posted in Prv.System (Transf.During FY)', 'OAYC', '', 'Create', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(27, 'Financial Supply Chain Mgmt (Cash & Liquidity', 'Define Cash Management Account Name', 'SPRO', 'V_T035D', 'Create', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(28, 'Financial Supply Chain Mgmt (Cash & Liquidity', 'Maintain Structure', 'SPRO', 'V_T038', 'Create', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(29, 'Controlling (Cost Center Acct)', 'Create Plan Distribution', 'KSV7', '', 'File Checklist PP', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(30, 'Controlling (Cost Center Acct)', 'Create Plan Assessment', 'KSU7', '', 'File Checklist PP', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(31, 'Controlling (Cost Center Acct)', 'Edit Automatic Account Assignment', 'OKB9', '', 'Create', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(32, 'Controlling (Cost Center Acct)', 'Create Actual Distribution', 'KSV1', '', 'File Checklist PP', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(33, 'Controlling (Cost Center Acct)', 'Create Actual Assessment', 'KSU1', '', 'File Checklist PP', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(34, 'Product Cost Controlling (Prd Cost Planning)', 'Define Overhead Groups', 'OKZ2', '', 'Create', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(35, 'Product Cost Controlling', 'Check Special Procurement Types ', 'SPRO', 'V460A', 'Check Only', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(36, 'Product Cost Controlling (Cost Obj Controllin', 'Define Cost-Accounting-Relevant Default Values for Order Types and Plants', 'SPRO', 'V_T399X_PC', 'Create', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(37, 'Product Cost Controlling (Simulatenous Costin', 'Activate Generation of Cost Log in Repetitive Manufacturing', 'SPRO', 'V_T437D_F', 'Create', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(38, 'Product Cost Controlling', 'Define Default Variance Keys for Plants', 'OKVW', '', 'Create', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(39, 'Product Cost Controlling', 'Define Goods Received Valuation for Order Delivery', 'SPRO', 'V_TCO10', 'Create', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(40, 'Product Cost Controlling (Actual Costing/Ml)', 'Configure Dynamic Price Changes', 'SPRO', 'V_T001K_PR', 'Check Only', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(41, 'Profitability Analysis (Ent. Controlling)', 'Define Order Type-Dependent Parameters', 'COR4', '', 'Check Only (PP)', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(42, 'Profitability Analysis (Ent. Controlling)', 'Order Type - Dependent Parameters', 'OPL8', '', 'Check Only (PP)', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(43, 'Profitability Analysis (Ent. Controlling)', 'Valuation Variant for Order Costing', 'OPK9', '', 'Check Only (PP)', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(44, 'Profitability Analysis (Ent. Controlling)', 'General Version Define', 'OKEV', '', 'Check Only', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(45, 'Maintain Table View', 'Mapping cost center untuk transaksi input Profit Segment', 'SM30', 'ZMAPCOSTCENTER', 'Create', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(46, 'Maintain Table View', 'Mapping GL Account Cash Clrg/Bank utk UJB', 'SM30', 'ZREG_UJB_MAPV', 'Create', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(47, 'Maintain Table View', 'Daftar no sertifikat UJB yg berlaku', 'SM30', 'ZUJB_NUMRANGE', 'Create', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(48, 'Enterprise Structure (Logistic General)', 'Plant', 'OX10', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(49, 'Enterprise Structure (Logistic General)', 'Plant Parameters', 'SM30', 'V_159L', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(50, 'Enterprise Structure (Logistic General)', 'Assign plant ke company code', 'OX18', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(51, 'Enterprise Structure (Logistic General)', 'Assign BA ke plant dan divisi', 'OMJ7', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(52, 'Enterprise Structure (Logistic General)', 'Create & Assign Porg ke Plant', 'OX08 ; OX17', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(53, 'Enterprise Structure (Logistic General)', 'Create Purchasing group', 'OME4', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(54, 'Enterprise Structure (Logistic General)', 'Storage Location', 'OX09', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(55, 'Enterprise Structure (Logistic General)', 'Create/Check TOP (Term Of Payment)', 'OME2', '', 'Check Only', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(56, 'Enterprise Structure (Logistic General)', 'Assign standard purchasing organization to plant ', 'SM30', 'V_001W_E', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(57, 'Enterprise Structure (Logistic General)', 'Define Stock Determinationgroup', 'OSPX', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(58, 'Enterprise Structure (Logistic General)', 'Assign Stock Determination Rule in Production Order', 'OPJ2', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(59, 'Enterprise Structure (Logistic General)', 'Define Control Data for Pull List', 'SPRO', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(60, 'Enterprise Structure (Logistic General)', 'Assign Stock Determination Rule in Pull list', 'SM30', 'V_T435W_BF', 'Check Only', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(61, 'Enterprise Structure (Logistic General)', 'Define Storage Location MRP per Plant', 'SM30', 'V_T001L_D', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(62, 'Enterprise Structure (Logistic General)', 'Account deteremnination for valuation areas', 'OMWD', '', 'Check Only', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(63, 'Setting field selection material type', 'Create/Check Unit of Measure', 'CUNI', '', 'Check Only', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(64, 'Setting field selection material type', 'Create material group', 'OMSF', '', 'Check Only', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(65, 'Setting field selection material type', 'Configure Split valuation', 'OMWC', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(66, 'Setting field selection material type', 'Define Attributes of Material Types', 'T134M', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(67, 'Modify/Define MRP Type', 'Create type PURCHASE REQUISITION (Number, Link)', 'V_162', '', 'Check Only', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(68, 'Modify/Define MRP Type', 'Create type PURCHASE ORDER (Number, Link)', 'V_162', '', 'Check Only', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(69, 'Modify/Define MRP Type', 'Create & Check Schema Prosedure', 'V_TMKE', '', 'Check Only', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(70, 'Modify/Define MRP Type', 'Create/Define condition type PO', 'V_T685A', '', 'Check Only', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(71, 'Modify/Define MRP Type', 'Carry Out Overall Maint of MRP Groups', 'ZPRD, ZRAW, ZSPR, ZSUP', 'OMD1', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(72, 'Modify/Define MRP Type', 'Define MRP Group for Each Material Type', 'V_TMW00', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(73, 'Modify/Define MRP Type', 'Define MRP Controllers', 'PIC ZPRD, PIC ZRAW, PIC ZSPR, PIC ZSUP', 'V_T024D', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(74, 'Modify/Define MRP Type', 'Define Special Procurement Types', 'V460A', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(75, 'Modify/Define MRP Type', 'Carry Out Overall Maintenance of Plant Parameter', 'V438M', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(76, 'Modify/Define MRP Type', 'Define Document Life', 'V_159R', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(77, 'Maintain account assigment category', 'Purchase Requisition, Release Procedure, Procedure with Classification, Set Up Procedure with Classification', 'SPRO', 'V_T16FS', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(78, 'Maintain account assigment category', 'Create release strategy PURCHASE REQUISITION', 'T16FK', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(79, 'Maintain account assigment category', 'Create release CODE PURCHASE ORDER', 'VV_T16FC_2', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(80, 'Maintain account assigment category', 'Create release strategy PURCHASE ORDER', 'V_T16FS', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(81, 'Maintain account assigment category', 'Create/check movement type', 'OMJJ', '', 'Check Only', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(82, 'Maintain account assigment category', 'Configure automatic posting', 'OBYC', '', 'Check Only', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(83, 'Maintain account assigment category', 'Create reason for movement', 'V_157L', '', 'Check Only', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(84, 'Maintain account assigment category', 'Defaul value of doc type', 'V_T160', '', 'Check Only', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(85, 'Maintain account assigment category', 'Set tolerance limits', 'V_169G', '', 'Check Only', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(86, 'Maintain account assigment category', 'Define permissible partner role per accout group', '', '', '', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(87, 'Maintain account assigment category', 'Set Check for duplicate invoice', '', '', '', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(88, 'Maintain account assigment category', 'Maintai default value per tax code', 'V_169V_ST', '', 'Check Only', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(89, 'Maintain account assigment category', 'Allow freezing of book inventory balance in stor loc', '', '', '', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(90, 'Maintain account assigment category', 'Define text type for header text', '', '', '', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(91, 'Maintain tabel/field program Tcode SM30 CLIEN', 'Kombinasi PR', 'SM30', 'ZPRRELEASE', 'Check Only', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(92, 'Maintain tabel/field program Tcode SM30 CLIEN', 'Kombinasi PR Interbranch & STO', 'SM30', 'ZPRRELEASE', 'Check Only', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(93, 'Maintain tabel/field program Tcode SM30 CLIEN', 'Kombinasi PO', 'SM30', 'ZPORELEASE', 'Check Only', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(94, 'Maintain tabel/field program Tcode SM30 CLIEN', 'Kombinasi PO Interbranch & STO', 'SM30', 'ZPORELEASE', 'Check Only', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(95, 'Maintain tabel/field program Tcode SM30 CLIEN', 'Nopol Kend Botolan u/ TTBK, Packing', 'SM30', 'ZNKEND', '-', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(96, 'Maintain MM02', 'Field Material Original Terkait KKF3', 'MM02', '', '-', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(97, 'Maintain MM02', 'Trading field', 'MM02', '', '-', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(98, 'Enterprise Structure (Logistic General)', 'Plant', 'OX10', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(99, 'Enterprise Structure (Logistic General)', 'Plant Parameters', 'SM30', 'V_159L', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(100, 'Enterprise Structure (Logistic General)', 'Assign plant ke company code', 'OX18', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(101, 'Enterprise Structure (Logistic General)', 'Assign BA ke plant dan divisi', 'OMJ7', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(102, 'Enterprise Structure (Logistic General)', 'Create & Assign Porg ke Plant', 'OX08 ; OX17', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(103, 'Enterprise Structure (Logistic General)', 'Create Purchasing group', 'OME4', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(104, 'Enterprise Structure (Logistic General)', 'Storage Location', 'OX09', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(105, 'Enterprise Structure (Logistic General)', 'Create/Check TOP (Term Of Payment)', 'OME2', '', 'Check Only', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(106, 'Enterprise Structure (Logistic General)', 'Assign standard purchasing organization to plant ', 'SM30', 'V_001W_E', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(107, 'Enterprise Structure (Logistic General)', 'Define Stock Determinationgroup', 'OSPX', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(108, 'Enterprise Structure (Logistic General)', 'Assign Stock Determination Rule in Production Order', 'OPJ2', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(109, 'Enterprise Structure (Logistic General)', 'Define Control Data for Pull List', 'SPRO', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(110, 'Enterprise Structure (Logistic General)', 'Assign Stock Determination Rule in Pull list', 'SM30', 'V_T435W_BF', 'Check Only', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(111, 'Enterprise Structure (Logistic General)', 'Define Storage Location MRP per Plant', 'SM30', 'V_T001L_D', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(112, 'Enterprise Structure (Logistic General)', 'Account deteremnination for valuation areas', 'OMWD', '', 'Check Only', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(113, 'Setting field selection material type', 'Create/Check Unit of Measure', 'CUNI', '', 'Check Only', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(114, 'Setting field selection material type', 'Create material group', 'OMSF', '', 'Check Only', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(115, 'Setting field selection material type', 'Configure Split valuation', 'OMWC', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(116, 'Setting field selection material type', 'Define Attributes of Material Types', 'T134M', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(117, 'Modify/Define MRP Type', 'Create type PURCHASE REQUISITION (Number, Link)', 'V_162', '', 'Check Only', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(118, 'Modify/Define MRP Type', 'Create type PURCHASE ORDER (Number, Link)', 'V_162', '', 'Check Only', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(119, 'Modify/Define MRP Type', 'Create & Check Schema Prosedure', 'V_TMKE', '', 'Check Only', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(120, 'Modify/Define MRP Type', 'Create/Define condition type PO', 'V_T685A', '', 'Check Only', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(121, 'Modify/Define MRP Type', 'Carry Out Overall Maint of MRP Groups', 'ZPRD, ZRAW, ZSPR, ZSUP', 'OMD1', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(122, 'Modify/Define MRP Type', 'Define MRP Group for Each Material Type', 'V_TMW00', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(123, 'Modify/Define MRP Type', 'Define MRP Controllers', 'PIC ZPRD, PIC ZRAW, PIC ZSPR, PIC ZSUP', 'V_T024D', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(124, 'Modify/Define MRP Type', 'Define Special Procurement Types', 'V460A', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(125, 'Modify/Define MRP Type', 'Carry Out Overall Maintenance of Plant Parameter', 'V438M', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(126, 'Modify/Define MRP Type', 'Define Document Life', 'V_159R', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(127, 'Maintain account assigment category', 'Purchase Requisition, Release Procedure, Procedure with Classification, Set Up Procedure with Classification', 'SPRO', 'V_T16FS', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(128, 'Maintain account assigment category', 'Create release strategy PURCHASE REQUISITION', 'T16FK', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(129, 'Maintain account assigment category', 'Create release CODE PURCHASE ORDER', 'VV_T16FC_2', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(130, 'Maintain account assigment category', 'Create release strategy PURCHASE ORDER', 'V_T16FS', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(131, 'Maintain account assigment category', 'Create/check movement type', 'OMJJ', '', 'Check Only', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(132, 'Maintain account assigment category', 'Configure automatic posting', 'OBYC', '', 'Check Only', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(133, 'Maintain account assigment category', 'Create reason for movement', 'V_157L', '', 'Check Only', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(134, 'Maintain account assigment category', 'Defaul value of doc type', 'V_T160', '', 'Check Only', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(135, 'Maintain account assigment category', 'Set tolerance limits', 'V_169G', '', 'Check Only', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(136, 'Maintain account assigment category', 'Define permissible partner role per accout group', '', '', '', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(137, 'Maintain account assigment category', 'Set Check for duplicate invoice', '', '', '', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(138, 'Maintain account assigment category', 'Maintai default value per tax code', 'V_169V_ST', '', 'Check Only', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(139, 'Maintain account assigment category', 'Allow freezing of book inventory balance in stor loc', '', '', '', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(140, 'Maintain account assigment category', 'Define text type for header text', '', '', '', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(141, 'Maintain tabel/field program Tcode SM30 CLIEN', 'Kombinasi PR', 'SM30', 'ZPRRELEASE', 'Check Only', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(142, 'Maintain tabel/field program Tcode SM30 CLIEN', 'Kombinasi PR Interbranch & STO', 'SM30', 'ZPRRELEASE', 'Check Only', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(143, 'Maintain tabel/field program Tcode SM30 CLIEN', 'Kombinasi PO', 'SM30', 'ZPORELEASE', 'Check Only', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(144, 'Maintain tabel/field program Tcode SM30 CLIEN', 'Kombinasi PO Interbranch & STO', 'SM30', 'ZPORELEASE', 'Check Only', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(145, 'Maintain tabel/field program Tcode SM30 CLIEN', 'Nopol Kend Botolan u/ TTBK, Packing', 'SM30', 'ZNKEND', '-', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(146, 'Maintain MM02', 'Field with qty Structure terkait KKF3', 'MM02', '', '-', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(147, 'Maintain MM02', 'Field Material Original Terkait KKF3', 'MM02', '', '-', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(148, 'Maintain MM02', 'Trading field', 'MM02', '', '-', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(149, 'Maintain MM02', 'Field Volume botol MP, MC, MS', 'MM02', '', '-', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(150, 'MARA-XCHPF', 'Batch management botol BMC', 'MM02 / MM17', '', '-', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(151, 'MARA-XCHPF', 'Revenue Stream (copy plant lain)', 'MM02 / MM17', '', '-', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(152, 'Maintain Release PR/PO', 'Assign Objects to Classes ? Class Type : 032 FRG_EKKO [223]', 'CL20N', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(153, 'Maintain Release PR/PO', 'Assign Objects to Classes ? FRG_EBAN', 'CL20N', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(154, 'Maintain Release PR/PO', 'Assign Objects/Classes to Class ? FRG_EKKO', 'CL24N', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(155, 'Maintain Release PR/PO', 'Assign Objects/Classes to Class ? FRG_EBAN', 'CL24N', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(156, 'Maintain Release PR/PO', 'Assign Objects/Classes to Class ? INTERBranch', 'CL24N', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(157, 'Variant Report', 'ZMMSQVI_RMD untuk interbranch', 'ZMMSQVI_RMD', '', 'Create', 'MM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(158, 'Master Data PM', 'Maintain Maintenance Planning Plant', 'SPRO', '', 'Define', 'PM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(159, 'Master Data PM', 'Assign Maintenance Planning Plant to Maintenance Plant', 'SPRO', '', 'Assign', 'PM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(160, 'Master Data PM', 'Planner Groups', 'SPRO', '', 'Define', 'PM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(161, 'Master Data PM', 'Maintenance Planner Groups', 'SPRO', '', 'Check or Define', 'PM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(162, 'Master Data PM', 'Employees Responsible for Work Centers', 'SPRO', '', 'Define', 'PM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(163, 'Notifikasi', 'Planner Groups', 'SPRO', '', 'Check  ', 'PM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(164, 'Maintenance Order', 'Assign Order Types to Maintenance Plants', 'OIOD', '', 'Create', 'PM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(165, 'Maintenance Order', 'Default Order Types for Maintenance Items', 'SPRO', '', 'Assign', 'PM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(166, 'Maintenance Order', 'Maintain Default Values for Control Keys for Order Types', 'OIO6', '', 'Assign \"PM01\"', 'PM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(167, 'Maintenance Order', 'Assign Costing parameters and Result Analysis Keys', 'OIOF', '', 'Assign \"PM01\"', 'PM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(168, 'Maintenance Order', 'Change Docs, Collective Purc.Req.Indicator, Operation No.Interval', 'SPRO', '', 'Assign', 'PM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(169, 'Maintenance Order', 'Documentation for Goods Movement for the Order', 'SPRO', '', 'Tick', 'PM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(170, 'Maintenance Order', 'Inspection Control', 'OIOI', '', 'Define', 'PM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(171, 'Maintenance Order', 'Default Values for Component Item Categories', 'SPRO', '', 'Define', 'PM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(172, 'Maintenance Order', 'Activate Default Value for Current Date as Basic date', 'SPRO', '', 'Tick', 'PM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(173, 'Maintenance Order', 'Default Values for Units for Operation', 'OIO9', '', 'Define', 'PM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(174, 'Maintenance Order', 'Set Scheduling Paramaters', 'OPU7', '', 'Define', 'PM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(175, 'Maintenance Order', 'Control Parameters for Completion Confirmations', 'SPRO', '', 'Define', 'PM', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(176, 'General ', 'Define Shift Sequence', 'OP4A', '', '', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(177, 'General ', 'Define Order Types', 'OPJH', '', '', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(178, 'MRP, Prd.Order', 'Define scheduling parameters for Production orders ', 'OPU3 ( 2*/ 1*/ 3* ) RWK,SER', '', 'Create', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(179, 'MRP, Prd.Order', 'Define scheduling parameters for planned orders ', 'OPU5', '', 'Create', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(180, 'MRP, Prd.Order', 'Production Scheduling Profiles', 'OPKP ( 00001, 00002 )', '', 'Create', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(181, 'MRP, Prd.Order', 'Production Scheduler', 'OPJ9', '', 'Create', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(182, 'MRP, Prd.Order', 'Define MRP Controllers', 'OMD0 ( mrp..... )', '', 'Create', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(183, 'MRP, Prd.Order', 'Carryout Overall Maintenance of MRP Group', 'OPPZ ( Z* ....  )', '', 'Create', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(184, 'MRP, Prd.Order', 'Define Scope of Total Planning', 'OM0E ( nama plant )', '', 'Create', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(185, 'MRP, Prd.Order', 'Define MRP Creation Indicator', 'SPRO Production - MRP - Planning - Define Cre', '', 'Create', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(186, 'MRP, Prd.Order', 'Define Order Type-Dependent Parameter', 'OPL8 ( 2*/1*/3* )', '', 'Create', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(187, 'MRP, Prd.Order', 'Tambahan centang PP01, Implementation', '', '', 'Check', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(188, 'MRP, Prd.Order', 'Define Confirmation Parameter', 'OPK4 (2*/1*/3* )', '', 'Create', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(189, 'MRP, Prd.Order', 'Define Default Value', 'OPJG', '', 'Create', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(190, 'MRP, Prd.Order', 'Maintain Checking Control', 'OPJK', '', 'Create', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(191, 'MRP, Prd.Order', 'Activate MRP dan Set up Planning File', 'OMDU', '', 'Check', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(192, 'MRP, Prd.Order', 'Define Order Type for Conversion to Production/Process Order', 'OPPE', '', 'Create', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(193, 'MRP, Prd.Order', 'Define MRP group for each Material group', 'OPPR', '', 'Create', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(194, 'MRP, Prd.Order', 'Define Planning Horizon', 'OMDX', '', 'Create', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(195, 'MRP, Prd.Order', 'Define parameter for determining basic dates', 'SPRO-Production-MRP-Schedulling & Capacity Pa', '', 'Check', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(196, 'MRP, Prd.Order', 'Define available check for component', 'OPPJ', '', 'Create', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(197, 'MRP, Prd.Order', 'Maintain carry out maintenance all', 'OPPQ', '', 'alll maint', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(198, 'MRP, Prd.Order', 'Set Up Production Scheduler Group', 'OPCH', '', 'Create', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(199, 'MRP, Prd.Order', 'Define Production Scheduling for Process Orders ', 'CORY', '', 'Create', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(200, 'MRP, Prd.Order', 'Determinine Person Responsible - work Center', 'SPRO Production - Basic Data - Work Center - ', '', 'Create', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(201, 'MRP, Prd.Order', 'valuation variants order costing', 'OPK9', '', 'Create', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(202, 'MRP, Prd.Order', 'Order type - dependent parameters', 'COR4', '', 'Create', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(203, 'Maintain tabel/field program ', 'Sloc Kode Material', 'SM30', 'ZBOTOL_SLOC', 'Check Only', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(204, 'Maintain tabel/field program ', 'Kode + isi Botol', 'SM30', 'ZCAP_BOTOL', 'Check Only', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(205, 'Maintain tabel/field program ', 'LIVE PP', 'SM30', 'ZLIVE_PP', 'centang', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(206, 'Maintain tabel/field program ', 'LIVE PP + BATCH', 'SM30', 'ZLIVE_BATCH', 'centang', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(207, 'Maintain tabel/field program', 'Kapasitas Produksi', 'ZPPENH016', 'Kapasitas Design, Kapasitas Commisioning', 'Create', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(208, 'Maintain tabel/field program', 'Mode ASP', 'ZPPENH016', 'Mode ASP 1/ 2', 'Create', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(209, 'Maintain tabel/field program', 'Bahan Baku Mixed Gas', 'ZPPENH016', 'Kode material Mixed Gas Bahan baku yang dipak', 'Create', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(210, 'Maintain tabel/field program', 'Map Plant dan sloc mixed Gas', 'ZPPENH016', 'Sloc mixed Gas', 'Create', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(211, 'Maintain tabel/field program', 'Mapping SlocPipeline', 'ZPPENH016', 'Produksi Pipeline yang ada', 'Create', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(212, 'Maintain tabel/field program', 'Mapping Sloc tangki', 'ZPPENH016', 'Sloc tangki yang dipakai produksi', 'Create', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(213, 'Maintain tabel/field program', 'Mapping Sloc transfer', 'ZPPENH016', 'Mapping mobil distribusi yang dipakai per kod', 'Create', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(214, 'Maintain tabel/field program', 'Mapping report PP', 'ZPPENH016', 'Mapping report PP yg dikirim lewat email', 'Via Email', 'PP', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(215, 'Enterprise Structure (Financial Accounting)', 'Define company', 'OX15', '', 'Check Only', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(216, 'Enterprise Structure (Financial Accounting)', 'Define Credit Control Area', 'OB45', '', 'Check Only', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(217, 'Enterprise Structure (Financial Accounting)', 'Define Business Area', 'OX03', '', 'Check Only', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(218, 'Enterprise Structure (Logistics-Plant)', 'Define Plant', 'OX10', '', 'Check Only', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(219, 'Enterprise Structure (Logistics-Division)', 'Define Division', 'OVXD', 'V_TSPA', 'Check Only', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(220, 'Enterprise Structure (Sales & Distribution)', 'Define, copy, delete, check sales organization', 'OVX5', 'V_TVKO', 'Create', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(221, 'Enterprise Structure (Sales & Distribution)', 'Define, copy, delete, check distribution channel', 'OVXI', 'V_TVTW', 'Check Only', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(222, 'Enterprise Structure (Sales & Distribution)', 'Maintain sales office', 'OVX1', 'V_TVBUR', 'Create', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(223, 'Enterprise Structure (Logistics Execution)', 'Define, copy, delete, check shipping point', 'OVXD', 'V_TVST', 'Create', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(224, 'Enterprise Structure (Logistics General)', 'Assign Business Area to Plant/Valuation Area and Division', 'OMJ7', '', 'Create', 'SD', NULL, 2065, NULL, NULL, NULL, NULL, NULL);

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
-- AUTO_INCREMENT for table `login_data`
--
ALTER TABLE `login_data`
  MODIFY `loginuid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `m_ba`
--
ALTER TABLE `m_ba`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `m_check`
--
ALTER TABLE `m_check`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

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
  MODIFY `userno` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `v_check`
--
ALTER TABLE `v_check`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=274;

--
-- AUTO_INCREMENT for table `v_uat`
--
ALTER TABLE `v_uat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
