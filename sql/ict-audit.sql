-- phpMyAdmin SQL Dump
-- version 3.3.7deb7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 23, 2013 at 04:56 PM
-- Server version: 5.1.61
-- PHP Version: 5.3.3-7+squeeze9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ict-audit`
--

-- --------------------------------------------------------

--
-- Table structure for table `database_tb`
--

CREATE TABLE IF NOT EXISTS `database_tb` (
  `dbname` varchar(255) DEFAULT NULL,
  `isss` varchar(255) DEFAULT NULL,
  `dbcontent` varchar(255) DEFAULT NULL,
  `dbstatus` varchar(255) DEFAULT NULL,
  `dbstorage` varchar(255) DEFAULT NULL,
  `dbid` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `submittedBy` text NOT NULL,
  `operational` text NOT NULL,
  `updated` text NOT NULL,
  PRIMARY KEY (`dbid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=80 ;

--
-- Dumping data for table `database_tb`
--

INSERT INTO `database_tb` (`dbname`, `isss`, `dbcontent`, `dbstatus`, `dbstorage`, `dbid`, `submittedBy`, `operational`, `updated`) VALUES
('PostgreSQL', 'Personnel Data Tracking System', 'Personnel Data', '...', ' Server''s Harddisk ', 6, 'UPManila', 'Yes', ''),
('PostgreSQL', 'CRS-SRS Project', 'Student Information and Enlistment System', '...', ' Server''s Harddisk ', 5, 'UPManila', 'Yes', ''),
('DBASE III', 'Payroll System ', 'Payroll', '...', 'Standalone Machine''s Harddisk', 7, 'UPManila', 'Yes', ''),
('MySQL', 'iLib', 'Library Sources ', '...', 'Server''s Harddisk ', 8, 'UPManila', 'Yes', ''),
('MySQL', 'CPC', 'Document Assessment and Tracking System', '...', 'Server''s Harddisk ', 9, 'UPManila', 'No', ''),
('MySQL', 'OSIRIS', 'Organ System Integrated Research and Information Software', '...', 'Server''s Harddisk ', 10, 'UPManila', 'Yes', ''),
('MySQL', 'CM Faculty Database', 'Faculty Database', '...', 'Server''s Harddisk ', 11, 'UPManila', 'Yes', ''),
('MySQL', 'UNITE', 'Unified Teacher''s Evaluation', '...', 'Server''s Harddisk ', 12, 'UPManila', 'Yes', ''),
('MySQL', 'CMS', 'Content Management System', '...', 'Server''s Harddisk ', 13, 'UPManila', 'No', ''),
('POSTGRES', 'CRS', 'Student Academic Records', '...', ' FIXED MAGNETIC DISK', 14, 'UPBaguio', 'Yes', ''),
('MYSQL', 'WEB', 'Text, Photos, Videos, Documents', '...', ' FIXED MAGNETIC DISK', 15, 'UPBaguio', 'Yes', ''),
('MYSQL', 'LDAP/RADIUS', 'Student and employee accounts, e.g, usernames and passwords', '...', ' FIXED MAGNETIC DISK', 16, 'UPBaguio', 'Yes', ''),
('DBASE', 'SRS', 'Student Academic Records', '...', ' FIXED MAGNETIC DISK', 17, 'UPBaguio', 'Yes', ''),
('DBASE', 'SPMO INVENTORY SYSTEM', 'UP Baguio Equipment records', '...', ' FIXED MAGNETIC DISK', 18, 'UPBaguio', 'Yes', ''),
('MS ACCESS', 'PAYSYS', 'Payroll records of UP Baguio Employees', '...', ' FIXED MAGNETIC DISK', 19, 'UPBaguio', 'Yes', ''),
('LDAP', 'Webmail, CRS, iLib, DilNet, WiFi, UVLe, IskWiki, Dorm Application, Docutrak, VoIP (in Development), RADIUS (in Development)', 'Student/Employee Numbers\r\nName\r\nStatus/Position', '...', 'Enterprise\r\nServer Hard\r\nDrives with\r\nRedundancy,\r\nBackups.', 20, 'UPDSys', 'Yes', ''),
('Foxpro', 'Unit', 'Personal Data, Service Records, Employment Records', '...', ' NAS 500 GB', 21, 'UPDSys', 'Yes', ''),
('MS Access / Excel', 'Unit', 'Personal Data, Leave Records, DTR/COSs, Government Membership Nos., PT/PR, Authority To Fill, Plantilla', 'Average Transactions/Month 4,000', ' NAS 500 GB', 22, 'UPDSys', '', ''),
('Spreadsheet', 'Inventory of non-semi expenditure equipment', 'Item, Description, Qty, Date acquired, Acquisition Cost, Property No.', 'Average Transactions/ Month   = 20 % content/capacity ', ' Harddisk/\r\nUSB', 23, 'UPManila', '', ''),
('FoxPro', 'ARIES/PAYSYS', 'SPMO & Accounting Data', 'Average Transactions/ Month    % content/capacity ', ' Desktop PC/HDD', 24, 'UPMindanao', '', ''),
('Inventory of Multimedia Learning Materials', '...', 'Learning Materials', '...', ' ...', 25, 'UPManila', '', ''),
('Digital Media Database', 'Google Docs', 'List of available media materials (video)', '...', ' Cloud', 26, 'UPLB', '', 'No'),
('Digital Lecture assets', 'Google Docs', 'List of powerpoint presentation by lecturers', '...', 'Cloud/CD', 27, 'UPLB', '', 'No'),
('Inventory of Interactive Learning Materials ', '...', 'Learning Objects uploaded in ILC Website', '...', 'Website', 28, 'UPLB', '', ''),
('UVLE', '...', '...', 'With more than 25,000 users; around 2,000 courses', ' RAID', 29, 'UPDSys', '', ''),
('ISKWIKI', '...', '...', 'iskWiki now has 2,697 registered users, 3,679,968 page views, 6,766 total pages in the database', ' RAID', 30, 'UPDSys', '', ''),
('SYSTEMS ADMINISTRATION PAYROLL SYSTEM (SAPS)', 'General Payroll &  Remittances System', 'Names of employees, salaries, agency deductions, units,  accounts codes of expense accounts, agency remittances', 'Average Transactions/Month = 728', 'Workstation', 31, 'UPOU', '', ''),
('...', 'Special Payroll  and deductions System', 'One time benefits payments', '% content/capacity = 100%', 'Workstation\r\n', 32, 'UPOU', '', ''),
('...', 'Books of Accounts Systems (CkDJ, CDJ, CRJ, MscTJ), RANCA, Registry of Obligations, General Ledger.', 'JEVs, account codes, payees, unit, amount, fund, ObR number, Check number, transaction dates, Official receipt number, bank name, agency names, etc.', '...', 'Workstation', 33, 'UPOU', '', ''),
('...', 'Subsidiary Ledgers, Projects Fund Account, Student loans', 'Projects’ names and codes, account codes, etc.\r\n\r\n\r\n', '...', 'Workstation', 34, 'UPOU', '', ''),
('...', 'Financial Reports Systems  (Consolidated Trial Balance, Trial Balance per Fund, Statement of Operations/Income, Balance Sheet, Cash Flows), Depreciation Schedule, Accounts Payable, Student Loans', 'Account codes, references, etc\r\n\r\n\r\n', '...', 'Workstation', 35, 'UPOU', '', ''),
('...', 'Online Property Inventory System', 'Name of property, number, descriptions, quantity, end-user, office/unit, date acquired, unit cost.\r\n\r\n\r\n', '...', ' Workstation', 36, 'UPOU', '', ''),
('...', 'Office  Supplies Inventory System', 'Name of items, quantity, cost, description, purchase order number and date, invoice number and date.', '...', 'Workstation', 37, 'UPOU', '', ''),
('...', 'Index of Payments System', 'Payee, control number, DV number, ', '...', ' Workstation', 38, 'UPOU', '', ''),
('...', 'Accounting Documents Tracking System', 'Control number, office/unit,', '...', 'Workstation', 39, 'UPOU', '', ''),
('MS Access', 'BMS', 'OBR, BUR, allotment, obligation, balances\r\n\r\n', 'Average Transactions/ Month  %  GF = 350-600; RF = 220 transactions  content/capacity', ' ...', 40, 'upbo', '', ''),
('MS Access', 'AAMS', 'SAOB\r\n\r\n', 'Average Transactions/ Month  9CUs per month % content/capacity', ' ...', 41, 'upbo', '', ''),
('MS Access', 'CARMS', 'TO, FCM\r\n\r\n', 'Average Transactions/ Month   50-100 transactions % content/capacity', ' ...', 42, 'upbo', '', ''),
('Spreadsheet', 'Supplies & Inventory', 'Monitoring of supplies and inventory', 'Average Transactions/ Month   % content/capacity', ' HDD', 43, 'upao', '', ''),
('Spreadsheet', 'Tax Remittances', 'Manual recording of tax withheld\r\n\r\n', 'Average Transactions/ Month  % content/capacity', ' HDD', 44, 'upao', '', ''),
('Spreadsheet', 'Property Plant and Equipment', 'Manual recording; inventory\r\n', 'Average Transactions/ Month   % content/capacity', 'HDD', 45, 'upao', '', ''),
('FoxBase', 'General Payroll', 'Generation of monthly payroll (regular employees)\r\n', '...', '... ', 46, 'upao', '', ''),
('FoxBase', 'Special Payroll', 'One-time payments, reimbursement\r\n', '...', ' ...', 47, 'upao', '', ''),
('MySQL', 'NGAS', 'Financial transactions\r\n', '...', '... ', 48, 'upao', '', ''),
('Spreadsheet', 'Accounts payables', 'Payments to suppliers\r\n', '...', ' ...', 49, 'upao', '', ''),
('Spreadsheet', 'Trusts', 'Grants and Donations\r\n', '...', ' ...', 50, 'upao', '', ''),
('COMPUTERIZED PAYROLL SYSTEM (Foxbase) ', 'General Payroll &  Remittances System', 'Names of employees, salaries, agency deductions, units,  accounts codes of expense accounts, agency remittances\r\n', 'Average Transactions/Month = 70,000', 'Workstation', 51, 'upd', '', ''),
('Foxbase', 'Special Payroll  and deductions System', 'One time benefits \r\n\r\n', '% content/capacity = 100%', 'Workstation', 52, 'upd', '', ''),
('Foxbase', 'Books of Accounts Systems (RCI,, CDJ,RC,JEV,, RADA, RANCA, General Ledger, Billing).', 'JEVs, account codes, payees, unit, amount, fund, Check number, transaction dates, Official receipt number, bank name, agency names, etc.\r\n', '...', 'Workstation ', 53, 'upd', '', ''),
('Foxbase', 'Trust  Accounts (Projects Funds and Internally Generated Income)', 'Projects Names, Purpose, LIB, Grantor,  Account codes, etc.\r\n', '...', 'Workstation', 54, 'upd', '', ''),
('Foxbase', 'Financial Reports Systems  (Consolidated Trial Balance, Trial Balance per Fund, Statement of Operations/Income, Balance Sheet, Cash Flows), Depreciation Schedule, Accounts Payable, Student Loans, Contractor’s Ledger,', 'Account codes, references, etc', '...', 'Workstation ', 55, 'upd', '', ''),
('Excel', 'Property, Plant & Equipment ', 'Name of property, number, descriptions, quantity, end-user, office/unit, date acquired, unit cost.', '...', 'Workstation', 56, 'upd', '', ''),
('Excel', 'Office  Supplies Inventory', 'Name of items, quantity, cost, description, RIS number,date..', '...', ' Workstation', 57, 'upd', '', ''),
('Foxbase', 'Enrollment Data', 'Registration Collections', '...', ' Workstation', 58, 'upd', '', ''),
('Foxbase', 'Tracking System of Financial and other Documents', 'Payee, control number, Gross amount and deductions.', '...', 'Workstation', 59, 'upd', '', ''),
('Foxbase/Excel', 'Tax System/Tax Certificates', 'Payee, TIN, Address, Gross amount and deductions, Status, Personal and Additional Exemptions.\r\n\r\n\r\n', '...', 'Workstation', 60, 'upd', '', ''),
('PAYROLL SYSTEM (Foxpro) ', 'General Payroll &  Remittances System', 'Names of employees, salaries, agency deductions, units,  accounts codes of expense accounts, agency remittances\r\n', 'Average Transactions/Month =  70,000', ' HDD', 61, 'UPLB', '', ''),
('Foxpro', 'Special Payroll  and deductions System', 'One time benefits \r\n\r\n\r\n', '% content/capacity = 100%', ' HDD', 62, 'UPLB', '', ''),
('Foxpro', 'Trust  Accounts (Projects Funds and Internally Generated Income)', 'Projects Names, Status of Fund\r\n\r\n\r\n', '...', 'HDD', 63, 'UPLB', '', ''),
('Foxpro', 'Financial Reports Systems  (Consolidated Trial Balance, Trial Balance per Fund, Statement of Operations/Income, Balance Sheet, Cash Flows), Depreciation Schedule, Accounts Payable, Student Loans, Contractor’s Ledger,', 'Account codes, references, etc', '...', 'Account codes, references, etc\r\n\r\n', 64, 'UPLB', '', ''),
('Excel', 'Property, Plant & Equipment ', 'Name of property, number, descriptions, quantity, end-user, office/unit, date acquired, unit cost.\r\n\r\n\r\n', '...', 'HDD', 65, 'UPLB', '', ''),
('Excel', 'Office  Supplies Inventory', 'Name of items, quantity, cost, description, RIS number,date..', '...', 'HDD', 66, 'UPLB', '', ''),
('Foxpro', 'Registration System', 'Registration Collections', '...', 'HDD', 67, 'UPLB', '', ''),
('SQL', 'Documents Tracking System ', 'Payee, control number, Gross amount. ', '...', 'Server ', 68, 'UPLB', '', ''),
('Foxpro/Excel', 'Tax System/Tax Certificates', 'Payee, TIN, Address, Gross amount and deductions, Status, Personal and Additional Exemptions.', '...', 'HDD', 69, 'UPLB', '', ''),
('DBASE/DBASE III (MASTER12.DBF)', 'SRS', 'Student Academic Records', '...', 'HARD DRIVE', 70, 'UPBaguio', '', ''),
('DBASE/DBASE III (MASTER12.DBF)', 'SPMO INVENTORY SYSTEM', 'UP Baguio Equipment records', '...', 'HARD DRIVE', 71, 'UPBaguio', '', ''),
('MS ACCESS (PAYSYS.MDB)', 'PAYSYS', 'Payroll records of UP Baguio Employees', '...', 'HARD DRIVE', 72, 'UPBaguio', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `infosystems`
--

CREATE TABLE IF NOT EXISTS `infosystems` (
  `InfoSystemid` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `InfoSystemName` varchar(255) DEFAULT NULL,
  `InfoSystemDescription` varchar(255) DEFAULT NULL,
  `InfoSystemStatus` varchar(255) DEFAULT NULL,
  `InfoSystemDeployment` varchar(255) DEFAULT NULL,
  `InfoSystemDevelopment` varchar(255) DEFAULT NULL,
  `submittedBy` text NOT NULL,
  `webBased` text NOT NULL,
  PRIMARY KEY (`InfoSystemid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=99 ;

--
-- Dumping data for table `infosystems`
--

INSERT INTO `infosystems` (`InfoSystemid`, `InfoSystemName`, `InfoSystemDescription`, `InfoSystemStatus`, `InfoSystemDeployment`, `InfoSystemDevelopment`, `submittedBy`, `webBased`) VALUES
(16, 'PAYSYS', 'System is used for generating payslips for UP Baguio employees', 'Operational', 'ACCOUNTING', 'Outsourced', 'UPBaguio', ''),
(15, 'COMPUTERIZED REGISTRATION SYSTEM', 'System is used by students for subject reservation every semester, System is used by the UP Baguio Faculty to enter grades of students, System is used for the online viewing of initial grades by UP Baguio students.', 'Operational', 'OUR', 'In-house', 'UPBaguio', ''),
(14, 'STUDENT RECORDS SYSTEM', 'System contains all student records ranging from student info, immediate relative''s info, semestral enrollment, grades (including completion and removal), GWA, DQ status, LOA info, and subjects.  It is also the basis for the generation of needed info by t', 'Operational', 'OUR', 'In-house', 'UPBaguio', ''),
(17, 'SPMO INVENTORY SYSTEM', 'System is used for storing and accessing information on newly acquired and existing UP Baguio equipment', 'Operational', 'SPMO', 'Outsourced', 'UPBaguio', ''),
(18, 'CRS v2', 'Student Information and Enlistment System', 'Operational', 'College Units', 'In-house', 'UPManila', ''),
(19, 'PDTS', 'Personnel Data Tracking System', 'Operational', 'HRDO', 'In-house', 'UPManila', ''),
(20, 'Payroll System', 'Payroll System of UPM Employees ', 'Operational', 'Accounting/IMS', 'In-house', 'UPManila', ''),
(21, 'iLib', 'Integrated Library System ', 'Operational', 'University Library', 'In-house', 'UPManila', ''),
(22, 'CPC', 'Document Assessment and Library System ', 'Not Operational', 'All UPM Administrative and Academic Units', 'In-house', 'UPManila', ''),
(23, 'OSIRIS', 'Organ System Integrated Research and Information Software', 'Operational', 'PGH/CM', 'In-house', 'UPManila', ''),
(24, 'CM Faculty Database', 'Faculty Database', 'Operational', 'College of Medicine', 'In-house', 'UPManila', ''),
(25, 'UNITE', 'Unified Teacher''s Evaluation', 'Operational', 'College of Medicine', 'In-house', 'UPManila', ''),
(26, 'CMS', 'Content Management System', 'Operational', 'All UPM Administrative and Academic Units', 'In-house', 'UPManila', ''),
(27, 'New Payroll System', 'PHP', 'For Enhancement/Development', 'IMS', 'In-house', 'UPManila', ''),
(28, 'STFAP', 'Foxbase  STFAP Program', 'Operational', 'UPM- Accounting', 'In-house', 'UPManila', ''),
(29, 'Foxpro', '\r\nProcessing of:\r\n•	appointments\r\n•	service records\r\n•	personnel records\r\n•	studies/scholarships\r\n•	plantilla\r\n•	certifications\r\n', 'Operational', 'Unit', 'In-house', 'UPDSys', ''),
(30, 'MS Access & Excel ', 'Processing of:\r\n•	leave records\r\n•	retirement\r\n•	benefits related\r\n•	GSIS / Philhealth / Pagibig / TIN\r\n•	travel authorities\r\n•	attendance to seminars/trainings\r\n•	plantilla\r\n•	performance evaluation\r\n•	FAPHE\r\n•	Certifications', 'Operational', 'UPD HRDO', 'In-house', 'UPDSys', ''),
(31, 'LDAP', 'Local Directory', 'Operational', 'UP Diliman', 'In-house', 'UPDSys', ''),
(32, 'Webmail', 'UP Webmail Service\r\nwith POP3/IMAP\r\nSupport', 'For Enhancement/Development', 'UP Diliman', 'In-house', 'UPDSys', ''),
(33, 'HELPDESK', 'Helpdesk Logging\r\nSystem', 'For Enhancement/Development', 'UP Diliman', 'In-house', 'UPDSys', ''),
(34, 'VoIP Directory', 'VoIP Directory System', 'Operational', 'UP DILIMAN / Public', 'In-house', 'UPDSys', ''),
(35, 'Time Service', 'NTP Server / UP Time\r\nService', 'Operational', 'UP DILIMAN', 'In-house', 'UPDSys', ''),
(36, 'Docutrak', 'Document Tracking Service', 'For Enhancement', 'UP System', 'In-house', 'UPDSys', ''),
(37, 'Document Management System', 'Electronic Storage of\r\nDocuments', 'Operational', 'UP SYSTEM (OP & OSU)', 'Not In-house', 'UPDSys', ''),
(38, 'Content Management Systems', 'ILC website ', 'For Enhancement/Development', 'Faculty', 'In-house', 'UPManila', ''),
(39, 'Moodle', 'Learning management system used \r\nby individual faculty\r\n', 'For Enhancement/Development', 'Faculty', 'In-house', 'UPManila', ''),
(40, 'MOODLE', 'Learning Management System', 'Operational', 'ILC,CA,CAS,CEAT, CDC', 'In-house', 'UPLB', ''),
(41, 'UVLE', 'Online learning management system', 'Operational', 'UP Diliman and  Consortium of  DAR,DA, DENR, UPD, ADMU, DAP & XU', 'In-house', 'UPDSys', ''),
(42, 'ISKWIKI', 'Academic community wiki', 'Operational', 'UP Diliman', 'In-house', 'UPDSys', ''),
(44, 'ARIES', 'Generation of PO and Property Management/Inventory', 'Operational', 'Accounting/SPMO', 'Not In-house', 'UPMindanao', ''),
(45, 'PAYSYS', 'Payroll System', 'Operational', 'Accounting', 'Not In-house', 'UPMindanao', ''),
(50, 'General Payroll &  Remittances System', 'Monthly Payroll\r\n', 'For Enhancement/Development', 'Unit/Office', 'In-house', 'UPOU', ''),
(51, 'Special Payroll  and deductions System', 'Special Payroll\r\n', 'Operational', 'Unit/Office', 'In-house', 'UPOU', ''),
(52, 'Books of Accounts Systems (CkDJ, CDJ, CRJ, MscTJ), RANCA, Registry of Obligations', 'Records and bookkeeping', 'Operational', 'Unit/Office', 'In-house', 'UPOU', ''),
(53, 'Subsidiary Ledgers, Projects Fund Account, Student loans', 'Records', 'Operational', 'Unit/Office', 'In-house', 'UPOU', ''),
(54, 'Financial Reports Systems  (Consolidated Trial Balance, Trial Balance per Fund, Statement of Operations/Income, Balance Sheet, Cash Flows), Depreciation Schedule, Accounts Payable, Student Loans', 'Financial Reports\r\n', 'Operational', 'Unit/Office', 'In-house', 'UPOU', ''),
(55, 'Online Property Inventory System', 'Inventory Records\r\n', 'Operational', 'Unit/Office', 'In-house', 'UPOU', ''),
(56, 'Office  Supplies Inventory System', 'Inventory Records', 'Operational', 'Unit/Office', 'In-house', 'UPOU', ''),
(57, 'Index of Payments System', 'Summary of Payments Records', 'Operational', 'Unit/Office', 'In-house', 'UPOU', ''),
(58, 'Accounting Documents Tracking System', 'Financial documents records', 'Operational', 'Unit/Office', 'In-house', 'UPOU', ''),
(59, 'BMS – Budget Monitoring System', 'System that processes the requests (expenses) of System Offices by obligating the “Obligation Request” for those charged against the General Fund and  Budget Utilization Request for those charged against the Revolving Fund.', 'Operational', 'UPSA', 'In-house', 'upbo', ''),
(60, 'AAMS – Appropriation & Allotment Monitoring System', 'Consolidate Statement of allotment and obligations of CUs\r\n', 'Operational', 'FISCAL', 'In-house', 'upbo', ''),
(61, 'CARMS – Cash & Releases Monitoring System', 'Systems that processes cash releases to CUs; transfer orders & & funding check memos\r\n\r\n', 'Operational', 'FISCAL', 'In-house', 'upbo', ''),
(62, 'EPSIPOP – Electronic Plantilla of Service Itemization of Plantilla Personnel', '...', 'Operational', 'FISCAL', 'In-house', 'upbo', ''),
(63, 'NGAS', 'Generation of Financial Reports; Bank reconciliation\r\n', 'Operational', 'Accounting', 'In-house', 'upao', ''),
(64, 'General Payroll System', 'Generation of monthly payroll (regular employees)', 'Operational', 'Accounting', 'In-house', 'upao', ''),
(65, 'Special Payroll', 'One-time payments, reimbursement\r\n', 'Operational', 'Accounting', 'In-house', 'upao', ''),
(66, 'Docutrak', 'Tracks documents\r\n', 'Operational', 'Accounting', 'In-house', 'upao', ''),
(67, 'General Payroll &  Remittances System', 'Monthly Payroll\r\n', 'Operational', 'Unit/Office/COA', 'In-house', 'upd', ''),
(68, 'Special Payroll  and deductions System', '...', 'Operational', 'Unit/Office', 'In-house', 'upd', ''),
(69, 'Books of Accounts/Subsidiary Ledgers Systems ', '...', 'Operational', 'Unit/Office/COA/DBM', 'In-house', 'upd', ''),
(70, 'Trust  Accounts', '...', 'Operational', 'Unit/Colleges ', 'In-house', 'upd', ''),
(71, 'Financial Reports Systems  (Consolidated Trial Balance, Trial Balance per Fund, Statement of Operations/Income, Balance Sheet, Cash Flows), Depreciation Schedule, Accounts Payable, Student Loans, Billing)', '...', 'Operational', 'Unit/UPS/DBM/COA', 'In-house', 'upd', ''),
(72, 'Property, Plant & Equipment  Schedule', '...', 'Operational', 'SPMO/COA', 'In-house', 'upd', ''),
(73, 'Supplies Inventory Schedule', '...', 'Operational', 'SPMO/COA', 'In-house', 'upd', ''),
(74, 'Tracking System of Financial and other Documents ', '...', 'Operational', 'Unit/Office', 'In-house', 'upd', ''),
(75, 'Tax  System', '...', 'Operational', 'Unit/BIR', 'In-house', 'upd', ''),
(76, 'Enrollment Data', '...', 'Operational', 'Office/OC/VCA/Colleges', 'In-house', 'upd', ''),
(77, 'General Payroll &  Remittances System', 'Monthly Payroll', 'Operational', 'Unit/Office/COA', 'In-house', 'UPLB', ''),
(78, 'Special Payroll  and deductions System', '...', 'Operational', 'Unit/Office', 'In-house', 'UPLB', ''),
(79, 'Books of Accounts/Subsidiary Ledgers Systems ', '...', 'Operational', 'Unit/Office/COA/DBM', 'In-house', 'UPLB', ''),
(80, 'Trust  Accounts', '...', 'Operational', 'Unit/Colleges ', 'In-house', 'UPLB', ''),
(81, 'Financial Reports Systems  (Consolidated Trial Balance, Trial Balance per Fund, Statement of Operations/Income, Balance Sheet, Cash Flows), Depreciation Schedule, Accounts Payable, Student Loans, Billing)', '...', 'Operational', 'Unit/UPS/DBM/COA ', 'In-house', 'UPLB', ''),
(82, 'Property, Plant & Equipment  Schedule', '...', 'Operational', 'SPMO/COA', 'In-house', 'UPLB', ''),
(83, 'Supplies Inventory Schedule', '...', 'Operational', 'SPMO/COA', 'In-house', 'UPLB', ''),
(84, 'Documents  Tracking System', '...', 'Operational', 'Unit/Office', 'In-house', 'UPLB', ''),
(85, 'Tax  System', '...', 'Operational', 'Unit/BIR', 'In-house', 'UPLB', ''),
(86, 'Registration System', '...', 'Operational', 'Colleges', 'In-house', 'UPLB', '');

-- --------------------------------------------------------

--
-- Table structure for table `manpower`
--

CREATE TABLE IF NOT EXISTS `manpower` (
  `mpid` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `position` varchar(255) DEFAULT NULL,
  `permanent` int(255) DEFAULT NULL,
  `temporary` int(255) DEFAULT NULL,
  `competencies` varchar(255) DEFAULT NULL,
  `SalaryGrade` int(255) DEFAULT NULL,
  `JobDescription` varchar(255) DEFAULT NULL,
  `submittedBy` text NOT NULL,
  PRIMARY KEY (`mpid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `manpower`
--

INSERT INTO `manpower` (`mpid`, `position`, `permanent`, `temporary`, `competencies`, `SalaryGrade`, `JobDescription`, `submittedBy`) VALUES
(1, 'Admin', 40, 4, '...', 0, '...', 'UPDSys'),
(2, 'REPS', 1, 0, '...', 0, '...', 'UPDSys'),
(3, 'Director  ', 0, 1, '...', 0, 'Director of Office  ', 'upd'),
(4, 'Administrative  Officer  ', 5, 0, '...', 0, 'Administrative  Officer  ', 'upd'),
(5, 'Admin Aide  ', 2, 0, '...', 0, 'Administrative Aide  ', 'upd'),
(6, 'Project-based  ', 0, 4, '...', 0, 'Network/Software Engineers  ', 'upd'),
(8, 'ADMIN ASST V', 1, 0, 'maintain, update , and upgrade in the net office, troubleshoot network problems of the whole university, develop software needed by the campus, and recommend IT equipment needed by the university', 11, 'NETWORK OFFICE (IT)', 'UPBaguio'),
(9, 'COMPUTER MAINTENANCE TECHNOLOGIST', 0, 1, 'maintain, update , and upgrade in the net office, troubleshoot network problems of the whole university, develop software needed by the campus, and recommend IT equipment needed by the university', 11, 'NETWORK OFFICE (IT)', 'UPBaguio'),
(10, 'COMPUTER MAINTENANCE TECHNOLOGIST', 1, 0, 'maintain, update , and upgrade student database (SRS and CRS); troubleshoot network problems in the OUR; develop software needed by the campus; update, maintain, and upgrade the UP Baguio web; and recommend IT equipment needed by the university', 11, 'OFFICE OF THE UNIVERSITY REGISTRAR (IS)', 'UPBaguio'),
(11, 'REPS', 0, 1, '...', 0, 'Extension/Research/ Training', 'UPLB'),
(12, 'Administrative Assistant 1', 1, 0, '...', 0, 'Video Coverage/Editing', 'UPLB'),
(13, 'Multimedia Production Specialist', 0, 1, '...', 0, 'Multimedia Development', 'UPLB'),
(14, 'Office Assistant', 0, 1, '...', 0, 'Administrative', 'UPLB'),
(15, 'Utility Worker', 0, 1, '...', 0, '...', 'UPLB');

-- --------------------------------------------------------

--
-- Table structure for table `network`
--

CREATE TABLE IF NOT EXISTS `network` (
  `nid` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `item` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `NetworkUnit` int(255) DEFAULT NULL,
  `NetworkDeployment` varchar(255) DEFAULT NULL,
  `bandwidth` varchar(255) DEFAULT NULL,
  `MonthlyCost` varchar(255) DEFAULT NULL,
  `submittedBy` text NOT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=52 ;

--
-- Dumping data for table `network`
--

INSERT INTO `network` (`nid`, `item`, `description`, `NetworkUnit`, `NetworkDeployment`, `bandwidth`, `MonthlyCost`, `submittedBy`) VALUES
(1, 'Hubs', '3Com Hubs \r\n', 6, 'Computer Center Only ', '...', '...', 'upd'),
(2, 'Routers', 'Cisco 7210 \r\nCisco 2600 \r\n', 1, 'Computer Center Only ', '...', '...', 'upd'),
(3, 'Switches', 'Cisco 6500 Series \r\nCisco 2900 XL Series \r\nCisco 2950 Series \r\nCisco 3500 Series \r\nCisco 2960 Series \r\nHP Procurve 2x00 series \r\nHP Procurve 6200yl Series \r\n', 3, 'Various Units ', '...', '...', 'upd'),
(4, 'Wi-fi Access Points', 'Cisco Linksys WRT-54G/Cisco WAP-54G \r\nCisco Linksys WRT610 \r\nCisco Linksys WRT320 \r\nBelkin \r\nRuckus Wireless \r\n', 50, 'Various,Various,CSSP,Statistics ', '...', '...', 'upd'),
(5, 'Internet Connection (DSL)', 'Bayantel\r\n', 1, 'OVCRD  ', '2 Mbps ', '...', 'upd'),
(6, 'Internet Connection (Leased Line)', 'PREGINET\r\nTRI-ISYS\r\nContact One\r\nComclark/Philcom (Not Yet Ready)\r\n', 1, 'UP DILIMAN  UP DILIMAN  UP Law  Engineering (ERDT)  ', '75 Mbps 50 Mbps 15 Mbps 50 Mbps ', '...', 'upd'),
(7, 'Internet Connection (VIN)', 'OpenVPN \r\nCisco VPN Concentrator \r\n', 1, 'UP DILIMAN UP DILIMAN ', '...', '...', 'upd'),
(8, 'Video Conferencing', 'Polycom and Various Brands \r\n', 1, 'Computer Center DILC EEE DCS NISMED ', '...', '...', 'upd'),
(10, 'Hubs', '...', 13, 'By Office', '...', '...', 'UPOU'),
(11, 'Routers', '...', 19, '...', '...', '...', 'UPOU'),
(12, 'Switches', '...', 8, '...', '...', '...', 'UPOU'),
(13, 'Wi-fi Access Points', '..', 5, '...', '...', '...', 'UPOU'),
(14, 'Modems', '...', 2, '...', '...', '...', 'UPOU'),
(15, 'Internet Connection (DSL)', '...', 2, '...', '...', '...', 'UPOU'),
(16, 'Internet Connection (Leased Line)', '...', 1, '...', '...', '...', 'UPOU'),
(17, 'Video Conferencing', '...', 2, '...', '...', '...', 'UPOU'),
(18, 'Hubs', '3COM 8-PORT', 3, 'LIBRARY (2), CAC', '...', '...', 'UPBaguio'),
(19, 'Routers', 'Cisco 1760-V (WIC-1T; WIC-1ENET)', 1, 'NETWORK OFFICE', '...', '...', 'UPBaguio'),
(20, 'Switches', 'HP Procurve 2610-24 J9085A', 11, 'UPB NETWORK', '...', '...', 'UPBaguio'),
(21, 'Switches', 'CISCO SRW224P', 1, 'NETWORK OFFICE', '...', '...', 'UPBaguio'),
(22, 'Switches', 'CISCO SF300-24P', 1, 'NETWORK OFFICE', '...', '...', 'UPBaguio'),
(23, 'Switches', 'CISCO SR224P', 1, 'CAC', '...', '...', 'UPBaguio'),
(24, 'Switches', 'CISCO SE2800', 2, 'NET-CSS, NET-CAC', '...', '...', 'UPBaguio'),
(25, 'Switches', 'LINKSYS SWR246864 48-PORT', 1, 'NETWORK OFFICE', '...', '...', 'UPBaguio'),
(26, 'Switches', 'LINKSYS SRW224D 24-PORT', 1, 'COMSCI LAB', '...', '...', 'UPBaguio'),
(27, 'Switches', 'LINKSYS SR216 16-PORT', 2, 'LIBRARY', '...', '...', 'UPBaguio'),
(28, 'Switches', 'DLink DES-1026G', 1, 'NETWORK OFFICE', '...', '...', 'UPBaguio'),
(29, 'Switches', 'DLink DES-1016D', 8, 'OUR (1), LRC (1), ILC (2), PHYS(1), NET-IM (2), CSC (1)', '...', '...', 'UPBaguio'),
(30, 'Switches', 'DLINK DES-1024D', 1, 'INTERNET ACCESS ROOM', '...', '...', 'UPBaguio'),
(31, 'Switches', 'DLINK 8-PORT', 6, 'IM (1), SPMO (2), FEC (1), CSC (1), ODSA (1)', '...', '...', 'UPBaguio'),
(32, 'Switches', 'TP-LINK', 2, 'CAC', '...', '...', 'UPBaguio'),
(33, 'Wi-fi Access Points', 'LINKSYS WRT-54G/GS/G2', 7, 'UPB NETWORK', '...', '...', 'UPBaguio'),
(34, 'Wi-fi Access Points', 'LINKSYS WAP-54G', 20, 'UPB NETWORK', '...', '...', 'UPBaguio'),
(35, 'Wi-fi Access Points', 'LINKSYS E1000', 2, 'PHYS, ILC', '...', '...', 'UPBaguio'),
(36, 'Wi-fi Access Points', 'LINKSYS WAP4400N', 3, 'NET-CSS, NET-LIB, NET-ALUMNI', '...', '...', 'UPBaguio'),
(37, 'Wi-fi Access Points', 'Apple AIRPORT 802.11N Wi Fi Access', 1, 'MATH', '...', '...', 'UPBaguio'),
(38, 'Wi-fi Access Points', 'DLINK DIR-600 Series', 3, 'DORM, PHYS, BIO', '...', '...', 'UPBaguio'),
(39, 'Wi-fi Access Points', 'TP-Link TL-WR841N', 1, 'CSS', '...', '...', 'UPBaguio'),
(40, 'Internet Connection (DSL)', 'GLOBE DSL', 4, 'NETWORK OFFICE', '3Mbps', '...', 'UPBaguio'),
(41, 'Internet Connection (Leased Line)', 'GLOBE LEASED LINE', 2, 'NETWORK OFFICE', '2Mbps', '...', 'UPBaguio'),
(42, 'Video Conferencing', 'POLYCOM', 1, 'NETWORK OFFICE', '...', '...', 'UPBaguio'),
(43, 'Others', 'CISCO Analog Telephone Adapter 186-I2', 8, 'NETWORK OFFICE', '...', '...', 'UPBaguio'),
(44, 'Others', 'DIGIUM TDM-400P', 1, 'NETWORK OFFICE', '...', '...', 'UPBaguio'),
(45, 'Internet Connection (DSL)', 'PLDT iGate Dedicated Internet Connection', 1, 'Computer Center', '20Mbps', '280k + 12% VAT', 'UPManila'),
(46, 'Internet Connection (Leased Line)', 'PREGINET', 1, 'Computer Center', '16Mbps', '...', 'UPManila'),
(47, 'Routers', 'Cisco 7201 Router', 1, 'Computer Center', '...', '...', 'UPManila'),
(48, 'Routers', 'Cisco Catalyst WS-C4503', 1, 'Computer Center', '...', '...', 'UPManila'),
(49, 'Switches', 'Cisco Catalyst WS-C2960', 1, 'College of Dentistry (New Bldg)', '...', '...', 'UPManila'),
(50, 'Switches', 'Cisco Catalyst WS-C2960', 1, 'College of Pharmacy', '...', '...', 'UPManila');

-- --------------------------------------------------------

--
-- Table structure for table `server`
--

CREATE TABLE IF NOT EXISTS `server` (
  `sid` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `ServerItem` varchar(255) DEFAULT NULL,
  `ServerDeployment` varchar(255) DEFAULT NULL,
  `SeverUnit` text,
  `YearsUsed` text,
  `ServerRecomendation` varchar(255) DEFAULT NULL,
  `submittedBy` text NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `server`
--

INSERT INTO `server` (`sid`, `ServerItem`, `ServerDeployment`, `SeverUnit`, `YearsUsed`, `ServerRecomendation`, `submittedBy`) VALUES
(3, 'To be checked', 'Accounting and SPMO', '...', 'old', 'Optimize', 'UPOU'),
(4, 'IBM x3650, Xeon 3.0 GHz, 3GB RAM, 350 GB hard disk space', 'Computer Center', '...', '9', 'Optimize', 'UPManila'),
(5, 'IBM xSeries 346, Xeon 2.8 GHz, 3.5GB RAM, 275 GB hard disk space', 'Computer Center', '...', '9', 'Optimize', 'UPManila'),
(6, 'IBM xSeries 346, Xeon 2.8 GHz, 3.5GB RAM,  275 GB hard disk space', 'Computer Center', '...', '9', 'Optimize', 'UPManila'),
(18, 'Gigabyte GA 7VT600 mobo, 1GB PC333 DDR (2x512mb) RAM, 40Gb/500Gb SATA  HDD', 'MAIL, MAIL GATEWAY, LDAP, DHCP-MAC FILTER, RADIUS, ASTERISK', '...', '...', 'Retain', 'UPBaguio'),
(8, 'IBM x3650, Xeon 3.0 GHz, 3GB RAM, 400 GB hard disk space', 'Computer Center', '...', '9', 'Optimize', 'UPManila'),
(9, 'Mac OSX servers (9; 2 out of function)', 'Computer Center', '...', '7', 'Replace', 'UPManila'),
(10, 'Mac Xserve RAID 1 TB (power supply out of function)', 'Computer Center', '...', '7', 'Optimize', 'UPManila'),
(11, 'Compaq Proliant DL380 (3)', 'Computer Center', '...', '11', 'Replace', 'UPManila'),
(12, '1 (attendance records)\r\n', 'A Assistant (stand alone)', '...', '3', 'Optimize', 'UPBaguio'),
(13, '1 (plantilla)\r\n', 'AO (stand alone)', '...', '3', 'Replace', 'UPBaguio'),
(14, '1 (service records)', 'AO', '...', '6', 'Replace', 'UPBaguio'),
(15, 'Server 1', 'ITO', '...', '...', 'Retain', 'UPMindanao'),
(16, 'APPLE  X SERVE', 'ICS', '...', '7', 'Replace', 'UPLB'),
(17, 'IBM x3650, Xeon 3.0GHz, 3GB RAM\r\n350 HDD \r\n(Sites of University, Colleges and Units)', '...', '...', '...', 'Retain', 'UPManila'),
(19, 'IBM X3200 Series', 'LIBRARY', '1', '4', 'Retain', 'UPBaguio'),
(20, 'ZEON 3050 Dual Core 2.13GHz,  IBM 3010 Intel Chipset, 2X1Gb PC5300 ECC-DDR RAM, 250Gb SATA HOT SWAP', 'ILIB', '...', '...', 'Retain', 'UPBaguio'),
(21, 'Supermicro P4SPA', 'NETWORK OFFICE', '1', '8', 'Replace', 'UPBaguio'),
(22, 'Intel PENTIUM 4 2.8Ghz, intel 865G Chipset SS603, 1Gb PC400 DDRAM memory, 80Gb Sata HDD', 'FIREWALL/ROUTER, PROXY/FILTER, MONITORING', '...', '...', 'Replace', 'UPBaguio'),
(23, 'Supermicro 6015B-3B', 'NETWORK OFFICE', '1', '2', 'Retain', 'UPBaguio'),
(24, 'Xeon E5410 2.33GHz Quad-Core, Intel 5000P Chipset, 80Gb SATA, 4Gb DDR2 ECC FB-DIMM', 'FIREWALL/ROUTER, PROXY/FILTER, MONITORING', '...', '...', 'Retain', 'UPBaguio'),
(25, 'Intel Core i5 3.1GHz', 'NETWORK OFFICE', '1', '1', 'Retain', 'UPBaguio'),
(26, 'Intel H67 chipset, 4Gb DDR3, 1TB SATA, 1GB DDR3 video card, 19" LED, Windows 7 Pro', 'Web, File Server', '0', '0', 'Retain', 'UPBaguio'),
(27, 'Intel Xeon 2.0GHz', 'OUR', '1', '8', 'Replace', 'UPBaguio'),
(28, '2Gb SDRAM, 2 x 40GB SCSI, Fedoca Core 6', 'CRS', '0', '0', 'Replace', 'UPBaguio'),
(29, 'Proxies\r\n', 'Computer Center – For Entire UP Diliman ', '...', '10', 'Replace', 'upd'),
(30, 'Mail Servers\r\n', 'Computer Center – For Entire UP Diliman ', '...', '5', 'Replace', 'upd'),
(31, 'Data Servers\r\n', 'Computer Center – For Entire UP Diliman ', '...', '8', 'Replace', 'upd'),
(32, 'Web Servers\r\n', 'Computer Center – For Entire UP Diliman ', '...', '5', 'Replace', 'upd');

-- --------------------------------------------------------

--
-- Table structure for table `software`
--

CREATE TABLE IF NOT EXISTS `software` (
  `swid` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `SoftwareItem` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `LicenseType` varchar(255) DEFAULT NULL,
  `NumberofLicenses` int(255) DEFAULT NULL,
  `submittedBy` text NOT NULL,
  PRIMARY KEY (`swid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `software`
--

INSERT INTO `software` (`swid`, `SoftwareItem`, `version`, `LicenseType`, `NumberofLicenses`, `submittedBy`) VALUES
(1, 'Ruckus Wireless ZoneDirector ', '9.4  ', 'Other', 100, 'upd'),
(2, 'PFSENSE ', '2.0.1', 'Opensource', 2, 'UPBaguio'),
(3, 'MAC OS X TIGER', '10.4.11', 'Unlimited', 9, 'UPBaguio'),
(4, 'JOOMLA', '1.5.3', 'Opensource', 2, 'UPBaguio'),
(5, 'APACHE WEB SERVER', '2.2.8', 'Opensource', 2, 'UPBaguio'),
(6, 'APACHE TOMCAT', '5.0.19', 'Opensource', 2, 'UPBaguio'),
(7, 'PHP', '5.2.5', 'Opensource', 2, 'UPBaguio'),
(8, 'MYSQL Database System', '5.0.51', 'Opensource', 2, 'UPBaguio'),
(9, 'POSTGRESQL Database System', '1.12.2', 'Opensource', 2, 'UPBaguio'),
(10, 'DBASE III Database System', '2.1', 'Proprietary', 1, 'UPBaguio'),
(11, 'JAVA Software Development Kit', '1.4.2_08', 'Opensource', 4, 'UPBaguio'),
(13, 'Appleworks', '6', 'Other', 0, 'UPLB'),
(14, 'MS Office', '2004', 'Other', 15, 'UPLB'),
(15, 'Windows XP Pro', '...', 'Other', 20, 'UPLB'),
(16, 'Toast ', '8', 'Other', 0, 'UPLB'),
(17, 'Digital Language Laboratory System (DLL: 4-in-1 audio+video+ text+exam). ', '...', 'Other', 0, 'UPLB'),
(18, 'Adobe CS2 Premium.', '...', 'Other', 0, 'UPLB'),
(19, 'Macromedia Flash MX ', '2004', 'Other', 0, 'UPLB'),
(20, 'Final Cut Pro.', '...', 'Other', 0, 'UPLB');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE IF NOT EXISTS `staff` (
  `staffid` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `OfficeUnit` varchar(255) DEFAULT NULL,
  `NumberofStaff` int(255) DEFAULT NULL,
  `submittedBy` text NOT NULL,
  PRIMARY KEY (`staffid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staffid`, `OfficeUnit`, `NumberofStaff`, `submittedBy`) VALUES
(1, 'try2', 3, ''),
(8, 'try1', 2, ''),
(9, 'test', 0, ''),
(12, 'Office of the Chancellor', 6, 'UPMindanao'),
(13, 'Office of the Vice Chancellor for Academic Affairs', 2, 'UPMindanao'),
(14, 'Office of the Vice Chancellor for Administration', 6, 'UPMindanao'),
(15, 'Budget Office', 2, 'UPMindanao'),
(16, 'Accounting Office', 4, 'UPMindanao'),
(17, 'Supply & Property Management Office', 5, 'UPMindanao'),
(18, 'Cash Office', 2, 'UPMindanao'),
(19, 'Information Technology Office', 2, 'UPMindanao'),
(20, 'Physical Plant Office', 6, 'UPMindanao'),
(21, 'Interactive Learning Resource/Learning Resource Center', 1, 'UPMindanao'),
(22, 'Office of Student Affairs', 4, 'UPMindanao'),
(23, 'Office of the University Registrar', 2, 'UPMindanao'),
(24, 'University Library', 6, 'UPMindanao'),
(25, 'Office of Research', 4, 'UPMindanao'),
(27, 'Office of Extension & Community Service', 2, 'UPMindanao'),
(28, 'College of Science & Mathematics', 48, 'UPMindanao'),
(29, 'College of Humanities & Social Sciences', 34, 'UPMindanao'),
(30, 'School of Management', 14, 'UPMindanao');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `username` text NOT NULL,
  `password` text NOT NULL,
  `campus_unit` text NOT NULL,
  `office` text NOT NULL,
  `name` text NOT NULL,
  `usertype` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `campus_unit`, `office`, `name`, `usertype`) VALUES
('rpaycojr', 'c4079ad39508c9fd9d01471a00422cb0', 'UPLB', 'ITC', 'Ramon Ayco Jr.', 'admin'),
('jrarticuna', '171da5ddf166c62f5202cc868df5f219', 'UPLB', 'ITC', 'Jelyn R. Articuna', 'admin'),
('UPBaguio', '3c783446d2e2714f67800bdb5decd68f', 'UP Baguio', 'UPBaguio', 'University of the Philippines Baguio', 'user'),
('UPManila', 'f87f1e9e6ac00fe5caca375ebe57402f', 'UP Manila', 'UPManila', 'UPManila', 'user'),
('UPDSys', 'a787608e40f9e2abb4a4d1d454db7408', 'UP Diliman', 'HRDO', 'UPDSys', 'user'),
('UPLB', '8d849bfed4a24262586734a671abcc59', 'UPLB', 'UPLB', 'UPLB', 'user'),
('UPMindanao', '201cbb0c974cc657fe4d2a41232b3c21', 'UP Mindanao', 'UPMindanao', 'UPMindanao', 'user'),
('rannapay', 'ae2b7872e8c3b5632e90d0d3be6449e0', 'UP System', 'UP ITDC', 'Rey Napay', 'admin'),
('naabubakar', '38074fcd1a0dd5fff2c548240512179d', 'UP System', 'UPITDC', 'Nadira A. Abubakar', 'admin'),
('rmpancho', '793b4a639eeb3447a667346ef3031e8e', 'UP System', 'UPITDC', 'Richmon M. Pancho', 'admin'),
('eazamora', '1d13463678ceb24e0419a580beb34ee1', 'UP System', 'Office of the Vice President for Development', 'Elvira A. Zamora', 'admin'),
('jdlcaro', 'a0af11da668cd946571b8abc65f268a9', 'UP System', 'UP Information Technology and Development Center', 'Jaime D.L. Caro', 'admin'),
('dgkvergara', 'c7dba8e2346b505912d095d8c41c69b1', 'UP Los Baños', 'UPLB Information Technology Center', 'Dante Gideon K. Vergara', 'admin'),
('pmalcasid', '5175607e634414bc9b7790bf6f018cda', 'UPLB', 'ITC', 'Pamela Alcasid', 'admin'),
('lemuelbrana', 'f39b5b15281f910145a86ecf954177ba', 'UP System', 'UP ITDC', 'Lemuel Braña', 'admin'),
('UPOU', '84ed9cba4907975df929731a2ba1f4a6', 'UP Open University', 'UPOU', 'UPOU', 'user'),
('upbo', '6e18780787e48942b48cdd3f64d35850', 'UP System', 'Budget Office', 'upbo', 'user'),
('upao', 'e3ca47902ef3bc633a966972fea36758', 'UP System', 'Accounting Office', 'upao', 'user'),
('upd', '7da63681b0381c14c36529a45de6b579', 'UP Diliman', 'upd', 'upd', 'user'),
('ojtadmin', 'b423768528cadd9c98669ac9a4b6591b', 'UPLB', 'ITC', 'OJT', 'admin'),
('UPB', '8c021aef709ac54f6ca653250e396496', 'UP Baguio', 'ITC', 'UPB', 'user'),
('su_upd', '0a6a6d32f3cf24dac1c0ba24156c7a0a', 'UP Diliman', 'Super', 'UPD Super User', 'super'),
('su_uplb', 'e3caa5bf47802eb09e2238b51a121e27', 'UPLB', 'Super', 'UPLB Super User', 'super'),
('su_upb', 'e6d04e176bd5a7c45028c88ea8266954', 'UP Baguio', 'Super', 'UPB Super User', 'super'),
('su_upm', '9ae81af917adbd315e170fc3b664c4fa', 'UP Manila', 'Super', 'UPM Super User', 'super'),
('su_upv', '5f83724d87d15b42fd510851561020e7', 'UP Visayas', 'Super', 'UPV Super User', 'super'),
('su_upou', '35787f41fd93a9657f372fee5b9f8d13', 'UP Open University', 'Super', 'UPOU Super User', 'super'),
('su_upsys', '9d9dbea2c87ada8b23711e26177a2ad0', 'UP System', 'Super', 'UPSys Super User', 'super'),
('tecanto', '0d14c3a8895ad5356c611613fa18490a', 'UP Visayas', 'SPSO', 'Teresita E. Canto', 'user'),
('ayoayco', '538a552ac53f1dbd5b64bcc35a622819', 'UPLB', 'ITC', 'Ayo Ayco', 'user'),
('etidon', 'eac289389b5dcd13e27752fe98a1269d', 'UP Visayas', 'HRDO', 'Ella Tidon ', 'user'),
('rolaguer', 'e25cdaa548392bae5b143fb15f5d9964', 'UP Visayas', 'SPSO', 'Raul Olaguer', 'user'),
('fdimzon', 'd1e533de3b0b2a1851ff6b0894a42151', 'UP Visayas', 'DISP', 'Francis Dimzon ', 'user'),
('wpalete', '30b11a5d355d5027530983a781aa14aa', 'UP Visayas', 'DISP', 'Wilfredo Palete', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `workstation`
--

CREATE TABLE IF NOT EXISTS `workstation` (
  `wid` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `WorkstationItem` varchar(255) DEFAULT NULL,
  `deployment` varchar(255) DEFAULT NULL,
  `admin` int(255) DEFAULT NULL,
  `research` int(255) DEFAULT NULL,
  `teaching` int(255) NOT NULL,
  `total` int(255) DEFAULT NULL,
  `recommendation` varchar(255) DEFAULT NULL,
  `submittedBy` text NOT NULL,
  PRIMARY KEY (`wid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=135 ;

--
-- Dumping data for table `workstation`
--

INSERT INTO `workstation` (`wid`, `WorkstationItem`, `deployment`, `admin`, `research`, `teaching`, `total`, `recommendation`, `submittedBy`) VALUES
(1, 'AMD ATHLON X2', 'Accounting and SPMO', 9, 0, 0, 9, 'Optimize', 'UPOU'),
(2, '1', 'Chief, HRDO', 1, 0, 0, 1, 'Replace', 'UPMindanao'),
(3, '2', 'Recruitment', 1, 0, 0, 1, 'Replace', 'UPMindanao'),
(4, '3', 'Benefits', 1, 0, 0, 1, 'Replace', 'UPMindanao'),
(5, '4', 'Records', 1, 0, 0, 1, 'Replace', 'UPMindanao'),
(6, '1', '...', 1, 0, 0, 1, 'Optimize', 'UPBaguio'),
(7, '2', 'Admin Office', 1, 0, 0, 1, 'Replace', 'UPBaguio'),
(8, '3', 'AO', 1, 0, 0, 1, 'Optimize', 'UPBaguio'),
(9, '4', 'AA', 1, 0, 0, 1, 'Optimize', 'UPBaguio'),
(10, 'AMD PCs \r\n(acquired in 2005)', 'ILC Computer Lab 1', 0, 20, 0, 20, 'Replace', 'UPLB'),
(11, 'AMD PCs \r\n(acquired in 2005)', 'ILC Computer Lab 2', 0, 14, 0, 14, 'Replace', 'UPLB'),
(12, 'Mac Mini \r\n(acquired in 2011)', 'ILC Computer Lab 2', 0, 8, 0, 8, 'Retain', 'UPLB'),
(13, 'Mac Mini \r\n(acquired in 2011)', 'Authoring Cubicles', 0, 10, 0, 10, 'Retain', 'UPLB'),
(14, 'iMac \r\n(acquired in 2010)', 'Dubbing', 0, 1, 0, 1, 'Retain', 'UPLB'),
(15, 'iMac \r\n(acquired in 2008)', 'Video Editing', 0, 1, 0, 1, 'Retain', 'UPLB'),
(16, 'iMac \r\n(acquired in 2011)', 'Animation', 0, 0, 0, 0, 'Retain', 'UPLB'),
(17, 'Intel Pentium E CPU (acquired in 2011)', 'Office Use', 5, 0, 0, 5, 'Retain', 'UPLB'),
(18, 'Personal Computer \r\nAthlon XP2400Mhz \r\nAOC Monitor', 'Unit', 0, 0, 30, 30, 'Replace', 'UPManila'),
(19, 'Intel Core I3\r\n530 2.9gHz', '...', 1, 0, 0, 1, 'Retain', 'UPManila'),
(20, 'Hewlett Packard\r\nLaser Printer', '...', 1, 0, 0, 1, 'Retain', 'UPManila'),
(21, 'Polyvision Interactive\r\nWhiteboard', 'Unit', 0, 0, 2, 2, 'Optimize', 'UPManila'),
(22, 'Five Channel \r\nAudio Mixer', 'Unit', 0, 0, 2, 2, 'Replace', 'UPManila'),
(23, 'Klipsch Speakers', 'Unit', 0, 0, 4, 4, 'Retain', 'UPManila'),
(24, 'Avery Document Camera', 'Unit', 0, 0, 1, 1, 'Retain', 'UPManila'),
(25, 'Philips 29” TV', '...', 0, 0, 1, 1, 'Optimize', 'UPManila'),
(26, ' desktops\r\n', 'DILC Training Room', 2, 2, 40, 44, 'Retain', 'upd'),
(27, 'Laptop\r\n', 'DILC', 0, 4, 0, 4, 'Retain', 'upd'),
(28, 'Branded Desktop', 'Accounting', 3, 0, 0, 3, 'Optimize', 'upd'),
(29, 'Cloned Desktop', ' Accounting', 39, 0, 0, 39, 'Optimize', 'upd'),
(30, 'Laptop', 'Accounting', 1, 0, 0, 1, 'Optimize', 'upd'),
(31, 'Branded Desktop', 'Accounting', 24, 0, 0, 24, 'Retain', 'UPLB'),
(32, 'Intel Core 2 Duo E6550 2.33GHz, intel G31 chipset, 2x512Mb DDR2, 160Gb SATA, 17" LCD, Windows XP Home', 'Accounting', 1, 0, 0, 1, 'Optimize', 'UPBaguio'),
(33, 'Intel Core 2 Duo E7500 2.66GHZ, Intel G31 chipset, 2Gb DDR2, 250Gb SATA, 17" LCD monitor, speakers, Windows XP Home', 'Accounting', 1, 0, 0, 1, 'Retain', 'UPBaguio'),
(34, 'Intel Core i5 2400 3.1Ghz, Intel H61 chipset, 500Gb SATA, 4Gb DDR3, 18.5" LCD monitor, Windows 7 Pro', 'Accounting', 1, 0, 0, 1, 'Retain', 'UPBaguio'),
(35, 'Intel Core i3 2100 3.1GHz, Intel H61 chipset, 2Gb DDR3, 500Gb SATA, 18.5" LCD, Windows 7 Pro', 'Accounting', 1, 0, 0, 1, 'Retain', 'UPBaguio'),
(36, 'IBM ThinkCentre A50, Pentium 4 2.4GHz, 256Mb DDR, 40Gb PATA, CRT monitor, Windows XP Pro', 'Accounting', 1, 0, 0, 1, 'Replace', 'UPBaguio'),
(37, 'Intel Core 2 Duo E6550 2.33GHz, intel G31 chipset, 2x512Mb DDR2, 80Gb SATA, 17" LCD, Windows XP Home', 'Accounting (Head)', 1, 0, 0, 1, 'Replace', 'UPBaguio'),
(38, 'Intel Core 2 Duo E7200 2.53GHz, Intel G31 chipset, 80Gb SATA, 1Gb DDR2, 17" LCD, Windows XP Home', 'Budget', 1, 0, 0, 1, 'Optimize', 'UPBaguio'),
(39, 'Intel Core 2 Duo E7300 2.66 GHz, Intel G31 chipset, 250Gb SATA, 2Gb DDR2, 17" LCD MONITOR, Windows XP Home', 'Budget (Head)', 1, 0, 0, 1, 'Replace', 'UPBaguio'),
(40, 'Intel Core 2 Duo E7300 2.66 GHz, Intel G31 chipset, 160Gb SATA, 2Gb DDR2, 17" LCD MONITOR, Windows XP Home', 'Cash', 1, 0, 0, 1, 'Optimize', 'UPBaguio'),
(41, 'Intel Pentium 4 3.2GHz, Intel 865G chipset, 1Gb DDR, 80Gb IDE, 64Mb video card, 15" LCD, Windows XP Home', 'Cash', 1, 0, 0, 1, 'Replace', 'UPBaguio'),
(42, 'Intel Core i5 3.2GHz, Intel H55 chipset, 4Gb DDR3, 500Gb SATA, 18.5" LED, Windows 7 Home Basic', 'Cash (Head)', 1, 0, 0, 1, 'Retain', 'UPBaguio'),
(43, 'Intel Core 2 Duo E7500 2.66GHZ, Intel G31 chipset, 2Gb DDR2, 250Gb SATA, 17" LCD monitor, speakers, Windows XP Home', 'SPMO', 0, 0, 0, 0, 'Replace', 'UPBaguio'),
(44, 'Intel Core i5 2400 3.1Ghz, Intel H61 chipset, 500Gb SATA, 4Gb DDR3, 18.5" LCD monitor, Windows 7 Pro', 'SPMO', 1, 0, 0, 1, 'Retain', 'UPBaguio'),
(45, 'Intel Dual Core E2180 2GHZ, Intel G31 chipset, 512Mb DDR, 80GB SATA, 64Mb video card, 17" LCD, Windows XP Home', 'SPMO', 1, 0, 0, 1, 'Replace', 'UPBaguio'),
(46, 'Intel Core 2 Duo E6550 2.33GHz, intel G31 chipset, 2x512Mb DDR2, 160Gb SATA, 17" LCD', 'SPMO (Chief)', 1, 0, 0, 1, 'Replace', 'UPBaguio'),
(47, 'Intel Core 2 Duo E6550 2.33GHz, intel G31 chipset, 2x512Mb DDR2, 160Gb SATA, 17" LCD, Windows XP Home', 'Accounting', 1, 0, 0, 1, 'Optimize', 'UPBaguio'),
(48, 'Intel Core 2 Duo E7500 2.66GHZ, Intel G31 chipset, 2Gb DDR2, 250Gb SATA, 17" LCD monitor, speakers, Windows XP Home', 'Accounting', 1, 0, 0, 1, 'Retain', 'UPBaguio'),
(49, 'Intel Core i5 2400 3.1Ghz, Intel H61 chipset, 500Gb SATA, 4Gb DDR3, 18.5" LCD monitor, Windows 7 Pro', 'Accounting', 1, 0, 0, 1, 'Retain', 'UPBaguio'),
(50, 'Intel Core i3 2100 3.1GHz, Intel H61 chipset, 2Gb DDR3, 500Gb SATA, 18.5" LCD, Windows 7 Pro', 'Accounting', 1, 0, 0, 1, 'Retain', 'UPBaguio'),
(51, 'IBM ThinkCentre A50, Pentium 4 2.4GHz, 256Mb DDR, 40Gb PATA, CRT monitor, Windows XP Pro', 'Accounting', 1, 0, 0, 1, 'Replace', 'UPBaguio'),
(52, 'Intel Core 2 Duo E6550 2.33GHz, intel G31 chipset, 2x512Mb DDR2, 80Gb SATA, 17" LCD, Windows XP Home', 'Accounting (Head)', 1, 0, 0, 1, 'Replace', 'UPBaguio'),
(53, 'Intel Pentium 4 3.06GHz, VIA chipset, 512Mb DDR, 40Gb IDE, Windows XP Home', 'Alumni', 1, 0, 0, 1, 'Replace', 'UPBaguio'),
(54, 'Intel Core 2 Duo E7200 2.53GHz, Intel G31 chipset, 80Gb SATA, 1Gb DDR2, 17" LCD, Windows XP Home', 'Budget', 1, 0, 0, 1, 'Replace', 'UPBaguio'),
(55, 'Intel Core 2 Duo E7300 2.66 GHz, Intel G31 chipset, 250Gb SATA, 2Gb DDR2, 17" LCD MONITOR, Windows XP Home', 'Budget (Head)', 1, 0, 0, 1, 'Replace', 'UPBaguio'),
(56, 'Intel Core 2 Duo E7300 2.66 GHz, Intel G31 chipset, 250Gb SATA, 2Gb DDR2, 17" LCD MONITOR, Windows XP Home', 'Budget (Head)', 1, 0, 0, 1, 'Replace', 'UPBaguio'),
(57, 'Intel P-III 933MHz, 128Mb SDRAM, 20Gb PATA IDE, 16Mb video card, 15" CRT monitor, Windows 98', 'Campus Planning (Carpentry)', 1, 0, 0, 1, 'Replace', 'UPBaguio'),
(58, 'Intel Pentium 4 2.3GHZ, Intel 865G chipset, 256Mb DDR, 40Gb IDE, 64Mb video card, 17" CRT monitor', 'Campus Planning (Electronics Repair)', 1, 0, 0, 1, 'Replace', 'UPBaguio'),
(59, 'Intel Pentium 4 2.3GHZ, Intel 865G chipset, 256Mb DDR, 40Gb IDE, 64Mb video card, 17" CRT monitor', 'Campus Planning (Reproduction)', 1, 0, 0, 1, 'Replace', 'UPBaguio'),
(60, 'Intel Core 2 Duo E7300 2.66 GHz, Intel G31 chipset, 160Gb SATA, 2Gb DDR2, 17" LCD MONITOR, Windows XP Home', 'Cash', 1, 0, 0, 1, 'Optimize', 'UPBaguio'),
(61, 'Intel Pentium 4 3.2GHz, Intel 865G chipset, 1Gb DDR, 80Gb IDE, 64Mb video card, 15" LCD, Windows XP Home', 'Cash', 1, 0, 0, 1, 'Retain', 'UPBaguio'),
(62, 'Intel Core i5 3.2GHz, Intel H55 chipset, 4Gb DDR3, 500Gb SATA, 18.5" LED, Windows 7 Home Basic', 'Cash (Head)', 1, 0, 0, 1, 'Retain', 'UPBaguio'),
(63, 'Intel Core 2 Duo E7300 2.6GHz, Intel G31 chipset, 1Gb DDR2, 160Gb SATA, 17" LCD, Windows XP Home', 'Center for Culture and the Arts', 1, 0, 0, 1, 'Replace', 'UPBaguio'),
(64, 'Intel Core i5 2400 3.1Ghz, Intel H61 chipset, 500Gb SATA, 4Gb DDR3, 18.5" LCD monitor, Windows 7 Pro', 'Chancellor''s Office', 1, 0, 0, 1, 'Retain', 'UPBaguio'),
(65, 'Intel Core 2 Duo E7500 2.66GHZ, Intel G31 chipset, 2Gb DDR2, 250Gb SATA, 17" LCD monitor, speakers, Windows XP Home', 'Chancellor''s Office (Chancellor)', 1, 0, 1, 2, 'Replace', 'UPBaguio'),
(66, 'Intel Core 2 Duo E7500 2.93GHZ, Intel G31 chipset, 2Gb DDR2, 250Gb SATA, 17" LCD monitor, speakers, Windows XP Home', 'Clinic', 0, 1, 0, 1, 'Retain', 'UPBaguio'),
(67, 'Intel Pentium 4 2.3GHZ, Intel 865G chipset, 1Gb DDR, 80Gb IDE, 64Mb video card, 15" CRT monitor', 'Clinic', 1, 0, 0, 1, 'Replace', 'UPBaguio'),
(68, 'HP Pavilion P6190d, Intel Core 2 Quad Q8400 2.66GHz, 6Gb DDR3, 750Gb SATA, wireless NIC, 20" LCD, Windows 7', 'College of Arts and Communication', 0, 0, 1, 1, 'Retain', 'UPBaguio'),
(69, 'Intel Core 2 Duo E7400 2.8GHz, Intel G31 chipset, 2Gb DDR2, 160Gb SATA, 17" LCD, Windows 7 Home Starter', 'College of Arts and Communication', 1, 0, 0, 1, 'Retain', 'UPBaguio'),
(70, 'Intel Core 2 Duo E7500 2.66GHZ, Intel G31 chipset, 2Gb DDR2, 250Gb SATA, 17" LCD monitor, speakers, Windows XP Home', 'College of Arts and Communication', 0, 2, 5, 7, 'Retain', 'UPBaguio'),
(71, 'Intel Pentium 4 2.4GHz, Intel 865G chipset, 256Mb DDR, 80Gb IDE, 64Mb video card, 15" CRT, Windows XP Home', 'College of Arts and Communication (College Sec)', 0, 0, 1, 1, 'Replace', 'UPBaguio'),
(72, 'Intel Core i3 2100 3.1GHz, Intel H61 chipset, 2Gb DDR3, 500Gb SATA, 18.5" LCD, Windows 7 Pro', 'College of Arts and Communication (Dean)', 1, 0, 0, 1, 'Retain', 'UPBaguio'),
(73, 'Intel Celeron 2.66GHz, intel 865G chipset, 256Mb DDR,  40Gb IDE, 17" LCD, Windows XP Home', 'College of Science', 1, 0, 0, 1, 'Replace', 'UPBaguio'),
(74, 'Intel Pentium 4 2.4GHz, Intel 865G chipset, 256Mb DDR, 80Gb IDE, 64Mb video card, 15" CRT, Windows XP Home', 'College of Science', 4, 0, 0, 4, 'Replace', 'UPBaguio'),
(75, 'Intel Core i5 3.1GHz, Intel H67 chipset, 4Gb DDR3, 1TB SATA, 19" LED, Windows 7 Pro', 'College of Science (Dean, College Sec, Bio)', 0, 0, 3, 3, 'Retain', 'UPBaguio'),
(76, 'Apple MC 309ZP/A Imac, Core i5 2.5GHz, 4Gb DDR3, 500Gb SATA, MAC OS X', 'College of Science (Math, CompSci)', 0, 0, 9, 9, 'Retain', 'UPBaguio'),
(77, 'Intel Core i3 2100 3.1GHz, Intel H61 chipset, 2Gb DDR3, 500Gb SATA, 18.5" LCD, Windows 7 Pro', 'College of Science (Physics, Bio)', 0, 4, 3, 7, 'Retain', 'UPBaguio'),
(78, 'HP Pavilion 6244D, Intel Dual Core E5400 2.7GHz, Intel G31 chipset, 2Gb DDR3, 320Gb SATA, 20" LCD, Windows Vista Home', 'College of Science (Physics, Bio)', 1, 0, 3, 4, 'Retain', 'UPBaguio'),
(79, 'Intel Core 2 Duo E7500 2.66GHZ, Intel G31 chipset, 2Gb DDR2, 250Gb SATA, 17" LCD monitor, speakers, Windows XP Home', 'College of Social Sciences ', 1, 0, 0, 1, 'Replace', 'UPBaguio'),
(80, 'Intel Pentium 4 2.3GHZ, Intel 865G chipset, 256Mb DDR, 40Gb IDE, 64Mb video card, 17" CRT monitor', 'College of Social Sciences (Dean, College Sec)', 0, 0, 2, 2, 'Replace', 'UPBaguio'),
(81, 'Intel Core 2 Quad Q9400 2.93GHz, intel P45 chipset, 4Gb DDR2, 500Gb SATA, 1Gb video card, 17" LCD, wireless NIC, Windows XP Home', 'Cordillera Studies Center', 1, 0, 0, 1, 'Retain', 'UPBaguio'),
(82, 'Intel Pentium 4 2.8GHZ, Intel 865G chipset, 512Mb DDR, 120Gb IDE, 64Mb video card, 17" CRT monitor', 'Cordillera Studies Center', 1, 2, 0, 3, 'Replace', 'UPBaguio'),
(83, 'Intel Celeron D420 1.6GHz, Intel 865G chipset, 1Gb DDR2, 160Gb SATA, Windows XP Home, 15" LCD', 'Cordillera Studies Center', 1, 0, 0, 1, 'Replace', 'UPBaguio'),
(84, 'Intel Core 2 Duo E7500 2.66GHZ, Intel G31 chipset, 2Gb DDR2, 250Gb SATA, 17" LCD monitor, speakers, Windows XP Home', 'Cordillera Studies Center (Director)', 0, 0, 1, 1, 'Replace', 'UPBaguio'),
(85, 'Intel Core 2 Duo E8200 2.66GHz, Nforce 7050 Chipset, 2Gb DDR, 160Gb SATA, 15" monitor', 'Dorm', 2, 0, 0, 2, 'Retain', 'UPBaguio'),
(86, 'Intel Pentium 4 3.06GHz, Intel 865G chipset, 512Mb DDR, 80Gb IDE, 64Mb video card, 17" CRT Monitor, Windows XP Home', 'Guidance', 1, 0, 0, 1, 'Replace', 'UPBaguio'),
(87, 'Intel Pentium 4 3GHz, intel 865G chipset, 512Mb DDR, 64Mb video card, 1Tb SATA', 'Guidance', 1, 0, 0, 1, 'Replace', 'UPBaguio'),
(88, 'Intel Core i5 3.2GHz, Intel H55 chipset, 4Gb DDR3, 500Gb SATA, 18.5" LCD, Windows 7 Home Basic', 'Guidance', 2, 0, 0, 2, 'Retain', 'UPBaguio'),
(89, 'intel Core 2 Duo E7300 2.6GHz, Intel G31 chipset, 2Gb DDR2, 250Gb SATA, 17" LCD', 'HRD', 1, 0, 0, 1, 'Optimize', 'UPBaguio'),
(90, 'Intel Core 2 Duo E7500 2.66GHz, Intel G31 chipset, 2Gb DDR2, 250Gb SATA, 17" LCD monitor, speakers, Windows XP Home', 'HRD', 2, 0, 0, 2, 'Replace', 'UPBaguio'),
(91, 'Intel Core 2 Duo E6550 2.33GHz, Intel G31 chipset, 2x512Mb DDR2, 160Gb SATA, 17" LCD', 'HRD (Chief)', 0, 0, 1, 1, 'Replace', 'UPBaguio'),
(92, 'Intel Core 2 Duo E6550 2.33GHz, Intel G31 chipset, 512Mb DDR2, 80Gb SATA, 128Mb video card, 15" LCD, Windows XP Home', 'Human Kinetics Program', 1, 0, 2, 3, 'Optimize', 'UPBaguio'),
(93, 'Intel Core 2 Duo E6550 2.33GHz, intel G31 chipset, 1gb DDR2, 160Gb SATA, 256Mb video card, 17" CRT, Windows XP Home', 'Indegenious People Center', 1, 0, 0, 1, 'Replace', 'UPBaguio'),
(94, 'Intel Core i3 2100 3.1GHz, Intel H61 chipset, 2Gb DDR3, 500Gb SATA, 18.5" LCD, Windows 7 Pro', 'Institute of Management', 1, 0, 0, 1, 'Retain', 'UPBaguio'),
(95, 'Intel Pentium 4 3.06GHz, Intel 865G chipset, 512Mb DDR, 80Gb IDE, 64Mb video card, 17" LCD Monitor, Windows XP Home', 'Institute of Management', 0, 0, 5, 5, 'Replace', 'UPBaguio'),
(96, 'Intel Core 2 Duo E6550 2.33GHz, Intel G31 chipset, 512Mb DDR2, 80Gb SATA, 128Mb video card, 15" LCD, Windows XP Home', 'Institute of Management (Director)', 1, 0, 2, 3, 'Replace', 'UPBaguio'),
(97, 'Intel Pentium 4 1.7GHz, Via chipset, 1Gb DDR, 256Mb video card, 15" CRT monitor', 'Kasarian', 1, 0, 0, 1, 'Replace', 'UPBaguio'),
(98, 'Intel Dual Core E5400 2.7GHz, Intel G41 chipset, 2Gb DDR3, 250Gb SATA, 18.5" LCD, Windows XP Home', 'Library', 4, 0, 0, 4, 'Retain', 'UPBaguio'),
(99, 'Intel Core 2 Quad Q8400 2.66GHz, Intel G41 chipset, 2Gb DDR2, 250Gb SATA, 1Gb video card, 18.5" LCD, wireless NIC, Windows XP Home', 'Library', 4, 0, 0, 4, 'Retain', 'UPBaguio'),
(100, 'Intel Core 2 Duo Q8400 2.93GHz, Intel P45 chipset, 4Gb DDR2, 320Gb SATA, 1Gb 128-bit video card, 17" LCD, Windows XP Home', 'Library', 2, 0, 0, 2, 'Retain', 'UPBaguio'),
(101, 'Intel Pentium 4 3.06GHz, VIA chipset, 512Mb DDR, 40Gb IDE, 17" CRT monitor, Windows XP Home', 'Library', 1, 0, 0, 1, 'Replace', 'UPBaguio'),
(102, 'Intel Pentium 3 933MHz, Via chipset, 128Mb SDRAM, 20Gb IDE, 64Mb video card, 15" CRT monitor', 'Library', 1, 0, 0, 1, 'Replace', 'UPBaguio'),
(103, 'IBM ThinkCentre A50, Pentium 4 2.4GHz, 256Mb DDR, 40Gb PATA, CRT monitor, Windows XP Pro', 'LRC', 1, 0, 0, 1, 'Replace', 'UPBaguio'),
(104, 'Intel Core i3 2100 3.1GHz, Intel H61 chipset, 2Gb DDR3, 500Gb SATA, 18.5" LCD, Windows 7 Pro', 'LRC', 1, 0, 0, 1, 'Retain', 'UPBaguio'),
(105, 'Intel Core 2 Duo E7300 2.66 GHz, Intel G31 chipset, 160Gb SATA, 1Gb DDR, 256Mb video card, 17" LCD MONITOR', 'LRC (Director)', 1, 1, 0, 2, 'Replace', 'UPBaguio'),
(106, 'Athlon XP 2400, 128Mb video card, 80Gb SATA, 2Gb DDR, 17" CRT Monitor', 'Network Office', 1, 1, 0, 2, 'Retain', 'UPBaguio'),
(107, 'Intel Core i5 3.1GHz, Intel H67 chipset, 4Gb DDR3, 1TB SATA, 1GB DDR3 video card, 19" LED, Windows 7 Pro', 'Network Office', 1, 0, 0, 1, 'Retain', 'UPBaguio'),
(108, 'intel Pentium 4 3.06GHz, Intel 865G chipset, 512Mb DDR, 80Gb IDE, 64Mb video card, 17" LCD Monitor, Windows XP Home', 'NSTP/Pahinugod', 1, 0, 0, 1, 'Replace', 'UPBaguio'),
(109, 'IBM ThinkCentre A50, Pentium 4 2.4GHz, 256Mb DDR, 40Gb PATA, CRT monitor, Windows XP Pro', 'Police', 1, 0, 0, 1, 'Replace', 'UPBaguio'),
(110, 'intel Quad Core Q9400 2.66GHz, Intel G31 chipset, 2Gb DDR2, 250Gb SATA, 17" LCD, Windows XP Home', 'Public Affairs', 1, 0, 0, 1, 'Optimize', 'UPBaguio'),
(111, 'Intel Core 2 Duo E8400 3GHz, Intel G31 chipset, 1Gb DDR2, TV Tuner Capture Card, 80Gb SATA, 14" LCD', 'Public Affairs (Chief)', 0, 1, 0, 1, 'Replace', 'UPBaguio'),
(112, 'IBM ThinkCentre A50, Pentium 4 2.4GHz, 256Mb DDR, 40Gb PATA, 17" LCD monitor, Windows XP Pro', 'Registrar''s', 1, 0, 0, 1, 'Replace', 'UPBaguio'),
(113, 'Intel Dual Core E5300 2.7GHz, Intel G31 Chipset, 2Gb DDR2, 250Gb SATA, 17" LCD, Windows XP Home', 'Registrar''s', 1, 0, 0, 1, 'Replace', 'UPBaguio'),
(114, 'Intel Core i7 3.1GHz, Intel H67 chipset, 2Gb DDR3, 500Gb SATA, 21" LED monitor, Windows 7 Pro', 'Registrar''s', 1, 0, 0, 1, 'Retain', 'UPBaguio'),
(115, 'Intel Core 2 Duo E7500 2.66GHZ, Intel G31 chipset, 2Gb DDR2, 250Gb SATA, 17" LCD monitor, speakers, Windows XP Home', 'Registrar''s (Registrar)', 2, 0, 1, 3, 'Replace', 'UPBaguio'),
(116, 'Intel Core 2 Duo E7500 2.66GHZ, Intel G31 chipset, 2Gb DDR2, 250Gb SATA, 17" LCD monitor, speakers, Windows XP Home', 'SPMO', 2, 0, 0, 2, 'Replace', 'UPBaguio'),
(117, 'Intel Core i5 2400 3.1Ghz, Intel H61 chipset, 500Gb SATA, 4Gb DDR3, 18.5" LCD monitor, Windows 7 Pro', 'SPMO', 1, 0, 0, 1, 'Retain', 'UPBaguio'),
(118, 'Intel Dual Core E2180 2GHZ, Intel G31 chipset, 512Mb DDR, 80GB SATA, 64Mb video card, 17" LCD, Windows XP Home', 'SPMO', 1, 0, 0, 1, 'Replace', 'UPBaguio'),
(119, 'Intel Core 2 Duo E6550 2.33GHz, intel G31 chipset, 2x512Mb DDR2, 160Gb SATA, 17" LCD', 'SPMO (Chief)', 1, 0, 0, 1, 'Replace', 'UPBaguio'),
(120, 'Intel Core 2 Duo E7400 2.6GHz, Intel G31 chipset, 2Gb DDR2, 160Gb SATA, 17" LCD', 'Student Affairs (Director) ', 1, 0, 0, 1, 'Replace', 'UPBaguio'),
(121, 'Intel Core 2 Duo E7400 2.6GHz, Intel G31 chipset, 2Gb DDR2, 160Gb SATA, 17" LCD', 'Student Affairs (SRO)', 1, 0, 0, 1, 'Retain', 'UPBaguio'),
(122, 'Intel Core i5 2400 3.1Ghz, Intel H61 chipset, 1Tb SATA, 4Gb DDR3, 18.5" LED monitor, Windows 7 Home basic', 'Student Affairs (Student Financial Assistance)', 2, 0, 0, 2, 'Retain', 'UPBaguio'),
(123, 'Intel Core i5 2400 3.1Ghz, Intel H61 chipset, 500Gb SATA, 4Gb DDR3, 18.5" LCD monitor, Windows 7 Pro', 'VCA', 1, 0, 0, 1, 'Retain', 'UPBaguio'),
(124, 'Intel Quad Core 2.33GHz, intel G31 chipset, 4Gb DDR2, 150Gb SATA, speakers', 'VCA', 1, 0, 0, 1, 'Replace', 'UPBaguio'),
(125, 'Intel Core 2 Duo E4600 2.4GHz, Intel 945GC chipset, 512Mb DDR2, 80Gb SATA, 15', 'VCAA', 1, 0, 0, 1, 'Replace', 'UPBaguio'),
(126, 'Intel Core i5 Class\r\n', '...', 8, 0, 0, 8, 'Retain', 'upd'),
(127, 'Intel Atom Class\r\n', '...', 0, 10, 0, 10, 'Optimize', 'upd'),
(128, 'Pentium D Class\r\n', '...', 3, 6, 0, 9, 'Replace', 'upd'),
(129, 'AMD Athlon Class\r\n', '...', 10, 0, 0, 10, 'Replace', 'upd'),
(130, 'Macbook Pro\r\n', '...', 0, 1, 0, 1, 'Replace', 'upd');
