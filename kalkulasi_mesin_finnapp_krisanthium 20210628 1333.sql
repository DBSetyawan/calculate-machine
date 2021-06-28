-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.32


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema `db_kalkulasi_mesin`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `db_kalkulasi_mesin`;
USE `db_kalkulasi_mesin`;

--
-- Table structure for table `db_kalkulasi_mesin`.`account_mtc`
--

DROP TABLE IF EXISTS `account_mtc`;
CREATE TABLE `account_mtc` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code_account_mtc` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nama_account` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tahun1` double DEFAULT NULL,
  `biaya_perbulan` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tahun2` double DEFAULT NULL,
  `tahun3` double DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `reason` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_parent_id` int(11) DEFAULT NULL,
  `total_biaya_lain_produksi_2018` int(11) DEFAULT NULL,
  `total_biaya_lain_produksi_2019` int(11) DEFAULT NULL,
  `total_biaya_lain_produksi_2020` int(11) DEFAULT NULL,
  `total_perbulan_v_bln_biaya_produksi_lain` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`account_mtc`
--

/*!40000 ALTER TABLE `account_mtc` DISABLE KEYS */;
INSERT INTO `account_mtc` (`id`,`code_account_mtc`,`nama_account`,`tahun1`,`biaya_perbulan`,`created_at`,`updated_at`,`tahun2`,`tahun3`,`deleted_at`,`reason`,`company_parent_id`,`total_biaya_lain_produksi_2018`,`total_biaya_lain_produksi_2019`,`total_biaya_lain_produksi_2020`,`total_perbulan_v_bln_biaya_produksi_lain`) VALUES 
 (38,'ACMTCk3TR0321001','PEMEL & PERBAIKAN MESIN CTP SUPRASETTER',25055000,1036736.1111111,'2021-03-07 22:54:53','2021-03-07 22:54:53',12267500,NULL,NULL,NULL,3,NULL,NULL,NULL,NULL),
 (39,'ACMTCH7TR03210039','SPAREPARTS MESIN CTP SUPRA SETTER',225000,16027.777777778,'2021-03-07 22:55:21','2021-03-07 22:55:21',352000,NULL,NULL,NULL,3,NULL,NULL,NULL,NULL),
 (40,'ACMTCddTR03210040','PEMEL & PERBAIKAN MESIN GMG',NULL,0,'2021-03-07 22:55:33','2021-03-07 22:55:33',NULL,NULL,NULL,NULL,3,NULL,NULL,NULL,NULL),
 (41,'ACMTCFqTR03210041','SPAREPARTS MESIN GMG',99750000,2804924.25,'2021-03-07 22:56:00','2021-03-07 22:56:00',409091,818182,NULL,NULL,3,NULL,NULL,NULL,NULL),
 (42,'ACMTCPjTR03210042','MTC-SPAREPART MESIN',459828933.67,19637566.565556,'2021-03-07 22:57:16','2021-03-07 22:57:16',239472725.69,7650737,NULL,NULL,3,NULL,NULL,NULL,NULL),
 (43,'ACMTCyoTR03210043','MTC-LAIN',4022500,1011155.5555556,'2021-03-07 22:57:53','2021-03-07 22:57:53',32171600,207500,NULL,NULL,3,NULL,NULL,NULL,NULL);
INSERT INTO `account_mtc` (`id`,`code_account_mtc`,`nama_account`,`tahun1`,`biaya_perbulan`,`created_at`,`updated_at`,`tahun2`,`tahun3`,`deleted_at`,`reason`,`company_parent_id`,`total_biaya_lain_produksi_2018`,`total_biaya_lain_produksi_2019`,`total_biaya_lain_produksi_2020`,`total_perbulan_v_bln_biaya_produksi_lain`) VALUES 
 (44,'ACMTCqtTR03210044','UMUM_PDAM',40006800,3077844.4444444,'2021-03-07 22:58:27','2021-03-07 22:58:27',37639800,33155800,NULL,NULL,3,NULL,NULL,NULL,NULL),
 (45,'ACMTCNQTR03210045','UMUM-PAJAK / PERIJINAN / RETRIBUSI',353862128,38347757.444444,'2021-03-07 22:59:04','2021-03-07 22:59:04',432238051,594419089,NULL,NULL,3,NULL,NULL,NULL,NULL),
 (46,'ACMTCDuTR03210046','UMUM-BBM & PELUMAS',184398944.8044,9211135.4945667,'2021-03-07 22:59:42','2021-03-07 22:59:42',103440349,43761584,NULL,NULL,3,NULL,NULL,NULL,NULL),
 (47,'ACMTC6bTR03210047','UMUM-PEMELIHARAAN & PERBAIKAN GEDUNG',432972520,12955962.159722,'2021-03-07 23:00:16','2021-03-07 23:00:16',1148840077,283845954,NULL,NULL,3,NULL,NULL,NULL,NULL),
 (48,'ACMTCmaTR03210048','UMUM-PEMELIHARAAN & PERBAIKAN MESIN',2325000,6666276.8127778,'2021-03-07 23:00:48','2021-03-07 23:00:48',231573965.26,6087000,NULL,NULL,3,NULL,NULL,NULL,NULL);
INSERT INTO `account_mtc` (`id`,`code_account_mtc`,`nama_account`,`tahun1`,`biaya_perbulan`,`created_at`,`updated_at`,`tahun2`,`tahun3`,`deleted_at`,`reason`,`company_parent_id`,`total_biaya_lain_produksi_2018`,`total_biaya_lain_produksi_2019`,`total_biaya_lain_produksi_2020`,`total_perbulan_v_bln_biaya_produksi_lain`) VALUES 
 (49,'ACMTC6LTR03210049','UMUM-PEMELIHARAAN & PERBAIKAN KENDARAAN',20200000.4,656618.06666667,'2021-03-07 23:01:18','2021-03-07 23:01:18',1699000,1739250,NULL,NULL,3,NULL,NULL,NULL,NULL),
 (50,'ACMTCGHTR03210050','UMUM-SPAREPARTS MESIN/GEDUNG/PERALATAN/INSTALASI',814058976.02,15177947.478139,'2021-03-07 23:01:53','2021-03-07 23:01:53',436230470,935334990.832,NULL,NULL,3,NULL,NULL,NULL,NULL),
 (51,'ACMTCp7TR03210051','UMUM-SPAREPARTS KENDARAAN',6551500,639404.16666667,'2021-03-07 23:02:24','2021-03-07 23:02:24',7739500,8727550,NULL,NULL,3,NULL,NULL,NULL,NULL),
 (52,'ACMTCjrTR03210052','UMUM-ASURANSI',157152527.6,14266553.153889,'2021-03-07 23:03:04','2021-03-07 23:03:04',164508564.81,191934821.13,NULL,NULL,3,NULL,NULL,NULL,NULL),
 (53,'ACMTCm1TR03210053','UMUM-PENYUSUTAN GEDUNG',147950631.2496,10160399.005578,'2021-03-07 23:03:39','2021-03-07 23:03:39',147950628.5512,69873104.4,NULL,NULL,3,NULL,NULL,NULL,NULL);
INSERT INTO `account_mtc` (`id`,`code_account_mtc`,`nama_account`,`tahun1`,`biaya_perbulan`,`created_at`,`updated_at`,`tahun2`,`tahun3`,`deleted_at`,`reason`,`company_parent_id`,`total_biaya_lain_produksi_2018`,`total_biaya_lain_produksi_2019`,`total_biaya_lain_produksi_2020`,`total_perbulan_v_bln_biaya_produksi_lain`) VALUES 
 (54,'ACMTCvyTR03210054','UMUM-TRANSPORTASI PEMBELIAN',473083561.7872,NULL,'2021-03-07 23:04:22','2021-03-07 23:05:44',1381948688.6,302037624,NULL,NULL,3,NULL,NULL,NULL,NULL),
 (55,'ACMTCRXTR03210055','UMUM-BIAYA KERUSAKAN PRODUKSI',160077766,NULL,'2021-03-07 23:04:56','2021-03-07 23:06:02',1934500,NULL,NULL,NULL,3,NULL,NULL,NULL,NULL),
 (56,'ACMTCiITR03210056','UMUM-PELATIHAN',116779228,5445177.1076389,'2021-03-07 23:06:45','2021-03-07 23:06:45',527247695,140078580.5,NULL,NULL,3,NULL,NULL,NULL,NULL),
 (57,'ACMTC9xTR03210057','UMUM-KESELAMATAN KERJA',47493750,3019668.8583333,'2021-03-07 23:07:19','2021-03-07 23:07:19',35056328.9,26158000,NULL,NULL,3,NULL,NULL,NULL,NULL),
 (58,'ACMTCC4TR03210058','UMUM-BIAYA MAKAN & MINUM PRODUKSI',24783500,2204652.7777778,'2021-03-07 23:07:51','2021-03-07 23:07:51',29109000,25475000,NULL,NULL,3,NULL,NULL,NULL,NULL);
INSERT INTO `account_mtc` (`id`,`code_account_mtc`,`nama_account`,`tahun1`,`biaya_perbulan`,`created_at`,`updated_at`,`tahun2`,`tahun3`,`deleted_at`,`reason`,`company_parent_id`,`total_biaya_lain_produksi_2018`,`total_biaya_lain_produksi_2019`,`total_biaya_lain_produksi_2020`,`total_perbulan_v_bln_biaya_produksi_lain`) VALUES 
 (59,'ACMTCI9TR03210059','UMUM-LAIN-LAIN',69404413.6364,19174780.690747,'2021-03-07 23:08:34','2021-03-07 23:08:34',343389660.8847,277498030.3458,NULL,NULL,3,NULL,NULL,NULL,NULL),
 (60,'ACMTC2vTR03210060','BERBEK-PLN',48797702,6231807.9722222,'2021-03-07 23:09:29','2021-03-12 13:01:26',83683569,91863816,NULL,NULL,3,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `account_mtc` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`account_mtc_total`
--

DROP TABLE IF EXISTS `account_mtc_total`;
CREATE TABLE `account_mtc_total` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_acc_mtc` int(10) unsigned DEFAULT NULL,
  `acc_mtc_total` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `changed_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `history_latest` int(11) DEFAULT NULL,
  `before` int(11) DEFAULT NULL,
  `table_column` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`account_mtc_total`
--

/*!40000 ALTER TABLE `account_mtc_total` DISABLE KEYS */;
INSERT INTO `account_mtc_total` (`id`,`id_acc_mtc`,`acc_mtc_total`,`created_at`,`updated_at`,`changed_by`,`history_latest`,`before`,`table_column`,`created_by`,`company_parent_id`) VALUES 
 (35,NULL,NULL,'2021-03-31 09:13:40','2021-03-31 09:13:40',NULL,155304,155304,'account_mtc.added.event','Admin',3);
/*!40000 ALTER TABLE `account_mtc_total` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`),
  KEY `admins_role_id_foreign` (`role_id`),
  CONSTRAINT `admins_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`admins`
--

/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` (`id`,`role_id`,`name`,`email`,`avatar`,`password`,`remember_token`,`settings`,`created_at`,`updated_at`) VALUES 
 (1,NULL,'Admin accounting','admin@multi-auth.acc','users/default.png','$2y$10$atjBStorV4QwGAepTbAYgOXOXXT6u42ReN.gsPP41ChgHUmm5mB0.',NULL,NULL,'2021-03-05 07:04:58','2021-03-05 07:04:58');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`all_recalculate`
--

DROP TABLE IF EXISTS `all_recalculate`;
CREATE TABLE `all_recalculate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `company` int(11) DEFAULT NULL,
  `code_mesin` int(11) DEFAULT NULL,
  `category_bagian` int(11) DEFAULT NULL,
  `id_listrik` bigint(20) DEFAULT NULL,
  `id_penyusutan` bigint(20) DEFAULT NULL,
  `id_labor` bigint(20) DEFAULT NULL,
  `id_mtc` bigint(20) DEFAULT NULL,
  `id_bprodlain_insteadof_mtc` bigint(20) DEFAULT NULL,
  `id_gajilain` bigint(20) DEFAULT NULL,
  `id_bgoenjualan` bigint(20) DEFAULT NULL,
  `id_bau` bigint(20) DEFAULT NULL,
  `total_semua_biaya` bigint(20) DEFAULT NULL,
  `total_semua_biaya_perjam` bigint(20) DEFAULT NULL,
  `total_tanpa_penyusutan_n_mtc` bigint(20) DEFAULT NULL,
  `total_tanpa_penyusutan_n_mtc_perjam` bigint(20) DEFAULT NULL,
  `total_tanpa_penyusutan` bigint(20) DEFAULT NULL,
  `total_tanpa_penyusutan_perjam` bigint(20) DEFAULT NULL,
  `total_tanpa_mtc` bigint(20) DEFAULT NULL,
  `total_tanpa_mtc_perjam` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_mesin` int(11) DEFAULT NULL,
  `listrik_fk` int(11) DEFAULT NULL,
  `begin_at` timestamp NULL DEFAULT NULL,
  `ended_at` timestamp NULL DEFAULT NULL,
  `slugprefixclose` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=430 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`all_recalculate`
--

/*!40000 ALTER TABLE `all_recalculate` DISABLE KEYS */;
INSERT INTO `all_recalculate` (`id`,`company`,`code_mesin`,`category_bagian`,`id_listrik`,`id_penyusutan`,`id_labor`,`id_mtc`,`id_bprodlain_insteadof_mtc`,`id_gajilain`,`id_bgoenjualan`,`id_bau`,`total_semua_biaya`,`total_semua_biaya_perjam`,`total_tanpa_penyusutan_n_mtc`,`total_tanpa_penyusutan_n_mtc_perjam`,`total_tanpa_penyusutan`,`total_tanpa_penyusutan_perjam`,`total_tanpa_mtc`,`total_tanpa_mtc_perjam`,`created_at`,`updated_at`,`group_mesin`,`listrik_fk`,`begin_at`,`ended_at`,`slugprefixclose`) VALUES 
 (429,3,141,2,368582683,245769952,85689772,0,735179160,1987555120,7956303066407,62851284404497,70811304532960,140498620105,70810764477639,140497548567,70811058763008,140498132466,70810764477639,140498036206,'2021-04-30 16:51:33','2021-05-19 14:43:07',2,314,'2021-04-30 16:51:32',NULL,NULL);
/*!40000 ALTER TABLE `all_recalculate` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`b_penjualan_total`
--

DROP TABLE IF EXISTS `b_penjualan_total`;
CREATE TABLE `b_penjualan_total` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_bgpenj` int(10) unsigned DEFAULT NULL,
  `total_bgpenjualan` int(10) unsigned DEFAULT NULL,
  `changed_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `history_latest` bigint(20) DEFAULT NULL,
  `before` bigint(20) DEFAULT NULL,
  `table_column` varchar(99) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `created_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`b_penjualan_total`
--

/*!40000 ALTER TABLE `b_penjualan_total` DISABLE KEYS */;
INSERT INTO `b_penjualan_total` (`id`,`id_bgpenj`,`total_bgpenjualan`,`changed_by`,`created_at`,`updated_at`,`history_latest`,`before`,`table_column`,`company_id`,`created_by`) VALUES 
 (44,NULL,NULL,NULL,'2021-04-28 10:27:42','2021-04-28 10:27:42',1490917207,1490917207,'laporan_bagian_penjualan.added.event',3,'EDP Administrator'),
 (45,NULL,NULL,'EDP Administrator',NULL,'2021-04-28 10:28:31',4500,463647345,'laporan_bagian_penjualan.tahun2',3,NULL),
 (46,NULL,NULL,'EDP Administrator',NULL,'2021-04-28 10:28:31',1478038239,0,'laporan_bagian_penjualan.biaya_perbulan_bag_penjualan',3,NULL),
 (47,NULL,NULL,NULL,'2021-04-28 15:43:25','2021-04-28 15:43:25',145533,145533,'laporan_bagian_penjualan.added.event',3,'EDP Administrator');
/*!40000 ALTER TABLE `b_penjualan_total` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`bagian_penjualan`
--

DROP TABLE IF EXISTS `bagian_penjualan`;
CREATE TABLE `bagian_penjualan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code_penjualan` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nama_biaya` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `biaya_pertahun` int(11) DEFAULT NULL,
  `biaya_perbulan` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`bagian_penjualan`
--

/*!40000 ALTER TABLE `bagian_penjualan` DISABLE KEYS */;
INSERT INTO `bagian_penjualan` (`id`,`code_penjualan`,`nama_biaya`,`biaya_pertahun`,`biaya_perbulan`,`created_at`,`updated_at`,`company_parent_id`) VALUES 
 (1,'PNJvcTR0221001','IKLAN & PROMOSI',3900000,325000,'2021-02-01 01:59:25','2021-02-01 01:59:25',3),
 (2,'PNJOaTR0221002','MARKETING-GAJI & UPAH',616368232,51364019,'2021-02-01 01:59:35','2021-02-01 01:59:35',3),
 (3,'PNJzWTR0221003','MARKETING-TUNJANGAN TIDAK TETAP',5750085,479174,'2021-02-01 02:00:00','2021-02-01 02:00:00',3),
 (4,'PNJhjTR0221004','MARKETING-LEMBUR',31606849,2633904,'2021-02-01 02:00:13','2021-02-01 02:00:13',3),
 (5,'PNJbKTR0221005','MARKETING-TUNJANGAN HARI RAYA',69678954,5806580,'2021-02-01 02:00:51','2021-02-01 02:00:51',3),
 (6,'PNJYzTR0221006','MARKETING-LAIN',55518000,4626500,'2021-02-01 02:01:14','2021-02-01 02:01:14',3),
 (7,'PNJp1TR0221007','BIAYA PERJALANAN PEMASARAN',38112070,3176006,'2021-02-01 02:01:31','2021-02-01 02:01:31',3),
 (8,'PNJfYTR0221008','MARKETING-PAJAK / PERIJINAN / RETRIBUSI',57314900,4776242,'2021-02-01 02:01:50','2021-02-01 02:01:50',3),
 (9,'PNJ3ATR0221009','MARKETING-PEMELIHARAAN & PERBAIKAN KENDARAAN',8250000,687500,'2021-02-01 02:02:08','2021-02-01 02:02:08',3);
INSERT INTO `bagian_penjualan` (`id`,`code_penjualan`,`nama_biaya`,`biaya_pertahun`,`biaya_perbulan`,`created_at`,`updated_at`,`company_parent_id`) VALUES 
 (10,'PNJtyTR02210010','MARKETING-SPAREPARTS KENDARAAN',5950000,495833,'2021-02-01 02:02:19','2021-02-01 02:02:19',3),
 (11,'PNJvuTR02210011','MARKETING-TRANSPORTASI PENJUALAN',971225682,80935474,'2021-02-01 02:02:28','2021-02-01 02:02:28',3),
 (12,'PNJvGTR02210012','MARKETING-LAIN-LAIN',44303465,3691955,'2021-02-01 02:02:37','2021-02-01 02:02:37',3),
 (13,'PNJMtTR02210013','MARKETING-KOMISI PENJUALAN',0,0,'2021-02-01 02:02:53','2021-02-01 02:02:53',3);
/*!40000 ALTER TABLE `bagian_penjualan` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`bau_total`
--

DROP TABLE IF EXISTS `bau_total`;
CREATE TABLE `bau_total` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `changed_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_bau` int(10) unsigned DEFAULT NULL,
  `total_bau` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `table_column` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `history_latest` bigint(20) DEFAULT NULL,
  `before` bigint(20) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `created_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`bau_total`
--

/*!40000 ALTER TABLE `bau_total` DISABLE KEYS */;
INSERT INTO `bau_total` (`id`,`changed_by`,`id_bau`,`total_bau`,`created_at`,`updated_at`,`table_column`,`history_latest`,`before`,`company_id`,`created_by`) VALUES 
 (76,NULL,NULL,NULL,'2021-04-28 10:23:11','2021-04-28 10:23:11','laporan_biaya_administrasi_umum.added.event',11769728395,11769728395,3,'EDP Administrator'),
 (77,'EDP Administrator',NULL,NULL,NULL,'2021-04-28 10:25:33','laporan_biaya_administrasi_umum.total_biaya_lp_adm',11769728395,11769728395,3,NULL),
 (78,'EDP Administrator',NULL,NULL,NULL,'2021-04-28 10:25:33','laporan_biaya_administrasi_umum.thn_periode_1',2021,2024,3,NULL),
 (79,NULL,NULL,NULL,'2021-04-28 15:46:11','2021-04-28 15:46:11','laporan_biaya_administrasi_umum.added.event',365,365,3,'EDP Administrator');
/*!40000 ALTER TABLE `bau_total` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`biaya_administrasi_umum`
--

DROP TABLE IF EXISTS `biaya_administrasi_umum`;
CREATE TABLE `biaya_administrasi_umum` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code_biaya_adm_umum` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `biaya_pertahun` double DEFAULT NULL,
  `biaya_perbulan` double DEFAULT NULL,
  `company_parent_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `biaya_periode` timestamp NULL DEFAULT NULL,
  `nama_biaya` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_biaya_periode_2018` double DEFAULT NULL,
  `total_biaya_periode_2019` double DEFAULT NULL,
  `total_biaya_periode_2020` double DEFAULT NULL,
  `total_bau` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`biaya_administrasi_umum`
--

/*!40000 ALTER TABLE `biaya_administrasi_umum` DISABLE KEYS */;
INSERT INTO `biaya_administrasi_umum` (`id`,`code_biaya_adm_umum`,`biaya_pertahun`,`biaya_perbulan`,`company_parent_id`,`created_at`,`updated_at`,`biaya_periode`,`nama_biaya`,`total_biaya_periode_2018`,`total_biaya_periode_2019`,`total_biaya_periode_2020`,`total_bau`) VALUES 
 (46,'BAUIDrKTR0221001',6450553541.13,537546128.4275,3,'2021-02-01 04:41:27','2021-02-01 04:41:27',NULL,'GAJI & UPAH STAFF',NULL,NULL,NULL,NULL),
 (47,'BAUIDh8TR02210047',329537090.48,27461424.206667,3,'2021-02-01 04:42:08','2021-02-01 04:42:08',NULL,'TUNJANGAN TETAP',NULL,NULL,NULL,NULL),
 (48,'BAUID0VTR02210048',161184070.12,13432005.843333,3,'2021-02-01 04:42:37','2021-02-01 04:42:37',NULL,'TUNJANGAN TIDAK TETAP',NULL,NULL,NULL,NULL),
 (49,'BAUIDsKTR02210049',58254404,4854533.6666667,3,'2021-02-01 04:42:51','2021-02-01 04:42:51',NULL,'LEMBUR',NULL,NULL,NULL,NULL),
 (50,'BAUIDwXTR02210050',544044753.9,45337062.825,3,'2021-02-01 04:43:14','2021-02-01 04:43:14',NULL,'TUNJANGAN ASURANSI',NULL,NULL,NULL,NULL),
 (51,'BAUIDUXTR02210051',321595470.83,26799622.569167,3,'2021-02-01 04:43:54','2021-02-01 04:43:54',NULL,'TUNJANGAN HARI RAYA',NULL,NULL,NULL,NULL),
 (52,'BAUIDngTR02210052',15677719,1306476.5833333,3,'2021-02-01 04:44:10','2021-02-01 04:44:10',NULL,'PESANGON',NULL,NULL,NULL,NULL);
INSERT INTO `biaya_administrasi_umum` (`id`,`code_biaya_adm_umum`,`biaya_pertahun`,`biaya_perbulan`,`company_parent_id`,`created_at`,`updated_at`,`biaya_periode`,`nama_biaya`,`total_biaya_periode_2018`,`total_biaya_periode_2019`,`total_biaya_periode_2020`,`total_bau`) VALUES 
 (53,'BAUIDFcTR02210053',131430128.9076,10952510.7423,3,'2021-02-01 04:44:19','2021-02-01 04:44:19',NULL,'PERLENGKAPAN KANTOR',NULL,NULL,NULL,NULL),
 (54,'BAUIDg7TR02210054',24001400,2000116.6666667,3,'2021-02-01 04:44:29','2021-02-01 04:44:29',NULL,'RUMAH TANGGA KANTOR',NULL,NULL,NULL,NULL),
 (55,'BAUIDNCTR02210055',202966064,16913838.666667,3,'2021-02-01 04:44:41','2021-02-01 04:44:41',NULL,'BEBAN PERJALANAN KARYAWAN',NULL,NULL,NULL,NULL),
 (56,'BAUIDibTR02210056',23303400,1941950,3,'2021-02-01 04:44:57','2021-02-01 04:44:57',NULL,'BEBAN MAKANAN & MINUMAN',NULL,NULL,NULL,NULL),
 (57,'BAUIDQKTR02210057',90092951,7507745.9166667,3,'2021-02-01 04:45:05','2021-02-01 04:45:05',NULL,'PAJAK / PERIJINAN / RETRIBUSI',NULL,NULL,NULL,NULL),
 (58,'BAUIDPlTR02210058',12385000,1032083.3333333,3,'2021-02-01 04:45:14','2021-02-01 04:45:14',NULL,'IURAN',NULL,NULL,NULL,NULL);
INSERT INTO `biaya_administrasi_umum` (`id`,`code_biaya_adm_umum`,`biaya_pertahun`,`biaya_perbulan`,`company_parent_id`,`created_at`,`updated_at`,`biaya_periode`,`nama_biaya`,`total_biaya_periode_2018`,`total_biaya_periode_2019`,`total_biaya_periode_2020`,`total_bau`) VALUES 
 (59,'BAUID6ITR02210059',119347144,9945595.3333333,3,'2021-02-01 04:45:24','2021-02-01 04:45:24',NULL,'BBM & PELUMAS',NULL,NULL,NULL,NULL),
 (60,'BAUIDxtTR02210060',7298894,608241.16666667,3,'2021-02-01 04:45:34','2021-02-01 04:45:34',NULL,'PEMELIHARAAN & PERBAIKAN KENDARAAN',NULL,NULL,NULL,NULL),
 (62,'BAUIDkcTR02210062',110737869.2727,9228155.772725,3,'2021-02-01 04:45:53','2021-02-01 04:45:53',NULL,'SPAREPARTS KENDARAAN',NULL,NULL,NULL,NULL),
 (63,'BAUID5UTR02210063',76141500,6345125,3,'2021-02-01 04:46:10','2021-02-01 04:46:10',NULL,'PARKIR & TOL',NULL,NULL,NULL,NULL),
 (64,'BAUIDW3TR02210064',171710750,14309229.166667,3,'2021-02-01 04:46:19','2021-02-01 04:46:19',NULL,'PEMELIHARAAN DAN PERBAIKAN GEDUNG',NULL,NULL,NULL,NULL),
 (65,'BAUIDJeTR02210065',102641000,8553416.6666667,3,'2021-02-01 04:46:28','2021-02-01 04:46:28',NULL,'PEMELIHARAAN & PERBAIKAN INVENTARIS KANTOR',NULL,NULL,NULL,NULL);
INSERT INTO `biaya_administrasi_umum` (`id`,`code_biaya_adm_umum`,`biaya_pertahun`,`biaya_perbulan`,`company_parent_id`,`created_at`,`updated_at`,`biaya_periode`,`nama_biaya`,`total_biaya_periode_2018`,`total_biaya_periode_2019`,`total_biaya_periode_2020`,`total_bau`) VALUES 
 (66,'BAUID01TR02210066',196818179.9996,16401514.999967,3,'2021-02-01 04:46:40','2021-02-01 04:46:40',NULL,'PENYUSUTAN INVENTARIS KENDARAAN',NULL,NULL,NULL,NULL),
 (67,'BAUIDGHTR02210067',100365427.7056,8363785.6421333,3,'2021-02-01 04:46:53','2021-02-01 04:46:53',NULL,'PENYUSUTAN INVENTARIS KANTOR',NULL,NULL,NULL,NULL),
 (68,'BAUIDJUTR02210068',9467689.5,788974.125,3,'2021-02-01 04:47:17','2021-02-01 04:47:17',NULL,'PENYUSUTAN AKTIVA TETAP TAK BERWUJUD',NULL,NULL,NULL,NULL),
 (69,'BAUID90TR02210069',44187348,3682279,3,'2021-02-01 04:47:26','2021-02-01 04:47:26',NULL,'FOTOCOPY & STENSIL',NULL,NULL,NULL,NULL),
 (70,'BAUIDPYTR02210070',121227843.0909,10102320.257575,3,'2021-02-01 04:47:36','2021-02-01 04:47:36',NULL,'SPAREPARTS GEDUNG/INVENTARIS/INSTALASI',NULL,NULL,NULL,NULL),
 (71,'BAUIDJETR02210071',4250000000,354166666.66667,3,'2021-02-01 04:47:47','2021-02-01 04:47:47',NULL,'SEWA TANAH',NULL,NULL,NULL,NULL);
INSERT INTO `biaya_administrasi_umum` (`id`,`code_biaya_adm_umum`,`biaya_pertahun`,`biaya_perbulan`,`company_parent_id`,`created_at`,`updated_at`,`biaya_periode`,`nama_biaya`,`total_biaya_periode_2018`,`total_biaya_periode_2019`,`total_biaya_periode_2020`,`total_bau`) VALUES 
 (72,'BAUIDVwTR02210072',39674500,3306208.3333333,3,'2021-02-01 04:47:54','2021-02-01 04:47:54',NULL,'LAIN-LAIN',NULL,NULL,NULL,NULL),
 (73,'BAUIDXkTR02210073',191650000,15970833.333333,3,'2021-02-01 04:48:03','2021-02-01 04:48:03',NULL,'KONSULTA / NOTARIS',NULL,NULL,NULL,NULL),
 (74,'BAUIDSnTR02210074',151000000,12583333.333333,3,'2021-02-01 04:48:13','2021-02-01 04:48:13',NULL,'OUT SOURCE TENAGA KERJA',NULL,NULL,NULL,NULL),
 (75,'BAUIDJrTR02210075',40782401,3398533.4166667,3,'2021-02-01 04:48:21','2021-02-01 04:48:21',NULL,'POS & PAKET',NULL,NULL,NULL,NULL),
 (76,'BAUIDZ8TR02210076',28752000,2396000,3,'2021-02-01 04:48:33','2021-02-01 04:48:33',NULL,'MATERAI',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `biaya_administrasi_umum` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`),
  CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`categories`
--

/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`,`parent_id`,`order`,`name`,`slug`,`created_at`,`updated_at`) VALUES 
 (1,NULL,1,'Category 1','category-1','2021-01-19 08:02:15','2021-01-19 08:02:15'),
 (2,NULL,1,'Category 2','category-2','2021-01-19 08:02:15','2021-01-19 08:02:15');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`company`
--

DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `company_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`company`
--

/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` (`id`,`company_name`,`created_at`,`updated_at`,`deleted_at`) VALUES 
 (1,'IMPERIAL','2021-01-20 02:11:40','2021-01-20 02:11:40',NULL),
 (2,'GEMILANG','2021-01-20 02:11:47','2021-01-20 02:11:47',NULL),
 (3,'KOP','2021-01-20 02:11:00','2021-02-16 10:51:07',NULL),
 (4,'SERUNI GRAF','2021-01-20 07:14:56','2021-01-28 01:35:42','2021-01-28 01:35:42');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=855 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`data_rows`
--

/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (1,1,'id','number','ID',1,0,0,0,0,0,'{}',1),
 (2,1,'name','text','Name',1,1,1,1,1,1,'{}',2),
 (3,1,'email','text','Email',1,1,1,1,1,1,'{}',3),
 (4,1,'password','password','Password',1,0,0,1,1,0,'{}',4),
 (5,1,'remember_token','text','Remember Token',0,0,0,0,0,0,'{}',5),
 (6,1,'created_at','timestamp','Created At',0,1,1,0,0,0,'{}',6),
 (7,1,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',7),
 (8,1,'avatar','image','Avatar',0,1,1,1,1,1,'{}',8),
 (9,1,'user_belongsto_role_relationship','relationship','user_belongsto_role_relationship',0,0,1,1,1,0,'{\"model\":\"App\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}',10),
 (10,1,'user_belongstomany_role_relationship','relationship','user_belongstomany_role_relationship',0,0,0,1,1,1,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}',11),
 (11,1,'settings','hidden','Settings',0,0,0,0,0,0,'{}',12);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (16,3,'id','number','ID',1,0,0,0,0,0,'{}',1),
 (17,3,'name','text','Name',1,1,1,1,1,1,'{}',2),
 (18,3,'created_at','timestamp','Created At',0,0,0,0,0,0,'{}',3),
 (19,3,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',4),
 (20,3,'display_name','text','Display Name',1,1,1,1,1,1,'{}',5),
 (21,1,'role_id','text','Role',0,1,1,1,1,1,'{}',9),
 (22,4,'id','number','ID',1,0,0,0,0,0,NULL,1),
 (23,4,'parent_id','select_dropdown','Parent',0,0,1,1,1,1,'{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',2),
 (24,4,'order','text','Order',1,1,1,1,1,1,'{\"default\":1}',3),
 (25,4,'name','text','Name',1,1,1,1,1,1,NULL,4),
 (26,4,'slug','text','Slug',1,1,1,1,1,1,'{\"slugify\":{\"origin\":\"name\"}}',5),
 (27,4,'created_at','timestamp','Created At',0,0,1,0,0,0,NULL,6),
 (28,4,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),
 (29,5,'id','number','ID',1,0,0,0,0,0,NULL,1);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (30,5,'author_id','text','Author',1,0,1,1,0,1,NULL,2),
 (31,5,'category_id','text','Category',1,0,1,1,1,0,NULL,3),
 (32,5,'title','text','Title',1,1,1,1,1,1,NULL,4),
 (33,5,'excerpt','text_area','Excerpt',1,0,1,1,1,1,NULL,5),
 (34,5,'body','rich_text_box','Body',1,0,1,1,1,1,NULL,6),
 (35,5,'image','image','Post Image',0,1,1,1,1,1,'{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}',7),
 (36,5,'slug','text','Slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}',8),
 (37,5,'meta_description','text_area','Meta Description',1,0,1,1,1,1,NULL,9),
 (38,5,'meta_keywords','text_area','Meta Keywords',1,0,1,1,1,1,NULL,10),
 (39,5,'status','select_dropdown','Status',1,1,1,1,1,1,'{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}',11);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (40,5,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,12),
 (41,5,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,13),
 (42,5,'seo_title','text','SEO Title',0,1,1,1,1,1,NULL,14),
 (43,5,'featured','checkbox','Featured',1,1,1,1,1,1,NULL,15),
 (44,6,'id','number','ID',1,0,0,0,0,0,NULL,1),
 (45,6,'author_id','text','Author',1,0,0,0,0,0,NULL,2),
 (46,6,'title','text','Title',1,1,1,1,1,1,NULL,3),
 (47,6,'excerpt','text_area','Excerpt',1,0,1,1,1,1,NULL,4),
 (48,6,'body','rich_text_box','Body',1,0,1,1,1,1,NULL,5),
 (49,6,'slug','text','Slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}',6),
 (50,6,'meta_description','text','Meta Description',1,0,1,1,1,1,NULL,7),
 (51,6,'meta_keywords','text','Meta Keywords',1,0,1,1,1,1,NULL,8),
 (52,6,'status','select_dropdown','Status',1,1,1,1,1,1,'{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}',9),
 (53,6,'created_at','timestamp','Created At',1,1,1,0,0,0,NULL,10);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (54,6,'updated_at','timestamp','Updated At',1,0,0,0,0,0,NULL,11),
 (55,6,'image','image','Page Image',0,1,1,1,1,1,NULL,12),
 (56,7,'id','text','Id',1,1,0,0,0,0,'{}',1),
 (58,7,'code_mesin','text','Code Mesin',0,1,0,1,1,1,'{}',5),
 (69,7,'created_at','timestamp','Created At',0,1,1,0,0,1,'{}',26),
 (71,8,'id','text','Id',1,1,0,0,0,0,'{}',1),
 (72,8,'company_name','text','Company Name',0,1,1,1,1,1,'{}',2),
 (73,8,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',3),
 (74,8,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',4),
 (75,9,'id','text','Id',1,0,0,0,0,0,'{}',1),
 (76,9,'code_job_level','text','Code Job Level',0,0,0,0,0,0,'{}',2),
 (77,9,'jabatan','text','Jabatan',0,1,1,1,1,1,'{}',3),
 (78,9,'LV','text','LV',0,1,1,0,1,1,'{}',4),
 (79,9,'upah_terkecil','text','Upah Terkecil',0,0,1,1,1,1,'{}',5),
 (80,9,'upah_tengah','text','Upah Tengah',0,0,1,1,1,1,'{}',6),
 (81,9,'updah_atas','text','Updah Atas',0,0,1,1,1,1,'{}',7);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (82,9,'created_at','timestamp','Created At',0,1,1,0,0,1,'{}',8),
 (83,9,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',9),
 (84,10,'id','text','Id',1,0,0,0,0,0,'{}',1),
 (85,10,'code_penyusutan','text','Code Penyusutan',0,0,1,0,0,1,'{}',2),
 (86,10,'company_parent_id','text','Company Parent Id',0,1,1,1,1,1,'{}',8),
 (87,10,'nama_sim','text','Nama Sim',0,1,1,1,1,1,'{}',9),
 (88,10,'purchaseorder_value','text','Purchaseorder Value',0,0,1,1,1,1,'{}',10),
 (89,10,'umur','text','Umur',0,1,1,1,1,1,'{}',11),
 (90,10,'penyusutan_perbulan','text','Penyusutan Perbulan',0,0,1,0,1,1,'{}',12),
 (91,10,'created_at','timestamp','Created At',0,0,0,0,0,1,'{}',13),
 (92,10,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',14),
 (93,13,'id','text','Id',1,1,0,0,0,0,'{}',1),
 (94,13,'code_listrik','text','Code Listrik',0,0,1,0,0,0,'{}',7),
 (95,13,'company_parent_id','text','Company Parent Id',0,1,1,1,1,1,'{}',8),
 (96,13,'code_mesin','text','Code Mesin',0,1,1,1,1,1,'{}',9);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (97,13,'shift','text','Shift',0,1,1,1,1,1,'{\"validation\":{\"rule\":[\"required\"]}}',11),
 (98,13,'ampere','text','Ampere',0,1,1,1,1,1,'{}',12),
 (99,13,'voltase','text','Voltase',0,1,1,1,1,1,'{}',13),
 (102,13,'total_biaya_listrik','text','Total Biaya Listrik',0,0,1,0,1,1,'{}',21),
 (103,13,'nilai_cost_bulan','text','Nilai Cost Bulan',0,0,1,0,1,1,'{}',22),
 (104,13,'persen_cost_perbulan','text','Persen Cost Perbulan',0,0,1,0,1,1,'{}',23),
 (105,13,'ncost_bulan_plus_adm','text','Ncost Bulan Plus Adm',0,0,1,0,1,1,'{}',24),
 (106,13,'output_perjam','text','Output Perjam',0,0,1,0,1,1,'{}',25),
 (107,13,'persen_output_perjam','text','Persen Output Perjam',0,0,1,0,1,1,'{}',26),
 (108,13,'created_at','timestamp','Created At',0,1,1,0,0,1,'{}',27),
 (109,13,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',29),
 (110,14,'id','text','Id',1,0,0,0,0,0,'{}',1),
 (111,14,'code_mtc','text','Code Mtc',0,0,1,0,0,0,'{}',5);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (112,14,'code_mesin','text','Code Mesin',0,1,1,1,1,1,'{}',6),
 (113,14,'perbaikan_pertahun','text','Perbaikan Pertahun',0,1,1,1,1,1,'{}',7),
 (114,14,'perbaikan_perbulan','text','Perbaikan Perbulan',0,1,1,1,1,1,'{}',8),
 (115,14,'sparepart_pertahun','text','Sparepart Pertahun',0,1,1,1,1,1,'{}',9),
 (116,14,'sparepart_perbulan','text','Sparepart Perbulan',0,1,1,1,1,1,'{}',10),
 (117,14,'total_perbulan','text','Total Perbulan',0,1,1,0,1,1,'{}',11),
 (118,14,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',12),
 (119,14,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',13),
 (120,15,'id','text','Id',1,0,0,0,0,0,'{}',1),
 (121,15,'code_account_mtc','text','Code Account Mtc',0,0,1,0,0,0,'{}',3),
 (122,15,'nama_account','text','Nama Account',0,1,1,1,1,1,'{}',4),
 (124,15,'biaya_perbulan','text','Biaya Perbulan',0,0,1,0,1,1,'{}',6),
 (125,15,'created_at','timestamp','Created At',0,1,1,0,0,1,'{}',17);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (126,15,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',7),
 (127,16,'id','text','Id',1,0,0,0,0,0,'{}',1),
 (128,16,'company_parent_id','text','Company Parent Id',0,1,1,0,1,1,'{}',7),
 (129,16,'code_mesin','text','Code Mesin',0,1,1,1,1,1,'{\"display\":{\"width\":\"5\",\"id\":\"code_mch\"}}',8),
 (131,16,'supervisor','text','Supervisor',0,0,0,1,0,0,'{}',11),
 (132,16,'operator','text','Operator',0,0,0,1,0,0,'{}',12),
 (133,16,'helper','text','Helper',0,0,0,1,0,0,'{}',13),
 (134,16,'supporting','text','Supporting',0,0,0,1,0,0,'{}',14),
 (135,16,'supervisor_level3','text','Supervisor Level3',0,0,1,0,1,1,'{}',15),
 (136,16,'operator_level2','text','Operator Level2',0,0,1,0,1,1,'{}',16),
 (137,16,'helper_level0','text','Helper Level0',0,0,1,0,1,1,'{}',18),
 (138,16,'support_level0','number','Support Level0',0,0,0,0,0,0,'{}',19),
 (139,16,'total_biaya','text','Total Biaya',0,0,1,0,1,1,'{}',20),
 (140,16,'created_at','timestamp','Created At',0,1,1,0,0,1,'{}',26);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (142,17,'id','text','Id',1,0,0,0,0,0,'{}',1),
 (143,17,'mtc','text','Mtc',0,0,0,0,0,0,'{}',3),
 (144,17,'umum','text','Umum',0,0,0,0,0,0,'{}',4),
 (145,17,'qc','text','Qc',0,0,0,0,0,0,'{}',5),
 (146,17,'prepress','text','Prepress',0,0,0,0,0,0,'{}',6),
 (147,17,'tunjangan_tetap','text','Tunjangan Tetap',0,0,1,1,1,1,'{}',7),
 (148,17,'tunjangan_tidak_tetap','text','Tunjangan Tidak Tetap',0,0,1,1,1,1,'{}',8),
 (149,17,'tunjangan_asuransi','text','Tunjangan Asuransi',0,0,1,1,1,1,'{}',9),
 (150,17,'thr','text','Thr',0,0,1,1,1,1,'{}',10),
 (151,17,'total_biaya_labor','text','Total Biaya Labor',0,0,1,1,1,1,'{}',11),
 (152,17,'company_parent_id','number','Company Parent Id',0,1,1,1,1,0,'{}',12),
 (153,19,'id','text','Id',1,0,0,0,0,0,'{}',1),
 (154,19,'code_rpt_gaji_lain','text','Code Rpt Gaji Lain',0,0,1,0,0,1,'{}',2),
 (165,19,'created_at','timestamp','Created At',0,1,0,0,0,0,'{}',25),
 (166,19,'updated_at','timestamp','Updated At',0,1,0,1,0,0,'{}',27);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (168,17,'created_at','timestamp','Created At',0,1,1,1,1,1,'{}',31),
 (169,17,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',13),
 (170,17,'bulan','text','Bulan',0,0,0,0,0,1,'{}',14),
 (171,20,'id','text','Id',1,0,0,0,0,0,'{}',1),
 (172,20,'code_penjualan','text','Code Penjualan',0,1,1,1,1,1,'{}',2),
 (173,20,'nama_biaya','text','Nama Biaya',0,1,1,1,1,1,'{}',3),
 (174,20,'biaya_pertahun','text','Biaya Pertahun',0,1,1,1,1,1,'{}',4),
 (175,20,'biaya_perbulan','text','Biaya Perbulan',0,1,1,1,1,1,'{}',5),
 (176,20,'created_at','timestamp','Created At',0,1,1,0,0,1,'{}',6),
 (177,20,'updated_at','timestamp','Updated At',0,1,1,1,0,0,'{}',7),
 (178,23,'id','text','Id',1,1,0,0,0,0,'{}',1),
 (179,23,'code_laporan_penjualan','text','Code Laporan Penjualan',0,0,1,0,1,1,'{}',4),
 (180,23,'nama_biaya','text','Nama Biaya',0,1,1,1,1,1,'{}',5),
 (182,23,'biaya_perbulan_bag_penjualan','text','Biaya Perbulan Bag Penjualan',0,0,1,0,1,1,'{}',7),
 (183,23,'created_at','timestamp','Created At',0,1,1,0,0,1,'{}',15);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (184,23,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',8),
 (185,24,'id','text','Id',1,0,0,0,0,0,'{}',1),
 (186,24,'code_biaya_adm_umum','text','Code Biaya Adm Umum',0,1,1,1,1,1,'{}',2),
 (187,24,'biaya_pertahun','text','Biaya Pertahun',0,1,0,0,0,0,'{}',3),
 (188,24,'biaya_perbulan','text','Biaya Perbulan',0,1,0,0,0,0,'{}',4),
 (189,24,'company_parent_id','text','Company Parent Id',0,1,1,1,1,1,'{}',5),
 (190,24,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',6),
 (191,24,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',7),
 (192,25,'id','text','Id',1,0,0,0,0,0,'{}',1),
 (193,25,'code_adm_umum','text','Code Adm Umum',0,0,1,0,0,0,'{}',4),
 (194,25,'nama_biaya','text','Nama Biaya',0,1,1,1,1,1,'{}',5),
 (196,25,'created_at','timestamp','Created At',0,1,1,0,0,1,'{}',16),
 (197,25,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',19),
 (198,25,'company_parent_id','text','Company Parent Id',0,1,1,1,1,1,'{}',7);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (199,7,'deskripsi','text','Deskripsi',0,1,1,1,1,1,'{}',12),
 (200,7,'fungsi_mesin','text','Fungsi Mesin',0,0,0,0,0,1,'{}',13),
 (201,7,'ampere','text','Ampere',0,1,1,1,1,1,'{}',14),
 (202,7,'voltase','text','Voltase',0,1,1,1,1,1,'{}',15),
 (203,7,'updated_at','timestamp','Updated At',0,1,1,0,0,1,'{}',16),
 (204,26,'id','text','Id',1,0,0,0,0,0,'{}',1),
 (205,26,'code_biaya_listrik_bjam','text','Code Biaya Listrik Bjam',0,1,1,1,1,1,'{}',2),
 (206,26,'code_mesin','text','Code Mesin',0,1,1,1,1,1,'{}',3),
 (207,26,'bulan','text','Bulan',0,1,1,1,1,1,'{}',4),
 (208,26,'rata_rata','text','Rata Rata',0,1,1,1,1,1,'{}',5),
 (209,26,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',6),
 (210,26,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',7),
 (211,27,'id','text','Id',1,0,0,0,0,0,'{}',1),
 (212,27,'code_lp_b_l_perbulan','text','Code Lp B L Perbulan',0,1,1,1,1,1,'{}',2),
 (213,27,'lwbp','text','Lwbp',0,1,1,1,1,1,'{}',3);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (214,27,'wbp','text','Wbp',0,1,1,1,1,1,'{}',4),
 (215,27,'bulan','text','Bulan',0,1,1,1,1,1,'{}',5),
 (216,27,'pemakaian','text','Pemakaian',0,1,1,1,1,1,'{}',6),
 (217,27,'biaya','text','Biaya',0,1,1,1,1,1,'{}',7),
 (218,27,'total','text','Total',0,1,1,1,1,1,'{}',8),
 (219,27,'company_parent_id','text','Company Parent Id',0,1,1,1,1,1,'{}',9),
 (220,27,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',10),
 (221,27,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',11),
 (222,17,'cetak','text','Cetak',0,0,0,0,0,0,'{}',15),
 (223,17,'plong','text','Plong',0,0,0,0,0,0,'{}',16),
 (224,17,'potong','text','Potong',0,0,0,0,0,0,'{}',17),
 (225,17,'finishing','text','Finishing',0,0,0,0,0,0,'{}',18),
 (226,28,'id','text','Id',1,1,0,0,0,0,'{}',1),
 (227,28,'code_ctgry_bgn','text','Code Ctgry Bgn',0,1,1,1,1,1,'{}',2),
 (228,28,'nama_bagian','text','Nama Bagian',0,1,1,1,1,1,'{}',3),
 (229,28,'created_at','timestamp','Created At',0,1,1,0,0,1,'{}',4);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (230,28,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',5),
 (231,10,'category_bagian','text','Category Bagian',0,1,1,1,1,1,'{}',16),
 (232,10,'code_mesin','text','Code Mesin',0,1,1,0,1,1,'{}',17),
 (233,10,'penyusutan_belongsto_company_relationship','relationship','company',0,1,1,1,1,1,'{\"model\":\"App\\\\Company\",\"table\":\"company\",\"type\":\"belongsTo\",\"column\":\"company_parent_id\",\"key\":\"id\",\"label\":\"company_name\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',3),
 (234,8,'company_hasmany_penyusutan_relationship','relationship','penyusutan',0,0,0,0,0,0,'{\"model\":\"App\\\\Penyusutan\",\"table\":\"penyusutan\",\"type\":\"hasMany\",\"column\":\"company_parent_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',5),
 (235,7,'mesin_hasmany_penyusutan_relationship','relationship','penyusutan',0,0,0,0,0,1,'{\"model\":\"App\\\\Penyusutan\",\"table\":\"penyusutan\",\"type\":\"hasMany\",\"column\":\"code_penyusutan\",\"key\":\"id\",\"label\":\"code_penyusutan\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',27),
 (236,10,'penyusutan_belongsto_mesin_relationship','relationship','mesin',0,1,1,1,1,1,'{\"model\":\"App\\\\Mesin\",\"table\":\"mesin\",\"type\":\"belongsTo\",\"column\":\"code_mesin\",\"key\":\"id\",\"label\":\"code_mesin\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',7);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (237,10,'penyusutan_belongsto_kategori_bagian_relationship','relationship','kategori_bagian',0,1,1,1,1,1,'{\"model\":\"App\\\\KategoriBagian\",\"table\":\"kategori_bagian\",\"type\":\"belongsTo\",\"column\":\"category_bagian\",\"key\":\"id\",\"label\":\"nama_bagian\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',6),
 (238,28,'kategori_bagian_hasmany_penyusutan_relationship','relationship','penyusutan',0,0,0,0,0,0,'{\"model\":\"App\\\\Penyusutan\",\"table\":\"penyusutan\",\"type\":\"hasMany\",\"column\":\"category_bagian\",\"key\":\"id\",\"label\":\"category_bagian\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',6),
 (239,13,'category_bagian','number','Category Bagian',0,1,1,1,1,1,'{}',31),
 (240,13,'LWBP_perminggu','text','LWBP Perminggu',0,1,1,0,1,1,'{}',14),
 (241,13,'WBP_perminggu','text','WBP Perminggu',0,1,1,0,1,1,'{}',15),
 (242,13,'WBP_faktorkali','text','WBP Faktorkali',0,1,1,1,1,1,'{}',17);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (243,13,'LWBP_faktorkali','text','LWBP Faktorkali',0,1,1,1,1,1,'{}',16),
 (244,13,'listrik_belongsto_company_relationship','relationship','company',0,1,1,1,1,1,'{\"model\":\"App\\\\Company\",\"table\":\"company\",\"type\":\"belongsTo\",\"column\":\"company_parent_id\",\"key\":\"id\",\"label\":\"company_name\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',3),
 (245,13,'listrik_belongsto_mesin_relationship','relationship','mesin',0,1,1,1,1,1,'{\"model\":\"App\\\\Mesin\",\"table\":\"mesin\",\"type\":\"belongsTo\",\"column\":\"code_mesin\",\"key\":\"id\",\"label\":\"code_mesin\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',5),
 (246,13,'listrik_belongsto_kategori_bagian_relationship','relationship','kategori_bagian',0,1,1,1,1,1,'{\"model\":\"App\\\\KategoriBagian\",\"table\":\"kategori_bagian\",\"type\":\"belongsTo\",\"column\":\"category_bagian\",\"key\":\"id\",\"label\":\"nama_bagian\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',4),
 (247,1,'user_belongstomany_role_relationship_1','relationship','roles',0,1,1,1,1,1,'{\"model\":\"App\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"user_roles\",\"pivot\":\"0\",\"taggable\":\"0\"}',13);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (248,1,'email_verified_at','timestamp','Email Verified At',0,1,1,1,1,1,'{}',6),
 (249,14,'mtc_belongsto_mesin_relationship','relationship','mesin',0,1,1,1,1,1,'{\"model\":\"App\\\\Mesin\",\"table\":\"mesin\",\"type\":\"belongsTo\",\"column\":\"code_mesin\",\"key\":\"id\",\"label\":\"code_mesin\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',4),
 (250,14,'company_parent_id','text','Company Parent Id',0,1,1,1,1,1,'{}',14),
 (251,14,'biaya_rata_rata_perbaikan_perbulan','text','Biaya Rata Rata Perbaikan Perbulan',0,0,0,0,0,0,'{}',15),
 (252,14,'biaya_rata_rata_sparepart_perbulan','text','Biaya Rata Rata Sparepart Perbulan',0,0,0,0,0,0,'{}',16),
 (253,14,'biaya_produksi_lain','text','Biaya Produksi Lain',0,0,0,0,0,0,'{}',17),
 (254,14,'category_bagian','text','Category Bagian',0,1,1,1,1,1,'{}',18),
 (255,14,'mtc_belongsto_kategori_bagian_relationship','relationship','kategori_bagian',0,1,1,1,1,1,'{\"model\":\"App\\\\KategoriBagian\",\"table\":\"kategori_bagian\",\"type\":\"belongsTo\",\"column\":\"category_bagian\",\"key\":\"id\",\"label\":\"nama_bagian\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',3),
 (256,14,'mtc_belongsto_company_relationship','relationship','company',0,1,1,1,1,1,'{\"model\":\"App\\\\Company\",\"table\":\"company\",\"type\":\"belongsTo\",\"column\":\"company_parent_id\",\"key\":\"id\",\"label\":\"company_name\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',2);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (257,16,'category_bagian','text','Category Bagian',0,1,1,1,1,1,'{}',9),
 (258,16,'labor_belongsto_mesin_relationship','relationship','mesin',0,1,1,1,1,1,'{\"model\":\"App\\\\Mesin\",\"table\":\"mesin\",\"type\":\"belongsTo\",\"column\":\"code_mesin\",\"key\":\"id\",\"label\":\"code_mesin\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',5),
 (259,16,'labor_belongsto_company_relationship','relationship','company',0,1,1,0,1,1,'{\"model\":\"App\\\\Company\",\"table\":\"company\",\"type\":\"belongsTo\",\"column\":\"company_parent_id\",\"key\":\"id\",\"label\":\"company_name\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',2),
 (260,16,'labor_belongsto_kategori_bagian_relationship','relationship','kategori_bagian',0,1,1,1,1,1,'{\"model\":\"App\\\\KategoriBagian\",\"table\":\"kategori_bagian\",\"type\":\"belongsTo\",\"column\":\"category_bagian\",\"key\":\"id\",\"label\":\"nama_bagian\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',4),
 (261,16,'shift','text','Shift',0,1,1,1,1,1,'{}',10);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (262,17,'gaji_lain_belongsto_company_relationship','relationship','company',0,1,1,1,1,1,'{\"model\":\"App\\\\Company\",\"table\":\"company\",\"type\":\"belongsTo\",\"column\":\"company_parent_id\",\"key\":\"id\",\"label\":\"company_name\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',19),
 (263,17,'gaji','text','Gaji',0,0,1,1,1,1,'{}',20),
 (264,24,'biaya_periode','timestamp','Biaya Periode',0,0,0,0,0,0,'{}',8),
 (265,24,'biaya_administrasi_umum_belongsto_company_relationship','relationship','company',0,1,1,1,1,1,'{\"model\":\"App\\\\Company\",\"table\":\"company\",\"type\":\"belongsTo\",\"column\":\"company_parent_id\",\"key\":\"id\",\"label\":\"company_name\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',9),
 (266,24,'nama_biaya','text','Nama Biaya',0,1,1,1,1,1,'{}',9),
 (275,24,'total_biaya_periode_2018','text','Total Biaya Periode 2018',0,1,1,1,1,1,'{}',10),
 (276,24,'total_biaya_periode_2019','text','Total Biaya Periode 2019',0,1,1,1,1,1,'{}',11);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (277,24,'total_biaya_periode_2020','text','Total Biaya Periode 2020',0,1,1,1,1,1,'{}',12),
 (278,24,'total_bau','text','Total Bau',0,1,1,1,1,1,'{}',13),
 (282,33,'id','text','Id',1,0,0,0,0,0,'{}',1),
 (283,33,'company_parent_id','text','Company Parent Id',0,1,1,1,1,1,'{}',2),
 (284,33,'category_bagian','text','Category Bagian',0,1,1,1,1,1,'{}',3),
 (285,33,'code_mesin','text','Code Mesin',0,1,1,1,1,1,'{}',4),
 (286,33,'listrik','text','Listrik',0,1,1,1,1,1,'{}',5),
 (287,33,'penyusutan','text','Penyusutan',0,1,1,1,1,1,'{}',6),
 (288,33,'labor','text','Labor',0,1,1,1,1,1,'{}',7),
 (289,33,'Maintenance','text','Maintenance',0,1,1,1,1,1,'{}',8),
 (290,33,'gaji_lainnya','text','Gaji Lainnya',0,1,1,1,1,1,'{}',9),
 (291,33,'b_penjualan','text','B Penjualan',0,1,1,1,1,1,'{}',10),
 (292,33,'bau','text','Bau',0,1,1,1,1,1,'{}',11),
 (293,33,'total','text','Total',0,1,1,1,1,1,'{}',12),
 (294,33,'total_perjam','text','Total Perjam',0,1,1,1,1,1,'{}',13);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (295,33,'listrik_persen','text','Listrik Persen',0,1,1,1,1,1,'{}',14),
 (297,33,'labor_persen','text','Labor Persen',0,1,1,1,1,1,'{}',16),
 (298,33,'maintenance_persen','text','Maintenance Persen',0,1,1,1,1,1,'{}',17),
 (299,33,'gaji_lainnya_persen','text','Gaji Lainnya Persen',0,1,1,1,1,1,'{}',18),
 (300,33,'b_penjualan_persen','text','B Penjualan Persen',0,1,1,1,1,1,'{}',19),
 (301,33,'bau_persen','text','Bau Persen',0,1,1,1,1,1,'{}',20),
 (303,33,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',22),
 (304,33,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',23),
 (305,19,'category_bagian','text','Category Bagian',0,0,1,1,1,1,'{}',6),
 (306,19,'tahun1','text','20218',0,0,1,1,1,1,'{}',19),
 (307,19,'tahun2','number','2019',0,0,1,1,1,1,'{}',20),
 (308,19,'tahun3','number','2020',0,0,1,1,1,1,'{}',21),
 (309,19,'total_biaya_laporan_periode','text','Total Biaya Laporan Periode',0,0,0,1,0,0,'{}',22),
 (310,20,'company_parent_id','text','Company Parent Id',0,1,1,1,1,1,'{}',8);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (311,20,'bagian_penjualan_belongsto_company_relationship','relationship','company',0,1,1,1,1,1,'{\"model\":\"App\\\\Company\",\"table\":\"company\",\"type\":\"belongsTo\",\"column\":\"company_parent_id\",\"key\":\"id\",\"label\":\"company_name\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":null}',9),
 (312,19,'laporan_gaji_lain_belongsto_company_relationship','relationship','company',0,1,1,1,1,1,'{\"model\":\"App\\\\Company\",\"table\":\"company\",\"type\":\"belongsTo\",\"column\":\"company_parent_id\",\"key\":\"id\",\"label\":\"company_name\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',3),
 (313,19,'laporan_gaji_lain_belongsto_kategori_bagian_relationship','relationship','kategori_bagian',0,1,1,1,1,1,'{\"model\":\"App\\\\KategoriBagian\",\"table\":\"kategori_bagian\",\"type\":\"belongsTo\",\"column\":\"category_bagian\",\"key\":\"id\",\"label\":\"nama_bagian\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',5),
 (314,19,'company_parent_id','text','Company Parent Id',0,1,1,1,1,1,'{}',7);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (315,19,'code_account','text','Code Account',0,1,1,1,1,1,'{}',8),
 (316,34,'id','text','Id',1,0,0,0,0,0,'{}',1),
 (317,34,'code_mesin','text','Code Mesin',0,0,0,0,0,1,'{}',9),
 (318,34,'company_parent_id','text','Company Parent Id',0,1,1,1,1,1,'{}',10),
 (319,34,'perbaikan_tahun1','text','Perbaikan Tahun1',0,0,1,1,1,1,'{}',11),
 (320,34,'perbaikan_tahun2','text','Perbaikan Tahun2',0,0,1,1,1,1,'{}',12),
 (321,34,'perbaikan_tahun3','text','Perbaikan Tahun3',0,0,1,1,1,1,'{}',13),
 (322,34,'rata_rata_perbaikan_perbulan','text','Rata Rata Perbaikan Perbulan',0,0,1,1,1,1,'{}',22),
 (323,34,'sparepart_tahun1','text','Sparepart Tahun1',0,0,1,1,1,1,'{}',19),
 (324,34,'sparepart_tahun2','text','Sparepart Tahun2',0,0,1,1,1,1,'{}',20),
 (325,34,'sparepart_tahun3','text','Sparepart Tahun3',0,0,1,1,1,1,'{}',21),
 (326,34,'rata_rata_sparepart_perbulan','text','Rata Rata Sparepart Perbulan',0,0,1,1,1,1,'{}',23),
 (327,34,'biaya_produksi_lain','text','Biaya Produksi Lain',0,0,1,1,1,1,'{}',24);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (328,34,'total_biaya_perbulan','text','Total Biaya Perbulan',0,0,1,1,1,1,'{}',25),
 (329,34,'created_at','timestamp','Created At',0,0,1,0,0,0,'{}',26),
 (330,34,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',27),
 (331,34,'deleted_at','timestamp','Deleted At',0,0,0,0,0,0,'{}',30),
 (332,34,'category_bagian','text','Category Bagian',0,1,1,1,1,1,'{}',38),
 (333,34,'rpt_mtc_belongsto_company_relationship','relationship','company',0,1,1,1,1,1,'{\"model\":\"App\\\\Company\",\"table\":\"company\",\"type\":\"belongsTo\",\"column\":\"company_parent_id\",\"key\":\"id\",\"label\":\"company_name\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',3),
 (334,34,'rpt_mtc_belongsto_kategori_bagian_relationship','relationship','kategori_bagian',0,1,1,1,1,1,'{\"model\":\"App\\\\KategoriBagian\",\"table\":\"kategori_bagian\",\"type\":\"belongsTo\",\"column\":\"category_bagian\",\"key\":\"id\",\"label\":\"nama_bagian\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',5),
 (335,34,'rpt_mtc_belongsto_mesin_relationship','relationship','mesin',0,1,1,0,1,1,'{\"model\":\"App\\\\Mesin\",\"table\":\"mesin\",\"type\":\"belongsTo\",\"column\":\"code_mesin\",\"key\":\"id\",\"label\":\"code_mesin\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',6);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (336,34,'code_rpt_mtc','number','Code Rpt Mtc',0,0,0,0,0,0,'{}',2),
 (337,15,'tahun1','text','Tahun1',0,0,1,1,1,1,'{}',5),
 (338,15,'tahun2','text','Tahun2',0,0,1,1,1,1,'{}',8),
 (339,15,'tahun3','text','Tahun3',0,0,1,1,1,1,'{}',9),
 (340,15,'deleted_at','timestamp','Deleted At',0,0,1,0,1,1,'{}',10),
 (341,15,'reason','text','Reason',0,0,0,0,0,0,'{}',11),
 (342,15,'company_parent_id','text','Company Parent Id',0,1,1,1,1,1,'{}',12),
 (343,15,'account_mtc_belongsto_company_relationship','relationship','company',0,1,1,1,1,1,'{\"model\":\"App\\\\Company\",\"table\":\"company\",\"type\":\"belongsTo\",\"column\":\"company_parent_id\",\"key\":\"id\",\"label\":\"company_name\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',2),
 (344,35,'id','text','Id',1,1,0,0,0,0,'{}',1),
 (345,35,'output_perjam','text','Output Perjam',0,0,1,1,1,1,'{}',3),
 (346,35,'persen','text','Persen',0,0,1,0,1,1,'{}',4);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (347,35,'created_at','timestamp','Created At',0,1,1,0,1,1,'{}',9),
 (348,35,'updated_at','timestamp','Updated At',0,1,1,0,0,1,'{}',10),
 (349,35,'code_lop','text','Code Lop',0,0,1,0,0,0,'{}',5),
 (350,35,'listrik_output_belongsto_company_relationship','relationship','company',0,1,1,1,1,1,'{\"model\":\"App\\\\Company\",\"table\":\"company\",\"type\":\"belongsTo\",\"column\":\"company_parent_id\",\"key\":\"id\",\"label\":\"company_name\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',2),
 (351,35,'company_parent_id','text','Company Parent Id',0,1,1,1,1,1,'{}',7),
 (352,23,'tahun1','text','Tahun1',0,0,1,1,1,1,'{}',6),
 (353,23,'tahun2','text','Tahun2',0,0,1,1,1,1,'{}',9),
 (354,23,'tahun3','text','Tahun3',0,0,1,1,1,1,'{}',10),
 (355,25,'tahun1','text','Tahun1',0,0,1,1,1,1,'{}',6),
 (356,25,'tahun2','text','Tahun2',0,0,1,1,1,1,'{}',8),
 (357,25,'tahun3','text','Tahun3',0,0,1,1,1,1,'{}',9);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (358,25,'total_biaya_lp_adm','text','Total Biaya Lp Adm',0,0,1,0,1,1,'{}',11),
 (359,33,'penyusutan_persen','text','Penyusutan Persen',0,1,1,1,1,1,'{}',15),
 (360,33,'total_persen','text','Total Persen',0,1,1,1,1,1,'{}',21),
 (361,33,'code_kalkulasi','text','Code Kalkulasi',0,1,1,1,1,1,'{}',24),
 (362,16,'updated_at','timestamp','Updated At',0,1,0,0,0,0,'{}',27),
 (363,17,'gaji_lain_belongsto_kategori_bagian_relationship','relationship','kategori_bagian',0,1,1,1,1,1,'{\"model\":\"App\\\\KategoriBagian\",\"table\":\"kategori_bagian\",\"type\":\"belongsTo\",\"column\":\"category_bagian\",\"key\":\"id\",\"label\":\"nama_bagian\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',21),
 (364,17,'code_gaji_lain','text','Code Gaji Lain',0,0,0,0,0,0,'{}',22),
 (365,17,'category_bagian','text','Category Bagian',0,1,1,1,1,1,'{}',23),
 (366,8,'deleted_at','timestamp','Deleted At',0,0,0,0,0,0,'{}',5);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (367,36,'id','text','Id',1,1,0,0,0,0,'{}',1),
 (368,36,'nama_kategori_mesin','text','Nama Kategori Mesin',0,1,1,1,1,1,'{}',3),
 (369,36,'created_at','timestamp','Created At',0,1,1,0,0,1,'{}',4),
 (370,36,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',5),
 (371,36,'changed_by','timestamp','Changed By',0,0,0,0,0,0,'{}',6),
 (372,36,'lb8_kategori_mesin_belongsto_company_relationship','relationship','company',0,1,1,1,1,1,'{\"model\":\"App\\\\Company\",\"table\":\"company\",\"type\":\"belongsTo\",\"column\":\"company_parent_id\",\"key\":\"id\",\"label\":\"company_name\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',2),
 (373,36,'company_parent_id','text','Company Parent Id',0,0,0,1,1,0,'{}',7),
 (374,17,'thr_number_formats','number','THR',0,1,0,0,0,0,'{}',24),
 (375,17,'gaji_number_formats','number','GAJI',0,1,0,0,0,0,'{}',25),
 (376,17,'tttap_number_formats','number','TUNJANGAN_TIDAK_TETAP',0,1,0,0,0,0,'{}',26);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (377,17,'ttap_number_formats','number','TUNJANGAN_TETAP',0,1,0,0,0,0,'{}',27),
 (378,17,'tasuransi_number_formats','number','TUNJANGAN_ASURANSI',0,1,0,0,0,0,'{}',28),
 (379,17,'ttllabor_number_formats','number','TOTAL_LABOR',0,1,0,0,0,0,'{}',30),
 (380,17,'tgl_periode','text','Tgl Periode',0,1,0,0,0,0,'{\"format\":\"%Y-%m-%d\"}',29),
 (381,17,'view_tgl_periode','number','PERIODE',0,1,1,1,1,1,'{}',2),
 (382,38,'id','text','Id',1,0,0,0,0,0,'{}',1),
 (383,38,'created_at','timestamp','Dibuat pada',0,1,1,1,0,1,'{}',11),
 (384,38,'updated_at','timestamp','Perubaha pada',0,1,0,0,0,0,'{}',12),
 (385,38,'changed_by','text','Diubah oleh',0,1,1,1,1,1,'{}',13),
 (388,38,'recalculate_status','text','Recalculate Status',0,1,1,1,1,1,'{}',16),
 (389,14,'filter_periode','timestamp','Filter Periode',0,1,1,0,1,1,'{}',19),
 (390,25,'laporan_biaya_administrasi_umum_belongsto_company_relationship','relationship','company',0,1,1,1,1,1,'{\"model\":\"App\\\\Company\",\"table\":\"company\",\"type\":\"belongsTo\",\"column\":\"company_parent_id\",\"key\":\"id\",\"label\":\"company_name\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',2),
 (391,13,'total_insteadofLISTRIK','number','TOTAL LISTRIK',0,1,0,0,0,0,'{}',18);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (392,13,'nilai_cost_perbulan_insteadofLISTRIK','number','NILAI COST/BLN',0,1,0,0,0,0,'{}',19),
 (393,13,'nilai_cost_perbualan_adm_insteadOfListrik','number','NILAI COST/BLN + BIAYA ADM',0,1,0,0,0,0,'{}',34),
 (394,13,'persen_cost_perbulan_insteadOfListrik','number','%',0,1,0,0,0,0,'{}',20),
 (396,10,'peny_perbulan_view','number','Peny. PerBulan',0,1,0,0,0,0,'{}',18),
 (397,10,'p_value_view','number','Purchase Value',0,1,0,0,0,0,'{}',15),
 (398,34,'perbaikanthn1_view','number','perbaikan tahun 2018',0,1,0,0,0,0,'{}',7),
 (399,34,'perbaikanthn2_view','number','perbaikan tahun 2019',0,1,0,0,0,0,'{}',14),
 (400,34,'perbaikanthn3_view','number','perbaikan tahun 2020',0,1,0,0,0,0,'{}',16),
 (401,34,'rtrt_perbaikan_bln_view','number','Rata2 perbaikan Perbulan',0,1,0,0,0,0,'{}',18),
 (402,34,'sprprt_view1','number','sparepart tahun 2018',0,1,1,1,1,1,'{}',28),
 (403,34,'sprprt_view2','number','sparepart tahun 2019',0,1,0,0,0,0,'{}',31);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (404,34,'sprprt_view3','number','sparepart tahun 2020',0,1,0,0,0,0,'{}',33),
 (405,34,'rtrt_sparepart_bln_view','number','Rata2 sparepart Perbulan',0,1,0,0,0,0,'{}',35),
 (406,34,'biaya_produksi_lain_view','number','Biaya produksi lain',0,1,0,0,0,0,'{}',37),
 (407,34,'total_biaya_perbulan_view','number','Total per Bulan',0,1,0,0,0,0,'{}',39),
 (408,15,'total_biaya_lain_produksi_2018','number','2018',0,1,1,0,1,1,'{}',13),
 (409,15,'total_biaya_lain_produksi_2019','number','2019',0,1,1,0,1,1,'{}',14),
 (410,15,'total_biaya_lain_produksi_2020','number','2020',0,1,1,0,1,1,'{}',15),
 (411,15,'total_perbulan_v_bln_biaya_produksi_lain','number','Biaya / Bulan',0,1,1,0,1,1,'{}',16),
 (415,16,'spvlv3_view1','number','Helper (lvl 0)',0,1,0,0,0,0,'{}',21),
 (416,16,'spvlv2_view1','number','Operator (lvl 2)',0,1,0,0,0,0,'{}',22),
 (417,16,'spvlv1_view1','number','Supervisor (lvl 3)',0,1,0,0,0,0,'{}',17),
 (418,16,'spvlv1_view0','number','Supporting (lvl 0)',0,1,0,0,0,1,'{}',23);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (419,16,'total_biaya_views1','number','Total',0,1,0,0,0,0,'{}',25),
 (420,19,'lgj_lain_view1','number','PERIODE 1',0,0,0,0,0,0,'{}',9),
 (421,19,'lgj_lain_view2','number','PERIODE 2',0,0,0,0,0,0,'{}',12),
 (422,19,'lgj_lain_view3','number','PERIODE 3',0,0,0,0,0,0,'{}',15),
 (423,19,'total_lain_view0','number','Total Biaya / periode',0,1,0,0,0,0,'{}',18),
 (424,23,'tahun1_view0','number','2018',0,0,0,0,0,0,'{}',11),
 (425,23,'tahun2_view0','number','2019',0,0,0,0,0,0,'{}',12),
 (426,23,'tahun3_view0','number','2019',0,0,0,0,0,0,'{}',13),
 (427,23,'biaya_perbulan_bag_penjualan_view0','number','Biaya per Bulan',0,1,0,0,0,0,'{}',14),
 (428,25,'th_view1','number','2018',0,0,0,0,0,0,'{}',10),
 (429,25,'th_view2','number','2019',0,0,0,0,0,0,'{}',12),
 (430,25,'th_view3','number','2020',0,0,0,0,0,0,'{}',13),
 (431,25,'total_biaya_lp_adm_view0','number','Total Biaya per Bulan',0,1,0,0,0,0,'{}',14),
 (432,9,'ut_view1','number','Upah Tengah (Rp)',0,1,0,0,0,0,'{}',10);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (433,9,'ua_view2','number','Upah Atas (Rp)',0,1,0,0,0,0,'{}',11),
 (434,9,'uptkcl_view3','number','Upah Terkecil (Rp)',0,1,0,0,0,0,'{}',12),
 (435,35,'prcn_view0','number','%',0,1,1,0,1,1,'{}',6),
 (436,35,'totalpjam_view1','number','Total /Jam',0,1,1,0,0,1,'{}',8),
 (437,1,'alias_roles','number','Nama Alias Access',0,1,0,0,0,0,'{}',12),
 (438,46,'id','text','Id',1,0,0,0,0,0,'{}',1),
 (439,46,'name','text','Name',1,1,1,1,1,1,'{}',2),
 (440,46,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',3),
 (441,46,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',4),
 (442,49,'id','text','Id',1,1,0,0,0,0,'{}',1),
 (443,49,'role_id','text','Role Id',0,1,1,1,1,1,'{}',2),
 (444,49,'name','text','Name',1,1,1,1,1,1,'{}',3),
 (445,49,'email','text','Email',1,1,1,1,1,1,'{}',4),
 (446,49,'avatar','text','Avatar',0,1,1,1,1,1,'{}',5),
 (447,49,'password','text','Password',0,1,1,1,1,1,'{}',6),
 (448,49,'remember_token','text','Remember Token',0,1,1,1,1,1,'{}',7);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (449,49,'settings','text','Settings',0,1,1,1,1,1,'{}',8),
 (450,49,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',9),
 (451,49,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',10),
 (452,50,'id','text','Id',1,0,0,0,0,0,'{}',1),
 (453,50,'before_total_listrik','text','Before Total Listrik',0,0,0,0,0,0,'{}',3),
 (454,50,'total_listrik','text','Total Listrik',0,0,0,0,0,0,'{}',4),
 (455,50,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',5),
 (456,50,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',6),
 (457,50,'changed_by','text','Changed By',0,1,1,1,1,1,'{}',7),
 (458,50,'status','text','Status',0,1,1,1,1,1,'{}',8),
 (459,50,'id_listrik','text','Id Listrik',0,0,0,0,0,0,'{}',9),
 (460,51,'id','text','Id',1,0,0,0,0,0,'{}',1),
 (461,51,'total_penyusutan','text','Total Penyusutan',0,0,0,0,0,0,'{}',7),
 (462,51,'changed_by','text','Changed By',0,1,1,1,1,1,'{}',8),
 (463,51,'created_at','timestamp','Created At',0,0,0,0,0,0,'{}',9);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (464,51,'updated_at','timestamp','Updated At',0,1,1,0,0,0,'{}',10),
 (465,51,'id_penyusutan','text','Id Penyusutan',0,0,0,0,0,0,'{}',11),
 (466,52,'id','text','Id',1,0,0,0,0,0,'{}',1),
 (467,52,'total_tr_mtc_total','text','Total Tr Mtc Total',0,1,1,1,1,1,'{}',2),
 (468,52,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',3),
 (469,52,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',4),
 (470,52,'id_tr_mtc','text','Id Tr Mtc',0,1,1,1,1,1,'{}',5),
 (471,52,'changed_by','text','Changed By',0,1,1,1,1,1,'{}',6),
 (472,54,'id','text','Id',1,0,0,0,0,0,'{}',1),
 (473,54,'id_rpt_mtc_total','text','Id Rpt Mtc Total',0,0,0,0,0,0,'{}',9),
 (474,54,'changed_by','text','Changed By',0,1,1,1,1,1,'{}',8),
 (475,54,'created_at','timestamp','Created At',0,0,1,0,0,0,'{}',10),
 (476,54,'updated_at','timestamp','Updated At',0,1,0,0,0,0,'{}',11),
 (477,54,'total_tr_mtc','text','Total Tr Mtc',0,0,0,0,0,0,'{}',12),
 (478,55,'id','text','Id',1,0,0,0,0,0,'{}',1);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (479,55,'id_acc_mtc','text','Id Acc Mtc',0,0,0,0,0,0,'{}',4),
 (480,55,'acc_mtc_total','text','Acc Mtc Total',0,0,0,0,0,0,'{}',5),
 (481,55,'created_at','timestamp','Created At',0,0,0,0,0,0,'{}',6),
 (482,55,'updated_at','timestamp','Updated At',0,1,1,0,0,0,'{}',7),
 (483,55,'changed_by','text','Changed By',0,1,1,1,1,1,'{}',10),
 (490,57,'id','text','Id',1,0,0,0,0,0,'{}',1),
 (491,57,'id_lp_gaji_lain','text','Id Lp Gaji Lain',0,0,0,0,0,0,'{}',4),
 (492,57,'changed_by','text','Changed By',0,1,1,0,0,0,'{}',5),
 (493,57,'created_at','timestamp','Created At',0,0,0,0,0,0,'{}',6),
 (494,57,'updated_at','timestamp','Updated At',0,1,1,0,0,0,'{}',7),
 (495,57,'total_gj_lain','text','Total Gj Lain',0,0,0,0,0,0,'{}',8),
 (496,58,'id','text','Id',1,0,0,0,0,0,'{}',1),
 (497,58,'id_bgpenj','text','Id Bgpenj',0,0,0,0,0,0,'{}',3),
 (498,58,'total_bgpenjualan','text','Total Bgpenjualan',0,0,0,0,0,0,'{}',4),
 (499,58,'changed_by','text','Changed By',0,1,1,1,1,1,'{}',5);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (500,58,'created_at','timestamp','Created At',0,0,1,0,0,0,'{}',6),
 (501,58,'updated_at','timestamp','Updated At',0,1,1,0,0,0,'{}',7),
 (502,23,'laporan_bagian_penjualan_belongsto_company_relationship','relationship','company',0,1,0,1,0,0,'{\"model\":\"App\\\\Company\",\"table\":\"company\",\"type\":\"belongsTo\",\"column\":\"company_parent_id\",\"key\":\"id\",\"label\":\"company_name\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',2),
 (503,23,'company_parent_id','text','Company Parent Id',0,0,0,1,0,0,'{}',19),
 (504,59,'id','text','Id',1,0,0,0,0,0,'{}',1),
 (505,59,'changed_by','text','Changed By',0,1,1,1,1,1,'{}',3),
 (506,59,'id_bau','text','Id Bau',0,0,0,0,0,0,'{}',4),
 (507,59,'total_bau','text','Total Bau',0,0,0,0,0,0,'{}',5),
 (508,59,'created_at','timestamp','Created At',0,0,1,0,0,0,'{}',6),
 (509,59,'updated_at','timestamp','Updated At',0,1,1,0,0,0,'{}',7),
 (510,60,'id','text','Id',1,1,0,0,0,0,'{}',1);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (511,60,'company','text','Company',0,1,1,0,1,1,'{}',4),
 (512,60,'code_mesin','text','Code Mesin',0,0,0,0,0,0,'{}',10),
 (513,60,'category_bagian','text','Category Bagian',0,1,1,0,1,1,'{}',11),
 (514,60,'id_listrik','text','Total Biaya Listrik',0,1,1,0,1,1,'{}',12),
 (515,60,'id_penyusutan','text','Total Biaya Penyusutan',0,1,1,0,1,1,'{}',13),
 (516,60,'id_labor','text','Total Biaya Labor',0,1,1,0,1,1,'{}',14),
 (517,60,'id_mtc','text','Total Biaya MTC',0,1,1,0,1,1,'{}',15),
 (518,60,'id_bprodlain_insteadof_mtc','text','Total Biaya Produksi Lain',0,1,1,0,1,1,'{}',16),
 (519,60,'id_gajilain','text','Total Biaya Gaji Lainnya',0,1,1,0,1,1,'{}',17),
 (520,60,'id_bgoenjualan','text','Total Biaya Bagian Penjualan',0,1,1,0,1,1,'{}',18),
 (521,60,'id_bau','text','Total Biaya Administrasi Umum',0,1,1,0,1,1,'{}',19),
 (523,60,'total_semua_biaya','text','Total Semua Biaya',0,1,1,0,1,1,'{}',20),
 (524,60,'total_semua_biaya_perjam','text','Total Semua Biaya Perjam',0,1,1,0,1,1,'{}',21);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (525,60,'total_tanpa_penyusutan_n_mtc','text','Total Tanpa Penyusutan N Mtc',0,1,1,0,1,1,'{}',22),
 (526,60,'total_tanpa_penyusutan_n_mtc_perjam','text','Total Tanpa Penyusutan N Mtc Perjam',0,1,1,0,1,1,'{}',23),
 (527,60,'total_tanpa_penyusutan','text','Total Tanpa Penyusutan',0,1,1,0,1,1,'{}',24),
 (528,60,'total_tanpa_penyusutan_perjam','text','Total Tanpa Penyusutan Perjam',0,1,1,0,1,1,'{}',25),
 (529,60,'total_tanpa_mtc','text','Total Tanpa Mtc',0,1,1,0,1,1,'{}',26),
 (530,60,'total_tanpa_mtc_perjam','text','Total Tanpa Mtc Perjam',0,1,1,0,1,1,'{}',27),
 (531,60,'created_at','timestamp','Created At',0,1,1,0,0,1,'{}',28),
 (532,60,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',29),
 (533,60,'group_mesin','text','Group Mesin',0,1,1,0,0,1,'{}',9),
 (534,60,'listrik_fk','text','Listrik UNIQID',0,1,0,0,0,0,'{}',3),
 (535,13,'listrikperjam','text','Listrikperjam',0,0,0,0,0,0,'{}',28),
 (536,13,'listrik_belongsto_listrik_output_relationship','relationship','listrik_output',0,0,0,0,0,0,'{\"model\":\"App\\\\ListrikOutput\",\"table\":\"listrik_output\",\"type\":\"belongsTo\",\"column\":\"listrikperjam\",\"key\":\"id\",\"label\":\"persen\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',10);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (537,61,'id','text','Id',1,0,0,0,0,0,'{}',1),
 (538,61,'lwbp','text','Lwbp',0,1,1,1,1,1,'{}',2),
 (539,61,'wbp','text','Wbp',0,1,1,1,1,1,'{}',3),
 (540,61,'Intervalmingguan','text','Intervalmingguan',0,1,1,1,1,1,'{}',4),
 (541,61,'created_at','timestamp','Created At',0,1,1,0,0,1,'{}',5),
 (542,61,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',6),
 (543,60,'all_recalculate_belongsto_lb8_kategori_mesin_relationship','relationship','group_mesin',0,1,1,0,0,0,'{\"model\":\"App\\\\Lb8KategoriMesin\",\"table\":\"lb8_kategori_mesin\",\"type\":\"belongsTo\",\"column\":\"group_mesin\",\"key\":\"id\",\"label\":\"nama_kategori_mesin\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',7),
 (544,38,'listrik','text','Listrik',0,1,1,1,1,1,'{}',14),
 (545,38,'penyusutan','text','Penyusutan',0,1,1,1,1,1,'{}',15),
 (546,38,'labor','text','Labor',0,1,1,1,1,1,'{}',17),
 (547,38,'mtc','text','Mtc',0,1,1,1,1,1,'{}',18);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (548,38,'biaya_produksi_lain','text','Biaya Produksi Lain',0,1,1,1,1,1,'{}',19),
 (549,38,'biaya_administrasi_umum','text','Biaya Administrasi Umum',0,1,1,1,1,1,'{}',20),
 (550,38,'gaji_lainnya','text','Gaji Lainnya',0,1,1,1,1,1,'{}',21),
 (551,38,'bagian_penjualan','text','Bagian Penjualan',0,1,1,1,1,1,'{}',22),
 (552,38,'total_semua_biaya','text','Total Semua Biaya',0,1,1,1,1,1,'{}',23),
 (553,38,'total_semua_biaya_perjam','text','Total Semua Biaya Perjam',0,1,1,1,1,1,'{}',24),
 (554,38,'total_tanpa_penyusutan_n_mtc','text','Total Tanpa Penyusutan N Mtc',0,1,1,1,1,1,'{}',25),
 (555,38,'total_tanpa_penyusutan_n_mtc_perjam','text','Total Tanpa Penyusutan N Mtc Perjam',0,1,1,1,1,1,'{}',26),
 (556,38,'total_tanpa_penyusutan','text','Total Tanpa Penyusutan',0,1,1,1,1,1,'{}',27),
 (557,38,'total_tanpa_penyusutan_perjam','text','Total Tanpa Penyusutan Perjam',0,1,1,1,1,1,'{}',29),
 (558,38,'total_tanpa_mtc','text','Total Tanpa Mtc',0,1,1,1,1,1,'{}',30);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (559,38,'total_tanpa_mtc_perjam','text','Total Tanpa Mtc Perjam',0,1,1,1,1,1,'{}',31),
 (560,38,'id_logs','text','Recalculate UNIQUEID',0,1,1,1,1,1,'{}',2),
 (561,38,'code_mesin','text','Code Mesin',0,1,1,1,1,1,'{}',9),
 (562,38,'category_bagian','text','Category Bagian',0,1,1,1,1,1,'{}',10),
 (563,38,'company','text','Company',0,1,1,1,1,1,'{}',8),
 (564,38,'history_log_recalculate_belongsto_company_relationship','relationship','company',0,1,1,1,1,1,'{\"model\":\"App\\\\Company\",\"table\":\"company\",\"type\":\"belongsTo\",\"column\":\"company\",\"key\":\"id\",\"label\":\"company_name\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',3),
 (565,38,'history_log_recalculate_belongsto_kategori_bagian_relationship','relationship','kategori_bagian',0,1,1,1,1,1,'{\"model\":\"App\\\\KategoriBagian\",\"table\":\"kategori_bagian\",\"type\":\"belongsTo\",\"column\":\"category_bagian\",\"key\":\"id\",\"label\":\"nama_bagian\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',6),
 (566,38,'history_log_recalculate_belongsto_mesin_relationship','relationship','mesin',0,1,1,1,1,1,'{\"model\":\"App\\\\Mesin\",\"table\":\"mesin\",\"type\":\"belongsTo\",\"column\":\"code_mesin\",\"key\":\"id\",\"label\":\"fungsi_mesin\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',4);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (567,38,'dibuat_oleh','text','Dibuat Oleh',0,1,1,1,1,1,'{}',7),
 (568,60,'all_recalculate_belongsto_company_relationship','relationship','company',0,1,1,0,0,0,'{\"model\":\"App\\\\Company\",\"table\":\"company\",\"type\":\"belongsTo\",\"column\":\"company\",\"key\":\"id\",\"label\":\"company_name\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',5),
 (569,60,'all_recalculate_belongsto_kategori_bagian_relationship','relationship','kategori_bagian',0,1,1,0,0,0,'{\"model\":\"App\\\\KategoriBagian\",\"table\":\"kategori_bagian\",\"type\":\"belongsTo\",\"column\":\"category_bagian\",\"key\":\"id\",\"label\":\"nama_bagian\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',6),
 (570,60,'all_recalculate_hasone_mesin_relationship','relationship','mesin',0,1,1,0,0,0,'{\"model\":\"App\\\\Mesin\",\"table\":\"mesin\",\"type\":\"belongsTo\",\"column\":\"code_mesin\",\"key\":\"id\",\"label\":\"code_mesin\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',8),
 (571,60,'all_recalculate_belongsto_listrik_output_relationship','relationship','listrik_output',0,0,0,0,0,0,'{\"model\":\"App\\\\ListrikOutput\",\"table\":\"listrik_output\",\"type\":\"belongsTo\",\"column\":\"listrik_fk\",\"key\":\"id\",\"label\":\"persen\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',32);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (572,38,'history_log_recalculate_belongsto_mesin_relationship_1','relationship','group mesin',0,1,1,1,1,1,'{\"model\":\"App\\\\Lb8KategoriMesin\",\"table\":\"lb8_kategori_mesin\",\"type\":\"belongsTo\",\"column\":\"group_mesin\",\"key\":\"id\",\"label\":\"nama_kategori_mesin\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',5),
 (573,38,'group_mesin','text','Group Mesin',0,1,1,1,1,1,'{}',28),
 (574,13,'assumptionshift_lwbp1','text','Assumptionshift Lwbp1',0,0,0,1,0,0,'{}',30),
 (575,13,'assumption_itval_perminggu','text','Assumption Itval Perminggu',0,0,0,1,0,0,'{}',32),
 (576,13,'assumption_wbp','text','Assumption Wbp',0,0,0,1,0,0,'{}',35),
 (577,13,'assumptionshift_lwbp2','text','Assumptionshift Lwbp2',0,0,0,1,0,0,'{}',36),
 (578,13,'assumptionshift_lwbp3','text','Assumptionshift Lwbp3',0,0,0,1,0,0,'{}',37),
 (579,16,'jumlah_mesin_ditanggani','text','Jumlah Mesin Ditanggani (di mesin tertentu)',0,1,0,1,0,0,'{}',6),
 (580,7,'group_mesin_id','text','Group Mesin Id',0,1,1,1,1,1,'{}',17);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (581,7,'listrik_perjam_id','text','Listrik Perjam Id',0,0,0,0,0,1,'{}',20),
 (582,7,'category_bagian_id','text','Category Bagian Id',0,1,1,1,1,1,'{}',23),
 (583,7,'company_id','text','Company Id',0,1,1,1,1,1,'{}',24),
 (584,7,'asumsi_id','text','Asumsi Id',0,1,1,1,1,1,'{}',25),
 (585,7,'mesin_belongsto_lb8_kategori_mesin_relationship','relationship','Group mesin',0,1,1,1,1,1,'{\"model\":\"App\\\\Lb8KategoriMesin\",\"table\":\"lb8_kategori_mesin\",\"type\":\"belongsTo\",\"column\":\"group_mesin_id\",\"key\":\"id\",\"label\":\"nama_kategori_mesin\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',7),
 (586,7,'mesin_belongsto_listrik_output_relationship','relationship','Kapasitas mesin',0,0,0,0,0,0,'{\"model\":\"App\\\\ListrikOutput\",\"table\":\"listrik_output\",\"type\":\"belongsTo\",\"column\":\"listrik_perjam_id\",\"key\":\"id\",\"label\":\"output_perjam\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',11),
 (587,7,'mesin_belongsto_kategori_bagian_relationship','relationship','kategori_bagian',0,1,1,1,1,1,'{\"model\":\"App\\\\KategoriBagian\",\"table\":\"kategori_bagian\",\"type\":\"belongsTo\",\"column\":\"category_bagian_id\",\"key\":\"id\",\"label\":\"nama_bagian\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',6);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (588,7,'mesin_belongsto_company_relationship','relationship','company',0,1,1,1,1,1,'{\"model\":\"App\\\\Company\",\"table\":\"company\",\"type\":\"belongsTo\",\"column\":\"company_id\",\"key\":\"id\",\"label\":\"company_name\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',2),
 (589,7,'mesin_belongsto_lwbp_master_relationship','relationship','Shift',0,1,1,1,1,1,'{\"model\":\"App\\\\LwbpMaster\",\"table\":\"lwbp_master\",\"type\":\"belongsTo\",\"column\":\"asumsi_id\",\"key\":\"id\",\"label\":\"shift\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',9),
 (590,61,'shift','text','Shift',0,1,1,1,1,1,'{}',7),
 (591,13,'group_mesin','text','Group Mesin',0,1,1,1,1,1,'{}',33),
 (592,13,'listrik_belongsto_lb8_kategori_mesin_relationship','relationship','group mesin',0,1,1,1,1,1,'{\"model\":\"App\\\\Lb8KategoriMesin\",\"table\":\"lb8_kategori_mesin\",\"type\":\"belongsTo\",\"column\":\"group_mesin\",\"key\":\"id\",\"label\":\"nama_kategori_mesin\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',6),
 (594,7,'on_off','checkbox','Mesin aktif / non - aktif',0,0,0,1,1,0,'{\"0\":\"Non - Aktif\",\"1\":\"Aktif\",\"checked\":true}',18);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (595,7,'display_on_off_machine','number','Machine status',0,1,0,0,0,0,'{}',8),
 (596,7,'faktor_kali_lwbp','text','Faktor Kali Lwbp',0,1,1,1,1,1,'{}',19),
 (597,7,'faktor_kali_wbp','text','Faktor Kali Wbp',0,1,1,1,1,1,'{}',22),
 (598,54,'rpt_mtc_total_belongsto_kategori_bagian_relationship','relationship','kategori_bagian',0,1,1,1,1,1,'{\"model\":\"App\\\\KategoriBagian\",\"table\":\"kategori_bagian\",\"type\":\"belongsTo\",\"column\":\"categori_id\",\"key\":\"id\",\"label\":\"nama_bagian\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',3),
 (599,54,'rpt_mtc_total_belongsto_company_relationship','relationship','company',0,1,1,1,1,1,'{\"model\":\"App\\\\Company\",\"table\":\"company\",\"type\":\"belongsTo\",\"column\":\"company_parent_id\",\"key\":\"id\",\"label\":\"company_name\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',2),
 (600,54,'table_coloumn','text','Table Coloumn',0,1,1,1,1,1,'{}',7);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (601,54,'history_latest','text','History Latest',0,1,1,1,1,1,'{}',6),
 (602,54,'before','text','Before',0,1,1,1,1,1,'{}',5),
 (603,54,'categori_id','text','Categori Id',0,1,1,1,1,1,'{}',13),
 (604,54,'company_parent_id','text','Company Parent Id',0,1,1,1,1,1,'{}',14),
 (605,54,'code_mesin','text','Code Mesin',0,1,1,1,1,1,'{}',15),
 (606,54,'rpt_mtc_total_hasone_mesin_relationship','relationship','mesin',0,1,1,1,1,1,'{\"model\":\"App\\\\Mesin\",\"table\":\"mesin\",\"type\":\"belongsTo\",\"column\":\"code_mesin\",\"key\":\"id\",\"label\":\"code_mesin\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',4),
 (608,54,'lstrik_output','text','Lstrik Output',0,0,0,0,0,0,'{}',13),
 (609,51,'history_latest','text','History Latest',0,1,1,1,1,1,'{}',6),
 (610,51,'before','text','Before',0,1,1,1,1,1,'{}',5),
 (611,51,'table_column','text','Table Column',0,1,1,1,1,1,'{}',12),
 (612,51,'penyusutan_total_belongsto_company_relationship','relationship','company',0,1,1,1,1,1,'{\"model\":\"App\\\\Company\",\"table\":\"company\",\"type\":\"belongsTo\",\"column\":\"company_parent_id\",\"key\":\"id\",\"label\":\"company_name\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',2);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (613,51,'penyusutan_total_belongsto_kategori_bagian_relationship','relationship','kategori_bagian',0,1,1,1,1,1,'{\"model\":\"App\\\\KategoriBagian\",\"table\":\"kategori_bagian\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"nama_bagian\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',4),
 (614,51,'penyusutan_total_belongsto_mesin_relationship','relationship','mesin',0,1,1,1,1,1,'{\"model\":\"App\\\\Mesin\",\"table\":\"mesin\",\"type\":\"belongsTo\",\"column\":\"code_mesin\",\"key\":\"id\",\"label\":\"code_mesin\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',3),
 (615,51,'code_mesin','text','Code Mesin',0,1,1,1,1,1,'{}',13),
 (616,51,'category_id','text','Category Id',0,1,1,1,1,1,'{}',14),
 (617,51,'company_parent_id','text','Company Parent Id',0,1,1,1,1,1,'{}',15),
 (618,55,'history_latest','text','History Latest',0,1,1,1,1,1,'{}',8);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (619,55,'before','text','Before',0,1,1,1,1,1,'{}',9),
 (620,55,'table_column','text','Table Column',0,1,1,1,1,1,'{}',3),
 (629,67,'id','text','Id',1,0,0,0,0,0,'{}',1),
 (630,67,'history_latest','text','History Latest',0,1,1,1,1,1,'{}',5),
 (631,67,'company_id','text','Company Id',0,1,1,1,1,1,'{}',6),
 (632,67,'before','text','Before',0,1,1,1,1,1,'{}',7),
 (633,67,'table_column','text','Table Column',0,1,1,1,1,1,'{}',8),
 (634,67,'created_at','timestamp','Created At',0,0,0,1,1,1,'{}',9),
 (635,67,'updated_at','timestamp','Updated At',0,1,1,0,0,0,'{}',10),
 (636,67,'changed_by','text','Changed By',0,1,1,1,1,1,'{}',12),
 (637,67,'laborttal_belongsto_company_relationship','relationship','company',0,1,1,1,1,1,'{\"model\":\"App\\\\Company\",\"table\":\"company\",\"type\":\"belongsTo\",\"column\":\"company_id\",\"key\":\"id\",\"label\":\"company_name\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',2),
 (638,67,'laborttal_belongsto_kategori_bagian_relationship','relationship','kategori_bagian',0,1,1,1,1,1,'{\"model\":\"App\\\\KategoriBagian\",\"table\":\"kategori_bagian\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"nama_bagian\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',4);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (639,67,'laborttal_belongsto_mesin_relationship','relationship','mesin',0,1,1,1,1,1,'{\"model\":\"App\\\\Mesin\",\"table\":\"mesin\",\"type\":\"belongsTo\",\"column\":\"code_mesin\",\"key\":\"id\",\"label\":\"code_mesin\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',3),
 (640,67,'category_id','text','Category Id',0,1,1,1,1,1,'{}',11),
 (641,67,'code_mesin','text','Code Mesin',0,1,1,1,1,1,'{}',13),
 (642,57,'history_latest','text','History Latest',0,1,1,1,1,1,'{}',9),
 (643,57,'before','text','Before',0,1,1,1,1,1,'{}',10),
 (644,57,'table_column','text','Table Column',0,1,1,1,1,1,'{}',11),
 (645,57,'company_id','text','Company Id',0,1,1,1,1,1,'{}',12),
 (646,57,'category_id','text','Category Id',0,1,1,1,1,1,'{}',13),
 (647,57,'gji_lain_total_belongsto_company_relationship','relationship','company',0,1,1,1,1,1,'{\"model\":\"App\\\\Company\",\"table\":\"company\",\"type\":\"belongsTo\",\"column\":\"company_id\",\"key\":\"id\",\"label\":\"company_name\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',2),
 (648,57,'gji_lain_total_belongsto_kategori_bagian_relationship','relationship','kategori_bagian',0,1,1,1,1,1,'{\"model\":\"App\\\\KategoriBagian\",\"table\":\"kategori_bagian\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"nama_bagian\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',3);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (649,58,'b_penjualan_total_belongsto_company_relationship','relationship','company',0,1,1,1,1,1,'{\"model\":\"App\\\\Company\",\"table\":\"company\",\"type\":\"belongsTo\",\"column\":\"company_id\",\"key\":\"id\",\"label\":\"company_name\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',2),
 (650,58,'history_latest','text','History Latest',0,1,1,1,1,1,'{}',8),
 (651,58,'before','text','Before',0,1,1,1,1,1,'{}',9),
 (652,58,'table_column','text','Table Column',0,1,1,1,1,1,'{}',10),
 (653,58,'company_id','text','Company Id',0,1,1,1,1,1,'{}',11),
 (654,59,'bau_total_belongsto_company_relationship','relationship','company',0,1,1,1,1,1,'{\"model\":\"App\\\\Company\",\"table\":\"company\",\"type\":\"belongsTo\",\"column\":\"company_id\",\"key\":\"id\",\"label\":\"company_name\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',2),
 (655,59,'table_column','text','Table Column',0,1,1,1,1,1,'{}',8);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (656,59,'history_latest','text','History Latest',0,1,1,1,1,1,'{}',9),
 (657,59,'before','text','Before',0,1,1,1,1,1,'{}',10),
 (658,59,'company_id','text','Company Id',0,1,1,1,1,1,'{}',11),
 (659,50,'listrik_total_belongsto_company_relationship','relationship','company',0,1,1,1,1,1,'{\"model\":\"App\\\\Company\",\"table\":\"company\",\"type\":\"belongsTo\",\"column\":\"company_id\",\"key\":\"id\",\"label\":\"company_name\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',2),
 (660,50,'before','text','Before',0,1,1,1,1,1,'{}',10),
 (661,50,'table_column','text','Table Column',0,1,1,1,1,1,'{}',11),
 (662,50,'history_latest','text','History Latest',0,1,1,1,1,1,'{}',12),
 (663,50,'company_id','text','Company Id',0,1,1,1,1,1,'{}',13),
 (683,74,'id','text','Id',1,0,0,0,0,0,'{}',1),
 (684,74,'changed_by','text','Changed By',0,1,1,1,1,1,'{}',6),
 (685,74,'table_column','text','Table Column',0,1,1,1,1,1,'{}',7);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (686,74,'before','text','Before',0,1,1,1,1,1,'{}',8),
 (687,74,'history_latest','text','History Latest',0,1,1,1,1,1,'{}',9),
 (688,74,'created_at','timestamp','Created At',0,0,0,0,0,0,'{}',10),
 (689,74,'updated_at','timestamp','Updated At',0,1,1,0,0,0,'{}',11),
 (690,74,'hlogs_listrik_belongsto_company_relationship','relationship','company',0,1,1,1,1,1,'{\"model\":\"App\\\\Company\",\"table\":\"company\",\"type\":\"belongsTo\",\"column\":\"company_id\",\"key\":\"id\",\"label\":\"company_name\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',2),
 (691,74,'hlogs_listrik_belongsto_kategori_bagian_relationship','relationship','kategori_bagian',0,1,1,1,1,1,'{\"model\":\"App\\\\KategoriBagian\",\"table\":\"kategori_bagian\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"nama_bagian\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',4),
 (692,74,'hlogs_listrik_belongsto_lb8_kategori_mesin_relationship','relationship','lb8_kategori_mesin',0,1,1,1,1,1,'{\"model\":\"App\\\\Lb8KategoriMesin\",\"table\":\"lb8_kategori_mesin\",\"type\":\"belongsTo\",\"column\":\"group_mesin\",\"key\":\"id\",\"label\":\"nama_kategori_mesin\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',3);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (693,74,'hlogs_listrik_belongsto_mesin_relationship','relationship','mesin',0,1,1,1,1,1,'{\"model\":\"App\\\\Mesin\",\"table\":\"mesin\",\"type\":\"belongsTo\",\"column\":\"code_mesin\",\"key\":\"id\",\"label\":\"code_mesin\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',5),
 (694,74,'company_id','text','Company Id',0,1,1,1,1,1,'{}',12),
 (695,74,'code_mesin','text','Code Mesin',0,1,1,1,1,1,'{}',13),
 (696,74,'group_mesin','text','Group Mesin',0,1,1,1,1,1,'{}',14),
 (697,74,'category_id','text','Category Id',0,1,1,1,1,1,'{}',15),
 (698,75,'id','text','Id',1,0,0,0,0,0,'{}',1),
 (699,75,'table_column','text','Table Column',0,1,1,1,1,1,'{}',6),
 (700,75,'history_latest','text','History Latest',0,1,1,1,1,1,'{}',7),
 (701,75,'before','text','Before',0,1,1,1,1,1,'{}',8),
 (703,75,'group_mesin','text','Group Mesin',0,1,1,1,1,1,'{}',10),
 (704,75,'code_mesin','text','Code Mesin',0,1,1,1,1,1,'{}',11);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (705,75,'category_id','text','Category Id',0,1,1,1,1,1,'{}',12),
 (706,75,'changed_by','text','Changed By',0,1,1,1,1,1,'{}',13),
 (707,75,'created_by','text','Created By',0,1,1,1,1,1,'{}',14),
 (708,75,'created_at','timestamp','Created At',0,0,0,0,0,0,'{}',15),
 (709,75,'updated_at','timestamp','Updated At',0,1,1,0,0,0,'{}',16),
 (710,75,'history_recalculate_temporary_belongsto_company_relationship','relationship','company',0,1,1,1,1,1,'{\"model\":\"App\\\\Company\",\"table\":\"company\",\"type\":\"belongsTo\",\"column\":\"company\",\"key\":\"id\",\"label\":\"company_name\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',2),
 (711,75,'history_recalculate_temporary_belongsto_kategori_bagian_relationship','relationship','kategori_bagian',0,1,1,1,1,1,'{\"model\":\"App\\\\KategoriBagian\",\"table\":\"kategori_bagian\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"nama_bagian\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',3),
 (712,75,'history_recalculate_temporary_belongsto_mesin_relationship','relationship','mesin',0,1,1,1,1,1,'{\"model\":\"App\\\\Mesin\",\"table\":\"mesin\",\"type\":\"belongsTo\",\"column\":\"code_mesin\",\"key\":\"id\",\"label\":\"code_mesin\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',4);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (713,75,'history_recalculate_temporary_belongsto_lb8_kategori_mesin_relationship','relationship','group mesin',0,1,1,1,1,1,'{\"model\":\"App\\\\Lb8KategoriMesin\",\"table\":\"lb8_kategori_mesin\",\"type\":\"belongsTo\",\"column\":\"group_mesin\",\"key\":\"id\",\"label\":\"nama_kategori_mesin\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',5),
 (714,75,'company','text','Company',0,1,1,1,1,1,'{}',5),
 (717,50,'create_by_with','text','Create By With',0,1,1,1,1,1,'{}',13),
 (718,74,'created_by','text','Created By',0,1,1,1,1,1,'{}',12),
 (719,51,'created_by','text','Created By',0,1,1,1,1,1,'{}',13),
 (720,54,'created_by','text','Created By',0,1,1,1,1,1,'{}',14),
 (721,55,'created_by','text','Created By',0,1,1,1,1,1,'{}',11),
 (722,55,'company_parent_id','text','Company Parent Id',0,1,1,1,1,1,'{}',12),
 (723,55,'account_mtc_total_belongsto_company_relationship','relationship','company',0,1,1,1,1,1,'{\"model\":\"App\\\\Company\",\"table\":\"company\",\"type\":\"belongsTo\",\"column\":\"company_parent_id\",\"key\":\"id\",\"label\":\"company_name\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',2),
 (724,67,'created_by','text','Created By',0,1,1,1,1,1,'{}',11);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (725,57,'created_by','text','Created By',0,1,1,1,1,1,'{}',12),
 (726,58,'created_by','text','Created By',0,1,1,1,1,1,'{}',11),
 (727,59,'created_by','text','Created By',0,1,1,1,1,1,'{}',11),
 (728,76,'id','text','Id',1,0,0,0,0,0,'{}',1),
 (729,76,'table_column','text','Table Column',0,1,1,1,1,1,'{}',5),
 (730,76,'before','text','Before',0,1,1,1,1,1,'{}',6),
 (731,76,'history_latest','text','History Latest',0,1,1,1,1,1,'{}',7),
 (732,76,'changed_by','text','Changed By',0,1,1,1,1,1,'{}',8),
 (733,76,'created_by','text','Created By',0,1,1,1,1,1,'{}',9),
 (734,76,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',10),
 (735,76,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',11),
 (736,76,'company_id','text','Company Id',0,1,1,1,1,1,'{}',12),
 (737,76,'group_mesin','text','Group Mesin',0,1,1,1,1,1,'{}',14),
 (738,76,'code_mesin','text','Code Mesin',0,1,1,1,1,1,'{}',16),
 (739,76,'mesin_total_belongsto_company_relationship','relationship','company',0,1,1,1,1,1,'{\"model\":\"App\\\\Company\",\"table\":\"company\",\"type\":\"belongsTo\",\"column\":\"company_id\",\"key\":\"id\",\"label\":\"company_name\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',2);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (740,76,'mesin_total_belongsto_lb8_kategori_mesin_relationship','relationship','lb8_kategori_mesin',0,0,1,1,1,1,'{\"model\":\"App\\\\Lb8KategoriMesin\",\"table\":\"lb8_kategori_mesin\",\"type\":\"belongsTo\",\"column\":\"group_mesin\",\"key\":\"id\",\"label\":\"nama_kategori_mesin\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',4),
 (741,76,'mesin_total_belongsto_mesin_relationship','relationship','mesin',0,1,1,1,1,1,'{\"model\":\"App\\\\Mesin\",\"table\":\"mesin\",\"type\":\"belongsTo\",\"column\":\"code_mesin\",\"key\":\"id\",\"label\":\"code_mesin\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',3),
 (742,76,'history_group_mesin','text','History Group Mesin',0,1,1,1,1,1,'{}',13),
 (743,76,'before_group_mesin','text','Before Group Mesin',0,1,1,1,1,1,'{}',15),
 (744,76,'mesin_total_belongsto_lb8_kategori_mesin_relationship_1','relationship','group_mesin_latest',0,1,1,1,1,1,'{\"model\":\"App\\\\Lb8KategoriMesin\",\"table\":\"lb8_kategori_mesin\",\"type\":\"belongsTo\",\"column\":\"history_group_mesin\",\"key\":\"id\",\"label\":\"nama_kategori_mesin\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',18),
 (745,76,'mesin_total_belongsto_lb8_kategori_mesin_relationship_2','relationship','group_mesin_before',0,1,1,1,1,1,'{\"model\":\"App\\\\Lb8KategoriMesin\",\"table\":\"lb8_kategori_mesin\",\"type\":\"belongsTo\",\"column\":\"before_group_mesin\",\"key\":\"id\",\"label\":\"nama_kategori_mesin\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',17);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (746,77,'id','text','Id',1,0,0,0,0,0,'{}',1),
 (747,77,'before','text','Before',0,1,1,1,1,1,'{}',3),
 (748,77,'table_column','text','Table Column',0,1,1,1,1,1,'{}',4),
 (749,77,'history_latest','text','History Latest',0,1,1,1,1,1,'{}',5),
 (750,77,'changed_by','text','Changed By',0,1,1,1,1,1,'{}',6),
 (751,77,'created_by','text','Created By',0,1,1,1,1,1,'{}',7),
 (752,77,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',8),
 (753,77,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',9),
 (754,77,'group_mesin_log_belongsto_company_relationship','relationship','company',0,1,1,1,1,1,'{\"model\":\"App\\\\Company\",\"table\":\"company\",\"type\":\"belongsTo\",\"column\":\"company_id\",\"key\":\"id\",\"label\":\"company_name\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',2),
 (755,77,'company_id','text','Company Id',0,1,1,1,1,1,'{}',11),
 (756,77,'group_mesin_log_belongsto_lb8_kategori_mesin_relationship','relationship','group_mesin_after',0,1,1,1,1,1,'{\"model\":\"App\\\\Lb8KategoriMesin\",\"table\":\"lb8_kategori_mesin\",\"type\":\"belongsTo\",\"column\":\"history_latest\",\"key\":\"id\",\"label\":\"nama_kategori_mesin\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',13);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (757,77,'group_mesin_log_belongsto_lb8_kategori_mesin_relationship_1','relationship','group_mesin_before',0,1,1,1,1,1,'{\"model\":\"App\\\\Lb8KategoriMesin\",\"table\":\"lb8_kategori_mesin\",\"type\":\"belongsTo\",\"column\":\"before\",\"key\":\"id\",\"label\":\"nama_kategori_mesin\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',14),
 (758,77,'column_bfr_group_mesin','text','Name Before Group Mesin',0,1,1,1,1,1,'{}',10),
 (759,77,'column_afr_group_mesin','text','Name after Group Mesin',0,1,1,1,1,1,'{}',12),
 (760,79,'id','text','Id',1,0,0,0,0,0,'{}',1),
 (761,79,'table_column','text','Table Column',0,1,1,1,1,1,'{}',2),
 (762,79,'before_bagian','text','Before Bagian',0,1,1,1,1,1,'{}',3),
 (763,79,'history_bagian','text','History Bagian',0,1,1,1,1,1,'{}',4),
 (764,79,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',5),
 (765,79,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',6);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (766,79,'created_by','text','Created By',0,1,1,1,1,1,'{}',7),
 (767,79,'changed_by','text','Changed By',0,1,1,1,1,1,'{}',8),
 (776,81,'id','text','Id',1,0,0,0,0,0,'{}',1),
 (777,81,'table_column','text','Table Column',0,1,1,1,1,1,'{}',2),
 (778,81,'before','text','Before',0,1,1,1,1,1,'{}',3),
 (779,81,'history_latest','text','History Latest',0,1,1,1,1,1,'{}',4),
 (780,81,'created_by','text','Created By',0,1,1,1,1,1,'{}',5),
 (781,81,'changed_by','text','Changed By',0,1,1,1,1,1,'{}',6),
 (782,81,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',7),
 (783,81,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',8),
 (784,60,'begin_at','timestamp','Begin At',0,1,1,1,1,1,'{}',30),
 (785,60,'ended_at','timestamp','Ended At',0,1,1,1,1,1,'{}',31),
 (786,60,'slugprefixclose','number','TRANSACTION STATUS',0,1,1,1,1,1,'{}',2),
 (787,13,'begin_at','timestamp','Begin At',0,1,1,0,0,0,'{}',38),
 (788,13,'ended_at','timestamp','Ended At',0,1,1,0,0,0,'{}',39);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (789,13,'slugprefixstatus','number','TRANSACTION STATUS',0,1,1,0,0,0,'{}',2),
 (790,7,'lokasi_mesin','number','Lokasi Mesin',0,0,0,0,0,0,'{}',4),
 (791,82,'id','text','Id',1,0,0,0,0,0,'{}',1),
 (792,82,'faktor_lwbp','text','Faktor Lwbp',0,1,1,1,1,1,'{}',3),
 (793,82,'faktor_wbp','text','Faktor Wbp',0,1,1,1,1,1,'{}',4),
 (794,82,'created_at','timestamp','Created At',0,1,1,0,0,1,'{}',5),
 (795,82,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',6),
 (796,82,'status_periode','text','Status Periode',0,1,1,0,0,0,'{}',7),
 (797,82,'begin_at','timestamp','Begin At',0,1,1,0,0,0,'{}',8),
 (798,82,'ended_at','timestamp','Ended At',0,1,1,0,0,0,'{}',9),
 (799,82,'company_name','text','Company Name',0,1,1,1,1,1,'{}',2),
 (800,7,'mesin_belongsto_location_machine_relationship','relationship','Lokasi Mesin',0,1,0,0,0,0,'{\"model\":\"App\\\\LocationMachine\",\"table\":\"location_machine\",\"type\":\"belongsTo\",\"column\":\"location_mch_id\",\"key\":\"id\",\"label\":\"company_name\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',3),
 (801,7,'location_mch_id','number','Location Mch Id',0,0,0,1,1,0,'{}',21);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (802,7,'capacity_mch','text','Kapasitas Mesin',0,1,1,1,1,1,'{}',10),
 (803,10,'ended_at','timestamp','Ended At',0,0,0,0,0,0,'{}',5),
 (804,10,'view_transaction_ended','number','TRANSACTION STATUS',0,1,0,0,0,0,'{}',4),
 (805,19,'ended_at','timestamp','Ended At',0,1,0,0,0,0,'{}',23),
 (806,19,'TRANSACTION_DATE_V','number','TRANSACTION_STATUS',0,1,0,0,0,0,'{}',4),
 (807,16,'ended_at','timestamp','Ended At',0,1,1,0,0,1,'{}',24),
 (808,16,'TRANSACTION_DATE_V','number','TRANSACTION STATUS',0,1,1,0,1,1,'{}',3),
 (809,25,'ended_at','timestamp','Ended At',0,1,0,0,0,0,'{}',15),
 (810,25,'TRANSACTION_DATE_V','number','TRANSACTION STATUS',0,1,1,1,1,1,'{}',3),
 (811,34,'ended_at','timestamp','Ended At',0,0,0,0,0,0,'{}',36),
 (812,34,'TRANSACTION_DATE_V','number','TRANSACTION STATUS',0,1,0,0,0,0,'{}',4),
 (813,23,'ended_at','timestamp','Ended At',0,1,1,1,1,1,'{}',16),
 (814,23,'TRANSACTION_DATE_V','number','TRANSACTION STATUS',0,1,0,0,0,0,'{}',3);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (815,7,'mesin_belongsto_location_machine_relationship_1','relationship','Lokasi mesin',0,1,1,1,1,1,'{\"model\":\"App\\\\LocationMachine\",\"table\":\"location_machine\",\"type\":\"belongsTo\",\"column\":\"location_mch_id\",\"key\":\"id\",\"label\":\"company_name\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',28),
 (816,16,'custom_field_kategori','number','ctg_mch',0,0,0,0,0,0,'{}',25),
 (817,19,'SALDO_AP1','number','SALDO AP1',0,1,1,1,1,1,'{}',10),
 (818,19,'SALDO_AP2','number','SALDO AP2',0,1,0,0,0,0,'{}',13),
 (819,19,'SALDO_AP3','number','SALDO AP3',0,1,0,0,0,0,'{}',16),
 (820,19,'thn_periode_1','text','Thn Periode 1',0,0,0,0,0,0,'{}',24),
 (821,19,'thn_periode_2','text','Thn Periode 2',0,0,0,0,0,0,'{}',26),
 (822,19,'thn_periode_3','text','Thn Periode 3',0,0,0,0,0,0,'{}',28),
 (823,19,'vp_1','number','PERIODE TAHUN 1',0,1,1,1,1,1,'{}',11),
 (824,19,'vp_2','number','PERIODE TAHUN 2',0,1,0,0,0,0,'{}',14);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (825,19,'vp_3','number','PERIODE TAHUN 3',0,1,0,0,0,0,'{}',17),
 (826,23,'SALDO_AP1','number','SALDO AP1',0,1,0,0,0,0,'{}',17),
 (827,23,'SALDO_AP2','number','SALDO AP2',0,1,0,0,0,0,'{}',20),
 (828,23,'SALDO_AP3','number','SALDO AP3',0,1,0,0,0,0,'{}',22),
 (829,23,'thn_periode_3','text','Thn Periode 3',0,0,0,0,0,0,'{}',24),
 (830,23,'thn_periode_2','text','Thn Periode 2',0,0,0,0,0,0,'{}',25),
 (831,23,'thn_periode_1','number','Thn Periode 1',0,0,0,0,0,0,'{}',26),
 (832,23,'vp_1','number','PERIODE TAHUN 1',0,1,0,0,0,0,'{}',18),
 (833,23,'vp_2','number','PERIODE TAHUN 2',0,1,0,0,0,0,'{}',21),
 (834,23,'vp_3','number','PERIODE TAHUN 3',0,1,0,0,0,0,'{}',23),
 (835,25,'SALDO_AP1','number','SALDO AP1',0,1,0,0,0,0,'{}',17),
 (836,25,'SALDO_AP2','number','SALDO AP2',0,1,0,0,0,0,'{}',20),
 (837,25,'SALDO_AP3','number','SALDO AP3',0,1,0,0,0,0,'{}',22),
 (838,25,'thn_periode_1','text','Thn Periode 1',0,0,0,0,0,0,'{}',24);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (839,25,'thn_periode_2','text','Thn Periode 2',0,0,0,0,0,0,'{}',25),
 (840,25,'thn_periode_3','text','Thn Periode 3',0,0,0,0,0,0,'{}',26),
 (841,25,'vp_1','number','PERIODE TAHUN 1',0,1,0,0,0,0,'{}',18),
 (842,25,'vp_2','number','PERIODE TAHUN 2',0,1,0,0,0,0,'{}',21),
 (843,25,'vp_3','number','PERIODE TAHUN 3',0,1,0,0,0,0,'{}',23),
 (844,83,'id','text','Id',1,0,0,0,0,0,'{}',1),
 (845,83,'nama_group_labor','text','Nama Group Labor',0,1,1,1,1,1,'{}',2),
 (846,83,'group_machine','text','Group Machine',0,0,0,0,0,0,'{}',3),
 (847,83,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',4),
 (848,83,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',5),
 (849,34,'thn_sparepart_periode_1','number','SPAREPART P1',0,1,0,0,0,0,'{}',29),
 (850,34,'thn_sparepart_periode_2','number','SPAREPART P2',0,1,0,0,0,0,'{}',32),
 (851,34,'thn_sparepart_periode_3','number','SPAREPART P3',0,1,0,0,0,0,'{}',34),
 (852,34,'thn_perbaikan_periode_1','number','PERBAIKAN P1',0,1,1,1,1,1,'{}',8);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (853,34,'thn_perbaikan_periode_2','number','PERBAIKAN P2',0,1,1,1,1,1,'{}',15),
 (854,34,'thn_perbaikan_periode_3','number','PERBAIKAN P3',0,1,1,1,1,1,'{}',17);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`data_types`
--

DROP TABLE IF EXISTS `data_types`;
CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`data_types`
--

/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` (`id`,`name`,`slug`,`display_name_singular`,`display_name_plural`,`icon`,`model_name`,`policy_name`,`controller`,`description`,`generate_permissions`,`server_side`,`details`,`created_at`,`updated_at`) VALUES 
 (1,'users','users','User','Users','voyager-person','App\\User',NULL,'App\\Http\\Controllers\\KOP\\VoyagerUserController',NULL,1,1,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2021-01-19 08:01:47','2021-03-05 07:25:22'),
 (3,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2021-01-19 08:01:47','2021-02-09 09:46:15'),
 (4,'categories','categories','Category','Categories','voyager-categories','TCG\\Voyager\\Models\\Category',NULL,'','',1,0,NULL,'2021-01-19 08:02:15','2021-01-19 08:02:15'),
 (5,'posts','posts','Post','Posts','voyager-news','TCG\\Voyager\\Models\\Post','TCG\\Voyager\\Policies\\PostPolicy','','',1,0,NULL,'2021-01-19 08:02:15','2021-01-19 08:02:15');
INSERT INTO `data_types` (`id`,`name`,`slug`,`display_name_singular`,`display_name_plural`,`icon`,`model_name`,`policy_name`,`controller`,`description`,`generate_permissions`,`server_side`,`details`,`created_at`,`updated_at`) VALUES 
 (6,'pages','pages','Page','Pages','voyager-file-text','TCG\\Voyager\\Models\\Page',NULL,'','',1,0,NULL,'2021-01-19 08:02:15','2021-01-19 08:02:15'),
 (7,'mesin','mesin','Mesin','Mesins','voyager-credit-card','App\\Mesin',NULL,'App\\Http\\Controllers\\KOP\\VoyagerMachineController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-01-20 01:41:07','2021-04-28 23:55:16'),
 (8,'company','company','Company','Companies','voyager-company','App\\Company',NULL,'App\\Http\\Controllers\\KOP\\VoyagerCompanyController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-01-20 02:11:14','2021-03-26 15:43:09'),
 (9,'job_level','job-level','Job Level','Job Levels',NULL,'App\\JobLevel',NULL,'App\\Http\\Controllers\\KOP\\VoyagerJobLevelController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-01-20 02:18:50','2021-04-23 14:51:54');
INSERT INTO `data_types` (`id`,`name`,`slug`,`display_name_singular`,`display_name_plural`,`icon`,`model_name`,`policy_name`,`controller`,`description`,`generate_permissions`,`server_side`,`details`,`created_at`,`updated_at`) VALUES 
 (10,'penyusutan','penyusutan','Penyusutan','Penyusutans','voyager-double-down','App\\Penyusutan',NULL,'App\\Http\\Controllers\\KOP\\VoyagerPenyusutanController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-01-20 02:38:51','2021-04-13 08:52:23'),
 (13,'listrik','listrik','Listrik','Listriks','voyager-wand','App\\Listrik',NULL,'App\\Http\\Controllers\\KOP\\VoyagerListrikController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2021-01-20 03:25:14','2021-04-06 23:28:52'),
 (14,'mtc','mtc','Mtc','Mtcs','voyager-tools','App\\Mtc',NULL,'App\\Http\\Controllers\\KOP\\VoyagerMTcController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-01-20 03:42:50','2021-03-04 01:54:48'),
 (15,'account_mtc','account-mtc','Account Mtc','Account Mtcs','voyager-book','App\\AccountMtc',NULL,'App\\Http\\Controllers\\KOP\\VoyagerAccountMtcController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-01-20 03:48:09','2021-03-16 13:47:46');
INSERT INTO `data_types` (`id`,`name`,`slug`,`display_name_singular`,`display_name_plural`,`icon`,`model_name`,`policy_name`,`controller`,`description`,`generate_permissions`,`server_side`,`details`,`created_at`,`updated_at`) VALUES 
 (16,'labor','labor','Labor','Labors','voyager-documentation','App\\Labor',NULL,'App\\Http\\Controllers\\KOP\\VoyagerLaborController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-01-20 04:15:08','2021-04-19 11:30:41'),
 (17,'gaji_lain','gaji-lain','Gaji Lain','Gaji Lains','voyager-dollar','App\\GajiLain',NULL,'App\\Http\\Controllers\\KOP\\VoyagerGajiLainController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-01-20 04:41:32','2021-03-02 03:43:33'),
 (19,'laporan_gaji_lain','laporan-gaji-lain','Laporan Gaji Lain','Laporan Gaji Lains','voyager-documentation','App\\LaporanGajiLain',NULL,'App\\Http\\Controllers\\KOP\\VoyagerLaporanGajiLainController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-01-20 04:51:27','2021-04-19 15:13:59'),
 (20,'bagian_penjualan','bagian-penjualan','Bagian Penjualan','Bagian Penjualans','voyager-credit-card','App\\BagianPenjualan',NULL,'App\\Http\\Controllers\\KOP\\VoyagerBagianPenjualanController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-01-20 06:06:00','2021-01-27 02:33:47');
INSERT INTO `data_types` (`id`,`name`,`slug`,`display_name_singular`,`display_name_plural`,`icon`,`model_name`,`policy_name`,`controller`,`description`,`generate_permissions`,`server_side`,`details`,`created_at`,`updated_at`) VALUES 
 (21,'laporan_bagian_gaji_bulanan','laporan-bagian-gaji-bulanan','Laporan Bagian Gaji Bulanan','Laporan Bagian Gaji Bulanans',NULL,'App\\LaporanBagianGajiBulanan',NULL,'App\\Http\\Controllers\\KOP\\VoyagerLaporanBagianPenjualanController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2021-01-20 06:14:29','2021-01-20 06:14:29'),
 (23,'laporan_bagian_penjualan','laporan-bagian-penjualan','Laporan Bagian Penjualan','Laporan Bagian Penjualans','voyager-receipt','App\\LaporanBagianPenjualan',NULL,'App\\Http\\Controllers\\KOP\\VoyagerLaporanBagianPenjualanController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-01-20 06:17:55','2021-04-19 15:33:55'),
 (24,'biaya_administrasi_umum','biaya-administrasi-umum','Biaya Administrasi Umum','Biaya Administrasi Umums','voyager-credit-cards','App\\BiayaAdministrasiUmum',NULL,'App\\Http\\Controllers\\KOP\\VoyagerBiayaAdministrasiUmumController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-01-20 06:29:32','2021-01-27 03:45:06');
INSERT INTO `data_types` (`id`,`name`,`slug`,`display_name_singular`,`display_name_plural`,`icon`,`model_name`,`policy_name`,`controller`,`description`,`generate_permissions`,`server_side`,`details`,`created_at`,`updated_at`) VALUES 
 (25,'laporan_biaya_administrasi_umum','laporan-biaya-administrasi-umum','Laporan Biaya Administrasi Umum','Laporan Biaya Administrasi Umums','voyager-book','App\\LaporanBiayaAdministrasiUmum',NULL,'App\\Http\\Controllers\\KOP\\VoyagerLaporanBiayaAdministrasiUmumController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-01-20 06:39:36','2021-04-19 15:56:46'),
 (26,'laporan_biaya_listrik_bulan_jam','laporan-biaya-listrik-bulan-jam','Laporan Biaya Listrik Bulan Jam','Laporan Biaya Listrik Bulan Jams','voyager-documentation','App\\LaporanBiayaListrikBulanJam',NULL,'App\\Http\\Controllers\\KOP\\VoyagerLaporanBiayaListrikBjamController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2021-01-20 07:44:31','2021-01-20 07:44:31'),
 (27,'laporan_biaya_listrik_perbulan','laporan-biaya-listrik-perbulan','Laporan Biaya Listrik Perbulan','Laporan Biaya Listrik Perbulans','voyager-documentation','App\\LaporanBiayaListrikPerbulan',NULL,'App\\Http\\Controllers\\KOP\\VoyagerLaporanBiayaListrikPerbulan',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2021-01-20 07:57:20','2021-01-20 07:57:20');
INSERT INTO `data_types` (`id`,`name`,`slug`,`display_name_singular`,`display_name_plural`,`icon`,`model_name`,`policy_name`,`controller`,`description`,`generate_permissions`,`server_side`,`details`,`created_at`,`updated_at`) VALUES 
 (28,'kategori_bagian','kategori-bagian','Kategori Bagian','Kategori Bagians','voyager-categories','App\\KategoriBagian',NULL,'App\\Http\\Controllers\\KOP\\VoyagerCategoryBagianController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-01-20 08:33:54','2021-03-10 09:07:34'),
 (33,'total_kalkulasi','total-kalkulasi','Total Kalkulasi','Total Kalkulasis','voyager-treasure-open','App\\TotalCalc',NULL,'App\\Http\\Controllers\\KOP\\VoyagerTotalKalkulasiController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-01-22 05:39:17','2021-02-02 07:37:03'),
 (34,'rpt_mtc','rpt-mtc','Rpt Mtc','Rpt Mtcs','voyager-file-text','App\\RptMtc',NULL,'App\\Http\\Controllers\\KOP\\VoyagerRptMTController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-01-29 01:18:08','2021-04-20 15:00:25'),
 (35,'listrik_output','listrik-output','Listrik Output','Listrik Outputs','voyager-forward','App\\ListrikOutput',NULL,'App\\Http\\Controllers\\KOP\\VoyagerListrikOutputPerjamController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-01-29 06:19:39','2021-03-29 16:19:31');
INSERT INTO `data_types` (`id`,`name`,`slug`,`display_name_singular`,`display_name_plural`,`icon`,`model_name`,`policy_name`,`controller`,`description`,`generate_permissions`,`server_side`,`details`,`created_at`,`updated_at`) VALUES 
 (36,'lb8_kategori_mesin','lb8-kategori-mesin','Lb8 Kategori Mesin','Lb8 Kategori Mesins','voyager-harddrive','App\\Lb8KategoriMesin',NULL,'App\\Http\\Controllers\\KOP\\VoyagerLb8KategoriMesinController',NULL,1,0,'{\"order_column\":\"updated_at\",\"order_display_column\":\"nama_kategori_mesin\",\"order_direction\":\"desc\",\"default_search_key\":\"id\",\"scope\":null}','2021-02-24 11:55:45','2021-04-16 09:52:34'),
 (38,'history_log_recalculate','history-log-recalculate','History Log Recalculate','History Log Recalculates','voyager-data','App\\HistoryLogRecalculate',NULL,'App\\Http\\Controllers\\KOP\\VoyagerHIstoryLogCalculateController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-03-02 09:14:15','2021-03-10 11:51:08'),
 (46,'menus','menus','Menu','Menus','voyager-helm','TCG\\Voyager\\Models\\Menu',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2021-03-05 06:42:15','2021-03-05 06:42:15');
INSERT INTO `data_types` (`id`,`name`,`slug`,`display_name_singular`,`display_name_plural`,`icon`,`model_name`,`policy_name`,`controller`,`description`,`generate_permissions`,`server_side`,`details`,`created_at`,`updated_at`) VALUES 
 (49,'admins','admins','Admin','Admins',NULL,'App\\Models\\Admin',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-03-05 07:05:45','2021-03-22 16:30:19'),
 (50,'listrik_total','listrik-total','Listrik Total','Listrik Totals',NULL,'App\\ListrikTotal',NULL,'App\\Http\\Controllers\\KOP\\VoyagerListrikTotalController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-03-06 23:51:00','2021-03-31 08:16:36'),
 (51,'penyusutan_total','penyusutan-total','Penyusutan Total','Penyusutan Totals',NULL,'App\\PenyusutanTotal',NULL,'App\\Http\\Controllers\\KOP\\VoyagerPenyusutanTotalController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-03-07 02:31:44','2021-03-31 09:02:15'),
 (52,'transaksi_mtc_total','transaksi-mtc-total','Transaksi Mtc Total','Transaksi Mtc Totals',NULL,'App\\TransaksiMtcTotal',NULL,'App\\Http\\Controllers\\KOP\\VoyagerTrTotalMTController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2021-03-07 11:14:28','2021-03-07 11:14:28');
INSERT INTO `data_types` (`id`,`name`,`slug`,`display_name_singular`,`display_name_plural`,`icon`,`model_name`,`policy_name`,`controller`,`description`,`generate_permissions`,`server_side`,`details`,`created_at`,`updated_at`) VALUES 
 (54,'rpt_mtc_total','rpt-mtc-total','Rpt Mtc Total','Rpt Mtc Totals',NULL,'App\\RPTMtcTotal',NULL,'App\\Http\\Controllers\\KOP\\VoyagerTransaksiMTController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-03-07 11:48:48','2021-03-31 09:06:57'),
 (55,'account_mtc_total','account-mtc-total','Account Mtc Total','Account Mtc Totals',NULL,'App\\AccountMtcTotal',NULL,'App\\Http\\Controllers\\KOP\\VoyagerAccMtcTotalController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-03-07 11:58:11','2021-03-31 09:15:59'),
 (57,'gji_lain_total','gji-lain-total','Gji Lain Total','Gji Lain Totals',NULL,'App\\GjiLainTotal',NULL,'App\\Http\\Controllers\\KOP\\VoyagerGajiLainTotalController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-03-07 12:35:00','2021-03-31 09:31:12'),
 (58,'b_penjualan_total','b-penjualan-total','B Penjualan Total','B Penjualan Totals',NULL,'App\\BPenjualanTotal',NULL,'App\\Http\\Controllers\\KOP\\VoyagerbgpenjTotalController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-03-07 12:51:15','2021-03-31 09:35:04');
INSERT INTO `data_types` (`id`,`name`,`slug`,`display_name_singular`,`display_name_plural`,`icon`,`model_name`,`policy_name`,`controller`,`description`,`generate_permissions`,`server_side`,`details`,`created_at`,`updated_at`) VALUES 
 (59,'bau_total','bau-total','Bau Total','Bau Totals',NULL,'App\\BauTotal',NULL,'App\\Http\\Controllers\\KOP\\VoyagerTotalBauController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-03-07 13:15:43','2021-03-31 09:37:28'),
 (60,'all_recalculate','all-recalculate','All Recalculate','All Recalculates','voyager-refresh','App\\AllRecalculate',NULL,'App\\Http\\Controllers\\KOP\\VoyagerRecalController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-03-07 13:42:19','2021-04-06 15:15:05'),
 (61,'lwbp_master','lwbp-master','Lwbp Master','Lwbp Masters',NULL,'App\\LwbpMaster',NULL,'App\\Http\\Controllers\\KOP\\VoyagerLWBPController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-03-08 08:47:59','2021-03-16 08:25:20'),
 (67,'laborttals','laborttals','Laborttal','Laborttals',NULL,'App\\LaborTtal',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-03-29 14:26:13','2021-03-31 09:21:02');
INSERT INTO `data_types` (`id`,`name`,`slug`,`display_name_singular`,`display_name_plural`,`icon`,`model_name`,`policy_name`,`controller`,`description`,`generate_permissions`,`server_side`,`details`,`created_at`,`updated_at`) VALUES 
 (74,'hlogs_listriks','hlogs-listriks','Hlogs Listrik','Hlogs Listriks',NULL,'App\\HistoryLogRecalculate',NULL,'App\\Http\\Controllers\\KOP\\VoyagerRecalculateListrikHistoryController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-03-30 08:51:12','2021-03-31 08:49:04'),
 (75,'history_recalculate_temporary','history-recalculate-temporary','History Recalculate Temporary','History Recalculate Temporaries',NULL,'App\\HistoryRecalculateTemporary',NULL,'App\\Http\\Controllers\\KOP\\VoyagerTemporaryRecalculateHistoryController',NULL,1,1,'{\"order_column\":\"group_mesin\",\"order_display_column\":\"history_latest\",\"order_direction\":\"desc\",\"default_search_key\":\"group_mesin\",\"scope\":null}','2021-03-30 13:52:36','2021-03-30 16:49:00'),
 (76,'mesin_total','mesin-total','Mesin Total','Mesin Totals',NULL,'App\\MesinTotal',NULL,'App\\Http\\Controllers\\KOP\\VoyagerHistoryMachineController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-03-31 09:51:58','2021-03-31 11:10:38');
INSERT INTO `data_types` (`id`,`name`,`slug`,`display_name_singular`,`display_name_plural`,`icon`,`model_name`,`policy_name`,`controller`,`description`,`generate_permissions`,`server_side`,`details`,`created_at`,`updated_at`) VALUES 
 (77,'group_mesin_logs','group-mesin-logs','Group Mesin Log','Group Mesin Logs','voyager-forward','App\\GroupMesinLog',NULL,'App\\Http\\Controllers\\KOP\\VoyagerGroupMesinLogsController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-03-31 13:22:01','2021-03-31 14:08:36'),
 (79,'kategoribagian_logs','kategoribagian-logs','Kategoribagian Log','Kategoribagian Logs',NULL,'App\\KategoriBagianLog',NULL,'App\\Http\\Controllers\\KOP\\VoyagerKategoriBagianHistoryController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-03-31 14:19:03','2021-03-31 14:27:36'),
 (81,'gaji_karyawan_logs','gaji-karyawan-logs','Gaji Karyawan Log','Gaji Karyawan Logs',NULL,'App\\GajiKaryawanLog',NULL,'App\\Http\\Controllers\\KOP\\VoyagerGajiKaryawanLogsController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-03-31 14:40:39','2021-03-31 14:48:09'),
 (82,'location_machine','location-machine','Location Machine','Location Machines','voyager-location','App\\LocationMachine',NULL,'App\\Http\\Controllers\\KOP\\VoyagerLocationMachineController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-04-12 15:06:12','2021-04-27 15:46:51');
INSERT INTO `data_types` (`id`,`name`,`slug`,`display_name_singular`,`display_name_plural`,`icon`,`model_name`,`policy_name`,`controller`,`description`,`generate_permissions`,`server_side`,`details`,`created_at`,`updated_at`) VALUES 
 (83,'special_labor','special-labor','Special Labor','Special Labors','voyager-markdown','App\\SpecialLabor',NULL,'App\\Http\\Controllers\\KOP\\VoyagerSpecialLaborController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-04-20 11:24:32','2021-04-22 08:18:26');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`failed_jobs`
--

/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`gaji_karyawan_logs`
--

DROP TABLE IF EXISTS `gaji_karyawan_logs`;
CREATE TABLE `gaji_karyawan_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_column` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `before` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `history_latest` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `changed_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`gaji_karyawan_logs`
--

/*!40000 ALTER TABLE `gaji_karyawan_logs` DISABLE KEYS */;
INSERT INTO `gaji_karyawan_logs` (`id`,`table_column`,`before`,`history_latest`,`created_by`,`changed_by`,`created_at`,`updated_at`) VALUES 
 (1,'0','0','0','0',NULL,'2021-03-31 14:46:43','2021-03-31 14:46:43'),
 (2,'gaji_karyawan.added.event','JK','JK','Admin',NULL,'2021-03-31 14:48:28','2021-03-31 14:48:28'),
 (3,'job_level.upah_terkecil','738278','231231',NULL,'Admin','2021-03-31 14:54:51','2021-03-31 14:54:51'),
 (4,'job_level.jabatan','JK','GHHH',NULL,'Admin','2021-03-31 14:55:53','2021-03-31 14:55:53'),
 (5,'job_level.LV','82','31',NULL,'Admin','2021-03-31 14:55:53','2021-03-31 14:55:53'),
 (6,'job_level.upah_terkecil','231231','31231',NULL,'Admin','2021-03-31 14:55:53','2021-03-31 14:55:53'),
 (7,'job_level.upah_tengah','87817387','512313',NULL,'Admin','2021-03-31 14:55:53','2021-03-31 14:55:53'),
 (8,'job_level.updah_atas','8718','51231',NULL,'Admin','2021-03-31 14:55:53','2021-03-31 14:55:53'),
 (9,'job_level.upah_tengah','4200479','4201000',NULL,'EDP Administrator','2021-04-28 10:14:32','2021-04-28 10:14:32');
/*!40000 ALTER TABLE `gaji_karyawan_logs` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`gaji_lain`
--

DROP TABLE IF EXISTS `gaji_lain`;
CREATE TABLE `gaji_lain` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mtc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `umum` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prepress` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tunjangan_tetap` double DEFAULT NULL,
  `tunjangan_tidak_tetap` double DEFAULT NULL,
  `tunjangan_asuransi` double DEFAULT NULL,
  `thr` double DEFAULT NULL,
  `total_biaya_labor` double DEFAULT NULL,
  `company_parent_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `bulan` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cetak` int(11) DEFAULT NULL,
  `plong` int(11) DEFAULT NULL,
  `potong` int(11) DEFAULT NULL,
  `finishing` int(11) DEFAULT NULL,
  `gaji` double DEFAULT NULL,
  `code_gaji_lain` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_bagian` int(10) unsigned DEFAULT NULL,
  `thr_number_formats` int(11) DEFAULT NULL,
  `gaji_number_formats` int(11) DEFAULT NULL,
  `tttap_number_formats` int(11) DEFAULT NULL,
  `ttap_number_formats` int(11) DEFAULT NULL,
  `tasuransi_number_formats` int(11) DEFAULT NULL,
  `ttllabor_number_formats` int(11) DEFAULT NULL,
  `tgl_periode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `view_tgl_periode` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`gaji_lain`
--

/*!40000 ALTER TABLE `gaji_lain` DISABLE KEYS */;
INSERT INTO `gaji_lain` (`id`,`mtc`,`umum`,`qc`,`prepress`,`tunjangan_tetap`,`tunjangan_tidak_tetap`,`tunjangan_asuransi`,`thr`,`total_biaya_labor`,`company_parent_id`,`created_at`,`updated_at`,`bulan`,`cetak`,`plong`,`potong`,`finishing`,`gaji`,`code_gaji_lain`,`category_bagian`,`thr_number_formats`,`gaji_number_formats`,`tttap_number_formats`,`ttap_number_formats`,`tasuransi_number_formats`,`ttllabor_number_formats`,`tgl_periode`,`view_tgl_periode`) VALUES 
 (1,'true',NULL,NULL,NULL,11521227,846825,8340893,3908779,66828255,3,'2021-01-01 08:26:00','2021-02-11 03:11:59',NULL,NULL,NULL,NULL,NULL,42210530,NULL,11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (2,'true',NULL,NULL,NULL,11484121,1255159,7094611,3908779,62082150,3,'2021-02-01 08:29:00','2021-02-11 03:10:22',NULL,NULL,NULL,NULL,NULL,38339480,NULL,11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (3,'true',NULL,NULL,NULL,13511541,8721750,7094611,3908779,76746241,3,'2021-03-01 08:31:00','2021-02-11 03:10:12',NULL,NULL,NULL,NULL,NULL,43509561,NULL,11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (4,'true',NULL,NULL,NULL,14316633,5051641,6884587,3908779,76226965,3,'2021-04-01 08:32:00','2021-02-11 03:08:26',NULL,NULL,NULL,NULL,NULL,46065326,NULL,11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `gaji_lain` (`id`,`mtc`,`umum`,`qc`,`prepress`,`tunjangan_tetap`,`tunjangan_tidak_tetap`,`tunjangan_asuransi`,`thr`,`total_biaya_labor`,`company_parent_id`,`created_at`,`updated_at`,`bulan`,`cetak`,`plong`,`potong`,`finishing`,`gaji`,`code_gaji_lain`,`category_bagian`,`thr_number_formats`,`gaji_number_formats`,`tttap_number_formats`,`ttap_number_formats`,`tasuransi_number_formats`,`ttllabor_number_formats`,`tgl_periode`,`view_tgl_periode`) VALUES 
 (5,'true',NULL,NULL,NULL,14001597,2907911,7094611,3908779,72017923,3,'2021-05-03 08:33:00','2021-02-11 03:06:00',NULL,NULL,NULL,NULL,NULL,44105026,NULL,11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (6,'true',NULL,NULL,NULL,9521085,2821705,7094611,3908779,64790902,3,'2021-06-01 08:35:00','2021-02-11 03:05:43',NULL,NULL,NULL,NULL,NULL,41444723,NULL,11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (7,NULL,'true',NULL,NULL,6387236,283400,2917233,2333599,277573071,3,'2021-01-01 08:36:00','2021-02-11 03:12:08',NULL,NULL,NULL,NULL,NULL,265651602,NULL,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (8,NULL,'true',NULL,NULL,6000131,283400,2917233,2333599,282065245,3,'2021-02-01 08:38:00','2021-02-11 03:10:39',NULL,NULL,NULL,NULL,NULL,270530881,NULL,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `gaji_lain` (`id`,`mtc`,`umum`,`qc`,`prepress`,`tunjangan_tetap`,`tunjangan_tidak_tetap`,`tunjangan_asuransi`,`thr`,`total_biaya_labor`,`company_parent_id`,`created_at`,`updated_at`,`bulan`,`cetak`,`plong`,`potong`,`finishing`,`gaji`,`code_gaji_lain`,`category_bagian`,`thr_number_formats`,`gaji_number_formats`,`tttap_number_formats`,`ttap_number_formats`,`tasuransi_number_formats`,`ttllabor_number_formats`,`tgl_periode`,`view_tgl_periode`) VALUES 
 (9,NULL,'true',NULL,NULL,7350838,2234961,2917233,2333599,282592269,3,'2021-03-01 08:39:00','2021-02-11 03:09:58',NULL,NULL,NULL,NULL,NULL,267755637,NULL,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (10,NULL,'true',NULL,NULL,7350838,2234961,2917233,2333599,367277669,3,'2021-04-01 08:41:00','2021-02-11 03:08:15',NULL,NULL,NULL,NULL,NULL,352441037,NULL,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (11,NULL,'true',NULL,NULL,7350838,26662,2917233,2333599,267307141,3,'2021-05-01 08:42:00','2021-02-11 03:07:22',NULL,NULL,NULL,NULL,NULL,254678808,NULL,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (12,NULL,'true',NULL,NULL,18083565,26662,2917233,2333599,237481126,3,'2021-06-01 08:44:00','2021-02-11 03:05:25',NULL,NULL,NULL,NULL,NULL,214120067,NULL,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `gaji_lain` (`id`,`mtc`,`umum`,`qc`,`prepress`,`tunjangan_tetap`,`tunjangan_tidak_tetap`,`tunjangan_asuransi`,`thr`,`total_biaya_labor`,`company_parent_id`,`created_at`,`updated_at`,`bulan`,`cetak`,`plong`,`potong`,`finishing`,`gaji`,`code_gaji_lain`,`category_bagian`,`thr_number_formats`,`gaji_number_formats`,`tttap_number_formats`,`ttap_number_formats`,`tasuransi_number_formats`,`ttllabor_number_formats`,`tgl_periode`,`view_tgl_periode`) VALUES 
 (13,NULL,NULL,'true',NULL,10940571,2037019,3715766,4112969,64355675,3,'2021-01-01 08:46:00','2021-02-11 03:11:40',NULL,NULL,NULL,NULL,NULL,43549350,NULL,13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (14,NULL,NULL,'true',NULL,13290612,3069800,1880731,4112969,66742187,3,'2021-03-01 08:48:00','2021-02-11 03:09:39',NULL,NULL,NULL,NULL,NULL,44388075,NULL,13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (15,NULL,NULL,'true',NULL,13651557,5627227,3860244,4112969,72407113,3,'2021-03-01 08:49:00','2021-02-11 03:09:29',NULL,NULL,NULL,NULL,NULL,45155117,NULL,13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (16,NULL,NULL,'true',NULL,16381868,4596889,3860244,4112969,79357714,3,'2021-04-01 08:51:00','2021-02-11 03:07:59',NULL,NULL,NULL,NULL,NULL,50405744,NULL,13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `gaji_lain` (`id`,`mtc`,`umum`,`qc`,`prepress`,`tunjangan_tetap`,`tunjangan_tidak_tetap`,`tunjangan_asuransi`,`thr`,`total_biaya_labor`,`company_parent_id`,`created_at`,`updated_at`,`bulan`,`cetak`,`plong`,`potong`,`finishing`,`gaji`,`code_gaji_lain`,`category_bagian`,`thr_number_formats`,`gaji_number_formats`,`tttap_number_formats`,`ttap_number_formats`,`tasuransi_number_formats`,`ttllabor_number_formats`,`tgl_periode`,`view_tgl_periode`) VALUES 
 (17,NULL,NULL,'true',NULL,16521884,1222507,4485695,4112969,76748800,3,'2021-05-01 08:53:00','2021-02-11 03:06:38',NULL,NULL,NULL,NULL,NULL,50405744,NULL,13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (18,NULL,NULL,'true',NULL,9521084,1345117,4317676,4112969,69702591,3,'2021-06-01 08:54:00','2021-03-01 09:04:31',NULL,NULL,NULL,NULL,NULL,50405744,NULL,13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (19,NULL,NULL,NULL,'true',5419473,1066900,2917233,2193583,29016930,3,'2021-01-01 08:56:00','2021-02-11 03:11:25',NULL,NULL,NULL,NULL,NULL,17419740,NULL,14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (20,NULL,NULL,NULL,'true',5806578,919955,2917233,2193583,29257090,3,'2021-03-01 08:57:00','2021-02-11 03:08:56',NULL,NULL,NULL,NULL,NULL,17419740,NULL,14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `gaji_lain` (`id`,`mtc`,`umum`,`qc`,`prepress`,`tunjangan_tetap`,`tunjangan_tidak_tetap`,`tunjangan_asuransi`,`thr`,`total_biaya_labor`,`company_parent_id`,`created_at`,`updated_at`,`bulan`,`cetak`,`plong`,`potong`,`finishing`,`gaji`,`code_gaji_lain`,`category_bagian`,`thr_number_formats`,`gaji_number_formats`,`tttap_number_formats`,`ttap_number_formats`,`tasuransi_number_formats`,`ttllabor_number_formats`,`tgl_periode`,`view_tgl_periode`) VALUES 
 (21,NULL,NULL,NULL,'true',6300719,NULL,2917233,2193583,30313689,3,'2021-03-01 09:04:00','2021-02-11 03:08:43',NULL,NULL,NULL,NULL,NULL,18902154,NULL,14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (22,NULL,NULL,NULL,'true',6020687,3899231,2917233,2193583,33932888,3,'2021-04-01 09:05:00','2021-02-11 03:07:44',NULL,NULL,NULL,NULL,NULL,18902154,NULL,14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (23,NULL,NULL,NULL,'true',6300719,1958016,2917233,2193583,32271706,3,'2021-05-01 09:08:00','2021-02-11 03:06:18',NULL,NULL,NULL,NULL,NULL,18902154,NULL,14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (24,NULL,NULL,NULL,'true',NULL,1884260,2917233,2193583,25897231,3,'2021-06-01 09:10:00','2021-02-11 03:04:32',NULL,NULL,NULL,NULL,NULL,18902154,NULL,14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `gaji_lain` (`id`,`mtc`,`umum`,`qc`,`prepress`,`tunjangan_tetap`,`tunjangan_tidak_tetap`,`tunjangan_asuransi`,`thr`,`total_biaya_labor`,`company_parent_id`,`created_at`,`updated_at`,`bulan`,`cetak`,`plong`,`potong`,`finishing`,`gaji`,`code_gaji_lain`,`category_bagian`,`thr_number_formats`,`gaji_number_formats`,`tttap_number_formats`,`ttap_number_formats`,`tasuransi_number_formats`,`ttllabor_number_formats`,`tgl_periode`,`view_tgl_periode`) VALUES 
 (25,NULL,NULL,NULL,NULL,2132,1123123,326623,1231234123,1232720235,1,'2021-03-01 04:48:36','2021-03-01 04:48:36',NULL,NULL,NULL,NULL,NULL,34234,'GJLsHTR03210025',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (26,NULL,NULL,NULL,NULL,9521084,34262342,4317676,4112969,NULL,NULL,'2021-03-01 08:26:48','2021-03-01 08:26:48',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (27,NULL,NULL,NULL,NULL,9521084,342342342342,4317676,4112969,NULL,NULL,'2021-03-01 08:30:32','2021-03-01 08:30:32',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (28,NULL,NULL,NULL,NULL,923200,23999,120,10000,8959319,1,'2021-03-02 03:34:47','2021-03-02 03:34:47',NULL,NULL,NULL,NULL,NULL,8002000,'GJLz3TR03210028',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `gaji_lain` (`id`,`mtc`,`umum`,`qc`,`prepress`,`tunjangan_tetap`,`tunjangan_tidak_tetap`,`tunjangan_asuransi`,`thr`,`total_biaya_labor`,`company_parent_id`,`created_at`,`updated_at`,`bulan`,`cetak`,`plong`,`potong`,`finishing`,`gaji`,`code_gaji_lain`,`category_bagian`,`thr_number_formats`,`gaji_number_formats`,`tttap_number_formats`,`ttap_number_formats`,`tasuransi_number_formats`,`ttllabor_number_formats`,`tgl_periode`,`view_tgl_periode`) VALUES 
 (29,NULL,NULL,NULL,NULL,23200,2300,10000,34000,81500,2,'2021-03-02 03:37:56','2021-03-02 03:37:56',NULL,NULL,NULL,NULL,NULL,12000,'GJLPkTR03210029',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (31,NULL,NULL,NULL,NULL,1203210,2401231,2453000,2453000,8855671,2,'2021-03-02 03:57:22','2021-03-02 03:57:22',NULL,NULL,NULL,NULL,NULL,345230,'GJLHpTR03210031',1,NULL,NULL,NULL,NULL,NULL,NULL,'2021-08-05',NULL),
 (32,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,'2021-03-16 19:04:59','2021-03-16 19:04:59',NULL,NULL,NULL,NULL,NULL,NULL,'GJLsXTR03210032',1,NULL,NULL,NULL,NULL,NULL,NULL,'2021-03-16',NULL),
 (33,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,'2021-03-16 19:05:06','2021-03-16 19:05:06',NULL,NULL,NULL,NULL,NULL,NULL,'GJLMnTR03210033',1,NULL,NULL,NULL,NULL,NULL,NULL,'2021-03-16',NULL);
INSERT INTO `gaji_lain` (`id`,`mtc`,`umum`,`qc`,`prepress`,`tunjangan_tetap`,`tunjangan_tidak_tetap`,`tunjangan_asuransi`,`thr`,`total_biaya_labor`,`company_parent_id`,`created_at`,`updated_at`,`bulan`,`cetak`,`plong`,`potong`,`finishing`,`gaji`,`code_gaji_lain`,`category_bagian`,`thr_number_formats`,`gaji_number_formats`,`tttap_number_formats`,`ttap_number_formats`,`tasuransi_number_formats`,`ttllabor_number_formats`,`tgl_periode`,`view_tgl_periode`) VALUES 
 (34,NULL,NULL,NULL,NULL,7797666,88688866,78998655,789999,184074952,1,'2021-03-27 00:22:27','2021-03-27 00:22:27',NULL,NULL,NULL,NULL,NULL,7799766,'GJLvHTR03210034',1,NULL,NULL,NULL,NULL,NULL,NULL,'2021-03-27',NULL),
 (35,NULL,NULL,NULL,NULL,3124124,1231,123,51231,5307940,3,'2021-03-31 14:34:07','2021-03-31 14:34:07',NULL,NULL,NULL,NULL,NULL,2131231,'GJLbOTR03210035',2,NULL,NULL,NULL,NULL,NULL,NULL,'2021-03-31',NULL);
/*!40000 ALTER TABLE `gaji_lain` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`gji_lain_total`
--

DROP TABLE IF EXISTS `gji_lain_total`;
CREATE TABLE `gji_lain_total` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_lp_gaji_lain` int(11) DEFAULT NULL,
  `changed_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `total_gj_lain` int(10) unsigned DEFAULT NULL,
  `history_latest` bigint(20) DEFAULT NULL,
  `before` bigint(20) DEFAULT NULL,
  `table_column` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`gji_lain_total`
--

/*!40000 ALTER TABLE `gji_lain_total` DISABLE KEYS */;
INSERT INTO `gji_lain_total` (`id`,`id_lp_gaji_lain`,`changed_by`,`created_at`,`updated_at`,`total_gj_lain`,`history_latest`,`before`,`table_column`,`company_id`,`category_id`,`created_by`) VALUES 
 (70,NULL,NULL,'2021-04-28 10:43:01','2021-04-28 10:43:01',NULL,32290,32290,'laporan_gaji_lain.added.event',3,14,'EDP Administrator'),
 (71,NULL,NULL,'2021-04-28 15:41:10','2021-04-28 15:41:10',NULL,372202,372202,'laporan_gaji_lain.added.event',3,11,'EDP Administrator');
/*!40000 ALTER TABLE `gji_lain_total` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`group_mesin_logs`
--

DROP TABLE IF EXISTS `group_mesin_logs`;
CREATE TABLE `group_mesin_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `before` int(11) DEFAULT NULL,
  `table_column` varchar(97) COLLATE utf8_unicode_ci DEFAULT NULL,
  `history_latest` int(11) DEFAULT NULL,
  `changed_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `column_bfr_group_mesin` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `column_afr_group_mesin` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`group_mesin_logs`
--

/*!40000 ALTER TABLE `group_mesin_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_mesin_logs` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`history_log_recalculate`
--

DROP TABLE IF EXISTS `history_log_recalculate`;
CREATE TABLE `history_log_recalculate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `changed_by` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recalculate_status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `listrik` int(11) DEFAULT NULL,
  `penyusutan` int(11) DEFAULT NULL,
  `labor` int(11) DEFAULT NULL,
  `mtc` int(11) DEFAULT NULL,
  `biaya_produksi_lain` int(11) DEFAULT NULL,
  `biaya_administrasi_umum` int(11) DEFAULT NULL,
  `gaji_lainnya` int(11) DEFAULT NULL,
  `bagian_penjualan` int(11) DEFAULT NULL,
  `total_semua_biaya` int(11) DEFAULT NULL,
  `total_semua_biaya_perjam` int(11) DEFAULT NULL,
  `total_tanpa_penyusutan_n_mtc` int(11) DEFAULT NULL,
  `total_tanpa_penyusutan_n_mtc_perjam` int(11) DEFAULT NULL,
  `total_tanpa_penyusutan` int(11) DEFAULT NULL,
  `total_tanpa_penyusutan_perjam` int(11) DEFAULT NULL,
  `total_tanpa_mtc` int(11) DEFAULT NULL,
  `total_tanpa_mtc_perjam` int(11) DEFAULT NULL,
  `id_logs` int(11) DEFAULT NULL,
  `code_mesin` int(11) DEFAULT NULL,
  `category_bagian` int(11) DEFAULT NULL,
  `company` int(11) DEFAULT NULL,
  `dibuat_oleh` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `group_mesin` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`history_log_recalculate`
--

/*!40000 ALTER TABLE `history_log_recalculate` DISABLE KEYS */;
/*!40000 ALTER TABLE `history_log_recalculate` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`history_recalculate_temporary`
--

DROP TABLE IF EXISTS `history_recalculate_temporary`;
CREATE TABLE `history_recalculate_temporary` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_column` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `history_latest` bigint(20) DEFAULT NULL,
  `before` bigint(20) DEFAULT NULL,
  `company` int(11) DEFAULT NULL,
  `group_mesin` int(11) DEFAULT NULL,
  `code_mesin` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `changed_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=848596 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`history_recalculate_temporary`
--

/*!40000 ALTER TABLE `history_recalculate_temporary` DISABLE KEYS */;
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847340,'all_recalculate.id_labor',72458263,0,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 14:41:24'),
 (847341,'all_recalculate.id_penyusutan',3270017,0,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 14:41:24'),
 (847342,'all_recalculate.id_mtc',3359046,0,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 14:41:24'),
 (847343,'all_recalculate.id_bprodlain_insteadof_mtc',480895282,0,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 14:41:24'),
 (847344,'all_recalculate.id_bgoenjualan',41079856042,0,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 14:41:24'),
 (847345,'all_recalculate.id_bau',610185087,0,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 14:41:24'),
 (847346,'all_recalculate.total_semua_biaya',42678537587,0,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 14:41:24'),
 (847347,'all_recalculate.total_semua_biaya_perjam',84679639,0,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 14:41:24');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847348,'all_recalculate.total_tanpa_penyusutan_n_mtc',42671908525,0,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 14:41:24'),
 (847349,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',84666486,0,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 14:41:24'),
 (847350,'all_recalculate.total_tanpa_penyusutan',42675267571,0,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 14:41:24'),
 (847351,'all_recalculate.total_tanpa_penyusutan_perjam',84673150,0,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 14:41:24'),
 (847352,'all_recalculate.total_tanpa_mtc',42671908525,0,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 14:41:24'),
 (847353,'all_recalculate.total_tanpa_mtc_perjam',84672974,0,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 14:41:24'),
 (847354,'all_recalculate.id_labor',72458263,72458263,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:30:54'),
 (847355,'all_recalculate.id_penyusutan',3270017,3270017,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:30:54');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847356,'all_recalculate.id_mtc',3359046,3359045,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:30:54'),
 (847357,'all_recalculate.id_bgoenjualan',41079856042,41079856042,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:30:54'),
 (847358,'all_recalculate.id_bau',610185087,610185087,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:30:54'),
 (847359,'all_recalculate.total_semua_biaya',42678534960,42678534960,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:30:54'),
 (847360,'all_recalculate.total_semua_biaya_perjam',84679633,84679633,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:30:54'),
 (847361,'all_recalculate.total_tanpa_penyusutan_n_mtc',42671905898,42671905898,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:30:54'),
 (847362,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',84666480,84666480,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:30:54'),
 (847363,'all_recalculate.total_tanpa_penyusutan',42675264944,42675264943,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:30:54');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847364,'all_recalculate.total_tanpa_penyusutan_perjam',84673145,84673145,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:30:54'),
 (847365,'all_recalculate.total_tanpa_mtc',42671905898,42671905898,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:30:54'),
 (847366,'all_recalculate.total_tanpa_mtc_perjam',84672969,84672968,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:30:54'),
 (847367,'all_recalculate.id',421,422,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:30:54'),
 (847368,'all_recalculate.id_labor',72458263,0,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:30:54'),
 (847369,'all_recalculate.id_penyusutan',3270017,0,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:30:54'),
 (847370,'all_recalculate.id_mtc',3359046,0,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:30:54'),
 (847371,'all_recalculate.id_bprodlain_insteadof_mtc',480895282,0,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:30:54');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847372,'all_recalculate.id_bgoenjualan',41079856042,0,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:30:54'),
 (847373,'all_recalculate.id_bau',610185087,0,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:30:54'),
 (847374,'all_recalculate.total_semua_biaya',42678534960,0,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:30:54'),
 (847375,'all_recalculate.total_semua_biaya_perjam',84679633,0,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:30:54'),
 (847376,'all_recalculate.total_tanpa_penyusutan_n_mtc',42671905898,0,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:30:54'),
 (847377,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',84666480,0,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:30:54'),
 (847378,'all_recalculate.total_tanpa_penyusutan',42675264944,0,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:30:54'),
 (847379,'all_recalculate.total_tanpa_penyusutan_perjam',84673145,0,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:30:54');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847380,'all_recalculate.total_tanpa_mtc',42671905898,0,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:30:54'),
 (847381,'all_recalculate.total_tanpa_mtc_perjam',84672969,0,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:30:54'),
 (847382,'all_recalculate.id',422,421,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:30:54'),
 (847383,'all_recalculate.id_labor',509098055,72458263,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:30:54'),
 (847384,'all_recalculate.id_penyusutan',161040936,3270017,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:30:54'),
 (847385,'all_recalculate.id_mtc',27274689,3359045,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:30:54'),
 (847386,'all_recalculate.id_bprodlain_insteadof_mtc',594751680,480895282,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:30:54'),
 (847387,'all_recalculate.id_bgoenjualan',41079856042,41079856042,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:30:54');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847388,'all_recalculate.id_bau',610185087,610185087,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:30:54'),
 (847389,'all_recalculate.total_semua_biaya',43315932537,42678534960,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:30:54'),
 (847390,'all_recalculate.total_semua_biaya_perjam',85944311,84679633,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:30:54'),
 (847391,'all_recalculate.total_tanpa_penyusutan_n_mtc',43127616912,42671905898,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:30:54'),
 (847392,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',85570669,84666480,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:30:54'),
 (847393,'all_recalculate.total_tanpa_penyusutan',43154891601,42675264943,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:30:54'),
 (847394,'all_recalculate.total_tanpa_penyusutan_perjam',85624785,84673145,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:30:54');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847395,'all_recalculate.total_tanpa_mtc',43127616912,42671905898,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:30:54'),
 (847396,'all_recalculate.total_tanpa_mtc_perjam',85890195,84672968,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:30:54'),
 (847397,'all_recalculate.id_labor',509098055,0,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:30:54'),
 (847398,'all_recalculate.id_penyusutan',161040936,0,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:30:54'),
 (847399,'all_recalculate.id_mtc',27274689,0,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:30:54'),
 (847400,'all_recalculate.id_bprodlain_insteadof_mtc',594751680,0,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:30:54'),
 (847401,'all_recalculate.id_bgoenjualan',41079856042,0,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:30:54'),
 (847402,'all_recalculate.id_bau',610185087,0,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:30:54');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847403,'all_recalculate.total_semua_biaya',43315932537,0,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:30:54'),
 (847404,'all_recalculate.total_semua_biaya_perjam',85944311,0,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:30:54'),
 (847405,'all_recalculate.total_tanpa_penyusutan_n_mtc',43127616912,0,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:30:54'),
 (847406,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',85570669,0,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:30:54'),
 (847407,'all_recalculate.total_tanpa_penyusutan',43154891601,0,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:30:54'),
 (847408,'all_recalculate.total_tanpa_penyusutan_perjam',85624785,0,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:30:54'),
 (847409,'all_recalculate.total_tanpa_mtc',43127616912,0,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:30:54'),
 (847410,'all_recalculate.total_tanpa_mtc_perjam',85890195,0,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:30:54');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847411,'all_recalculate.id_labor',72458263,72458263,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:31:27'),
 (847412,'all_recalculate.id_penyusutan',3270017,0,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:31:27'),
 (847413,'all_recalculate.id_mtc',3359046,3359045,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:31:27'),
 (847414,'all_recalculate.id_bgoenjualan',41079856042,41079856042,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:31:27'),
 (847415,'all_recalculate.id_bau',610185087,610185087,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:31:27'),
 (847416,'all_recalculate.total_semua_biaya',42678534960,42678534960,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:31:27'),
 (847417,'all_recalculate.total_semua_biaya_perjam',84679633,84679633,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:31:27'),
 (847418,'all_recalculate.total_tanpa_penyusutan_n_mtc',42671905898,42671905898,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:31:27');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847419,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',84666480,84666480,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:31:27'),
 (847420,'all_recalculate.total_tanpa_penyusutan',42675264944,42675264943,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:31:27'),
 (847421,'all_recalculate.total_tanpa_penyusutan_perjam',84673145,84673145,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:31:27'),
 (847422,'all_recalculate.total_tanpa_mtc',42671905898,42671905898,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:31:27'),
 (847423,'all_recalculate.total_tanpa_mtc_perjam',84672969,84672968,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:31:27'),
 (847424,'all_recalculate.id',421,422,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:31:27'),
 (847425,'all_recalculate.id_labor',72458263,509098055,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:31:27'),
 (847426,'all_recalculate.id_penyusutan',3270017,0,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:31:27');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847427,'all_recalculate.id_mtc',3359046,27274689,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:31:27'),
 (847428,'all_recalculate.id_bprodlain_insteadof_mtc',480895282,594751680,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:31:27'),
 (847429,'all_recalculate.id_bgoenjualan',41079856042,41079856042,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:31:27'),
 (847430,'all_recalculate.id_bau',610185087,610185087,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:31:27'),
 (847431,'all_recalculate.total_semua_biaya',42678534960,43315932536,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:31:27'),
 (847432,'all_recalculate.total_semua_biaya_perjam',84679633,85944311,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:31:27'),
 (847433,'all_recalculate.total_tanpa_penyusutan_n_mtc',42671905898,43127616912,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:31:27'),
 (847434,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',84666480,85570668,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:31:27');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847435,'all_recalculate.total_tanpa_penyusutan',42675264944,43154891600,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:31:27'),
 (847436,'all_recalculate.total_tanpa_penyusutan_perjam',84673145,85624785,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:31:27'),
 (847437,'all_recalculate.total_tanpa_mtc',42671905898,43127616912,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:31:27'),
 (847438,'all_recalculate.total_tanpa_mtc_perjam',84672969,85890194,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:31:27'),
 (847439,'all_recalculate.id',422,421,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:31:28'),
 (847440,'all_recalculate.id_labor',509098055,72458263,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:31:28'),
 (847441,'all_recalculate.id_penyusutan',161040936,0,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:31:28'),
 (847442,'all_recalculate.id_mtc',27274689,3359045,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:31:28');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847443,'all_recalculate.id_bprodlain_insteadof_mtc',594751680,480895282,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:31:28'),
 (847444,'all_recalculate.id_bgoenjualan',41079856042,41079856042,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:31:28'),
 (847445,'all_recalculate.id_bau',610185087,610185087,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:31:28'),
 (847446,'all_recalculate.total_semua_biaya',43315932537,42678534960,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:31:28'),
 (847447,'all_recalculate.total_semua_biaya_perjam',85944311,84679633,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:31:28'),
 (847448,'all_recalculate.total_tanpa_penyusutan_n_mtc',43127616912,42671905898,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:31:28'),
 (847449,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',85570669,84666480,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:31:28');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847450,'all_recalculate.total_tanpa_penyusutan',43154891601,42675264943,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:31:28'),
 (847451,'all_recalculate.total_tanpa_penyusutan_perjam',85624785,84673145,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:31:28'),
 (847452,'all_recalculate.total_tanpa_mtc',43127616912,42671905898,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:31:28'),
 (847453,'all_recalculate.total_tanpa_mtc_perjam',85890195,84672968,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:31:28'),
 (847454,'all_recalculate.id_labor',509098055,509098055,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:31:28'),
 (847455,'all_recalculate.id_penyusutan',161040936,0,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:31:28'),
 (847456,'all_recalculate.id_mtc',27274689,27274689,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:31:28'),
 (847457,'all_recalculate.id_bgoenjualan',41079856042,41079856042,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:31:28');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847458,'all_recalculate.id_bau',610185087,610185087,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:31:28'),
 (847459,'all_recalculate.total_semua_biaya',43315932537,43315932536,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:31:28'),
 (847460,'all_recalculate.total_semua_biaya_perjam',85944311,85944311,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:31:28'),
 (847461,'all_recalculate.total_tanpa_penyusutan_n_mtc',43127616912,43127616912,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:31:28'),
 (847462,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',85570669,85570668,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:31:28'),
 (847463,'all_recalculate.total_tanpa_penyusutan',43154891601,43154891600,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:31:28'),
 (847464,'all_recalculate.total_tanpa_penyusutan_perjam',85624785,85624785,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:31:28');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847465,'all_recalculate.total_tanpa_mtc',43127616912,43127616912,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:31:28'),
 (847466,'all_recalculate.total_tanpa_mtc_perjam',85890195,85890194,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:31:28'),
 (847467,'all_recalculate.id_labor',72458263,72458263,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:32:58'),
 (847468,'all_recalculate.id_penyusutan',3270017,0,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:32:58'),
 (847469,'all_recalculate.id_mtc',3359046,3359045,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:32:58'),
 (847470,'all_recalculate.id_bgoenjualan',41079856042,41079856042,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:32:58'),
 (847471,'all_recalculate.id_bau',610185087,610185087,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:32:58'),
 (847472,'all_recalculate.total_semua_biaya',42678534960,42678534960,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:32:58');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847473,'all_recalculate.total_semua_biaya_perjam',84679633,84679633,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:32:58'),
 (847474,'all_recalculate.total_tanpa_penyusutan_n_mtc',42671905898,42671905898,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:32:58'),
 (847475,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',84666480,84666480,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:32:58'),
 (847476,'all_recalculate.total_tanpa_penyusutan',42675264944,42675264943,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:32:58'),
 (847477,'all_recalculate.total_tanpa_penyusutan_perjam',84673145,84673145,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:32:58'),
 (847478,'all_recalculate.total_tanpa_mtc',42671905898,42671905898,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:32:58'),
 (847479,'all_recalculate.total_tanpa_mtc_perjam',84672969,84672968,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:32:58');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847480,'all_recalculate.id',421,422,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:32:58'),
 (847481,'all_recalculate.id_labor',72458263,509098055,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:32:58'),
 (847482,'all_recalculate.id_penyusutan',3270017,0,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:32:58'),
 (847483,'all_recalculate.id_mtc',3359046,27274689,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:32:58'),
 (847484,'all_recalculate.id_bprodlain_insteadof_mtc',480895282,594751680,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:32:58'),
 (847485,'all_recalculate.id_bgoenjualan',41079856042,41079856042,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:32:58'),
 (847486,'all_recalculate.id_bau',610185087,610185087,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:32:58'),
 (847487,'all_recalculate.total_semua_biaya',42678534960,43315932536,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:32:58');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847488,'all_recalculate.total_semua_biaya_perjam',84679633,85944311,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:32:58'),
 (847489,'all_recalculate.total_tanpa_penyusutan_n_mtc',42671905898,43127616912,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:32:58'),
 (847490,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',84666480,85570668,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:32:58'),
 (847491,'all_recalculate.total_tanpa_penyusutan',42675264944,43154891600,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:32:58'),
 (847492,'all_recalculate.total_tanpa_penyusutan_perjam',84673145,85624785,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:32:58'),
 (847493,'all_recalculate.total_tanpa_mtc',42671905898,43127616912,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:32:58'),
 (847494,'all_recalculate.total_tanpa_mtc_perjam',84672969,85890194,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:32:58');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847495,'all_recalculate.id',422,421,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:32:59'),
 (847496,'all_recalculate.id_labor',509098055,72458263,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:32:59'),
 (847497,'all_recalculate.id_penyusutan',161040936,0,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:32:59'),
 (847498,'all_recalculate.id_mtc',27274689,3359045,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:32:59'),
 (847499,'all_recalculate.id_bprodlain_insteadof_mtc',594751680,480895282,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:32:59'),
 (847500,'all_recalculate.id_bgoenjualan',41079856042,41079856042,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:32:59'),
 (847501,'all_recalculate.id_bau',610185087,610185087,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:32:59'),
 (847502,'all_recalculate.total_semua_biaya',43315932537,42678534960,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:32:59');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847503,'all_recalculate.total_semua_biaya_perjam',85944311,84679633,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:32:59'),
 (847504,'all_recalculate.total_tanpa_penyusutan_n_mtc',43127616912,42671905898,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:32:59'),
 (847505,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',85570669,84666480,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:32:59'),
 (847506,'all_recalculate.total_tanpa_penyusutan',43154891601,42675264943,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:32:59'),
 (847507,'all_recalculate.total_tanpa_penyusutan_perjam',85624785,84673145,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:32:59'),
 (847508,'all_recalculate.total_tanpa_mtc',43127616912,42671905898,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:32:59'),
 (847509,'all_recalculate.total_tanpa_mtc_perjam',85890195,84672968,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:32:59');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847510,'all_recalculate.id_labor',509098055,509098055,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:32:59'),
 (847511,'all_recalculate.id_penyusutan',161040936,0,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:32:59'),
 (847512,'all_recalculate.id_mtc',27274689,27274689,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:32:59'),
 (847513,'all_recalculate.id_bgoenjualan',41079856042,41079856042,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:32:59'),
 (847514,'all_recalculate.id_bau',610185087,610185087,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:32:59'),
 (847515,'all_recalculate.total_semua_biaya',43315932537,43315932536,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:32:59'),
 (847516,'all_recalculate.total_semua_biaya_perjam',85944311,85944311,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:32:59'),
 (847517,'all_recalculate.total_tanpa_penyusutan_n_mtc',43127616912,43127616912,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:32:59');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847518,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',85570669,85570668,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:32:59'),
 (847519,'all_recalculate.total_tanpa_penyusutan',43154891601,43154891600,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:32:59'),
 (847520,'all_recalculate.total_tanpa_penyusutan_perjam',85624785,85624785,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:32:59'),
 (847521,'all_recalculate.total_tanpa_mtc',43127616912,43127616912,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:32:59'),
 (847522,'all_recalculate.total_tanpa_mtc_perjam',85890195,85890194,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:32:59'),
 (847523,'all_recalculate.id_labor',72458263,72458263,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:34:41'),
 (847524,'all_recalculate.id_penyusutan',3270017,0,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:34:41');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847525,'all_recalculate.id_mtc',3359046,0,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:34:41'),
 (847526,'all_recalculate.id_bgoenjualan',41079856042,41079856042,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:34:41'),
 (847527,'all_recalculate.id_bau',610185087,610185087,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:34:41'),
 (847528,'all_recalculate.total_semua_biaya',42678534960,42678534960,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:34:41'),
 (847529,'all_recalculate.total_semua_biaya_perjam',84679633,84679633,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:34:41'),
 (847530,'all_recalculate.total_tanpa_penyusutan_n_mtc',42671905898,42671905898,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:34:41'),
 (847531,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',84666480,84666480,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:34:41'),
 (847532,'all_recalculate.total_tanpa_penyusutan',42675264944,42675264943,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:34:41');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847533,'all_recalculate.total_tanpa_penyusutan_perjam',84673145,84673145,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:34:41'),
 (847534,'all_recalculate.total_tanpa_mtc',42671905898,42671905898,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:34:41'),
 (847535,'all_recalculate.total_tanpa_mtc_perjam',84672969,84672968,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:34:41'),
 (847536,'all_recalculate.id',421,422,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:34:41'),
 (847537,'all_recalculate.id_labor',72458263,509098055,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:34:41'),
 (847538,'all_recalculate.id_penyusutan',3270017,0,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:34:41'),
 (847539,'all_recalculate.id_mtc',3359046,0,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:34:41'),
 (847540,'all_recalculate.id_bprodlain_insteadof_mtc',480895282,594751680,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:34:41');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847541,'all_recalculate.id_bgoenjualan',41079856042,41079856042,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:34:41'),
 (847542,'all_recalculate.id_bau',610185087,610185087,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:34:41'),
 (847543,'all_recalculate.total_semua_biaya',42678534960,43315932536,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:34:41'),
 (847544,'all_recalculate.total_semua_biaya_perjam',84679633,85944311,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:34:41'),
 (847545,'all_recalculate.total_tanpa_penyusutan_n_mtc',42671905898,43127616912,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:34:41'),
 (847546,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',84666480,85570668,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:34:41'),
 (847547,'all_recalculate.total_tanpa_penyusutan',42675264944,43154891600,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:34:41');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847548,'all_recalculate.total_tanpa_penyusutan_perjam',84673145,85624785,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:34:41'),
 (847549,'all_recalculate.total_tanpa_mtc',42671905898,43127616912,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:34:41'),
 (847550,'all_recalculate.total_tanpa_mtc_perjam',84672969,85890194,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:34:41'),
 (847551,'all_recalculate.id',422,421,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:34:42'),
 (847552,'all_recalculate.id_labor',509098055,72458263,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:34:42'),
 (847553,'all_recalculate.id_penyusutan',161040936,0,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:34:42'),
 (847554,'all_recalculate.id_mtc',27274689,0,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:34:42'),
 (847555,'all_recalculate.id_bprodlain_insteadof_mtc',594751680,480895282,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:34:42');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847556,'all_recalculate.id_bgoenjualan',41079856042,41079856042,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:34:42'),
 (847557,'all_recalculate.id_bau',610185087,610185087,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:34:42'),
 (847558,'all_recalculate.total_semua_biaya',43315932537,42678534960,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:34:42'),
 (847559,'all_recalculate.total_semua_biaya_perjam',85944311,84679633,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:34:42'),
 (847560,'all_recalculate.total_tanpa_penyusutan_n_mtc',43127616912,42671905898,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:34:42'),
 (847561,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',85570669,84666480,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:34:42'),
 (847562,'all_recalculate.total_tanpa_penyusutan',43154891601,42675264943,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:34:42');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847563,'all_recalculate.total_tanpa_penyusutan_perjam',85624785,84673145,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:34:42'),
 (847564,'all_recalculate.total_tanpa_mtc',43127616912,42671905898,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:34:42'),
 (847565,'all_recalculate.total_tanpa_mtc_perjam',85890195,84672968,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:34:42'),
 (847566,'all_recalculate.id_labor',509098055,509098055,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:34:42'),
 (847567,'all_recalculate.id_penyusutan',161040936,0,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:34:42'),
 (847568,'all_recalculate.id_mtc',27274689,0,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:34:42'),
 (847569,'all_recalculate.id_bgoenjualan',41079856042,41079856042,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:34:42'),
 (847570,'all_recalculate.id_bau',610185087,610185087,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:34:42');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847571,'all_recalculate.total_semua_biaya',43315932537,43315932536,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:34:42'),
 (847572,'all_recalculate.total_semua_biaya_perjam',85944311,85944311,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:34:42'),
 (847573,'all_recalculate.total_tanpa_penyusutan_n_mtc',43127616912,43127616912,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:34:42'),
 (847574,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',85570669,85570668,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:34:42'),
 (847575,'all_recalculate.total_tanpa_penyusutan',43154891601,43154891600,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:34:42'),
 (847576,'all_recalculate.total_tanpa_penyusutan_perjam',85624785,85624785,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:34:42'),
 (847577,'all_recalculate.total_tanpa_mtc',43127616912,43127616912,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:34:42');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847578,'all_recalculate.total_tanpa_mtc_perjam',85890195,85890194,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:34:42'),
 (847579,'all_recalculate.id_labor',72458263,72458263,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:36:39'),
 (847580,'all_recalculate.id_penyusutan',3270017,0,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:36:39'),
 (847581,'all_recalculate.id_mtc',3359046,0,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:36:39'),
 (847582,'all_recalculate.id_bgoenjualan',41079856042,41079856042,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:36:39'),
 (847583,'all_recalculate.id_bau',610185087,610185087,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:36:39'),
 (847584,'all_recalculate.total_semua_biaya',42678534960,42678534960,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:36:39'),
 (847585,'all_recalculate.total_semua_biaya_perjam',84679633,84679633,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:36:39');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847586,'all_recalculate.total_tanpa_penyusutan_n_mtc',42671905898,42671905898,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:36:39'),
 (847587,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',84666480,84666480,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:36:39'),
 (847588,'all_recalculate.total_tanpa_penyusutan',42675264944,42675264943,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:36:39'),
 (847589,'all_recalculate.total_tanpa_penyusutan_perjam',84673145,84673145,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:36:39'),
 (847590,'all_recalculate.total_tanpa_mtc',42671905898,42671905898,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:36:39'),
 (847591,'all_recalculate.total_tanpa_mtc_perjam',84672969,84672968,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:36:39'),
 (847592,'all_recalculate.id',421,422,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:36:39');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847593,'all_recalculate.id_labor',72458263,509098055,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:36:39'),
 (847594,'all_recalculate.id_penyusutan',3270017,0,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:36:39'),
 (847595,'all_recalculate.id_mtc',3359046,0,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:36:39'),
 (847596,'all_recalculate.id_bprodlain_insteadof_mtc',480895282,594751680,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:36:39'),
 (847597,'all_recalculate.id_bgoenjualan',41079856042,41079856042,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:36:39'),
 (847598,'all_recalculate.id_bau',610185087,610185087,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:36:39'),
 (847599,'all_recalculate.total_semua_biaya',42678534960,43315932536,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:36:39'),
 (847600,'all_recalculate.total_semua_biaya_perjam',84679633,85944311,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:36:39');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847601,'all_recalculate.total_tanpa_penyusutan_n_mtc',42671905898,43127616912,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:36:39'),
 (847602,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',84666480,85570668,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:36:39'),
 (847603,'all_recalculate.total_tanpa_penyusutan',42675264944,43154891600,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:36:39'),
 (847604,'all_recalculate.total_tanpa_penyusutan_perjam',84673145,85624785,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:36:39'),
 (847605,'all_recalculate.total_tanpa_mtc',42671905898,43127616912,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:36:39'),
 (847606,'all_recalculate.total_tanpa_mtc_perjam',84672969,85890194,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:36:39'),
 (847607,'all_recalculate.id',422,421,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:36:40');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847608,'all_recalculate.id_labor',509098055,72458263,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:36:40'),
 (847609,'all_recalculate.id_penyusutan',161040936,0,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:36:40'),
 (847610,'all_recalculate.id_mtc',27274689,0,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:36:40'),
 (847611,'all_recalculate.id_bprodlain_insteadof_mtc',594751680,480895282,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:36:40'),
 (847612,'all_recalculate.id_bgoenjualan',41079856042,41079856042,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:36:40'),
 (847613,'all_recalculate.id_bau',610185087,610185087,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:36:40'),
 (847614,'all_recalculate.total_semua_biaya',43315932537,42678534960,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:36:40'),
 (847615,'all_recalculate.total_semua_biaya_perjam',85944311,84679633,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:36:40');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847616,'all_recalculate.total_tanpa_penyusutan_n_mtc',43127616912,42671905898,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:36:40'),
 (847617,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',85570669,84666480,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:36:40'),
 (847618,'all_recalculate.total_tanpa_penyusutan',43154891601,42675264943,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:36:40'),
 (847619,'all_recalculate.total_tanpa_penyusutan_perjam',85624785,84673145,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:36:40'),
 (847620,'all_recalculate.total_tanpa_mtc',43127616912,42671905898,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:36:40'),
 (847621,'all_recalculate.total_tanpa_mtc_perjam',85890195,84672968,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:36:40'),
 (847622,'all_recalculate.id_labor',509098055,509098055,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:36:40');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847623,'all_recalculate.id_penyusutan',161040936,0,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:36:40'),
 (847624,'all_recalculate.id_mtc',27274689,0,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:36:40'),
 (847625,'all_recalculate.id_bgoenjualan',41079856042,41079856042,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:36:40'),
 (847626,'all_recalculate.id_bau',610185087,610185087,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:36:40'),
 (847627,'all_recalculate.total_semua_biaya',43315932537,43315932536,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:36:40'),
 (847628,'all_recalculate.total_semua_biaya_perjam',85944311,85944311,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:36:40'),
 (847629,'all_recalculate.total_tanpa_penyusutan_n_mtc',43127616912,43127616912,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:36:40'),
 (847630,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',85570669,85570668,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:36:40');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847631,'all_recalculate.total_tanpa_penyusutan',43154891601,43154891600,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:36:40'),
 (847632,'all_recalculate.total_tanpa_penyusutan_perjam',85624785,85624785,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:36:40'),
 (847633,'all_recalculate.total_tanpa_mtc',43127616912,43127616912,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:36:40'),
 (847634,'all_recalculate.total_tanpa_mtc_perjam',85890195,85890194,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:36:40'),
 (847635,'all_recalculate.id_labor',72458263,72458263,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:38:58'),
 (847636,'all_recalculate.id_penyusutan',3270017,0,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:38:58'),
 (847637,'all_recalculate.id_mtc',3359046,0,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:38:58'),
 (847638,'all_recalculate.id_bgoenjualan',41079856042,41079856042,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:38:58');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847639,'all_recalculate.id_bau',610185087,610185087,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:38:58'),
 (847640,'all_recalculate.total_semua_biaya',42678534960,42678534960,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:38:58'),
 (847641,'all_recalculate.total_semua_biaya_perjam',84679633,84679633,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:38:58'),
 (847642,'all_recalculate.total_tanpa_penyusutan_n_mtc',42671905898,42671905898,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:38:58'),
 (847643,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',84666480,84666480,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:38:58'),
 (847644,'all_recalculate.total_tanpa_penyusutan',42675264944,42675264943,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:38:58'),
 (847645,'all_recalculate.total_tanpa_penyusutan_perjam',84673145,84673145,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:38:58');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847646,'all_recalculate.total_tanpa_mtc',42671905898,42671905898,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:38:58'),
 (847647,'all_recalculate.total_tanpa_mtc_perjam',84672969,84672968,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:38:58'),
 (847648,'all_recalculate.id',421,422,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:38:58'),
 (847649,'all_recalculate.id_labor',72458263,509098055,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:38:58'),
 (847650,'all_recalculate.id_penyusutan',3270017,0,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:38:58'),
 (847651,'all_recalculate.id_mtc',3359046,0,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:38:58'),
 (847652,'all_recalculate.id_bprodlain_insteadof_mtc',480895282,594751680,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:38:58'),
 (847653,'all_recalculate.id_bgoenjualan',41079856042,41079856042,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:38:58');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847654,'all_recalculate.id_bau',610185087,610185087,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:38:58'),
 (847655,'all_recalculate.total_semua_biaya',42678534960,43315932536,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:38:58'),
 (847656,'all_recalculate.total_semua_biaya_perjam',84679633,85944311,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:38:58'),
 (847657,'all_recalculate.total_tanpa_penyusutan_n_mtc',42671905898,43127616912,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:38:58'),
 (847658,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',84666480,85570668,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:38:58'),
 (847659,'all_recalculate.total_tanpa_penyusutan',42675264944,43154891600,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:38:58'),
 (847660,'all_recalculate.total_tanpa_penyusutan_perjam',84673145,85624785,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:38:58');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847661,'all_recalculate.total_tanpa_mtc',42671905898,43127616912,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:38:58'),
 (847662,'all_recalculate.total_tanpa_mtc_perjam',84672969,85890194,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:38:58'),
 (847663,'all_recalculate.id',422,421,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:38:59'),
 (847664,'all_recalculate.id_labor',509098055,72458263,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:38:59'),
 (847665,'all_recalculate.id_penyusutan',161040936,0,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:38:59'),
 (847666,'all_recalculate.id_mtc',27274689,0,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:38:59'),
 (847667,'all_recalculate.id_bprodlain_insteadof_mtc',594751680,480895282,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:38:59'),
 (847668,'all_recalculate.id_bgoenjualan',41079856042,41079856042,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:38:59');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847669,'all_recalculate.id_bau',610185087,610185087,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:38:59'),
 (847670,'all_recalculate.total_semua_biaya',43315932537,42678534960,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:38:59'),
 (847671,'all_recalculate.total_semua_biaya_perjam',85944311,84679633,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:38:59'),
 (847672,'all_recalculate.total_tanpa_penyusutan_n_mtc',43127616912,42671905898,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:38:59'),
 (847673,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',85570669,84666480,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:38:59'),
 (847674,'all_recalculate.total_tanpa_penyusutan',43154891601,42675264943,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:38:59'),
 (847675,'all_recalculate.total_tanpa_penyusutan_perjam',85624785,84673145,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:38:59');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847676,'all_recalculate.total_tanpa_mtc',43127616912,42671905898,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:38:59'),
 (847677,'all_recalculate.total_tanpa_mtc_perjam',85890195,84672968,3,2,132,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:38:59'),
 (847678,'all_recalculate.id_labor',509098055,509098055,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:38:59'),
 (847679,'all_recalculate.id_penyusutan',161040936,0,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:38:59'),
 (847680,'all_recalculate.id_mtc',27274689,0,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:38:59'),
 (847681,'all_recalculate.id_bgoenjualan',41079856042,41079856042,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:38:59'),
 (847682,'all_recalculate.id_bau',610185087,610185087,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:38:59'),
 (847683,'all_recalculate.total_semua_biaya',43315932537,43315932536,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:38:59');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847684,'all_recalculate.total_semua_biaya_perjam',85944311,85944311,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:38:59'),
 (847685,'all_recalculate.total_tanpa_penyusutan_n_mtc',43127616912,43127616912,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:38:59'),
 (847686,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',85570669,85570668,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:38:59'),
 (847687,'all_recalculate.total_tanpa_penyusutan',43154891601,43154891600,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:38:59'),
 (847688,'all_recalculate.total_tanpa_penyusutan_perjam',85624785,85624785,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:38:59'),
 (847689,'all_recalculate.total_tanpa_mtc',43127616912,43127616912,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:38:59'),
 (847690,'all_recalculate.total_tanpa_mtc_perjam',85890195,85890194,3,2,133,2,'EDP Administrator',NULL,NULL,'2021-04-27 15:38:59');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847691,'all_recalculate.id_labor',129164730,0,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 10:56:41'),
 (847692,'all_recalculate.id_penyusutan',27432760,0,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 10:56:41'),
 (847693,'all_recalculate.id_mtc',40076563,0,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 10:56:41'),
 (847694,'all_recalculate.id_bgoenjualan',5844480933992,0,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 10:56:41'),
 (847695,'all_recalculate.id_bau',46173329791233,0,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 10:56:41'),
 (847696,'all_recalculate.total_semua_biaya',52022205134580,0,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 10:56:41'),
 (847697,'all_recalculate.total_semua_biaya_perjam',103218660982,0,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 10:56:41'),
 (847698,'all_recalculate.total_tanpa_penyusutan_n_mtc',52022137625257,0,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 10:56:41');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847699,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',103218527035,0,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 10:56:41'),
 (847700,'all_recalculate.total_tanpa_penyusutan',52022177701820,0,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 10:56:41'),
 (847701,'all_recalculate.total_tanpa_penyusutan_perjam',103218606552,0,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 10:56:41'),
 (847702,'all_recalculate.total_tanpa_mtc',52022137625257,0,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 10:56:41'),
 (847703,'all_recalculate.total_tanpa_mtc_perjam',103218581465,0,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 10:56:41'),
 (847704,'all_recalculate.id_labor',129164730,129164729,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 10:57:02'),
 (847705,'all_recalculate.id_mtc',40076563,40076563,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 10:57:02'),
 (847706,'all_recalculate.id_bgoenjualan',5844480933992,5844480933991,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 10:57:02');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847707,'all_recalculate.id_bau',46173329791233,46173329791232,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 10:57:02'),
 (847708,'all_recalculate.total_semua_biaya',52022205134580,52022205134580,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 10:57:02'),
 (847709,'all_recalculate.total_semua_biaya_perjam',103218660982,103218660981,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 10:57:02'),
 (847710,'all_recalculate.total_tanpa_penyusutan_n_mtc',52022137625257,52022137625257,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 10:57:02'),
 (847711,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',103218527035,103218527034,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 10:57:02'),
 (847712,'all_recalculate.total_tanpa_penyusutan',52022177701820,52022177701820,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 10:57:02'),
 (847713,'all_recalculate.total_tanpa_penyusutan_perjam',103218606552,103218606551,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 10:57:02');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847714,'all_recalculate.total_tanpa_mtc',52022137625257,52022137625257,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 10:57:02'),
 (847715,'all_recalculate.total_tanpa_mtc_perjam',103218581465,103218581464,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 10:57:02'),
 (847716,'all_recalculate.id_labor',129164730,129164729,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 10:57:02'),
 (847717,'all_recalculate.id_mtc',40076563,40076563,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 10:57:02'),
 (847718,'all_recalculate.id_bgoenjualan',5844480933992,5844480933991,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 10:57:02'),
 (847719,'all_recalculate.id_bau',46173329791233,46173329791232,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 10:57:02'),
 (847720,'all_recalculate.total_semua_biaya',52022205134580,52022205134580,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 10:57:02'),
 (847721,'all_recalculate.total_semua_biaya_perjam',103218660982,103218660981,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 10:57:02');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847722,'all_recalculate.total_tanpa_penyusutan_n_mtc',52022137625257,52022137625257,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 10:57:02'),
 (847723,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',103218527035,103218527034,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 10:57:02'),
 (847724,'all_recalculate.total_tanpa_penyusutan',52022177701820,52022177701820,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 10:57:02'),
 (847725,'all_recalculate.total_tanpa_penyusutan_perjam',103218606552,103218606551,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 10:57:02'),
 (847726,'all_recalculate.total_tanpa_mtc',52022137625257,52022137625257,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 10:57:02'),
 (847727,'all_recalculate.total_tanpa_mtc_perjam',103218581465,103218581464,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 10:57:02'),
 (847728,'all_recalculate.id_penyusutan',3290333,3290332,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:37');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847729,'all_recalculate.id_mtc',40076563,40076563,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:37'),
 (847730,'all_recalculate.id_gajilain',1460145831,1460145831,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:37'),
 (847731,'all_recalculate.id_bgoenjualan',5845051859460,5845051859460,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:37'),
 (847732,'all_recalculate.id_bau',46173331220758,46173331220757,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:37'),
 (847733,'all_recalculate.total_semua_biaya',52024218738195,52024218738194,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:37'),
 (847734,'all_recalculate.total_semua_biaya_perjam',103222656227,103222656227,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:37'),
 (847735,'all_recalculate.total_tanpa_penyusutan_n_mtc',52024175371299,52024175371299,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:37'),
 (847736,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',103222570182,103222570181,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:37');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847737,'all_recalculate.total_tanpa_penyusutan',52024215447862,52024215447862,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:37'),
 (847738,'all_recalculate.total_tanpa_penyusutan_perjam',103222649699,103222649698,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:37'),
 (847739,'all_recalculate.total_tanpa_mtc',52024175371299,52024175371299,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:37'),
 (847740,'all_recalculate.total_tanpa_mtc_perjam',103222576710,103222576710,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:37'),
 (847741,'all_recalculate.id',424,425,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:37'),
 (847742,'all_recalculate.id_labor',134415328,0,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:37'),
 (847743,'all_recalculate.id_penyusutan',3290333,0,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:37'),
 (847744,'all_recalculate.id_mtc',40076563,0,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:37');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847745,'all_recalculate.id_gajilain',1460145831,0,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:37'),
 (847746,'all_recalculate.id_bgoenjualan',5845051859460,0,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:37'),
 (847747,'all_recalculate.id_bau',46173331220758,0,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:37'),
 (847748,'all_recalculate.total_semua_biaya',52024218738195,0,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:37'),
 (847749,'all_recalculate.total_semua_biaya_perjam',103222656227,0,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:37'),
 (847750,'all_recalculate.total_tanpa_penyusutan_n_mtc',52024175371299,0,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:37'),
 (847751,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',103222570182,0,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:37'),
 (847752,'all_recalculate.total_tanpa_penyusutan',52024215447862,0,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:37');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847753,'all_recalculate.total_tanpa_penyusutan_perjam',103222649699,0,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:37'),
 (847754,'all_recalculate.total_tanpa_mtc',52024175371299,0,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:37'),
 (847755,'all_recalculate.total_tanpa_mtc_perjam',103222576710,0,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:37'),
 (847756,'all_recalculate.id',425,424,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:37'),
 (847757,'all_recalculate.id_labor',142396239,134415328,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:37'),
 (847758,'all_recalculate.id_penyusutan',327444,3290332,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:37'),
 (847759,'all_recalculate.id_mtc',81284,40076563,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:37'),
 (847760,'all_recalculate.id_bprodlain_insteadof_mtc',440556800,0,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:37');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847761,'all_recalculate.id_gajilain',1460145831,1460145831,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:37'),
 (847762,'all_recalculate.id_bgoenjualan',5845051859460,5845051859460,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:37'),
 (847763,'all_recalculate.id_bau',46173331220758,46173331220757,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:37'),
 (847764,'all_recalculate.total_semua_biaya',52056965252041,52024218738194,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:37'),
 (847765,'all_recalculate.total_semua_biaya_perjam',103287629469,103222656227,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:37'),
 (847766,'all_recalculate.total_tanpa_penyusutan_n_mtc',52056964843314,52024175371299,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:37'),
 (847767,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',103287628658,103222570181,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:37');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847768,'all_recalculate.total_tanpa_penyusutan',52056964924598,52024215447862,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:37'),
 (847769,'all_recalculate.total_tanpa_penyusutan_perjam',103287628819,103222649698,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:37'),
 (847770,'all_recalculate.total_tanpa_mtc',52056964843314,52024175371299,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:37'),
 (847771,'all_recalculate.total_tanpa_mtc_perjam',103287629308,103222576710,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:37'),
 (847772,'all_recalculate.id_labor',142396239,0,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:37'),
 (847773,'all_recalculate.id_penyusutan',327444,0,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:37'),
 (847774,'all_recalculate.id_mtc',81284,0,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:37'),
 (847775,'all_recalculate.id_bprodlain_insteadof_mtc',440556800,0,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:37');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847776,'all_recalculate.id_gajilain',1460145831,0,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:37'),
 (847777,'all_recalculate.id_bgoenjualan',5845051859460,0,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:37'),
 (847778,'all_recalculate.id_bau',46173331220758,0,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:37'),
 (847779,'all_recalculate.total_semua_biaya',52056965252041,0,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:38'),
 (847780,'all_recalculate.total_semua_biaya_perjam',103287629469,0,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:38'),
 (847781,'all_recalculate.total_tanpa_penyusutan_n_mtc',52056964843314,0,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:38'),
 (847782,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',103287628658,0,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:38'),
 (847783,'all_recalculate.total_tanpa_penyusutan',52056964924598,0,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:38');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847784,'all_recalculate.total_tanpa_penyusutan_perjam',103287628819,0,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:38'),
 (847785,'all_recalculate.total_tanpa_mtc',52056964843314,0,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:38'),
 (847786,'all_recalculate.total_tanpa_mtc_perjam',103287629308,0,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:38'),
 (847787,'all_recalculate.id_penyusutan',3290333,3290332,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53'),
 (847788,'all_recalculate.id_mtc',40076563,40076563,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53'),
 (847789,'all_recalculate.id_gajilain',1460145831,1460145831,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53'),
 (847790,'all_recalculate.id_bgoenjualan',5845051859460,5845051859460,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53'),
 (847791,'all_recalculate.id_bau',46173331220758,46173331220757,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847792,'all_recalculate.total_semua_biaya',52024218738195,52024218738194,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53'),
 (847793,'all_recalculate.total_semua_biaya_perjam',103222656227,103222656227,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53'),
 (847794,'all_recalculate.total_tanpa_penyusutan_n_mtc',52024175371299,52024175371299,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53'),
 (847795,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',103222570182,103222570181,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53'),
 (847796,'all_recalculate.total_tanpa_penyusutan',52024215447862,52024215447862,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53'),
 (847797,'all_recalculate.total_tanpa_penyusutan_perjam',103222649699,103222649698,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53'),
 (847798,'all_recalculate.total_tanpa_mtc',52024175371299,52024175371299,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847799,'all_recalculate.total_tanpa_mtc_perjam',103222576710,103222576710,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53'),
 (847800,'all_recalculate.id',424,425,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53'),
 (847801,'all_recalculate.id_labor',134415328,142396238,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53'),
 (847802,'all_recalculate.id_penyusutan',3290333,327443,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53'),
 (847803,'all_recalculate.id_mtc',40076563,81283,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53'),
 (847804,'all_recalculate.id_bprodlain_insteadof_mtc',0,440556800,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53'),
 (847805,'all_recalculate.id_gajilain',1460145831,1460145831,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53'),
 (847806,'all_recalculate.id_bgoenjualan',5845051859460,5845051859460,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847807,'all_recalculate.id_bau',46173331220758,46173331220757,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53'),
 (847808,'all_recalculate.total_semua_biaya',52024218738195,52056965252040,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53'),
 (847809,'all_recalculate.total_semua_biaya_perjam',103222656227,103287629468,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53'),
 (847810,'all_recalculate.total_tanpa_penyusutan_n_mtc',52024175371299,52056964843314,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53'),
 (847811,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',103222570182,103287628657,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53'),
 (847812,'all_recalculate.total_tanpa_penyusutan',52024215447862,52056964924597,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53'),
 (847813,'all_recalculate.total_tanpa_penyusutan_perjam',103222649699,103287628819,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847814,'all_recalculate.total_tanpa_mtc',52024175371299,52056964843314,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53'),
 (847815,'all_recalculate.total_tanpa_mtc_perjam',103222576710,103287629307,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53'),
 (847816,'all_recalculate.id',425,424,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53'),
 (847817,'all_recalculate.id_labor',142396239,134415328,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53'),
 (847818,'all_recalculate.id_penyusutan',327444,3290332,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53'),
 (847819,'all_recalculate.id_mtc',81284,40076563,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53'),
 (847820,'all_recalculate.id_bprodlain_insteadof_mtc',440556800,0,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53'),
 (847821,'all_recalculate.id_gajilain',1460145831,1460145831,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847822,'all_recalculate.id_bgoenjualan',5845051859460,5845051859460,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53'),
 (847823,'all_recalculate.id_bau',46173331220758,46173331220757,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53'),
 (847824,'all_recalculate.total_semua_biaya',52056965252041,52024218738194,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53'),
 (847825,'all_recalculate.total_semua_biaya_perjam',103287629469,103222656227,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53'),
 (847826,'all_recalculate.total_tanpa_penyusutan_n_mtc',52056964843314,52024175371299,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53'),
 (847827,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',103287628658,103222570181,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53'),
 (847828,'all_recalculate.total_tanpa_penyusutan',52056964924598,52024215447862,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847829,'all_recalculate.total_tanpa_penyusutan_perjam',103287628819,103222649698,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53'),
 (847830,'all_recalculate.total_tanpa_mtc',52056964843314,52024175371299,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53'),
 (847831,'all_recalculate.total_tanpa_mtc_perjam',103287629308,103222576710,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53'),
 (847832,'all_recalculate.id_labor',142396239,142396238,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53'),
 (847833,'all_recalculate.id_penyusutan',327444,327443,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53'),
 (847834,'all_recalculate.id_mtc',81284,81283,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53'),
 (847835,'all_recalculate.id_gajilain',1460145831,1460145831,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53'),
 (847836,'all_recalculate.id_bgoenjualan',5845051859460,5845051859460,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847837,'all_recalculate.id_bau',46173331220758,46173331220757,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53'),
 (847838,'all_recalculate.total_semua_biaya',52056965252041,52056965252040,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53'),
 (847839,'all_recalculate.total_semua_biaya_perjam',103287629469,103287629468,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53'),
 (847840,'all_recalculate.total_tanpa_penyusutan_n_mtc',52056964843314,52056964843314,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53'),
 (847841,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',103287628658,103287628657,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53'),
 (847842,'all_recalculate.total_tanpa_penyusutan',52056964924598,52056964924597,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53'),
 (847843,'all_recalculate.total_tanpa_penyusutan_perjam',103287628819,103287628819,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847844,'all_recalculate.total_tanpa_mtc',52056964843314,52056964843314,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53'),
 (847845,'all_recalculate.total_tanpa_mtc_perjam',103287629308,103287629307,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:24:53'),
 (847846,'all_recalculate.id_penyusutan',3290333,3290332,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:06'),
 (847847,'all_recalculate.id_mtc',40076563,40076563,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:06'),
 (847848,'all_recalculate.id_gajilain',1460145831,1460145831,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:06'),
 (847849,'all_recalculate.id_bgoenjualan',5845051859460,5845051859460,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:06'),
 (847850,'all_recalculate.id_bau',46173331220758,46173331220757,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:06'),
 (847851,'all_recalculate.total_semua_biaya',52024218738195,52024218738194,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:06');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847852,'all_recalculate.total_semua_biaya_perjam',103222656227,103222656227,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:06'),
 (847853,'all_recalculate.total_tanpa_penyusutan_n_mtc',52024175371299,52024175371299,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:06'),
 (847854,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',103222570182,103222570181,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:06'),
 (847855,'all_recalculate.total_tanpa_penyusutan',52024215447862,52024215447862,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:06'),
 (847856,'all_recalculate.total_tanpa_penyusutan_perjam',103222649699,103222649698,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:06'),
 (847857,'all_recalculate.total_tanpa_mtc',52024175371299,52024175371299,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:06'),
 (847858,'all_recalculate.total_tanpa_mtc_perjam',103222576710,103222576710,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:06');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847859,'all_recalculate.id',424,425,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:06'),
 (847860,'all_recalculate.id_labor',134415328,142396238,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:06'),
 (847861,'all_recalculate.id_penyusutan',3290333,327443,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:06'),
 (847862,'all_recalculate.id_mtc',40076563,81283,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:06'),
 (847863,'all_recalculate.id_bprodlain_insteadof_mtc',0,440556800,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:06'),
 (847864,'all_recalculate.id_gajilain',1460145831,1460145831,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:06'),
 (847865,'all_recalculate.id_bgoenjualan',5845051859460,5845051859460,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:06'),
 (847866,'all_recalculate.id_bau',46173331220758,46173331220757,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:06');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847867,'all_recalculate.total_semua_biaya',52024218738195,52056965252040,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:06'),
 (847868,'all_recalculate.total_semua_biaya_perjam',103222656227,103287629468,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:06'),
 (847869,'all_recalculate.total_tanpa_penyusutan_n_mtc',52024175371299,52056964843314,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:06'),
 (847870,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',103222570182,103287628657,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:06'),
 (847871,'all_recalculate.total_tanpa_penyusutan',52024215447862,52056964924597,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:06'),
 (847872,'all_recalculate.total_tanpa_penyusutan_perjam',103222649699,103287628819,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:06'),
 (847873,'all_recalculate.total_tanpa_mtc',52024175371299,52056964843314,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:06');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847874,'all_recalculate.total_tanpa_mtc_perjam',103222576710,103287629307,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:06'),
 (847875,'all_recalculate.id',425,424,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:06'),
 (847876,'all_recalculate.id_labor',142396239,134415328,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:06'),
 (847877,'all_recalculate.id_penyusutan',327444,3290332,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:06'),
 (847878,'all_recalculate.id_mtc',81284,40076563,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:06'),
 (847879,'all_recalculate.id_bprodlain_insteadof_mtc',440556800,0,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:06'),
 (847880,'all_recalculate.id_gajilain',1460145831,1460145831,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:06'),
 (847881,'all_recalculate.id_bgoenjualan',5845051859460,5845051859460,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:06');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847882,'all_recalculate.id_bau',46173331220758,46173331220757,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:06'),
 (847883,'all_recalculate.total_semua_biaya',52056965252041,52024218738194,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:06'),
 (847884,'all_recalculate.total_semua_biaya_perjam',103287629469,103222656227,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:06'),
 (847885,'all_recalculate.total_tanpa_penyusutan_n_mtc',52056964843314,52024175371299,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:06'),
 (847886,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',103287628658,103222570181,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:06'),
 (847887,'all_recalculate.total_tanpa_penyusutan',52056964924598,52024215447862,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:06'),
 (847888,'all_recalculate.total_tanpa_penyusutan_perjam',103287628819,103222649698,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:06');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847889,'all_recalculate.total_tanpa_mtc',52056964843314,52024175371299,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:06'),
 (847890,'all_recalculate.total_tanpa_mtc_perjam',103287629308,103222576710,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:06'),
 (847891,'all_recalculate.id_labor',142396239,142396238,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:07'),
 (847892,'all_recalculate.id_penyusutan',327444,327443,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:07'),
 (847893,'all_recalculate.id_mtc',81284,81283,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:07'),
 (847894,'all_recalculate.id_gajilain',1460145831,1460145831,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:07'),
 (847895,'all_recalculate.id_bgoenjualan',5845051859460,5845051859460,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:07'),
 (847896,'all_recalculate.id_bau',46173331220758,46173331220757,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:07');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847897,'all_recalculate.total_semua_biaya',52056965252041,52056965252040,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:07'),
 (847898,'all_recalculate.total_semua_biaya_perjam',103287629469,103287629468,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:07'),
 (847899,'all_recalculate.total_tanpa_penyusutan_n_mtc',52056964843314,52056964843314,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:07'),
 (847900,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',103287628658,103287628657,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:07'),
 (847901,'all_recalculate.total_tanpa_penyusutan',52056964924598,52056964924597,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:07'),
 (847902,'all_recalculate.total_tanpa_penyusutan_perjam',103287628819,103287628819,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:07'),
 (847903,'all_recalculate.total_tanpa_mtc',52056964843314,52056964843314,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:07');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847904,'all_recalculate.total_tanpa_mtc_perjam',103287629308,103287629307,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:07'),
 (847905,'all_recalculate.id_penyusutan',3290333,3290332,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:08'),
 (847906,'all_recalculate.id_mtc',40076563,40076563,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:08'),
 (847907,'all_recalculate.id_gajilain',1460145831,1460145831,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:08'),
 (847908,'all_recalculate.id_bgoenjualan',5845051859460,5845051859460,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:08'),
 (847909,'all_recalculate.id_bau',46173331220758,46173331220757,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:08'),
 (847910,'all_recalculate.total_semua_biaya',52024218738195,52024218738194,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:08'),
 (847911,'all_recalculate.total_semua_biaya_perjam',103222656227,103222656227,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:08');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847912,'all_recalculate.total_tanpa_penyusutan_n_mtc',52024175371299,52024175371299,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:08'),
 (847913,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',103222570182,103222570181,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:08'),
 (847914,'all_recalculate.total_tanpa_penyusutan',52024215447862,52024215447862,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:08'),
 (847915,'all_recalculate.total_tanpa_penyusutan_perjam',103222649699,103222649698,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:08'),
 (847916,'all_recalculate.total_tanpa_mtc',52024175371299,52024175371299,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:08'),
 (847917,'all_recalculate.total_tanpa_mtc_perjam',103222576710,103222576710,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:08'),
 (847918,'all_recalculate.id',424,425,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:08');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847919,'all_recalculate.id_labor',134415328,142396238,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:08'),
 (847920,'all_recalculate.id_penyusutan',3290333,327443,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:08'),
 (847921,'all_recalculate.id_mtc',40076563,81283,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:08'),
 (847922,'all_recalculate.id_bprodlain_insteadof_mtc',0,440556800,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:08'),
 (847923,'all_recalculate.id_gajilain',1460145831,1460145831,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:08'),
 (847924,'all_recalculate.id_bgoenjualan',5845051859460,5845051859460,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:08'),
 (847925,'all_recalculate.id_bau',46173331220758,46173331220757,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:08'),
 (847926,'all_recalculate.total_semua_biaya',52024218738195,52056965252040,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:08');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847927,'all_recalculate.total_semua_biaya_perjam',103222656227,103287629468,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:08'),
 (847928,'all_recalculate.total_tanpa_penyusutan_n_mtc',52024175371299,52056964843314,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:08'),
 (847929,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',103222570182,103287628657,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:08'),
 (847930,'all_recalculate.total_tanpa_penyusutan',52024215447862,52056964924597,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:08'),
 (847931,'all_recalculate.total_tanpa_penyusutan_perjam',103222649699,103287628819,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:08'),
 (847932,'all_recalculate.total_tanpa_mtc',52024175371299,52056964843314,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:08'),
 (847933,'all_recalculate.total_tanpa_mtc_perjam',103222576710,103287629307,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:08');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847934,'all_recalculate.id',425,424,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:09'),
 (847935,'all_recalculate.id_labor',142396239,134415328,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:09'),
 (847936,'all_recalculate.id_penyusutan',327444,3290332,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:09'),
 (847937,'all_recalculate.id_mtc',81284,40076563,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:09'),
 (847938,'all_recalculate.id_bprodlain_insteadof_mtc',440556800,0,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:09'),
 (847939,'all_recalculate.id_gajilain',1460145831,1460145831,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:09'),
 (847940,'all_recalculate.id_bgoenjualan',5845051859460,5845051859460,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:09'),
 (847941,'all_recalculate.id_bau',46173331220758,46173331220757,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:09');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847942,'all_recalculate.total_semua_biaya',52056965252041,52024218738194,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:09'),
 (847943,'all_recalculate.total_semua_biaya_perjam',103287629469,103222656227,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:09'),
 (847944,'all_recalculate.total_tanpa_penyusutan_n_mtc',52056964843314,52024175371299,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:09'),
 (847945,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',103287628658,103222570181,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:09'),
 (847946,'all_recalculate.total_tanpa_penyusutan',52056964924598,52024215447862,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:09'),
 (847947,'all_recalculate.total_tanpa_penyusutan_perjam',103287628819,103222649698,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:09'),
 (847948,'all_recalculate.total_tanpa_mtc',52056964843314,52024175371299,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:09');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847949,'all_recalculate.total_tanpa_mtc_perjam',103287629308,103222576710,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:09'),
 (847950,'all_recalculate.id_labor',142396239,142396238,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:09'),
 (847951,'all_recalculate.id_penyusutan',327444,327443,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:09'),
 (847952,'all_recalculate.id_mtc',81284,81283,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:09'),
 (847953,'all_recalculate.id_gajilain',1460145831,1460145831,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:09'),
 (847954,'all_recalculate.id_bgoenjualan',5845051859460,5845051859460,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:09'),
 (847955,'all_recalculate.id_bau',46173331220758,46173331220757,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:09'),
 (847956,'all_recalculate.total_semua_biaya',52056965252041,52056965252040,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:09');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847957,'all_recalculate.total_semua_biaya_perjam',103287629469,103287629468,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:09'),
 (847958,'all_recalculate.total_tanpa_penyusutan_n_mtc',52056964843314,52056964843314,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:09'),
 (847959,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',103287628658,103287628657,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:09'),
 (847960,'all_recalculate.total_tanpa_penyusutan',52056964924598,52056964924597,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:09'),
 (847961,'all_recalculate.total_tanpa_penyusutan_perjam',103287628819,103287628819,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:09'),
 (847962,'all_recalculate.total_tanpa_mtc',52056964843314,52056964843314,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:09'),
 (847963,'all_recalculate.total_tanpa_mtc_perjam',103287629308,103287629307,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:25:09');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847964,'all_recalculate.id_penyusutan',3290333,0,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:02'),
 (847965,'all_recalculate.id_mtc',40076563,0,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:02'),
 (847966,'all_recalculate.id_gajilain',1460145831,1460145831,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:02'),
 (847967,'all_recalculate.id_bgoenjualan',5845051859460,5845051859460,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:02'),
 (847968,'all_recalculate.id_bau',46173331220758,46173331220757,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:02'),
 (847969,'all_recalculate.total_semua_biaya',52024218738195,52024218738194,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:02'),
 (847970,'all_recalculate.total_semua_biaya_perjam',103222656227,103222656227,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:02'),
 (847971,'all_recalculate.total_tanpa_penyusutan_n_mtc',52024175371299,52024175371299,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:02');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847972,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',103222570182,103222570181,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:02'),
 (847973,'all_recalculate.total_tanpa_penyusutan',52024215447862,52024215447862,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:02'),
 (847974,'all_recalculate.total_tanpa_penyusutan_perjam',103222649699,103222649698,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:02'),
 (847975,'all_recalculate.total_tanpa_mtc',52024175371299,52024175371299,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:02'),
 (847976,'all_recalculate.total_tanpa_mtc_perjam',103222576710,103222576710,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:02'),
 (847977,'all_recalculate.id',424,425,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:02'),
 (847978,'all_recalculate.id_labor',134415328,142396238,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:02');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847979,'all_recalculate.id_penyusutan',3290333,0,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:02'),
 (847980,'all_recalculate.id_mtc',40076563,0,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:02'),
 (847981,'all_recalculate.id_bprodlain_insteadof_mtc',0,440556800,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:02'),
 (847982,'all_recalculate.id_gajilain',1460145831,1460145831,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:02'),
 (847983,'all_recalculate.id_bgoenjualan',5845051859460,5845051859460,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:02'),
 (847984,'all_recalculate.id_bau',46173331220758,46173331220757,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:02'),
 (847985,'all_recalculate.total_semua_biaya',52024218738195,52056965252040,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:02'),
 (847986,'all_recalculate.total_semua_biaya_perjam',103222656227,103287629468,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:02');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847987,'all_recalculate.total_tanpa_penyusutan_n_mtc',52024175371299,52056964843314,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:02'),
 (847988,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',103222570182,103287628657,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:02'),
 (847989,'all_recalculate.total_tanpa_penyusutan',52024215447862,52056964924597,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:02'),
 (847990,'all_recalculate.total_tanpa_penyusutan_perjam',103222649699,103287628819,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:02'),
 (847991,'all_recalculate.total_tanpa_mtc',52024175371299,52056964843314,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:02'),
 (847992,'all_recalculate.total_tanpa_mtc_perjam',103222576710,103287629307,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:02'),
 (847993,'all_recalculate.id',425,424,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:03');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (847994,'all_recalculate.id_labor',142396239,134415328,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:03'),
 (847995,'all_recalculate.id_penyusutan',327444,0,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:03'),
 (847996,'all_recalculate.id_mtc',81284,0,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:03'),
 (847997,'all_recalculate.id_bprodlain_insteadof_mtc',440556800,0,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:03'),
 (847998,'all_recalculate.id_gajilain',1460145831,1460145831,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:03'),
 (847999,'all_recalculate.id_bgoenjualan',5845051859460,5845051859460,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:03'),
 (848000,'all_recalculate.id_bau',46173331220758,46173331220757,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:03'),
 (848001,'all_recalculate.total_semua_biaya',52056965252041,52024218738194,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:03');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848002,'all_recalculate.total_semua_biaya_perjam',103287629469,103222656227,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:03'),
 (848003,'all_recalculate.total_tanpa_penyusutan_n_mtc',52056964843314,52024175371299,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:03'),
 (848004,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',103287628658,103222570181,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:03'),
 (848005,'all_recalculate.total_tanpa_penyusutan',52056964924598,52024215447862,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:03'),
 (848006,'all_recalculate.total_tanpa_penyusutan_perjam',103287628819,103222649698,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:03'),
 (848007,'all_recalculate.total_tanpa_mtc',52056964843314,52024175371299,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:03'),
 (848008,'all_recalculate.total_tanpa_mtc_perjam',103287629308,103222576710,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:03');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848009,'all_recalculate.id_labor',142396239,142396238,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:03'),
 (848010,'all_recalculate.id_penyusutan',327444,0,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:03'),
 (848011,'all_recalculate.id_mtc',81284,0,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:03'),
 (848012,'all_recalculate.id_gajilain',1460145831,1460145831,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:03'),
 (848013,'all_recalculate.id_bgoenjualan',5845051859460,5845051859460,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:03'),
 (848014,'all_recalculate.id_bau',46173331220758,46173331220757,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:03'),
 (848015,'all_recalculate.total_semua_biaya',52056965252041,52056965252040,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:03'),
 (848016,'all_recalculate.total_semua_biaya_perjam',103287629469,103287629468,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:03');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848017,'all_recalculate.total_tanpa_penyusutan_n_mtc',52056964843314,52056964843314,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:03'),
 (848018,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',103287628658,103287628657,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:03'),
 (848019,'all_recalculate.total_tanpa_penyusutan',52056964924598,52056964924597,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:03'),
 (848020,'all_recalculate.total_tanpa_penyusutan_perjam',103287628819,103287628819,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:03'),
 (848021,'all_recalculate.total_tanpa_mtc',52056964843314,52056964843314,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:03'),
 (848022,'all_recalculate.total_tanpa_mtc_perjam',103287629308,103287629307,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:26:03'),
 (848023,'all_recalculate.id_penyusutan',3290333,0,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848024,'all_recalculate.id_mtc',40076563,0,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23'),
 (848025,'all_recalculate.id_gajilain',1460145831,1460145831,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23'),
 (848026,'all_recalculate.id_bgoenjualan',5845051859460,5845051859460,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23'),
 (848027,'all_recalculate.id_bau',46173331220758,46173331220757,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23'),
 (848028,'all_recalculate.total_semua_biaya',52024218738195,52024218738194,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23'),
 (848029,'all_recalculate.total_semua_biaya_perjam',103222656227,103222656227,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23'),
 (848030,'all_recalculate.total_tanpa_penyusutan_n_mtc',52024175371299,52024175371299,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23'),
 (848031,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',103222570182,103222570181,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848032,'all_recalculate.total_tanpa_penyusutan',52024215447862,52024215447862,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23'),
 (848033,'all_recalculate.total_tanpa_penyusutan_perjam',103222649699,103222649698,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23'),
 (848034,'all_recalculate.total_tanpa_mtc',52024175371299,52024175371299,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23'),
 (848035,'all_recalculate.total_tanpa_mtc_perjam',103222576710,103222576710,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23'),
 (848036,'all_recalculate.id',424,425,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23'),
 (848037,'all_recalculate.id_labor',134415328,142396238,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23'),
 (848038,'all_recalculate.id_penyusutan',3290333,0,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23'),
 (848039,'all_recalculate.id_mtc',40076563,0,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848040,'all_recalculate.id_bprodlain_insteadof_mtc',0,440556800,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23'),
 (848041,'all_recalculate.id_gajilain',1460145831,1460145831,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23'),
 (848042,'all_recalculate.id_bgoenjualan',5845051859460,5845051859460,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23'),
 (848043,'all_recalculate.id_bau',46173331220758,46173331220757,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23'),
 (848044,'all_recalculate.total_semua_biaya',52024218738195,52056965252040,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23'),
 (848045,'all_recalculate.total_semua_biaya_perjam',103222656227,103287629468,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23'),
 (848046,'all_recalculate.total_tanpa_penyusutan_n_mtc',52024175371299,52056964843314,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848047,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',103222570182,103287628657,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23'),
 (848048,'all_recalculate.total_tanpa_penyusutan',52024215447862,52056964924597,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23'),
 (848049,'all_recalculate.total_tanpa_penyusutan_perjam',103222649699,103287628819,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23'),
 (848050,'all_recalculate.total_tanpa_mtc',52024175371299,52056964843314,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23'),
 (848051,'all_recalculate.total_tanpa_mtc_perjam',103222576710,103287629307,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23'),
 (848052,'all_recalculate.id',425,424,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23'),
 (848053,'all_recalculate.id_labor',142396239,134415328,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848054,'all_recalculate.id_penyusutan',327444,0,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23'),
 (848055,'all_recalculate.id_mtc',81284,0,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23'),
 (848056,'all_recalculate.id_bprodlain_insteadof_mtc',440556800,0,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23'),
 (848057,'all_recalculate.id_gajilain',1460145831,1460145831,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23'),
 (848058,'all_recalculate.id_bgoenjualan',5845051859460,5845051859460,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23'),
 (848059,'all_recalculate.id_bau',46173331220758,46173331220757,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23'),
 (848060,'all_recalculate.total_semua_biaya',52056965252041,52024218738194,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23'),
 (848061,'all_recalculate.total_semua_biaya_perjam',103287629469,103222656227,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848062,'all_recalculate.total_tanpa_penyusutan_n_mtc',52056964843314,52024175371299,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23'),
 (848063,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',103287628658,103222570181,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23'),
 (848064,'all_recalculate.total_tanpa_penyusutan',52056964924598,52024215447862,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23'),
 (848065,'all_recalculate.total_tanpa_penyusutan_perjam',103287628819,103222649698,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23'),
 (848066,'all_recalculate.total_tanpa_mtc',52056964843314,52024175371299,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23'),
 (848067,'all_recalculate.total_tanpa_mtc_perjam',103287629308,103222576710,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23'),
 (848068,'all_recalculate.id_labor',142396239,142396238,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848069,'all_recalculate.id_penyusutan',327444,0,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23'),
 (848070,'all_recalculate.id_mtc',81284,0,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23'),
 (848071,'all_recalculate.id_gajilain',1460145831,1460145831,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23'),
 (848072,'all_recalculate.id_bgoenjualan',5845051859460,5845051859460,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23'),
 (848073,'all_recalculate.id_bau',46173331220758,46173331220757,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23'),
 (848074,'all_recalculate.total_semua_biaya',52056965252041,52056965252040,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23'),
 (848075,'all_recalculate.total_semua_biaya_perjam',103287629469,103287629468,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23'),
 (848076,'all_recalculate.total_tanpa_penyusutan_n_mtc',52056964843314,52056964843314,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848077,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',103287628658,103287628657,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23'),
 (848078,'all_recalculate.total_tanpa_penyusutan',52056964924598,52056964924597,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23'),
 (848079,'all_recalculate.total_tanpa_penyusutan_perjam',103287628819,103287628819,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23'),
 (848080,'all_recalculate.total_tanpa_mtc',52056964843314,52056964843314,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23'),
 (848081,'all_recalculate.total_tanpa_mtc_perjam',103287629308,103287629307,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-28 16:30:23'),
 (848082,'all_recalculate.id_penyusutan',3290333,3290332,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848083,'all_recalculate.id_mtc',40076563,40076563,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848084,'all_recalculate.id_gajilain',1460145831,1460145831,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848085,'all_recalculate.id_bgoenjualan',5845051859460,5845051859460,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848086,'all_recalculate.id_bau',46173331220758,46173331220757,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848087,'all_recalculate.total_semua_biaya',52024218738195,52024218738194,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848088,'all_recalculate.total_semua_biaya_perjam',103222656227,103222656227,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848089,'all_recalculate.total_tanpa_penyusutan_n_mtc',52024175371299,52024175371299,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848090,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',103222570182,103222570181,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848091,'all_recalculate.total_tanpa_penyusutan',52024215447862,52024215447862,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848092,'all_recalculate.total_tanpa_penyusutan_perjam',103222649699,103222649698,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848093,'all_recalculate.total_tanpa_mtc',52024175371299,52024175371299,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848094,'all_recalculate.total_tanpa_mtc_perjam',103222576710,103222576710,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848095,'all_recalculate.id',424,425,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848096,'all_recalculate.id_labor',134415328,142396238,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848097,'all_recalculate.id_penyusutan',3290333,327443,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848098,'all_recalculate.id_mtc',40076563,81283,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848099,'all_recalculate.id_bprodlain_insteadof_mtc',0,440556800,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848100,'all_recalculate.id_gajilain',1460145831,1460145831,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848101,'all_recalculate.id_bgoenjualan',5845051859460,5845051859460,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848102,'all_recalculate.id_bau',46173331220758,46173331220757,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848103,'all_recalculate.total_semua_biaya',52024218738195,52056965252040,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848104,'all_recalculate.total_semua_biaya_perjam',103222656227,103287629468,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848105,'all_recalculate.total_tanpa_penyusutan_n_mtc',52024175371299,52056964843314,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848106,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',103222570182,103287628657,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848107,'all_recalculate.total_tanpa_penyusutan',52024215447862,52056964924597,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848108,'all_recalculate.total_tanpa_penyusutan_perjam',103222649699,103287628819,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848109,'all_recalculate.total_tanpa_mtc',52024175371299,52056964843314,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848110,'all_recalculate.total_tanpa_mtc_perjam',103222576710,103287629307,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848111,'all_recalculate.id',425,424,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848112,'all_recalculate.id_labor',142396239,134415328,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848113,'all_recalculate.id_penyusutan',327444,3290332,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848114,'all_recalculate.id_mtc',266190493,40076563,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848115,'all_recalculate.id_bprodlain_insteadof_mtc',3200,0,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848116,'all_recalculate.id_gajilain',1460145831,1460145831,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848117,'all_recalculate.id_bgoenjualan',5845051859460,5845051859460,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848118,'all_recalculate.id_bau',46173331220758,46173331220757,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848119,'all_recalculate.total_semua_biaya',52056790807651,52024218738194,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848120,'all_recalculate.total_semua_biaya_perjam',103287283349,103222656227,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848121,'all_recalculate.total_tanpa_penyusutan_n_mtc',52056524289714,52024175371299,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848122,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',103286754544,103222570181,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848123,'all_recalculate.total_tanpa_penyusutan',52056790480207,52024215447862,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848124,'all_recalculate.total_tanpa_penyusutan_perjam',103287282699,103222649698,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848125,'all_recalculate.total_tanpa_mtc',52056524289714,52024175371299,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848126,'all_recalculate.total_tanpa_mtc_perjam',103286755193,103222576710,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848127,'all_recalculate.id_labor',142396239,142396238,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848128,'all_recalculate.id_penyusutan',327444,327443,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848129,'all_recalculate.id_mtc',266190493,81283,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848130,'all_recalculate.id_bprodlain_insteadof_mtc',3200,440556800,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848131,'all_recalculate.id_gajilain',1460145831,1460145831,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848132,'all_recalculate.id_bgoenjualan',5845051859460,5845051859460,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848133,'all_recalculate.id_bau',46173331220758,46173331220757,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848134,'all_recalculate.total_semua_biaya',52056790807651,52056965252040,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848135,'all_recalculate.total_semua_biaya_perjam',103287283349,103287629468,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848136,'all_recalculate.total_tanpa_penyusutan_n_mtc',52056524289714,52056964843314,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848137,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',103286754544,103287628657,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848138,'all_recalculate.total_tanpa_penyusutan',52056790480207,52056964924597,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848139,'all_recalculate.total_tanpa_penyusutan_perjam',103287282699,103287628819,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848140,'all_recalculate.total_tanpa_mtc',52056524289714,52056964843314,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848141,'all_recalculate.total_tanpa_mtc_perjam',103286755193,103287629307,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848142,'all_recalculate.id_penyusutan',3290333,3290332,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848143,'all_recalculate.id_mtc',40076563,40076563,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848144,'all_recalculate.id_gajilain',1460145831,1460145831,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848145,'all_recalculate.id_bgoenjualan',5845051859460,5845051859460,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848146,'all_recalculate.id_bau',46173331220758,46173331220757,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848147,'all_recalculate.total_semua_biaya',52024218738195,52024218738194,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848148,'all_recalculate.total_semua_biaya_perjam',103222656227,103222656227,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848149,'all_recalculate.total_tanpa_penyusutan_n_mtc',52024175371299,52024175371299,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848150,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',103222570182,103222570181,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848151,'all_recalculate.total_tanpa_penyusutan',52024215447862,52024215447862,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848152,'all_recalculate.total_tanpa_penyusutan_perjam',103222649699,103222649698,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848153,'all_recalculate.total_tanpa_mtc',52024175371299,52024175371299,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848154,'all_recalculate.total_tanpa_mtc_perjam',103222576710,103222576710,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848155,'all_recalculate.id',424,425,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848156,'all_recalculate.id_labor',134415328,142396238,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848157,'all_recalculate.id_penyusutan',3290333,327443,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848158,'all_recalculate.id_mtc',40076563,81283,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848159,'all_recalculate.id_bprodlain_insteadof_mtc',0,440556800,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848160,'all_recalculate.id_gajilain',1460145831,1460145831,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848161,'all_recalculate.id_bgoenjualan',5845051859460,5845051859460,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848162,'all_recalculate.id_bau',46173331220758,46173331220757,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848163,'all_recalculate.total_semua_biaya',52024218738195,52056965252040,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848164,'all_recalculate.total_semua_biaya_perjam',103222656227,103287629468,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848165,'all_recalculate.total_tanpa_penyusutan_n_mtc',52024175371299,52056964843314,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848166,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',103222570182,103287628657,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848167,'all_recalculate.total_tanpa_penyusutan',52024215447862,52056964924597,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848168,'all_recalculate.total_tanpa_penyusutan_perjam',103222649699,103287628819,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848169,'all_recalculate.total_tanpa_mtc',52024175371299,52056964843314,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848170,'all_recalculate.total_tanpa_mtc_perjam',103222576710,103287629307,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848171,'all_recalculate.id',425,424,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848172,'all_recalculate.id_labor',142396239,134415328,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848173,'all_recalculate.id_penyusutan',327444,3290332,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848174,'all_recalculate.id_mtc',266190493,40076563,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848175,'all_recalculate.id_bprodlain_insteadof_mtc',3200,0,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848176,'all_recalculate.id_gajilain',1460145831,1460145831,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848177,'all_recalculate.id_bgoenjualan',5845051859460,5845051859460,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848178,'all_recalculate.id_bau',46173331220758,46173331220757,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848179,'all_recalculate.total_semua_biaya',52056790807651,52024218738194,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848180,'all_recalculate.total_semua_biaya_perjam',103287283349,103222656227,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848181,'all_recalculate.total_tanpa_penyusutan_n_mtc',52056524289714,52024175371299,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848182,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',103286754544,103222570181,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848183,'all_recalculate.total_tanpa_penyusutan',52056790480207,52024215447862,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848184,'all_recalculate.total_tanpa_penyusutan_perjam',103287282699,103222649698,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848185,'all_recalculate.total_tanpa_mtc',52056524289714,52024175371299,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848186,'all_recalculate.total_tanpa_mtc_perjam',103286755193,103222576710,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848187,'all_recalculate.id_labor',142396239,142396238,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848188,'all_recalculate.id_penyusutan',327444,327443,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848189,'all_recalculate.id_mtc',266190493,81283,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848190,'all_recalculate.id_bprodlain_insteadof_mtc',3200,440556800,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848191,'all_recalculate.id_gajilain',1460145831,1460145831,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848192,'all_recalculate.id_bgoenjualan',5845051859460,5845051859460,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848193,'all_recalculate.id_bau',46173331220758,46173331220757,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848194,'all_recalculate.total_semua_biaya',52056790807651,52056965252040,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848195,'all_recalculate.total_semua_biaya_perjam',103287283349,103287629468,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848196,'all_recalculate.total_tanpa_penyusutan_n_mtc',52056524289714,52056964843314,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848197,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',103286754544,103287628657,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848198,'all_recalculate.total_tanpa_penyusutan',52056790480207,52056964924597,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848199,'all_recalculate.total_tanpa_penyusutan_perjam',103287282699,103287628819,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848200,'all_recalculate.total_tanpa_mtc',52056524289714,52056964843314,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848201,'all_recalculate.total_tanpa_mtc_perjam',103286755193,103287629307,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-29 00:48:51'),
 (848202,'all_recalculate.id_penyusutan',3290333,0,3,1,134,2,'Accounting',NULL,NULL,'2021-04-29 00:56:56');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848203,'all_recalculate.id_mtc',40076563,0,3,1,134,2,'Accounting',NULL,NULL,'2021-04-29 00:56:56'),
 (848204,'all_recalculate.id_gajilain',1460145831,1460145831,3,1,134,2,'Accounting',NULL,NULL,'2021-04-29 00:56:56'),
 (848205,'all_recalculate.id_bgoenjualan',5845051859460,5845051859460,3,1,134,2,'Accounting',NULL,NULL,'2021-04-29 00:56:56'),
 (848206,'all_recalculate.id_bau',46173331220758,46173331220757,3,1,134,2,'Accounting',NULL,NULL,'2021-04-29 00:56:56'),
 (848207,'all_recalculate.total_semua_biaya',52024218738195,52024218738194,3,1,134,2,'Accounting',NULL,NULL,'2021-04-29 00:56:56'),
 (848208,'all_recalculate.total_semua_biaya_perjam',103222656227,103222656227,3,1,134,2,'Accounting',NULL,NULL,'2021-04-29 00:56:56'),
 (848209,'all_recalculate.total_tanpa_penyusutan_n_mtc',52024175371299,52024175371299,3,1,134,2,'Accounting',NULL,NULL,'2021-04-29 00:56:56'),
 (848210,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',103222570182,103222570181,3,1,134,2,'Accounting',NULL,NULL,'2021-04-29 00:56:56');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848211,'all_recalculate.total_tanpa_penyusutan',52024215447862,52024215447862,3,1,134,2,'Accounting',NULL,NULL,'2021-04-29 00:56:56'),
 (848212,'all_recalculate.total_tanpa_penyusutan_perjam',103222649699,103222649698,3,1,134,2,'Accounting',NULL,NULL,'2021-04-29 00:56:56'),
 (848213,'all_recalculate.total_tanpa_mtc',52024175371299,52024175371299,3,1,134,2,'Accounting',NULL,NULL,'2021-04-29 00:56:56'),
 (848214,'all_recalculate.total_tanpa_mtc_perjam',103222576710,103222576710,3,1,134,2,'Accounting',NULL,NULL,'2021-04-29 00:56:56'),
 (848215,'all_recalculate.id',424,425,3,6,135,4,'Accounting',NULL,NULL,'2021-04-29 00:56:56'),
 (848216,'all_recalculate.id_labor',134415328,142396238,3,6,135,4,'Accounting',NULL,NULL,'2021-04-29 00:56:56'),
 (848217,'all_recalculate.id_penyusutan',3290333,0,3,6,135,4,'Accounting',NULL,NULL,'2021-04-29 00:56:56'),
 (848218,'all_recalculate.id_mtc',40076563,0,3,6,135,4,'Accounting',NULL,NULL,'2021-04-29 00:56:56');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848219,'all_recalculate.id_bprodlain_insteadof_mtc',0,3200,3,6,135,4,'Accounting',NULL,NULL,'2021-04-29 00:56:56'),
 (848220,'all_recalculate.id_gajilain',1460145831,1460145831,3,6,135,4,'Accounting',NULL,NULL,'2021-04-29 00:56:56'),
 (848221,'all_recalculate.id_bgoenjualan',5845051859460,5845051859460,3,6,135,4,'Accounting',NULL,NULL,'2021-04-29 00:56:56'),
 (848222,'all_recalculate.id_bau',46173331220758,46173331220757,3,6,135,4,'Accounting',NULL,NULL,'2021-04-29 00:56:56'),
 (848223,'all_recalculate.total_semua_biaya',52024218738195,52056790807650,3,6,135,4,'Accounting',NULL,NULL,'2021-04-29 00:56:56'),
 (848224,'all_recalculate.total_semua_biaya_perjam',103222656227,103287283349,3,6,135,4,'Accounting',NULL,NULL,'2021-04-29 00:56:56'),
 (848225,'all_recalculate.total_tanpa_penyusutan_n_mtc',52024175371299,52056524289714,3,6,135,4,'Accounting',NULL,NULL,'2021-04-29 00:56:56'),
 (848226,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',103222570182,103286754543,3,6,135,4,'Accounting',NULL,NULL,'2021-04-29 00:56:56');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848227,'all_recalculate.total_tanpa_penyusutan',52024215447862,52056790480207,3,6,135,4,'Accounting',NULL,NULL,'2021-04-29 00:56:56'),
 (848228,'all_recalculate.total_tanpa_penyusutan_perjam',103222649699,103287282699,3,6,135,4,'Accounting',NULL,NULL,'2021-04-29 00:56:56'),
 (848229,'all_recalculate.total_tanpa_mtc',52024175371299,52056524289714,3,6,135,4,'Accounting',NULL,NULL,'2021-04-29 00:56:56'),
 (848230,'all_recalculate.total_tanpa_mtc_perjam',103222576710,103286755193,3,6,135,4,'Accounting',NULL,NULL,'2021-04-29 00:56:56'),
 (848231,'all_recalculate.id',425,424,3,1,134,2,'Accounting',NULL,NULL,'2021-04-29 00:56:56'),
 (848232,'all_recalculate.id_labor',142396239,134415328,3,1,134,2,'Accounting',NULL,NULL,'2021-04-29 00:56:56'),
 (848233,'all_recalculate.id_penyusutan',327444,0,3,1,134,2,'Accounting',NULL,NULL,'2021-04-29 00:56:56'),
 (848234,'all_recalculate.id_mtc',266190493,0,3,1,134,2,'Accounting',NULL,NULL,'2021-04-29 00:56:56');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848235,'all_recalculate.id_bprodlain_insteadof_mtc',3200,0,3,1,134,2,'Accounting',NULL,NULL,'2021-04-29 00:56:56'),
 (848236,'all_recalculate.id_gajilain',1460145831,1460145831,3,1,134,2,'Accounting',NULL,NULL,'2021-04-29 00:56:56'),
 (848237,'all_recalculate.id_bgoenjualan',5845051859460,5845051859460,3,1,134,2,'Accounting',NULL,NULL,'2021-04-29 00:56:56'),
 (848238,'all_recalculate.id_bau',46173331220758,46173331220757,3,1,134,2,'Accounting',NULL,NULL,'2021-04-29 00:56:56'),
 (848239,'all_recalculate.total_semua_biaya',52056790807651,52024218738194,3,1,134,2,'Accounting',NULL,NULL,'2021-04-29 00:56:56'),
 (848240,'all_recalculate.total_semua_biaya_perjam',103287283349,103222656227,3,1,134,2,'Accounting',NULL,NULL,'2021-04-29 00:56:56'),
 (848241,'all_recalculate.total_tanpa_penyusutan_n_mtc',52056524289714,52024175371299,3,1,134,2,'Accounting',NULL,NULL,'2021-04-29 00:56:56'),
 (848242,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',103286754544,103222570181,3,1,134,2,'Accounting',NULL,NULL,'2021-04-29 00:56:56');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848243,'all_recalculate.total_tanpa_penyusutan',52056790480207,52024215447862,3,1,134,2,'Accounting',NULL,NULL,'2021-04-29 00:56:56'),
 (848244,'all_recalculate.total_tanpa_penyusutan_perjam',103287282699,103222649698,3,1,134,2,'Accounting',NULL,NULL,'2021-04-29 00:56:56'),
 (848245,'all_recalculate.total_tanpa_mtc',52056524289714,52024175371299,3,1,134,2,'Accounting',NULL,NULL,'2021-04-29 00:56:56'),
 (848246,'all_recalculate.total_tanpa_mtc_perjam',103286755193,103222576710,3,1,134,2,'Accounting',NULL,NULL,'2021-04-29 00:56:56'),
 (848247,'all_recalculate.id_labor',142396239,142396238,3,6,135,4,'Accounting',NULL,NULL,'2021-04-29 00:56:56'),
 (848248,'all_recalculate.id_penyusutan',327444,0,3,6,135,4,'Accounting',NULL,NULL,'2021-04-29 00:56:56'),
 (848249,'all_recalculate.id_mtc',266190493,0,3,6,135,4,'Accounting',NULL,NULL,'2021-04-29 00:56:56'),
 (848250,'all_recalculate.id_gajilain',1460145831,1460145831,3,6,135,4,'Accounting',NULL,NULL,'2021-04-29 00:56:56');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848251,'all_recalculate.id_bgoenjualan',5845051859460,5845051859460,3,6,135,4,'Accounting',NULL,NULL,'2021-04-29 00:56:56'),
 (848252,'all_recalculate.id_bau',46173331220758,46173331220757,3,6,135,4,'Accounting',NULL,NULL,'2021-04-29 00:56:56'),
 (848253,'all_recalculate.total_semua_biaya',52056790807651,52056790807650,3,6,135,4,'Accounting',NULL,NULL,'2021-04-29 00:56:56'),
 (848254,'all_recalculate.total_semua_biaya_perjam',103287283349,103287283349,3,6,135,4,'Accounting',NULL,NULL,'2021-04-29 00:56:56'),
 (848255,'all_recalculate.total_tanpa_penyusutan_n_mtc',52056524289714,52056524289714,3,6,135,4,'Accounting',NULL,NULL,'2021-04-29 00:56:56'),
 (848256,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',103286754544,103286754543,3,6,135,4,'Accounting',NULL,NULL,'2021-04-29 00:56:56'),
 (848257,'all_recalculate.total_tanpa_penyusutan',52056790480207,52056790480207,3,6,135,4,'Accounting',NULL,NULL,'2021-04-29 00:56:56');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848258,'all_recalculate.total_tanpa_penyusutan_perjam',103287282699,103287282699,3,6,135,4,'Accounting',NULL,NULL,'2021-04-29 00:56:56'),
 (848259,'all_recalculate.total_tanpa_mtc',52056524289714,52056524289714,3,6,135,4,'Accounting',NULL,NULL,'2021-04-29 00:56:56'),
 (848260,'all_recalculate.total_tanpa_mtc_perjam',103286755193,103286755193,3,6,135,4,'Accounting',NULL,NULL,'2021-04-29 00:56:56'),
 (848261,'all_recalculate.id_penyusutan',3290333,0,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:47'),
 (848262,'all_recalculate.id_mtc',40076563,0,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:47'),
 (848263,'all_recalculate.id_gajilain',1460145831,1460145831,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:47'),
 (848264,'all_recalculate.id_bgoenjualan',5845051859460,5845051859460,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:47'),
 (848265,'all_recalculate.id_bau',46173331220758,46173331220757,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:47');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848266,'all_recalculate.total_semua_biaya',52024218738195,52024218738194,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:47'),
 (848267,'all_recalculate.total_semua_biaya_perjam',103222656227,103222656227,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:47'),
 (848268,'all_recalculate.total_tanpa_penyusutan_n_mtc',52024175371299,52024175371299,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:47'),
 (848269,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',103222570182,103222570181,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:47'),
 (848270,'all_recalculate.total_tanpa_penyusutan',52024215447862,52024215447862,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:47'),
 (848271,'all_recalculate.total_tanpa_penyusutan_perjam',103222649699,103222649698,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:47'),
 (848272,'all_recalculate.total_tanpa_mtc',52024175371299,52024175371299,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:47');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848273,'all_recalculate.total_tanpa_mtc_perjam',103222576710,103222576710,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:47'),
 (848274,'all_recalculate.id',424,425,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:47'),
 (848275,'all_recalculate.id_labor',134415328,142396238,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:47'),
 (848276,'all_recalculate.id_penyusutan',3290333,0,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:47'),
 (848277,'all_recalculate.id_mtc',40076563,0,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:47'),
 (848278,'all_recalculate.id_bprodlain_insteadof_mtc',0,3200,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:47'),
 (848279,'all_recalculate.id_gajilain',1460145831,1460145831,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:47'),
 (848280,'all_recalculate.id_bgoenjualan',5845051859460,5845051859460,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:47');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848281,'all_recalculate.id_bau',46173331220758,46173331220757,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:47'),
 (848282,'all_recalculate.total_semua_biaya',52024218738195,52056790807650,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:47'),
 (848283,'all_recalculate.total_semua_biaya_perjam',103222656227,103287283349,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:47'),
 (848284,'all_recalculate.total_tanpa_penyusutan_n_mtc',52024175371299,52056524289714,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:47'),
 (848285,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',103222570182,103286754543,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:47'),
 (848286,'all_recalculate.total_tanpa_penyusutan',52024215447862,52056790480207,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:47'),
 (848287,'all_recalculate.total_tanpa_penyusutan_perjam',103222649699,103287282699,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:47');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848288,'all_recalculate.total_tanpa_mtc',52024175371299,52056524289714,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:47'),
 (848289,'all_recalculate.total_tanpa_mtc_perjam',103222576710,103286755193,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:47'),
 (848290,'all_recalculate.id',425,424,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848291,'all_recalculate.id_labor',142396239,134415328,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848292,'all_recalculate.id_penyusutan',327444,0,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848293,'all_recalculate.id_mtc',266190493,0,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848294,'all_recalculate.id_bprodlain_insteadof_mtc',3200,0,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848295,'all_recalculate.id_gajilain',1460145831,1460145831,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848296,'all_recalculate.id_bgoenjualan',5845051859460,5845051859460,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848297,'all_recalculate.id_bau',46173331220758,46173331220757,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848298,'all_recalculate.total_semua_biaya',52056790807651,52024218738194,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848299,'all_recalculate.total_semua_biaya_perjam',103287283349,103222656227,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848300,'all_recalculate.total_tanpa_penyusutan_n_mtc',52056524289714,52024175371299,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848301,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',103286754544,103222570181,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848302,'all_recalculate.total_tanpa_penyusutan',52056790480207,52024215447862,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848303,'all_recalculate.total_tanpa_penyusutan_perjam',103287282699,103222649698,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848304,'all_recalculate.total_tanpa_mtc',52056524289714,52024175371299,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848305,'all_recalculate.total_tanpa_mtc_perjam',103286755193,103222576710,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848306,'all_recalculate.id_labor',142396239,142396238,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848307,'all_recalculate.id_penyusutan',327444,0,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848308,'all_recalculate.id_mtc',266190493,0,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848309,'all_recalculate.id_gajilain',1460145831,1460145831,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848310,'all_recalculate.id_bgoenjualan',5845051859460,5845051859460,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848311,'all_recalculate.id_bau',46173331220758,46173331220757,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848312,'all_recalculate.total_semua_biaya',52056790807651,52056790807650,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848313,'all_recalculate.total_semua_biaya_perjam',103287283349,103287283349,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848314,'all_recalculate.total_tanpa_penyusutan_n_mtc',52056524289714,52056524289714,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848315,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',103286754544,103286754543,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848316,'all_recalculate.total_tanpa_penyusutan',52056790480207,52056790480207,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848317,'all_recalculate.total_tanpa_penyusutan_perjam',103287282699,103287282699,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848318,'all_recalculate.total_tanpa_mtc',52056524289714,52056524289714,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848319,'all_recalculate.total_tanpa_mtc_perjam',103286755193,103286755193,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848320,'all_recalculate.id_penyusutan',3290333,3290332,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848321,'all_recalculate.id_mtc',40076563,40076563,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848322,'all_recalculate.id_gajilain',1460145831,1460145831,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848323,'all_recalculate.id_bgoenjualan',5845051859460,5845051859460,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848324,'all_recalculate.id_bau',46173331220758,46173331220757,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848325,'all_recalculate.total_semua_biaya',52024218738195,52024218738194,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848326,'all_recalculate.total_semua_biaya_perjam',103222656227,103222656227,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848327,'all_recalculate.total_tanpa_penyusutan_n_mtc',52024175371299,52024175371299,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848328,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',103222570182,103222570181,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848329,'all_recalculate.total_tanpa_penyusutan',52024215447862,52024215447862,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848330,'all_recalculate.total_tanpa_penyusutan_perjam',103222649699,103222649698,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848331,'all_recalculate.total_tanpa_mtc',52024175371299,52024175371299,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848332,'all_recalculate.total_tanpa_mtc_perjam',103222576710,103222576710,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848333,'all_recalculate.id',424,425,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848334,'all_recalculate.id_labor',134415328,142396238,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848335,'all_recalculate.id_penyusutan',3290333,0,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848336,'all_recalculate.id_mtc',40076563,0,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848337,'all_recalculate.id_bprodlain_insteadof_mtc',0,3200,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848338,'all_recalculate.id_gajilain',1460145831,1460145831,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848339,'all_recalculate.id_bgoenjualan',5845051859460,5845051859460,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848340,'all_recalculate.id_bau',46173331220758,46173331220757,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848341,'all_recalculate.total_semua_biaya',52024218738195,52056790807650,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848342,'all_recalculate.total_semua_biaya_perjam',103222656227,103287283349,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848343,'all_recalculate.total_tanpa_penyusutan_n_mtc',52024175371299,52056524289714,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848344,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',103222570182,103286754543,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848345,'all_recalculate.total_tanpa_penyusutan',52024215447862,52056790480207,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848346,'all_recalculate.total_tanpa_penyusutan_perjam',103222649699,103287282699,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848347,'all_recalculate.total_tanpa_mtc',52024175371299,52056524289714,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848348,'all_recalculate.total_tanpa_mtc_perjam',103222576710,103286755193,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848349,'all_recalculate.id',425,424,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848350,'all_recalculate.id_labor',142396239,134415328,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848351,'all_recalculate.id_penyusutan',327444,3290332,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848352,'all_recalculate.id_mtc',266190493,40076563,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848353,'all_recalculate.id_bprodlain_insteadof_mtc',3200,0,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848354,'all_recalculate.id_gajilain',1460145831,1460145831,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848355,'all_recalculate.id_bgoenjualan',5845051859460,5845051859460,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848356,'all_recalculate.id_bau',46173331220758,46173331220757,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848357,'all_recalculate.total_semua_biaya',52056790807651,52024218738194,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848358,'all_recalculate.total_semua_biaya_perjam',103287283349,103222656227,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848359,'all_recalculate.total_tanpa_penyusutan_n_mtc',52056524289714,52024175371299,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848360,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',103286754544,103222570181,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848361,'all_recalculate.total_tanpa_penyusutan',52056790480207,52024215447862,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848362,'all_recalculate.total_tanpa_penyusutan_perjam',103287282699,103222649698,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848363,'all_recalculate.total_tanpa_mtc',52056524289714,52024175371299,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848364,'all_recalculate.total_tanpa_mtc_perjam',103286755193,103222576710,3,1,134,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848365,'all_recalculate.id_labor',142396239,142396238,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848366,'all_recalculate.id_penyusutan',327444,0,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848367,'all_recalculate.id_mtc',266190493,0,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848368,'all_recalculate.id_gajilain',1460145831,1460145831,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848369,'all_recalculate.id_bgoenjualan',5845051859460,5845051859460,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848370,'all_recalculate.id_bau',46173331220758,46173331220757,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848371,'all_recalculate.total_semua_biaya',52056790807651,52056790807650,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848372,'all_recalculate.total_semua_biaya_perjam',103287283349,103287283349,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848373,'all_recalculate.total_tanpa_penyusutan_n_mtc',52056524289714,52056524289714,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848374,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',103286754544,103286754543,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848375,'all_recalculate.total_tanpa_penyusutan',52056790480207,52056790480207,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848376,'all_recalculate.total_tanpa_penyusutan_perjam',103287282699,103287282699,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848377,'all_recalculate.total_tanpa_mtc',52056524289714,52056524289714,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848378,'all_recalculate.total_tanpa_mtc_perjam',103286755193,103286755193,3,6,135,4,'EDP Administrator',NULL,NULL,'2021-04-30 16:00:48'),
 (848379,'all_recalculate.id_labor',222100328,0,3,1,137,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:30:59'),
 (848380,'all_recalculate.id_penyusutan',2494350,0,3,1,137,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:30:59'),
 (848381,'all_recalculate.id_mtc',10314442,0,3,1,137,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:30:59'),
 (848382,'all_recalculate.id_bprodlain_insteadof_mtc',419795973822,0,3,1,137,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:30:59'),
 (848383,'all_recalculate.id_gajilain',1134917422204,0,3,1,137,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:30:59'),
 (848384,'all_recalculate.id_bgoenjualan',4543142917415500,0,3,1,137,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:30:59'),
 (848385,'all_recalculate.id_bau',35888824898885000,0,3,1,137,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:30:59');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848386,'all_recalculate.total_semua_biaya',40433523288944000,0,3,1,137,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:30:59'),
 (848387,'all_recalculate.total_semua_biaya_perjam',80225244620921,0,3,1,137,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:30:59'),
 (848388,'all_recalculate.total_tanpa_penyusutan_n_mtc',40433523276135000,0,3,1,137,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:30:59'),
 (848389,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',80225244595507,0,3,1,137,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:30:59'),
 (848390,'all_recalculate.total_tanpa_penyusutan',40433523286450000,0,3,1,137,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:30:59'),
 (848391,'all_recalculate.total_tanpa_penyusutan_perjam',80225244615972,0,3,1,137,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:30:59'),
 (848392,'all_recalculate.total_tanpa_mtc',40433523276135000,0,3,1,137,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:30:59');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848393,'all_recalculate.total_tanpa_mtc_perjam',80225244600456,0,3,1,137,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:30:59'),
 (848394,'all_recalculate.id',426,427,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:30:59'),
 (848395,'all_recalculate.id_labor',222100328,0,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:30:59'),
 (848396,'all_recalculate.id_penyusutan',2494350,0,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:30:59'),
 (848397,'all_recalculate.id_mtc',10314442,0,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:30:59'),
 (848398,'all_recalculate.id_bprodlain_insteadof_mtc',419795973822,0,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:30:59'),
 (848399,'all_recalculate.id_gajilain',1134917422204,0,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:30:59'),
 (848400,'all_recalculate.id_bgoenjualan',4543142917415500,0,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:30:59');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848401,'all_recalculate.id_bau',35888824898885000,0,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:30:59'),
 (848402,'all_recalculate.total_semua_biaya',40433523288944000,0,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:30:59'),
 (848403,'all_recalculate.total_semua_biaya_perjam',80225244620921,0,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:30:59'),
 (848404,'all_recalculate.total_tanpa_penyusutan_n_mtc',40433523276135000,0,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:30:59'),
 (848405,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',80225244595507,0,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:30:59'),
 (848406,'all_recalculate.total_tanpa_penyusutan',40433523286450000,0,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:30:59'),
 (848407,'all_recalculate.total_tanpa_penyusutan_perjam',80225244615972,0,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:30:59');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848408,'all_recalculate.total_tanpa_mtc',40433523276135000,0,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:30:59'),
 (848409,'all_recalculate.total_tanpa_mtc_perjam',80225244600456,0,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:30:59'),
 (848410,'all_recalculate.id',427,426,3,1,137,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:00'),
 (848411,'all_recalculate.id_labor',222100328,0,3,1,137,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:00'),
 (848412,'all_recalculate.id_penyusutan',4024870000,0,3,1,137,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:00'),
 (848413,'all_recalculate.id_mtc',8597393,0,3,1,137,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:00'),
 (848414,'all_recalculate.id_bprodlain_insteadof_mtc',5424630948,0,3,1,137,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:00'),
 (848415,'all_recalculate.id_gajilain',1134917422204,0,3,1,137,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:00');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848416,'all_recalculate.id_bgoenjualan',4543142917415500,0,3,1,137,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:00'),
 (848417,'all_recalculate.id_bau',35888824898885000,0,3,1,137,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:00'),
 (848418,'all_recalculate.total_semua_biaya',40433112782501000,0,3,1,137,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:00'),
 (848419,'all_recalculate.total_semua_biaya_perjam',80224430124010,0,3,1,137,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:00'),
 (848420,'all_recalculate.total_tanpa_penyusutan_n_mtc',40433108749033000,0,3,1,137,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:00'),
 (848421,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',80224422121098,0,3,1,137,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:00'),
 (848422,'all_recalculate.total_tanpa_penyusutan',40433108757631000,0,3,1,137,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:00'),
 (848423,'all_recalculate.total_tanpa_penyusutan_perjam',80224422138156,0,3,1,137,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:00');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848424,'all_recalculate.total_tanpa_mtc',40433108749033000,0,3,1,137,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:00'),
 (848425,'all_recalculate.total_tanpa_mtc_perjam',80224430106951,0,3,1,137,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:00'),
 (848426,'all_recalculate.id_labor',222100328,0,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:00'),
 (848427,'all_recalculate.id_penyusutan',4024870000,0,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:00'),
 (848428,'all_recalculate.id_mtc',8597393,0,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:00'),
 (848429,'all_recalculate.id_bprodlain_insteadof_mtc',5424630948,0,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:00'),
 (848430,'all_recalculate.id_gajilain',1134917422204,0,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:00'),
 (848431,'all_recalculate.id_bgoenjualan',4543142917415500,0,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:00');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848432,'all_recalculate.id_bau',35888824898885000,0,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:00'),
 (848433,'all_recalculate.total_semua_biaya',40433112782501000,0,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:00'),
 (848434,'all_recalculate.total_semua_biaya_perjam',80224430124010,0,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:00'),
 (848435,'all_recalculate.total_tanpa_penyusutan_n_mtc',40433108749033000,0,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:00'),
 (848436,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',80224422121098,0,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:00'),
 (848437,'all_recalculate.total_tanpa_penyusutan',40433108757631000,0,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:00'),
 (848438,'all_recalculate.total_tanpa_penyusutan_perjam',80224422138156,0,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:00');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848439,'all_recalculate.total_tanpa_mtc',40433108749033000,0,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:00'),
 (848440,'all_recalculate.total_tanpa_mtc_perjam',80224430106951,0,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:00'),
 (848441,'all_recalculate.id_labor',222100328,222100327,3,1,137,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:11'),
 (848442,'all_recalculate.id_mtc',10314442,10314442,3,1,137,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:11'),
 (848443,'all_recalculate.id_gajilain',1134917422204,1134917422204,3,1,137,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:11'),
 (848444,'all_recalculate.id_bau',35888824898885000,35888824898885000,3,1,137,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:11'),
 (848445,'all_recalculate.total_semua_biaya',40433523288944000,40433523288944000,3,1,137,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:11'),
 (848446,'all_recalculate.total_semua_biaya_perjam',80225244620921,80225244620921,3,1,137,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:11');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848447,'all_recalculate.total_tanpa_penyusutan_n_mtc',40433523276135000,40433523276135000,3,1,137,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:11'),
 (848448,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',80225244595507,80225244595506,3,1,137,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:11'),
 (848449,'all_recalculate.total_tanpa_penyusutan',40433523286450000,40433523286450000,3,1,137,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:11'),
 (848450,'all_recalculate.total_tanpa_penyusutan_perjam',80225244615972,80225244615971,3,1,137,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:11'),
 (848451,'all_recalculate.total_tanpa_mtc',40433523276135000,40433523276135000,3,1,137,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:11'),
 (848452,'all_recalculate.total_tanpa_mtc_perjam',80225244600456,80225244600455,3,1,137,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:11'),
 (848453,'all_recalculate.id',426,427,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:11');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848454,'all_recalculate.id_labor',222100328,222100327,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:11'),
 (848455,'all_recalculate.id_penyusutan',2494350,4024870000,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:11'),
 (848456,'all_recalculate.id_mtc',10314442,8597393,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:11'),
 (848457,'all_recalculate.id_bprodlain_insteadof_mtc',419795973822,5424630948,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:11'),
 (848458,'all_recalculate.id_gajilain',1134917422204,1134917422204,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:11'),
 (848459,'all_recalculate.id_bau',35888824898885000,35888824898885000,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:11'),
 (848460,'all_recalculate.total_semua_biaya',40433523288944000,40433112782501000,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:11'),
 (848461,'all_recalculate.total_semua_biaya_perjam',80225244620921,80224430124009,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:11');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848462,'all_recalculate.total_tanpa_penyusutan_n_mtc',40433523276135000,40433108749033000,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:11'),
 (848463,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',80225244595507,80224422121098,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:11'),
 (848464,'all_recalculate.total_tanpa_penyusutan',40433523286450000,40433108757631000,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:11'),
 (848465,'all_recalculate.total_tanpa_penyusutan_perjam',80225244615972,80224422138156,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:11'),
 (848466,'all_recalculate.total_tanpa_mtc',40433523276135000,40433108749033000,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:11'),
 (848467,'all_recalculate.total_tanpa_mtc_perjam',80225244600456,80224430106951,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:11'),
 (848468,'all_recalculate.id',427,426,3,1,137,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:11');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848469,'all_recalculate.id_labor',222100328,222100327,3,1,137,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:11'),
 (848470,'all_recalculate.id_penyusutan',4024870000,2494350,3,1,137,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:11'),
 (848471,'all_recalculate.id_mtc',8597393,10314442,3,1,137,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:11'),
 (848472,'all_recalculate.id_bprodlain_insteadof_mtc',5424630948,419795973822,3,1,137,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:11'),
 (848473,'all_recalculate.id_gajilain',1134917422204,1134917422204,3,1,137,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:11'),
 (848474,'all_recalculate.id_bau',35888824898885000,35888824898885000,3,1,137,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:11'),
 (848475,'all_recalculate.total_semua_biaya',40433112782501000,40433523288944000,3,1,137,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:11'),
 (848476,'all_recalculate.total_semua_biaya_perjam',80224430124010,80225244620921,3,1,137,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:11');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848477,'all_recalculate.total_tanpa_penyusutan_n_mtc',40433108749033000,40433523276135000,3,1,137,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:11'),
 (848478,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',80224422121098,80225244595506,3,1,137,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:11'),
 (848479,'all_recalculate.total_tanpa_penyusutan',40433108757631000,40433523286450000,3,1,137,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:11'),
 (848480,'all_recalculate.total_tanpa_penyusutan_perjam',80224422138156,80225244615971,3,1,137,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:11'),
 (848481,'all_recalculate.total_tanpa_mtc',40433108749033000,40433523276135000,3,1,137,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:11'),
 (848482,'all_recalculate.total_tanpa_mtc_perjam',80224430106951,80225244600455,3,1,137,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:11'),
 (848483,'all_recalculate.id_labor',222100328,222100327,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:11');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848484,'all_recalculate.id_penyusutan',4024870000,4024870000,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:11'),
 (848485,'all_recalculate.id_mtc',8597393,8597393,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:11'),
 (848486,'all_recalculate.id_gajilain',1134917422204,1134917422204,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:11'),
 (848487,'all_recalculate.id_bau',35888824898885000,35888824898885000,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:11'),
 (848488,'all_recalculate.total_semua_biaya',40433112782501000,40433112782501000,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:11'),
 (848489,'all_recalculate.total_semua_biaya_perjam',80224430124010,80224430124009,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:11'),
 (848490,'all_recalculate.total_tanpa_penyusutan_n_mtc',40433108749033000,40433108749033000,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:11');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848491,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',80224422121098,80224422121098,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:11'),
 (848492,'all_recalculate.total_tanpa_penyusutan',40433108757631000,40433108757631000,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:11'),
 (848493,'all_recalculate.total_tanpa_penyusutan_perjam',80224422138156,80224422138156,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:11'),
 (848494,'all_recalculate.total_tanpa_mtc',40433108749033000,40433108749033000,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:11'),
 (848495,'all_recalculate.total_tanpa_mtc_perjam',80224430106951,80224430106951,3,2,138,1,'EDP Administrator',NULL,NULL,'2021-04-30 16:31:11'),
 (848496,'all_recalculate.id_labor',130424873,0,3,2,139,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:40:53'),
 (848497,'all_recalculate.id_penyusutan',353325,0,3,2,139,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:40:53');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848498,'all_recalculate.id_mtc',294905027,0,3,2,139,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:40:53'),
 (848499,'all_recalculate.id_bprodlain_insteadof_mtc',595440050,0,3,2,139,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:40:53'),
 (848500,'all_recalculate.id_gajilain',1609770767,0,3,2,139,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:40:53'),
 (848501,'all_recalculate.id_bgoenjualan',6444009506033,0,3,2,139,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:40:53'),
 (848502,'all_recalculate.id_bau',50904832406265,0,3,2,139,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:40:53'),
 (848503,'all_recalculate.total_semua_biaya',57351841389020,0,3,2,139,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:40:53'),
 (848504,'all_recalculate.total_semua_biaya_perjam',113793336090,0,3,2,139,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:40:53'),
 (848505,'all_recalculate.total_tanpa_penyusutan_n_mtc',57351546130669,0,3,2,139,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:40:53');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848506,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',113792750260,0,3,2,139,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:40:53'),
 (848507,'all_recalculate.total_tanpa_penyusutan',57351841035696,0,3,2,139,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:40:53'),
 (848508,'all_recalculate.total_tanpa_penyusutan_perjam',113793335389,0,3,2,139,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:40:53'),
 (848509,'all_recalculate.total_tanpa_mtc',57351546130669,0,3,2,139,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:40:53'),
 (848510,'all_recalculate.total_tanpa_mtc_perjam',113792750961,0,3,2,139,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:40:53'),
 (848511,'all_recalculate.id_labor',130424873,130424873,3,2,139,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:41:05'),
 (848512,'all_recalculate.id_penyusutan',353325,353324,3,2,139,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:41:05'),
 (848513,'all_recalculate.id_mtc',294905027,294905026,3,2,139,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:41:05');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848514,'all_recalculate.id_gajilain',1609770767,1609770767,3,2,139,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:41:05'),
 (848515,'all_recalculate.id_bgoenjualan',6444009506033,6444009506032,3,2,139,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:41:05'),
 (848516,'all_recalculate.id_bau',50904832406265,50904832406264,3,2,139,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:41:05'),
 (848517,'all_recalculate.total_semua_biaya',57351841389020,57351841389020,3,2,139,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:41:05'),
 (848518,'all_recalculate.total_semua_biaya_perjam',113793336090,113793336089,3,2,139,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:41:05'),
 (848519,'all_recalculate.total_tanpa_penyusutan_n_mtc',57351546130669,57351546130669,3,2,139,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:41:05'),
 (848520,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',113792750260,113792750259,3,2,139,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:41:05');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848521,'all_recalculate.total_tanpa_penyusutan',57351841035696,57351841035695,3,2,139,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:41:05'),
 (848522,'all_recalculate.total_tanpa_penyusutan_perjam',113793335389,113793335388,3,2,139,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:41:05'),
 (848523,'all_recalculate.total_tanpa_mtc',57351546130669,57351546130669,3,2,139,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:41:05'),
 (848524,'all_recalculate.total_tanpa_mtc_perjam',113792750961,113792750960,3,2,139,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:41:05'),
 (848525,'all_recalculate.id_labor',85689772,0,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:51:47'),
 (848526,'all_recalculate.id_penyusutan',245769952,0,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:51:47'),
 (848527,'all_recalculate.id_mtc',294285370,0,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:51:47'),
 (848528,'all_recalculate.id_bprodlain_insteadof_mtc',735179160,0,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:51:47');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848529,'all_recalculate.id_gajilain',1987555120,0,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:51:47'),
 (848530,'all_recalculate.id_bgoenjualan',7956303066408,0,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:51:47'),
 (848531,'all_recalculate.id_bau',62851284404498,0,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:51:47'),
 (848532,'all_recalculate.total_semua_biaya',70811304532960,0,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:51:47'),
 (848533,'all_recalculate.total_semua_biaya_perjam',140498620106,0,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:51:47'),
 (848534,'all_recalculate.total_tanpa_penyusutan_n_mtc',70810764477640,0,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:51:47'),
 (848535,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',140497548567,0,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:51:47'),
 (848536,'all_recalculate.total_tanpa_penyusutan',70811058763009,0,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:51:47');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848537,'all_recalculate.total_tanpa_penyusutan_perjam',140498132467,0,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:51:47'),
 (848538,'all_recalculate.total_tanpa_mtc',70810764477640,0,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:51:47'),
 (848539,'all_recalculate.total_tanpa_mtc_perjam',140498036206,0,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:51:47'),
 (848540,'all_recalculate.id_labor',85689772,85689772,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:52:02'),
 (848541,'all_recalculate.id_penyusutan',245769952,245769952,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:52:02'),
 (848542,'all_recalculate.id_mtc',294285370,294285369,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:52:02'),
 (848543,'all_recalculate.id_gajilain',1987555120,1987555120,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:52:02'),
 (848544,'all_recalculate.id_bgoenjualan',7956303066408,7956303066407,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:52:02');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848545,'all_recalculate.id_bau',62851284404498,62851284404497,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:52:02'),
 (848546,'all_recalculate.total_semua_biaya',70811304532960,70811304532960,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:52:02'),
 (848547,'all_recalculate.total_semua_biaya_perjam',140498620106,140498620105,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:52:02'),
 (848548,'all_recalculate.total_tanpa_penyusutan_n_mtc',70810764477640,70810764477639,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:52:02'),
 (848549,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',140497548567,140497548567,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:52:02'),
 (848550,'all_recalculate.total_tanpa_penyusutan',70811058763009,70811058763008,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:52:02'),
 (848551,'all_recalculate.total_tanpa_penyusutan_perjam',140498132467,140498132466,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:52:02');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848552,'all_recalculate.total_tanpa_mtc',70810764477640,70810764477639,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:52:02'),
 (848553,'all_recalculate.total_tanpa_mtc_perjam',140498036206,140498036206,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-04-30 16:52:02'),
 (848554,'all_recalculate.id_labor',85689772,85689772,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-05-19 14:41:17'),
 (848555,'all_recalculate.id_penyusutan',245769952,245769952,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-05-19 14:41:17'),
 (848556,'all_recalculate.id_mtc',294285370,294285369,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-05-19 14:41:17'),
 (848557,'all_recalculate.id_gajilain',1987555120,1987555120,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-05-19 14:41:17'),
 (848558,'all_recalculate.id_bgoenjualan',7956303066408,7956303066407,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-05-19 14:41:17'),
 (848559,'all_recalculate.id_bau',62851284404498,62851284404497,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-05-19 14:41:17');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848560,'all_recalculate.total_semua_biaya',70811304532960,70811304532960,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-05-19 14:41:17'),
 (848561,'all_recalculate.total_semua_biaya_perjam',140498620106,140498620105,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-05-19 14:41:17'),
 (848562,'all_recalculate.total_tanpa_penyusutan_n_mtc',70810764477640,70810764477639,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-05-19 14:41:17'),
 (848563,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',140497548567,140497548567,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-05-19 14:41:17'),
 (848564,'all_recalculate.total_tanpa_penyusutan',70811058763009,70811058763008,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-05-19 14:41:17'),
 (848565,'all_recalculate.total_tanpa_penyusutan_perjam',140498132467,140498132466,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-05-19 14:41:17'),
 (848566,'all_recalculate.total_tanpa_mtc',70810764477640,70810764477639,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-05-19 14:41:17');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848567,'all_recalculate.total_tanpa_mtc_perjam',140498036206,140498036206,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-05-19 14:41:17'),
 (848568,'all_recalculate.id_labor',85689772,85689772,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-05-19 14:41:17'),
 (848569,'all_recalculate.id_penyusutan',245769952,245769952,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-05-19 14:41:17'),
 (848570,'all_recalculate.id_mtc',294285370,294285369,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-05-19 14:41:17'),
 (848571,'all_recalculate.id_gajilain',1987555120,1987555120,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-05-19 14:41:17'),
 (848572,'all_recalculate.id_bgoenjualan',7956303066408,7956303066407,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-05-19 14:41:17'),
 (848573,'all_recalculate.id_bau',62851284404498,62851284404497,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-05-19 14:41:17'),
 (848574,'all_recalculate.total_semua_biaya',70811304532960,70811304532960,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-05-19 14:41:17');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848575,'all_recalculate.total_semua_biaya_perjam',140498620106,140498620105,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-05-19 14:41:17'),
 (848576,'all_recalculate.total_tanpa_penyusutan_n_mtc',70810764477640,70810764477639,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-05-19 14:41:17'),
 (848577,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',140497548567,140497548567,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-05-19 14:41:17'),
 (848578,'all_recalculate.total_tanpa_penyusutan',70811058763009,70811058763008,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-05-19 14:41:17'),
 (848579,'all_recalculate.total_tanpa_penyusutan_perjam',140498132467,140498132466,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-05-19 14:41:17'),
 (848580,'all_recalculate.total_tanpa_mtc',70810764477640,70810764477639,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-05-19 14:41:17'),
 (848581,'all_recalculate.total_tanpa_mtc_perjam',140498036206,140498036206,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-05-19 14:41:17');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848582,'all_recalculate.id_labor',85689772,85689772,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-05-19 14:42:49'),
 (848583,'all_recalculate.id_penyusutan',245769952,0,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-05-19 14:42:49'),
 (848584,'all_recalculate.id_mtc',294285370,0,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-05-19 14:42:49'),
 (848585,'all_recalculate.id_gajilain',1987555120,1987555120,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-05-19 14:42:49'),
 (848586,'all_recalculate.id_bgoenjualan',7956303066408,7956303066407,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-05-19 14:42:49'),
 (848587,'all_recalculate.id_bau',62851284404498,62851284404497,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-05-19 14:42:49'),
 (848588,'all_recalculate.total_semua_biaya',70811304532960,70811304532960,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-05-19 14:42:49'),
 (848589,'all_recalculate.total_semua_biaya_perjam',140498620106,140498620105,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-05-19 14:42:49');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (848590,'all_recalculate.total_tanpa_penyusutan_n_mtc',70810764477640,70810764477639,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-05-19 14:42:49'),
 (848591,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',140497548567,140497548567,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-05-19 14:42:49'),
 (848592,'all_recalculate.total_tanpa_penyusutan',70811058763009,70811058763008,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-05-19 14:42:49'),
 (848593,'all_recalculate.total_tanpa_penyusutan_perjam',140498132467,140498132466,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-05-19 14:42:49'),
 (848594,'all_recalculate.total_tanpa_mtc',70810764477640,70810764477639,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-05-19 14:42:49'),
 (848595,'all_recalculate.total_tanpa_mtc_perjam',140498036206,140498036206,3,2,141,2,'EDP Administrator',NULL,NULL,'2021-05-19 14:42:49');
/*!40000 ALTER TABLE `history_recalculate_temporary` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`hlogs_listriks`
--

DROP TABLE IF EXISTS `hlogs_listriks`;
CREATE TABLE `hlogs_listriks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `changed_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `table_column` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `before` bigint(20) DEFAULT NULL,
  `history_latest` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `code_mesin` int(11) DEFAULT NULL,
  `group_mesin` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=915 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`hlogs_listriks`
--

/*!40000 ALTER TABLE `hlogs_listriks` DISABLE KEYS */;
INSERT INTO `hlogs_listriks` (`id`,`changed_by`,`table_column`,`before`,`history_latest`,`created_at`,`updated_at`,`company_id`,`code_mesin`,`group_mesin`,`category_id`,`created_by`) VALUES 
 (902,'EDP Administrator','listrik.ncost_bulan_plus_adm',0,428513852,NULL,'2021-04-27 14:39:40',3,132,2,2,NULL),
 (903,'EDP Administrator','listrik.ncost_bulan_plus_adm',0,428511225,NULL,'2021-04-27 15:28:52',3,132,2,2,NULL),
 (904,'EDP Administrator','listrik.ncost_bulan_plus_adm',0,333726049,NULL,'2021-04-27 15:28:52',3,133,2,2,NULL),
 (905,'EDP Administrator','listrik.ncost_bulan_plus_adm',0,4197735305,NULL,'2021-04-28 10:53:25',3,134,1,2,NULL),
 (906,'EDP Administrator','listrik.ncost_bulan_plus_adm',0,4197729923,NULL,'2021-04-28 16:12:01',3,134,1,2,NULL),
 (907,'EDP Administrator','listrik.ncost_bulan_plus_adm',0,36538664228,NULL,'2021-04-28 16:12:01',3,135,6,4,NULL),
 (908,'Accounting','listrik.ncost_bulan_plus_adm',0,4197729923,NULL,'2021-04-29 00:54:54',3,134,1,2,NULL),
 (909,'Accounting','listrik.ncost_bulan_plus_adm',0,36538664228,NULL,'2021-04-29 00:54:54',3,135,6,4,NULL),
 (910,'EDP Administrator','listrik.ncost_bulan_plus_adm',0,524340783,NULL,'2021-04-30 16:04:53',3,137,1,1,NULL);
INSERT INTO `hlogs_listriks` (`id`,`changed_by`,`table_column`,`before`,`history_latest`,`created_at`,`updated_at`,`company_id`,`code_mesin`,`group_mesin`,`category_id`,`created_by`) VALUES 
 (911,'EDP Administrator','listrik.ncost_bulan_plus_adm',0,524338307,NULL,'2021-04-30 16:29:46',3,137,1,1,NULL),
 (912,'EDP Administrator','listrik.ncost_bulan_plus_adm',0,368579160,NULL,'2021-04-30 16:29:47',3,138,2,1,NULL),
 (913,'EDP Administrator','listrik.ncost_bulan_plus_adm',0,368582684,NULL,'2021-04-30 16:40:30',3,139,2,2,NULL),
 (914,'EDP Administrator','listrik.ncost_bulan_plus_adm',0,368582684,NULL,'2021-04-30 16:51:16',3,141,2,2,NULL);
/*!40000 ALTER TABLE `hlogs_listriks` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`job_level`
--

DROP TABLE IF EXISTS `job_level`;
CREATE TABLE `job_level` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code_job_level` varchar(47) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jabatan` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LV` int(11) DEFAULT NULL,
  `upah_terkecil` double DEFAULT NULL,
  `upah_tengah` double DEFAULT NULL,
  `updah_atas` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ut_view1` int(11) DEFAULT NULL,
  `ua_view2` int(11) DEFAULT NULL,
  `uptkcl_view3` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`job_level`
--

/*!40000 ALTER TABLE `job_level` DISABLE KEYS */;
INSERT INTO `job_level` (`id`,`code_job_level`,`jabatan`,`LV`,`upah_terkecil`,`upah_tengah`,`updah_atas`,`created_at`,`updated_at`,`ut_view1`,`ua_view2`,`uptkcl_view3`) VALUES 
 (1,'jb-lvl-001','supervisor',3,34234234,5670646.65,6066273,'2021-01-20 08:43:18','2021-01-20 08:43:18',NULL,NULL,NULL),
 (2,'jb-lvl-002','operator',2,4600525,4830550.85,5060577,'2021-01-20 08:44:43','2021-01-20 08:44:43',NULL,NULL,NULL),
 (3,'jb-lvl-003','helper',1,4200479,4410502.95,4620527,'2021-01-20 08:46:24','2021-01-20 08:46:24',NULL,NULL,NULL),
 (4,'jb-lvl-004','supporting',0,4200479,4201000,4200479,'2021-01-20 08:47:00','2021-04-28 10:14:32',NULL,NULL,NULL);
/*!40000 ALTER TABLE `job_level` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`kategori_bagian`
--

DROP TABLE IF EXISTS `kategori_bagian`;
CREATE TABLE `kategori_bagian` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code_ctgry_bgn` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nama_bagian` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`kategori_bagian`
--

/*!40000 ALTER TABLE `kategori_bagian` DISABLE KEYS */;
INSERT INTO `kategori_bagian` (`id`,`code_ctgry_bgn`,`nama_bagian`,`created_at`,`updated_at`) VALUES 
 (1,'ctg-b-001','potong','2021-01-20 08:34:38','2021-01-20 08:34:38'),
 (2,'ctg-b-002','cetak','2021-01-20 08:34:58','2021-01-20 08:34:58'),
 (3,'ctg-b-003','hotprint','2021-01-20 08:35:14','2021-01-20 08:35:14'),
 (4,'ctg-b-004','plong','2021-01-20 08:35:22','2021-01-20 08:35:22'),
 (5,'ctg-b-005','sortir','2021-01-20 08:35:40','2021-01-20 08:35:40'),
 (6,'ctg-b-006','lem','2021-01-20 08:35:49','2021-01-20 08:35:49'),
 (7,'ctg-b-007','offset','2021-01-20 08:36:18','2021-01-20 08:36:18'),
 (8,'ctg-b-008','digital','2021-01-20 08:36:26','2021-01-20 08:36:26'),
 (9,'ctg-b-009','REPRO','2021-01-28 06:50:10','2021-01-28 06:50:10'),
 (10,'ctg-b-010','FINISHING','2021-01-28 07:12:24','2021-01-28 07:12:24'),
 (11,'ctg-b-011','MTC','2021-01-28 07:18:29','2021-01-28 07:18:29'),
 (12,'ctg-b-012','UMUM (Hanya Kary KOP)','2021-01-28 07:22:33','2021-01-28 07:22:33'),
 (13,'ctg-b-013','QC','2021-01-28 07:26:00','2021-01-28 07:27:02'),
 (14,'ctg-b-014','PREPRESS','2021-02-11 03:00:00','2021-04-13 16:13:25');
/*!40000 ALTER TABLE `kategori_bagian` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`kategoribagian_logs`
--

DROP TABLE IF EXISTS `kategoribagian_logs`;
CREATE TABLE `kategoribagian_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_column` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `before_bagian` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `history_bagian` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `changed_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`kategoribagian_logs`
--

/*!40000 ALTER TABLE `kategoribagian_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `kategoribagian_logs` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`labor`
--

DROP TABLE IF EXISTS `labor`;
CREATE TABLE `labor` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `company_parent_id` int(11) DEFAULT NULL,
  `code_mesin` int(11) DEFAULT NULL,
  `category_bagian` int(11) DEFAULT NULL,
  `supervisor` int(11) DEFAULT NULL,
  `operator` int(11) DEFAULT NULL,
  `helper` int(11) DEFAULT NULL,
  `supporting` int(11) DEFAULT NULL,
  `supervisor_level3` double DEFAULT NULL,
  `operator_level2` double DEFAULT NULL,
  `helper_level0` double DEFAULT NULL,
  `support_level0` double DEFAULT NULL,
  `total_biaya` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shift` int(11) DEFAULT NULL,
  `spvlv3_view1` int(11) DEFAULT NULL,
  `spvlv2_view1` int(11) DEFAULT NULL,
  `spvlv1_view1` int(11) DEFAULT NULL,
  `spvlv1_view0` int(11) DEFAULT NULL,
  `total_biaya_views1` int(11) DEFAULT NULL,
  `jumlah_mesin_ditanggani` int(11) DEFAULT NULL,
  `ended_at` timestamp NULL DEFAULT NULL,
  `TRANSACTION_DATE_V` int(11) DEFAULT NULL,
  `custom_field_kategori` int(11) DEFAULT NULL,
  `grp_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=784 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`labor`
--

/*!40000 ALTER TABLE `labor` DISABLE KEYS */;
INSERT INTO `labor` (`id`,`company_parent_id`,`code_mesin`,`category_bagian`,`supervisor`,`operator`,`helper`,`supporting`,`supervisor_level3`,`operator_level2`,`helper_level0`,`support_level0`,`total_biaya`,`created_at`,`updated_at`,`shift`,`spvlv3_view1`,`spvlv2_view1`,`spvlv1_view1`,`spvlv1_view0`,`total_biaya_views1`,`jumlah_mesin_ditanggani`,`ended_at`,`TRANSACTION_DATE_V`,`custom_field_kategori`,`grp_id`) VALUES 
 (783,3,141,2,1,2,3,1,17011939.95,28983305.1,39694526.55,0,85689771.6,'2021-04-30 16:50:30','2021-04-30 16:50:30',3,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,16);
/*!40000 ALTER TABLE `labor` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`laborttals`
--

DROP TABLE IF EXISTS `laborttals`;
CREATE TABLE `laborttals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `history_latest` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `before` int(11) DEFAULT NULL,
  `table_column` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `changed_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `code_mesin` int(11) DEFAULT NULL,
  `created_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`laborttals`
--

/*!40000 ALTER TABLE `laborttals` DISABLE KEYS */;
/*!40000 ALTER TABLE `laborttals` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`laporan_bagian_penjualan`
--

DROP TABLE IF EXISTS `laporan_bagian_penjualan`;
CREATE TABLE `laporan_bagian_penjualan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code_laporan_penjualan` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nama_biaya` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tahun1` double DEFAULT NULL,
  `biaya_perbulan_bag_penjualan` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tahun2` double DEFAULT NULL,
  `tahun3` double DEFAULT NULL,
  `tahun1_view0` int(11) DEFAULT NULL,
  `tahun2_view0` int(11) DEFAULT NULL,
  `tahun3_view0` int(11) DEFAULT NULL,
  `biaya_perbulan_bag_penjualan_view0` int(11) DEFAULT NULL,
  `company_parent_id` int(11) DEFAULT NULL,
  `ended_at` timestamp NULL DEFAULT NULL,
  `TRANSACTION_DATE_V` int(11) DEFAULT NULL,
  `SALDO_AP1` int(11) DEFAULT NULL,
  `SALDO_AP2` int(11) DEFAULT NULL,
  `SALDO_AP3` int(11) DEFAULT NULL,
  `thn_periode_3` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thn_periode_2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thn_periode_1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vp_1` int(11) DEFAULT NULL,
  `vp_2` int(11) DEFAULT NULL,
  `vp_3` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`laporan_bagian_penjualan`
--

/*!40000 ALTER TABLE `laporan_bagian_penjualan` DISABLE KEYS */;
INSERT INTO `laporan_bagian_penjualan` (`id`,`code_laporan_penjualan`,`nama_biaya`,`tahun1`,`biaya_perbulan_bag_penjualan`,`created_at`,`updated_at`,`tahun2`,`tahun3`,`tahun1_view0`,`tahun2_view0`,`tahun3_view0`,`biaya_perbulan_bag_penjualan_view0`,`company_parent_id`,`ended_at`,`TRANSACTION_DATE_V`,`SALDO_AP1`,`SALDO_AP2`,`SALDO_AP3`,`thn_periode_3`,`thn_periode_2`,`thn_periode_1`,`vp_1`,`vp_2`,`vp_3`) VALUES 
 (55,'LPBPEiTR04210054','fhjajs',231412,44057.083333333,'2021-04-19 15:36:01','2021-04-20 09:23:00',1231231,123412,NULL,NULL,NULL,NULL,3,NULL,NULL,NULL,NULL,NULL,'2025','2025','2021',NULL,NULL,NULL),
 (56,'LPBPHrTR04210056','TEST BP 1543',423000,11716565.888889,'2021-04-20 10:28:18','2021-04-26 16:32:06',32141,421341231,NULL,NULL,NULL,NULL,3,NULL,NULL,NULL,NULL,NULL,'2042','2042','2018',NULL,NULL,NULL),
 (57,'LPBPuwTR04210057','PENJUALAN P3',534637456,1478038238.6111,'2021-04-28 10:27:42','2021-04-28 10:28:31',4500,52674734634,NULL,NULL,NULL,NULL,3,NULL,NULL,NULL,NULL,NULL,'2026','2026','2025',NULL,NULL,NULL),
 (58,'LPBPawTR04210058','NTEST',3492789,145532.875,'2021-04-28 15:43:25','2021-04-28 15:43:25',NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,NULL,NULL,NULL,NULL,'2021','2021','2011',NULL,NULL,NULL);
/*!40000 ALTER TABLE `laporan_bagian_penjualan` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`laporan_biaya_administrasi_umum`
--

DROP TABLE IF EXISTS `laporan_biaya_administrasi_umum`;
CREATE TABLE `laporan_biaya_administrasi_umum` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code_adm_umum` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nama_biaya` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tahun1` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_parent_id` int(11) DEFAULT NULL,
  `tahun2` double DEFAULT NULL,
  `tahun3` double DEFAULT NULL,
  `total_biaya_lp_adm` double DEFAULT NULL,
  `th_view1` int(11) DEFAULT NULL,
  `th_view2` int(11) DEFAULT NULL,
  `th_view3` int(11) DEFAULT NULL,
  `total_biaya_lp_adm_view0` int(11) DEFAULT NULL,
  `ended_at` timestamp NULL DEFAULT NULL,
  `TRANSACTION_DATE_V` int(11) DEFAULT NULL,
  `SALDO_AP1` int(11) DEFAULT NULL,
  `SALDO_AP2` int(11) DEFAULT NULL,
  `SALDO_AP3` int(11) DEFAULT NULL,
  `thn_periode_1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thn_periode_2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thn_periode_3` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vp_1` int(11) DEFAULT NULL,
  `vp_2` int(11) DEFAULT NULL,
  `vp_3` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`laporan_biaya_administrasi_umum`
--

/*!40000 ALTER TABLE `laporan_biaya_administrasi_umum` DISABLE KEYS */;
INSERT INTO `laporan_biaya_administrasi_umum` (`id`,`code_adm_umum`,`nama_biaya`,`tahun1`,`created_at`,`updated_at`,`company_parent_id`,`tahun2`,`tahun3`,`total_biaya_lp_adm`,`th_view1`,`th_view2`,`th_view3`,`total_biaya_lp_adm_view0`,`ended_at`,`TRANSACTION_DATE_V`,`SALDO_AP1`,`SALDO_AP2`,`SALDO_AP3`,`thn_periode_1`,`thn_periode_2`,`thn_periode_3`,`vp_1`,`vp_2`,`vp_3`) VALUES 
 (97,'LBAUd0TR04210097','GHSA',634534,'2021-04-19 15:56:08','2021-04-20 09:23:44',1,423623,NULL,11022.46875,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021','2021','2021',NULL,NULL,NULL),
 (98,'LBAUv3TR04210098','TEST B 1112',41232,'2021-04-20 10:25:59','2021-04-26 16:07:38',3,3123412,3124123,174687.97222222,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017','2022','2022',NULL,NULL,NULL),
 (99,'LBAUKXTR04210099','ADMINISTRASI UMUM',34235234,'2021-04-28 10:23:11','2021-04-28 10:25:33',3,52363532,423623623424,11769728394.167,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021','2025','2025',NULL,NULL,NULL),
 (100,'LBAUozTR042100100','B ACC',34982,'2021-04-28 15:46:11','2021-04-28 15:46:11',3,NULL,NULL,364.39583333333,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023','2021','2021',NULL,NULL,NULL);
/*!40000 ALTER TABLE `laporan_biaya_administrasi_umum` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`laporan_biaya_listrik_bulan_jam`
--

DROP TABLE IF EXISTS `laporan_biaya_listrik_bulan_jam`;
CREATE TABLE `laporan_biaya_listrik_bulan_jam` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code_biaya_listrik_bjam` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code_mesin` int(11) DEFAULT NULL,
  `bulan` int(11) DEFAULT NULL,
  `rata_rata` decimal(10,0) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`laporan_biaya_listrik_bulan_jam`
--

/*!40000 ALTER TABLE `laporan_biaya_listrik_bulan_jam` DISABLE KEYS */;
/*!40000 ALTER TABLE `laporan_biaya_listrik_bulan_jam` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`laporan_biaya_listrik_perbulan`
--

DROP TABLE IF EXISTS `laporan_biaya_listrik_perbulan`;
CREATE TABLE `laporan_biaya_listrik_perbulan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code_lp_b_l_perbulan` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lwbp` decimal(10,0) DEFAULT NULL,
  `wbp` decimal(10,0) DEFAULT NULL,
  `bulan` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pemakaian` decimal(10,0) DEFAULT NULL,
  `biaya` int(11) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `company_parent_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`laporan_biaya_listrik_perbulan`
--

/*!40000 ALTER TABLE `laporan_biaya_listrik_perbulan` DISABLE KEYS */;
/*!40000 ALTER TABLE `laporan_biaya_listrik_perbulan` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`laporan_gaji_lain`
--

DROP TABLE IF EXISTS `laporan_gaji_lain`;
CREATE TABLE `laporan_gaji_lain` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code_rpt_gaji_lain` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_bagian` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tahun1` double DEFAULT NULL,
  `tahun2` double DEFAULT NULL,
  `tahun3` double DEFAULT NULL,
  `total_biaya_laporan_periode` double DEFAULT NULL,
  `company_parent_id` int(11) DEFAULT NULL,
  `code_account` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lgj_lain_view1` int(11) DEFAULT NULL,
  `lgj_lain_view2` int(11) DEFAULT NULL,
  `lgj_lain_view3` int(11) DEFAULT NULL,
  `total_lain_view0` int(11) DEFAULT NULL,
  `ended_at` timestamp NULL DEFAULT NULL,
  `TRANSACTION_DATE_V` int(11) DEFAULT NULL,
  `SALDO_AP1` int(11) DEFAULT NULL,
  `SALDO_AP2` int(11) DEFAULT NULL,
  `SALDO_AP3` int(11) DEFAULT NULL,
  `thn_periode_1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thn_periode_2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thn_periode_3` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vp_1` int(11) DEFAULT NULL,
  `vp_2` int(11) DEFAULT NULL,
  `vp_3` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`laporan_gaji_lain`
--

/*!40000 ALTER TABLE `laporan_gaji_lain` DISABLE KEYS */;
INSERT INTO `laporan_gaji_lain` (`id`,`code_rpt_gaji_lain`,`category_bagian`,`created_at`,`updated_at`,`tahun1`,`tahun2`,`tahun3`,`total_biaya_laporan_periode`,`company_parent_id`,`code_account`,`lgj_lain_view1`,`lgj_lain_view2`,`lgj_lain_view3`,`total_lain_view0`,`ended_at`,`TRANSACTION_DATE_V`,`SALDO_AP1`,`SALDO_AP2`,`SALDO_AP3`,`thn_periode_1`,`thn_periode_2`,`thn_periode_3`,`vp_1`,`vp_2`,`vp_3`) VALUES 
 (140,'GJLMBTR04210036',14,'2021-04-28 10:43:01','2021-04-28 10:43:01',342523,432423,NULL,32289.416666667,3,'HR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023','2027','2027',NULL,NULL,NULL),
 (141,'GJLqWTR04210036',11,'2021-04-28 15:41:10','2021-04-28 15:41:10',8932832,NULL,NULL,372201.33333333,3,'test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023','2024','2024',NULL,NULL,NULL);
/*!40000 ALTER TABLE `laporan_gaji_lain` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`lb8_kategori_mesin`
--

DROP TABLE IF EXISTS `lb8_kategori_mesin`;
CREATE TABLE `lb8_kategori_mesin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama_kategori_mesin` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `changed_by` timestamp NULL DEFAULT NULL,
  `company_parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`lb8_kategori_mesin`
--

/*!40000 ALTER TABLE `lb8_kategori_mesin` DISABLE KEYS */;
INSERT INTO `lb8_kategori_mesin` (`id`,`nama_kategori_mesin`,`created_at`,`updated_at`,`changed_by`,`company_parent_id`) VALUES 
 (1,'Mesin Rajang KOP','2021-02-24 11:57:00','2021-02-24 14:02:53',NULL,3),
 (2,'Mesin Cetak 6 Warna','2021-02-24 11:58:00','2021-02-24 14:22:09',NULL,3),
 (3,'Mesin Cetak 1 Warna','2021-02-24 11:58:00','2021-02-24 14:21:25',NULL,3),
 (4,'Mesin Coating','2021-02-24 11:58:00','2021-02-24 14:20:45',NULL,3),
 (5,'Mesin Hotstamp KOP','2021-02-24 11:59:00','2021-02-24 14:03:07',NULL,3),
 (6,'Mesin Plong KOP','2021-02-24 12:26:00','2021-02-24 14:03:00',NULL,3),
 (7,'Mesin Sortir KOP','2021-02-24 12:27:00','2021-02-24 14:02:30',NULL,3),
 (8,'Mesin Gluing KOP','2021-02-24 12:27:00','2021-02-24 14:03:24',NULL,3),
 (9,'Mesin Window Patching KOP','2021-02-24 13:33:00','2021-02-24 14:02:22',NULL,3),
 (10,'Mesin Rajang Berbek','2021-02-24 13:33:00','2021-02-24 14:05:03',NULL,2),
 (11,'Mesin Cetak 2 Warna SM 72 Berbek','2021-02-24 13:34:00','2021-02-24 14:13:46',NULL,2),
 (12,'Mesin Cetak 1 Warna SORM Berbek','2021-02-24 13:34:00','2021-02-24 14:15:08',NULL,2),
 (13,'Mesin Cetak 1 Warna GTO 1 Berbek','2021-02-24 13:35:00','2021-02-24 14:15:34',NULL,2);
INSERT INTO `lb8_kategori_mesin` (`id`,`nama_kategori_mesin`,`created_at`,`updated_at`,`changed_by`,`company_parent_id`) VALUES 
 (14,'Mesin Cetak 2 Warna GTO 2 Berbek','2021-02-24 13:35:00','2021-02-24 14:14:28',NULL,2),
 (15,'Mesin Hotprint Berbek','2021-02-24 13:37:00','2021-02-24 14:07:29',NULL,2),
 (16,'Mesin Plong Berbek','2021-02-24 13:37:00','2021-02-24 14:23:50',NULL,2),
 (17,'Mesin Coating Berbek','2021-02-24 13:38:00','2021-02-24 14:09:22',NULL,2),
 (18,'Mesin Cetak Digital Berbek','2021-02-24 13:38:00','2021-02-24 14:10:43',NULL,2),
 (19,'Mesin Rajang Trosobo','2021-02-24 13:38:00','2021-02-24 14:04:01',NULL,1),
 (20,'Mesin Cetak 6 Warna Trosobo','2021-02-24 13:39:00','2021-02-24 14:10:59',NULL,1),
 (21,'Mesin Cetak 3 Warna Trosobo','2021-02-24 13:39:00','2021-02-24 14:12:42',NULL,1),
 (22,'Mesin Cetak 1 Warna Trosobo','2021-02-24 13:39:00','2021-02-24 14:14:44',NULL,1),
 (24,'Mesin Coating Trosobo','2021-02-24 13:40:00','2021-02-24 14:08:40',NULL,1),
 (25,'Mesin Cetak 4 Warna Trosobo','2021-02-24 13:40:00','2021-02-24 14:12:26',NULL,1),
 (26,'Mesin Plong Trosobo','2021-02-24 13:41:00','2021-02-24 14:05:41',NULL,1);
INSERT INTO `lb8_kategori_mesin` (`id`,`nama_kategori_mesin`,`created_at`,`updated_at`,`changed_by`,`company_parent_id`) VALUES 
 (27,'Mesin Hotprint Trosobo','2021-02-24 13:42:00','2021-02-24 14:07:11',NULL,1),
 (28,'Mesin Laminating Trosobo','2021-02-24 13:42:00','2021-02-24 14:06:29',NULL,1),
 (29,'Mesin Gluing Trosobo','2021-02-24 13:42:00','2021-02-24 14:08:14',NULL,1);
/*!40000 ALTER TABLE `lb8_kategori_mesin` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`listrik`
--

DROP TABLE IF EXISTS `listrik`;
CREATE TABLE `listrik` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code_listrik` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_parent_id` int(11) DEFAULT NULL,
  `code_mesin` int(11) DEFAULT NULL,
  `shift` int(11) DEFAULT NULL,
  `ampere` double DEFAULT NULL,
  `voltase` int(11) DEFAULT NULL,
  `LWBP_perminggu` double DEFAULT NULL,
  `WBP_perminggu` double DEFAULT NULL,
  `total_biaya_listrik` double DEFAULT NULL,
  `nilai_cost_bulan` double DEFAULT NULL,
  `persen_cost_perbulan` double DEFAULT NULL,
  `ncost_bulan_plus_adm` double DEFAULT NULL,
  `output_perjam` int(11) DEFAULT NULL,
  `persen_output_perjam` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_bagian` int(11) DEFAULT NULL,
  `LWBP_faktorkali` double DEFAULT NULL,
  `WBP_faktorkali` double DEFAULT NULL,
  `total_insteadofLISTRIK` int(11) DEFAULT NULL,
  `nilai_cost_perbulan_insteadofLISTRIK` int(11) DEFAULT NULL,
  `nilai_cost_perbualan_adm_insteadOfListrik` int(11) DEFAULT NULL,
  `persen_cost_perbulan_insteadOfListrik` int(11) DEFAULT NULL,
  `listrikperjam` int(10) unsigned DEFAULT NULL,
  `assumptionshift_lwbp1` int(11) DEFAULT NULL,
  `assumption_itval_perminggu` int(11) DEFAULT NULL,
  `assumption_wbp` int(11) DEFAULT NULL,
  `assumptionshift_lwbp2` int(11) DEFAULT NULL,
  `assumptionshift_lwbp3` int(11) DEFAULT NULL,
  `group_mesin` int(11) DEFAULT NULL,
  `begin_at` timestamp NULL DEFAULT NULL,
  `ended_at` timestamp NULL DEFAULT NULL,
  `slugprefixstatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=315 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`listrik`
--

/*!40000 ALTER TABLE `listrik` DISABLE KEYS */;
INSERT INTO `listrik` (`id`,`code_listrik`,`company_parent_id`,`code_mesin`,`shift`,`ampere`,`voltase`,`LWBP_perminggu`,`WBP_perminggu`,`total_biaya_listrik`,`nilai_cost_bulan`,`persen_cost_perbulan`,`ncost_bulan_plus_adm`,`output_perjam`,`persen_output_perjam`,`created_at`,`updated_at`,`category_bagian`,`LWBP_faktorkali`,`WBP_faktorkali`,`total_insteadofLISTRIK`,`nilai_cost_perbulan_insteadofLISTRIK`,`nilai_cost_perbualan_adm_insteadOfListrik`,`persen_cost_perbulan_insteadOfListrik`,`listrikperjam`,`assumptionshift_lwbp1`,`assumption_itval_perminggu`,`assumption_wbp`,`assumptionshift_lwbp2`,`assumptionshift_lwbp3`,`group_mesin`,`begin_at`,`ended_at`,`slugprefixstatus`) VALUES 
 (314,'LTKEvTR0421001',3,141,3,380,1230,47674.8,11217.6,89460360,357841440,1,368582683.2,NULL,NULL,'2021-04-30 16:50:58','2021-04-30 16:51:16',2,1500,1600,NULL,NULL,NULL,NULL,5340,NULL,6,4,NULL,17,2,'2021-04-30 16:50:58',NULL,NULL);
/*!40000 ALTER TABLE `listrik` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`listrik_output`
--

DROP TABLE IF EXISTS `listrik_output`;
CREATE TABLE `listrik_output` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `output_perjam` double DEFAULT NULL,
  `persen` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code_lop` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_parent_id` int(11) DEFAULT NULL,
  `prcn_view0` int(11) DEFAULT NULL,
  `totalpjam_view1` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`listrik_output`
--

/*!40000 ALTER TABLE `listrik_output` DISABLE KEYS */;
INSERT INTO `listrik_output` (`id`,`output_perjam`,`persen`,`created_at`,`updated_at`,`code_lop`,`company_parent_id`,`prcn_view0`,`totalpjam_view1`) VALUES 
 (18,6000,0.082380239726498,'2021-03-07 21:07:00','2021-03-07 21:07:00','LSPJe5TR0321001',3,NULL,NULL),
 (19,6000,0.082380239726498,'2021-03-08 01:15:07','2021-03-08 01:15:07','LSPJy5TR03210019',3,NULL,NULL),
 (20,10000,0.13730039954416,'2021-03-08 01:15:15','2021-03-08 01:15:15','LSPJVFTR03210020',3,NULL,NULL),
 (22,3750,0.051487649829061,'2021-03-08 01:15:29','2021-03-08 01:15:29','LSPJUITR03210022',3,NULL,NULL),
 (23,2500,0.034325099886041,'2021-03-08 01:15:33','2021-03-08 01:15:33','LSPJeLTR03210023',3,NULL,NULL),
 (24,2500,0.034325099886041,'2021-03-08 01:15:48','2021-03-08 01:15:48','LSPJY4TR03210024',3,NULL,NULL),
 (25,2500,0.034325099886041,'2021-03-08 01:15:51','2021-03-08 01:15:51','LSPJA2TR03210025',3,NULL,NULL),
 (26,7000,0.096110279680914,'2021-03-08 01:15:58','2021-03-08 01:15:58','LSPJpqTR03210026',3,NULL,NULL),
 (27,3750,0.051487649829061,'2021-03-08 01:16:05','2021-03-08 01:16:05','LSPJ9RTR03210027',3,NULL,NULL),
 (28,3750,0.051487649829061,'2021-03-08 01:16:10','2021-03-08 01:16:10','LSPJJkTR03210028',3,NULL,NULL);
INSERT INTO `listrik_output` (`id`,`output_perjam`,`persen`,`created_at`,`updated_at`,`code_lop`,`company_parent_id`,`prcn_view0`,`totalpjam_view1`) VALUES 
 (29,3750,0.051487649829061,'2021-03-08 01:16:14','2021-03-08 01:16:14','LSPJO5TR03210029',3,NULL,NULL),
 (30,0,0,'2021-03-08 01:16:26','2021-03-08 01:16:26','LSPJIITR03210030',3,NULL,NULL),
 (31,3333,0.045762223168069,'2021-03-08 01:16:36','2021-03-08 01:16:36','LSPJcYTR03210031',3,NULL,NULL),
 (32,4500,0.061785179794873,'2021-03-08 01:16:50','2021-03-08 01:16:50','LSPJH2TR03210032',3,NULL,NULL),
 (33,4500,0.061785179794873,'2021-03-08 01:16:53','2021-03-08 01:16:53','LSPJKOTR03210033',3,NULL,NULL),
 (34,4500,0.061785179794873,'2021-03-08 01:16:56','2021-03-08 01:16:56','LSPJoFTR03210034',3,NULL,NULL),
 (35,4500,0.061785179794873,'2021-03-08 01:16:59','2021-03-08 01:16:59','LSPJ5KTR03210035',3,NULL,NULL),
 (36,986,0.075515219749289,'2021-03-16 15:55:13','2021-03-29 17:10:37','LSPJcmTR03210036',3,NULL,NULL),
 (37,2141,0.029396015542405,'2021-03-31 06:13:18','2021-03-31 06:13:18','LSPJEOTR03210037',3,NULL,NULL),
 (38,2141,0.029396015542405,'2021-03-31 06:13:26','2021-03-31 06:13:26','LSPJSSTR03210038',3,NULL,NULL);
INSERT INTO `listrik_output` (`id`,`output_perjam`,`persen`,`created_at`,`updated_at`,`code_lop`,`company_parent_id`,`prcn_view0`,`totalpjam_view1`) VALUES 
 (39,2901,0.039830845907762,'2021-03-31 06:14:49','2021-03-31 06:14:49','LSPJDYTR03210039',3,NULL,NULL),
 (40,3423,0.046997926763967,'2021-03-31 06:18:26','2021-03-31 06:18:26','LSPJ88TR03210040',3,NULL,NULL),
 (41,2321,0.0318674227342,'2021-03-31 06:22:12','2021-03-31 06:22:12','LSPJw2TR03210041',3,NULL,NULL),
 (42,22131,0.30385951423119,'2021-03-31 06:24:47','2021-03-31 06:24:47','LSPJZATR03210042',3,NULL,NULL),
 (43,2312,0.03174385237461,'2021-03-31 06:27:56','2021-03-31 06:27:56','LSPJ9xTR03210043',3,NULL,NULL),
 (44,1231,0.016901679183886,'2021-03-31 06:29:51','2021-03-31 06:29:51','LSPJOHTR03210044',3,NULL,NULL),
 (45,1231,0.016901679183886,'2021-03-31 06:29:51','2021-03-31 06:29:51','LSPJnnTR03210045',3,NULL,NULL),
 (46,4121,0.056581494652149,'2021-03-31 06:32:03','2021-03-31 06:32:03','LSPJAcTR03210046',3,NULL,NULL),
 (47,4323,0.059354962722942,'2021-03-31 08:09:18','2021-03-31 08:09:18','LSPJD1TR03210047',3,NULL,NULL),
 (48,2311,0.031730122334656,'2021-03-31 08:12:19','2021-03-31 08:12:19','LSPJP0TR03210048',3,NULL,NULL);
INSERT INTO `listrik_output` (`id`,`output_perjam`,`persen`,`created_at`,`updated_at`,`code_lop`,`company_parent_id`,`prcn_view0`,`totalpjam_view1`) VALUES 
 (49,3242,0.044512789532218,'2021-03-31 08:14:43','2021-03-31 08:14:43','LSPJomTR03210049',3,NULL,NULL),
 (50,3242,0.044512789532218,'2021-03-31 08:14:52','2021-03-31 08:14:52','LSPJ8lTR03210050',3,NULL,NULL),
 (51,3242,0.044512789532218,'2021-03-31 08:15:12','2021-03-31 08:15:12','LSPJA8TR03210051',3,NULL,NULL),
 (52,2311,0.031730122334656,'2021-03-31 08:17:47','2021-03-31 08:17:47','LSPJVfTR03210052',3,NULL,NULL),
 (53,1231,0.016901679183886,'2021-03-31 08:18:23','2021-03-31 08:18:23','LSPJErTR03210053',3,NULL,NULL);
/*!40000 ALTER TABLE `listrik_output` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`listrik_total`
--

DROP TABLE IF EXISTS `listrik_total`;
CREATE TABLE `listrik_total` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `before_total_listrik` bigint(20) unsigned DEFAULT NULL,
  `total_listrik` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `changed_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `id_listrik` int(10) unsigned DEFAULT NULL,
  `before` float DEFAULT NULL,
  `table_column` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `history_latest` float DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `create_by_with` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`listrik_total`
--

/*!40000 ALTER TABLE `listrik_total` DISABLE KEYS */;
/*!40000 ALTER TABLE `listrik_total` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`location_machine`
--

DROP TABLE IF EXISTS `location_machine`;
CREATE TABLE `location_machine` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `faktor_lwbp` float DEFAULT NULL,
  `faktor_wbp` float DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status_periode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `begin_at` timestamp NULL DEFAULT NULL,
  `ended_at` timestamp NULL DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`location_machine`
--

/*!40000 ALTER TABLE `location_machine` DISABLE KEYS */;
INSERT INTO `location_machine` (`id`,`faktor_lwbp`,`faktor_wbp`,`created_at`,`updated_at`,`status_periode`,`begin_at`,`ended_at`,`company_name`) VALUES 
 (1,1200,1235,'2021-04-12 15:07:09','2021-04-12 15:07:09',NULL,'2021-04-12 15:03:00',NULL,'KOP 19'),
 (2,1500,1600,'2021-04-12 15:10:16','2021-04-12 15:10:16',NULL,NULL,NULL,'KOP 23'),
 (3,1250,950,'2021-04-12 15:10:55','2021-04-12 15:10:55',NULL,NULL,NULL,'GEMILANG'),
 (4,1500,4560,'2021-04-12 15:11:16','2021-04-12 15:11:16',NULL,NULL,NULL,'IMPERIAL'),
 (5,2310,1000,'2021-04-20 09:49:11','2021-04-27 16:08:48',NULL,NULL,NULL,'IMPERIAL 21'),
 (6,7800,2888,'2021-04-28 10:02:59','2021-04-28 10:02:59',NULL,NULL,NULL,'berbek 23'),
 (7,1500,1100,'2021-04-28 14:42:14','2021-04-28 14:42:14',NULL,NULL,NULL,'KOP 21');
/*!40000 ALTER TABLE `location_machine` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`lwbp_master`
--

DROP TABLE IF EXISTS `lwbp_master`;
CREATE TABLE `lwbp_master` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lwbp` int(11) DEFAULT NULL,
  `wbp` int(11) DEFAULT NULL,
  `Intervalmingguan` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shift` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`lwbp_master`
--

/*!40000 ALTER TABLE `lwbp_master` DISABLE KEYS */;
INSERT INTO `lwbp_master` (`id`,`lwbp`,`wbp`,`Intervalmingguan`,`created_at`,`updated_at`,`shift`) VALUES 
 (1,17,4,6,'2021-03-08 08:49:50','2021-04-29 00:45:45',3),
 (2,10,4,6,'2021-03-08 09:20:35','2021-03-16 10:02:13',2),
 (3,7,4,6,'2021-03-08 09:20:54','2021-03-16 10:02:27',1),
 (4,1036,1554,6,'2021-04-16 09:13:31','2021-04-16 09:13:31',0);
/*!40000 ALTER TABLE `lwbp_master` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`menu_items`
--

/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` (`id`,`menu_id`,`title`,`url`,`target`,`icon_class`,`color`,`parent_id`,`order`,`created_at`,`updated_at`,`route`,`parameters`) VALUES 
 (3,1,'Account','','_self','voyager-group','#000000',NULL,3,'2021-01-19 08:01:48','2021-04-28 22:30:04','voyager.users.index','null'),
 (4,1,'Roles','','_self','voyager-lock',NULL,NULL,2,'2021-01-19 08:01:48','2021-03-02 04:12:57','voyager.roles.index',NULL),
 (5,1,'Tools','','_self','voyager-tools',NULL,NULL,8,'2021-01-19 08:01:48','2021-04-29 00:43:02',NULL,NULL),
 (7,1,'Database','','_self','voyager-data',NULL,5,2,'2021-01-19 08:01:48','2021-04-22 08:17:20','voyager.database.index',NULL),
 (8,1,'Compass','','_self','voyager-compass',NULL,5,4,'2021-01-19 08:01:48','2021-04-28 23:29:10','voyager.compass.index',NULL),
 (9,1,'Core','','_self','voyager-dot-3','#000000',5,5,'2021-01-19 08:01:48','2021-04-29 00:20:18','voyager.bread.index','null'),
 (10,1,'Settings','','_self','voyager-settings',NULL,5,1,'2021-01-19 08:01:48','2021-03-07 13:21:51','voyager.settings.index',NULL),
 (11,1,'Hooks','','_self','voyager-hook',NULL,5,6,'2021-01-19 08:01:48','2021-04-29 00:20:18','voyager.hooks',NULL);
INSERT INTO `menu_items` (`id`,`menu_id`,`title`,`url`,`target`,`icon_class`,`color`,`parent_id`,`order`,`created_at`,`updated_at`,`route`,`parameters`) VALUES 
 (16,1,'Companies','','_self','voyager-company','#000000',110,1,'2021-01-20 02:11:14','2021-04-29 00:43:09','voyager.company.index','null'),
 (17,1,'Gaji jabatan','/admin/job-level','_self','voyager-tag','#000000',110,5,'2021-01-20 02:18:50','2021-04-30 17:15:58',NULL,''),
 (19,1,'Penyusutan','','_self','voyager-double-down','#000000',110,3,'2021-01-20 02:38:51','2021-04-30 17:15:53','voyager.penyusutan.index','null'),
 (20,1,'Listrik','','_self','voyager-wand','#000000',103,1,'2021-01-20 03:25:15','2021-04-29 00:43:13','voyager.listrik.index','null'),
 (22,1,'Account MTC','','_self','voyager-book','#000000',110,6,'2021-01-20 03:48:09','2021-04-30 17:15:58','voyager.account-mtc.index','null'),
 (23,1,'Labor','','_self','voyager-documentation','#000000',103,2,'2021-01-20 04:15:08','2021-04-30 17:15:58','voyager.labor.index','null'),
 (25,1,'Gaji lainnya','','_self','voyager-documentation','#000000',110,13,'2021-01-20 04:51:27','2021-04-30 17:16:16','voyager.laporan-gaji-lain.index','null');
INSERT INTO `menu_items` (`id`,`menu_id`,`title`,`url`,`target`,`icon_class`,`color`,`parent_id`,`order`,`created_at`,`updated_at`,`route`,`parameters`) VALUES 
 (29,1,'Bagian penjualan','','_self','voyager-receipt','#000000',110,12,'2021-01-20 06:17:55','2021-04-30 17:16:06','voyager.laporan-bagian-penjualan.index','null'),
 (31,1,'Biaya Administrasi Umum','','_self','voyager-book','#000000',110,14,'2021-01-20 06:39:36','2021-04-30 17:16:16','voyager.laporan-biaya-administrasi-umum.index','null'),
 (34,1,'Mesin','/admin/mesin','_self','voyager-harddrive','#000000',104,1,'2021-01-20 08:29:29','2021-04-28 23:48:21',NULL,''),
 (35,1,'Kategori Bagians','','_self','voyager-categories',NULL,110,7,'2021-01-20 08:33:54','2021-04-30 17:15:58','voyager.kategori-bagian.index',NULL),
 (40,1,'MTC','','_self','voyager-file-text','#000000',110,4,'2021-01-29 01:18:08','2021-04-30 17:15:58','voyager.rpt-mtc.index','null'),
 (48,1,'Logs','','_self','voyager-params','#000000',NULL,5,'2021-01-29 07:38:22','2021-04-29 00:29:31',NULL,''),
 (51,1,'Kalkulasi mesin','','_self','voyager-treasure-open','#000000',103,4,'2021-02-01 08:00:48','2021-04-30 17:16:14','tr.total.kalkulasi','null');
INSERT INTO `menu_items` (`id`,`menu_id`,`title`,`url`,`target`,`icon_class`,`color`,`parent_id`,`order`,`created_at`,`updated_at`,`route`,`parameters`) VALUES 
 (58,1,'voyager::seeders.menu_items.database','','_self','voyager-data',NULL,56,11,'2021-02-23 08:20:07','2021-02-23 08:20:07','voyager.database.index',NULL),
 (59,1,'voyager::seeders.menu_items.compass','','_self','voyager-compass',NULL,56,12,'2021-02-23 08:20:07','2021-02-23 08:20:07','voyager.compass.index',NULL),
 (60,1,'voyager::seeders.menu_items.bread','','_self','voyager-bread',NULL,56,13,'2021-02-23 08:20:07','2021-02-23 08:20:07','voyager.bread.index',NULL),
 (63,1,'Group mesin','','_self','voyager-harddrive','#000000',110,10,'2021-02-24 11:55:45','2021-04-30 17:15:58','voyager.lb8-kategori-mesin.index','null'),
 (64,1,'Dashboard','/admin/dashboard','_self','voyager-github-icon','#000000',NULL,1,'2021-02-25 10:57:56','2021-02-25 12:40:21',NULL,''),
 (75,1,'Document','','_self','voyager-folder','#000000',NULL,4,'2021-02-26 12:51:41','2021-03-10 08:46:24','voyager.media.index','null'),
 (78,1,'Menus','','_self','voyager-helm',NULL,5,3,'2021-03-05 06:42:15','2021-04-22 08:17:20','voyager.menus.index',NULL);
INSERT INTO `menu_items` (`id`,`menu_id`,`title`,`url`,`target`,`icon_class`,`color`,`parent_id`,`order`,`created_at`,`updated_at`,`route`,`parameters`) VALUES 
 (80,1,'Listrik Totals','','_self','voyager-forward','#000000',48,4,'2021-03-06 23:51:01','2021-04-29 00:29:57','voyager.listrik-total.index','null'),
 (81,1,'Penyusutan Totals','','_self','voyager-forward','#000000',48,11,'2021-03-07 02:31:44','2021-04-29 00:40:14','voyager.penyusutan-total.index','null'),
 (82,1,'Transaksi Mtc Totals','','_self','voyager-forward','#000000',48,6,'2021-03-07 11:14:28','2021-04-29 00:31:25','voyager.rpt-mtc-total.index','null'),
 (84,1,'Account Mtc Totals','','_self','voyager-forward','#000000',48,5,'2021-03-07 11:58:11','2021-04-29 00:31:13','voyager.account-mtc-total.index','null'),
 (86,1,'Gji Lain Totals','','_self','voyager-forward','#000000',48,9,'2021-03-07 12:35:01','2021-04-29 00:40:14','voyager.gji-lain-total.index','null'),
 (87,1,'Bagian penjualan total','','_self','voyager-forward','#000000',48,10,'2021-03-07 12:51:15','2021-04-29 00:40:14','voyager.b-penjualan-total.index','null'),
 (88,1,'Biaya Administrasi Umum Total','','_self','voyager-forward','#000000',48,13,'2021-03-07 13:15:43','2021-04-29 00:40:14','voyager.bau-total.index','null');
INSERT INTO `menu_items` (`id`,`menu_id`,`title`,`url`,`target`,`icon_class`,`color`,`parent_id`,`order`,`created_at`,`updated_at`,`route`,`parameters`) VALUES 
 (89,1,'Temporary Kalkulasi','','_self','voyager-refresh','#000000',103,3,'2021-03-07 13:42:20','2021-04-30 17:16:14','voyager.all-recalculate.index','null'),
 (90,1,'Asumsi','','_self','voyager-browser','#000000',110,11,'2021-03-08 08:47:59','2021-04-30 17:15:58','voyager.lwbp-master.index','null'),
 (93,1,'Log Labor Total','','_self','voyager-forward','#000000',48,7,'2021-03-29 14:26:13','2021-04-29 00:40:14','voyager.laborttals.index','null'),
 (95,1,'Recalulate history Listrik','','_self','voyager-forward','#000000',48,8,'2021-03-30 08:51:12','2021-04-29 00:40:14','voyager.hlogs-listriks.index','null'),
 (96,1,'History Recalculate Temporaries','','_self','voyager-bar-chart','#000000',77,1,'2021-03-30 13:52:36','2021-03-30 16:37:50','voyager.history-recalculate-temporary.index','null'),
 (97,1,'Mesin Totals','','_self','voyager-forward','#000000',34,1,'2021-03-31 09:51:58','2021-04-28 23:48:22','voyager.mesin-total.index','null'),
 (98,1,'Group Mesin Logs','','_self','voyager-forward',NULL,48,2,'2021-03-31 13:22:01','2021-04-29 00:29:20','voyager.group-mesin-logs.index',NULL);
INSERT INTO `menu_items` (`id`,`menu_id`,`title`,`url`,`target`,`icon_class`,`color`,`parent_id`,`order`,`created_at`,`updated_at`,`route`,`parameters`) VALUES 
 (99,1,'Kategoribagian Logs','','_self','voyager-forward','#000000',48,1,'2021-03-31 14:19:03','2021-04-29 00:29:17','voyager.kategoribagian-logs.index','null'),
 (100,1,'Gaji Karyawan Logs','','_self','voyager-forward','#000000',48,12,'2021-03-31 14:40:40','2021-04-29 00:40:14','voyager.gaji-karyawan-logs.index','null'),
 (101,1,'Log history calc','/admin/history-recalculate-temporary','_self','voyager-thumb-tack','#000000',48,3,'2021-04-09 17:26:50','2021-04-29 00:29:40',NULL,''),
 (102,1,'Lokasi mesin','','_self','voyager-location','#000000',47,1,'2021-04-12 15:06:12','2021-04-28 23:48:53','voyager.location-machine.index','null'),
 (103,1,'Transaction','','_self','voyager-polaroid','#9193a6',NULL,7,'2021-04-20 10:08:54','2021-04-29 00:33:27',NULL,''),
 (104,1,'Special Labors','','_self','voyager-polaroid','#000000',47,2,'2021-04-20 11:24:32','2021-04-28 23:48:53','voyager.special-labor.index','null'),
 (106,1,'Mesin','/admin/mesin','_self','voyager-bookmark','#a19b9b',110,2,'2021-04-28 23:55:55','2021-04-29 00:43:09',NULL,'');
INSERT INTO `menu_items` (`id`,`menu_id`,`title`,`url`,`target`,`icon_class`,`color`,`parent_id`,`order`,`created_at`,`updated_at`,`route`,`parameters`) VALUES 
 (108,1,'Detail Labor','/admin/special-labor','_self','voyager-file-text','#000000',110,8,'2021-04-28 23:59:56','2021-04-30 17:15:58',NULL,''),
 (109,1,'Location Machine','admin/location-machine','_self','voyager-location','#000000',110,9,'2021-04-29 00:13:47','2021-04-30 17:15:58',NULL,''),
 (110,1,'Master','','_self','voyager-markdown','#000000',NULL,6,'2021-04-29 00:19:54','2021-04-29 00:42:36',NULL,'');
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`menus`
--

/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` (`id`,`name`,`created_at`,`updated_at`) VALUES 
 (1,'admin','2021-01-19 08:01:47','2021-01-19 08:01:47');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`mesin`
--

DROP TABLE IF EXISTS `mesin`;
CREATE TABLE `mesin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code_mesin` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deskripsi` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fungsi_mesin` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ampere` float DEFAULT NULL,
  `voltase` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `group_mesin_id` int(11) DEFAULT NULL,
  `listrik_perjam_id` int(11) DEFAULT NULL,
  `category_bagian_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `asumsi_id` int(11) DEFAULT NULL,
  `on_off` int(10) unsigned DEFAULT NULL,
  `display_on_off_machine` int(11) DEFAULT NULL,
  `faktor_kali_lwbp` float DEFAULT NULL,
  `faktor_kali_wbp` float DEFAULT NULL,
  `lokasi_mesin` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location_mch_id` int(11) DEFAULT NULL,
  `capacity_mch` int(11) DEFAULT NULL,
  `kalkulasi_machine_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`mesin`
--

/*!40000 ALTER TABLE `mesin` DISABLE KEYS */;
INSERT INTO `mesin` (`id`,`code_mesin`,`deskripsi`,`fungsi_mesin`,`ampere`,`voltase`,`created_at`,`updated_at`,`group_mesin_id`,`listrik_perjam_id`,`category_bagian_id`,`company_id`,`asumsi_id`,`on_off`,`display_on_off_machine`,`faktor_kali_lwbp`,`faktor_kali_wbp`,`lokasi_mesin`,`location_mch_id`,`capacity_mch`,`kalkulasi_machine_id`) VALUES 
 (141,'CD 4','MACH 4',NULL,380,1230,'2021-04-30 16:49:41','2021-04-30 16:49:41',2,NULL,2,3,1,1,NULL,1500,1600,NULL,2,5340,2);
/*!40000 ALTER TABLE `mesin` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`mesin_total`
--

DROP TABLE IF EXISTS `mesin_total`;
CREATE TABLE `mesin_total` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_column` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `before` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `history_latest` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `changed_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `group_mesin` int(11) DEFAULT NULL,
  `code_mesin` int(11) DEFAULT NULL,
  `history_group_mesin` int(11) DEFAULT NULL,
  `before_group_mesin` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=338 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`mesin_total`
--

/*!40000 ALTER TABLE `mesin_total` DISABLE KEYS */;
INSERT INTO `mesin_total` (`id`,`table_column`,`before`,`history_latest`,`changed_by`,`created_by`,`created_at`,`updated_at`,`company_id`,`group_mesin`,`code_mesin`,`history_group_mesin`,`before_group_mesin`) VALUES 
 (326,'mesin.added.event','','first event',NULL,'EDP Administrator','2021-04-27 14:35:44','2021-04-27 14:35:44',3,2,132,0,0),
 (327,'mesin.added.event','','first event',NULL,'EDP Administrator','2021-04-27 15:24:35','2021-04-27 15:24:35',3,2,133,0,0),
 (328,'mesin.added.event','','first event',NULL,'EDP Administrator','2021-04-28 10:07:55','2021-04-28 10:07:55',3,1,134,0,0),
 (329,'mesin.added.event','','first event',NULL,'EDP Administrator','2021-04-28 15:14:50','2021-04-28 15:14:50',3,6,135,0,0),
 (330,'mesin.asumsi_id','1','5','EDP Administrator',NULL,'2021-04-28 16:06:20','2021-04-28 16:06:20',3,6,135,5,1),
 (331,'mesin.asumsi_id','5','1','EDP Administrator',NULL,'2021-04-29 00:51:24','2021-04-29 00:51:24',3,6,135,1,5),
 (332,'mesin.added.event','','first event',NULL,'EDP Administrator','2021-04-30 15:40:32','2021-04-30 15:40:32',3,1,136,0,0),
 (333,'mesin.added.event','','first event',NULL,'EDP Administrator','2021-04-30 15:48:20','2021-04-30 15:48:20',3,1,137,0,0);
INSERT INTO `mesin_total` (`id`,`table_column`,`before`,`history_latest`,`changed_by`,`created_by`,`created_at`,`updated_at`,`company_id`,`group_mesin`,`code_mesin`,`history_group_mesin`,`before_group_mesin`) VALUES 
 (334,'mesin.added.event','','first event',NULL,'EDP Administrator','2021-04-30 16:27:04','2021-04-30 16:27:04',3,2,138,0,0),
 (335,'mesin.added.event','','first event',NULL,'EDP Administrator','2021-04-30 16:38:34','2021-04-30 16:38:34',3,2,139,0,0),
 (336,'mesin.added.event','','first event',NULL,'EDP Administrator','2021-04-30 16:47:06','2021-04-30 16:47:06',3,2,140,0,0),
 (337,'mesin.added.event','','first event',NULL,'EDP Administrator','2021-04-30 16:49:41','2021-04-30 16:49:41',3,2,141,0,0);
/*!40000 ALTER TABLE `mesin_total` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`migrations`
--

/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`,`migration`,`batch`) VALUES 
 (1,'2014_10_12_000000_create_users_table',1),
 (2,'2014_10_12_100000_create_password_resets_table',1),
 (3,'2016_01_01_000000_add_voyager_user_fields',1),
 (4,'2016_01_01_000000_create_data_types_table',1),
 (5,'2016_05_19_173453_create_menu_table',1),
 (6,'2016_10_21_190000_create_roles_table',1),
 (7,'2016_10_21_190000_create_settings_table',1),
 (8,'2016_11_30_135954_create_permission_table',1),
 (9,'2016_11_30_141208_create_permission_role_table',1),
 (10,'2016_12_26_201236_data_types__add__server_side',1),
 (11,'2017_01_13_000000_add_route_to_menu_items_table',1),
 (12,'2017_01_14_005015_create_translations_table',1),
 (13,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),
 (14,'2017_03_06_000000_add_controller_to_data_types_table',1),
 (15,'2017_04_21_000000_add_order_to_data_rows_table',1),
 (16,'2017_07_05_210000_add_policyname_to_data_types_table',1),
 (17,'2017_08_05_000000_add_group_to_settings_table',1),
 (18,'2017_11_26_013050_add_user_role_relationship',1);
INSERT INTO `migrations` (`id`,`migration`,`batch`) VALUES 
 (19,'2017_11_26_015000_create_user_roles_table',1),
 (20,'2018_03_11_000000_add_user_settings',1),
 (21,'2018_03_14_000000_add_details_to_data_types_table',1),
 (22,'2018_03_16_000000_make_settings_value_nullable',1),
 (23,'2019_08_19_000000_create_failed_jobs_table',1),
 (24,'2016_01_01_000000_create_pages_table',2),
 (25,'2016_01_01_000000_create_posts_table',2),
 (26,'2016_02_15_204651_create_categories_table',2),
 (27,'2017_04_11_000000_alter_post_nullable_fields_table',2),
 (28,'2021_03_05_031443_create_accountings_table',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`mtc`
--

DROP TABLE IF EXISTS `mtc`;
CREATE TABLE `mtc` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code_mtc` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code_mesin` int(11) DEFAULT NULL,
  `perbaikan_pertahun` double DEFAULT NULL,
  `perbaikan_perbulan` double DEFAULT NULL,
  `sparepart_pertahun` double DEFAULT NULL,
  `sparepart_perbulan` double DEFAULT NULL,
  `total_perbulan` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_parent_id` int(11) DEFAULT NULL,
  `biaya_rata_rata_perbaikan_perbulan` double DEFAULT NULL,
  `biaya_rata_rata_sparepart_perbulan` double DEFAULT NULL,
  `biaya_produksi_lain` double DEFAULT NULL,
  `category_bagian` int(11) DEFAULT NULL,
  `filter_periode` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`mtc`
--

/*!40000 ALTER TABLE `mtc` DISABLE KEYS */;
INSERT INTO `mtc` (`id`,`code_mtc`,`code_mesin`,`perbaikan_pertahun`,`perbaikan_perbulan`,`sparepart_pertahun`,`sparepart_perbulan`,`total_perbulan`,`created_at`,`updated_at`,`company_parent_id`,`biaya_rata_rata_perbaikan_perbulan`,`biaya_rata_rata_sparepart_perbulan`,`biaya_produksi_lain`,`category_bagian`,`filter_periode`) VALUES 
 (25,'MTCkcTR0121001',25,0,0,192600,16050,16050,'2021-01-28 03:33:00','2021-01-28 03:36:10',3,NULL,NULL,NULL,4,'2019-01-01 00:00:00'),
 (26,'MTCWrTR01210026',27,3145000,262083.33333333,20000,1666.6666666667,263750,'2021-01-28 03:34:00','2021-01-28 03:35:50',3,NULL,NULL,NULL,4,'2019-01-01 00:00:00'),
 (27,'MTCv7TR01210027',10,101802500,8483541.6666667,149722520,12476876.666667,20960418.333333,'2021-01-28 03:36:45','2021-01-28 03:36:45',3,NULL,NULL,NULL,1,'2019-01-01 00:00:00'),
 (28,'MTC6GTR01210028',11,0,0,0,0,0,'2021-01-28 03:37:17','2021-01-28 03:37:17',3,NULL,NULL,NULL,2,'2019-01-01 00:00:00'),
 (29,'MTCenTR01210029',40,0,0,0,0,0,'2021-01-28 03:38:27','2021-01-28 03:38:27',3,NULL,NULL,NULL,2,'2019-01-01 00:00:00'),
 (30,'MTC6OTR01210030',41,1433000,119416.66666667,0,0,119416.66666667,'2021-01-28 03:38:51','2021-01-28 03:38:51',3,NULL,NULL,NULL,2,'2019-01-01 00:00:00');
INSERT INTO `mtc` (`id`,`code_mtc`,`code_mesin`,`perbaikan_pertahun`,`perbaikan_perbulan`,`sparepart_pertahun`,`sparepart_perbulan`,`total_perbulan`,`created_at`,`updated_at`,`company_parent_id`,`biaya_rata_rata_perbaikan_perbulan`,`biaya_rata_rata_sparepart_perbulan`,`biaya_produksi_lain`,`category_bagian`,`filter_periode`) VALUES 
 (31,'MTC6cTR01210031',21,0,0,31485700,2623808.3333333,2623808.3333333,'2021-01-28 03:39:12','2021-01-28 03:39:12',3,NULL,NULL,NULL,2,'2019-01-01 00:00:00'),
 (32,'MTCcvTR01210032',1,2550000,212500,26522000,2210166.6666667,2422666.6666667,'2021-01-28 03:39:55','2021-01-28 03:39:55',3,NULL,NULL,NULL,2,'2019-01-01 00:00:00'),
 (33,'MTC4YTR01210033',2,0,0,0,0,0,'2021-01-28 03:40:00','2021-01-28 03:40:23',3,NULL,NULL,NULL,3,'2019-01-01 00:00:00'),
 (35,'MTCIITR01210034',55,0,746049,0,0,746049,'2021-01-28 03:48:23','2021-01-28 03:48:23',3,NULL,NULL,NULL,2,'2019-01-01 00:00:00'),
 (36,'MTCs0TR01210036',4,7715000,642916.66666667,7159100,596591.66666667,1239508.3333333,'2021-01-28 03:50:00','2021-01-28 03:51:00',3,NULL,NULL,NULL,4,'2019-01-01 00:00:00'),
 (37,'MTCo9TR01210037',5,7700000,641666.66666667,2098000,174833.33333333,816500,'2021-01-28 03:51:00','2021-01-28 03:51:42',3,NULL,NULL,NULL,4,'2019-01-01 00:00:00');
INSERT INTO `mtc` (`id`,`code_mtc`,`code_mesin`,`perbaikan_pertahun`,`perbaikan_perbulan`,`sparepart_pertahun`,`sparepart_perbulan`,`total_perbulan`,`created_at`,`updated_at`,`company_parent_id`,`biaya_rata_rata_perbaikan_perbulan`,`biaya_rata_rata_sparepart_perbulan`,`biaya_produksi_lain`,`category_bagian`,`filter_periode`) VALUES 
 (38,'MTCLoTR01210038',6,93256000,7771333.3333333,388196130.98,32349677.581667,40121010.915,'2021-01-28 03:52:05','2021-01-28 03:52:05',3,NULL,NULL,NULL,4,'2019-01-01 00:00:00'),
 (39,'MTCDcTR01210039',8,0,0,0,0,0,'2021-01-28 03:52:28','2021-01-28 03:52:28',3,NULL,NULL,NULL,4,'2019-01-01 00:00:00'),
 (40,'MTCbhTR01210040',43,NULL,0,NULL,0,0,'2021-01-28 03:52:39','2021-01-28 03:52:39',3,NULL,NULL,NULL,5,'2019-01-01 00:00:00'),
 (41,'MTCGpTR01210041',22,1033000,86083.333333333,5867600,488966.66666667,575050,'2021-01-28 03:53:13','2021-01-28 03:53:13',3,NULL,NULL,NULL,6,'2019-01-01 00:00:00'),
 (42,'MTC6aTR01210042',37,1425000,118750,15259900,1271658.3333333,1390408.3333333,'2021-01-28 03:54:20','2021-01-28 03:54:20',3,NULL,NULL,NULL,6,'2019-01-01 00:00:00'),
 (43,'MTCO1TR01210043',38,4975000,414583.33333333,10425200,868766.66666667,1283350,'2021-01-28 03:54:42','2021-01-28 03:54:42',3,NULL,NULL,NULL,6,'2019-01-01 00:00:00');
INSERT INTO `mtc` (`id`,`code_mtc`,`code_mesin`,`perbaikan_pertahun`,`perbaikan_perbulan`,`sparepart_pertahun`,`sparepart_perbulan`,`total_perbulan`,`created_at`,`updated_at`,`company_parent_id`,`biaya_rata_rata_perbaikan_perbulan`,`biaya_rata_rata_sparepart_perbulan`,`biaya_produksi_lain`,`category_bagian`,`filter_periode`) VALUES 
 (44,'MTCiQTR01210044',44,0,0,0,0,0,'2021-01-28 03:54:52','2021-01-28 03:54:52',3,NULL,NULL,NULL,6,'2019-01-01 00:00:00');
/*!40000 ALTER TABLE `mtc` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8_unicode_ci,
  `body` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `meta_keywords` text COLLATE utf8_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`pages`
--

/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` (`id`,`author_id`,`title`,`excerpt`,`body`,`image`,`slug`,`meta_description`,`meta_keywords`,`status`,`created_at`,`updated_at`) VALUES 
 (1,0,'Hello World','Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.','<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','pages/page1.jpg','hello-world','Yar Meta Description','Keyword1, Keyword2','ACTIVE','2021-01-19 08:02:16','2021-01-19 08:02:16');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`password_resets`
--

/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`penyusutan`
--

DROP TABLE IF EXISTS `penyusutan`;
CREATE TABLE `penyusutan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code_penyusutan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_parent_id` int(11) DEFAULT NULL,
  `nama_sim` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `purchaseorder_value` double DEFAULT NULL,
  `umur` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `penyusutan_perbulan` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_bagian` int(11) DEFAULT NULL,
  `code_mesin` int(11) DEFAULT NULL,
  `peny_perbulan_view` int(11) DEFAULT NULL,
  `p_value_view` int(11) DEFAULT NULL,
  `ended_at` timestamp NULL DEFAULT NULL,
  `view_transaction_ended` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`penyusutan`
--

/*!40000 ALTER TABLE `penyusutan` DISABLE KEYS */;
INSERT INTO `penyusutan` (`id`,`code_penyusutan`,`company_parent_id`,`nama_sim`,`purchaseorder_value`,`umur`,`penyusutan_perbulan`,`created_at`,`updated_at`,`category_bagian`,`code_mesin`,`peny_perbulan_view`,`p_value_view`,`ended_at`,`view_transaction_ended`) VALUES 
 (201,'PYTUZTR0421001',3,'CD 4',2949239420,'12',245769951.66667,'2021-04-30 16:49:41','2021-04-30 16:49:41',2,141,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `penyusutan` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`penyusutan_total`
--

DROP TABLE IF EXISTS `penyusutan_total`;
CREATE TABLE `penyusutan_total` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `total_penyusutan` int(10) unsigned DEFAULT NULL,
  `changed_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_penyusutan` int(10) unsigned DEFAULT NULL,
  `history_latest` bigint(20) DEFAULT NULL,
  `before` bigint(20) DEFAULT NULL,
  `table_column` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code_mesin` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `company_parent_id` int(11) DEFAULT NULL,
  `created_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`penyusutan_total`
--

/*!40000 ALTER TABLE `penyusutan_total` DISABLE KEYS */;
INSERT INTO `penyusutan_total` (`id`,`total_penyusutan`,`changed_by`,`created_at`,`updated_at`,`id_penyusutan`,`history_latest`,`before`,`table_column`,`code_mesin`,`category_id`,`company_parent_id`,`created_by`) VALUES 
 (45,NULL,'Admin',NULL,'2021-03-29 12:32:29',NULL,286458,286458,'penyusutan.penyusutan_perbulan',57,2,3,NULL),
 (46,NULL,'Admin',NULL,'2021-03-29 12:33:28',NULL,278327,286458,'penyusutan.penyusutan_perbulan',57,2,3,NULL),
 (47,NULL,'Admin',NULL,'2021-03-29 12:33:28',NULL,34234111,35234234,'penyusutan.purchaseorder_value',57,2,3,NULL),
 (48,NULL,NULL,'2021-03-31 09:01:38','2021-03-31 09:01:38',NULL,89990392918,89990392918,'penyusutan.added.event',64,3,3,'Admin'),
 (49,NULL,NULL,'2021-03-31 11:54:40','2021-03-31 11:54:40',NULL,285750,285750,'penyusutan.added.event',93,4,3,'Admin'),
 (50,NULL,NULL,'2021-03-31 11:57:05','2021-03-31 11:57:05',NULL,27500,27500,'penyusutan.added.event',94,1,3,'Admin'),
 (51,NULL,NULL,'2021-04-01 10:54:17','2021-04-01 10:54:17',NULL,640625,640625,'penyusutan.added.event',95,2,3,'Admin'),
 (52,NULL,NULL,'2021-04-01 11:00:54','2021-04-01 11:00:54',NULL,89996571452,89996571452,'penyusutan.added.event',95,2,3,'Admin');
INSERT INTO `penyusutan_total` (`id`,`total_penyusutan`,`changed_by`,`created_at`,`updated_at`,`id_penyusutan`,`history_latest`,`before`,`table_column`,`code_mesin`,`category_id`,`company_parent_id`,`created_by`) VALUES 
 (53,NULL,NULL,'2021-04-01 13:24:21','2021-04-01 13:24:21',NULL,721304478105,721304478105,'penyusutan.added.event',58,2,3,'Admin'),
 (54,NULL,'Admin',NULL,'2021-04-01 13:25:15',NULL,631314,631313131314,'penyusutan.penyusutan_perbulan',58,2,3,NULL),
 (55,NULL,'Admin',NULL,'2021-04-01 13:25:15',NULL,121212121,121212121212120,'penyusutan.purchaseorder_value',58,2,3,NULL),
 (56,NULL,NULL,'2021-04-04 19:49:22','2021-04-04 19:49:22',NULL,89999822264,89999822264,'penyusutan.added.event',48,2,3,'Admin'),
 (57,NULL,'Admin',NULL,'2021-04-05 09:04:38',NULL,47,48,'penyusutan.code_mesin',47,2,3,NULL),
 (58,NULL,'Admin',NULL,'2021-04-05 09:04:38',NULL,7844159,7844159,'penyusutan.penyusutan_perbulan',47,2,3,NULL),
 (59,NULL,NULL,'2021-04-05 09:10:29','2021-04-05 09:10:29',NULL,32707500,32707500,'penyusutan.added.event',96,1,3,'Admin'),
 (60,NULL,NULL,'2021-04-05 09:19:41','2021-04-05 09:19:41',NULL,69410750,69410750,'penyusutan.added.event',97,1,3,'Admin');
INSERT INTO `penyusutan_total` (`id`,`total_penyusutan`,`changed_by`,`created_at`,`updated_at`,`id_penyusutan`,`history_latest`,`before`,`table_column`,`code_mesin`,`category_id`,`company_parent_id`,`created_by`) VALUES 
 (61,NULL,'Admin',NULL,'2021-04-05 09:21:36',NULL,20,97,'penyusutan.code_mesin',20,1,3,NULL),
 (62,NULL,NULL,'2021-04-05 09:28:45','2021-04-05 09:28:45',NULL,777417,777417,'penyusutan.added.event',98,2,3,'Admin'),
 (63,NULL,NULL,'2021-04-05 13:27:43','2021-04-05 13:27:43',NULL,90063882180,90063882180,'penyusutan.added.event',46,1,3,'Admin'),
 (64,NULL,NULL,'2021-04-05 13:35:24','2021-04-05 13:35:24',NULL,90137542955,90137542955,'penyusutan.added.event',9,2,3,'Admin'),
 (65,NULL,'Admin',NULL,'2021-04-06 23:54:59',NULL,427693,427693,'penyusutan.penyusutan_perbulan',89,1,3,NULL),
 (66,NULL,'Admin',NULL,'2021-04-07 01:06:44',NULL,7,89,'penyusutan.code_mesin',7,1,3,NULL),
 (67,NULL,'Admin',NULL,'2021-04-07 01:06:44',NULL,427693,427693,'penyusutan.penyusutan_perbulan',7,1,3,NULL),
 (68,NULL,'Admin',NULL,'2021-04-07 01:11:37',NULL,89,7,'penyusutan.code_mesin',89,1,3,NULL);
INSERT INTO `penyusutan_total` (`id`,`total_penyusutan`,`changed_by`,`created_at`,`updated_at`,`id_penyusutan`,`history_latest`,`before`,`table_column`,`code_mesin`,`category_id`,`company_parent_id`,`created_by`) VALUES 
 (69,NULL,'Admin',NULL,'2021-04-07 01:11:37',NULL,427693,427693,'penyusutan.penyusutan_perbulan',89,1,3,NULL),
 (70,NULL,NULL,'2021-04-07 10:03:39','2021-04-07 10:03:39',NULL,89524659039,89524659039,'penyusutan.added.event',61,1,3,'Admin'),
 (71,NULL,NULL,'2021-04-07 10:05:03','2021-04-07 10:05:03',NULL,89524944372,89524944372,'penyusutan.added.event',56,2,3,'Admin'),
 (72,NULL,NULL,'2021-04-07 10:29:24','2021-04-07 10:29:24',NULL,7790192,7790192,'penyusutan.added.event',99,1,3,'Admin'),
 (73,NULL,NULL,'2021-04-07 10:31:51','2021-04-07 10:31:51',NULL,6994342,6994342,'penyusutan.added.event',100,2,3,'Admin'),
 (74,NULL,NULL,'2021-04-09 10:41:18','2021-04-09 10:41:18',NULL,25000000,25000000,'penyusutan.added.event',101,2,3,'Admin'),
 (75,NULL,NULL,'2021-04-12 13:23:23','2021-04-12 13:23:23',NULL,329100,329100,'penyusutan.added.event',102,2,3,'Admin'),
 (76,NULL,NULL,'2021-04-12 15:55:38','2021-04-12 15:55:38',NULL,28578246,28578246,'penyusutan.added.event',104,1,1,'Admin');
INSERT INTO `penyusutan_total` (`id`,`total_penyusutan`,`changed_by`,`created_at`,`updated_at`,`id_penyusutan`,`history_latest`,`before`,`table_column`,`code_mesin`,`category_id`,`company_parent_id`,`created_by`) VALUES 
 (77,NULL,NULL,'2021-04-12 16:00:27','2021-04-12 16:00:27',NULL,369235,369235,'penyusutan.added.event',105,4,3,'Admin'),
 (78,NULL,NULL,'2021-04-12 16:10:06','2021-04-12 16:10:06',NULL,192464,192464,'penyusutan.added.event',106,2,3,'Admin'),
 (79,NULL,NULL,'2021-04-12 16:13:23','2021-04-12 16:13:23',NULL,43620,43620,'penyusutan.added.event',107,4,3,'Admin'),
 (80,NULL,NULL,'2021-04-12 16:49:09','2021-04-12 16:49:09',NULL,77858208,77858208,'penyusutan.added.event',108,2,3,'Admin'),
 (81,NULL,NULL,'2021-04-12 16:54:21','2021-04-12 16:54:21',NULL,357786,357786,'penyusutan.added.event',109,1,3,'Admin'),
 (82,NULL,NULL,'2021-04-13 08:38:37','2021-04-13 08:38:37',NULL,20760326,20760326,'penyusutan.added.event',110,2,3,'Admin'),
 (83,NULL,NULL,'2021-04-13 13:31:32','2021-04-13 13:31:32',NULL,89639637567,89639637567,'penyusutan.added.event',107,4,3,'Admin'),
 (84,NULL,NULL,'2021-04-14 09:35:48','2021-04-14 09:35:48',NULL,245769517,245769517,'penyusutan.added.event',111,3,3,'EDP Administrator');
INSERT INTO `penyusutan_total` (`id`,`total_penyusutan`,`changed_by`,`created_at`,`updated_at`,`id_penyusutan`,`history_latest`,`before`,`table_column`,`code_mesin`,`category_id`,`company_parent_id`,`created_by`) VALUES 
 (85,NULL,NULL,'2021-04-14 09:42:45','2021-04-14 09:42:45',NULL,56327643,56327643,'penyusutan.added.event',112,3,3,'EDP Administrator'),
 (86,NULL,NULL,'2021-04-14 13:34:39','2021-04-14 13:34:39',NULL,246813440,246813440,'penyusutan.added.event',108,2,3,'Accounting'),
 (87,NULL,NULL,'2021-04-14 13:49:17','2021-04-14 13:49:17',NULL,249074520,249074520,'penyusutan.added.event',106,2,3,'Accounting'),
 (88,NULL,NULL,'2021-04-14 13:51:50','2021-04-14 13:51:50',NULL,250384284,250384284,'penyusutan.added.event',46,1,3,'Accounting'),
 (89,NULL,NULL,'2021-04-15 10:15:19','2021-04-15 10:15:19',NULL,11661654,11661654,'penyusutan.added.event',113,1,3,'EDP Administrator'),
 (90,NULL,NULL,'2021-04-15 10:17:09','2021-04-15 10:17:09',NULL,27457700,27457700,'penyusutan.added.event',114,2,3,'EDP Administrator'),
 (91,NULL,NULL,'2021-04-15 10:19:18','2021-04-15 10:19:18',NULL,329103,329103,'penyusutan.added.event',115,2,3,'EDP Administrator');
INSERT INTO `penyusutan_total` (`id`,`total_penyusutan`,`changed_by`,`created_at`,`updated_at`,`id_penyusutan`,`history_latest`,`before`,`table_column`,`code_mesin`,`category_id`,`company_parent_id`,`created_by`) VALUES 
 (92,NULL,NULL,'2021-04-15 15:32:53','2021-04-15 15:32:53',NULL,2852750,2852750,'penyusutan.added.event',116,3,3,'EDP Administrator'),
 (93,NULL,NULL,'2021-04-15 15:34:42','2021-04-15 15:34:42',NULL,7774500,7774500,'penyusutan.added.event',117,3,3,'EDP Administrator'),
 (94,NULL,NULL,'2021-04-15 15:46:06','2021-04-15 15:46:06',NULL,7774525,7774525,'penyusutan.added.event',118,3,3,'EDP Administrator'),
 (95,NULL,NULL,'2021-04-15 15:59:30','2021-04-15 15:59:30',NULL,1161540,1161540,'penyusutan.added.event',119,3,3,'EDP Administrator'),
 (96,NULL,NULL,'2021-04-16 09:14:43','2021-04-16 09:14:43',NULL,196246,196246,'penyusutan.added.event',120,1,3,'EDP Administrator'),
 (97,NULL,NULL,'2021-04-16 09:15:54','2021-04-16 09:15:54',NULL,3291078,3291078,'penyusutan.added.event',121,1,3,'EDP Administrator'),
 (98,NULL,NULL,'2021-04-16 09:28:57','2021-04-16 09:28:57',NULL,873235,873235,'penyusutan.added.event',122,2,3,'EDP Administrator');
INSERT INTO `penyusutan_total` (`id`,`total_penyusutan`,`changed_by`,`created_at`,`updated_at`,`id_penyusutan`,`history_latest`,`before`,`table_column`,`code_mesin`,`category_id`,`company_parent_id`,`created_by`) VALUES 
 (99,NULL,NULL,'2021-04-16 09:30:50','2021-04-16 09:30:50',NULL,79774,79774,'penyusutan.added.event',123,2,3,'EDP Administrator'),
 (100,NULL,NULL,'2021-04-16 10:00:21','2021-04-16 10:00:21',NULL,2745200,2745200,'penyusutan.added.event',124,5,3,'EDP Administrator'),
 (101,NULL,NULL,'2021-04-16 10:02:32','2021-04-16 10:02:32',NULL,2857833,2857833,'penyusutan.added.event',125,6,3,'EDP Administrator'),
 (102,NULL,NULL,'2021-04-16 10:03:54','2021-04-16 10:03:54',NULL,285334,285334,'penyusutan.added.event',126,6,3,'EDP Administrator'),
 (103,NULL,NULL,'2021-04-16 10:04:48','2021-04-16 10:04:48',NULL,357786,357786,'penyusutan.added.event',127,6,3,'EDP Administrator'),
 (104,NULL,NULL,'2021-04-16 10:06:09','2021-04-16 10:06:09',NULL,3270769875,3270769875,'penyusutan.added.event',128,6,3,'EDP Administrator'),
 (105,NULL,NULL,'2021-04-20 09:54:18','2021-04-20 09:54:18',NULL,328532517,328532517,'penyusutan.added.event',129,2,3,'EDP Administrator');
INSERT INTO `penyusutan_total` (`id`,`total_penyusutan`,`changed_by`,`created_at`,`updated_at`,`id_penyusutan`,`history_latest`,`before`,`table_column`,`code_mesin`,`category_id`,`company_parent_id`,`created_by`) VALUES 
 (106,NULL,NULL,'2021-04-20 10:34:26','2021-04-20 10:34:26',NULL,7791034,7791034,'penyusutan.added.event',130,1,3,'EDP Administrator'),
 (107,NULL,'EDP Administrator',NULL,'2021-04-21 08:11:05',NULL,113,114,'penyusutan.code_mesin',113,2,3,NULL),
 (108,NULL,'EDP Administrator',NULL,'2021-04-21 08:11:05',NULL,27457700,27457700,'penyusutan.penyusutan_perbulan',113,2,3,NULL),
 (109,NULL,'EDP Administrator',NULL,'2021-04-21 08:14:27',NULL,114,113,'penyusutan.code_mesin',114,2,3,NULL),
 (110,NULL,'EDP Administrator',NULL,'2021-04-21 08:14:27',NULL,27457700,27457700,'penyusutan.penyusutan_perbulan',114,2,3,NULL),
 (111,NULL,NULL,'2021-04-27 11:27:34','2021-04-27 11:27:34',NULL,2737441591,2737441591,'penyusutan.added.event',131,3,3,'EDP Administrator'),
 (112,NULL,NULL,'2021-04-27 14:35:44','2021-04-27 14:35:44',NULL,3270017,3270017,'penyusutan.added.event',132,2,3,'EDP Administrator'),
 (113,NULL,NULL,'2021-04-27 15:24:35','2021-04-27 15:24:35',NULL,161040936,161040936,'penyusutan.added.event',133,2,3,'EDP Administrator');
INSERT INTO `penyusutan_total` (`id`,`total_penyusutan`,`changed_by`,`created_at`,`updated_at`,`id_penyusutan`,`history_latest`,`before`,`table_column`,`code_mesin`,`category_id`,`company_parent_id`,`created_by`) VALUES 
 (114,NULL,NULL,'2021-04-28 10:07:55','2021-04-28 10:07:55',NULL,27432760,27432760,'penyusutan.added.event',134,2,3,'EDP Administrator'),
 (115,NULL,'EDP Administrator',NULL,'2021-04-28 10:45:56',NULL,1025,293627,'penyusutan.penyusutan_perbulan',133,2,3,NULL),
 (116,NULL,'EDP Administrator',NULL,'2021-04-28 10:45:56',NULL,12300,3523523,'penyusutan.purchaseorder_value',133,2,3,NULL),
 (117,NULL,NULL,'2021-04-28 15:14:50','2021-04-28 15:14:50',NULL,327444,327444,'penyusutan.added.event',135,4,3,'EDP Administrator'),
 (118,NULL,NULL,'2021-04-30 15:40:32','2021-04-30 15:40:32',NULL,78207736,78207736,'penyusutan.added.event',136,5,3,'EDP Administrator'),
 (119,NULL,NULL,'2021-04-30 15:48:20','2021-04-30 15:48:20',NULL,2494350,2494350,'penyusutan.added.event',137,1,3,'EDP Administrator'),
 (120,NULL,NULL,'2021-04-30 16:27:04','2021-04-30 16:27:04',NULL,4024870000,4024870000,'penyusutan.added.event',138,1,3,'EDP Administrator');
INSERT INTO `penyusutan_total` (`id`,`total_penyusutan`,`changed_by`,`created_at`,`updated_at`,`id_penyusutan`,`history_latest`,`before`,`table_column`,`code_mesin`,`category_id`,`company_parent_id`,`created_by`) VALUES 
 (121,NULL,NULL,'2021-04-30 16:38:34','2021-04-30 16:38:34',NULL,353325,353325,'penyusutan.added.event',139,2,3,'EDP Administrator'),
 (122,NULL,NULL,'2021-04-30 16:47:06','2021-04-30 16:47:06',NULL,0,0,'penyusutan.added.event',140,2,3,'EDP Administrator'),
 (123,NULL,NULL,'2021-04-30 16:49:41','2021-04-30 16:49:41',NULL,245769952,245769952,'penyusutan.added.event',141,2,3,'EDP Administrator');
/*!40000 ALTER TABLE `penyusutan_total` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE `permission_role` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`permission_role`
--

/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` (`permission_id`,`role_id`) VALUES 
 (1,1),
 (1,5),
 (2,1),
 (3,1),
 (4,1),
 (5,1),
 (11,1),
 (12,1),
 (13,1),
 (14,1),
 (15,1),
 (16,1),
 (17,1),
 (18,1),
 (19,1),
 (20,1),
 (21,1),
 (22,1),
 (23,1),
 (24,1),
 (25,1),
 (26,1),
 (27,1),
 (28,1),
 (29,1),
 (30,1),
 (31,1),
 (32,1),
 (33,1),
 (34,1),
 (35,1),
 (36,1),
 (37,1),
 (38,1),
 (39,1),
 (40,1),
 (41,1),
 (42,1),
 (42,5),
 (43,1),
 (43,5),
 (44,1),
 (44,5),
 (45,1),
 (45,5),
 (46,1),
 (47,1),
 (48,1),
 (49,1),
 (50,1),
 (51,1),
 (52,1),
 (52,5),
 (53,1),
 (53,5),
 (54,1),
 (54,5),
 (55,1),
 (55,5),
 (56,1),
 (57,1),
 (57,5),
 (58,1),
 (58,5),
 (59,1),
 (59,5),
 (60,1),
 (60,5),
 (61,1),
 (62,1),
 (62,5),
 (63,1),
 (63,5),
 (64,1),
 (64,5),
 (65,1),
 (65,5),
 (66,1),
 (67,1),
 (67,5),
 (68,1),
 (68,5),
 (69,1),
 (69,5),
 (70,1),
 (70,5),
 (71,1),
 (72,1),
 (72,5),
 (73,1),
 (73,5),
 (74,1),
 (74,5),
 (75,1),
 (75,5),
 (76,1),
 (77,1),
 (77,5),
 (78,1),
 (78,5),
 (79,1),
 (79,5),
 (80,1),
 (80,5),
 (81,1),
 (82,1);
INSERT INTO `permission_role` (`permission_id`,`role_id`) VALUES 
 (83,1),
 (84,1),
 (85,1),
 (86,1),
 (87,1),
 (87,5),
 (88,1),
 (88,5),
 (89,1),
 (89,5),
 (90,1),
 (90,5),
 (91,1),
 (92,1),
 (93,1),
 (94,1),
 (95,1),
 (96,1),
 (97,1),
 (97,5),
 (98,1),
 (98,5),
 (99,1),
 (99,5),
 (100,1),
 (100,5),
 (101,1),
 (102,1),
 (102,5),
 (103,1),
 (103,5),
 (104,1),
 (104,5),
 (105,1),
 (105,5),
 (106,1),
 (107,1),
 (108,1),
 (109,1),
 (110,1),
 (111,1),
 (112,1),
 (112,5),
 (113,1),
 (113,5),
 (114,1),
 (114,5),
 (115,1),
 (115,5),
 (116,1),
 (116,5),
 (117,1),
 (117,5),
 (118,1),
 (118,5),
 (119,1),
 (119,5),
 (120,1),
 (120,5),
 (121,1),
 (122,1),
 (122,5),
 (123,1),
 (123,5),
 (124,1),
 (124,5),
 (125,1),
 (125,5),
 (126,1),
 (127,1),
 (127,5),
 (128,1),
 (128,5),
 (129,1),
 (129,5),
 (130,1),
 (130,5),
 (131,1),
 (132,1),
 (132,5),
 (133,1),
 (133,5),
 (134,1),
 (134,5),
 (135,1),
 (135,5),
 (136,1),
 (137,1),
 (137,5),
 (138,1),
 (138,5),
 (139,1),
 (139,5),
 (140,1),
 (140,5),
 (141,1),
 (142,1);
INSERT INTO `permission_role` (`permission_id`,`role_id`) VALUES 
 (142,5),
 (143,1),
 (143,5),
 (144,1),
 (144,5),
 (145,1),
 (145,5),
 (146,1),
 (147,1),
 (147,5),
 (148,1),
 (148,5),
 (149,1),
 (149,5),
 (150,1),
 (150,5),
 (151,1),
 (152,1),
 (152,5),
 (153,1),
 (153,5),
 (154,1),
 (154,5),
 (155,1),
 (155,5),
 (156,1),
 (157,1),
 (158,1),
 (159,1),
 (160,1),
 (161,1),
 (162,1),
 (163,1),
 (164,1),
 (165,1),
 (166,1),
 (167,1),
 (167,5),
 (168,1),
 (169,1),
 (170,1),
 (171,1),
 (172,1),
 (172,5),
 (173,1),
 (174,1),
 (175,1),
 (176,1),
 (177,1),
 (177,5),
 (178,1),
 (179,1),
 (180,1),
 (181,1),
 (182,1),
 (182,5),
 (183,1),
 (184,1),
 (185,1),
 (186,1),
 (187,1),
 (187,5),
 (188,1),
 (189,1),
 (190,1),
 (191,1),
 (197,1),
 (197,5),
 (198,1),
 (199,1),
 (200,1),
 (201,1),
 (202,1),
 (202,5),
 (203,1),
 (204,1),
 (205,1),
 (206,1),
 (207,1),
 (207,5),
 (208,1),
 (209,1),
 (210,1),
 (211,1),
 (212,1),
 (212,5),
 (213,1),
 (213,5),
 (214,1),
 (214,5),
 (215,1),
 (215,5),
 (216,1),
 (217,1),
 (217,5);
INSERT INTO `permission_role` (`permission_id`,`role_id`) VALUES 
 (218,1),
 (218,5),
 (219,1),
 (219,5),
 (220,1),
 (220,5),
 (221,1),
 (227,1),
 (228,1),
 (229,1),
 (230,1),
 (231,1),
 (237,1),
 (238,1),
 (239,1),
 (240,1),
 (241,1),
 (242,1),
 (242,5),
 (243,1),
 (244,1),
 (245,1),
 (246,1),
 (247,1),
 (247,5),
 (248,1),
 (249,1),
 (250,1),
 (251,1),
 (252,1),
 (252,5),
 (253,1),
 (254,1),
 (255,1),
 (256,1),
 (257,1),
 (257,5),
 (258,1),
 (259,1),
 (260,1),
 (261,1),
 (262,1),
 (263,1),
 (264,1),
 (265,1),
 (266,1),
 (267,1),
 (267,5),
 (268,1),
 (268,5),
 (269,1),
 (269,5),
 (270,1),
 (270,5),
 (271,1),
 (272,1),
 (272,5),
 (273,1),
 (273,5),
 (274,1),
 (274,5),
 (275,1),
 (275,5),
 (276,1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=277 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`permissions`
--

/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` (`id`,`key`,`table_name`,`created_at`,`updated_at`) VALUES 
 (1,'browse_admin',NULL,'2021-01-19 08:01:48','2021-01-19 08:01:48'),
 (2,'browse_bread',NULL,'2021-01-19 08:01:48','2021-01-19 08:01:48'),
 (3,'browse_database',NULL,'2021-01-19 08:01:48','2021-01-19 08:01:48'),
 (4,'browse_media',NULL,'2021-01-19 08:01:48','2021-01-19 08:01:48'),
 (5,'browse_compass',NULL,'2021-01-19 08:01:48','2021-01-19 08:01:48'),
 (11,'browse_roles','roles','2021-01-19 08:01:48','2021-01-19 08:01:48'),
 (12,'read_roles','roles','2021-01-19 08:01:48','2021-01-19 08:01:48'),
 (13,'edit_roles','roles','2021-01-19 08:01:48','2021-01-19 08:01:48'),
 (14,'add_roles','roles','2021-01-19 08:01:48','2021-01-19 08:01:48'),
 (15,'delete_roles','roles','2021-01-19 08:01:48','2021-01-19 08:01:48'),
 (16,'browse_users','users','2021-01-19 08:01:48','2021-01-19 08:01:48'),
 (17,'read_users','users','2021-01-19 08:01:48','2021-01-19 08:01:48'),
 (18,'edit_users','users','2021-01-19 08:01:48','2021-01-19 08:01:48'),
 (19,'add_users','users','2021-01-19 08:01:48','2021-01-19 08:01:48');
INSERT INTO `permissions` (`id`,`key`,`table_name`,`created_at`,`updated_at`) VALUES 
 (20,'delete_users','users','2021-01-19 08:01:48','2021-01-19 08:01:48'),
 (21,'browse_settings','settings','2021-01-19 08:01:48','2021-01-19 08:01:48'),
 (22,'read_settings','settings','2021-01-19 08:01:48','2021-01-19 08:01:48'),
 (23,'edit_settings','settings','2021-01-19 08:01:48','2021-01-19 08:01:48'),
 (24,'add_settings','settings','2021-01-19 08:01:48','2021-01-19 08:01:48'),
 (25,'delete_settings','settings','2021-01-19 08:01:48','2021-01-19 08:01:48'),
 (26,'browse_hooks',NULL,'2021-01-19 08:01:48','2021-01-19 08:01:48'),
 (27,'browse_categories','categories','2021-01-19 08:02:15','2021-01-19 08:02:15'),
 (28,'read_categories','categories','2021-01-19 08:02:15','2021-01-19 08:02:15'),
 (29,'edit_categories','categories','2021-01-19 08:02:15','2021-01-19 08:02:15'),
 (30,'add_categories','categories','2021-01-19 08:02:15','2021-01-19 08:02:15'),
 (31,'delete_categories','categories','2021-01-19 08:02:15','2021-01-19 08:02:15'),
 (32,'browse_posts','posts','2021-01-19 08:02:15','2021-01-19 08:02:15');
INSERT INTO `permissions` (`id`,`key`,`table_name`,`created_at`,`updated_at`) VALUES 
 (33,'read_posts','posts','2021-01-19 08:02:15','2021-01-19 08:02:15'),
 (34,'edit_posts','posts','2021-01-19 08:02:15','2021-01-19 08:02:15'),
 (35,'add_posts','posts','2021-01-19 08:02:15','2021-01-19 08:02:15'),
 (36,'delete_posts','posts','2021-01-19 08:02:15','2021-01-19 08:02:15'),
 (37,'browse_pages','pages','2021-01-19 08:02:16','2021-01-19 08:02:16'),
 (38,'read_pages','pages','2021-01-19 08:02:16','2021-01-19 08:02:16'),
 (39,'edit_pages','pages','2021-01-19 08:02:16','2021-01-19 08:02:16'),
 (40,'add_pages','pages','2021-01-19 08:02:16','2021-01-19 08:02:16'),
 (41,'delete_pages','pages','2021-01-19 08:02:16','2021-01-19 08:02:16'),
 (42,'browse_mesin','mesin','2021-01-20 01:41:07','2021-01-20 01:41:07'),
 (43,'read_mesin','mesin','2021-01-20 01:41:07','2021-01-20 01:41:07'),
 (44,'edit_mesin','mesin','2021-01-20 01:41:07','2021-01-20 01:41:07'),
 (45,'add_mesin','mesin','2021-01-20 01:41:07','2021-01-20 01:41:07'),
 (46,'delete_mesin','mesin','2021-01-20 01:41:07','2021-01-20 01:41:07');
INSERT INTO `permissions` (`id`,`key`,`table_name`,`created_at`,`updated_at`) VALUES 
 (47,'browse_company','company','2021-01-20 02:11:14','2021-01-20 02:11:14'),
 (48,'read_company','company','2021-01-20 02:11:14','2021-01-20 02:11:14'),
 (49,'edit_company','company','2021-01-20 02:11:14','2021-01-20 02:11:14'),
 (50,'add_company','company','2021-01-20 02:11:14','2021-01-20 02:11:14'),
 (51,'delete_company','company','2021-01-20 02:11:14','2021-01-20 02:11:14'),
 (52,'browse_job_level','job_level','2021-01-20 02:18:50','2021-01-20 02:18:50'),
 (53,'read_job_level','job_level','2021-01-20 02:18:50','2021-01-20 02:18:50'),
 (54,'edit_job_level','job_level','2021-01-20 02:18:50','2021-01-20 02:18:50'),
 (55,'add_job_level','job_level','2021-01-20 02:18:50','2021-01-20 02:18:50'),
 (56,'delete_job_level','job_level','2021-01-20 02:18:50','2021-01-20 02:18:50'),
 (57,'browse_penyusutan','penyusutan','2021-01-20 02:38:51','2021-01-20 02:38:51'),
 (58,'read_penyusutan','penyusutan','2021-01-20 02:38:51','2021-01-20 02:38:51'),
 (59,'edit_penyusutan','penyusutan','2021-01-20 02:38:51','2021-01-20 02:38:51');
INSERT INTO `permissions` (`id`,`key`,`table_name`,`created_at`,`updated_at`) VALUES 
 (60,'add_penyusutan','penyusutan','2021-01-20 02:38:51','2021-01-20 02:38:51'),
 (61,'delete_penyusutan','penyusutan','2021-01-20 02:38:51','2021-01-20 02:38:51'),
 (62,'browse_listrik','listrik','2021-01-20 03:25:15','2021-01-20 03:25:15'),
 (63,'read_listrik','listrik','2021-01-20 03:25:15','2021-01-20 03:25:15'),
 (64,'edit_listrik','listrik','2021-01-20 03:25:15','2021-01-20 03:25:15'),
 (65,'add_listrik','listrik','2021-01-20 03:25:15','2021-01-20 03:25:15'),
 (66,'delete_listrik','listrik','2021-01-20 03:25:15','2021-01-20 03:25:15'),
 (67,'browse_mtc','mtc','2021-01-20 03:42:50','2021-01-20 03:42:50'),
 (68,'read_mtc','mtc','2021-01-20 03:42:50','2021-01-20 03:42:50'),
 (69,'edit_mtc','mtc','2021-01-20 03:42:50','2021-01-20 03:42:50'),
 (70,'add_mtc','mtc','2021-01-20 03:42:50','2021-01-20 03:42:50'),
 (71,'delete_mtc','mtc','2021-01-20 03:42:50','2021-01-20 03:42:50'),
 (72,'browse_account_mtc','account_mtc','2021-01-20 03:48:09','2021-01-20 03:48:09'),
 (73,'read_account_mtc','account_mtc','2021-01-20 03:48:09','2021-01-20 03:48:09');
INSERT INTO `permissions` (`id`,`key`,`table_name`,`created_at`,`updated_at`) VALUES 
 (74,'edit_account_mtc','account_mtc','2021-01-20 03:48:09','2021-01-20 03:48:09'),
 (75,'add_account_mtc','account_mtc','2021-01-20 03:48:09','2021-01-20 03:48:09'),
 (76,'delete_account_mtc','account_mtc','2021-01-20 03:48:09','2021-01-20 03:48:09'),
 (77,'browse_labor','labor','2021-01-20 04:15:08','2021-01-20 04:15:08'),
 (78,'read_labor','labor','2021-01-20 04:15:08','2021-01-20 04:15:08'),
 (79,'edit_labor','labor','2021-01-20 04:15:08','2021-01-20 04:15:08'),
 (80,'add_labor','labor','2021-01-20 04:15:08','2021-01-20 04:15:08'),
 (81,'delete_labor','labor','2021-01-20 04:15:08','2021-01-20 04:15:08'),
 (82,'browse_gaji_lain','gaji_lain','2021-01-20 04:41:32','2021-01-20 04:41:32'),
 (83,'read_gaji_lain','gaji_lain','2021-01-20 04:41:32','2021-01-20 04:41:32'),
 (84,'edit_gaji_lain','gaji_lain','2021-01-20 04:41:32','2021-01-20 04:41:32'),
 (85,'add_gaji_lain','gaji_lain','2021-01-20 04:41:32','2021-01-20 04:41:32'),
 (86,'delete_gaji_lain','gaji_lain','2021-01-20 04:41:32','2021-01-20 04:41:32');
INSERT INTO `permissions` (`id`,`key`,`table_name`,`created_at`,`updated_at`) VALUES 
 (87,'browse_laporan_gaji_lain','laporan_gaji_lain','2021-01-20 04:51:27','2021-01-20 04:51:27'),
 (88,'read_laporan_gaji_lain','laporan_gaji_lain','2021-01-20 04:51:27','2021-01-20 04:51:27'),
 (89,'edit_laporan_gaji_lain','laporan_gaji_lain','2021-01-20 04:51:27','2021-01-20 04:51:27'),
 (90,'add_laporan_gaji_lain','laporan_gaji_lain','2021-01-20 04:51:27','2021-01-20 04:51:27'),
 (91,'delete_laporan_gaji_lain','laporan_gaji_lain','2021-01-20 04:51:27','2021-01-20 04:51:27'),
 (92,'browse_bagian_penjualan','bagian_penjualan','2021-01-20 06:06:00','2021-01-20 06:06:00'),
 (93,'read_bagian_penjualan','bagian_penjualan','2021-01-20 06:06:00','2021-01-20 06:06:00'),
 (94,'edit_bagian_penjualan','bagian_penjualan','2021-01-20 06:06:00','2021-01-20 06:06:00'),
 (95,'add_bagian_penjualan','bagian_penjualan','2021-01-20 06:06:00','2021-01-20 06:06:00'),
 (96,'delete_bagian_penjualan','bagian_penjualan','2021-01-20 06:06:00','2021-01-20 06:06:00'),
 (97,'browse_laporan_bagian_gaji_bulanan','laporan_bagian_gaji_bulanan','2021-01-20 06:14:29','2021-01-20 06:14:29');
INSERT INTO `permissions` (`id`,`key`,`table_name`,`created_at`,`updated_at`) VALUES 
 (98,'read_laporan_bagian_gaji_bulanan','laporan_bagian_gaji_bulanan','2021-01-20 06:14:29','2021-01-20 06:14:29'),
 (99,'edit_laporan_bagian_gaji_bulanan','laporan_bagian_gaji_bulanan','2021-01-20 06:14:29','2021-01-20 06:14:29'),
 (100,'add_laporan_bagian_gaji_bulanan','laporan_bagian_gaji_bulanan','2021-01-20 06:14:29','2021-01-20 06:14:29'),
 (101,'delete_laporan_bagian_gaji_bulanan','laporan_bagian_gaji_bulanan','2021-01-20 06:14:29','2021-01-20 06:14:29'),
 (102,'browse_laporan_bagian_penjualan','laporan_bagian_penjualan','2021-01-20 06:17:55','2021-01-20 06:17:55'),
 (103,'read_laporan_bagian_penjualan','laporan_bagian_penjualan','2021-01-20 06:17:55','2021-01-20 06:17:55'),
 (104,'edit_laporan_bagian_penjualan','laporan_bagian_penjualan','2021-01-20 06:17:55','2021-01-20 06:17:55'),
 (105,'add_laporan_bagian_penjualan','laporan_bagian_penjualan','2021-01-20 06:17:55','2021-01-20 06:17:55'),
 (106,'delete_laporan_bagian_penjualan','laporan_bagian_penjualan','2021-01-20 06:17:55','2021-01-20 06:17:55'),
 (107,'browse_biaya_administrasi_umum','biaya_administrasi_umum','2021-01-20 06:29:32','2021-01-20 06:29:32');
INSERT INTO `permissions` (`id`,`key`,`table_name`,`created_at`,`updated_at`) VALUES 
 (108,'read_biaya_administrasi_umum','biaya_administrasi_umum','2021-01-20 06:29:32','2021-01-20 06:29:32'),
 (109,'edit_biaya_administrasi_umum','biaya_administrasi_umum','2021-01-20 06:29:32','2021-01-20 06:29:32'),
 (110,'add_biaya_administrasi_umum','biaya_administrasi_umum','2021-01-20 06:29:32','2021-01-20 06:29:32'),
 (111,'delete_biaya_administrasi_umum','biaya_administrasi_umum','2021-01-20 06:29:32','2021-01-20 06:29:32'),
 (112,'browse_laporan_biaya_administrasi_umum','laporan_biaya_administrasi_umum','2021-01-20 06:39:36','2021-01-20 06:39:36'),
 (113,'read_laporan_biaya_administrasi_umum','laporan_biaya_administrasi_umum','2021-01-20 06:39:36','2021-01-20 06:39:36'),
 (114,'edit_laporan_biaya_administrasi_umum','laporan_biaya_administrasi_umum','2021-01-20 06:39:36','2021-01-20 06:39:36'),
 (115,'add_laporan_biaya_administrasi_umum','laporan_biaya_administrasi_umum','2021-01-20 06:39:36','2021-01-20 06:39:36'),
 (116,'delete_laporan_biaya_administrasi_umum','laporan_biaya_administrasi_umum','2021-01-20 06:39:36','2021-01-20 06:39:36');
INSERT INTO `permissions` (`id`,`key`,`table_name`,`created_at`,`updated_at`) VALUES 
 (117,'browse_laporan_biaya_listrik_bulan_jam','laporan_biaya_listrik_bulan_jam','2021-01-20 07:44:31','2021-01-20 07:44:31'),
 (118,'read_laporan_biaya_listrik_bulan_jam','laporan_biaya_listrik_bulan_jam','2021-01-20 07:44:31','2021-01-20 07:44:31'),
 (119,'edit_laporan_biaya_listrik_bulan_jam','laporan_biaya_listrik_bulan_jam','2021-01-20 07:44:31','2021-01-20 07:44:31'),
 (120,'add_laporan_biaya_listrik_bulan_jam','laporan_biaya_listrik_bulan_jam','2021-01-20 07:44:31','2021-01-20 07:44:31'),
 (121,'delete_laporan_biaya_listrik_bulan_jam','laporan_biaya_listrik_bulan_jam','2021-01-20 07:44:31','2021-01-20 07:44:31'),
 (122,'browse_laporan_biaya_listrik_perbulan','laporan_biaya_listrik_perbulan','2021-01-20 07:57:20','2021-01-20 07:57:20'),
 (123,'read_laporan_biaya_listrik_perbulan','laporan_biaya_listrik_perbulan','2021-01-20 07:57:20','2021-01-20 07:57:20'),
 (124,'edit_laporan_biaya_listrik_perbulan','laporan_biaya_listrik_perbulan','2021-01-20 07:57:20','2021-01-20 07:57:20'),
 (125,'add_laporan_biaya_listrik_perbulan','laporan_biaya_listrik_perbulan','2021-01-20 07:57:20','2021-01-20 07:57:20');
INSERT INTO `permissions` (`id`,`key`,`table_name`,`created_at`,`updated_at`) VALUES 
 (126,'delete_laporan_biaya_listrik_perbulan','laporan_biaya_listrik_perbulan','2021-01-20 07:57:20','2021-01-20 07:57:20'),
 (127,'browse_kategori_bagian','kategori_bagian','2021-01-20 08:33:54','2021-01-20 08:33:54'),
 (128,'read_kategori_bagian','kategori_bagian','2021-01-20 08:33:54','2021-01-20 08:33:54'),
 (129,'edit_kategori_bagian','kategori_bagian','2021-01-20 08:33:54','2021-01-20 08:33:54'),
 (130,'add_kategori_bagian','kategori_bagian','2021-01-20 08:33:54','2021-01-20 08:33:54'),
 (131,'delete_kategori_bagian','kategori_bagian','2021-01-20 08:33:54','2021-01-20 08:33:54'),
 (132,'browse_total_kalkulasi','total_kalkulasi','2021-01-22 05:39:17','2021-01-22 05:39:17'),
 (133,'read_total_kalkulasi','total_kalkulasi','2021-01-22 05:39:17','2021-01-22 05:39:17'),
 (134,'edit_total_kalkulasi','total_kalkulasi','2021-01-22 05:39:17','2021-01-22 05:39:17'),
 (135,'add_total_kalkulasi','total_kalkulasi','2021-01-22 05:39:17','2021-01-22 05:39:17'),
 (136,'delete_total_kalkulasi','total_kalkulasi','2021-01-22 05:39:17','2021-01-22 05:39:17');
INSERT INTO `permissions` (`id`,`key`,`table_name`,`created_at`,`updated_at`) VALUES 
 (137,'browse_rpt_mtc','rpt_mtc','2021-01-29 01:18:08','2021-01-29 01:18:08'),
 (138,'read_rpt_mtc','rpt_mtc','2021-01-29 01:18:08','2021-01-29 01:18:08'),
 (139,'edit_rpt_mtc','rpt_mtc','2021-01-29 01:18:08','2021-01-29 01:18:08'),
 (140,'add_rpt_mtc','rpt_mtc','2021-01-29 01:18:08','2021-01-29 01:18:08'),
 (141,'delete_rpt_mtc','rpt_mtc','2021-01-29 01:18:08','2021-01-29 01:18:08'),
 (142,'browse_listrik_output','listrik_output','2021-01-29 06:19:39','2021-01-29 06:19:39'),
 (143,'read_listrik_output','listrik_output','2021-01-29 06:19:39','2021-01-29 06:19:39'),
 (144,'edit_listrik_output','listrik_output','2021-01-29 06:19:39','2021-01-29 06:19:39'),
 (145,'add_listrik_output','listrik_output','2021-01-29 06:19:39','2021-01-29 06:19:39'),
 (146,'delete_listrik_output','listrik_output','2021-01-29 06:19:39','2021-01-29 06:19:39'),
 (147,'browse_lb8_kategori_mesin','lb8_kategori_mesin','2021-02-24 11:55:45','2021-02-24 11:55:45'),
 (148,'read_lb8_kategori_mesin','lb8_kategori_mesin','2021-02-24 11:55:45','2021-02-24 11:55:45');
INSERT INTO `permissions` (`id`,`key`,`table_name`,`created_at`,`updated_at`) VALUES 
 (149,'edit_lb8_kategori_mesin','lb8_kategori_mesin','2021-02-24 11:55:45','2021-02-24 11:55:45'),
 (150,'add_lb8_kategori_mesin','lb8_kategori_mesin','2021-02-24 11:55:45','2021-02-24 11:55:45'),
 (151,'delete_lb8_kategori_mesin','lb8_kategori_mesin','2021-02-24 11:55:45','2021-02-24 11:55:45'),
 (152,'browse_history_log_recalculate','history_log_recalculate','2021-03-02 09:14:15','2021-03-02 09:14:15'),
 (153,'read_history_log_recalculate','history_log_recalculate','2021-03-02 09:14:15','2021-03-02 09:14:15'),
 (154,'edit_history_log_recalculate','history_log_recalculate','2021-03-02 09:14:15','2021-03-02 09:14:15'),
 (155,'add_history_log_recalculate','history_log_recalculate','2021-03-02 09:14:15','2021-03-02 09:14:15'),
 (156,'delete_history_log_recalculate','history_log_recalculate','2021-03-02 09:14:15','2021-03-02 09:14:15'),
 (157,'browse_menus','menus','2021-03-05 06:42:15','2021-03-05 06:42:15'),
 (158,'read_menus','menus','2021-03-05 06:42:15','2021-03-05 06:42:15');
INSERT INTO `permissions` (`id`,`key`,`table_name`,`created_at`,`updated_at`) VALUES 
 (159,'edit_menus','menus','2021-03-05 06:42:15','2021-03-05 06:42:15'),
 (160,'add_menus','menus','2021-03-05 06:42:15','2021-03-05 06:42:15'),
 (161,'delete_menus','menus','2021-03-05 06:42:15','2021-03-05 06:42:15'),
 (162,'browse_admins','admins','2021-03-05 07:05:45','2021-03-05 07:05:45'),
 (163,'read_admins','admins','2021-03-05 07:05:45','2021-03-05 07:05:45'),
 (164,'edit_admins','admins','2021-03-05 07:05:45','2021-03-05 07:05:45'),
 (165,'add_admins','admins','2021-03-05 07:05:45','2021-03-05 07:05:45'),
 (166,'delete_admins','admins','2021-03-05 07:05:45','2021-03-05 07:05:45'),
 (167,'browse_listrik_total','listrik_total','2021-03-06 23:51:01','2021-03-06 23:51:01'),
 (168,'read_listrik_total','listrik_total','2021-03-06 23:51:01','2021-03-06 23:51:01'),
 (169,'edit_listrik_total','listrik_total','2021-03-06 23:51:01','2021-03-06 23:51:01'),
 (170,'add_listrik_total','listrik_total','2021-03-06 23:51:01','2021-03-06 23:51:01'),
 (171,'delete_listrik_total','listrik_total','2021-03-06 23:51:01','2021-03-06 23:51:01');
INSERT INTO `permissions` (`id`,`key`,`table_name`,`created_at`,`updated_at`) VALUES 
 (172,'browse_penyusutan_total','penyusutan_total','2021-03-07 02:31:44','2021-03-07 02:31:44'),
 (173,'read_penyusutan_total','penyusutan_total','2021-03-07 02:31:44','2021-03-07 02:31:44'),
 (174,'edit_penyusutan_total','penyusutan_total','2021-03-07 02:31:44','2021-03-07 02:31:44'),
 (175,'add_penyusutan_total','penyusutan_total','2021-03-07 02:31:44','2021-03-07 02:31:44'),
 (176,'delete_penyusutan_total','penyusutan_total','2021-03-07 02:31:44','2021-03-07 02:31:44'),
 (177,'browse_transaksi_mtc_total','transaksi_mtc_total','2021-03-07 11:14:28','2021-03-07 11:14:28'),
 (178,'read_transaksi_mtc_total','transaksi_mtc_total','2021-03-07 11:14:28','2021-03-07 11:14:28'),
 (179,'edit_transaksi_mtc_total','transaksi_mtc_total','2021-03-07 11:14:28','2021-03-07 11:14:28'),
 (180,'add_transaksi_mtc_total','transaksi_mtc_total','2021-03-07 11:14:28','2021-03-07 11:14:28'),
 (181,'delete_transaksi_mtc_total','transaksi_mtc_total','2021-03-07 11:14:28','2021-03-07 11:14:28'),
 (182,'browse_rpt_mtc_total','rpt_mtc_total','2021-03-07 11:48:49','2021-03-07 11:48:49');
INSERT INTO `permissions` (`id`,`key`,`table_name`,`created_at`,`updated_at`) VALUES 
 (183,'read_rpt_mtc_total','rpt_mtc_total','2021-03-07 11:48:49','2021-03-07 11:48:49'),
 (184,'edit_rpt_mtc_total','rpt_mtc_total','2021-03-07 11:48:49','2021-03-07 11:48:49'),
 (185,'add_rpt_mtc_total','rpt_mtc_total','2021-03-07 11:48:49','2021-03-07 11:48:49'),
 (186,'delete_rpt_mtc_total','rpt_mtc_total','2021-03-07 11:48:49','2021-03-07 11:48:49'),
 (187,'browse_account_mtc_total','account_mtc_total','2021-03-07 11:58:11','2021-03-07 11:58:11'),
 (188,'read_account_mtc_total','account_mtc_total','2021-03-07 11:58:11','2021-03-07 11:58:11'),
 (189,'edit_account_mtc_total','account_mtc_total','2021-03-07 11:58:11','2021-03-07 11:58:11'),
 (190,'add_account_mtc_total','account_mtc_total','2021-03-07 11:58:11','2021-03-07 11:58:11'),
 (191,'delete_account_mtc_total','account_mtc_total','2021-03-07 11:58:11','2021-03-07 11:58:11'),
 (197,'browse_gji_lain_total','gji_lain_total','2021-03-07 12:35:01','2021-03-07 12:35:01'),
 (198,'read_gji_lain_total','gji_lain_total','2021-03-07 12:35:01','2021-03-07 12:35:01');
INSERT INTO `permissions` (`id`,`key`,`table_name`,`created_at`,`updated_at`) VALUES 
 (199,'edit_gji_lain_total','gji_lain_total','2021-03-07 12:35:01','2021-03-07 12:35:01'),
 (200,'add_gji_lain_total','gji_lain_total','2021-03-07 12:35:01','2021-03-07 12:35:01'),
 (201,'delete_gji_lain_total','gji_lain_total','2021-03-07 12:35:01','2021-03-07 12:35:01'),
 (202,'browse_b_penjualan_total','b_penjualan_total','2021-03-07 12:51:15','2021-03-07 12:51:15'),
 (203,'read_b_penjualan_total','b_penjualan_total','2021-03-07 12:51:15','2021-03-07 12:51:15'),
 (204,'edit_b_penjualan_total','b_penjualan_total','2021-03-07 12:51:15','2021-03-07 12:51:15'),
 (205,'add_b_penjualan_total','b_penjualan_total','2021-03-07 12:51:15','2021-03-07 12:51:15'),
 (206,'delete_b_penjualan_total','b_penjualan_total','2021-03-07 12:51:15','2021-03-07 12:51:15'),
 (207,'browse_bau_total','bau_total','2021-03-07 13:15:43','2021-03-07 13:15:43'),
 (208,'read_bau_total','bau_total','2021-03-07 13:15:43','2021-03-07 13:15:43'),
 (209,'edit_bau_total','bau_total','2021-03-07 13:15:43','2021-03-07 13:15:43');
INSERT INTO `permissions` (`id`,`key`,`table_name`,`created_at`,`updated_at`) VALUES 
 (210,'add_bau_total','bau_total','2021-03-07 13:15:43','2021-03-07 13:15:43'),
 (211,'delete_bau_total','bau_total','2021-03-07 13:15:43','2021-03-07 13:15:43'),
 (212,'browse_all_recalculate','all_recalculate','2021-03-07 13:42:20','2021-03-07 13:42:20'),
 (213,'read_all_recalculate','all_recalculate','2021-03-07 13:42:20','2021-03-07 13:42:20'),
 (214,'edit_all_recalculate','all_recalculate','2021-03-07 13:42:20','2021-03-07 13:42:20'),
 (215,'add_all_recalculate','all_recalculate','2021-03-07 13:42:20','2021-03-07 13:42:20'),
 (216,'delete_all_recalculate','all_recalculate','2021-03-07 13:42:20','2021-03-07 13:42:20'),
 (217,'browse_lwbp_master','lwbp_master','2021-03-08 08:47:59','2021-03-08 08:47:59'),
 (218,'read_lwbp_master','lwbp_master','2021-03-08 08:47:59','2021-03-08 08:47:59'),
 (219,'edit_lwbp_master','lwbp_master','2021-03-08 08:47:59','2021-03-08 08:47:59'),
 (220,'add_lwbp_master','lwbp_master','2021-03-08 08:47:59','2021-03-08 08:47:59'),
 (221,'delete_lwbp_master','lwbp_master','2021-03-08 08:47:59','2021-03-08 08:47:59');
INSERT INTO `permissions` (`id`,`key`,`table_name`,`created_at`,`updated_at`) VALUES 
 (227,'browse_laborttals','laborttals','2021-03-29 14:26:13','2021-03-29 14:26:13'),
 (228,'read_laborttals','laborttals','2021-03-29 14:26:13','2021-03-29 14:26:13'),
 (229,'edit_laborttals','laborttals','2021-03-29 14:26:13','2021-03-29 14:26:13'),
 (230,'add_laborttals','laborttals','2021-03-29 14:26:13','2021-03-29 14:26:13'),
 (231,'delete_laborttals','laborttals','2021-03-29 14:26:13','2021-03-29 14:26:13'),
 (237,'browse_hlogs_listriks','hlogs_listriks','2021-03-30 08:51:12','2021-03-30 08:51:12'),
 (238,'read_hlogs_listriks','hlogs_listriks','2021-03-30 08:51:12','2021-03-30 08:51:12'),
 (239,'edit_hlogs_listriks','hlogs_listriks','2021-03-30 08:51:12','2021-03-30 08:51:12'),
 (240,'add_hlogs_listriks','hlogs_listriks','2021-03-30 08:51:12','2021-03-30 08:51:12'),
 (241,'delete_hlogs_listriks','hlogs_listriks','2021-03-30 08:51:12','2021-03-30 08:51:12'),
 (242,'browse_history_recalculate_temporary','history_recalculate_temporary','2021-03-30 13:52:36','2021-03-30 13:52:36'),
 (243,'read_history_recalculate_temporary','history_recalculate_temporary','2021-03-30 13:52:36','2021-03-30 13:52:36');
INSERT INTO `permissions` (`id`,`key`,`table_name`,`created_at`,`updated_at`) VALUES 
 (244,'edit_history_recalculate_temporary','history_recalculate_temporary','2021-03-30 13:52:36','2021-03-30 13:52:36'),
 (245,'add_history_recalculate_temporary','history_recalculate_temporary','2021-03-30 13:52:36','2021-03-30 13:52:36'),
 (246,'delete_history_recalculate_temporary','history_recalculate_temporary','2021-03-30 13:52:36','2021-03-30 13:52:36'),
 (247,'browse_mesin_total','mesin_total','2021-03-31 09:51:58','2021-03-31 09:51:58'),
 (248,'read_mesin_total','mesin_total','2021-03-31 09:51:58','2021-03-31 09:51:58'),
 (249,'edit_mesin_total','mesin_total','2021-03-31 09:51:58','2021-03-31 09:51:58'),
 (250,'add_mesin_total','mesin_total','2021-03-31 09:51:58','2021-03-31 09:51:58'),
 (251,'delete_mesin_total','mesin_total','2021-03-31 09:51:58','2021-03-31 09:51:58'),
 (252,'browse_group_mesin_logs','group_mesin_logs','2021-03-31 13:22:01','2021-03-31 13:22:01'),
 (253,'read_group_mesin_logs','group_mesin_logs','2021-03-31 13:22:01','2021-03-31 13:22:01'),
 (254,'edit_group_mesin_logs','group_mesin_logs','2021-03-31 13:22:01','2021-03-31 13:22:01');
INSERT INTO `permissions` (`id`,`key`,`table_name`,`created_at`,`updated_at`) VALUES 
 (255,'add_group_mesin_logs','group_mesin_logs','2021-03-31 13:22:01','2021-03-31 13:22:01'),
 (256,'delete_group_mesin_logs','group_mesin_logs','2021-03-31 13:22:01','2021-03-31 13:22:01'),
 (257,'browse_kategoribagian_logs','kategoribagian_logs','2021-03-31 14:19:03','2021-03-31 14:19:03'),
 (258,'read_kategoribagian_logs','kategoribagian_logs','2021-03-31 14:19:03','2021-03-31 14:19:03'),
 (259,'edit_kategoribagian_logs','kategoribagian_logs','2021-03-31 14:19:03','2021-03-31 14:19:03'),
 (260,'add_kategoribagian_logs','kategoribagian_logs','2021-03-31 14:19:03','2021-03-31 14:19:03'),
 (261,'delete_kategoribagian_logs','kategoribagian_logs','2021-03-31 14:19:03','2021-03-31 14:19:03'),
 (262,'browse_gaji_karyawan_logs','gaji_karyawan_logs','2021-03-31 14:40:40','2021-03-31 14:40:40'),
 (263,'read_gaji_karyawan_logs','gaji_karyawan_logs','2021-03-31 14:40:40','2021-03-31 14:40:40'),
 (264,'edit_gaji_karyawan_logs','gaji_karyawan_logs','2021-03-31 14:40:40','2021-03-31 14:40:40'),
 (265,'add_gaji_karyawan_logs','gaji_karyawan_logs','2021-03-31 14:40:40','2021-03-31 14:40:40');
INSERT INTO `permissions` (`id`,`key`,`table_name`,`created_at`,`updated_at`) VALUES 
 (266,'delete_gaji_karyawan_logs','gaji_karyawan_logs','2021-03-31 14:40:40','2021-03-31 14:40:40'),
 (267,'browse_location_machine','location_machine','2021-04-12 15:06:12','2021-04-12 15:06:12'),
 (268,'read_location_machine','location_machine','2021-04-12 15:06:12','2021-04-12 15:06:12'),
 (269,'edit_location_machine','location_machine','2021-04-12 15:06:12','2021-04-12 15:06:12'),
 (270,'add_location_machine','location_machine','2021-04-12 15:06:12','2021-04-12 15:06:12'),
 (271,'delete_location_machine','location_machine','2021-04-12 15:06:12','2021-04-12 15:06:12'),
 (272,'browse_special_labor','special_labor','2021-04-20 11:24:32','2021-04-20 11:24:32'),
 (273,'read_special_labor','special_labor','2021-04-20 11:24:32','2021-04-20 11:24:32'),
 (274,'edit_special_labor','special_labor','2021-04-20 11:24:32','2021-04-20 11:24:32'),
 (275,'add_special_labor','special_labor','2021-04-20 11:24:32','2021-04-20 11:24:32'),
 (276,'delete_special_labor','special_labor','2021-04-20 11:24:32','2021-04-20 11:24:32');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8_unicode_ci,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `meta_keywords` text COLLATE utf8_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`posts`
--

/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` (`id`,`author_id`,`category_id`,`title`,`seo_title`,`excerpt`,`body`,`image`,`slug`,`meta_description`,`meta_keywords`,`status`,`featured`,`created_at`,`updated_at`) VALUES 
 (1,0,NULL,'Lorem Ipsum Post',NULL,'This is the excerpt for the Lorem Ipsum Post','<p>This is the body of the lorem ipsum post</p>','posts/post1.jpg','lorem-ipsum-post','This is the meta description','keyword1, keyword2, keyword3','PUBLISHED',0,'2021-01-19 08:02:15','2021-01-19 08:02:15'),
 (2,0,NULL,'My Sample Post',NULL,'This is the excerpt for the sample Post','<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>','posts/post2.jpg','my-sample-post','Meta Description for sample post','keyword1, keyword2, keyword3','PUBLISHED',0,'2021-01-19 08:02:15','2021-01-19 08:02:15'),
 (3,0,NULL,'Latest Post',NULL,'This is the excerpt for the latest post','<p>This is the body for the latest post</p>','posts/post3.jpg','latest-post','This is the meta description','keyword1, keyword2, keyword3','PUBLISHED',0,'2021-01-19 08:02:15','2021-01-19 08:02:15'),
 (4,0,NULL,'Yarr Post',NULL,'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.','<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>','posts/post4.jpg','yarr-post','this be a meta descript','keyword1, keyword2, keyword3','PUBLISHED',0,'2021-01-19 08:02:15','2021-01-19 08:02:15');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`roles`
--

/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`,`name`,`display_name`,`created_at`,`updated_at`) VALUES 
 (1,'admin','Administrator','2021-01-19 08:01:48','2021-01-19 08:01:48'),
 (2,'User Testing','Testing User (super admin)','2021-01-19 08:01:48','2021-02-09 07:52:41'),
 (5,'Accounting','Admin accounting','2021-03-05 06:07:00','2021-03-05 06:07:00');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`rpt_mtc`
--

DROP TABLE IF EXISTS `rpt_mtc`;
CREATE TABLE `rpt_mtc` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code_mesin` int(11) DEFAULT NULL,
  `company_parent_id` int(11) DEFAULT NULL,
  `perbaikan_tahun1` double DEFAULT NULL,
  `perbaikan_tahun2` double DEFAULT NULL,
  `perbaikan_tahun3` double DEFAULT NULL,
  `rata_rata_perbaikan_perbulan` double DEFAULT NULL,
  `sparepart_tahun1` double DEFAULT NULL,
  `sparepart_tahun2` double DEFAULT NULL,
  `sparepart_tahun3` double DEFAULT NULL,
  `rata_rata_sparepart_perbulan` double DEFAULT NULL,
  `biaya_produksi_lain` double DEFAULT NULL,
  `total_biaya_perbulan` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `category_bagian` int(11) DEFAULT NULL,
  `code_rpt_mtc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `perbaikanthn1_view` int(11) DEFAULT NULL,
  `perbaikanthn2_view` int(11) DEFAULT NULL,
  `perbaikanthn3_view` int(11) DEFAULT NULL,
  `rtrt_perbaikan_bln_view` int(11) DEFAULT NULL,
  `sprprt_view1` int(11) DEFAULT NULL,
  `sprprt_view2` int(11) DEFAULT NULL,
  `sprprt_view3` int(11) DEFAULT NULL,
  `rtrt_sparepart_bln_view` int(11) DEFAULT NULL,
  `biaya_produksi_lain_view` int(11) DEFAULT NULL,
  `total_biaya_perbulan_view` int(11) DEFAULT NULL,
  `ended_at` timestamp NULL DEFAULT NULL,
  `TRANSACTION_DATE_V` int(11) DEFAULT NULL,
  `thn_sparepart_periode_1` int(11) DEFAULT NULL,
  `thn_sparepart_periode_2` int(11) DEFAULT NULL,
  `thn_sparepart_periode_3` int(11) DEFAULT NULL,
  `thn_perbaikan_periode_1` int(11) DEFAULT NULL,
  `thn_perbaikan_periode_2` int(11) DEFAULT NULL,
  `thn_perbaikan_periode_3` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`rpt_mtc`
--

/*!40000 ALTER TABLE `rpt_mtc` DISABLE KEYS */;
INSERT INTO `rpt_mtc` (`id`,`code_mesin`,`company_parent_id`,`perbaikan_tahun1`,`perbaikan_tahun2`,`perbaikan_tahun3`,`rata_rata_perbaikan_perbulan`,`sparepart_tahun1`,`sparepart_tahun2`,`sparepart_tahun3`,`rata_rata_sparepart_perbulan`,`biaya_produksi_lain`,`total_biaya_perbulan`,`created_at`,`updated_at`,`deleted_at`,`category_bagian`,`code_rpt_mtc`,`perbaikanthn1_view`,`perbaikanthn2_view`,`perbaikanthn3_view`,`rtrt_perbaikan_bln_view`,`sprprt_view1`,`sprprt_view2`,`sprprt_view3`,`rtrt_sparepart_bln_view`,`biaya_produksi_lain_view`,`total_biaya_perbulan_view`,`ended_at`,`TRANSACTION_DATE_V`,`thn_sparepart_periode_1`,`thn_sparepart_periode_2`,`thn_sparepart_periode_3`,`thn_perbaikan_periode_1`,`thn_perbaikan_periode_2`,`thn_perbaikan_periode_3`) VALUES 
 (113,141,3,3489293429,NULL,NULL,290774452.41667,42131000,NULL,NULL,3510916.6666667,735179160,294285369.08333,'2021-04-30 16:49:41','2021-04-30 16:49:41',NULL,2,'RPTMTCyYTR0421001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2023,2021,2021,2300,2021,2021);
/*!40000 ALTER TABLE `rpt_mtc` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`rpt_mtc_total`
--

DROP TABLE IF EXISTS `rpt_mtc_total`;
CREATE TABLE `rpt_mtc_total` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_rpt_mtc_total` int(11) DEFAULT NULL,
  `changed_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `total_tr_mtc` int(11) DEFAULT NULL,
  `table_coloumn` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `history_latest` bigint(20) DEFAULT NULL,
  `before` bigint(20) DEFAULT NULL,
  `categori_id` int(11) DEFAULT NULL,
  `company_parent_id` int(11) DEFAULT NULL,
  `code_mesin` int(11) DEFAULT NULL,
  `lstrik_output` int(11) DEFAULT NULL,
  `created_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=364 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`rpt_mtc_total`
--

/*!40000 ALTER TABLE `rpt_mtc_total` DISABLE KEYS */;
INSERT INTO `rpt_mtc_total` (`id`,`id_rpt_mtc_total`,`changed_by`,`created_at`,`updated_at`,`total_tr_mtc`,`table_coloumn`,`history_latest`,`before`,`categori_id`,`company_parent_id`,`code_mesin`,`lstrik_output`,`created_by`) VALUES 
 (164,NULL,NULL,'2021-03-31 09:08:04','2021-03-31 09:08:04',NULL,'rpt_mtc.added.event',34862,34862,2,3,10,NULL,'Admin'),
 (165,NULL,NULL,'2021-04-01 11:13:17','2021-04-01 11:13:17',NULL,'rpt_mtc.added.event',11737,11737,2,3,95,NULL,'Admin'),
 (166,NULL,NULL,'2021-04-01 13:59:51','2021-04-01 13:59:51',NULL,'rpt_mtc.added.event',447917,447917,2,3,58,NULL,'Admin'),
 (167,NULL,NULL,'2021-04-05 08:24:08','2021-04-05 08:24:08',NULL,'rpt_mtc.added.event',279235,279235,1,3,48,NULL,'Admin'),
 (168,NULL,'Admin',NULL,'2021-04-05 09:02:39',NULL,'rpt_mtc.code_mesin',47,58,2,3,47,NULL,NULL),
 (169,NULL,'Admin',NULL,'2021-04-05 09:02:39',NULL,'rpt_mtc.rata_rata_perbaikan_perbulan',416667,416667,2,3,47,NULL,NULL),
 (170,NULL,'Admin',NULL,'2021-04-05 09:02:39',NULL,'rpt_mtc.biaya_produksi_lain',14163799,14163799,2,3,47,NULL,NULL),
 (171,NULL,'Admin',NULL,'2021-04-05 09:02:39',NULL,'rpt_mtc.total_biaya_perbulan',447917,447917,2,3,47,NULL,NULL);
INSERT INTO `rpt_mtc_total` (`id`,`id_rpt_mtc_total`,`changed_by`,`created_at`,`updated_at`,`total_tr_mtc`,`table_coloumn`,`history_latest`,`before`,`categori_id`,`company_parent_id`,`code_mesin`,`lstrik_output`,`created_by`) VALUES 
 (172,NULL,'Admin',NULL,'2021-04-05 09:21:01',NULL,'rpt_mtc.code_mesin',97,48,1,3,97,NULL,NULL),
 (173,NULL,'Admin',NULL,'2021-04-05 09:21:01',NULL,'rpt_mtc.rata_rata_perbaikan_perbulan',4730,4730,1,3,97,NULL,NULL),
 (174,NULL,'Admin',NULL,'2021-04-05 09:21:01',NULL,'rpt_mtc.rata_rata_sparepart_perbulan',274506,274506,1,3,97,NULL,NULL),
 (175,NULL,'Admin',NULL,'2021-04-05 09:21:01',NULL,'rpt_mtc.total_biaya_perbulan',279235,279235,1,3,97,NULL,NULL),
 (176,NULL,'Admin',NULL,'2021-04-05 09:22:15',NULL,'rpt_mtc.code_mesin',89,97,1,3,89,NULL,NULL),
 (177,NULL,'Admin',NULL,'2021-04-05 09:22:15',NULL,'rpt_mtc.rata_rata_perbaikan_perbulan',4730,4730,1,3,89,NULL,NULL),
 (178,NULL,'Admin',NULL,'2021-04-05 09:22:15',NULL,'rpt_mtc.rata_rata_sparepart_perbulan',274506,274506,1,3,89,NULL,NULL),
 (179,NULL,'Admin',NULL,'2021-04-05 09:22:15',NULL,'rpt_mtc.total_biaya_perbulan',279235,279235,1,3,89,NULL,NULL);
INSERT INTO `rpt_mtc_total` (`id`,`id_rpt_mtc_total`,`changed_by`,`created_at`,`updated_at`,`total_tr_mtc`,`table_coloumn`,`history_latest`,`before`,`categori_id`,`company_parent_id`,`code_mesin`,`lstrik_output`,`created_by`) VALUES 
 (180,NULL,'Admin',NULL,'2021-04-05 13:32:37',NULL,'rpt_mtc.code_mesin',46,47,2,3,46,NULL,NULL),
 (181,NULL,'Admin',NULL,'2021-04-05 13:32:37',NULL,'rpt_mtc.rata_rata_perbaikan_perbulan',416667,416667,2,3,46,NULL,NULL),
 (182,NULL,'Admin',NULL,'2021-04-05 13:32:37',NULL,'rpt_mtc.biaya_produksi_lain',14163799,14163799,2,3,46,NULL,NULL),
 (183,NULL,'Admin',NULL,'2021-04-05 13:32:37',NULL,'rpt_mtc.total_biaya_perbulan',447917,447917,2,3,46,NULL,NULL),
 (184,NULL,NULL,'2021-04-05 13:34:31','2021-04-05 13:34:31',NULL,'rpt_mtc.added.event',13217870,13217870,2,3,9,NULL,'Admin'),
 (185,NULL,NULL,'2021-04-05 14:29:29','2021-04-05 14:29:29',NULL,'rpt_mtc.added.event',985717,985717,4,3,93,NULL,'Admin'),
 (186,NULL,NULL,'2021-04-05 15:53:57','2021-04-05 15:53:57',NULL,'rpt_mtc.added.event',79501,79501,4,3,91,NULL,'Admin'),
 (187,NULL,'Admin',NULL,'2021-04-07 01:12:16',NULL,'rpt_mtc.code_mesin',7,89,1,3,7,NULL,NULL);
INSERT INTO `rpt_mtc_total` (`id`,`id_rpt_mtc_total`,`changed_by`,`created_at`,`updated_at`,`total_tr_mtc`,`table_coloumn`,`history_latest`,`before`,`categori_id`,`company_parent_id`,`code_mesin`,`lstrik_output`,`created_by`) VALUES 
 (188,NULL,'Admin',NULL,'2021-04-07 01:12:16',NULL,'rpt_mtc.rata_rata_perbaikan_perbulan',4730,4730,1,3,7,NULL,NULL),
 (189,NULL,'Admin',NULL,'2021-04-07 01:12:16',NULL,'rpt_mtc.rata_rata_sparepart_perbulan',274506,274506,1,3,7,NULL,NULL),
 (190,NULL,'Admin',NULL,'2021-04-07 01:12:16',NULL,'rpt_mtc.total_biaya_perbulan',279235,279235,1,3,7,NULL,NULL),
 (191,NULL,'Admin',NULL,'2021-04-07 01:13:18',NULL,'rpt_mtc.code_mesin',89,7,1,3,89,NULL,NULL),
 (192,NULL,'Admin',NULL,'2021-04-07 01:13:18',NULL,'rpt_mtc.rata_rata_perbaikan_perbulan',4730,4730,1,3,89,NULL,NULL),
 (193,NULL,'Admin',NULL,'2021-04-07 01:13:18',NULL,'rpt_mtc.rata_rata_sparepart_perbulan',274506,274506,1,3,89,NULL,NULL),
 (194,NULL,'Admin',NULL,'2021-04-07 01:13:18',NULL,'rpt_mtc.total_biaya_perbulan',279235,279235,1,3,89,NULL,NULL),
 (195,NULL,'Admin',NULL,'2021-04-07 01:58:56',NULL,'rpt_mtc.rata_rata_perbaikan_perbulan',4730,4730,1,3,89,NULL,NULL);
INSERT INTO `rpt_mtc_total` (`id`,`id_rpt_mtc_total`,`changed_by`,`created_at`,`updated_at`,`total_tr_mtc`,`table_coloumn`,`history_latest`,`before`,`categori_id`,`company_parent_id`,`code_mesin`,`lstrik_output`,`created_by`) VALUES 
 (196,NULL,'Admin',NULL,'2021-04-07 01:58:56',NULL,'rpt_mtc.rata_rata_sparepart_perbulan',274506,274506,1,3,89,NULL,NULL),
 (197,NULL,'Admin',NULL,'2021-04-07 01:58:56',NULL,'rpt_mtc.total_biaya_perbulan',279235,279235,1,3,89,NULL,NULL),
 (198,NULL,NULL,'2021-04-07 02:11:58','2021-04-07 02:11:58',NULL,'rpt_mtc.added.event',7785141,7785141,1,3,92,NULL,'Admin'),
 (199,NULL,'Admin',NULL,'2021-04-07 02:12:20',NULL,'rpt_mtc.rata_rata_sparepart_perbulan',4675517,4675517,1,3,92,NULL,NULL),
 (200,NULL,'Admin',NULL,'2021-04-07 02:12:20',NULL,'rpt_mtc.total_biaya_perbulan',7785141,7785141,1,3,92,NULL,NULL),
 (201,NULL,'Admin',NULL,'2021-04-07 02:12:41',NULL,'rpt_mtc.rata_rata_sparepart_perbulan',4675517,4675517,1,3,92,NULL,NULL),
 (202,NULL,'Admin',NULL,'2021-04-07 02:12:41',NULL,'rpt_mtc.total_biaya_perbulan',7785141,7785141,1,3,92,NULL,NULL),
 (203,NULL,'Admin',NULL,'2021-04-07 02:13:02',NULL,'rpt_mtc.rata_rata_sparepart_perbulan',4675517,4675517,1,3,92,NULL,NULL);
INSERT INTO `rpt_mtc_total` (`id`,`id_rpt_mtc_total`,`changed_by`,`created_at`,`updated_at`,`total_tr_mtc`,`table_coloumn`,`history_latest`,`before`,`categori_id`,`company_parent_id`,`code_mesin`,`lstrik_output`,`created_by`) VALUES 
 (204,NULL,'Admin',NULL,'2021-04-07 02:13:02',NULL,'rpt_mtc.total_biaya_perbulan',7785141,7785141,1,3,92,NULL,NULL),
 (205,NULL,NULL,'2021-04-07 10:06:09','2021-04-07 10:06:09',NULL,'rpt_mtc.added.event',228437,228437,2,3,56,NULL,'Admin'),
 (206,NULL,NULL,'2021-04-07 10:08:32','2021-04-07 10:08:32',NULL,'rpt_mtc.added.event',585514,585514,1,3,61,NULL,'Admin'),
 (207,NULL,NULL,'2021-04-07 10:53:37','2021-04-07 10:53:37',NULL,'rpt_mtc.added.event',4414819,4414819,1,3,99,NULL,'Admin'),
 (208,NULL,NULL,'2021-04-07 10:55:41','2021-04-07 10:55:41',NULL,'rpt_mtc.added.event',613258570,613258570,2,3,100,NULL,'Admin'),
 (209,NULL,NULL,'2021-04-12 13:23:23','2021-04-12 13:23:23',NULL,'penyusutan.added.event',329100,329100,2,3,102,NULL,'Admin'),
 (210,NULL,NULL,'2021-04-12 13:23:23','2021-04-12 13:23:23',NULL,'rpt_mtc.added.event',9637845,9637845,2,3,102,NULL,'Admin'),
 (211,NULL,NULL,'2021-04-12 15:55:38','2021-04-12 15:55:38',NULL,'penyusutan.added.event',28578246,28578246,1,1,104,NULL,'Admin');
INSERT INTO `rpt_mtc_total` (`id`,`id_rpt_mtc_total`,`changed_by`,`created_at`,`updated_at`,`total_tr_mtc`,`table_coloumn`,`history_latest`,`before`,`categori_id`,`company_parent_id`,`code_mesin`,`lstrik_output`,`created_by`) VALUES 
 (212,NULL,NULL,'2021-04-12 15:55:39','2021-04-12 15:55:39',NULL,'rpt_mtc.added.event',22057665,22057665,1,1,104,NULL,'Admin'),
 (213,NULL,NULL,'2021-04-12 16:00:27','2021-04-12 16:00:27',NULL,'penyusutan.added.event',369235,369235,4,3,105,NULL,'Admin'),
 (214,NULL,NULL,'2021-04-12 16:00:27','2021-04-12 16:00:27',NULL,'rpt_mtc.added.event',291729308,291729308,4,3,105,NULL,'Admin'),
 (215,NULL,NULL,'2021-04-12 16:10:06','2021-04-12 16:10:06',NULL,'penyusutan.added.event',192464,192464,2,3,106,NULL,'Admin'),
 (216,NULL,NULL,'2021-04-12 16:10:06','2021-04-12 16:10:06',NULL,'rpt_mtc.added.event',1989193,1989193,2,3,106,NULL,'Admin'),
 (217,NULL,NULL,'2021-04-12 16:13:23','2021-04-12 16:13:23',NULL,'penyusutan.added.event',43620,43620,4,3,107,NULL,'Admin'),
 (218,NULL,NULL,'2021-04-12 16:13:23','2021-04-12 16:13:23',NULL,'rpt_mtc.added.event',2668419,2668419,4,3,107,NULL,'Admin'),
 (219,NULL,NULL,'2021-04-12 16:49:09','2021-04-12 16:49:09',NULL,'penyusutan.added.event',77858208,77858208,2,3,108,NULL,'Admin');
INSERT INTO `rpt_mtc_total` (`id`,`id_rpt_mtc_total`,`changed_by`,`created_at`,`updated_at`,`total_tr_mtc`,`table_coloumn`,`history_latest`,`before`,`categori_id`,`company_parent_id`,`code_mesin`,`lstrik_output`,`created_by`) VALUES 
 (220,NULL,NULL,'2021-04-12 16:49:09','2021-04-12 16:49:09',NULL,'rpt_mtc.added.event',89776,89776,2,3,108,NULL,'Admin'),
 (221,NULL,NULL,'2021-04-12 16:54:21','2021-04-12 16:54:21',NULL,'penyusutan.added.event',357786,357786,1,3,109,NULL,'Admin'),
 (222,NULL,NULL,'2021-04-12 16:54:21','2021-04-12 16:54:21',NULL,'rpt_mtc.added.event',7893602,7893602,1,3,109,NULL,'Admin'),
 (223,NULL,NULL,'2021-04-13 08:38:37','2021-04-13 08:38:37',NULL,'penyusutan.added.event',20760326,20760326,2,3,110,NULL,'Admin'),
 (224,NULL,NULL,'2021-04-13 08:38:37','2021-04-13 08:38:37',NULL,'rpt_mtc.added.event',3250564,3250564,2,3,110,NULL,'Admin'),
 (225,NULL,NULL,'2021-04-13 15:49:09','2021-04-13 15:49:09',NULL,'rpt_mtc.added.event',61802,61802,4,3,91,NULL,'Accounting'),
 (226,NULL,'Accounting',NULL,'2021-04-14 08:21:12',NULL,'rpt_mtc.code_mesin',99,91,4,3,99,NULL,NULL),
 (227,NULL,'Accounting',NULL,'2021-04-14 08:21:12',NULL,'rpt_mtc.rata_rata_perbaikan_perbulan',4243,4243,4,3,99,NULL,NULL);
INSERT INTO `rpt_mtc_total` (`id`,`id_rpt_mtc_total`,`changed_by`,`created_at`,`updated_at`,`total_tr_mtc`,`table_coloumn`,`history_latest`,`before`,`categori_id`,`company_parent_id`,`code_mesin`,`lstrik_output`,`created_by`) VALUES 
 (228,NULL,'Accounting',NULL,'2021-04-14 08:21:12',NULL,'rpt_mtc.rata_rata_sparepart_perbulan',57559,57559,4,3,99,NULL,NULL),
 (229,NULL,'Accounting',NULL,'2021-04-14 08:21:12',NULL,'rpt_mtc.biaya_produksi_lain',14163799,14163799,4,3,99,NULL,NULL),
 (230,NULL,'Accounting',NULL,'2021-04-14 08:21:12',NULL,'rpt_mtc.total_biaya_perbulan',61802,61802,4,3,99,NULL,NULL),
 (231,NULL,NULL,'2021-04-14 09:35:48','2021-04-14 09:35:48',NULL,'penyusutan.added.event',245769517,245769517,3,3,111,NULL,'EDP Administrator'),
 (232,NULL,NULL,'2021-04-14 09:35:49','2021-04-14 09:35:49',NULL,'rpt_mtc.added.event',3038762,3038762,3,3,111,NULL,'EDP Administrator'),
 (233,NULL,NULL,'2021-04-14 09:42:45','2021-04-14 09:42:45',NULL,'penyusutan.added.event',56327643,56327643,3,3,112,NULL,'EDP Administrator'),
 (234,NULL,NULL,'2021-04-14 09:42:47','2021-04-14 09:42:47',NULL,'rpt_mtc.added.event',10155253,10155253,3,3,112,NULL,'EDP Administrator');
INSERT INTO `rpt_mtc_total` (`id`,`id_rpt_mtc_total`,`changed_by`,`created_at`,`updated_at`,`total_tr_mtc`,`table_coloumn`,`history_latest`,`before`,`categori_id`,`company_parent_id`,`code_mesin`,`lstrik_output`,`created_by`) VALUES 
 (235,NULL,'Accounting',NULL,'2021-04-14 14:06:44',NULL,'rpt_mtc.rata_rata_perbaikan_perbulan',3720872,3720872,3,3,112,NULL,NULL),
 (236,NULL,'Accounting',NULL,'2021-04-14 14:06:44',NULL,'rpt_mtc.rata_rata_sparepart_perbulan',6434381,6434381,3,3,112,NULL,NULL),
 (237,NULL,'Accounting',NULL,'2021-04-14 14:06:44',NULL,'rpt_mtc.biaya_produksi_lain',14163799,3266707755,3,3,112,NULL,NULL),
 (238,NULL,'Accounting',NULL,'2021-04-14 14:06:44',NULL,'rpt_mtc.total_biaya_perbulan',10155253,10155253,3,3,112,NULL,NULL),
 (239,NULL,'Accounting',NULL,'2021-04-14 14:08:34',NULL,'rpt_mtc.rata_rata_perbaikan_perbulan',3720872,3720872,3,3,112,NULL,NULL),
 (240,NULL,'Accounting',NULL,'2021-04-14 14:08:34',NULL,'rpt_mtc.rata_rata_sparepart_perbulan',6434381,6434381,3,3,112,NULL,NULL),
 (241,NULL,'Accounting',NULL,'2021-04-14 14:08:34',NULL,'rpt_mtc.biaya_produksi_lain',14163799,3266707755,3,3,112,NULL,NULL);
INSERT INTO `rpt_mtc_total` (`id`,`id_rpt_mtc_total`,`changed_by`,`created_at`,`updated_at`,`total_tr_mtc`,`table_coloumn`,`history_latest`,`before`,`categori_id`,`company_parent_id`,`code_mesin`,`lstrik_output`,`created_by`) VALUES 
 (242,NULL,'Accounting',NULL,'2021-04-14 14:08:34',NULL,'rpt_mtc.total_biaya_perbulan',10155253,10155253,3,3,112,NULL,NULL),
 (243,NULL,'Accounting',NULL,'2021-04-14 14:08:36',NULL,'rpt_mtc.rata_rata_perbaikan_perbulan',3720872,3720872,3,3,112,NULL,NULL),
 (244,NULL,'Accounting',NULL,'2021-04-14 14:08:36',NULL,'rpt_mtc.rata_rata_sparepart_perbulan',6434381,6434381,3,3,112,NULL,NULL),
 (245,NULL,'Accounting',NULL,'2021-04-14 14:08:36',NULL,'rpt_mtc.biaya_produksi_lain',14163799,3266707755,3,3,112,NULL,NULL),
 (246,NULL,'Accounting',NULL,'2021-04-14 14:08:36',NULL,'rpt_mtc.total_biaya_perbulan',10155253,10155253,3,3,112,NULL,NULL),
 (247,NULL,'Accounting',NULL,'2021-04-14 14:13:29',NULL,'rpt_mtc.rata_rata_perbaikan_perbulan',3720872,3720872,3,3,112,NULL,NULL),
 (248,NULL,'Accounting',NULL,'2021-04-14 14:13:29',NULL,'rpt_mtc.rata_rata_sparepart_perbulan',6434381,6434381,3,3,112,NULL,NULL);
INSERT INTO `rpt_mtc_total` (`id`,`id_rpt_mtc_total`,`changed_by`,`created_at`,`updated_at`,`total_tr_mtc`,`table_coloumn`,`history_latest`,`before`,`categori_id`,`company_parent_id`,`code_mesin`,`lstrik_output`,`created_by`) VALUES 
 (249,NULL,'Accounting',NULL,'2021-04-14 14:13:29',NULL,'rpt_mtc.biaya_produksi_lain',14163799,14163799,3,3,112,NULL,NULL),
 (250,NULL,'Accounting',NULL,'2021-04-14 14:13:29',NULL,'rpt_mtc.total_biaya_perbulan',10155253,10155253,3,3,112,NULL,NULL),
 (251,NULL,'EDP Administrator',NULL,'2021-04-14 14:16:32',NULL,'rpt_mtc.rata_rata_perbaikan_perbulan',3720872,3720872,3,3,112,NULL,NULL),
 (252,NULL,'EDP Administrator',NULL,'2021-04-14 14:16:32',NULL,'rpt_mtc.rata_rata_sparepart_perbulan',6434381,6434381,3,3,112,NULL,NULL),
 (253,NULL,'EDP Administrator',NULL,'2021-04-14 14:16:32',NULL,'rpt_mtc.biaya_produksi_lain',14163799,14163799,3,3,112,NULL,NULL),
 (254,NULL,'EDP Administrator',NULL,'2021-04-14 14:16:32',NULL,'rpt_mtc.total_biaya_perbulan',10155253,10155253,3,3,112,NULL,NULL),
 (255,NULL,NULL,'2021-04-14 15:39:46','2021-04-14 15:39:46',NULL,'rpt_mtc.added.event',314614,314614,2,3,110,NULL,'EDP Administrator');
INSERT INTO `rpt_mtc_total` (`id`,`id_rpt_mtc_total`,`changed_by`,`created_at`,`updated_at`,`total_tr_mtc`,`table_coloumn`,`history_latest`,`before`,`categori_id`,`company_parent_id`,`code_mesin`,`lstrik_output`,`created_by`) VALUES 
 (256,NULL,NULL,'2021-04-15 10:15:19','2021-04-15 10:15:19',NULL,'penyusutan.added.event',11661654,11661654,1,3,113,NULL,'EDP Administrator'),
 (257,NULL,NULL,'2021-04-15 10:15:19','2021-04-15 10:15:19',NULL,'rpt_mtc.added.event',23375364,23375364,1,3,113,NULL,'EDP Administrator'),
 (258,NULL,NULL,'2021-04-15 10:17:09','2021-04-15 10:17:09',NULL,'penyusutan.added.event',27457700,27457700,2,3,114,NULL,'EDP Administrator'),
 (259,NULL,NULL,'2021-04-15 10:17:10','2021-04-15 10:17:10',NULL,'rpt_mtc.added.event',16524007,16524007,2,3,114,NULL,'EDP Administrator'),
 (260,NULL,NULL,'2021-04-15 10:19:18','2021-04-15 10:19:18',NULL,'penyusutan.added.event',329103,329103,2,3,115,NULL,'EDP Administrator'),
 (261,NULL,NULL,'2021-04-15 10:19:18','2021-04-15 10:19:18',NULL,'rpt_mtc.added.event',91995788,91995788,2,3,115,NULL,'EDP Administrator'),
 (262,NULL,NULL,'2021-04-15 15:32:53','2021-04-15 15:32:53',NULL,'penyusutan.added.event',2852750,2852750,3,3,116,NULL,'EDP Administrator');
INSERT INTO `rpt_mtc_total` (`id`,`id_rpt_mtc_total`,`changed_by`,`created_at`,`updated_at`,`total_tr_mtc`,`table_coloumn`,`history_latest`,`before`,`categori_id`,`company_parent_id`,`code_mesin`,`lstrik_output`,`created_by`) VALUES 
 (263,NULL,NULL,'2021-04-15 15:32:54','2021-04-15 15:32:54',NULL,'rpt_mtc.added.event',65644672,65644672,3,3,116,NULL,'EDP Administrator'),
 (264,NULL,NULL,'2021-04-15 15:34:42','2021-04-15 15:34:42',NULL,'penyusutan.added.event',7774500,7774500,3,3,117,NULL,'EDP Administrator'),
 (265,NULL,NULL,'2021-04-15 15:34:42','2021-04-15 15:34:42',NULL,'rpt_mtc.added.event',1427138,1427138,3,3,117,NULL,'EDP Administrator'),
 (266,NULL,NULL,'2021-04-15 15:46:06','2021-04-15 15:46:06',NULL,'penyusutan.added.event',7774525,7774525,3,3,118,NULL,'EDP Administrator'),
 (267,NULL,NULL,'2021-04-15 15:46:06','2021-04-15 15:46:06',NULL,'rpt_mtc.added.event',3769078,3769078,3,3,118,NULL,'EDP Administrator'),
 (268,NULL,NULL,'2021-04-15 15:59:30','2021-04-15 15:59:30',NULL,'penyusutan.added.event',1161540,1161540,3,3,119,NULL,'EDP Administrator'),
 (269,NULL,NULL,'2021-04-15 15:59:31','2021-04-15 15:59:31',NULL,'rpt_mtc.added.event',28938733,28938733,3,3,119,NULL,'EDP Administrator');
INSERT INTO `rpt_mtc_total` (`id`,`id_rpt_mtc_total`,`changed_by`,`created_at`,`updated_at`,`total_tr_mtc`,`table_coloumn`,`history_latest`,`before`,`categori_id`,`company_parent_id`,`code_mesin`,`lstrik_output`,`created_by`) VALUES 
 (270,NULL,NULL,'2021-04-16 09:14:43','2021-04-16 09:14:43',NULL,'penyusutan.added.event',196246,196246,1,3,120,NULL,'EDP Administrator'),
 (271,NULL,NULL,'2021-04-16 09:14:44','2021-04-16 09:14:44',NULL,'rpt_mtc.added.event',30625,30625,1,3,120,NULL,'EDP Administrator'),
 (272,NULL,NULL,'2021-04-16 09:15:54','2021-04-16 09:15:54',NULL,'penyusutan.added.event',3291078,3291078,1,3,121,NULL,'EDP Administrator'),
 (273,NULL,NULL,'2021-04-16 09:15:54','2021-04-16 09:15:54',NULL,'rpt_mtc.added.event',4963052,4963052,1,3,121,NULL,'EDP Administrator'),
 (274,NULL,NULL,'2021-04-16 09:28:57','2021-04-16 09:28:57',NULL,'penyusutan.added.event',873235,873235,2,3,122,NULL,'EDP Administrator'),
 (275,NULL,NULL,'2021-04-16 09:28:58','2021-04-16 09:28:58',NULL,'rpt_mtc.added.event',354628,354628,2,3,122,NULL,'EDP Administrator'),
 (276,NULL,NULL,'2021-04-16 09:30:50','2021-04-16 09:30:50',NULL,'penyusutan.added.event',79774,79774,2,3,123,NULL,'EDP Administrator');
INSERT INTO `rpt_mtc_total` (`id`,`id_rpt_mtc_total`,`changed_by`,`created_at`,`updated_at`,`total_tr_mtc`,`table_coloumn`,`history_latest`,`before`,`categori_id`,`company_parent_id`,`code_mesin`,`lstrik_output`,`created_by`) VALUES 
 (277,NULL,NULL,'2021-04-16 09:30:50','2021-04-16 09:30:50',NULL,'rpt_mtc.added.event',451759,451759,2,3,123,NULL,'EDP Administrator'),
 (278,NULL,NULL,'2021-04-16 10:00:21','2021-04-16 10:00:21',NULL,'penyusutan.added.event',2745200,2745200,5,3,124,NULL,'EDP Administrator'),
 (279,NULL,NULL,'2021-04-16 10:00:21','2021-04-16 10:00:21',NULL,'rpt_mtc.added.event',634188,634188,5,3,124,NULL,'EDP Administrator'),
 (280,NULL,NULL,'2021-04-16 10:02:32','2021-04-16 10:02:32',NULL,'penyusutan.added.event',2857833,2857833,6,3,125,NULL,'EDP Administrator'),
 (281,NULL,NULL,'2021-04-16 10:02:32','2021-04-16 10:02:32',NULL,'rpt_mtc.added.event',5730818,5730818,6,3,125,NULL,'EDP Administrator'),
 (282,NULL,NULL,'2021-04-16 10:03:54','2021-04-16 10:03:54',NULL,'penyusutan.added.event',285334,285334,6,3,126,NULL,'EDP Administrator'),
 (283,NULL,NULL,'2021-04-16 10:03:54','2021-04-16 10:03:54',NULL,'rpt_mtc.added.event',1505051,1505051,6,3,126,NULL,'EDP Administrator');
INSERT INTO `rpt_mtc_total` (`id`,`id_rpt_mtc_total`,`changed_by`,`created_at`,`updated_at`,`total_tr_mtc`,`table_coloumn`,`history_latest`,`before`,`categori_id`,`company_parent_id`,`code_mesin`,`lstrik_output`,`created_by`) VALUES 
 (284,NULL,NULL,'2021-04-16 10:04:48','2021-04-16 10:04:48',NULL,'penyusutan.added.event',357786,357786,6,3,127,NULL,'EDP Administrator'),
 (285,NULL,NULL,'2021-04-16 10:04:48','2021-04-16 10:04:48',NULL,'rpt_mtc.added.event',372401,372401,6,3,127,NULL,'EDP Administrator'),
 (286,NULL,NULL,'2021-04-16 10:06:09','2021-04-16 10:06:09',NULL,'penyusutan.added.event',3270769875,3270769875,6,3,128,NULL,'EDP Administrator'),
 (287,NULL,NULL,'2021-04-16 10:06:09','2021-04-16 10:06:09',NULL,'rpt_mtc.added.event',20031621,20031621,6,3,128,NULL,'EDP Administrator'),
 (288,NULL,NULL,'2021-04-20 09:54:18','2021-04-20 09:54:18',NULL,'penyusutan.added.event',328532517,328532517,2,3,129,NULL,'EDP Administrator'),
 (289,NULL,NULL,'2021-04-20 09:54:19','2021-04-20 09:54:19',NULL,'rpt_mtc.added.event',523889974,523889974,2,3,129,NULL,'EDP Administrator'),
 (290,NULL,NULL,'2021-04-20 10:34:26','2021-04-20 10:34:26',NULL,'penyusutan.added.event',7791034,7791034,1,3,130,NULL,'EDP Administrator');
INSERT INTO `rpt_mtc_total` (`id`,`id_rpt_mtc_total`,`changed_by`,`created_at`,`updated_at`,`total_tr_mtc`,`table_coloumn`,`history_latest`,`before`,`categori_id`,`company_parent_id`,`code_mesin`,`lstrik_output`,`created_by`) VALUES 
 (291,NULL,NULL,'2021-04-20 10:34:26','2021-04-20 10:34:26',NULL,'rpt_mtc.added.event',4066,4066,1,3,130,NULL,'EDP Administrator'),
 (292,NULL,'EDP Administrator',NULL,'2021-04-21 08:13:32',NULL,'rpt_mtc.code_mesin',113,114,2,3,113,NULL,NULL),
 (293,NULL,'EDP Administrator',NULL,'2021-04-21 08:13:32',NULL,'rpt_mtc.rata_rata_perbaikan_perbulan',288647,288647,2,3,113,NULL,NULL),
 (294,NULL,'EDP Administrator',NULL,'2021-04-21 08:13:32',NULL,'rpt_mtc.rata_rata_sparepart_perbulan',670595,670595,2,3,113,NULL,NULL),
 (295,NULL,'EDP Administrator',NULL,'2021-04-21 08:13:32',NULL,'rpt_mtc.biaya_produksi_lain',11342,2500,2,3,113,NULL,NULL),
 (296,NULL,'EDP Administrator',NULL,'2021-04-21 08:15:58',NULL,'rpt_mtc.code_mesin',114,113,2,3,114,NULL,NULL),
 (297,NULL,'EDP Administrator',NULL,'2021-04-21 08:15:58',NULL,'rpt_mtc.rata_rata_perbaikan_perbulan',288647,288647,2,3,114,NULL,NULL),
 (298,NULL,'EDP Administrator',NULL,'2021-04-21 08:15:58',NULL,'rpt_mtc.rata_rata_sparepart_perbulan',670595,670595,2,3,114,NULL,NULL);
INSERT INTO `rpt_mtc_total` (`id`,`id_rpt_mtc_total`,`changed_by`,`created_at`,`updated_at`,`total_tr_mtc`,`table_coloumn`,`history_latest`,`before`,`categori_id`,`company_parent_id`,`code_mesin`,`lstrik_output`,`created_by`) VALUES 
 (299,NULL,'EDP Administrator',NULL,'2021-04-21 08:15:58',NULL,'rpt_mtc.biaya_produksi_lain',11342,11342,2,3,114,NULL,NULL),
 (300,NULL,'EDP Administrator',NULL,'2021-04-27 01:52:17',NULL,'rpt_mtc.thn_perbaikan_periode_3',2032,2027,1,3,130,NULL,NULL),
 (301,NULL,'EDP Administrator',NULL,'2021-04-27 01:52:17',NULL,'rpt_mtc.biaya_produksi_lain',11342,3423499,1,3,130,NULL,NULL),
 (302,NULL,'EDP Administrator',NULL,'2021-04-27 01:52:17',NULL,'rpt_mtc.total_biaya_perbulan',37457,37457,1,3,130,NULL,NULL),
 (303,NULL,'EDP Administrator',NULL,'2021-04-27 01:52:41',NULL,'rpt_mtc.biaya_produksi_lain',11342,11342,1,3,130,NULL,NULL),
 (304,NULL,'EDP Administrator',NULL,'2021-04-27 01:52:41',NULL,'rpt_mtc.total_biaya_perbulan',37457,37457,1,3,130,NULL,NULL),
 (305,NULL,'EDP Administrator',NULL,'2021-04-27 01:54:10',NULL,'rpt_mtc.thn_perbaikan_periode_1',2027,2024,1,3,130,NULL,NULL),
 (306,NULL,'EDP Administrator',NULL,'2021-04-27 01:54:10',NULL,'rpt_mtc.biaya_produksi_lain',11342,11342,1,3,130,NULL,NULL);
INSERT INTO `rpt_mtc_total` (`id`,`id_rpt_mtc_total`,`changed_by`,`created_at`,`updated_at`,`total_tr_mtc`,`table_coloumn`,`history_latest`,`before`,`categori_id`,`company_parent_id`,`code_mesin`,`lstrik_output`,`created_by`) VALUES 
 (307,NULL,'EDP Administrator',NULL,'2021-04-27 01:54:10',NULL,'rpt_mtc.total_biaya_perbulan',37457,37457,1,3,130,NULL,NULL),
 (308,NULL,'EDP Administrator',NULL,'2021-04-27 01:57:36',NULL,'rpt_mtc.perbaikan_tahun1',934820,2342342,1,3,130,NULL,NULL),
 (309,NULL,'EDP Administrator',NULL,'2021-04-27 01:57:36',NULL,'rpt_mtc.rata_rata_perbaikan_perbulan',15362,25136,1,3,130,NULL,NULL),
 (310,NULL,'EDP Administrator',NULL,'2021-04-27 01:57:36',NULL,'rpt_mtc.thn_perbaikan_periode_1',2025,2027,1,3,130,NULL,NULL),
 (311,NULL,'EDP Administrator',NULL,'2021-04-27 01:57:36',NULL,'rpt_mtc.biaya_produksi_lain',11342,11342,1,3,130,NULL,NULL),
 (312,NULL,'EDP Administrator',NULL,'2021-04-27 01:57:36',NULL,'rpt_mtc.total_biaya_perbulan',27683,37457,1,3,130,NULL,NULL),
 (313,NULL,'EDP Administrator',NULL,'2021-04-27 01:58:22',NULL,'rpt_mtc.rata_rata_perbaikan_perbulan',15362,15362,1,3,130,NULL,NULL),
 (314,NULL,'EDP Administrator',NULL,'2021-04-27 01:58:22',NULL,'rpt_mtc.thn_perbaikan_periode_1',2029,2025,1,3,130,NULL,NULL);
INSERT INTO `rpt_mtc_total` (`id`,`id_rpt_mtc_total`,`changed_by`,`created_at`,`updated_at`,`total_tr_mtc`,`table_coloumn`,`history_latest`,`before`,`categori_id`,`company_parent_id`,`code_mesin`,`lstrik_output`,`created_by`) VALUES 
 (315,NULL,'EDP Administrator',NULL,'2021-04-27 01:58:22',NULL,'rpt_mtc.biaya_produksi_lain',11342,11342,1,3,130,NULL,NULL),
 (316,NULL,'EDP Administrator',NULL,'2021-04-27 01:58:22',NULL,'rpt_mtc.total_biaya_perbulan',27683,27683,1,3,130,NULL,NULL),
 (317,NULL,'EDP Administrator',NULL,'2021-04-27 01:58:54',NULL,'rpt_mtc.rata_rata_perbaikan_perbulan',15362,15362,1,3,130,NULL,NULL),
 (318,NULL,'EDP Administrator',NULL,'2021-04-27 01:58:54',NULL,'rpt_mtc.biaya_produksi_lain',11342,11342,1,3,130,NULL,NULL),
 (319,NULL,'EDP Administrator',NULL,'2021-04-27 01:58:54',NULL,'rpt_mtc.total_biaya_perbulan',27683,27683,1,3,130,NULL,NULL),
 (320,NULL,'EDP Administrator',NULL,'2021-04-27 01:59:34',NULL,'rpt_mtc.rata_rata_perbaikan_perbulan',15362,15362,1,3,130,NULL,NULL),
 (321,NULL,'EDP Administrator',NULL,'2021-04-27 01:59:34',NULL,'rpt_mtc.thn_perbaikan_periode_2',2022,2021,1,3,130,NULL,NULL);
INSERT INTO `rpt_mtc_total` (`id`,`id_rpt_mtc_total`,`changed_by`,`created_at`,`updated_at`,`total_tr_mtc`,`table_coloumn`,`history_latest`,`before`,`categori_id`,`company_parent_id`,`code_mesin`,`lstrik_output`,`created_by`) VALUES 
 (322,NULL,'EDP Administrator',NULL,'2021-04-27 01:59:34',NULL,'rpt_mtc.biaya_produksi_lain',11342,11342,1,3,130,NULL,NULL),
 (323,NULL,'EDP Administrator',NULL,'2021-04-27 01:59:34',NULL,'rpt_mtc.total_biaya_perbulan',27683,27683,1,3,130,NULL,NULL),
 (324,NULL,'EDP Administrator',NULL,'2021-04-27 02:03:31',NULL,'rpt_mtc.rata_rata_perbaikan_perbulan',15362,15362,1,3,130,NULL,NULL),
 (325,NULL,'EDP Administrator',NULL,'2021-04-27 02:03:31',NULL,'rpt_mtc.thn_sparepart_periode_1',2035,2021,1,3,130,NULL,NULL),
 (326,NULL,'EDP Administrator',NULL,'2021-04-27 02:03:31',NULL,'rpt_mtc.thn_sparepart_periode_2',2028,2024,1,3,130,NULL,NULL),
 (327,NULL,'EDP Administrator',NULL,'2021-04-27 02:03:31',NULL,'rpt_mtc.thn_sparepart_periode_3',2022,2025,1,3,130,NULL,NULL),
 (328,NULL,'EDP Administrator',NULL,'2021-04-27 02:03:31',NULL,'rpt_mtc.thn_perbaikan_periode_1',2033,2029,1,3,130,NULL,NULL);
INSERT INTO `rpt_mtc_total` (`id`,`id_rpt_mtc_total`,`changed_by`,`created_at`,`updated_at`,`total_tr_mtc`,`table_coloumn`,`history_latest`,`before`,`categori_id`,`company_parent_id`,`code_mesin`,`lstrik_output`,`created_by`) VALUES 
 (329,NULL,'EDP Administrator',NULL,'2021-04-27 02:03:31',NULL,'rpt_mtc.thn_perbaikan_periode_2',2016,2022,1,3,130,NULL,NULL),
 (330,NULL,'EDP Administrator',NULL,'2021-04-27 02:03:31',NULL,'rpt_mtc.thn_perbaikan_periode_3',2031,2032,1,3,130,NULL,NULL),
 (331,NULL,'EDP Administrator',NULL,'2021-04-27 02:03:31',NULL,'rpt_mtc.biaya_produksi_lain',11342,11342,1,3,130,NULL,NULL),
 (332,NULL,'EDP Administrator',NULL,'2021-04-27 02:03:31',NULL,'rpt_mtc.total_biaya_perbulan',27683,27683,1,3,130,NULL,NULL),
 (333,NULL,'EDP Administrator',NULL,'2021-04-27 02:04:19',NULL,'rpt_mtc.rata_rata_perbaikan_perbulan',15362,15362,1,3,130,NULL,NULL),
 (334,NULL,'EDP Administrator',NULL,'2021-04-27 02:04:19',NULL,'rpt_mtc.sparepart_tahun3',897986,429912,1,3,130,NULL,NULL),
 (335,NULL,'EDP Administrator',NULL,'2021-04-27 02:04:19',NULL,'rpt_mtc.biaya_produksi_lain',11342,11342,1,3,130,NULL,NULL),
 (336,NULL,'EDP Administrator',NULL,'2021-04-27 02:04:19',NULL,'rpt_mtc.total_biaya_perbulan',30934,27683,1,3,130,NULL,NULL);
INSERT INTO `rpt_mtc_total` (`id`,`id_rpt_mtc_total`,`changed_by`,`created_at`,`updated_at`,`total_tr_mtc`,`table_coloumn`,`history_latest`,`before`,`categori_id`,`company_parent_id`,`code_mesin`,`lstrik_output`,`created_by`) VALUES 
 (337,NULL,NULL,'2021-04-27 11:27:34','2021-04-27 11:27:34',NULL,'penyusutan.added.event',2737441591,2737441591,3,3,131,NULL,'EDP Administrator'),
 (338,NULL,NULL,'2021-04-27 11:27:34','2021-04-27 11:27:34',NULL,'rpt_mtc.added.event',416375,416375,3,3,131,NULL,'EDP Administrator'),
 (339,NULL,NULL,'2021-04-27 14:35:44','2021-04-27 14:35:44',NULL,'penyusutan.added.event',3270017,3270017,2,3,132,NULL,'EDP Administrator'),
 (340,NULL,NULL,'2021-04-27 14:35:44','2021-04-27 14:35:44',NULL,'rpt_mtc.added.event',3359046,3359046,2,3,132,NULL,'EDP Administrator'),
 (341,NULL,NULL,'2021-04-27 15:24:35','2021-04-27 15:24:35',NULL,'penyusutan.added.event',161040936,161040936,2,3,133,NULL,'EDP Administrator'),
 (342,NULL,NULL,'2021-04-27 15:24:35','2021-04-27 15:24:35',NULL,'rpt_mtc.added.event',27274689,27274689,2,3,133,NULL,'EDP Administrator'),
 (343,NULL,NULL,'2021-04-28 10:07:55','2021-04-28 10:07:55',NULL,'penyusutan.added.event',27432760,27432760,2,3,134,NULL,'EDP Administrator');
INSERT INTO `rpt_mtc_total` (`id`,`id_rpt_mtc_total`,`changed_by`,`created_at`,`updated_at`,`total_tr_mtc`,`table_coloumn`,`history_latest`,`before`,`categori_id`,`company_parent_id`,`code_mesin`,`lstrik_output`,`created_by`) VALUES 
 (344,NULL,NULL,'2021-04-28 10:07:56','2021-04-28 10:07:56',NULL,'rpt_mtc.added.event',74558517,74558517,2,3,134,NULL,'EDP Administrator'),
 (345,NULL,'EDP Administrator',NULL,'2021-04-28 10:48:32',NULL,'rpt_mtc.perbaikan_tahun1',42355,51231231,2,3,134,NULL,NULL),
 (346,NULL,'EDP Administrator',NULL,'2021-04-28 10:48:32',NULL,'rpt_mtc.rata_rata_perbaikan_perbulan',73631,429110,2,3,134,NULL,NULL),
 (347,NULL,'EDP Administrator',NULL,'2021-04-28 10:48:32',NULL,'rpt_mtc.thn_perbaikan_periode_1',2021,2026,2,3,134,NULL,NULL),
 (348,NULL,'EDP Administrator',NULL,'2021-04-28 10:48:32',NULL,'rpt_mtc.biaya_produksi_lain',0,3923,2,3,134,NULL,NULL),
 (349,NULL,'EDP Administrator',NULL,'2021-04-28 10:48:32',NULL,'rpt_mtc.total_biaya_perbulan',40076563,40432042,2,3,134,NULL,NULL),
 (350,NULL,NULL,'2021-04-28 15:14:50','2021-04-28 15:14:50',NULL,'penyusutan.added.event',327444,327444,4,3,135,NULL,'EDP Administrator');
INSERT INTO `rpt_mtc_total` (`id`,`id_rpt_mtc_total`,`changed_by`,`created_at`,`updated_at`,`total_tr_mtc`,`table_coloumn`,`history_latest`,`before`,`categori_id`,`company_parent_id`,`code_mesin`,`lstrik_output`,`created_by`) VALUES 
 (351,NULL,NULL,'2021-04-28 15:14:51','2021-04-28 15:14:51',NULL,'rpt_mtc.added.event',81284,81284,4,3,135,NULL,'EDP Administrator'),
 (352,NULL,NULL,'2021-04-30 15:40:32','2021-04-30 15:40:32',NULL,'penyusutan.added.event',78207736,78207736,5,3,136,NULL,'EDP Administrator'),
 (353,NULL,NULL,'2021-04-30 15:40:32','2021-04-30 15:40:32',NULL,'rpt_mtc.added.event',4355634,4355634,5,3,136,NULL,'EDP Administrator'),
 (354,NULL,NULL,'2021-04-30 15:48:20','2021-04-30 15:48:20',NULL,'penyusutan.added.event',2494350,2494350,1,3,137,NULL,'EDP Administrator'),
 (355,NULL,NULL,'2021-04-30 15:48:21','2021-04-30 15:48:21',NULL,'rpt_mtc.added.event',10314442,10314442,1,3,137,NULL,'EDP Administrator'),
 (356,NULL,NULL,'2021-04-30 16:27:04','2021-04-30 16:27:04',NULL,'penyusutan.added.event',4024870000,4024870000,1,3,138,NULL,'EDP Administrator'),
 (357,NULL,NULL,'2021-04-30 16:27:04','2021-04-30 16:27:04',NULL,'rpt_mtc.added.event',8597393,8597393,1,3,138,NULL,'EDP Administrator');
INSERT INTO `rpt_mtc_total` (`id`,`id_rpt_mtc_total`,`changed_by`,`created_at`,`updated_at`,`total_tr_mtc`,`table_coloumn`,`history_latest`,`before`,`categori_id`,`company_parent_id`,`code_mesin`,`lstrik_output`,`created_by`) VALUES 
 (358,NULL,NULL,'2021-04-30 16:38:34','2021-04-30 16:38:34',NULL,'penyusutan.added.event',353325,353325,2,3,139,NULL,'EDP Administrator'),
 (359,NULL,NULL,'2021-04-30 16:38:34','2021-04-30 16:38:34',NULL,'rpt_mtc.added.event',294905027,294905027,2,3,139,NULL,'EDP Administrator'),
 (360,NULL,NULL,'2021-04-30 16:47:06','2021-04-30 16:47:06',NULL,'penyusutan.added.event',0,0,2,3,140,NULL,'EDP Administrator'),
 (361,NULL,NULL,'2021-04-30 16:47:06','2021-04-30 16:47:06',NULL,'rpt_mtc.added.event',3861800,3861800,2,3,140,NULL,'EDP Administrator'),
 (362,NULL,NULL,'2021-04-30 16:49:41','2021-04-30 16:49:41',NULL,'penyusutan.added.event',245769952,245769952,2,3,141,NULL,'EDP Administrator'),
 (363,NULL,NULL,'2021-04-30 16:49:41','2021-04-30 16:49:41',NULL,'rpt_mtc.added.event',294285370,294285370,2,3,141,NULL,'EDP Administrator');
/*!40000 ALTER TABLE `rpt_mtc_total` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `details` text COLLATE utf8_unicode_ci,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`settings`
--

/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` (`id`,`key`,`display_name`,`value`,`details`,`type`,`order`,`group`) VALUES 
 (1,'site.title','Site Title','PT. KRISANTHIUM OFFSET PRITING','','text',2,'Site'),
 (2,'site.description','Site Description','Management Operasional KOP','','text',1,'Site'),
 (3,'site.logo','Site Logo','','','image',4,'Site'),
 (4,'site.google_analytics_tracking_id','Google Analytics Tracking ID',NULL,'','text',3,'Site'),
 (5,'admin.bg_image','Admin Background Image','settings/March2021/QXBDGv1puF04ChAq77oa.png','','image',5,'Admin'),
 (6,'admin.title','Admin Title','KOP','','text',1,'Admin'),
 (7,'admin.description','Admin Description','PT. KRISANTHIUM OFFSET PRINTING Office','','text',2,'Admin'),
 (8,'admin.loader','Admin Loader','','','image',3,'Admin'),
 (9,'admin.icon_image','Admin Icon Image','settings/March2021/oadTfSUfEuYYLze7bBGc.png','','image',4,'Admin'),
 (10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)',NULL,'','text',1,'Admin'),
 (11,'site.user_view','User','Login view user',NULL,'text',6,'Site');
INSERT INTO `settings` (`id`,`key`,`display_name`,`value`,`details`,`type`,`order`,`group`) VALUES 
 (12,'admin.voyager.voyager_assets','','/vendor/tcg/voyager/assets',NULL,'text',1,'Admin'),
 (13,'admin.master_admin','master','',NULL,'select_dropdown',7,'Admin');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`special_labor`
--

DROP TABLE IF EXISTS `special_labor`;
CREATE TABLE `special_labor` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama_group_labor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `group_machine` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`special_labor`
--

/*!40000 ALTER TABLE `special_labor` DISABLE KEYS */;
INSERT INTO `special_labor` (`id`,`nama_group_labor`,`group_machine`,`created_at`,`updated_at`) VALUES 
 (16,'Group test','[\"1\",\"2\",\"3\",\"5\",\"6\"]','2021-04-28 10:20:42','2021-04-28 16:23:31');
/*!40000 ALTER TABLE `special_labor` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`total_kalkulasi`
--

DROP TABLE IF EXISTS `total_kalkulasi`;
CREATE TABLE `total_kalkulasi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_mesin` int(11) DEFAULT NULL,
  `company_parent_id` int(11) DEFAULT NULL,
  `category_bagian` int(10) unsigned DEFAULT NULL,
  `code_mesin` int(10) unsigned DEFAULT NULL,
  `listrik` double DEFAULT NULL,
  `penyusutan` double DEFAULT NULL,
  `labor` double DEFAULT NULL,
  `Maintenance` double DEFAULT NULL,
  `gaji_lainnya` double DEFAULT NULL,
  `b_penjualan` double DEFAULT NULL,
  `bau` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `total_perjam` double DEFAULT NULL,
  `listrik_persen` double DEFAULT NULL,
  `penyusutan_persen` double DEFAULT NULL,
  `labor_persen` double DEFAULT NULL,
  `maintenance_persen` double DEFAULT NULL,
  `gaji_lainnya_persen` double DEFAULT NULL,
  `b_penjualan_persen` double DEFAULT NULL,
  `bau_persen` double DEFAULT NULL,
  `total_persen` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code_kalkulasi` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_mesin` (`code_mesin`),
  KEY `category_bagian` (`category_bagian`),
  CONSTRAINT `kategori_bagian_fk_category_bagian` FOREIGN KEY (`category_bagian`) REFERENCES `kategori_bagian` (`id`) ON DELETE SET NULL,
  CONSTRAINT `mesin_fk_code_mesins` FOREIGN KEY (`code_mesin`) REFERENCES `mesin` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`total_kalkulasi`
--

/*!40000 ALTER TABLE `total_kalkulasi` DISABLE KEYS */;
INSERT INTO `total_kalkulasi` (`id`,`group_mesin`,`company_parent_id`,`category_bagian`,`code_mesin`,`listrik`,`penyusutan`,`labor`,`Maintenance`,`gaji_lainnya`,`b_penjualan`,`bau`,`total`,`total_perjam`,`listrik_persen`,`penyusutan_persen`,`labor_persen`,`maintenance_persen`,`gaji_lainnya_persen`,`b_penjualan_persen`,`bau_persen`,`total_persen`,`created_at`,`updated_at`,`code_kalkulasi`) VALUES 
 (8,NULL,3,1,NULL,35918347.30402,1302083.3333333,0,16050,83808170.105391,30438877.600833,225371964.36455,376855492.70812,0,0.095310664164417,490697256130360,0,6048530657965.4,3.1583569238033e16,1.1471058215744e16,8.4932662673199e16,1.2848403591376e17,'2021-02-03 03:07:37','2021-02-03 03:07:37','CALC-EDPNoTR0221001'),
 (9,NULL,1,1,NULL,35918347.30402,1302083.3333333,0,16050,0,30438877.600833,225371964.36455,293047322.60273,0,0.12256841995691,381572034638970,0,4703409527773.9,0,8.9200315839566e15,6.6044650746749e16,7.5350957774872e16,'2021-02-04 02:24:08','2021-02-04 02:24:08','CALC-EDPoXTR0221009'),
 (10,NULL,1,1,NULL,35918347.30402,1302083.3333333,57588567.09,16050,0,30438877.600833,225371964.36455,350635889.69273,1043559.1955141,0.1024377377213,456557148037400,2.0192618457732e16,5627706029568.4,0,1.0672962928816e16,7.9023499236762e16,1.1035126547738e17,'2021-02-04 02:24:22','2021-02-04 02:24:22','CALC-EDPUOTR02210010');
INSERT INTO `total_kalkulasi` (`id`,`group_mesin`,`company_parent_id`,`category_bagian`,`code_mesin`,`listrik`,`penyusutan`,`labor`,`Maintenance`,`gaji_lainnya`,`b_penjualan`,`bau`,`total`,`total_perjam`,`listrik_persen`,`penyusutan_persen`,`labor_persen`,`maintenance_persen`,`gaji_lainnya_persen`,`b_penjualan_persen`,`bau_persen`,`total_persen`,`created_at`,`updated_at`,`code_kalkulasi`) VALUES 
 (11,NULL,1,1,NULL,35918347.30402,1302083.3333333,57588567.09,16050,0,30438877.600833,225371964.36455,350635889.69273,2087118.3910282,0.1024377377213,456557148037400,2.0192618457732e16,5627706029568.4,0,1.0672962928816e16,7.9023499236762e16,1.1035126547738e17,'2021-02-04 02:25:05','2021-02-04 02:25:05','CALC-EDPrmTR02210011'),
 (12,NULL,1,1,NULL,35918347.30402,1302083.3333333,57588567.09,16050,0,30438877.600833,225371964.36455,350635889.69273,2087118.3910282,0.1024377377213,456557148037400,2.0192618457732e16,5627706029568.4,0,1.0672962928816e16,7.9023499236762e16,1.1035126547738e17,'2021-02-04 02:27:12','2021-02-04 02:27:12','CALC-EDPZmTR02210012'),
 (13,NULL,1,1,NULL,35918347.30402,1302083.3333333,57588567.09,16050,106693217.92918,30438877.600833,225371964.36455,457329107.62192,907399.02305936,0.078539385981341,595480608882690,2.6336927996495e16,7340132177331.8,4.8793914144865e16,1.3920584730202e16,1.0306915934584e17,1.9272340695846e17,'2021-02-04 02:29:00','2021-02-04 02:29:00','CALC-EDPHnTR02210013');
INSERT INTO `total_kalkulasi` (`id`,`group_mesin`,`company_parent_id`,`category_bagian`,`code_mesin`,`listrik`,`penyusutan`,`labor`,`Maintenance`,`gaji_lainnya`,`b_penjualan`,`bau`,`total`,`total_perjam`,`listrik_persen`,`penyusutan_persen`,`labor_persen`,`maintenance_persen`,`gaji_lainnya_persen`,`b_penjualan_persen`,`bau_persen`,`total_persen`,`created_at`,`updated_at`,`code_kalkulasi`) VALUES 
 (14,NULL,1,1,NULL,35918347.30402,1302083.3333333,0,16050,106693217.92918,30438877.600833,225371964.36455,399740540.53192,0,0.089854152036281,520495495484250,0,6415835675537.3,4.2649604606102e16,1.2167653385342e16,9.0090310855824e16,1.4543448017843e17,'2021-02-04 04:46:11','2021-02-04 04:46:11','CALC-EDPoPTR02210014');
/*!40000 ALTER TABLE `total_kalkulasi` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`total_kalkulasi_tanpa_penyusutan`
--

DROP TABLE IF EXISTS `total_kalkulasi_tanpa_penyusutan`;
CREATE TABLE `total_kalkulasi_tanpa_penyusutan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code_calc_tnp_penyusutan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_parent_id` int(10) unsigned DEFAULT NULL,
  `code_mesin` int(10) unsigned DEFAULT NULL,
  `group_mesin` int(10) unsigned DEFAULT NULL,
  `category_bagian` int(10) unsigned DEFAULT NULL,
  `listrik` double DEFAULT NULL,
  `penyusutan` double DEFAULT NULL,
  `labor` double DEFAULT NULL,
  `mtc` double DEFAULT NULL,
  `gaji_lainnya` double DEFAULT NULL,
  `bagian_penjualan` double DEFAULT NULL,
  `bau` double DEFAULT NULL,
  `semua_total_biaya` double DEFAULT NULL,
  `semua_total_biaya_perjam` double DEFAULT NULL,
  `tanpa_penyusutan_plus_mtc_total` double DEFAULT NULL,
  `tanpa_penyusutan_plus_mtc_perjam` double DEFAULT NULL,
  `tanpa_penyusutan_total` double DEFAULT NULL,
  `tanpa_penyusutan_total_perjam` double DEFAULT NULL,
  `tanpa_mtc_total` double DEFAULT NULL,
  `tanpa_mtc_total_perjam` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `b_prod_lain` double DEFAULT NULL,
  `code_account` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `company_parent_id` (`company_parent_id`),
  KEY `code_mesin` (`code_mesin`),
  KEY `category_bagian` (`category_bagian`),
  KEY `code_mesin_2` (`code_mesin`),
  KEY `total_kalkulasi_tanpa_penyusutan_group_mesin_index` (`group_mesin`),
  CONSTRAINT `company_fk_kalkulasi` FOREIGN KEY (`company_parent_id`) REFERENCES `company` (`id`) ON DELETE SET NULL,
  CONSTRAINT `group_mesin_fk_kalkulasi` FOREIGN KEY (`group_mesin`) REFERENCES `lb8_kategori_mesin` (`id`) ON DELETE SET NULL,
  CONSTRAINT `kategori_bagian_fk_kalkulasi` FOREIGN KEY (`category_bagian`) REFERENCES `kategori_bagian` (`id`) ON DELETE SET NULL,
  CONSTRAINT `mesin_fk_bk_kalkulasi` FOREIGN KEY (`code_mesin`) REFERENCES `mesin` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`total_kalkulasi_tanpa_penyusutan`
--

/*!40000 ALTER TABLE `total_kalkulasi_tanpa_penyusutan` DISABLE KEYS */;
/*!40000 ALTER TABLE `total_kalkulasi_tanpa_penyusutan` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`transaksi_mtc_total`
--

DROP TABLE IF EXISTS `transaksi_mtc_total`;
CREATE TABLE `transaksi_mtc_total` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `total_tr_mtc_total` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_tr_mtc` int(10) unsigned DEFAULT NULL,
  `changed_by` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`transaksi_mtc_total`
--

/*!40000 ALTER TABLE `transaksi_mtc_total` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaksi_mtc_total` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`translations`
--

DROP TABLE IF EXISTS `translations`;
CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`translations`
--

/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
INSERT INTO `translations` (`id`,`table_name`,`column_name`,`foreign_key`,`locale`,`value`,`created_at`,`updated_at`) VALUES 
 (1,'data_types','display_name_singular',5,'pt','Post','2021-01-19 08:02:16','2021-01-19 08:02:16'),
 (2,'data_types','display_name_singular',6,'pt','Página','2021-01-19 08:02:16','2021-01-19 08:02:16'),
 (3,'data_types','display_name_singular',1,'pt','Utilizador','2021-01-19 08:02:16','2021-01-19 08:02:16'),
 (4,'data_types','display_name_singular',4,'pt','Categoria','2021-01-19 08:02:16','2021-01-19 08:02:16'),
 (5,'data_types','display_name_singular',2,'pt','Menu','2021-01-19 08:02:16','2021-01-19 08:02:16'),
 (6,'data_types','display_name_singular',3,'pt','Função','2021-01-19 08:02:16','2021-01-19 08:02:16'),
 (7,'data_types','display_name_plural',5,'pt','Posts','2021-01-19 08:02:16','2021-01-19 08:02:16'),
 (8,'data_types','display_name_plural',6,'pt','Páginas','2021-01-19 08:02:16','2021-01-19 08:02:16'),
 (9,'data_types','display_name_plural',1,'pt','Utilizadores','2021-01-19 08:02:16','2021-01-19 08:02:16'),
 (10,'data_types','display_name_plural',4,'pt','Categorias','2021-01-19 08:02:16','2021-01-19 08:02:16');
INSERT INTO `translations` (`id`,`table_name`,`column_name`,`foreign_key`,`locale`,`value`,`created_at`,`updated_at`) VALUES 
 (11,'data_types','display_name_plural',2,'pt','Menus','2021-01-19 08:02:16','2021-01-19 08:02:16'),
 (12,'data_types','display_name_plural',3,'pt','Funções','2021-01-19 08:02:16','2021-01-19 08:02:16'),
 (13,'categories','slug',1,'pt','categoria-1','2021-01-19 08:02:16','2021-01-19 08:02:16'),
 (14,'categories','name',1,'pt','Categoria 1','2021-01-19 08:02:16','2021-01-19 08:02:16'),
 (15,'categories','slug',2,'pt','categoria-2','2021-01-19 08:02:16','2021-01-19 08:02:16'),
 (16,'categories','name',2,'pt','Categoria 2','2021-01-19 08:02:16','2021-01-19 08:02:16'),
 (17,'pages','title',1,'pt','Olá Mundo','2021-01-19 08:02:16','2021-01-19 08:02:16'),
 (18,'pages','slug',1,'pt','ola-mundo','2021-01-19 08:02:16','2021-01-19 08:02:16'),
 (19,'pages','body',1,'pt','<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','2021-01-19 08:02:16','2021-01-19 08:02:16'),
 (20,'menu_items','title',1,'pt','Painel de Controle','2021-01-19 08:02:16','2021-01-19 08:02:16');
INSERT INTO `translations` (`id`,`table_name`,`column_name`,`foreign_key`,`locale`,`value`,`created_at`,`updated_at`) VALUES 
 (21,'menu_items','title',2,'pt','Media','2021-01-19 08:02:16','2021-01-19 08:02:16'),
 (22,'menu_items','title',13,'pt','Publicações','2021-01-19 08:02:16','2021-01-19 08:02:16'),
 (23,'menu_items','title',3,'pt','Utilizadores','2021-01-19 08:02:16','2021-01-19 08:02:16'),
 (24,'menu_items','title',12,'pt','Categorias','2021-01-19 08:02:16','2021-01-19 08:02:16'),
 (25,'menu_items','title',14,'pt','Páginas','2021-01-19 08:02:16','2021-01-19 08:02:16'),
 (26,'menu_items','title',4,'pt','Funções','2021-01-19 08:02:16','2021-01-19 08:02:16'),
 (27,'menu_items','title',5,'pt','Ferramentas','2021-01-19 08:02:16','2021-01-19 08:02:16'),
 (28,'menu_items','title',6,'pt','Menus','2021-01-19 08:02:16','2021-01-19 08:02:16'),
 (29,'menu_items','title',7,'pt','Base de dados','2021-01-19 08:02:16','2021-01-19 08:02:16'),
 (30,'menu_items','title',10,'pt','Configurações','2021-01-19 08:02:16','2021-01-19 08:02:16'),
 (31,'data_rows','display_name',367,'id','Id','2021-02-24 11:56:50','2021-02-24 11:56:50');
INSERT INTO `translations` (`id`,`table_name`,`column_name`,`foreign_key`,`locale`,`value`,`created_at`,`updated_at`) VALUES 
 (32,'data_rows','display_name',368,'id','Nama Kategori Mesin','2021-02-24 11:56:50','2021-02-24 11:56:50'),
 (33,'data_rows','display_name',369,'id','Created At','2021-02-24 11:56:50','2021-02-24 11:56:50'),
 (34,'data_rows','display_name',370,'id','Updated At','2021-02-24 11:56:50','2021-02-24 11:56:50'),
 (35,'data_rows','display_name',371,'id','Changed By','2021-02-24 11:56:50','2021-02-24 11:56:50'),
 (36,'data_types','display_name_singular',36,'id','Lb8 Kategori Mesin','2021-02-24 11:56:50','2021-02-24 11:56:50'),
 (37,'data_types','display_name_plural',36,'id','Lb8 Kategori Mesins','2021-02-24 11:56:50','2021-02-24 11:56:50'),
 (38,'data_rows','display_name',372,'id','company','2021-02-24 13:47:02','2021-02-24 13:47:02'),
 (39,'data_rows','display_name',373,'id','Company Parent Id','2021-02-24 13:47:29','2021-02-24 13:47:29');
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE `user_roles` (
  `user_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`user_roles`
--

/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` (`user_id`,`role_id`) VALUES 
 (1,5),
 (2,2);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;


--
-- Table structure for table `db_kalkulasi_mesin`.`users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `alias_roles` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`users`
--

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`,`role_id`,`name`,`email`,`avatar`,`email_verified_at`,`password`,`remember_token`,`settings`,`created_at`,`updated_at`,`alias_roles`) VALUES 
 (1,1,'EDP Administrator','edp@admin.com','users/April2021/ev0CSyX3stEnevGWrsg7.jpg',NULL,'$2y$10$YuqOnjlh98F5G3wv0Ng9E.pZD2hUn30jlSdQa8vcz5ImKNYnfPloO','YtRaIDaHjMbzo7Q99LwLldPjGN3S7OqHwKOkBBuO9HguAQUpgKDA69xomVah','{\"locale\":\"id\"}','2021-01-19 08:02:15','2021-05-19 14:00:40',NULL),
 (2,2,'daniel','d@dev.id','users/March2021/PSrky2nOL7fmuFv7CHKa.png',NULL,'$2y$10$ppc7Qn4O57OAPupLosTUJu.NoN6AqvUHqaKdesZdbg7PtkAbijBPC',NULL,'{\"locale\":\"id\"}','2021-02-09 09:49:01','2021-03-05 07:36:53',NULL),
 (3,5,'Accounting','guest@secret.co','users/March2021/VJmjjsAEG0xgj4Dz1Zd2.png',NULL,'$2y$10$Qu9ocFstCW33xsSeKkSZ5.hDGb7Z3f7PKdkz2mUNLU7IDslT6JLba','qVmLiEsawZngzM2FC30WTPc5cNgQXJJKRCXsqgzINeqipQXQHdSxBxi5hiAL','{\"locale\":\"id\"}','2021-03-05 06:07:48','2021-04-13 15:33:14',NULL),
 (4,5,'accounting test','accounting@1.com','users/default.png',NULL,'$2y$10$F1SRBBr3P5DIuBnuxgmq0OJGj21XzDUfJTrBVC9pfB3G/Qobl7mOy',NULL,'{\"locale\":\"id\"}','2021-04-28 14:32:01','2021-04-28 14:32:01',NULL),
 (5,1,'daniel','daniel@edp.com','users/default.png',NULL,'$2y$10$v/x6n1Vk149YLvPnvkL12uvfiPd55ktBNRmRCp/E1CtflPoocOseu',NULL,NULL,'2021-05-19 13:59:33','2021-05-19 13:59:33',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
