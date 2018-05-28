-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2018 at 11:48 AM
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
(13, 2073, 'AGI Ternate', '2018-04-01', 'Aris', 'Thomas', 'Achmad', 'Fitri', 'Rendra', 'Admin', '2018-05-23 15:38:32'),
(14, 3999, 'Test', '2018-01-08', 'Aris', 'Thomas', 'Zamroni', 'Rita', 'Rendra', 'Admin', '2018-05-28 15:19:53');

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
(2, 'Enterprise Structure', 'Assign Business Area to Consolidation Business Area', 'SPRO', 'V_GSB_A', 'Check', '', 'Admin', '2018-05-23 10:09:51'),
(3, 'Financial Accounting (Bank Accounting)', 'Create, Change, Delete Business Transactions', 'FBCJC2', '', 'Create', 'FICO', NULL, NULL),
(4, 'Financial Accounting (Bank Accounting)', 'Validation in Accounting Documents (workbench req.)', 'OB28', '', 'Create', 'FICO', NULL, NULL),
(5, 'Financial Accounting (Asset Accounting)', 'Specify Transfer Date/Last Closed Fiscal Year', 'SPRO', 'V_T093C_08', 'Create', 'FICO', NULL, NULL),
(6, 'Financial Accounting (Asset Accounting)', 'Specify Last Period Posted in Prv.System (Transf.During FY)', 'OAYC', '', 'Create', 'FICO', NULL, NULL),
(7, 'Financial Supply Chain Mgmt (Cash & Liquidity)', 'Define Cash Management Account Name', 'SPRO', 'V_T035D', 'Create', 'FICO', NULL, NULL),
(8, 'Financial Supply Chain Mgmt (Cash & Liquidity)', 'Maintain Structure', 'SPRO', 'V_T038', 'Create', 'FICO', NULL, NULL),
(9, 'Controlling (Cost Center Acct)', 'Create Plan Distribution', 'KSV7', '', 'File Checklist PP', 'FICO', NULL, NULL),
(10, 'Controlling (Cost Center Acct)', 'Create Plan Assessment', 'KSU7', '', 'File Checklist PP', 'FICO', NULL, NULL),
(11, 'Controlling (Cost Center Acct)', 'Edit Automatic Account Assignment', 'OKB9', '', 'Create', 'FICO', NULL, NULL),
(12, 'Controlling (Cost Center Acct)', 'Create Actual Distribution', 'KSV1', '', 'File Checklist PP', 'FICO', NULL, NULL),
(13, 'Controlling (Cost Center Acct)', 'Create Actual Assessment', 'KSU1', '', 'File Checklist PP', 'FICO', NULL, NULL),
(14, 'Product Cost Controlling (Prd Cost Planning)', 'Define Overhead Groups', 'OKZ2', '', 'Create', 'FICO', NULL, NULL),
(15, 'Product Cost Controlling', 'Check Special Procurement Types ', 'SPRO', 'V460A', 'Check Only', 'FICO', NULL, NULL),
(16, 'Product Cost Controlling (Cost Obj Controlling)', 'Define Cost-Accounting-Relevant Default Values for Order Types and Plants', 'SPRO', 'V_T399X_PC', 'Create', 'FICO', NULL, NULL),
(17, 'Product Cost Controlling (Simulatenous Costing)', 'Activate Generation of Cost Log in Repetitive Manufacturing', 'SPRO', 'V_T437D_F', 'Create', 'FICO', NULL, NULL),
(18, 'Product Cost Controlling', 'Define Default Variance Keys for Plants', 'OKVW', '', 'Create', 'FICO', NULL, NULL),
(19, 'Product Cost Controlling', 'Define Goods Received Valuation for Order Delivery', 'SPRO', 'V_TCO10', 'Create', 'FICO', NULL, NULL),
(20, 'Product Cost Controlling (Actual Costing/Ml)', 'Configure Dynamic Price Changes', 'SPRO', 'V_T001K_PR', 'Check Only', 'FICO', NULL, NULL),
(21, 'Profitability Analysis (Ent. Controlling)', 'Define Order Type-Dependent Parameters', 'COR4', '', 'Check Only (PP)', 'FICO', NULL, NULL),
(22, 'Profitability Analysis (Ent. Controlling)', 'Order Type - Dependent Parameters', 'OPL8', '', 'Check Only (PP)', 'FICO', NULL, NULL),
(23, 'Profitability Analysis (Ent. Controlling)', 'Valuation Variant for Order Costing', 'OPK9', '', 'Check Only (PP)', 'FICO', NULL, NULL),
(24, 'Profitability Analysis (Ent. Controlling)', 'General Version Define', 'OKEV', '', 'Check Only', 'FICO', NULL, NULL),
(25, 'Maintain Table View', 'Mapping cost center untuk transaksi input Profit Segment', 'SM30', 'ZMAPCOSTCENTER', 'Create', 'FICO', NULL, NULL),
(26, 'Maintain Table View', 'Mapping GL Account Cash Clrg/Bank utk UJB', 'SM30', 'ZREG_UJB_MAPV', 'Create', 'FICO', NULL, NULL),
(27, 'Maintain Table View', 'Daftar no sertifikat UJB yg berlaku', 'SM30', 'ZUJB_NUMRANGE', 'Create', 'FICO', NULL, NULL),
(28, 'Enterprise Structure (Logistic General)', 'Plant', 'OX10', '', 'Create', 'MM', NULL, NULL),
(29, 'Enterprise Structure (Logistic General)', 'Plant Parameters', 'SM30', 'V_159L', 'Create', 'MM', NULL, NULL),
(30, 'Enterprise Structure (Logistic General)', 'Assign plant ke company code', 'OX18', '', 'Create', 'MM', NULL, NULL),
(31, 'Enterprise Structure (Logistic General)', 'Assign BA ke plant dan divisi', 'OMJ7', '', 'Create', 'MM', NULL, NULL),
(32, 'Enterprise Structure (Logistic General)', 'Create & Assign Porg ke Plant', 'OX08 ; OX17', '', 'Create', 'MM', NULL, NULL),
(33, 'Enterprise Structure (Logistic General)', 'Create Purchasing group', 'OME4', '', 'Create', 'MM', NULL, NULL),
(34, 'Enterprise Structure (Logistic General)', 'Storage Location', 'OX09', '', 'Create', 'MM', NULL, NULL),
(35, 'Enterprise Structure (Logistic General)', 'Create/Check TOP (Term Of Payment)', 'OME2', '', 'Check Only', 'MM', NULL, NULL),
(36, 'Enterprise Structure (Logistic General)', 'Assign standard purchasing organization to plant ', 'SM30', 'V_001W_E', 'Create', 'MM', NULL, NULL),
(37, 'Enterprise Structure (Logistic General)', 'Define Stock Determinationgroup', 'OSPX', '', 'Create', 'MM', NULL, NULL),
(38, 'Enterprise Structure (Logistic General)', 'Assign Stock Determination Rule in Production Order', 'OPJ2', '', 'Create', 'MM', NULL, NULL),
(39, 'Enterprise Structure (Logistic General)', 'Define Control Data for Pull List', 'SPRO', '', 'Create', 'MM', NULL, NULL),
(40, 'Enterprise Structure (Logistic General)', 'Assign Stock Determination Rule in Pull list', 'SM30', 'V_T435W_BF', 'Check Only', 'MM', NULL, NULL),
(41, 'Enterprise Structure (Logistic General)', 'Define Storage Location MRP per Plant', 'SM30', 'V_T001L_D', 'Create', 'MM', NULL, NULL),
(42, 'Enterprise Structure (Logistic General)', 'Account deteremnination for valuation areas', 'OMWD', '', 'Check Only', 'MM', NULL, NULL),
(43, 'Setting field selection material type', 'Create/Check Unit of Measure', 'CUNI', '', 'Check Only', 'MM', NULL, NULL),
(44, 'Setting field selection material type', 'Create material group', 'OMSF', '', 'Check Only', 'MM', NULL, NULL),
(45, 'Setting field selection material type', 'Configure Split valuation', 'OMWC', '', 'Create', 'MM', NULL, NULL),
(46, 'Setting field selection material type', 'Define Attributes of Material Types', 'T134M', '', 'Create', 'MM', NULL, NULL),
(47, 'Modify/Define MRP Type', 'Create type PURCHASE REQUISITION (Number, Link)', 'V_162', '', 'Check Only', 'MM', NULL, NULL),
(48, 'Modify/Define MRP Type', 'Create type PURCHASE ORDER (Number, Link)', 'V_162', '', 'Check Only', 'MM', NULL, NULL),
(49, 'Modify/Define MRP Type', 'Create & Check Schema Prosedure', 'V_TMKE', '', 'Check Only', 'MM', NULL, NULL),
(50, 'Modify/Define MRP Type', 'Create/Define condition type PO', 'V_T685A', '', 'Check Only', 'MM', NULL, NULL),
(51, 'Modify/Define MRP Type', 'Carry Out Overall Maint of MRP Groups', 'ZPRD, ZRAW, ZSPR, ZSUP', 'OMD1', 'Create', 'MM', NULL, NULL),
(52, 'Modify/Define MRP Type', 'Define MRP Group for Each Material Type', 'V_TMW00', '', 'Create', 'MM', NULL, NULL),
(53, 'Modify/Define MRP Type', 'Define MRP Controllers', 'PIC ZPRD, PIC ZRAW, PIC ZSPR, PIC ZSUP', 'V_T024D', 'Create', 'MM', NULL, NULL),
(54, 'Modify/Define MRP Type', 'Define Special Procurement Types', 'V460A', '', 'Create', 'MM', NULL, NULL),
(55, 'Modify/Define MRP Type', 'Carry Out Overall Maintenance of Plant Parameter', 'V438M', '', 'Create', 'MM', NULL, NULL),
(56, 'Modify/Define MRP Type', 'Define Document Life', 'V_159R', '', 'Create', 'MM', NULL, NULL),
(57, 'Maintain account assigment category', 'Purchase Requisition, Release Procedure, Procedure with Classification, Set Up Procedure with Classification', 'SPRO', 'V_T16FS', 'Create', 'MM', NULL, NULL),
(58, 'Maintain account assigment category', 'Create release strategy PURCHASE REQUISITION', 'T16FK', '', 'Create', 'MM', NULL, NULL),
(59, 'Maintain account assigment category', 'Create release CODE PURCHASE ORDER', 'VV_T16FC_2', '', 'Create', 'MM', NULL, NULL),
(60, 'Maintain account assigment category', 'Create release strategy PURCHASE ORDER', 'V_T16FS', '', 'Create', 'MM', NULL, NULL),
(61, 'Maintain account assigment category', 'Create/check movement type', 'OMJJ', '', 'Check Only', 'MM', NULL, NULL),
(62, 'Maintain account assigment category', 'Configure automatic posting', 'OBYC', '', 'Check Only', 'MM', NULL, NULL),
(63, 'Maintain account assigment category', 'Create reason for movement', 'V_157L', '', 'Check Only', 'MM', NULL, NULL),
(64, 'Maintain account assigment category', 'Defaul value of doc type', 'V_T160', '', 'Check Only', 'MM', NULL, NULL),
(65, 'Maintain account assigment category', 'Set tolerance limits', 'V_169G', '', 'Check Only', 'MM', NULL, NULL),
(66, 'Maintain account assigment category', 'Define permissible partner role per accout group', '', '', '', 'MM', NULL, NULL),
(67, 'Maintain account assigment category', 'Set Check for duplicate invoice', '', '', '', 'MM', NULL, NULL),
(68, 'Maintain account assigment category', 'Maintai default value per tax code', 'V_169V_ST', '', 'Check Only', 'MM', NULL, NULL),
(69, 'Maintain account assigment category', 'Allow freezing of book inventory balance in stor loc', '', '', '', 'MM', NULL, NULL),
(70, 'Maintain account assigment category', 'Define text type for header text', '', '', '', 'MM', NULL, NULL),
(71, 'Maintain tabel/field program Tcode SM30 CLIENT 400', 'Kombinasi PR', 'SM30', 'ZPRRELEASE', 'Check Only', 'MM', NULL, NULL),
(72, 'Maintain tabel/field program Tcode SM30 CLIENT 400', 'Kombinasi PR Interbranch & STO', 'SM30', 'ZPRRELEASE', 'Check Only', 'MM', NULL, NULL),
(73, 'Maintain tabel/field program Tcode SM30 CLIENT 400', 'Kombinasi PO', 'SM30', 'ZPORELEASE', 'Check Only', 'MM', NULL, NULL),
(74, 'Maintain tabel/field program Tcode SM30 CLIENT 400', 'Kombinasi PO Interbranch & STO', 'SM30', 'ZPORELEASE', 'Check Only', 'MM', NULL, NULL),
(75, 'Maintain tabel/field program Tcode SM30 CLIENT 400', 'Nopol Kend Botolan u/ TTBK, Packing', 'SM30', 'ZNKEND', '-', 'MM', NULL, NULL),
(76, 'Maintain MM02', 'Field with qty Structure terkait KKF3', 'MM02', '', '-', 'MM', NULL, NULL),
(77, 'Maintain MM02', 'Field Material Original Terkait KKF3', 'MM02', '', '-', 'MM', NULL, NULL),
(78, 'Maintain MM02', 'Trading field', 'MM02', '', '-', 'MM', NULL, NULL),
(79, 'Maintain MM02', 'Field Volume botol MP, MC, MS', 'MM02', '', '-', 'MM', NULL, NULL),
(80, 'MARA-XCHPF', 'Batch management botol BMC', 'MM02 / MM17', '', '-', 'MM', NULL, NULL),
(81, 'MARA-XCHPF', 'Revenue Stream (copy plant lain)', 'MM02 / MM17', '', '-', 'MM', NULL, NULL),
(82, 'Maintain Release PR/PO', 'Assign Objects to Classes ? Class Type : 032 FRG_EKKO [223]', 'CL20N', '', 'Create', 'MM', NULL, NULL),
(83, 'Maintain Release PR/PO', 'Assign Objects to Classes ? FRG_EBAN', 'CL20N', '', 'Create', 'MM', NULL, NULL),
(84, 'Maintain Release PR/PO', 'Assign Objects/Classes to Class ? FRG_EKKO', 'CL24N', '', 'Create', 'MM', NULL, NULL),
(85, 'Maintain Release PR/PO', 'Assign Objects/Classes to Class ? FRG_EBAN', 'CL24N', '', 'Create', 'MM', NULL, NULL),
(86, 'Maintain Release PR/PO', 'Assign Objects/Classes to Class ? INTERBranch', 'CL24N', '', 'Create', 'MM', NULL, NULL),
(87, 'Variant Report', 'ZMMSQVI_RMD untuk interbranch', 'ZMMSQVI_RMD', '', 'Create', 'MM', NULL, NULL),
(88, 'Master Data PM', 'Maintain Maintenance Planning Plant', 'SPRO', '', 'Define', 'PM', NULL, NULL),
(89, 'Master Data PM', 'Assign Maintenance Planning Plant to Maintenance Plant', 'SPRO', '', 'Assign', 'PM', NULL, NULL),
(90, 'Master Data PM', 'Planner Groups', 'SPRO', '', 'Define', 'PM', NULL, NULL),
(91, 'Master Data PM', 'Maintenance Planner Groups', 'SPRO', '', 'Check or Define', 'PM', NULL, NULL),
(92, 'Master Data PM', 'Employees Responsible for Work Centers', 'SPRO', '', 'Define', 'PM', NULL, NULL),
(93, 'Notifikasi', 'Planner Groups', 'SPRO', '', 'Check  ', 'PM', NULL, NULL),
(94, 'Maintenance Order', 'Assign Order Types to Maintenance Plants', 'OIOD', '', 'Create', 'PM', NULL, NULL),
(95, 'Maintenance Order', 'Default Order Types for Maintenance Items', 'SPRO', '', 'Assign', 'PM', NULL, NULL),
(96, 'Maintenance Order', 'Maintain Default Values for Control Keys for Order Types', 'OIO6', '', 'Assign \"PM01\"', 'PM', NULL, NULL),
(97, 'Maintenance Order', 'Assign Costing parameters and Result Analysis Keys', 'OIOF', '', 'Assign \"PM01\"', 'PM', NULL, NULL),
(98, 'Maintenance Order', 'Change Docs, Collective Purc.Req.Indicator, Operation No.Interval', 'SPRO', '', 'Assign', 'PM', NULL, NULL),
(99, 'Maintenance Order', 'Documentation for Goods Movement for the Order', 'SPRO', '', 'Tick', 'PM', NULL, NULL),
(100, 'Maintenance Order', 'Inspection Control', 'OIOI', '', 'Define', 'PM', NULL, NULL),
(101, 'Maintenance Order', 'Default Values for Component Item Categories', 'SPRO', '', 'Define', 'PM', NULL, NULL),
(102, 'Maintenance Order', 'Activate Default Value for Current Date as Basic date', 'SPRO', '', 'Tick', 'PM', NULL, NULL),
(103, 'Maintenance Order', 'Default Values for Units for Operation', 'OIO9', '', 'Define', 'PM', NULL, NULL),
(104, 'Maintenance Order', 'Set Scheduling Paramaters', 'OPU7', '', 'Define', 'PM', NULL, NULL),
(105, 'Maintenance Order', 'Control Parameters for Completion Confirmations', 'SPRO', '', 'Define', 'PM', NULL, NULL),
(106, 'General ', 'Define Shift Sequence', 'OP4A', '', '', 'PP', NULL, NULL),
(107, 'General ', 'Define Order Types', 'OPJH', '', '', 'PP', NULL, NULL),
(108, 'MRP, Production Order', 'Define scheduling parameters for Production orders ', 'OPU3 ( 2*/ 1*/ 3* ) RWK,SER', '', 'Create', 'PP', NULL, NULL),
(109, 'MRP, Production Order', 'Define scheduling parameters for planned orders ', 'OPU5', '', 'Create', 'PP', NULL, NULL),
(110, 'MRP, Production Order', 'Production Scheduling Profiles', 'OPKP ( 00001, 00002 )', '', 'Create', 'PP', NULL, NULL),
(111, 'MRP, Production Order', 'Production Scheduler', 'OPJ9', '', 'Create', 'PP', NULL, NULL),
(112, 'MRP, Production Order', 'Define MRP Controllers', 'OMD0 ( mrp..... )', '', 'Create', 'PP', NULL, NULL),
(113, 'MRP, Production Order', 'Carryout Overall Maintenance of MRP Group', 'OPPZ ( Z* ....  )', '', 'Create', 'PP', NULL, NULL),
(114, 'MRP, Production Order', 'Define Scope of Total Planning', 'OM0E ( nama plant )', '', 'Create', 'PP', NULL, NULL),
(115, 'MRP, Production Order', 'Define MRP Creation Indicator', 'SPRO Production – MRP – Planning – Define Creation Indicator', '', 'Create', 'PP', NULL, NULL),
(116, 'MRP, Production Order', 'Define Order Type-Dependent Parameter', 'OPL8 ( 2*/1*/3* )', '', 'Create', 'PP', NULL, NULL),
(117, 'MRP, Production Order', 'Tambahan centang PP01, Implementation', '', '', 'Check', 'PP', NULL, NULL),
(118, 'MRP, Production Order', 'Define Confirmation Parameter', 'OPK4 (2*/1*/3* )', '', 'Create', 'PP', NULL, NULL),
(119, 'MRP, Production Order', 'Define Default Value', 'OPJG', '', 'Create', 'PP', NULL, NULL),
(120, 'MRP, Production Order', 'Maintain Checking Control', 'OPJK', '', 'Create', 'PP', NULL, NULL),
(121, 'MRP, Production Order', 'Activate MRP dan Set up Planning File', 'OMDU', '', 'Check', 'PP', NULL, NULL),
(122, 'MRP, Production Order', 'Define Order Type for Conversion to Production/Process Order', 'OPPE', '', 'Create', 'PP', NULL, NULL),
(123, 'MRP, Production Order', 'Define MRP group for each Material group', 'OPPR', '', 'Create', 'PP', NULL, NULL),
(124, 'MRP, Production Order', 'Define Planning Horizon', 'OMDX', '', 'Create', 'PP', NULL, NULL),
(125, 'MRP, Production Order', 'Define parameter for determining basic dates', 'SPRO', '', 'Check', 'PP', 'Admin', '2018-05-28 15:06:10'),
(126, 'MRP, Production Order', 'Define available check for component', 'OPPJ', '', 'Create', 'PP', NULL, NULL),
(127, 'MRP, Production Order', 'Maintain carry out maintenance all', 'OPPQ', '', 'alll maint', 'PP', NULL, NULL),
(128, 'MRP, Production Order', 'Set Up Production Scheduler Group', 'OPCH', '', 'Create', 'PP', NULL, NULL),
(129, 'MRP, Production Order', 'Define Production Scheduling for Process Orders ', 'CORY', '', 'Create', 'PP', NULL, NULL),
(130, 'MRP, Production Order', 'Determinine Person Responsible ï¿½ work Center', 'SPRO', '', 'Create', 'PP', 'Admin', '2018-05-28 15:06:03'),
(131, 'MRP, Production Order', 'valuation variants order costing', 'OPK9', '', 'Create', 'PP', NULL, NULL),
(132, 'MRP, Production Order', 'Order type - dependent parameters', 'COR4', '', 'Create', 'PP', NULL, NULL),
(133, 'Maintain tabel/field program ', 'Sloc Kode Material', 'SM30', 'ZBOTOL_SLOC', 'Check Only', 'PP', NULL, NULL),
(134, 'Maintain tabel/field program ', 'Kode + isi Botol', 'SM30', 'ZCAP_BOTOL', 'Check Only', 'PP', NULL, NULL),
(135, 'Maintain tabel/field program ', 'LIVE PP', 'SM30', 'ZLIVE_PP', 'centang', 'PP', NULL, NULL),
(136, 'Maintain tabel/field program ', 'LIVE PP + BATCH', 'SM30', 'ZLIVE_BATCH', 'centang', 'PP', NULL, NULL),
(137, 'Maintain tabel/field program', 'Kapasitas Produksi', 'ZPPENH016', 'Kapasitas Design, Kapasitas Commisioning', 'Create', 'PP', NULL, NULL),
(138, 'Maintain tabel/field program', 'Mode ASP', 'ZPPENH016', 'Mode ASP 1/ 2', 'Create', 'PP', NULL, NULL),
(139, 'Maintain tabel/field program', 'Bahan Baku Mixed Gas', 'ZPPENH016', 'Kode material Mixed Gas Bahan baku yang dipakai Mixed Gas', 'Create', 'PP', NULL, NULL),
(140, 'Maintain tabel/field program', 'Map Plant dan sloc mixed Gas', 'ZPPENH016', 'Sloc mixed Gas', 'Create', 'PP', NULL, NULL),
(141, 'Maintain tabel/field program', 'Mapping SlocPipeline', 'ZPPENH016', 'Produksi Pipeline yang ada', 'Create', 'PP', NULL, NULL),
(142, 'Maintain tabel/field program', 'Mapping Sloc tangki', 'ZPPENH016', 'Sloc tangki yang dipakai produksi', 'Create', 'PP', NULL, NULL),
(143, 'Maintain tabel/field program', 'Mapping Sloc transfer', 'ZPPENH016', 'Mapping mobil distribusi yang dipakai per kode material', 'Create', 'PP', NULL, NULL),
(144, 'Maintain tabel/field program', 'Mapping report PP', 'ZPPENH016', 'Mapping report PP yg dikirim lewat email', 'Via Email', 'PP', NULL, NULL),
(145, 'Enterprise Structure (Financial Accounting)', 'Define company', 'OX15', '', 'Check Only', 'SD', NULL, NULL),
(146, 'Enterprise Structure (Financial Accounting)', 'Define Credit Control Area', 'OB45', '', 'Check Only', 'SD', NULL, NULL),
(147, 'Enterprise Structure (Financial Accounting)', 'Define Business Area', 'OX03', '', 'Check Only', 'SD', NULL, NULL),
(148, 'Enterprise Structure (Logistics-Plant)', 'Define Plant', 'OX10', '', 'Check Only', 'SD', NULL, NULL),
(149, 'Enterprise Structure (Logistics-Division)', 'Define Division', 'OVXD', 'V_TSPA', 'Check Only', 'SD', NULL, NULL),
(150, 'Enterprise Structure (Sales & Distribution)', 'Define, copy, delete, check sales organization', 'OVX5', 'V_TVKO', 'Create', 'SD', NULL, NULL),
(151, 'Enterprise Structure (Sales & Distribution)', 'Define, copy, delete, check distribution channel', 'OVXI', 'V_TVTW', 'Check Only', 'SD', NULL, NULL),
(152, 'Enterprise Structure (Sales & Distribution)', 'Maintain sales office', 'OVX1', 'V_TVBUR', 'Create', 'SD', NULL, NULL),
(153, 'Enterprise Structure (Logistics Execution)', 'Define, copy, delete, check shipping point', 'OVXD', 'V_TVST', 'Create', 'SD', NULL, NULL),
(154, 'Enterprise Structure (Logistics General)', 'Assign Business Area to Plant/Valuation Area and Division', 'OMJ7', '', 'Create', 'SD', NULL, NULL);

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
(19, 'Abta', '8d437b535e5f466d04227b1ed1d7c71f', 'Abta', 'PP', NULL, NULL),
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
(15, 'Enterprise Structure', 'Define BA', 'SPRO', 'V_TGSB', 'Create', 'FICO', 'OK', 1000, 'SMDK900000', '2018-04-24', 'Andrean', NULL, NULL),
(16, 'Enterprise Structure', 'Assign Business Area to Consolidation Business Area', 'SPRO', 'V_GSB_A', 'Check', 'FICO', '', 1000, '', '0000-00-00', '', NULL, NULL),
(17, 'Financial Accounting (Bank Accounting)', 'Set Up Cash Journal', 'FBCJC0', '', 'Create', 'FICO', NULL, 1000, NULL, NULL, NULL, NULL, NULL),
(18, 'Financial Accounting (Bank Accounting)', 'Define House Banks', 'F112', '', 'Create', 'FICO', NULL, 1000, NULL, NULL, NULL, NULL, NULL),
(19, 'Enterprise Structure', 'Define BA', 'SPRO', 'V_TGSB', 'Create', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(20, 'Enterprise Structure', 'Assign Business Area to Consolidation Business Area', 'SPRO', 'V_GSB_A', 'Check', 'FICO', NULL, 2065, NULL, NULL, NULL, NULL, NULL),
(22, 'Enterprise Structure', 'Define BA', 'SPRO', 'V_TGSB', 'Create', 'FICO', NULL, 2073, NULL, NULL, NULL, NULL, NULL),
(23, 'Enterprise Structure', 'Assign Business Area to Consolidation Business Area', 'SPRO', 'V_GSB_A', 'Check', 'FICO', ' ', 2073, '', '0000-00-00', '', 'Admin', '2018-05-23 15:40:41'),
(24, 'Enterprise Structure', 'Define BA', 'SPRO', 'V_TGSB', 'Create', '', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(25, 'Enterprise Structure', 'Assign Business Area to Consolidation Business Area', 'SPRO', 'V_GSB_A', 'Check', '', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(26, 'Financial Accounting (Bank Accounting)', 'Create, Change, Delete Business Transactions', 'FBCJC2', '', 'Create', 'FICO', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(27, 'Financial Accounting (Bank Accounting)', 'Validation in Accounting Documents (workbench req.)', 'OB28', '', 'Create', 'FICO', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(28, 'Financial Accounting (Asset Accounting)', 'Specify Transfer Date/Last Closed Fiscal Year', 'SPRO', 'V_T093C_08', 'Create', 'FICO', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(29, 'Financial Accounting (Asset Accounting)', 'Specify Last Period Posted in Prv.System (Transf.During FY)', 'OAYC', '', 'Create', 'FICO', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(30, 'Financial Supply Chain Mgmt (Cash & Liquidity', 'Define Cash Management Account Name', 'SPRO', 'V_T035D', 'Create', 'FICO', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(31, 'Financial Supply Chain Mgmt (Cash & Liquidity', 'Maintain Structure', 'SPRO', 'V_T038', 'Create', 'FICO', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(32, 'Controlling (Cost Center Acct)', 'Create Plan Distribution', 'KSV7', '', 'File Checklist PP', 'FICO', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(33, 'Controlling (Cost Center Acct)', 'Create Plan Assessment', 'KSU7', '', 'File Checklist PP', 'FICO', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(34, 'Controlling (Cost Center Acct)', 'Edit Automatic Account Assignment', 'OKB9', '', 'Create', 'FICO', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(35, 'Controlling (Cost Center Acct)', 'Create Actual Distribution', 'KSV1', '', 'File Checklist PP', 'FICO', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(36, 'Controlling (Cost Center Acct)', 'Create Actual Assessment', 'KSU1', '', 'File Checklist PP', 'FICO', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(37, 'Product Cost Controlling (Prd Cost Planning)', 'Define Overhead Groups', 'OKZ2', '', 'Create', 'FICO', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(38, 'Product Cost Controlling', 'Check Special Procurement Types ', 'SPRO', 'V460A', 'Check Only', 'FICO', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(39, 'Product Cost Controlling (Cost Obj Controllin', 'Define Cost-Accounting-Relevant Default Values for Order Types and Plants', 'SPRO', 'V_T399X_PC', 'Create', 'FICO', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(40, 'Product Cost Controlling (Simulatenous Costin', 'Activate Generation of Cost Log in Repetitive Manufacturing', 'SPRO', 'V_T437D_F', 'Create', 'FICO', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(41, 'Product Cost Controlling', 'Define Default Variance Keys for Plants', 'OKVW', '', 'Create', 'FICO', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(42, 'Product Cost Controlling', 'Define Goods Received Valuation for Order Delivery', 'SPRO', 'V_TCO10', 'Create', 'FICO', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(43, 'Product Cost Controlling (Actual Costing/Ml)', 'Configure Dynamic Price Changes', 'SPRO', 'V_T001K_PR', 'Check Only', 'FICO', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(44, 'Profitability Analysis (Ent. Controlling)', 'Define Order Type-Dependent Parameters', 'COR4', '', 'Check Only (PP)', 'FICO', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(45, 'Profitability Analysis (Ent. Controlling)', 'Order Type - Dependent Parameters', 'OPL8', '', 'Check Only (PP)', 'FICO', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(46, 'Profitability Analysis (Ent. Controlling)', 'Valuation Variant for Order Costing', 'OPK9', '', 'Check Only (PP)', 'FICO', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(47, 'Profitability Analysis (Ent. Controlling)', 'General Version Define', 'OKEV', '', 'Check Only', 'FICO', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(48, 'Maintain Table View', 'Mapping cost center untuk transaksi input Profit Segment', 'SM30', 'ZMAPCOSTCENTER', 'Create', 'FICO', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(49, 'Maintain Table View', 'Mapping GL Account Cash Clrg/Bank utk UJB', 'SM30', 'ZREG_UJB_MAPV', 'Create', 'FICO', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(50, 'Maintain Table View', 'Daftar no sertifikat UJB yg berlaku', 'SM30', 'ZUJB_NUMRANGE', 'Create', 'FICO', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(51, 'Enterprise Structure (Logistic General)', 'Plant', 'OX10', '', 'Create', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(52, 'Enterprise Structure (Logistic General)', 'Plant Parameters', 'SM30', 'V_159L', 'Create', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(53, 'Enterprise Structure (Logistic General)', 'Assign plant ke company code', 'OX18', '', 'Create', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(54, 'Enterprise Structure (Logistic General)', 'Assign BA ke plant dan divisi', 'OMJ7', '', 'Create', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(55, 'Enterprise Structure (Logistic General)', 'Create & Assign Porg ke Plant', 'OX08 ; OX17', '', 'Create', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(56, 'Enterprise Structure (Logistic General)', 'Create Purchasing group', 'OME4', '', 'Create', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(57, 'Enterprise Structure (Logistic General)', 'Storage Location', 'OX09', '', 'Create', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(58, 'Enterprise Structure (Logistic General)', 'Create/Check TOP (Term Of Payment)', 'OME2', '', 'Check Only', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(59, 'Enterprise Structure (Logistic General)', 'Assign standard purchasing organization to plant ', 'SM30', 'V_001W_E', 'Create', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(60, 'Enterprise Structure (Logistic General)', 'Define Stock Determinationgroup', 'OSPX', '', 'Create', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(61, 'Enterprise Structure (Logistic General)', 'Assign Stock Determination Rule in Production Order', 'OPJ2', '', 'Create', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(62, 'Enterprise Structure (Logistic General)', 'Define Control Data for Pull List', 'SPRO', '', 'Create', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(63, 'Enterprise Structure (Logistic General)', 'Assign Stock Determination Rule in Pull list', 'SM30', 'V_T435W_BF', 'Check Only', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(64, 'Enterprise Structure (Logistic General)', 'Define Storage Location MRP per Plant', 'SM30', 'V_T001L_D', 'Create', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(65, 'Enterprise Structure (Logistic General)', 'Account deteremnination for valuation areas', 'OMWD', '', 'Check Only', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(66, 'Setting field selection material type', 'Create/Check Unit of Measure', 'CUNI', '', 'Check Only', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(67, 'Setting field selection material type', 'Create material group', 'OMSF', '', 'Check Only', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(68, 'Setting field selection material type', 'Configure Split valuation', 'OMWC', '', 'Create', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(69, 'Setting field selection material type', 'Define Attributes of Material Types', 'T134M', '', 'Create', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(70, 'Modify/Define MRP Type', 'Create type PURCHASE REQUISITION (Number, Link)', 'V_162', '', 'Check Only', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(71, 'Modify/Define MRP Type', 'Create type PURCHASE ORDER (Number, Link)', 'V_162', '', 'Check Only', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(72, 'Modify/Define MRP Type', 'Create & Check Schema Prosedure', 'V_TMKE', '', 'Check Only', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(73, 'Modify/Define MRP Type', 'Create/Define condition type PO', 'V_T685A', '', 'Check Only', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(74, 'Modify/Define MRP Type', 'Carry Out Overall Maint of MRP Groups', 'ZPRD, ZRAW, ZSPR, ZSUP', 'OMD1', 'Create', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(75, 'Modify/Define MRP Type', 'Define MRP Group for Each Material Type', 'V_TMW00', '', 'Create', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(76, 'Modify/Define MRP Type', 'Define MRP Controllers', 'PIC ZPRD, PIC ZRAW, PIC ZSPR, PIC ZSUP', 'V_T024D', 'Create', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(77, 'Modify/Define MRP Type', 'Define Special Procurement Types', 'V460A', '', 'Create', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(78, 'Modify/Define MRP Type', 'Carry Out Overall Maintenance of Plant Parameter', 'V438M', '', 'Create', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(79, 'Modify/Define MRP Type', 'Define Document Life', 'V_159R', '', 'Create', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(80, 'Maintain account assigment category', 'Purchase Requisition, Release Procedure, Procedure with Classification, Set Up Procedure with Classification', 'SPRO', 'V_T16FS', 'Create', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(81, 'Maintain account assigment category', 'Create release strategy PURCHASE REQUISITION', 'T16FK', '', 'Create', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(82, 'Maintain account assigment category', 'Create release CODE PURCHASE ORDER', 'VV_T16FC_2', '', 'Create', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(83, 'Maintain account assigment category', 'Create release strategy PURCHASE ORDER', 'V_T16FS', '', 'Create', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(84, 'Maintain account assigment category', 'Create/check movement type', 'OMJJ', '', 'Check Only', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(85, 'Maintain account assigment category', 'Configure automatic posting', 'OBYC', '', 'Check Only', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(86, 'Maintain account assigment category', 'Create reason for movement', 'V_157L', '', 'Check Only', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(87, 'Maintain account assigment category', 'Defaul value of doc type', 'V_T160', '', 'Check Only', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(88, 'Maintain account assigment category', 'Set tolerance limits', 'V_169G', '', 'Check Only', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(89, 'Maintain account assigment category', 'Define permissible partner role per accout group', '', '', '', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(90, 'Maintain account assigment category', 'Set Check for duplicate invoice', '', '', '', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(91, 'Maintain account assigment category', 'Maintai default value per tax code', 'V_169V_ST', '', 'Check Only', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(92, 'Maintain account assigment category', 'Allow freezing of book inventory balance in stor loc', '', '', '', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(93, 'Maintain account assigment category', 'Define text type for header text', '', '', '', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(94, 'Maintain tabel/field program Tcode SM30 CLIEN', 'Kombinasi PR', 'SM30', 'ZPRRELEASE', 'Check Only', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(95, 'Maintain tabel/field program Tcode SM30 CLIEN', 'Kombinasi PR Interbranch & STO', 'SM30', 'ZPRRELEASE', 'Check Only', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(96, 'Maintain tabel/field program Tcode SM30 CLIEN', 'Kombinasi PO', 'SM30', 'ZPORELEASE', 'Check Only', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(97, 'Maintain tabel/field program Tcode SM30 CLIEN', 'Kombinasi PO Interbranch & STO', 'SM30', 'ZPORELEASE', 'Check Only', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(98, 'Maintain tabel/field program Tcode SM30 CLIEN', 'Nopol Kend Botolan u/ TTBK, Packing', 'SM30', 'ZNKEND', '-', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(99, 'Maintain MM02', 'Field with qty Structure terkait KKF3', 'MM02', '', '-', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(100, 'Maintain MM02', 'Field Material Original Terkait KKF3', 'MM02', '', '-', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(101, 'Maintain MM02', 'Trading field', 'MM02', '', '-', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(102, 'Maintain MM02', 'Field Volume botol MP, MC, MS', 'MM02', '', '-', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(103, 'MARA-XCHPF', 'Batch management botol BMC', 'MM02 / MM17', '', '-', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(104, 'MARA-XCHPF', 'Revenue Stream (copy plant lain)', 'MM02 / MM17', '', '-', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(105, 'Maintain Release PR/PO', 'Assign Objects to Classes ? Class Type : 032 FRG_EKKO [223]', 'CL20N', '', 'Create', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(106, 'Maintain Release PR/PO', 'Assign Objects to Classes ? FRG_EBAN', 'CL20N', '', 'Create', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(107, 'Maintain Release PR/PO', 'Assign Objects/Classes to Class ? FRG_EKKO', 'CL24N', '', 'Create', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(108, 'Maintain Release PR/PO', 'Assign Objects/Classes to Class ? FRG_EBAN', 'CL24N', '', 'Create', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(109, 'Maintain Release PR/PO', 'Assign Objects/Classes to Class ? INTERBranch', 'CL24N', '', 'Create', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(110, 'Variant Report', 'ZMMSQVI_RMD untuk interbranch', 'ZMMSQVI_RMD', '', 'Create', 'MM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(111, 'Master Data PM', 'Maintain Maintenance Planning Plant', 'SPRO', '', 'Define', 'PM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(112, 'Master Data PM', 'Assign Maintenance Planning Plant to Maintenance Plant', 'SPRO', '', 'Assign', 'PM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(113, 'Master Data PM', 'Planner Groups', 'SPRO', '', 'Define', 'PM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(114, 'Master Data PM', 'Maintenance Planner Groups', 'SPRO', '', 'Check or Define', 'PM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(115, 'Master Data PM', 'Employees Responsible for Work Centers', 'SPRO', '', 'Define', 'PM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(116, 'Notifikasi', 'Planner Groups', 'SPRO', '', 'Check  ', 'PM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(117, 'Maintenance Order', 'Assign Order Types to Maintenance Plants', 'OIOD', '', 'Create', 'PM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(118, 'Maintenance Order', 'Default Order Types for Maintenance Items', 'SPRO', '', 'Assign', 'PM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(119, 'Maintenance Order', 'Maintain Default Values for Control Keys for Order Types', 'OIO6', '', 'Assign \"PM01\"', 'PM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(120, 'Maintenance Order', 'Assign Costing parameters and Result Analysis Keys', 'OIOF', '', 'Assign \"PM01\"', 'PM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(121, 'Maintenance Order', 'Change Docs, Collective Purc.Req.Indicator, Operation No.Interval', 'SPRO', '', 'Assign', 'PM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(122, 'Maintenance Order', 'Documentation for Goods Movement for the Order', 'SPRO', '', 'Tick', 'PM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(123, 'Maintenance Order', 'Inspection Control', 'OIOI', '', 'Define', 'PM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(124, 'Maintenance Order', 'Default Values for Component Item Categories', 'SPRO', '', 'Define', 'PM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(125, 'Maintenance Order', 'Activate Default Value for Current Date as Basic date', 'SPRO', '', 'Tick', 'PM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(126, 'Maintenance Order', 'Default Values for Units for Operation', 'OIO9', '', 'Define', 'PM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(127, 'Maintenance Order', 'Set Scheduling Paramaters', 'OPU7', '', 'Define', 'PM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(128, 'Maintenance Order', 'Control Parameters for Completion Confirmations', 'SPRO', '', 'Define', 'PM', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(129, 'General ', 'Define Shift Sequence', 'OP4A', '', '', 'PP', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(130, 'General ', 'Define Order Types', 'OPJH', '', '', 'PP', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(131, 'MRP, Production Order', 'Define scheduling parameters for Production orders ', 'OPU3 ( 2*/ 1*/ 3* ) RWK,SER', '', 'Create', 'PP', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(132, 'MRP, Production Order', 'Define scheduling parameters for planned orders ', 'OPU5', '', 'Create', 'PP', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(133, 'MRP, Production Order', 'Production Scheduling Profiles', 'OPKP ( 00001, 00002 )', '', 'Create', 'PP', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(134, 'MRP, Production Order', 'Production Scheduler', 'OPJ9', '', 'Create', 'PP', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(135, 'MRP, Production Order', 'Define MRP Controllers', 'OMD0 ( mrp..... )', '', 'Create', 'PP', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(136, 'MRP, Production Order', 'Carryout Overall Maintenance of MRP Group', 'OPPZ ( Z* ....  )', '', 'Create', 'PP', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(137, 'MRP, Production Order', 'Define Scope of Total Planning', 'OM0E ( nama plant )', '', 'Create', 'PP', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(138, 'MRP, Production Order', 'Define MRP Creation Indicator', 'SPRO Production – MRP – Planning – Define Cre', '', 'Create', 'PP', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(139, 'MRP, Production Order', 'Define Order Type-Dependent Parameter', 'OPL8 ( 2*/1*/3* )', '', 'Create', 'PP', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(140, 'MRP, Production Order', 'Tambahan centang PP01, Implementation', '', '', 'Check', 'PP', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(141, 'MRP, Production Order', 'Define Confirmation Parameter', 'OPK4 (2*/1*/3* )', '', 'Create', 'PP', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(142, 'MRP, Production Order', 'Define Default Value', 'OPJG', '', 'Create', 'PP', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(143, 'MRP, Production Order', 'Maintain Checking Control', 'OPJK', '', 'Create', 'PP', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(144, 'MRP, Production Order', 'Activate MRP dan Set up Planning File', 'OMDU', '', 'Check', 'PP', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(145, 'MRP, Production Order', 'Define Order Type for Conversion to Production/Process Order', 'OPPE', '', 'Create', 'PP', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(146, 'MRP, Production Order', 'Define MRP group for each Material group', 'OPPR', '', 'Create', 'PP', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(147, 'MRP, Production Order', 'Define Planning Horizon', 'OMDX', '', 'Create', 'PP', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(148, 'MRP, Production Order', 'Define parameter for determining basic dates', 'SPRO', '', 'Check', 'PP', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(149, 'MRP, Production Order', 'Define available check for component', 'OPPJ', '', 'Create', 'PP', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(150, 'MRP, Production Order', 'Maintain carry out maintenance all', 'OPPQ', '', 'alll maint', 'PP', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(151, 'MRP, Production Order', 'Set Up Production Scheduler Group', 'OPCH', '', 'Create', 'PP', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(152, 'MRP, Production Order', 'Define Production Scheduling for Process Orders ', 'CORY', '', 'Create', 'PP', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(153, 'MRP, Production Order', 'Determinine Person Responsible ï¿½ work Center', 'SPRO', '', 'Create', 'PP', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(154, 'MRP, Production Order', 'valuation variants order costing', 'OPK9', '', 'Create', 'PP', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(155, 'MRP, Production Order', 'Order type - dependent parameters', 'COR4', '', 'Create', 'PP', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(156, 'Maintain tabel/field program ', 'Sloc Kode Material', 'SM30', 'ZBOTOL_SLOC', 'Check Only', 'PP', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(157, 'Maintain tabel/field program ', 'Kode + isi Botol', 'SM30', 'ZCAP_BOTOL', 'Check Only', 'PP', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(158, 'Maintain tabel/field program ', 'LIVE PP', 'SM30', 'ZLIVE_PP', 'centang', 'PP', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(159, 'Maintain tabel/field program ', 'LIVE PP + BATCH', 'SM30', 'ZLIVE_BATCH', 'centang', 'PP', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(160, 'Maintain tabel/field program', 'Kapasitas Produksi', 'ZPPENH016', 'Kapasitas Design, Kapasitas Commisioning', 'Create', 'PP', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(161, 'Maintain tabel/field program', 'Mode ASP', 'ZPPENH016', 'Mode ASP 1/ 2', 'Create', 'PP', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(162, 'Maintain tabel/field program', 'Bahan Baku Mixed Gas', 'ZPPENH016', 'Kode material Mixed Gas Bahan baku yang dipak', 'Create', 'PP', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(163, 'Maintain tabel/field program', 'Map Plant dan sloc mixed Gas', 'ZPPENH016', 'Sloc mixed Gas', 'Create', 'PP', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(164, 'Maintain tabel/field program', 'Mapping SlocPipeline', 'ZPPENH016', 'Produksi Pipeline yang ada', 'Create', 'PP', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(165, 'Maintain tabel/field program', 'Mapping Sloc tangki', 'ZPPENH016', 'Sloc tangki yang dipakai produksi', 'Create', 'PP', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(166, 'Maintain tabel/field program', 'Mapping Sloc transfer', 'ZPPENH016', 'Mapping mobil distribusi yang dipakai per kod', 'Create', 'PP', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(167, 'Maintain tabel/field program', 'Mapping report PP', 'ZPPENH016', 'Mapping report PP yg dikirim lewat email', 'Via Email', 'PP', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(168, 'Enterprise Structure (Financial Accounting)', 'Define company', 'OX15', '', 'Check Only', 'SD', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(169, 'Enterprise Structure (Financial Accounting)', 'Define Credit Control Area', 'OB45', '', 'Check Only', 'SD', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(170, 'Enterprise Structure (Financial Accounting)', 'Define Business Area', 'OX03', '', 'Check Only', 'SD', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(171, 'Enterprise Structure (Logistics-Plant)', 'Define Plant', 'OX10', '', 'Check Only', 'SD', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(172, 'Enterprise Structure (Logistics-Division)', 'Define Division', 'OVXD', 'V_TSPA', 'Check Only', 'SD', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(173, 'Enterprise Structure (Sales & Distribution)', 'Define, copy, delete, check sales organization', 'OVX5', 'V_TVKO', 'Create', 'SD', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(174, 'Enterprise Structure (Sales & Distribution)', 'Define, copy, delete, check distribution channel', 'OVXI', 'V_TVTW', 'Check Only', 'SD', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(175, 'Enterprise Structure (Sales & Distribution)', 'Maintain sales office', 'OVX1', 'V_TVBUR', 'Create', 'SD', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(176, 'Enterprise Structure (Logistics Execution)', 'Define, copy, delete, check shipping point', 'OVXD', 'V_TVST', 'Create', 'SD', NULL, 3999, NULL, NULL, NULL, NULL, NULL),
(177, 'Enterprise Structure (Logistics General)', 'Assign Business Area to Plant/Valuation Area and Division', 'OMJ7', '', 'Create', 'SD', NULL, 3999, NULL, NULL, NULL, NULL, NULL);

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
-- AUTO_INCREMENT for table `m_ba`
--
ALTER TABLE `m_ba`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `m_check`
--
ALTER TABLE `m_check`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

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
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userno` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `v_check`
--
ALTER TABLE `v_check`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `v_uat`
--
ALTER TABLE `v_uat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
