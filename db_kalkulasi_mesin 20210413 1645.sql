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
-- Create schema db_kalkulasi_mesin
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ db_kalkulasi_mesin;
USE db_kalkulasi_mesin;

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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
 (60,'ACMTC2vTR03210060','BERBEK-PLN',48797702,6231807.9722222,'2021-03-07 23:09:29','2021-03-12 13:01:26',83683569,91863816,NULL,NULL,3,NULL,NULL,NULL,NULL),
 (61,'ACMTCKlTR03210061','DAKJSDKJ',3123,34287.916666667,'2021-03-16 13:46:21','2021-03-29 13:57:58',1231234,8,NULL,NULL,3,NULL,NULL,NULL,NULL),
 (62,'ACMTChsTR03210062','DGHSAD',3246234,155303.27777778,'2021-03-31 09:13:40','2021-03-31 09:13:40',2342,2342342,NULL,NULL,3,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=381 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`all_recalculate`
--

/*!40000 ALTER TABLE `all_recalculate` DISABLE KEYS */;
INSERT INTO `all_recalculate` (`id`,`company`,`code_mesin`,`category_bagian`,`id_listrik`,`id_penyusutan`,`id_labor`,`id_mtc`,`id_bprodlain_insteadof_mtc`,`id_gajilain`,`id_bgoenjualan`,`id_bau`,`total_semua_biaya`,`total_semua_biaya_perjam`,`total_tanpa_penyusutan_n_mtc`,`total_tanpa_penyusutan_n_mtc_perjam`,`total_tanpa_penyusutan`,`total_tanpa_penyusutan_perjam`,`total_tanpa_mtc`,`total_tanpa_mtc_perjam`,`created_at`,`updated_at`,`group_mesin`,`listrik_fk`,`begin_at`,`ended_at`,`slugprefixclose`) VALUES 
 (378,3,99,2,398008011,7790192,78443945,4414819,0,1419578,0,11960,490088504,972398,477883494,948182,482298313,956941,477883494,963638,'2021-04-09 14:13:11','2021-04-13 16:37:10',2,266,'2021-04-13 16:36:59',NULL,NULL),
 (379,3,100,2,510373484,6994342,78443945,613258569,10622849,1419578,0,11960,1221124727,2422867,600871816,1192206,1214130385,2408989,600871816,1206084,'2021-04-09 15:33:26','2021-04-13 16:37:11',2,267,'2021-04-13 16:37:00',NULL,NULL),
 (380,3,110,2,4221177899,20760326,86949915,3250564,366215132498,1419578,0,11960,370548702739,735215680,370524691849,735168039,370527942413,735174489,370524691849,735209231,'2021-04-13 16:35:06','2021-04-13 16:37:11',3,268,'2021-04-13 16:37:00',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`b_penjualan_total`
--

/*!40000 ALTER TABLE `b_penjualan_total` DISABLE KEYS */;
INSERT INTO `b_penjualan_total` (`id`,`id_bgpenj`,`total_bgpenjualan`,`changed_by`,`created_at`,`updated_at`,`history_latest`,`before`,`table_column`,`company_id`,`created_by`) VALUES 
 (25,NULL,NULL,'Admin',NULL,'2021-03-29 15:50:39',4123151,231412,'laporan_bagian_penjualan.tahun1',3,NULL),
 (26,NULL,NULL,'Admin',NULL,'2021-03-29 15:50:39',112313,41231,'laporan_bagian_penjualan.tahun2',3,NULL),
 (27,NULL,NULL,'Admin',NULL,'2021-03-29 15:50:39',231412,31241221,'laporan_bagian_penjualan.tahun3',3,NULL),
 (28,NULL,NULL,'Admin',NULL,'2021-03-29 15:50:39',124080,875386,'laporan_bagian_penjualan.biaya_perbulan_bag_penjualan',3,NULL),
 (29,NULL,NULL,NULL,'2021-03-31 09:34:32','2021-03-31 09:34:32',575526,575526,'laporan_bagian_penjualan.added.event',3,'Admin');
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`bau_total`
--

/*!40000 ALTER TABLE `bau_total` DISABLE KEYS */;
INSERT INTO `bau_total` (`id`,`changed_by`,`id_bau`,`total_bau`,`created_at`,`updated_at`,`table_column`,`history_latest`,`before`,`company_id`,`created_by`) VALUES 
 (40,'Admin',NULL,NULL,NULL,'2021-03-29 16:03:18','laporan_biaya_administrasi_umum.tahun1',41231,51231231,3,NULL),
 (41,'Admin',NULL,NULL,NULL,'2021-03-29 16:03:18','laporan_biaya_administrasi_umum.tahun2',31231231,5123121,3,NULL),
 (42,'Admin',NULL,NULL,NULL,'2021-03-29 16:03:18','laporan_biaya_administrasi_umum.tahun3',42352,51231221,3,NULL),
 (43,'Admin',NULL,NULL,NULL,'2021-03-29 16:03:18','laporan_biaya_administrasi_umum.total_biaya_lp_adm',869856,2988489,3,NULL),
 (44,NULL,NULL,NULL,'2021-03-31 09:39:00','2021-03-31 09:39:00','laporan_biaya_administrasi_umum.added.event',29062,29062,3,'Admin'),
 (45,NULL,NULL,NULL,'2021-04-13 10:33:24','2021-04-13 10:33:24','laporan_biaya_administrasi_umum.added.event',2573101,2573101,3,'Admin'),
 (46,NULL,NULL,NULL,'2021-04-13 13:19:01','2021-04-13 13:19:01','laporan_biaya_administrasi_umum.added.event',232283,232283,1,'Admin'),
 (47,'EDP Administrator',NULL,NULL,NULL,'2021-04-13 15:22:42','laporan_biaya_administrasi_umum.company_parent_id',3,1,3,NULL);
INSERT INTO `bau_total` (`id`,`changed_by`,`id_bau`,`total_bau`,`created_at`,`updated_at`,`table_column`,`history_latest`,`before`,`company_id`,`created_by`) VALUES 
 (48,'EDP Administrator',NULL,NULL,NULL,'2021-04-13 15:22:42','laporan_biaya_administrasi_umum.total_biaya_lp_adm',232283,232283,3,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=815 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
 (78,9,'LV','text','LV',0,1,1,1,1,1,'{}',4),
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
 (128,16,'company_parent_id','text','Company Parent Id',0,1,1,1,1,1,'{}',7),
 (129,16,'code_mesin','text','Code Mesin',0,1,1,1,1,1,'{}',8),
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
 (165,19,'created_at','timestamp','Created At',0,1,0,0,0,0,'{}',18),
 (166,19,'updated_at','timestamp','Updated At',0,1,0,1,0,0,'{}',19);
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
 (197,25,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',17),
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
 (259,16,'labor_belongsto_company_relationship','relationship','company',0,1,1,1,1,1,'{\"model\":\"App\\\\Company\",\"table\":\"company\",\"type\":\"belongsTo\",\"column\":\"company_parent_id\",\"key\":\"id\",\"label\":\"company_name\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',2),
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
 (306,19,'tahun1','text','20218',0,0,1,1,1,1,'{}',13),
 (307,19,'tahun2','number','2019',0,0,1,1,1,1,'{}',14),
 (308,19,'tahun3','number','2020',0,0,1,1,1,1,'{}',15),
 (309,19,'total_biaya_laporan_periode','text','Total Biaya Laporan Periode',0,0,0,1,0,0,'{}',16),
 (310,20,'company_parent_id','text','Company Parent Id',0,1,1,1,1,1,'{}',8);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (311,20,'bagian_penjualan_belongsto_company_relationship','relationship','company',0,1,1,1,1,1,'{\"model\":\"App\\\\Company\",\"table\":\"company\",\"type\":\"belongsTo\",\"column\":\"company_parent_id\",\"key\":\"id\",\"label\":\"company_name\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":null}',9),
 (312,19,'laporan_gaji_lain_belongsto_company_relationship','relationship','company',0,1,1,1,1,1,'{\"model\":\"App\\\\Company\",\"table\":\"company\",\"type\":\"belongsTo\",\"column\":\"company_parent_id\",\"key\":\"id\",\"label\":\"company_name\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',3),
 (313,19,'laporan_gaji_lain_belongsto_kategori_bagian_relationship','relationship','kategori_bagian',0,1,1,1,1,1,'{\"model\":\"App\\\\KategoriBagian\",\"table\":\"kategori_bagian\",\"type\":\"belongsTo\",\"column\":\"category_bagian\",\"key\":\"id\",\"label\":\"nama_bagian\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',5),
 (314,19,'company_parent_id','text','Company Parent Id',0,1,1,1,1,1,'{}',7);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (315,19,'code_account','text','Code Account',0,1,1,1,1,1,'{}',8),
 (316,34,'id','text','Id',1,0,0,0,0,0,'{}',1),
 (317,34,'code_mesin','text','Code Mesin',0,0,0,0,0,1,'{}',8),
 (318,34,'company_parent_id','text','Company Parent Id',0,1,1,1,1,1,'{}',9),
 (319,34,'perbaikan_tahun1','text','Perbaikan Tahun1',0,0,1,1,1,1,'{}',10),
 (320,34,'perbaikan_tahun2','text','Perbaikan Tahun2',0,0,1,1,1,1,'{}',11),
 (321,34,'perbaikan_tahun3','text','Perbaikan Tahun3',0,0,1,1,1,1,'{}',12),
 (322,34,'rata_rata_perbaikan_perbulan','text','Rata Rata Perbaikan Perbulan',0,0,1,1,1,1,'{}',19),
 (323,34,'sparepart_tahun1','text','Sparepart Tahun1',0,0,1,1,1,1,'{}',16),
 (324,34,'sparepart_tahun2','text','Sparepart Tahun2',0,0,1,1,1,1,'{}',17),
 (325,34,'sparepart_tahun3','text','Sparepart Tahun3',0,0,1,1,1,1,'{}',18),
 (326,34,'rata_rata_sparepart_perbulan','text','Rata Rata Sparepart Perbulan',0,0,1,1,1,1,'{}',20),
 (327,34,'biaya_produksi_lain','text','Biaya Produksi Lain',0,0,1,1,1,1,'{}',21);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (328,34,'total_biaya_perbulan','text','Total Biaya Perbulan',0,0,1,1,1,1,'{}',22),
 (329,34,'created_at','timestamp','Created At',0,0,1,0,0,0,'{}',23),
 (330,34,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',24),
 (331,34,'deleted_at','timestamp','Deleted At',0,0,0,0,0,0,'{}',26),
 (332,34,'category_bagian','text','Category Bagian',0,1,1,1,1,1,'{}',32),
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
 (367,36,'id','text','Id',1,0,0,0,0,0,'{}',1),
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
 (399,34,'perbaikanthn2_view','number','perbaikan tahun 2019',0,1,0,0,0,0,'{}',13),
 (400,34,'perbaikanthn3_view','number','perbaikan tahun 2020',0,1,0,0,0,0,'{}',14),
 (401,34,'rtrt_perbaikan_bln_view','number','Rata2 perbaikan Perbulan',0,1,0,0,0,0,'{}',15),
 (402,34,'sprprt_view1','number','sparepart tahun 2018',0,1,1,1,1,1,'{}',25),
 (403,34,'sprprt_view2','number','sparepart tahun 2019',0,1,0,0,0,0,'{}',27);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (404,34,'sprprt_view3','number','sparepart tahun 2020',0,1,0,0,0,0,'{}',28),
 (405,34,'rtrt_sparepart_bln_view','number','Rata2 sparepart Perbulan',0,1,0,0,0,0,'{}',29),
 (406,34,'biaya_produksi_lain_view','number','Biaya produksi lain',0,1,0,0,0,0,'{}',31),
 (407,34,'total_biaya_perbulan_view','number','Total per Bulan',0,1,0,0,0,0,'{}',33),
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
 (420,19,'lgj_lain_view1','number','2018',0,1,0,0,0,0,'{}',9),
 (421,19,'lgj_lain_view2','number','2019',0,1,0,0,0,0,'{}',10),
 (422,19,'lgj_lain_view3','number','2020',0,1,0,0,0,0,'{}',11),
 (423,19,'total_lain_view0','number','Total Biaya / periode',0,1,0,0,0,0,'{}',12),
 (424,23,'tahun1_view0','number','2018',0,1,0,0,0,0,'{}',11),
 (425,23,'tahun2_view0','number','2019',0,1,0,0,0,0,'{}',12),
 (426,23,'tahun3_view0','number','2019',0,1,0,0,0,0,'{}',13),
 (427,23,'biaya_perbulan_bag_penjualan_view0','number','Biaya per Bulan',0,1,0,0,0,0,'{}',14),
 (428,25,'th_view1','number','2018',0,1,0,0,0,0,'{}',10),
 (429,25,'th_view2','number','2019',0,1,0,0,0,0,'{}',12),
 (430,25,'th_view3','number','2020',0,1,0,0,0,0,'{}',13),
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
 (503,23,'company_parent_id','text','Company Parent Id',0,0,0,1,0,0,'{}',17),
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
 (581,7,'listrik_perjam_id','text','Listrik Perjam Id',0,1,1,1,1,1,'{}',20),
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
 (792,82,'faktor_lwbp','text','Faktor Lwbp',0,1,1,1,1,1,'{}',2),
 (793,82,'faktor_wbp','text','Faktor Wbp',0,1,1,1,1,1,'{}',3),
 (794,82,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',4),
 (795,82,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',5),
 (796,82,'status_periode','text','Status Periode',0,1,1,0,0,0,'{}',6),
 (797,82,'begin_at','timestamp','Begin At',0,1,1,0,0,0,'{}',7),
 (798,82,'ended_at','timestamp','Ended At',0,1,1,0,0,0,'{}',8),
 (799,82,'company_name','text','Company Name',0,1,1,1,1,1,'{}',9),
 (800,7,'mesin_belongsto_location_machine_relationship','relationship','Lokasi Mesin',0,1,0,0,0,0,'{\"model\":\"App\\\\LocationMachine\",\"table\":\"location_machine\",\"type\":\"belongsTo\",\"column\":\"location_mch_id\",\"key\":\"id\",\"label\":\"company_name\",\"pivot_table\":\"account_mtc\",\"pivot\":\"0\",\"taggable\":\"0\"}',3),
 (801,7,'location_mch_id','number','Location Mch Id',0,0,0,1,1,0,'{}',21);
INSERT INTO `data_rows` (`id`,`data_type_id`,`field`,`type`,`display_name`,`required`,`browse`,`read`,`edit`,`add`,`delete`,`details`,`order`) VALUES 
 (802,7,'capacity_mch','text','Kapasitas Mesin',0,1,1,1,1,1,'{}',10),
 (803,10,'ended_at','timestamp','Ended At',0,0,0,0,0,0,'{}',5),
 (804,10,'view_transaction_ended','number','TRANSACTION STATUS',0,1,0,0,0,0,'{}',4),
 (805,19,'ended_at','timestamp','Ended At',0,1,1,1,1,1,'{}',17),
 (806,19,'TRANSACTION_DATE_V','number','TRANSACTION_STATUS',0,1,0,0,0,0,'{}',4),
 (807,16,'ended_at','timestamp','Ended At',0,1,1,1,1,1,'{}',24),
 (808,16,'TRANSACTION_DATE_V','number','TRANSACTION STATUS',0,1,1,1,1,1,'{}',3),
 (809,25,'ended_at','timestamp','Ended At',0,1,0,0,0,0,'{}',15),
 (810,25,'TRANSACTION_DATE_V','number','TRANSACTION STATUS',0,1,1,1,1,1,'{}',3),
 (811,34,'ended_at','timestamp','Ended At',0,0,0,0,0,0,'{}',30),
 (812,34,'TRANSACTION_DATE_V','number','TRANSACTION STATUS',0,1,0,0,0,0,'{}',4),
 (813,23,'ended_at','timestamp','Ended At',0,1,1,1,1,1,'{}',16),
 (814,23,'TRANSACTION_DATE_V','number','TRANSACTION STATUS',0,1,0,0,0,0,'{}',3);
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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
 (7,'mesin','mesin','Mesin','Mesins','voyager-credit-card','App\\Mesin',NULL,'App\\Http\\Controllers\\KOP\\VoyagerMachineController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-01-20 01:41:07','2021-04-13 08:40:18'),
 (8,'company','company','Company','Companies','voyager-company','App\\Company',NULL,'App\\Http\\Controllers\\KOP\\VoyagerCompanyController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-01-20 02:11:14','2021-03-26 15:43:09'),
 (9,'job_level','job-level','Job Level','Job Levels',NULL,'App\\JobLevel',NULL,'App\\Http\\Controllers\\KOP\\VoyagerJobLevelController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-01-20 02:18:50','2021-03-31 14:54:35');
INSERT INTO `data_types` (`id`,`name`,`slug`,`display_name_singular`,`display_name_plural`,`icon`,`model_name`,`policy_name`,`controller`,`description`,`generate_permissions`,`server_side`,`details`,`created_at`,`updated_at`) VALUES 
 (10,'penyusutan','penyusutan','Penyusutan','Penyusutans','voyager-double-down','App\\Penyusutan',NULL,'App\\Http\\Controllers\\KOP\\VoyagerPenyusutanController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-01-20 02:38:51','2021-04-13 08:52:23'),
 (13,'listrik','listrik','Listrik','Listriks','voyager-wand','App\\Listrik',NULL,'App\\Http\\Controllers\\KOP\\VoyagerListrikController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2021-01-20 03:25:14','2021-04-06 23:28:52'),
 (14,'mtc','mtc','Mtc','Mtcs','voyager-tools','App\\Mtc',NULL,'App\\Http\\Controllers\\KOP\\VoyagerMTcController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-01-20 03:42:50','2021-03-04 01:54:48'),
 (15,'account_mtc','account-mtc','Account Mtc','Account Mtcs','voyager-book','App\\AccountMtc',NULL,'App\\Http\\Controllers\\KOP\\VoyagerAccountMtcController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-01-20 03:48:09','2021-03-16 13:47:46');
INSERT INTO `data_types` (`id`,`name`,`slug`,`display_name_singular`,`display_name_plural`,`icon`,`model_name`,`policy_name`,`controller`,`description`,`generate_permissions`,`server_side`,`details`,`created_at`,`updated_at`) VALUES 
 (16,'labor','labor','Labor','Labors','voyager-documentation','App\\Labor',NULL,'App\\Http\\Controllers\\KOP\\VoyagerLaborController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-01-20 04:15:08','2021-04-13 09:32:54'),
 (17,'gaji_lain','gaji-lain','Gaji Lain','Gaji Lains','voyager-dollar','App\\GajiLain',NULL,'App\\Http\\Controllers\\KOP\\VoyagerGajiLainController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-01-20 04:41:32','2021-03-02 03:43:33'),
 (19,'laporan_gaji_lain','laporan-gaji-lain','Laporan Gaji Lain','Laporan Gaji Lains','voyager-documentation','App\\LaporanGajiLain',NULL,'App\\Http\\Controllers\\KOP\\VoyagerLaporanGajiLainController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-01-20 04:51:27','2021-04-13 09:14:26'),
 (20,'bagian_penjualan','bagian-penjualan','Bagian Penjualan','Bagian Penjualans','voyager-credit-card','App\\BagianPenjualan',NULL,'App\\Http\\Controllers\\KOP\\VoyagerBagianPenjualanController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-01-20 06:06:00','2021-01-27 02:33:47');
INSERT INTO `data_types` (`id`,`name`,`slug`,`display_name_singular`,`display_name_plural`,`icon`,`model_name`,`policy_name`,`controller`,`description`,`generate_permissions`,`server_side`,`details`,`created_at`,`updated_at`) VALUES 
 (21,'laporan_bagian_gaji_bulanan','laporan-bagian-gaji-bulanan','Laporan Bagian Gaji Bulanan','Laporan Bagian Gaji Bulanans',NULL,'App\\LaporanBagianGajiBulanan',NULL,'App\\Http\\Controllers\\KOP\\VoyagerLaporanBagianPenjualanController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2021-01-20 06:14:29','2021-01-20 06:14:29'),
 (23,'laporan_bagian_penjualan','laporan-bagian-penjualan','Laporan Bagian Penjualan','Laporan Bagian Penjualans','voyager-receipt','App\\LaporanBagianPenjualan',NULL,'App\\Http\\Controllers\\KOP\\VoyagerLaporanBagianPenjualanController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-01-20 06:17:55','2021-04-13 13:44:41'),
 (24,'biaya_administrasi_umum','biaya-administrasi-umum','Biaya Administrasi Umum','Biaya Administrasi Umums','voyager-credit-cards','App\\BiayaAdministrasiUmum',NULL,'App\\Http\\Controllers\\KOP\\VoyagerBiayaAdministrasiUmumController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-01-20 06:29:32','2021-01-27 03:45:06');
INSERT INTO `data_types` (`id`,`name`,`slug`,`display_name_singular`,`display_name_plural`,`icon`,`model_name`,`policy_name`,`controller`,`description`,`generate_permissions`,`server_side`,`details`,`created_at`,`updated_at`) VALUES 
 (25,'laporan_biaya_administrasi_umum','laporan-biaya-administrasi-umum','Laporan Biaya Administrasi Umum','Laporan Biaya Administrasi Umums','voyager-book','App\\LaporanBiayaAdministrasiUmum',NULL,'App\\Http\\Controllers\\KOP\\VoyagerLaporanBiayaAdministrasiUmumController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-01-20 06:39:36','2021-04-13 15:20:26'),
 (26,'laporan_biaya_listrik_bulan_jam','laporan-biaya-listrik-bulan-jam','Laporan Biaya Listrik Bulan Jam','Laporan Biaya Listrik Bulan Jams','voyager-documentation','App\\LaporanBiayaListrikBulanJam',NULL,'App\\Http\\Controllers\\KOP\\VoyagerLaporanBiayaListrikBjamController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2021-01-20 07:44:31','2021-01-20 07:44:31'),
 (27,'laporan_biaya_listrik_perbulan','laporan-biaya-listrik-perbulan','Laporan Biaya Listrik Perbulan','Laporan Biaya Listrik Perbulans','voyager-documentation','App\\LaporanBiayaListrikPerbulan',NULL,'App\\Http\\Controllers\\KOP\\VoyagerLaporanBiayaListrikPerbulan',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2021-01-20 07:57:20','2021-01-20 07:57:20');
INSERT INTO `data_types` (`id`,`name`,`slug`,`display_name_singular`,`display_name_plural`,`icon`,`model_name`,`policy_name`,`controller`,`description`,`generate_permissions`,`server_side`,`details`,`created_at`,`updated_at`) VALUES 
 (28,'kategori_bagian','kategori-bagian','Kategori Bagian','Kategori Bagians','voyager-categories','App\\KategoriBagian',NULL,'App\\Http\\Controllers\\KOP\\VoyagerCategoryBagianController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-01-20 08:33:54','2021-03-10 09:07:34'),
 (33,'total_kalkulasi','total-kalkulasi','Total Kalkulasi','Total Kalkulasis','voyager-treasure-open','App\\TotalCalc',NULL,'App\\Http\\Controllers\\KOP\\VoyagerTotalKalkulasiController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-01-22 05:39:17','2021-02-02 07:37:03'),
 (34,'rpt_mtc','rpt-mtc','Rpt Mtc','Rpt Mtcs','voyager-file-text','App\\RptMtc',NULL,'App\\Http\\Controllers\\KOP\\VoyagerRptMTController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-01-29 01:18:08','2021-04-13 11:21:22'),
 (35,'listrik_output','listrik-output','Listrik Output','Listrik Outputs','voyager-forward','App\\ListrikOutput',NULL,'App\\Http\\Controllers\\KOP\\VoyagerListrikOutputPerjamController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-01-29 06:19:39','2021-03-29 16:19:31');
INSERT INTO `data_types` (`id`,`name`,`slug`,`display_name_singular`,`display_name_plural`,`icon`,`model_name`,`policy_name`,`controller`,`description`,`generate_permissions`,`server_side`,`details`,`created_at`,`updated_at`) VALUES 
 (36,'lb8_kategori_mesin','lb8-kategori-mesin','Lb8 Kategori Mesin','Lb8 Kategori Mesins','voyager-harddrive','App\\Lb8KategoriMesin',NULL,'App\\Http\\Controllers\\KOP\\VoyagerLb8KategoriMesinController',NULL,1,0,'{\"order_column\":\"updated_at\",\"order_display_column\":\"nama_kategori_mesin\",\"order_direction\":\"desc\",\"default_search_key\":\"id\",\"scope\":null}','2021-02-24 11:55:45','2021-03-31 13:50:42'),
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
 (82,'location_machine','location-machine','Location Machine','Location Machines','voyager-location','App\\LocationMachine',NULL,'App\\Http\\Controllers\\KOP\\VoyagerLocationMachineController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-04-12 15:06:12','2021-04-13 14:40:50');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
 (8,'job_level.updah_atas','8718','51231',NULL,'Admin','2021-03-31 14:55:53','2021-03-31 14:55:53');
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`gji_lain_total`
--

/*!40000 ALTER TABLE `gji_lain_total` DISABLE KEYS */;
INSERT INTO `gji_lain_total` (`id`,`id_lp_gaji_lain`,`changed_by`,`created_at`,`updated_at`,`total_gj_lain`,`history_latest`,`before`,`table_column`,`company_id`,`category_id`,`created_by`) VALUES 
 (42,NULL,'Admin',NULL,'2021-03-29 15:36:53',NULL,3242352,512312,'laporan_gaji_lain.tahun2',3,2,NULL),
 (43,NULL,'Admin',NULL,'2021-03-29 15:36:53',NULL,94145,18311,'laporan_gaji_lain.total_biaya_laporan_periode',3,2,NULL),
 (44,NULL,'Admin',NULL,'2021-03-29 15:37:28',NULL,3242352,512312,'laporan_gaji_lain.tahun2',3,2,NULL),
 (45,NULL,'Admin',NULL,'2021-03-29 15:37:28',NULL,231231,23451,'laporan_gaji_lain.tahun3',3,2,NULL),
 (46,NULL,'Admin',NULL,'2021-03-29 15:37:28',NULL,99917,18311,'laporan_gaji_lain.total_biaya_laporan_periode',3,2,NULL),
 (47,NULL,NULL,'2021-03-31 09:31:21','2021-03-31 09:31:21',NULL,33,33,'laporan_gaji_lain.added.event',3,3,'Admin'),
 (48,NULL,NULL,'2021-04-13 10:11:30','2021-04-13 10:11:30',NULL,1339470,1339470,'laporan_gaji_lain.added.event',3,13,'Admin'),
 (49,NULL,NULL,'2021-04-13 15:54:32','2021-04-13 15:54:32',NULL,170883,170883,'laporan_gaji_lain.added.event',3,13,'Accounting');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`group_mesin_logs`
--

/*!40000 ALTER TABLE `group_mesin_logs` DISABLE KEYS */;
INSERT INTO `group_mesin_logs` (`id`,`before`,`table_column`,`history_latest`,`changed_by`,`created_by`,`created_at`,`updated_at`,`company_id`,`column_bfr_group_mesin`,`column_afr_group_mesin`) VALUES 
 (5,35,'group_mesin.added.event',35,NULL,'Admin','2021-03-31 13:39:00','2021-03-31 13:39:00',3,NULL,NULL),
 (6,3,'lb8_kategori_mesin.company_parent_id',2,'Admin',NULL,'2021-03-31 13:59:32','2021-03-31 13:59:32',2,NULL,NULL),
 (7,0,'lb8_kategori_mesin.nama_kategori_mesin',0,'Admin',NULL,'2021-03-31 14:03:32','2021-03-31 14:03:32',3,NULL,NULL),
 (8,0,'lb8_kategori_mesin.nama_kategori_mesin',0,'Admin',NULL,'2021-03-31 14:05:34','2021-03-31 14:05:34',3,'GJIKOKOKOK','KOPS');
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
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`history_log_recalculate`
--

/*!40000 ALTER TABLE `history_log_recalculate` DISABLE KEYS */;
INSERT INTO `history_log_recalculate` (`id`,`created_at`,`updated_at`,`changed_by`,`recalculate_status`,`listrik`,`penyusutan`,`labor`,`mtc`,`biaya_produksi_lain`,`biaya_administrasi_umum`,`gaji_lainnya`,`bagian_penjualan`,`total_semua_biaya`,`total_semua_biaya_perjam`,`total_tanpa_penyusutan_n_mtc`,`total_tanpa_penyusutan_n_mtc_perjam`,`total_tanpa_penyusutan`,`total_tanpa_penyusutan_perjam`,`total_tanpa_mtc`,`total_tanpa_mtc_perjam`,`id_logs`,`code_mesin`,`category_bagian`,`company`,`dibuat_oleh`,`group_mesin`) VALUES 
 (82,'2021-03-10 11:59:00','2021-03-10 11:59:00',NULL,'active',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,136,40,2,3,'Admin',NULL),
 (83,'2021-03-10 12:09:20','2021-03-10 12:09:20','Admin','active',35918347,123958333,58848711,142957,14148180,106179751,32905333,6110047,378211659,750420,254110369,504187,254253326,504471,254110369,750136,65,40,2,3,'Admin',2),
 (84,'2021-03-12 13:32:48','2021-03-12 13:32:48','Admin','active',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (85,'2021-03-12 13:34:05','2021-03-12 13:34:05','Admin','active',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `history_log_recalculate` (`id`,`created_at`,`updated_at`,`changed_by`,`recalculate_status`,`listrik`,`penyusutan`,`labor`,`mtc`,`biaya_produksi_lain`,`biaya_administrasi_umum`,`gaji_lainnya`,`bagian_penjualan`,`total_semua_biaya`,`total_semua_biaya_perjam`,`total_tanpa_penyusutan_n_mtc`,`total_tanpa_penyusutan_n_mtc_perjam`,`total_tanpa_penyusutan`,`total_tanpa_penyusutan_perjam`,`total_tanpa_mtc`,`total_tanpa_mtc_perjam`,`id_logs`,`code_mesin`,`category_bagian`,`company`,`dibuat_oleh`,`group_mesin`) VALUES 
 (86,'2021-03-12 13:43:12','2021-03-12 13:43:12','Admin','active',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (87,'2021-03-12 13:43:22','2021-03-12 13:43:22','Admin','active',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (88,'2021-03-12 13:43:40','2021-03-12 13:43:40','Admin','active',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (89,'2021-03-12 14:30:32','2021-03-12 14:30:32',NULL,'active',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,153,37,6,3,'Admin',NULL);
INSERT INTO `history_log_recalculate` (`id`,`created_at`,`updated_at`,`changed_by`,`recalculate_status`,`listrik`,`penyusutan`,`labor`,`mtc`,`biaya_produksi_lain`,`biaya_administrasi_umum`,`gaji_lainnya`,`bagian_penjualan`,`total_semua_biaya`,`total_semua_biaya_perjam`,`total_tanpa_penyusutan_n_mtc`,`total_tanpa_penyusutan_n_mtc_perjam`,`total_tanpa_penyusutan`,`total_tanpa_penyusutan_perjam`,`total_tanpa_mtc`,`total_tanpa_mtc_perjam`,`id_logs`,`code_mesin`,`category_bagian`,`company`,`dibuat_oleh`,`group_mesin`) VALUES 
 (90,'2021-03-12 14:31:45','2021-03-12 14:31:45',NULL,'active',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,152,22,6,3,'Admin',NULL),
 (91,'2021-03-12 15:06:18','2021-03-12 15:06:18','Admin','active',1351369,0,47780449,117545,10611135,47780888,14807400,2749521,125198307,372614,125080761,372264,125198307,372614,125080761,372264,67,22,6,3,'Admin',8),
 (92,'2021-03-12 15:10:04','2021-03-12 15:10:04','Admin','active',1351369,0,47780449,117545,10611135,47780888,14807400,2749521,125198307,372614,125080761,372264,125198307,372614,125080761,372264,67,22,6,3,'Admin',8),
 (93,'2021-03-12 15:35:36','2021-03-12 15:35:36',NULL,'active',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,147,4,4,3,'Admin',NULL);
INSERT INTO `history_log_recalculate` (`id`,`created_at`,`updated_at`,`changed_by`,`recalculate_status`,`listrik`,`penyusutan`,`labor`,`mtc`,`biaya_produksi_lain`,`biaya_administrasi_umum`,`gaji_lainnya`,`bagian_penjualan`,`total_semua_biaya`,`total_semua_biaya_perjam`,`total_tanpa_penyusutan_n_mtc`,`total_tanpa_penyusutan_n_mtc_perjam`,`total_tanpa_penyusutan`,`total_tanpa_penyusutan_perjam`,`total_tanpa_mtc`,`total_tanpa_mtc_perjam`,`id_logs`,`code_mesin`,`category_bagian`,`company`,`dibuat_oleh`,`group_mesin`) VALUES 
 (94,'2021-03-12 15:46:04','2021-03-12 15:46:04','Admin','active',10294355,58188807,30153439,784691,14148180,39817406,12339500,2291268,168017645,333368,109044147,216357,109828838,217914,109044147,331811,68,4,4,3,'Admin',6),
 (95,'2021-03-13 20:05:11','2021-03-13 20:05:11',NULL,'active',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,157,44,6,3,'Admin',NULL),
 (96,'2021-03-13 20:06:15','2021-03-13 20:06:15','Admin','active',971525,0,21317431,0,14148180,47780888,14807400,2749521,101774945,605803,101774945,605803,101774945,605803,101774945,605803,69,44,6,3,'Admin',1),
 (97,'2021-03-13 21:29:11','2021-03-13 21:29:11',NULL,'active',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,180,9,1,3,'Admin',NULL);
INSERT INTO `history_log_recalculate` (`id`,`created_at`,`updated_at`,`changed_by`,`recalculate_status`,`listrik`,`penyusutan`,`labor`,`mtc`,`biaya_produksi_lain`,`biaya_administrasi_umum`,`gaji_lainnya`,`bagian_penjualan`,`total_semua_biaya`,`total_semua_biaya_perjam`,`total_tanpa_penyusutan_n_mtc`,`total_tanpa_penyusutan_n_mtc_perjam`,`total_tanpa_penyusutan`,`total_tanpa_penyusutan_perjam`,`total_tanpa_mtc`,`total_tanpa_mtc_perjam`,`id_logs`,`code_mesin`,`category_bagian`,`company`,`dibuat_oleh`,`group_mesin`) VALUES 
 (98,'2021-03-16 10:35:12','2021-03-16 10:35:12',NULL,'active',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,186,57,2,3,'Admin',NULL),
 (99,'2021-03-16 10:57:58','2021-03-16 10:57:58',NULL,'active',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,187,57,2,3,'Admin',NULL),
 (100,'2021-03-16 14:59:35','2021-03-16 14:59:35','Admin','active',35917199,33663664,58848711,1423715,14148180,63709054,19743200,3732945,231186666,458704,196099288,389086,197523003,391911,196099288,455879,73,57,2,3,'Admin',2),
 (101,'2021-03-16 16:52:19','2021-03-16 16:52:19',NULL,'active',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,188,58,2,3,'Admin',NULL);
INSERT INTO `history_log_recalculate` (`id`,`created_at`,`updated_at`,`changed_by`,`recalculate_status`,`listrik`,`penyusutan`,`labor`,`mtc`,`biaya_produksi_lain`,`biaya_administrasi_umum`,`gaji_lainnya`,`bagian_penjualan`,`total_semua_biaya`,`total_semua_biaya_perjam`,`total_tanpa_penyusutan_n_mtc`,`total_tanpa_penyusutan_n_mtc_perjam`,`total_tanpa_penyusutan`,`total_tanpa_penyusutan_perjam`,`total_tanpa_mtc`,`total_tanpa_mtc_perjam`,`id_logs`,`code_mesin`,`category_bagian`,`company`,`dibuat_oleh`,`group_mesin`) VALUES 
 (102,'2021-03-16 16:57:31','2021-03-16 16:57:31','Admin','active',35917199,587202,58848711,3687573,16053511,63709054,19743200,3732945,202279395,401348,198004620,392866,201692192,400183,198004620,394031,74,58,2,3,'Admin',2),
 (103,'2021-03-16 17:00:58','2021-03-16 17:00:58','Admin','active',35917199,587202,58848711,3687573,16053511,63709054,19743200,3732945,202279395,401348,198004620,392866,201692192,400183,198004620,394031,75,58,2,3,'Admin',2),
 (104,'2021-03-16 17:04:48','2021-03-16 17:04:48','Admin','active',35917199,33663664,58848711,1423715,14148180,63709054,19743200,3732945,231186666,458704,196099288,389086,197523003,391911,196099288,455879,76,57,2,3,'Admin',2),
 (105,'2021-03-17 16:10:25','2021-03-17 16:10:25',NULL,'active',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,189,10,2,3,'Admin',NULL);
INSERT INTO `history_log_recalculate` (`id`,`created_at`,`updated_at`,`changed_by`,`recalculate_status`,`listrik`,`penyusutan`,`labor`,`mtc`,`biaya_produksi_lain`,`biaya_administrasi_umum`,`gaji_lainnya`,`bagian_penjualan`,`total_semua_biaya`,`total_semua_biaya_perjam`,`total_tanpa_penyusutan_n_mtc`,`total_tanpa_penyusutan_n_mtc_perjam`,`total_tanpa_penyusutan`,`total_tanpa_penyusutan_perjam`,`total_tanpa_mtc`,`total_tanpa_mtc_perjam`,`id_logs`,`code_mesin`,`category_bagian`,`company`,`dibuat_oleh`,`group_mesin`) VALUES 
 (106,'2021-03-17 16:10:41','2021-03-17 16:10:41','Admin','active',35923199,33333333,58848711,12906695,14148180,63709054,19743200,3732945,242345317,480844,196105288,389098,209011983,414706,196105288,455235,77,10,2,3,'Admin',2),
 (107,'2021-03-18 01:45:51','2021-03-18 01:45:51',NULL,'active',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,196,58,2,3,'Admin',NULL),
 (108,'2021-03-18 01:46:18','2021-03-18 01:46:18','Admin','active',102738200,587202,58848711,3687573,16053511,63709054,19743200,3732945,269100396,533929,264825621,525448,268513193,532764,264825621,526613,78,58,2,3,'Admin',2),
 (109,'2021-03-18 01:55:42','2021-03-18 01:55:42',NULL,'active',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,195,10,2,3,'Admin',NULL);
INSERT INTO `history_log_recalculate` (`id`,`created_at`,`updated_at`,`changed_by`,`recalculate_status`,`listrik`,`penyusutan`,`labor`,`mtc`,`biaya_produksi_lain`,`biaya_administrasi_umum`,`gaji_lainnya`,`bagian_penjualan`,`total_semua_biaya`,`total_semua_biaya_perjam`,`total_tanpa_penyusutan_n_mtc`,`total_tanpa_penyusutan_n_mtc_perjam`,`total_tanpa_penyusutan`,`total_tanpa_penyusutan_perjam`,`total_tanpa_mtc`,`total_tanpa_mtc_perjam`,`id_logs`,`code_mesin`,`category_bagian`,`company`,`dibuat_oleh`,`group_mesin`) VALUES 
 (110,'2021-03-18 01:56:21','2021-03-18 01:56:21','Admin','active',35923199,33333333,58848711,12906695,14148180,63709054,19743200,3732945,242345317,480844,196105288,389098,209011983,414706,196105288,455235,79,10,2,3,'Admin',2),
 (111,'2021-03-18 14:39:01','2021-03-18 14:39:01','Admin','active',24992101,33663664,58848711,1423715,14148180,63709054,19743200,3732945,220261568,437027,185174190,367409,186597905,370234,185174190,434202,161,57,2,3,'Admin',5);
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
) ENGINE=InnoDB AUTO_INCREMENT=839487 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`history_recalculate_temporary`
--

/*!40000 ALTER TABLE `history_recalculate_temporary` DISABLE KEYS */;
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837414,'all_recalculate.id_labor',29277339,29277339,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837415,'all_recalculate.id_penyusutan',12766732,12766731,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837416,'all_recalculate.id_mtc',255484,255483,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837417,'all_recalculate.id_bprodlain_insteadof_mtc',6688964,6688963,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837418,'all_recalculate.id_gajilain',19743201,19743200,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837419,'all_recalculate.id_bgoenjualan',3723662,3723662,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837420,'all_recalculate.id_bau',75462053,75462052,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837421,'all_recalculate.total_semua_biaya',18964994763,18964994762,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837422,'all_recalculate.total_semua_biaya_perjam',37628958,37628958,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:57');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837423,'all_recalculate.total_tanpa_penyusutan_n_mtc',18951972548,18951972548,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837424,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',37603121,37603120,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837425,'all_recalculate.total_tanpa_penyusutan',18952228031,18952228031,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837426,'all_recalculate.total_tanpa_penyusutan_perjam',37603628,37603627,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837427,'all_recalculate.total_tanpa_mtc',18951972548,18951972548,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837428,'all_recalculate.total_tanpa_mtc_perjam',37628451,37628451,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837429,'all_recalculate.id',374,375,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837430,'all_recalculate.id_labor',29277339,106167107,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:57');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837431,'all_recalculate.id_penyusutan',12766732,615270923,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837432,'all_recalculate.id_mtc',255484,8587236,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837433,'all_recalculate.id_bprodlain_insteadof_mtc',6688964,14151004,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837434,'all_recalculate.id_gajilain',19743201,19743200,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837435,'all_recalculate.id_bgoenjualan',3723662,3723662,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837436,'all_recalculate.id_bau',75462053,75462052,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837437,'all_recalculate.total_semua_biaya',18964994763,6656123307,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837438,'all_recalculate.total_semua_biaya_perjam',37628958,13206594,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837439,'all_recalculate.total_tanpa_penyusutan_n_mtc',18951972548,6032265148,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:57');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837440,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',37603121,11968780,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837441,'all_recalculate.total_tanpa_penyusutan',18952228031,6040852384,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837442,'all_recalculate.total_tanpa_penyusutan_perjam',37603628,11985818,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837443,'all_recalculate.total_tanpa_mtc',18951972548,6032265148,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837444,'all_recalculate.total_tanpa_mtc_perjam',37628451,13189556,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837445,'all_recalculate.id',374,376,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837446,'all_recalculate.id_labor',29277339,78443945,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837447,'all_recalculate.id_penyusutan',12766732,7790192,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:57');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837448,'all_recalculate.id_mtc',255484,4414819,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837449,'all_recalculate.id_bprodlain_insteadof_mtc',6688964,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837450,'all_recalculate.id_gajilain',19743201,19743200,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837451,'all_recalculate.id_bgoenjualan',3723662,3723662,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837452,'all_recalculate.id_bau',75462053,75462052,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837453,'all_recalculate.total_semua_biaya',18964994763,1078632707,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837454,'all_recalculate.total_semua_biaya_perjam',37628958,2140144,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837455,'all_recalculate.total_tanpa_penyusutan_n_mtc',18951972548,1066427696,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837456,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',37603121,2115928,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:57');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837457,'all_recalculate.total_tanpa_penyusutan',18952228031,1070842515,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837458,'all_recalculate.total_tanpa_penyusutan_perjam',37603628,2124688,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837459,'all_recalculate.total_tanpa_mtc',18951972548,1066427696,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837460,'all_recalculate.total_tanpa_mtc_perjam',37628451,2131385,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837461,'all_recalculate.id',374,377,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837462,'all_recalculate.id_labor',29277339,78443945,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837463,'all_recalculate.id_penyusutan',12766732,6994342,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837464,'all_recalculate.id_mtc',255484,613258569,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837465,'all_recalculate.id_bprodlain_insteadof_mtc',6688964,10622849,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:57');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837466,'all_recalculate.id_gajilain',19743201,19743200,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837467,'all_recalculate.id_bgoenjualan',3723662,3723662,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837468,'all_recalculate.id_bau',75462053,75462052,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837469,'all_recalculate.total_semua_biaya',18964994763,1381363371,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837470,'all_recalculate.total_semua_biaya_perjam',37628958,2740800,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837471,'all_recalculate.total_tanpa_penyusutan_n_mtc',18951972548,761110460,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837472,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',37603121,1510140,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837473,'all_recalculate.total_tanpa_penyusutan',18952228031,1374369030,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:57');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837474,'all_recalculate.total_tanpa_penyusutan_perjam',37603628,2726923,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837475,'all_recalculate.total_tanpa_mtc',18951972548,761110460,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837476,'all_recalculate.total_tanpa_mtc_perjam',37628451,1524017,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837477,'all_recalculate.id',375,374,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837478,'all_recalculate.id_labor',106167107,29277339,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837479,'all_recalculate.id_penyusutan',615270924,12766731,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837480,'all_recalculate.id_mtc',8587236,255483,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837481,'all_recalculate.id_bprodlain_insteadof_mtc',14151005,6688963,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837482,'all_recalculate.id_gajilain',19743201,19743200,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:57');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837483,'all_recalculate.id_bgoenjualan',3723662,3723662,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837484,'all_recalculate.id_bau',75462053,75462052,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837485,'all_recalculate.total_semua_biaya',6656123307,18964994762,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837486,'all_recalculate.total_semua_biaya_perjam',13206594,37628958,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837487,'all_recalculate.total_tanpa_penyusutan_n_mtc',6032265149,18951972548,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837488,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',11968781,37603120,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837489,'all_recalculate.total_tanpa_penyusutan',6040852384,18952228031,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837490,'all_recalculate.total_tanpa_penyusutan_perjam',11985819,37603627,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:57');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837491,'all_recalculate.total_tanpa_mtc',6032265149,18951972548,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837492,'all_recalculate.total_tanpa_mtc_perjam',13189556,37628451,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837493,'all_recalculate.id_labor',106167107,106167107,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837494,'all_recalculate.id_penyusutan',615270924,615270923,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837495,'all_recalculate.id_mtc',8587236,8587236,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837496,'all_recalculate.id_bprodlain_insteadof_mtc',14151005,14151004,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837497,'all_recalculate.id_gajilain',19743201,19743200,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837498,'all_recalculate.id_bgoenjualan',3723662,3723662,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837499,'all_recalculate.id_bau',75462053,75462052,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:57');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837500,'all_recalculate.total_semua_biaya',6656123307,6656123307,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837501,'all_recalculate.total_semua_biaya_perjam',13206594,13206594,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837502,'all_recalculate.total_tanpa_penyusutan_n_mtc',6032265149,6032265148,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837503,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',11968781,11968780,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837504,'all_recalculate.total_tanpa_penyusutan',6040852384,6040852384,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837505,'all_recalculate.total_tanpa_penyusutan_perjam',11985819,11985818,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837506,'all_recalculate.total_tanpa_mtc',6032265149,6032265148,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837507,'all_recalculate.total_tanpa_mtc_perjam',13189556,13189556,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:57');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837508,'all_recalculate.id',375,376,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837509,'all_recalculate.id_labor',106167107,78443945,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837510,'all_recalculate.id_penyusutan',615270924,7790192,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837511,'all_recalculate.id_mtc',8587236,4414819,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837512,'all_recalculate.id_bprodlain_insteadof_mtc',14151005,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837513,'all_recalculate.id_gajilain',19743201,19743200,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837514,'all_recalculate.id_bgoenjualan',3723662,3723662,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837515,'all_recalculate.id_bau',75462053,75462052,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837516,'all_recalculate.total_semua_biaya',6656123307,1078632707,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:57');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837517,'all_recalculate.total_semua_biaya_perjam',13206594,2140144,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837518,'all_recalculate.total_tanpa_penyusutan_n_mtc',6032265149,1066427696,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837519,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',11968781,2115928,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837520,'all_recalculate.total_tanpa_penyusutan',6040852384,1070842515,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837521,'all_recalculate.total_tanpa_penyusutan_perjam',11985819,2124688,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837522,'all_recalculate.total_tanpa_mtc',6032265149,1066427696,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837523,'all_recalculate.total_tanpa_mtc_perjam',13189556,2131385,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837524,'all_recalculate.id',375,377,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:57');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837525,'all_recalculate.id_labor',106167107,78443945,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837526,'all_recalculate.id_penyusutan',615270924,6994342,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837527,'all_recalculate.id_mtc',8587236,613258569,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837528,'all_recalculate.id_bprodlain_insteadof_mtc',14151005,10622849,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837529,'all_recalculate.id_gajilain',19743201,19743200,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837530,'all_recalculate.id_bgoenjualan',3723662,3723662,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837531,'all_recalculate.id_bau',75462053,75462052,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837532,'all_recalculate.total_semua_biaya',6656123307,1381363371,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837533,'all_recalculate.total_semua_biaya_perjam',13206594,2740800,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:57');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837534,'all_recalculate.total_tanpa_penyusutan_n_mtc',6032265149,761110460,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837535,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',11968781,1510140,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837536,'all_recalculate.total_tanpa_penyusutan',6040852384,1374369030,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837537,'all_recalculate.total_tanpa_penyusutan_perjam',11985819,2726923,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837538,'all_recalculate.total_tanpa_mtc',6032265149,761110460,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837539,'all_recalculate.total_tanpa_mtc_perjam',13189556,1524017,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837540,'all_recalculate.id',376,374,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837541,'all_recalculate.id_labor',78443946,29277339,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:57');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837542,'all_recalculate.id_penyusutan',7790192,12766731,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837543,'all_recalculate.id_mtc',4414819,255483,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837544,'all_recalculate.id_bprodlain_insteadof_mtc',0,6688963,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837545,'all_recalculate.id_gajilain',19743201,19743200,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837546,'all_recalculate.id_bgoenjualan',3723662,3723662,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837547,'all_recalculate.id_bau',75462053,75462052,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837548,'all_recalculate.total_semua_biaya',1078632707,18964994762,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837549,'all_recalculate.total_semua_biaya_perjam',2140145,37628958,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837550,'all_recalculate.total_tanpa_penyusutan_n_mtc',1066427697,18951972548,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:57');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837551,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',2115928,37603120,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837552,'all_recalculate.total_tanpa_penyusutan',1070842516,18952228031,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837553,'all_recalculate.total_tanpa_penyusutan_perjam',2124688,37603627,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837554,'all_recalculate.total_tanpa_mtc',1066427697,18951972548,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837555,'all_recalculate.total_tanpa_mtc_perjam',2131385,37628451,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837556,'all_recalculate.id',376,375,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837557,'all_recalculate.id_labor',78443946,106167107,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837558,'all_recalculate.id_penyusutan',7790192,615270923,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:57');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837559,'all_recalculate.id_mtc',4414819,8587236,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837560,'all_recalculate.id_bprodlain_insteadof_mtc',0,14151004,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837561,'all_recalculate.id_gajilain',19743201,19743200,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837562,'all_recalculate.id_bgoenjualan',3723662,3723662,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837563,'all_recalculate.id_bau',75462053,75462052,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837564,'all_recalculate.total_semua_biaya',1078632707,6656123307,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837565,'all_recalculate.total_semua_biaya_perjam',2140145,13206594,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837566,'all_recalculate.total_tanpa_penyusutan_n_mtc',1066427697,6032265148,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837567,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',2115928,11968780,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:57');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837568,'all_recalculate.total_tanpa_penyusutan',1070842516,6040852384,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837569,'all_recalculate.total_tanpa_penyusutan_perjam',2124688,11985818,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837570,'all_recalculate.total_tanpa_mtc',1066427697,6032265148,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837571,'all_recalculate.total_tanpa_mtc_perjam',2131385,13189556,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837572,'all_recalculate.id_labor',78443946,78443945,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837573,'all_recalculate.id_penyusutan',7790192,7790192,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837574,'all_recalculate.id_mtc',4414819,4414819,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837575,'all_recalculate.id_gajilain',19743201,19743200,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837576,'all_recalculate.id_bgoenjualan',3723662,3723662,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:57');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837577,'all_recalculate.id_bau',75462053,75462052,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837578,'all_recalculate.total_semua_biaya',1078632707,1078632707,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837579,'all_recalculate.total_semua_biaya_perjam',2140145,2140144,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837580,'all_recalculate.total_tanpa_penyusutan_n_mtc',1066427697,1066427696,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837581,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',2115928,2115928,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837582,'all_recalculate.total_tanpa_penyusutan',1070842516,1070842515,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837583,'all_recalculate.total_tanpa_penyusutan_perjam',2124688,2124688,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837584,'all_recalculate.total_tanpa_mtc',1066427697,1066427696,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:57');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837585,'all_recalculate.total_tanpa_mtc_perjam',2131385,2131385,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837586,'all_recalculate.id',376,377,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837587,'all_recalculate.id_labor',78443946,78443945,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837588,'all_recalculate.id_penyusutan',7790192,6994342,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837589,'all_recalculate.id_mtc',4414819,613258569,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837590,'all_recalculate.id_bprodlain_insteadof_mtc',0,10622849,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837591,'all_recalculate.id_gajilain',19743201,19743200,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837592,'all_recalculate.id_bgoenjualan',3723662,3723662,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837593,'all_recalculate.id_bau',75462053,75462052,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:57');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837594,'all_recalculate.total_semua_biaya',1078632707,1381363371,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837595,'all_recalculate.total_semua_biaya_perjam',2140145,2740800,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837596,'all_recalculate.total_tanpa_penyusutan_n_mtc',1066427697,761110460,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837597,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',2115928,1510140,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837598,'all_recalculate.total_tanpa_penyusutan',1070842516,1374369030,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837599,'all_recalculate.total_tanpa_penyusutan_perjam',2124688,2726923,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837600,'all_recalculate.total_tanpa_mtc',1066427697,761110460,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:57'),
 (837601,'all_recalculate.total_tanpa_mtc_perjam',2131385,1524017,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:57');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837602,'all_recalculate.id',377,374,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:58'),
 (837603,'all_recalculate.id_labor',78443946,29277339,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:58'),
 (837604,'all_recalculate.id_penyusutan',6994342,12766731,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:58'),
 (837605,'all_recalculate.id_mtc',613258570,255483,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:58'),
 (837606,'all_recalculate.id_bprodlain_insteadof_mtc',10622849,6688963,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:58'),
 (837607,'all_recalculate.id_gajilain',19743201,19743200,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:58'),
 (837608,'all_recalculate.id_bgoenjualan',3723662,3723662,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:58'),
 (837609,'all_recalculate.id_bau',75462053,75462052,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:58'),
 (837610,'all_recalculate.total_semua_biaya',1381363372,18964994762,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:58');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837611,'all_recalculate.total_semua_biaya_perjam',2740801,37628958,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:58'),
 (837612,'all_recalculate.total_tanpa_penyusutan_n_mtc',761110461,18951972548,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:58'),
 (837613,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',1510140,37603120,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:58'),
 (837614,'all_recalculate.total_tanpa_penyusutan',1374369030,18952228031,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:58'),
 (837615,'all_recalculate.total_tanpa_penyusutan_perjam',2726923,37603627,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:58'),
 (837616,'all_recalculate.total_tanpa_mtc',761110461,18951972548,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:58'),
 (837617,'all_recalculate.total_tanpa_mtc_perjam',1524018,37628451,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:55:58'),
 (837618,'all_recalculate.id',377,375,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:58');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837619,'all_recalculate.id_labor',78443946,106167107,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:58'),
 (837620,'all_recalculate.id_penyusutan',6994342,615270923,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:58'),
 (837621,'all_recalculate.id_mtc',613258570,8587236,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:58'),
 (837622,'all_recalculate.id_bprodlain_insteadof_mtc',10622849,14151004,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:58'),
 (837623,'all_recalculate.id_gajilain',19743201,19743200,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:58'),
 (837624,'all_recalculate.id_bgoenjualan',3723662,3723662,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:58'),
 (837625,'all_recalculate.id_bau',75462053,75462052,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:58'),
 (837626,'all_recalculate.total_semua_biaya',1381363372,6656123307,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:58'),
 (837627,'all_recalculate.total_semua_biaya_perjam',2740801,13206594,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:58');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837628,'all_recalculate.total_tanpa_penyusutan_n_mtc',761110461,6032265148,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:58'),
 (837629,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',1510140,11968780,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:58'),
 (837630,'all_recalculate.total_tanpa_penyusutan',1374369030,6040852384,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:58'),
 (837631,'all_recalculate.total_tanpa_penyusutan_perjam',2726923,11985818,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:58'),
 (837632,'all_recalculate.total_tanpa_mtc',761110461,6032265148,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:58'),
 (837633,'all_recalculate.total_tanpa_mtc_perjam',1524018,13189556,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:55:58'),
 (837634,'all_recalculate.id',377,376,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:58'),
 (837635,'all_recalculate.id_labor',78443946,78443945,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:58');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837636,'all_recalculate.id_penyusutan',6994342,7790192,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:58'),
 (837637,'all_recalculate.id_mtc',613258570,4414819,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:58'),
 (837638,'all_recalculate.id_bprodlain_insteadof_mtc',10622849,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:58'),
 (837639,'all_recalculate.id_gajilain',19743201,19743200,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:58'),
 (837640,'all_recalculate.id_bgoenjualan',3723662,3723662,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:58'),
 (837641,'all_recalculate.id_bau',75462053,75462052,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:58'),
 (837642,'all_recalculate.total_semua_biaya',1381363372,1078632707,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:58'),
 (837643,'all_recalculate.total_semua_biaya_perjam',2740801,2140144,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:58'),
 (837644,'all_recalculate.total_tanpa_penyusutan_n_mtc',761110461,1066427696,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:58');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837645,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',1510140,2115928,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:58'),
 (837646,'all_recalculate.total_tanpa_penyusutan',1374369030,1070842515,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:58'),
 (837647,'all_recalculate.total_tanpa_penyusutan_perjam',2726923,2124688,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:58'),
 (837648,'all_recalculate.total_tanpa_mtc',761110461,1066427696,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:58'),
 (837649,'all_recalculate.total_tanpa_mtc_perjam',1524018,2131385,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:55:58'),
 (837650,'all_recalculate.id_labor',78443946,78443945,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:58'),
 (837651,'all_recalculate.id_penyusutan',6994342,6994342,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:58'),
 (837652,'all_recalculate.id_mtc',613258570,613258569,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:58');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837653,'all_recalculate.id_bprodlain_insteadof_mtc',10622849,10622849,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:58'),
 (837654,'all_recalculate.id_gajilain',19743201,19743200,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:58'),
 (837655,'all_recalculate.id_bgoenjualan',3723662,3723662,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:58'),
 (837656,'all_recalculate.id_bau',75462053,75462052,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:58'),
 (837657,'all_recalculate.total_semua_biaya',1381363372,1381363371,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:58'),
 (837658,'all_recalculate.total_semua_biaya_perjam',2740801,2740800,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:58'),
 (837659,'all_recalculate.total_tanpa_penyusutan_n_mtc',761110461,761110460,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:58'),
 (837660,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',1510140,1510140,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:58');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837661,'all_recalculate.total_tanpa_penyusutan',1374369030,1374369030,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:58'),
 (837662,'all_recalculate.total_tanpa_penyusutan_perjam',2726923,2726923,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:58'),
 (837663,'all_recalculate.total_tanpa_mtc',761110461,761110460,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:58'),
 (837664,'all_recalculate.total_tanpa_mtc_perjam',1524018,1524017,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:55:58'),
 (837665,'all_recalculate.id_labor',29277339,29277339,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:55'),
 (837666,'all_recalculate.id_penyusutan',12766732,0,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:55'),
 (837667,'all_recalculate.id_mtc',255484,0,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:55'),
 (837668,'all_recalculate.id_bprodlain_insteadof_mtc',6688964,6688963,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:55'),
 (837669,'all_recalculate.id_gajilain',19743201,19743200,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:55');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837670,'all_recalculate.id_bgoenjualan',3723662,3723662,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:55'),
 (837671,'all_recalculate.id_bau',75462053,75462052,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:55'),
 (837672,'all_recalculate.total_semua_biaya',18964994763,18964994762,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:55'),
 (837673,'all_recalculate.total_semua_biaya_perjam',37628958,37628958,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:55'),
 (837674,'all_recalculate.total_tanpa_penyusutan_n_mtc',18951972548,18951972548,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:55'),
 (837675,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',37603121,37603120,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:55'),
 (837676,'all_recalculate.total_tanpa_penyusutan',18952228031,18952228031,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:55'),
 (837677,'all_recalculate.total_tanpa_penyusutan_perjam',37603628,37603627,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:55');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837678,'all_recalculate.total_tanpa_mtc',18951972548,18951972548,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:55'),
 (837679,'all_recalculate.total_tanpa_mtc_perjam',37628451,37628451,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:55'),
 (837680,'all_recalculate.id',374,375,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:55'),
 (837681,'all_recalculate.id_labor',29277339,106167107,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:55'),
 (837682,'all_recalculate.id_penyusutan',12766732,0,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:55'),
 (837683,'all_recalculate.id_mtc',255484,0,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:55'),
 (837684,'all_recalculate.id_bprodlain_insteadof_mtc',6688964,14151004,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:55'),
 (837685,'all_recalculate.id_gajilain',19743201,19743200,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:55'),
 (837686,'all_recalculate.id_bgoenjualan',3723662,3723662,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:55');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837687,'all_recalculate.id_bau',75462053,75462052,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:55'),
 (837688,'all_recalculate.total_semua_biaya',18964994763,6656123307,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:55'),
 (837689,'all_recalculate.total_semua_biaya_perjam',37628958,13206594,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:55'),
 (837690,'all_recalculate.total_tanpa_penyusutan_n_mtc',18951972548,6032265148,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:55'),
 (837691,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',37603121,11968780,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:55'),
 (837692,'all_recalculate.total_tanpa_penyusutan',18952228031,6040852384,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:55'),
 (837693,'all_recalculate.total_tanpa_penyusutan_perjam',37603628,11985818,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:55'),
 (837694,'all_recalculate.total_tanpa_mtc',18951972548,6032265148,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:55');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837695,'all_recalculate.total_tanpa_mtc_perjam',37628451,13189556,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:55'),
 (837696,'all_recalculate.id',374,376,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:55'),
 (837697,'all_recalculate.id_labor',29277339,78443945,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:55'),
 (837698,'all_recalculate.id_penyusutan',12766732,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:55'),
 (837699,'all_recalculate.id_mtc',255484,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:55'),
 (837700,'all_recalculate.id_bprodlain_insteadof_mtc',6688964,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:55'),
 (837701,'all_recalculate.id_gajilain',19743201,19743200,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:55'),
 (837702,'all_recalculate.id_bgoenjualan',3723662,3723662,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:55'),
 (837703,'all_recalculate.id_bau',75462053,75462052,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:55');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837704,'all_recalculate.total_semua_biaya',18964994763,1078632707,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:55'),
 (837705,'all_recalculate.total_semua_biaya_perjam',37628958,2140144,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:55'),
 (837706,'all_recalculate.total_tanpa_penyusutan_n_mtc',18951972548,1066427696,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:55'),
 (837707,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',37603121,2115928,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:55'),
 (837708,'all_recalculate.total_tanpa_penyusutan',18952228031,1070842515,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:55'),
 (837709,'all_recalculate.total_tanpa_penyusutan_perjam',37603628,2124688,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:55'),
 (837710,'all_recalculate.total_tanpa_mtc',18951972548,1066427696,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:55'),
 (837711,'all_recalculate.total_tanpa_mtc_perjam',37628451,2131385,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:55');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837712,'all_recalculate.id',374,377,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:55'),
 (837713,'all_recalculate.id_labor',29277339,78443945,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:55'),
 (837714,'all_recalculate.id_penyusutan',12766732,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:55'),
 (837715,'all_recalculate.id_mtc',255484,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:55'),
 (837716,'all_recalculate.id_bprodlain_insteadof_mtc',6688964,10622849,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:55'),
 (837717,'all_recalculate.id_gajilain',19743201,19743200,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:55'),
 (837718,'all_recalculate.id_bgoenjualan',3723662,3723662,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:55'),
 (837719,'all_recalculate.id_bau',75462053,75462052,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:55'),
 (837720,'all_recalculate.total_semua_biaya',18964994763,1381363371,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:55');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837721,'all_recalculate.total_semua_biaya_perjam',37628958,2740800,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:55'),
 (837722,'all_recalculate.total_tanpa_penyusutan_n_mtc',18951972548,761110460,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:55'),
 (837723,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',37603121,1510140,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:55'),
 (837724,'all_recalculate.total_tanpa_penyusutan',18952228031,1374369030,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:55'),
 (837725,'all_recalculate.total_tanpa_penyusutan_perjam',37603628,2726923,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:55'),
 (837726,'all_recalculate.total_tanpa_mtc',18951972548,761110460,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:55'),
 (837727,'all_recalculate.total_tanpa_mtc_perjam',37628451,1524017,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:55'),
 (837728,'all_recalculate.id',375,374,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:56');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837729,'all_recalculate.id_labor',106167107,29277339,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837730,'all_recalculate.id_penyusutan',615270924,0,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837731,'all_recalculate.id_mtc',8587236,0,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837732,'all_recalculate.id_bprodlain_insteadof_mtc',14151005,6688963,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837733,'all_recalculate.id_gajilain',19743201,19743200,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837734,'all_recalculate.id_bgoenjualan',3723662,3723662,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837735,'all_recalculate.id_bau',75462053,75462052,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837736,'all_recalculate.total_semua_biaya',6656123307,18964994762,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837737,'all_recalculate.total_semua_biaya_perjam',13206594,37628958,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:56');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837738,'all_recalculate.total_tanpa_penyusutan_n_mtc',6032265149,18951972548,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837739,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',11968781,37603120,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837740,'all_recalculate.total_tanpa_penyusutan',6040852384,18952228031,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837741,'all_recalculate.total_tanpa_penyusutan_perjam',11985819,37603627,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837742,'all_recalculate.total_tanpa_mtc',6032265149,18951972548,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837743,'all_recalculate.total_tanpa_mtc_perjam',13189556,37628451,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837744,'all_recalculate.id_labor',106167107,106167107,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837745,'all_recalculate.id_penyusutan',615270924,0,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:56');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837746,'all_recalculate.id_mtc',8587236,0,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837747,'all_recalculate.id_bprodlain_insteadof_mtc',14151005,14151004,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837748,'all_recalculate.id_gajilain',19743201,19743200,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837749,'all_recalculate.id_bgoenjualan',3723662,3723662,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837750,'all_recalculate.id_bau',75462053,75462052,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837751,'all_recalculate.total_semua_biaya',6656123307,6656123307,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837752,'all_recalculate.total_semua_biaya_perjam',13206594,13206594,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837753,'all_recalculate.total_tanpa_penyusutan_n_mtc',6032265149,6032265148,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837754,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',11968781,11968780,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:56');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837755,'all_recalculate.total_tanpa_penyusutan',6040852384,6040852384,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837756,'all_recalculate.total_tanpa_penyusutan_perjam',11985819,11985818,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837757,'all_recalculate.total_tanpa_mtc',6032265149,6032265148,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837758,'all_recalculate.total_tanpa_mtc_perjam',13189556,13189556,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837759,'all_recalculate.id',375,376,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837760,'all_recalculate.id_labor',106167107,78443945,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837761,'all_recalculate.id_penyusutan',615270924,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837762,'all_recalculate.id_mtc',8587236,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837763,'all_recalculate.id_bprodlain_insteadof_mtc',14151005,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:56');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837764,'all_recalculate.id_gajilain',19743201,19743200,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837765,'all_recalculate.id_bgoenjualan',3723662,3723662,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837766,'all_recalculate.id_bau',75462053,75462052,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837767,'all_recalculate.total_semua_biaya',6656123307,1078632707,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837768,'all_recalculate.total_semua_biaya_perjam',13206594,2140144,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837769,'all_recalculate.total_tanpa_penyusutan_n_mtc',6032265149,1066427696,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837770,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',11968781,2115928,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837771,'all_recalculate.total_tanpa_penyusutan',6040852384,1070842515,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:56');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837772,'all_recalculate.total_tanpa_penyusutan_perjam',11985819,2124688,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837773,'all_recalculate.total_tanpa_mtc',6032265149,1066427696,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837774,'all_recalculate.total_tanpa_mtc_perjam',13189556,2131385,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837775,'all_recalculate.id',375,377,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837776,'all_recalculate.id_labor',106167107,78443945,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837777,'all_recalculate.id_penyusutan',615270924,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837778,'all_recalculate.id_mtc',8587236,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837779,'all_recalculate.id_bprodlain_insteadof_mtc',14151005,10622849,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837780,'all_recalculate.id_gajilain',19743201,19743200,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:56');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837781,'all_recalculate.id_bgoenjualan',3723662,3723662,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837782,'all_recalculate.id_bau',75462053,75462052,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837783,'all_recalculate.total_semua_biaya',6656123307,1381363371,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837784,'all_recalculate.total_semua_biaya_perjam',13206594,2740800,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837785,'all_recalculate.total_tanpa_penyusutan_n_mtc',6032265149,761110460,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837786,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',11968781,1510140,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837787,'all_recalculate.total_tanpa_penyusutan',6040852384,1374369030,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837788,'all_recalculate.total_tanpa_penyusutan_perjam',11985819,2726923,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:56');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837789,'all_recalculate.total_tanpa_mtc',6032265149,761110460,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837790,'all_recalculate.total_tanpa_mtc_perjam',13189556,1524017,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837791,'all_recalculate.id',376,374,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837792,'all_recalculate.id_labor',78443946,29277339,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837793,'all_recalculate.id_penyusutan',7790192,0,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837794,'all_recalculate.id_mtc',4414819,0,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837795,'all_recalculate.id_bprodlain_insteadof_mtc',0,6688963,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837796,'all_recalculate.id_gajilain',19743201,19743200,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837797,'all_recalculate.id_bgoenjualan',3723662,3723662,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:56');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837798,'all_recalculate.id_bau',75462053,75462052,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837799,'all_recalculate.total_semua_biaya',1078632707,18964994762,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837800,'all_recalculate.total_semua_biaya_perjam',2140145,37628958,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837801,'all_recalculate.total_tanpa_penyusutan_n_mtc',1066427697,18951972548,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837802,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',2115928,37603120,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837803,'all_recalculate.total_tanpa_penyusutan',1070842516,18952228031,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837804,'all_recalculate.total_tanpa_penyusutan_perjam',2124688,37603627,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837805,'all_recalculate.total_tanpa_mtc',1066427697,18951972548,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:56');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837806,'all_recalculate.total_tanpa_mtc_perjam',2131385,37628451,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837807,'all_recalculate.id',376,375,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837808,'all_recalculate.id_labor',78443946,106167107,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837809,'all_recalculate.id_penyusutan',7790192,0,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837810,'all_recalculate.id_mtc',4414819,0,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837811,'all_recalculate.id_bprodlain_insteadof_mtc',0,14151004,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837812,'all_recalculate.id_gajilain',19743201,19743200,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837813,'all_recalculate.id_bgoenjualan',3723662,3723662,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837814,'all_recalculate.id_bau',75462053,75462052,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:56');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837815,'all_recalculate.total_semua_biaya',1078632707,6656123307,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837816,'all_recalculate.total_semua_biaya_perjam',2140145,13206594,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837817,'all_recalculate.total_tanpa_penyusutan_n_mtc',1066427697,6032265148,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837818,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',2115928,11968780,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837819,'all_recalculate.total_tanpa_penyusutan',1070842516,6040852384,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837820,'all_recalculate.total_tanpa_penyusutan_perjam',2124688,11985818,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837821,'all_recalculate.total_tanpa_mtc',1066427697,6032265148,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837822,'all_recalculate.total_tanpa_mtc_perjam',2131385,13189556,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:56');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837823,'all_recalculate.id_labor',78443946,78443945,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837824,'all_recalculate.id_penyusutan',7790192,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837825,'all_recalculate.id_mtc',4414819,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837826,'all_recalculate.id_gajilain',19743201,19743200,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837827,'all_recalculate.id_bgoenjualan',3723662,3723662,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837828,'all_recalculate.id_bau',75462053,75462052,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837829,'all_recalculate.total_semua_biaya',1078632707,1078632707,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837830,'all_recalculate.total_semua_biaya_perjam',2140145,2140144,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837831,'all_recalculate.total_tanpa_penyusutan_n_mtc',1066427697,1066427696,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:56');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837832,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',2115928,2115928,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837833,'all_recalculate.total_tanpa_penyusutan',1070842516,1070842515,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837834,'all_recalculate.total_tanpa_penyusutan_perjam',2124688,2124688,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837835,'all_recalculate.total_tanpa_mtc',1066427697,1066427696,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837836,'all_recalculate.total_tanpa_mtc_perjam',2131385,2131385,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837837,'all_recalculate.id',376,377,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837838,'all_recalculate.id_labor',78443946,78443945,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837839,'all_recalculate.id_penyusutan',7790192,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:56');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837840,'all_recalculate.id_mtc',4414819,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837841,'all_recalculate.id_bprodlain_insteadof_mtc',0,10622849,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837842,'all_recalculate.id_gajilain',19743201,19743200,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837843,'all_recalculate.id_bgoenjualan',3723662,3723662,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837844,'all_recalculate.id_bau',75462053,75462052,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837845,'all_recalculate.total_semua_biaya',1078632707,1381363371,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837846,'all_recalculate.total_semua_biaya_perjam',2140145,2740800,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837847,'all_recalculate.total_tanpa_penyusutan_n_mtc',1066427697,761110460,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837848,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',2115928,1510140,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:56');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837849,'all_recalculate.total_tanpa_penyusutan',1070842516,1374369030,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837850,'all_recalculate.total_tanpa_penyusutan_perjam',2124688,2726923,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837851,'all_recalculate.total_tanpa_mtc',1066427697,761110460,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837852,'all_recalculate.total_tanpa_mtc_perjam',2131385,1524017,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:56'),
 (837853,'all_recalculate.id',377,374,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:57'),
 (837854,'all_recalculate.id_labor',78443946,29277339,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:57'),
 (837855,'all_recalculate.id_penyusutan',6994342,0,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:57'),
 (837856,'all_recalculate.id_mtc',613258570,0,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:57'),
 (837857,'all_recalculate.id_bprodlain_insteadof_mtc',10622849,6688963,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:57');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837858,'all_recalculate.id_gajilain',19743201,19743200,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:57'),
 (837859,'all_recalculate.id_bgoenjualan',3723662,3723662,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:57'),
 (837860,'all_recalculate.id_bau',75462053,75462052,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:57'),
 (837861,'all_recalculate.total_semua_biaya',1381363372,18964994762,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:57'),
 (837862,'all_recalculate.total_semua_biaya_perjam',2740801,37628958,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:57'),
 (837863,'all_recalculate.total_tanpa_penyusutan_n_mtc',761110461,18951972548,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:57'),
 (837864,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',1510140,37603120,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:57'),
 (837865,'all_recalculate.total_tanpa_penyusutan',1374369030,18952228031,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:57');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837866,'all_recalculate.total_tanpa_penyusutan_perjam',2726923,37603627,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:57'),
 (837867,'all_recalculate.total_tanpa_mtc',761110461,18951972548,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:57'),
 (837868,'all_recalculate.total_tanpa_mtc_perjam',1524018,37628451,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 13:57:57'),
 (837869,'all_recalculate.id',377,375,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:57'),
 (837870,'all_recalculate.id_labor',78443946,106167107,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:57'),
 (837871,'all_recalculate.id_penyusutan',6994342,0,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:57'),
 (837872,'all_recalculate.id_mtc',613258570,0,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:57'),
 (837873,'all_recalculate.id_bprodlain_insteadof_mtc',10622849,14151004,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:57'),
 (837874,'all_recalculate.id_gajilain',19743201,19743200,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:57');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837875,'all_recalculate.id_bgoenjualan',3723662,3723662,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:57'),
 (837876,'all_recalculate.id_bau',75462053,75462052,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:57'),
 (837877,'all_recalculate.total_semua_biaya',1381363372,6656123307,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:57'),
 (837878,'all_recalculate.total_semua_biaya_perjam',2740801,13206594,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:57'),
 (837879,'all_recalculate.total_tanpa_penyusutan_n_mtc',761110461,6032265148,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:57'),
 (837880,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',1510140,11968780,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:57'),
 (837881,'all_recalculate.total_tanpa_penyusutan',1374369030,6040852384,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:57'),
 (837882,'all_recalculate.total_tanpa_penyusutan_perjam',2726923,11985818,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:57');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837883,'all_recalculate.total_tanpa_mtc',761110461,6032265148,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:57'),
 (837884,'all_recalculate.total_tanpa_mtc_perjam',1524018,13189556,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 13:57:57'),
 (837885,'all_recalculate.id',377,376,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:57'),
 (837886,'all_recalculate.id_labor',78443946,78443945,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:57'),
 (837887,'all_recalculate.id_penyusutan',6994342,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:57'),
 (837888,'all_recalculate.id_mtc',613258570,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:57'),
 (837889,'all_recalculate.id_bprodlain_insteadof_mtc',10622849,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:57'),
 (837890,'all_recalculate.id_gajilain',19743201,19743200,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:57'),
 (837891,'all_recalculate.id_bgoenjualan',3723662,3723662,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:57');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837892,'all_recalculate.id_bau',75462053,75462052,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:57'),
 (837893,'all_recalculate.total_semua_biaya',1381363372,1078632707,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:57'),
 (837894,'all_recalculate.total_semua_biaya_perjam',2740801,2140144,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:57'),
 (837895,'all_recalculate.total_tanpa_penyusutan_n_mtc',761110461,1066427696,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:57'),
 (837896,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',1510140,2115928,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:57'),
 (837897,'all_recalculate.total_tanpa_penyusutan',1374369030,1070842515,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:57'),
 (837898,'all_recalculate.total_tanpa_penyusutan_perjam',2726923,2124688,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:57'),
 (837899,'all_recalculate.total_tanpa_mtc',761110461,1066427696,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:57');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837900,'all_recalculate.total_tanpa_mtc_perjam',1524018,2131385,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 13:57:57'),
 (837901,'all_recalculate.id_labor',78443946,78443945,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:57'),
 (837902,'all_recalculate.id_penyusutan',6994342,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:57'),
 (837903,'all_recalculate.id_mtc',613258570,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:57'),
 (837904,'all_recalculate.id_bprodlain_insteadof_mtc',10622849,10622849,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:57'),
 (837905,'all_recalculate.id_gajilain',19743201,19743200,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:57'),
 (837906,'all_recalculate.id_bgoenjualan',3723662,3723662,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:57'),
 (837907,'all_recalculate.id_bau',75462053,75462052,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:57'),
 (837908,'all_recalculate.total_semua_biaya',1381363372,1381363371,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:57');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837909,'all_recalculate.total_semua_biaya_perjam',2740801,2740800,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:57'),
 (837910,'all_recalculate.total_tanpa_penyusutan_n_mtc',761110461,761110460,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:57'),
 (837911,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',1510140,1510140,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:57'),
 (837912,'all_recalculate.total_tanpa_penyusutan',1374369030,1374369030,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:57'),
 (837913,'all_recalculate.total_tanpa_penyusutan_perjam',2726923,2726923,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:57'),
 (837914,'all_recalculate.total_tanpa_mtc',761110461,761110460,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:57'),
 (837915,'all_recalculate.total_tanpa_mtc_perjam',1524018,1524017,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 13:57:57'),
 (837916,'all_recalculate.id_labor',29277339,29277339,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:27');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837917,'all_recalculate.id_penyusutan',12766732,0,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:27'),
 (837918,'all_recalculate.id_mtc',255484,0,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:27'),
 (837919,'all_recalculate.id_bprodlain_insteadof_mtc',6688964,6688963,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:27'),
 (837920,'all_recalculate.id_gajilain',19743201,19743200,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:27'),
 (837921,'all_recalculate.id_bgoenjualan',3723662,3723662,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:27'),
 (837922,'all_recalculate.id_bau',75462053,75462052,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:27'),
 (837923,'all_recalculate.total_semua_biaya',18964994763,18964994762,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:27'),
 (837924,'all_recalculate.total_semua_biaya_perjam',37628958,37628958,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:27'),
 (837925,'all_recalculate.total_tanpa_penyusutan_n_mtc',18951972548,18951972548,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:27');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837926,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',37603121,37603120,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:27'),
 (837927,'all_recalculate.total_tanpa_penyusutan',18952228031,18952228031,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:27'),
 (837928,'all_recalculate.total_tanpa_penyusutan_perjam',37603628,37603627,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:27'),
 (837929,'all_recalculate.total_tanpa_mtc',18951972548,18951972548,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:27'),
 (837930,'all_recalculate.total_tanpa_mtc_perjam',37628451,37628451,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:27'),
 (837931,'all_recalculate.id',374,375,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:27'),
 (837932,'all_recalculate.id_labor',29277339,106167107,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:27'),
 (837933,'all_recalculate.id_penyusutan',12766732,0,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:27');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837934,'all_recalculate.id_mtc',255484,0,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:27'),
 (837935,'all_recalculate.id_bprodlain_insteadof_mtc',6688964,14151004,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:27'),
 (837936,'all_recalculate.id_gajilain',19743201,19743200,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:27'),
 (837937,'all_recalculate.id_bgoenjualan',3723662,3723662,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:27'),
 (837938,'all_recalculate.id_bau',75462053,75462052,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:27'),
 (837939,'all_recalculate.total_semua_biaya',18964994763,6656123307,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:27'),
 (837940,'all_recalculate.total_semua_biaya_perjam',37628958,13206594,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:27'),
 (837941,'all_recalculate.total_tanpa_penyusutan_n_mtc',18951972548,6032265148,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:27'),
 (837942,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',37603121,11968780,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:27');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837943,'all_recalculate.total_tanpa_penyusutan',18952228031,6040852384,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:27'),
 (837944,'all_recalculate.total_tanpa_penyusutan_perjam',37603628,11985818,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:27'),
 (837945,'all_recalculate.total_tanpa_mtc',18951972548,6032265148,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:27'),
 (837946,'all_recalculate.total_tanpa_mtc_perjam',37628451,13189556,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:27'),
 (837947,'all_recalculate.id',374,376,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:27'),
 (837948,'all_recalculate.id_labor',29277339,78443945,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:27'),
 (837949,'all_recalculate.id_penyusutan',12766732,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:27'),
 (837950,'all_recalculate.id_mtc',255484,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:27'),
 (837951,'all_recalculate.id_bprodlain_insteadof_mtc',6688964,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:27');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837952,'all_recalculate.id_gajilain',19743201,12339500,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:27'),
 (837953,'all_recalculate.id_bgoenjualan',3723662,2327289,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:27'),
 (837954,'all_recalculate.id_bau',75462053,47163783,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:27'),
 (837955,'all_recalculate.total_semua_biaya',18964994763,1041534364,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:27'),
 (837956,'all_recalculate.total_semua_biaya_perjam',37628958,2066536,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:27'),
 (837957,'all_recalculate.total_tanpa_penyusutan_n_mtc',18951972548,1029329354,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:27'),
 (837958,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',37603121,2042320,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:27'),
 (837959,'all_recalculate.total_tanpa_penyusutan',18952228031,1033744172,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:27');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837960,'all_recalculate.total_tanpa_penyusutan_perjam',37603628,2051080,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:27'),
 (837961,'all_recalculate.total_tanpa_mtc',18951972548,1029329354,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:27'),
 (837962,'all_recalculate.total_tanpa_mtc_perjam',37628451,2057777,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:27'),
 (837963,'all_recalculate.id',374,377,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:27'),
 (837964,'all_recalculate.id_labor',29277339,78443945,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:27'),
 (837965,'all_recalculate.id_penyusutan',12766732,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:27'),
 (837966,'all_recalculate.id_mtc',255484,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:27'),
 (837967,'all_recalculate.id_bprodlain_insteadof_mtc',6688964,10622849,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:27'),
 (837968,'all_recalculate.id_gajilain',19743201,14807400,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:27');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837969,'all_recalculate.id_bgoenjualan',3723662,2792746,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:27'),
 (837970,'all_recalculate.id_bau',75462053,56596539,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:27'),
 (837971,'all_recalculate.total_semua_biaya',18964994763,1356631143,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:27'),
 (837972,'all_recalculate.total_semua_biaya_perjam',37628958,2691728,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:27'),
 (837973,'all_recalculate.total_tanpa_penyusutan_n_mtc',18951972548,736378232,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:27'),
 (837974,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',37603121,1461068,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:27'),
 (837975,'all_recalculate.total_tanpa_penyusutan',18952228031,1349636801,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:27'),
 (837976,'all_recalculate.total_tanpa_penyusutan_perjam',37603628,2677851,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:27');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837977,'all_recalculate.total_tanpa_mtc',18951972548,736378232,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:27'),
 (837978,'all_recalculate.total_tanpa_mtc_perjam',37628451,1474946,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:27'),
 (837979,'all_recalculate.id',375,374,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (837980,'all_recalculate.id_labor',106167107,29277339,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (837981,'all_recalculate.id_penyusutan',615270924,0,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (837982,'all_recalculate.id_mtc',8587236,0,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (837983,'all_recalculate.id_bprodlain_insteadof_mtc',14151005,6688963,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (837984,'all_recalculate.id_gajilain',19743201,19743200,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (837985,'all_recalculate.id_bgoenjualan',3723662,3723662,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:28');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837986,'all_recalculate.id_bau',75462053,75462052,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (837987,'all_recalculate.total_semua_biaya',6656123307,18964994762,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (837988,'all_recalculate.total_semua_biaya_perjam',13206594,37628958,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (837989,'all_recalculate.total_tanpa_penyusutan_n_mtc',6032265149,18951972548,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (837990,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',11968781,37603120,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (837991,'all_recalculate.total_tanpa_penyusutan',6040852384,18952228031,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (837992,'all_recalculate.total_tanpa_penyusutan_perjam',11985819,37603627,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (837993,'all_recalculate.total_tanpa_mtc',6032265149,18951972548,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:28');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (837994,'all_recalculate.total_tanpa_mtc_perjam',13189556,37628451,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (837995,'all_recalculate.id_labor',106167107,106167107,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (837996,'all_recalculate.id_penyusutan',615270924,0,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (837997,'all_recalculate.id_mtc',8587236,0,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (837998,'all_recalculate.id_bprodlain_insteadof_mtc',14151005,14151004,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (837999,'all_recalculate.id_gajilain',19743201,19743200,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838000,'all_recalculate.id_bgoenjualan',3723662,3723662,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838001,'all_recalculate.id_bau',75462053,75462052,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838002,'all_recalculate.total_semua_biaya',6656123307,6656123307,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:28');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838003,'all_recalculate.total_semua_biaya_perjam',13206594,13206594,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838004,'all_recalculate.total_tanpa_penyusutan_n_mtc',6032265149,6032265148,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838005,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',11968781,11968780,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838006,'all_recalculate.total_tanpa_penyusutan',6040852384,6040852384,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838007,'all_recalculate.total_tanpa_penyusutan_perjam',11985819,11985818,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838008,'all_recalculate.total_tanpa_mtc',6032265149,6032265148,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838009,'all_recalculate.total_tanpa_mtc_perjam',13189556,13189556,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838010,'all_recalculate.id',375,376,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:28');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838011,'all_recalculate.id_labor',106167107,78443945,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838012,'all_recalculate.id_penyusutan',615270924,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838013,'all_recalculate.id_mtc',8587236,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838014,'all_recalculate.id_bprodlain_insteadof_mtc',14151005,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838015,'all_recalculate.id_gajilain',19743201,12339500,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838016,'all_recalculate.id_bgoenjualan',3723662,2327289,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838017,'all_recalculate.id_bau',75462053,47163783,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838018,'all_recalculate.total_semua_biaya',6656123307,1041534364,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838019,'all_recalculate.total_semua_biaya_perjam',13206594,2066536,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:28');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838020,'all_recalculate.total_tanpa_penyusutan_n_mtc',6032265149,1029329354,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838021,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',11968781,2042320,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838022,'all_recalculate.total_tanpa_penyusutan',6040852384,1033744172,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838023,'all_recalculate.total_tanpa_penyusutan_perjam',11985819,2051080,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838024,'all_recalculate.total_tanpa_mtc',6032265149,1029329354,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838025,'all_recalculate.total_tanpa_mtc_perjam',13189556,2057777,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838026,'all_recalculate.id',375,377,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838027,'all_recalculate.id_labor',106167107,78443945,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:28');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838028,'all_recalculate.id_penyusutan',615270924,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838029,'all_recalculate.id_mtc',8587236,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838030,'all_recalculate.id_bprodlain_insteadof_mtc',14151005,10622849,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838031,'all_recalculate.id_gajilain',19743201,14807400,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838032,'all_recalculate.id_bgoenjualan',3723662,2792746,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838033,'all_recalculate.id_bau',75462053,56596539,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838034,'all_recalculate.total_semua_biaya',6656123307,1356631143,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838035,'all_recalculate.total_semua_biaya_perjam',13206594,2691728,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838036,'all_recalculate.total_tanpa_penyusutan_n_mtc',6032265149,736378232,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:28');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838037,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',11968781,1461068,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838038,'all_recalculate.total_tanpa_penyusutan',6040852384,1349636801,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838039,'all_recalculate.total_tanpa_penyusutan_perjam',11985819,2677851,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838040,'all_recalculate.total_tanpa_mtc',6032265149,736378232,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838041,'all_recalculate.total_tanpa_mtc_perjam',13189556,1474946,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838042,'all_recalculate.id',376,374,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838043,'all_recalculate.id_labor',78443946,29277339,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838044,'all_recalculate.id_penyusutan',7790192,0,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:28');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838045,'all_recalculate.id_mtc',4414819,0,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838046,'all_recalculate.id_bprodlain_insteadof_mtc',0,6688963,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838047,'all_recalculate.id_gajilain',19743201,19743200,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838048,'all_recalculate.id_bgoenjualan',3723662,3723662,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838049,'all_recalculate.id_bau',75462053,75462052,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838050,'all_recalculate.total_semua_biaya',1078632707,18964994762,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838051,'all_recalculate.total_semua_biaya_perjam',2140145,37628958,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838052,'all_recalculate.total_tanpa_penyusutan_n_mtc',1066427697,18951972548,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838053,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',2115928,37603120,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:28');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838054,'all_recalculate.total_tanpa_penyusutan',1070842516,18952228031,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838055,'all_recalculate.total_tanpa_penyusutan_perjam',2124688,37603627,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838056,'all_recalculate.total_tanpa_mtc',1066427697,18951972548,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838057,'all_recalculate.total_tanpa_mtc_perjam',2131385,37628451,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838058,'all_recalculate.id',376,375,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838059,'all_recalculate.id_labor',78443946,106167107,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838060,'all_recalculate.id_penyusutan',7790192,0,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838061,'all_recalculate.id_mtc',4414819,0,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838062,'all_recalculate.id_bprodlain_insteadof_mtc',0,14151004,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:28');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838063,'all_recalculate.id_gajilain',19743201,19743200,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838064,'all_recalculate.id_bgoenjualan',3723662,3723662,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838065,'all_recalculate.id_bau',75462053,75462052,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838066,'all_recalculate.total_semua_biaya',1078632707,6656123307,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838067,'all_recalculate.total_semua_biaya_perjam',2140145,13206594,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838068,'all_recalculate.total_tanpa_penyusutan_n_mtc',1066427697,6032265148,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838069,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',2115928,11968780,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838070,'all_recalculate.total_tanpa_penyusutan',1070842516,6040852384,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:28');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838071,'all_recalculate.total_tanpa_penyusutan_perjam',2124688,11985818,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838072,'all_recalculate.total_tanpa_mtc',1066427697,6032265148,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838073,'all_recalculate.total_tanpa_mtc_perjam',2131385,13189556,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838074,'all_recalculate.id_labor',78443946,78443945,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838075,'all_recalculate.id_penyusutan',7790192,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838076,'all_recalculate.id_mtc',4414819,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838077,'all_recalculate.id_gajilain',19743201,12339500,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838078,'all_recalculate.id_bgoenjualan',3723662,2327289,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838079,'all_recalculate.id_bau',75462053,47163783,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:28');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838080,'all_recalculate.total_semua_biaya',1078632707,1041534364,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838081,'all_recalculate.total_semua_biaya_perjam',2140145,2066536,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838082,'all_recalculate.total_tanpa_penyusutan_n_mtc',1066427697,1029329354,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838083,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',2115928,2042320,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838084,'all_recalculate.total_tanpa_penyusutan',1070842516,1033744172,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838085,'all_recalculate.total_tanpa_penyusutan_perjam',2124688,2051080,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838086,'all_recalculate.total_tanpa_mtc',1066427697,1029329354,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838087,'all_recalculate.total_tanpa_mtc_perjam',2131385,2057777,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:28');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838088,'all_recalculate.id',376,377,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838089,'all_recalculate.id_labor',78443946,78443945,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838090,'all_recalculate.id_penyusutan',7790192,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838091,'all_recalculate.id_mtc',4414819,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838092,'all_recalculate.id_bprodlain_insteadof_mtc',0,10622849,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838093,'all_recalculate.id_gajilain',19743201,14807400,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838094,'all_recalculate.id_bgoenjualan',3723662,2792746,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838095,'all_recalculate.id_bau',75462053,56596539,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838096,'all_recalculate.total_semua_biaya',1078632707,1356631143,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:28');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838097,'all_recalculate.total_semua_biaya_perjam',2140145,2691728,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838098,'all_recalculate.total_tanpa_penyusutan_n_mtc',1066427697,736378232,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838099,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',2115928,1461068,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838100,'all_recalculate.total_tanpa_penyusutan',1070842516,1349636801,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838101,'all_recalculate.total_tanpa_penyusutan_perjam',2124688,2677851,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838102,'all_recalculate.total_tanpa_mtc',1066427697,736378232,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838103,'all_recalculate.total_tanpa_mtc_perjam',2131385,1474946,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:28'),
 (838104,'all_recalculate.id',377,374,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:29');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838105,'all_recalculate.id_labor',78443946,29277339,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:29'),
 (838106,'all_recalculate.id_penyusutan',6994342,0,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:29'),
 (838107,'all_recalculate.id_mtc',613258570,0,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:29'),
 (838108,'all_recalculate.id_bprodlain_insteadof_mtc',10622849,6688963,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:29'),
 (838109,'all_recalculate.id_gajilain',19743201,19743200,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:29'),
 (838110,'all_recalculate.id_bgoenjualan',3723662,3723662,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:29'),
 (838111,'all_recalculate.id_bau',75462053,75462052,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:29'),
 (838112,'all_recalculate.total_semua_biaya',1381363372,18964994762,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:29'),
 (838113,'all_recalculate.total_semua_biaya_perjam',2740801,37628958,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:29');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838114,'all_recalculate.total_tanpa_penyusutan_n_mtc',761110461,18951972548,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:29'),
 (838115,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',1510140,37603120,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:29'),
 (838116,'all_recalculate.total_tanpa_penyusutan',1374369030,18952228031,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:29'),
 (838117,'all_recalculate.total_tanpa_penyusutan_perjam',2726923,37603627,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:29'),
 (838118,'all_recalculate.total_tanpa_mtc',761110461,18951972548,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:29'),
 (838119,'all_recalculate.total_tanpa_mtc_perjam',1524018,37628451,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:08:29'),
 (838120,'all_recalculate.id',377,375,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:29'),
 (838121,'all_recalculate.id_labor',78443946,106167107,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:29');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838122,'all_recalculate.id_penyusutan',6994342,0,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:29'),
 (838123,'all_recalculate.id_mtc',613258570,0,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:29'),
 (838124,'all_recalculate.id_bprodlain_insteadof_mtc',10622849,14151004,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:29'),
 (838125,'all_recalculate.id_gajilain',19743201,19743200,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:29'),
 (838126,'all_recalculate.id_bgoenjualan',3723662,3723662,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:29'),
 (838127,'all_recalculate.id_bau',75462053,75462052,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:29'),
 (838128,'all_recalculate.total_semua_biaya',1381363372,6656123307,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:29'),
 (838129,'all_recalculate.total_semua_biaya_perjam',2740801,13206594,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:29'),
 (838130,'all_recalculate.total_tanpa_penyusutan_n_mtc',761110461,6032265148,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:29');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838131,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',1510140,11968780,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:29'),
 (838132,'all_recalculate.total_tanpa_penyusutan',1374369030,6040852384,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:29'),
 (838133,'all_recalculate.total_tanpa_penyusutan_perjam',2726923,11985818,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:29'),
 (838134,'all_recalculate.total_tanpa_mtc',761110461,6032265148,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:29'),
 (838135,'all_recalculate.total_tanpa_mtc_perjam',1524018,13189556,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:08:29'),
 (838136,'all_recalculate.id',377,376,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:29'),
 (838137,'all_recalculate.id_labor',78443946,78443945,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:29'),
 (838138,'all_recalculate.id_penyusutan',6994342,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:29');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838139,'all_recalculate.id_mtc',613258570,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:29'),
 (838140,'all_recalculate.id_bprodlain_insteadof_mtc',10622849,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:29'),
 (838141,'all_recalculate.id_gajilain',19743201,12339500,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:29'),
 (838142,'all_recalculate.id_bgoenjualan',3723662,2327289,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:29'),
 (838143,'all_recalculate.id_bau',75462053,47163783,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:29'),
 (838144,'all_recalculate.total_semua_biaya',1381363372,1041534364,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:29'),
 (838145,'all_recalculate.total_semua_biaya_perjam',2740801,2066536,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:29'),
 (838146,'all_recalculate.total_tanpa_penyusutan_n_mtc',761110461,1029329354,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:29'),
 (838147,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',1510140,2042320,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:29');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838148,'all_recalculate.total_tanpa_penyusutan',1374369030,1033744172,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:29'),
 (838149,'all_recalculate.total_tanpa_penyusutan_perjam',2726923,2051080,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:29'),
 (838150,'all_recalculate.total_tanpa_mtc',761110461,1029329354,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:29'),
 (838151,'all_recalculate.total_tanpa_mtc_perjam',1524018,2057777,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:08:29'),
 (838152,'all_recalculate.id_labor',78443946,78443945,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:29'),
 (838153,'all_recalculate.id_penyusutan',6994342,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:29'),
 (838154,'all_recalculate.id_mtc',613258570,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:29'),
 (838155,'all_recalculate.id_bprodlain_insteadof_mtc',10622849,10622849,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:29'),
 (838156,'all_recalculate.id_gajilain',19743201,14807400,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:29');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838157,'all_recalculate.id_bgoenjualan',3723662,2792746,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:29'),
 (838158,'all_recalculate.id_bau',75462053,56596539,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:29'),
 (838159,'all_recalculate.total_semua_biaya',1381363372,1356631143,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:29'),
 (838160,'all_recalculate.total_semua_biaya_perjam',2740801,2691728,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:29'),
 (838161,'all_recalculate.total_tanpa_penyusutan_n_mtc',761110461,736378232,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:29'),
 (838162,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',1510140,1461068,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:29'),
 (838163,'all_recalculate.total_tanpa_penyusutan',1374369030,1349636801,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:29'),
 (838164,'all_recalculate.total_tanpa_penyusutan_perjam',2726923,2677851,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:29');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838165,'all_recalculate.total_tanpa_mtc',761110461,736378232,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:29'),
 (838166,'all_recalculate.total_tanpa_mtc_perjam',1524018,1474946,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:08:29'),
 (838167,'all_recalculate.id_labor',29277339,29277339,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:07'),
 (838168,'all_recalculate.id_penyusutan',12766732,0,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:07'),
 (838169,'all_recalculate.id_mtc',255484,255483,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:07'),
 (838170,'all_recalculate.id_bprodlain_insteadof_mtc',6688964,6688963,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:07'),
 (838171,'all_recalculate.id_gajilain',19743201,19743200,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:07'),
 (838172,'all_recalculate.id_bgoenjualan',3723662,3723662,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:07'),
 (838173,'all_recalculate.id_bau',75462053,75462052,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:07');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838174,'all_recalculate.total_semua_biaya',18964994763,18964994762,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:07'),
 (838175,'all_recalculate.total_semua_biaya_perjam',37628958,37628958,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:07'),
 (838176,'all_recalculate.total_tanpa_penyusutan_n_mtc',18951972548,18951972548,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:07'),
 (838177,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',37603121,37603120,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:07'),
 (838178,'all_recalculate.total_tanpa_penyusutan',18952228031,18952228031,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:07'),
 (838179,'all_recalculate.total_tanpa_penyusutan_perjam',37603628,37603627,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:07'),
 (838180,'all_recalculate.total_tanpa_mtc',18951972548,18951972548,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:07'),
 (838181,'all_recalculate.total_tanpa_mtc_perjam',37628451,37628451,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:07');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838182,'all_recalculate.id',374,375,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:07'),
 (838183,'all_recalculate.id_labor',29277339,106167107,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:07'),
 (838184,'all_recalculate.id_penyusutan',12766732,0,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:07'),
 (838185,'all_recalculate.id_mtc',255484,8587236,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:07'),
 (838186,'all_recalculate.id_bprodlain_insteadof_mtc',6688964,14151004,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:07'),
 (838187,'all_recalculate.id_gajilain',19743201,19743200,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:07'),
 (838188,'all_recalculate.id_bgoenjualan',3723662,3723662,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:07'),
 (838189,'all_recalculate.id_bau',75462053,75462052,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:07'),
 (838190,'all_recalculate.total_semua_biaya',18964994763,6656123307,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:07');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838191,'all_recalculate.total_semua_biaya_perjam',37628958,13206594,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:07'),
 (838192,'all_recalculate.total_tanpa_penyusutan_n_mtc',18951972548,6032265148,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:07'),
 (838193,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',37603121,11968780,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:07'),
 (838194,'all_recalculate.total_tanpa_penyusutan',18952228031,6040852384,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:07'),
 (838195,'all_recalculate.total_tanpa_penyusutan_perjam',37603628,11985818,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:07'),
 (838196,'all_recalculate.total_tanpa_mtc',18951972548,6032265148,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:07'),
 (838197,'all_recalculate.total_tanpa_mtc_perjam',37628451,13189556,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:07'),
 (838198,'all_recalculate.id',374,376,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:07');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838199,'all_recalculate.id_labor',29277339,78443945,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:07'),
 (838200,'all_recalculate.id_penyusutan',12766732,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:07'),
 (838201,'all_recalculate.id_mtc',255484,4414819,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:07'),
 (838202,'all_recalculate.id_bprodlain_insteadof_mtc',6688964,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:07'),
 (838203,'all_recalculate.id_gajilain',19743201,12339500,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:07'),
 (838204,'all_recalculate.id_bgoenjualan',3723662,2327289,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:07'),
 (838205,'all_recalculate.id_bau',75462053,47163783,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:07'),
 (838206,'all_recalculate.total_semua_biaya',18964994763,1041534364,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:07'),
 (838207,'all_recalculate.total_semua_biaya_perjam',37628958,2066536,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:07');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838208,'all_recalculate.total_tanpa_penyusutan_n_mtc',18951972548,1029329354,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:07'),
 (838209,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',37603121,2042320,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:07'),
 (838210,'all_recalculate.total_tanpa_penyusutan',18952228031,1033744172,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:07'),
 (838211,'all_recalculate.total_tanpa_penyusutan_perjam',37603628,2051080,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:07'),
 (838212,'all_recalculate.total_tanpa_mtc',18951972548,1029329354,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:07'),
 (838213,'all_recalculate.total_tanpa_mtc_perjam',37628451,2057777,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:07'),
 (838214,'all_recalculate.id',374,377,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:07'),
 (838215,'all_recalculate.id_labor',29277339,78443945,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:07');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838216,'all_recalculate.id_penyusutan',12766732,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:07'),
 (838217,'all_recalculate.id_mtc',255484,613258569,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:07'),
 (838218,'all_recalculate.id_bprodlain_insteadof_mtc',6688964,10622849,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:07'),
 (838219,'all_recalculate.id_gajilain',19743201,14807400,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:07'),
 (838220,'all_recalculate.id_bgoenjualan',3723662,2792746,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:07'),
 (838221,'all_recalculate.id_bau',75462053,56596539,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:07'),
 (838222,'all_recalculate.total_semua_biaya',18964994763,1356631143,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:07'),
 (838223,'all_recalculate.total_semua_biaya_perjam',37628958,2691728,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:07'),
 (838224,'all_recalculate.total_tanpa_penyusutan_n_mtc',18951972548,736378232,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:07');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838225,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',37603121,1461068,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:07'),
 (838226,'all_recalculate.total_tanpa_penyusutan',18952228031,1349636801,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:07'),
 (838227,'all_recalculate.total_tanpa_penyusutan_perjam',37603628,2677851,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:07'),
 (838228,'all_recalculate.total_tanpa_mtc',18951972548,736378232,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:07'),
 (838229,'all_recalculate.total_tanpa_mtc_perjam',37628451,1474946,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:07'),
 (838230,'all_recalculate.id',375,374,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838231,'all_recalculate.id_labor',106167107,29277339,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838232,'all_recalculate.id_penyusutan',615270924,0,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:08');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838233,'all_recalculate.id_mtc',8587236,255483,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838234,'all_recalculate.id_bprodlain_insteadof_mtc',14151005,6688963,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838235,'all_recalculate.id_gajilain',19743201,19743200,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838236,'all_recalculate.id_bgoenjualan',3723662,3723662,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838237,'all_recalculate.id_bau',75462053,75462052,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838238,'all_recalculate.total_semua_biaya',6656123307,18964994762,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838239,'all_recalculate.total_semua_biaya_perjam',13206594,37628958,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838240,'all_recalculate.total_tanpa_penyusutan_n_mtc',6032265149,18951972548,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838241,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',11968781,37603120,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:08');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838242,'all_recalculate.total_tanpa_penyusutan',6040852384,18952228031,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838243,'all_recalculate.total_tanpa_penyusutan_perjam',11985819,37603627,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838244,'all_recalculate.total_tanpa_mtc',6032265149,18951972548,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838245,'all_recalculate.total_tanpa_mtc_perjam',13189556,37628451,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838246,'all_recalculate.id_labor',106167107,106167107,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838247,'all_recalculate.id_penyusutan',615270924,0,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838248,'all_recalculate.id_mtc',8587236,8587236,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838249,'all_recalculate.id_bprodlain_insteadof_mtc',14151005,14151004,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:08');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838250,'all_recalculate.id_gajilain',19743201,19743200,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838251,'all_recalculate.id_bgoenjualan',3723662,3723662,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838252,'all_recalculate.id_bau',75462053,75462052,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838253,'all_recalculate.total_semua_biaya',6656123307,6656123307,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838254,'all_recalculate.total_semua_biaya_perjam',13206594,13206594,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838255,'all_recalculate.total_tanpa_penyusutan_n_mtc',6032265149,6032265148,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838256,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',11968781,11968780,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838257,'all_recalculate.total_tanpa_penyusutan',6040852384,6040852384,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:08');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838258,'all_recalculate.total_tanpa_penyusutan_perjam',11985819,11985818,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838259,'all_recalculate.total_tanpa_mtc',6032265149,6032265148,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838260,'all_recalculate.total_tanpa_mtc_perjam',13189556,13189556,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838261,'all_recalculate.id',375,376,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838262,'all_recalculate.id_labor',106167107,78443945,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838263,'all_recalculate.id_penyusutan',615270924,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838264,'all_recalculate.id_mtc',8587236,4414819,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838265,'all_recalculate.id_bprodlain_insteadof_mtc',14151005,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838266,'all_recalculate.id_gajilain',19743201,12339500,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:08');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838267,'all_recalculate.id_bgoenjualan',3723662,2327289,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838268,'all_recalculate.id_bau',75462053,47163783,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838269,'all_recalculate.total_semua_biaya',6656123307,1041534364,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838270,'all_recalculate.total_semua_biaya_perjam',13206594,2066536,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838271,'all_recalculate.total_tanpa_penyusutan_n_mtc',6032265149,1029329354,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838272,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',11968781,2042320,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838273,'all_recalculate.total_tanpa_penyusutan',6040852384,1033744172,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838274,'all_recalculate.total_tanpa_penyusutan_perjam',11985819,2051080,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:08');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838275,'all_recalculate.total_tanpa_mtc',6032265149,1029329354,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838276,'all_recalculate.total_tanpa_mtc_perjam',13189556,2057777,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838277,'all_recalculate.id',375,377,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838278,'all_recalculate.id_labor',106167107,78443945,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838279,'all_recalculate.id_penyusutan',615270924,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838280,'all_recalculate.id_mtc',8587236,613258569,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838281,'all_recalculate.id_bprodlain_insteadof_mtc',14151005,10622849,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838282,'all_recalculate.id_gajilain',19743201,14807400,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838283,'all_recalculate.id_bgoenjualan',3723662,2792746,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:08');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838284,'all_recalculate.id_bau',75462053,56596539,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838285,'all_recalculate.total_semua_biaya',6656123307,1356631143,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838286,'all_recalculate.total_semua_biaya_perjam',13206594,2691728,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838287,'all_recalculate.total_tanpa_penyusutan_n_mtc',6032265149,736378232,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838288,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',11968781,1461068,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838289,'all_recalculate.total_tanpa_penyusutan',6040852384,1349636801,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838290,'all_recalculate.total_tanpa_penyusutan_perjam',11985819,2677851,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838291,'all_recalculate.total_tanpa_mtc',6032265149,736378232,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:08');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838292,'all_recalculate.total_tanpa_mtc_perjam',13189556,1474946,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838293,'all_recalculate.id',376,374,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838294,'all_recalculate.id_labor',78443946,29277339,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838295,'all_recalculate.id_penyusutan',7790192,0,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838296,'all_recalculate.id_mtc',4414819,255483,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838297,'all_recalculate.id_bprodlain_insteadof_mtc',0,6688963,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838298,'all_recalculate.id_gajilain',19743201,19743200,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838299,'all_recalculate.id_bgoenjualan',3723662,3723662,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838300,'all_recalculate.id_bau',75462053,75462052,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:08');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838301,'all_recalculate.total_semua_biaya',1078632707,18964994762,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838302,'all_recalculate.total_semua_biaya_perjam',2140145,37628958,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838303,'all_recalculate.total_tanpa_penyusutan_n_mtc',1066427697,18951972548,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838304,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',2115928,37603120,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838305,'all_recalculate.total_tanpa_penyusutan',1070842516,18952228031,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838306,'all_recalculate.total_tanpa_penyusutan_perjam',2124688,37603627,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838307,'all_recalculate.total_tanpa_mtc',1066427697,18951972548,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838308,'all_recalculate.total_tanpa_mtc_perjam',2131385,37628451,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:08');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838309,'all_recalculate.id',376,375,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838310,'all_recalculate.id_labor',78443946,106167107,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838311,'all_recalculate.id_penyusutan',7790192,0,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838312,'all_recalculate.id_mtc',4414819,8587236,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838313,'all_recalculate.id_bprodlain_insteadof_mtc',0,14151004,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838314,'all_recalculate.id_gajilain',19743201,19743200,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838315,'all_recalculate.id_bgoenjualan',3723662,3723662,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838316,'all_recalculate.id_bau',75462053,75462052,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838317,'all_recalculate.total_semua_biaya',1078632707,6656123307,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:08');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838318,'all_recalculate.total_semua_biaya_perjam',2140145,13206594,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838319,'all_recalculate.total_tanpa_penyusutan_n_mtc',1066427697,6032265148,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838320,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',2115928,11968780,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838321,'all_recalculate.total_tanpa_penyusutan',1070842516,6040852384,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838322,'all_recalculate.total_tanpa_penyusutan_perjam',2124688,11985818,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838323,'all_recalculate.total_tanpa_mtc',1066427697,6032265148,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838324,'all_recalculate.total_tanpa_mtc_perjam',2131385,13189556,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838325,'all_recalculate.id_labor',78443946,78443945,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:08');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838326,'all_recalculate.id_penyusutan',7790192,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838327,'all_recalculate.id_mtc',4414819,4414819,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838328,'all_recalculate.id_gajilain',19743201,12339500,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838329,'all_recalculate.id_bgoenjualan',3723662,2327289,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838330,'all_recalculate.id_bau',75462053,47163783,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838331,'all_recalculate.total_semua_biaya',1078632707,1041534364,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838332,'all_recalculate.total_semua_biaya_perjam',2140145,2066536,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838333,'all_recalculate.total_tanpa_penyusutan_n_mtc',1066427697,1029329354,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838334,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',2115928,2042320,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:08');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838335,'all_recalculate.total_tanpa_penyusutan',1070842516,1033744172,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838336,'all_recalculate.total_tanpa_penyusutan_perjam',2124688,2051080,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838337,'all_recalculate.total_tanpa_mtc',1066427697,1029329354,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838338,'all_recalculate.total_tanpa_mtc_perjam',2131385,2057777,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838339,'all_recalculate.id',376,377,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838340,'all_recalculate.id_labor',78443946,78443945,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838341,'all_recalculate.id_penyusutan',7790192,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838342,'all_recalculate.id_mtc',4414819,613258569,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838343,'all_recalculate.id_bprodlain_insteadof_mtc',0,10622849,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:08');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838344,'all_recalculate.id_gajilain',19743201,14807400,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838345,'all_recalculate.id_bgoenjualan',3723662,2792746,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838346,'all_recalculate.id_bau',75462053,56596539,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838347,'all_recalculate.total_semua_biaya',1078632707,1356631143,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838348,'all_recalculate.total_semua_biaya_perjam',2140145,2691728,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838349,'all_recalculate.total_tanpa_penyusutan_n_mtc',1066427697,736378232,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838350,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',2115928,1461068,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838351,'all_recalculate.total_tanpa_penyusutan',1070842516,1349636801,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:08');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838352,'all_recalculate.total_tanpa_penyusutan_perjam',2124688,2677851,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838353,'all_recalculate.total_tanpa_mtc',1066427697,736378232,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838354,'all_recalculate.total_tanpa_mtc_perjam',2131385,1474946,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838355,'all_recalculate.id',377,374,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838356,'all_recalculate.id_labor',78443946,29277339,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838357,'all_recalculate.id_penyusutan',6994342,0,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838358,'all_recalculate.id_mtc',613258570,255483,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838359,'all_recalculate.id_bprodlain_insteadof_mtc',10622849,6688963,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838360,'all_recalculate.id_gajilain',19743201,19743200,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:08');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838361,'all_recalculate.id_bgoenjualan',3723662,3723662,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838362,'all_recalculate.id_bau',75462053,75462052,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838363,'all_recalculate.total_semua_biaya',1381363372,18964994762,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838364,'all_recalculate.total_semua_biaya_perjam',2740801,37628958,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838365,'all_recalculate.total_tanpa_penyusutan_n_mtc',761110461,18951972548,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838366,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',1510140,37603120,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838367,'all_recalculate.total_tanpa_penyusutan',1374369030,18952228031,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838368,'all_recalculate.total_tanpa_penyusutan_perjam',2726923,37603627,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:08');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838369,'all_recalculate.total_tanpa_mtc',761110461,18951972548,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838370,'all_recalculate.total_tanpa_mtc_perjam',1524018,37628451,3,5,63,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838371,'all_recalculate.id',377,375,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838372,'all_recalculate.id_labor',78443946,106167107,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838373,'all_recalculate.id_penyusutan',6994342,0,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838374,'all_recalculate.id_mtc',613258570,8587236,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838375,'all_recalculate.id_bprodlain_insteadof_mtc',10622849,14151004,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838376,'all_recalculate.id_gajilain',19743201,19743200,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838377,'all_recalculate.id_bgoenjualan',3723662,3723662,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:08');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838378,'all_recalculate.id_bau',75462053,75462052,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838379,'all_recalculate.total_semua_biaya',1381363372,6656123307,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838380,'all_recalculate.total_semua_biaya_perjam',2740801,13206594,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838381,'all_recalculate.total_tanpa_penyusutan_n_mtc',761110461,6032265148,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838382,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',1510140,11968780,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838383,'all_recalculate.total_tanpa_penyusutan',1374369030,6040852384,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838384,'all_recalculate.total_tanpa_penyusutan_perjam',2726923,11985818,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838385,'all_recalculate.total_tanpa_mtc',761110461,6032265148,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:08');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838386,'all_recalculate.total_tanpa_mtc_perjam',1524018,13189556,3,5,64,3,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838387,'all_recalculate.id',377,376,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838388,'all_recalculate.id_labor',78443946,78443945,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838389,'all_recalculate.id_penyusutan',6994342,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838390,'all_recalculate.id_mtc',613258570,4414819,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838391,'all_recalculate.id_bprodlain_insteadof_mtc',10622849,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838392,'all_recalculate.id_gajilain',19743201,12339500,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838393,'all_recalculate.id_bgoenjualan',3723662,2327289,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838394,'all_recalculate.id_bau',75462053,47163783,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:08');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838395,'all_recalculate.total_semua_biaya',1381363372,1041534364,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838396,'all_recalculate.total_semua_biaya_perjam',2740801,2066536,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838397,'all_recalculate.total_tanpa_penyusutan_n_mtc',761110461,1029329354,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838398,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',1510140,2042320,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838399,'all_recalculate.total_tanpa_penyusutan',1374369030,1033744172,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838400,'all_recalculate.total_tanpa_penyusutan_perjam',2726923,2051080,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838401,'all_recalculate.total_tanpa_mtc',761110461,1029329354,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838402,'all_recalculate.total_tanpa_mtc_perjam',1524018,2057777,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:10:08');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838403,'all_recalculate.id_labor',78443946,78443945,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:08'),
 (838404,'all_recalculate.id_penyusutan',6994342,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:09'),
 (838405,'all_recalculate.id_mtc',613258570,613258569,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:09'),
 (838406,'all_recalculate.id_bprodlain_insteadof_mtc',10622849,10622849,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:09'),
 (838407,'all_recalculate.id_gajilain',19743201,14807400,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:09'),
 (838408,'all_recalculate.id_bgoenjualan',3723662,2792746,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:09'),
 (838409,'all_recalculate.id_bau',75462053,56596539,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:09'),
 (838410,'all_recalculate.total_semua_biaya',1381363372,1356631143,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:09'),
 (838411,'all_recalculate.total_semua_biaya_perjam',2740801,2691728,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:09');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838412,'all_recalculate.total_tanpa_penyusutan_n_mtc',761110461,736378232,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:09'),
 (838413,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',1510140,1461068,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:09'),
 (838414,'all_recalculate.total_tanpa_penyusutan',1374369030,1349636801,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:09'),
 (838415,'all_recalculate.total_tanpa_penyusutan_perjam',2726923,2677851,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:09'),
 (838416,'all_recalculate.total_tanpa_mtc',761110461,736378232,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:09'),
 (838417,'all_recalculate.total_tanpa_mtc_perjam',1524018,1474946,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 14:10:09'),
 (838418,'all_recalculate.id_labor',78443946,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:13:27'),
 (838419,'all_recalculate.id_penyusutan',7790192,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:13:27');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838420,'all_recalculate.id_mtc',4414819,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:13:27'),
 (838421,'all_recalculate.id_gajilain',12339501,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:13:27'),
 (838422,'all_recalculate.id_bgoenjualan',2327289,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:13:27'),
 (838423,'all_recalculate.id_bau',47163783,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:13:27'),
 (838424,'all_recalculate.total_semua_biaya',1041540160,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:13:27'),
 (838425,'all_recalculate.total_semua_biaya_perjam',2066548,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:13:27'),
 (838426,'all_recalculate.total_tanpa_penyusutan_n_mtc',1029335149,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:13:27'),
 (838427,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',2042332,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:13:27'),
 (838428,'all_recalculate.total_tanpa_penyusutan',1033749968,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:13:27');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838429,'all_recalculate.total_tanpa_penyusutan_perjam',2051092,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:13:27'),
 (838430,'all_recalculate.total_tanpa_mtc',1029335149,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:13:27'),
 (838431,'all_recalculate.total_tanpa_mtc_perjam',2057789,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:13:27'),
 (838432,'all_recalculate.id_labor',78443946,78443945,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:13:39'),
 (838433,'all_recalculate.id_penyusutan',7790192,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:13:39'),
 (838434,'all_recalculate.id_mtc',4414819,4414819,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:13:39'),
 (838435,'all_recalculate.id_gajilain',12339501,12339500,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:13:39'),
 (838436,'all_recalculate.id_bgoenjualan',2327289,2327289,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:13:39'),
 (838437,'all_recalculate.id_bau',47163783,47163783,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:13:39');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838438,'all_recalculate.total_semua_biaya',1041540160,1041540159,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:13:39'),
 (838439,'all_recalculate.total_semua_biaya_perjam',2066548,2066548,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:13:39'),
 (838440,'all_recalculate.total_tanpa_penyusutan_n_mtc',1029335149,1029335149,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:13:39'),
 (838441,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',2042332,2042332,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:13:39'),
 (838442,'all_recalculate.total_tanpa_penyusutan',1033749968,1033749967,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:13:39'),
 (838443,'all_recalculate.total_tanpa_penyusutan_perjam',2051092,2051091,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:13:39'),
 (838444,'all_recalculate.total_tanpa_mtc',1029335149,1029335149,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:13:39'),
 (838445,'all_recalculate.total_tanpa_mtc_perjam',2057789,2057788,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 14:13:39');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838446,'all_recalculate.id_labor',78443946,78443945,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:20'),
 (838447,'all_recalculate.id_penyusutan',7790192,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:20'),
 (838448,'all_recalculate.id_mtc',4414819,4414819,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:20'),
 (838449,'all_recalculate.id_gajilain',12339501,12339500,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:20'),
 (838450,'all_recalculate.id_bgoenjualan',2327289,2327289,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:20'),
 (838451,'all_recalculate.id_bau',47163783,47163783,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:20'),
 (838452,'all_recalculate.total_semua_biaya',550489533,1041540159,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:20'),
 (838453,'all_recalculate.total_semua_biaya_perjam',1092242,2066548,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:20'),
 (838454,'all_recalculate.total_tanpa_penyusutan_n_mtc',538284522,1029335149,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:20');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838455,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',1068025,2042332,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:20'),
 (838456,'all_recalculate.total_tanpa_penyusutan',542699341,1033749967,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:20'),
 (838457,'all_recalculate.total_tanpa_penyusutan_perjam',1076785,2051091,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:20'),
 (838458,'all_recalculate.total_tanpa_mtc',538284522,1029335149,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:20'),
 (838459,'all_recalculate.total_tanpa_mtc_perjam',1083482,2057788,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:20'),
 (838460,'all_recalculate.id',378,379,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:20'),
 (838461,'all_recalculate.id_labor',78443946,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:20'),
 (838462,'all_recalculate.id_penyusutan',7790192,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:20');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838463,'all_recalculate.id_mtc',4414819,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:20'),
 (838464,'all_recalculate.id_gajilain',12339501,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:20'),
 (838465,'all_recalculate.id_bgoenjualan',2327289,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:20'),
 (838466,'all_recalculate.id_bau',47163783,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:20'),
 (838467,'all_recalculate.total_semua_biaya',550489533,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:20'),
 (838468,'all_recalculate.total_semua_biaya_perjam',1092242,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:20'),
 (838469,'all_recalculate.total_tanpa_penyusutan_n_mtc',538284522,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:20'),
 (838470,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',1068025,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:20'),
 (838471,'all_recalculate.total_tanpa_penyusutan',542699341,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:20');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838472,'all_recalculate.total_tanpa_penyusutan_perjam',1076785,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:20'),
 (838473,'all_recalculate.total_tanpa_mtc',538284522,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:20'),
 (838474,'all_recalculate.total_tanpa_mtc_perjam',1083482,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:20'),
 (838475,'all_recalculate.id',379,378,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:20'),
 (838476,'all_recalculate.id_labor',78443946,78443945,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:20'),
 (838477,'all_recalculate.id_penyusutan',6994342,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:20'),
 (838478,'all_recalculate.id_mtc',613258570,4414819,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:20'),
 (838479,'all_recalculate.id_bprodlain_insteadof_mtc',10622849,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:20'),
 (838480,'all_recalculate.id_gajilain',12339501,12339500,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:20');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838481,'all_recalculate.id_bgoenjualan',2327289,2327289,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:20'),
 (838482,'all_recalculate.id_bau',47163783,47163783,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:20'),
 (838483,'all_recalculate.total_semua_biaya',1344268438,1041540159,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:20'),
 (838484,'all_recalculate.total_semua_biaya_perjam',2667200,2066548,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:20'),
 (838485,'all_recalculate.total_tanpa_penyusutan_n_mtc',724015527,1029335149,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:20'),
 (838486,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',1436539,2042332,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:20'),
 (838487,'all_recalculate.total_tanpa_penyusutan',1337274096,1033749967,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:20'),
 (838488,'all_recalculate.total_tanpa_penyusutan_perjam',2653322,2051091,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:20');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838489,'all_recalculate.total_tanpa_mtc',724015527,1029335149,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:20'),
 (838490,'all_recalculate.total_tanpa_mtc_perjam',1450417,2057788,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:20'),
 (838491,'all_recalculate.id_labor',78443946,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:20'),
 (838492,'all_recalculate.id_penyusutan',6994342,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:20'),
 (838493,'all_recalculate.id_mtc',613258570,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:20'),
 (838494,'all_recalculate.id_bprodlain_insteadof_mtc',10622849,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:20'),
 (838495,'all_recalculate.id_gajilain',12339501,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:20'),
 (838496,'all_recalculate.id_bgoenjualan',2327289,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:20'),
 (838497,'all_recalculate.id_bau',47163783,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:20');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838498,'all_recalculate.total_semua_biaya',1344268438,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:20'),
 (838499,'all_recalculate.total_semua_biaya_perjam',2667200,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:20'),
 (838500,'all_recalculate.total_tanpa_penyusutan_n_mtc',724015527,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:20'),
 (838501,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',1436539,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:20'),
 (838502,'all_recalculate.total_tanpa_penyusutan',1337274096,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:20'),
 (838503,'all_recalculate.total_tanpa_penyusutan_perjam',2653322,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:20'),
 (838504,'all_recalculate.total_tanpa_mtc',724015527,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:20'),
 (838505,'all_recalculate.total_tanpa_mtc_perjam',1450417,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:20');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838506,'all_recalculate.id_labor',78443946,78443945,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:46'),
 (838507,'all_recalculate.id_penyusutan',7790192,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:46'),
 (838508,'all_recalculate.id_mtc',4414819,4414819,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:46'),
 (838509,'all_recalculate.id_gajilain',12339501,12339500,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:46'),
 (838510,'all_recalculate.id_bgoenjualan',2327289,2327289,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:46'),
 (838511,'all_recalculate.id_bau',47163783,47163783,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:46'),
 (838512,'all_recalculate.total_semua_biaya',550489533,550489532,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:46'),
 (838513,'all_recalculate.total_semua_biaya_perjam',1092242,1092241,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:46'),
 (838514,'all_recalculate.total_tanpa_penyusutan_n_mtc',538284522,538284522,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:46');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838515,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',1068025,1068025,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:46'),
 (838516,'all_recalculate.total_tanpa_penyusutan',542699341,542699340,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:46'),
 (838517,'all_recalculate.total_tanpa_penyusutan_perjam',1076785,1076784,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:46'),
 (838518,'all_recalculate.total_tanpa_mtc',538284522,538284522,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:46'),
 (838519,'all_recalculate.total_tanpa_mtc_perjam',1083482,1083482,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:46'),
 (838520,'all_recalculate.id',378,379,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:46'),
 (838521,'all_recalculate.id_labor',78443946,78443945,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:46'),
 (838522,'all_recalculate.id_penyusutan',7790192,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:46');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838523,'all_recalculate.id_mtc',4414819,613258569,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:46'),
 (838524,'all_recalculate.id_bprodlain_insteadof_mtc',0,10622849,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:46'),
 (838525,'all_recalculate.id_gajilain',12339501,14807400,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:46'),
 (838526,'all_recalculate.id_bgoenjualan',2327289,2792746,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:46'),
 (838527,'all_recalculate.id_bau',47163783,56596539,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:46'),
 (838528,'all_recalculate.total_semua_biaya',550489533,1356634552,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:46'),
 (838529,'all_recalculate.total_semua_biaya_perjam',1092242,2691735,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:46'),
 (838530,'all_recalculate.total_tanpa_penyusutan_n_mtc',538284522,736381641,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:46'),
 (838531,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',1068025,1461075,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:46');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838532,'all_recalculate.total_tanpa_penyusutan',542699341,1349640210,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:46'),
 (838533,'all_recalculate.total_tanpa_penyusutan_perjam',1076785,2677858,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:46'),
 (838534,'all_recalculate.total_tanpa_mtc',538284522,736381641,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:46'),
 (838535,'all_recalculate.total_tanpa_mtc_perjam',1083482,1474952,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:46'),
 (838536,'all_recalculate.id',379,378,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:47'),
 (838537,'all_recalculate.id_labor',78443946,78443945,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:47'),
 (838538,'all_recalculate.id_penyusutan',6994342,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:47'),
 (838539,'all_recalculate.id_mtc',613258570,4414819,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:47'),
 (838540,'all_recalculate.id_bprodlain_insteadof_mtc',10622849,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:47');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838541,'all_recalculate.id_gajilain',12339501,12339500,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:47'),
 (838542,'all_recalculate.id_bgoenjualan',2327289,2327289,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:47'),
 (838543,'all_recalculate.id_bau',47163783,47163783,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:47'),
 (838544,'all_recalculate.total_semua_biaya',1344268438,550489532,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:47'),
 (838545,'all_recalculate.total_semua_biaya_perjam',2667200,1092241,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:47'),
 (838546,'all_recalculate.total_tanpa_penyusutan_n_mtc',724015527,538284522,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:47'),
 (838547,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',1436539,1068025,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:47'),
 (838548,'all_recalculate.total_tanpa_penyusutan',1337274096,542699340,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:47');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838549,'all_recalculate.total_tanpa_penyusutan_perjam',2653322,1076784,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:47'),
 (838550,'all_recalculate.total_tanpa_mtc',724015527,538284522,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:47'),
 (838551,'all_recalculate.total_tanpa_mtc_perjam',1450417,1083482,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 15:35:47'),
 (838552,'all_recalculate.id_labor',78443946,78443945,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:47'),
 (838553,'all_recalculate.id_penyusutan',6994342,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:47'),
 (838554,'all_recalculate.id_mtc',613258570,613258569,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:47'),
 (838555,'all_recalculate.id_bprodlain_insteadof_mtc',10622849,10622849,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:47'),
 (838556,'all_recalculate.id_gajilain',12339501,14807400,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:47'),
 (838557,'all_recalculate.id_bgoenjualan',2327289,2792746,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:47');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838558,'all_recalculate.id_bau',47163783,56596539,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:47'),
 (838559,'all_recalculate.total_semua_biaya',1344268438,1356634552,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:47'),
 (838560,'all_recalculate.total_semua_biaya_perjam',2667200,2691735,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:47'),
 (838561,'all_recalculate.total_tanpa_penyusutan_n_mtc',724015527,736381641,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:47'),
 (838562,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',1436539,1461075,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:47'),
 (838563,'all_recalculate.total_tanpa_penyusutan',1337274096,1349640210,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:47'),
 (838564,'all_recalculate.total_tanpa_penyusutan_perjam',2653322,2677858,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:47'),
 (838565,'all_recalculate.total_tanpa_mtc',724015527,736381641,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:47');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838566,'all_recalculate.total_tanpa_mtc_perjam',1450417,1474952,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 15:35:47'),
 (838567,'all_recalculate.id_labor',78443946,78443945,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 16:19:03'),
 (838568,'all_recalculate.id_penyusutan',7790192,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 16:19:03'),
 (838569,'all_recalculate.id_mtc',4414819,4414819,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 16:19:03'),
 (838570,'all_recalculate.id_gajilain',12339501,12339500,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 16:19:03'),
 (838571,'all_recalculate.id_bgoenjualan',2327289,2327289,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 16:19:03'),
 (838572,'all_recalculate.id_bau',47163783,47163783,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 16:19:03'),
 (838573,'all_recalculate.total_semua_biaya',550489533,550489532,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 16:19:03'),
 (838574,'all_recalculate.total_semua_biaya_perjam',1092242,1092241,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 16:19:03');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838575,'all_recalculate.total_tanpa_penyusutan_n_mtc',538284522,538284522,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 16:19:03'),
 (838576,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',1068025,1068025,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 16:19:03'),
 (838577,'all_recalculate.total_tanpa_penyusutan',542699341,542699340,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 16:19:03'),
 (838578,'all_recalculate.total_tanpa_penyusutan_perjam',1076785,1076784,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 16:19:03'),
 (838579,'all_recalculate.total_tanpa_mtc',538284522,538284522,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 16:19:03'),
 (838580,'all_recalculate.total_tanpa_mtc_perjam',1083482,1083482,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 16:19:03'),
 (838581,'all_recalculate.id',378,379,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 16:19:03'),
 (838582,'all_recalculate.id_labor',78443946,78443945,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 16:19:03');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838583,'all_recalculate.id_penyusutan',7790192,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 16:19:03'),
 (838584,'all_recalculate.id_mtc',4414819,613258569,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 16:19:03'),
 (838585,'all_recalculate.id_bprodlain_insteadof_mtc',0,10622849,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 16:19:03'),
 (838586,'all_recalculate.id_gajilain',12339501,12339500,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 16:19:03'),
 (838587,'all_recalculate.id_bgoenjualan',2327289,2327289,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 16:19:03'),
 (838588,'all_recalculate.id_bau',47163783,47163783,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 16:19:03'),
 (838589,'all_recalculate.total_semua_biaya',550489533,1344268437,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 16:19:03'),
 (838590,'all_recalculate.total_semua_biaya_perjam',1092242,2667199,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 16:19:03'),
 (838591,'all_recalculate.total_tanpa_penyusutan_n_mtc',538284522,724015526,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 16:19:03');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838592,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',1068025,1436539,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 16:19:03'),
 (838593,'all_recalculate.total_tanpa_penyusutan',542699341,1337274096,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 16:19:03'),
 (838594,'all_recalculate.total_tanpa_penyusutan_perjam',1076785,2653322,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 16:19:03'),
 (838595,'all_recalculate.total_tanpa_mtc',538284522,724015526,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 16:19:03'),
 (838596,'all_recalculate.total_tanpa_mtc_perjam',1083482,1450416,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 16:19:03'),
 (838597,'all_recalculate.id',379,378,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 16:19:04'),
 (838598,'all_recalculate.id_labor',78443946,78443945,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 16:19:04'),
 (838599,'all_recalculate.id_penyusutan',6994342,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 16:19:04');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838600,'all_recalculate.id_mtc',613258570,4414819,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 16:19:04'),
 (838601,'all_recalculate.id_bprodlain_insteadof_mtc',10622849,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 16:19:04'),
 (838602,'all_recalculate.id_gajilain',12339501,12339500,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 16:19:04'),
 (838603,'all_recalculate.id_bgoenjualan',2327289,2327289,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 16:19:04'),
 (838604,'all_recalculate.id_bau',47163783,47163783,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 16:19:04'),
 (838605,'all_recalculate.total_semua_biaya',1344268438,550489532,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 16:19:04'),
 (838606,'all_recalculate.total_semua_biaya_perjam',2667200,1092241,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 16:19:04'),
 (838607,'all_recalculate.total_tanpa_penyusutan_n_mtc',724015527,538284522,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 16:19:04'),
 (838608,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',1436539,1068025,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 16:19:04');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838609,'all_recalculate.total_tanpa_penyusutan',1337274096,542699340,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 16:19:04'),
 (838610,'all_recalculate.total_tanpa_penyusutan_perjam',2653322,1076784,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 16:19:04'),
 (838611,'all_recalculate.total_tanpa_mtc',724015527,538284522,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 16:19:04'),
 (838612,'all_recalculate.total_tanpa_mtc_perjam',1450417,1083482,3,2,99,2,'Admin',NULL,NULL,'2021-04-09 16:19:04'),
 (838613,'all_recalculate.id_labor',78443946,78443945,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 16:19:04'),
 (838614,'all_recalculate.id_penyusutan',6994342,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 16:19:04'),
 (838615,'all_recalculate.id_mtc',613258570,613258569,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 16:19:04'),
 (838616,'all_recalculate.id_bprodlain_insteadof_mtc',10622849,10622849,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 16:19:04'),
 (838617,'all_recalculate.id_gajilain',12339501,12339500,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 16:19:04');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838618,'all_recalculate.id_bgoenjualan',2327289,2327289,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 16:19:04'),
 (838619,'all_recalculate.id_bau',47163783,47163783,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 16:19:04'),
 (838620,'all_recalculate.total_semua_biaya',1344268438,1344268437,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 16:19:04'),
 (838621,'all_recalculate.total_semua_biaya_perjam',2667200,2667199,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 16:19:04'),
 (838622,'all_recalculate.total_tanpa_penyusutan_n_mtc',724015527,724015526,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 16:19:04'),
 (838623,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',1436539,1436539,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 16:19:04'),
 (838624,'all_recalculate.total_tanpa_penyusutan',1337274096,1337274096,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 16:19:04'),
 (838625,'all_recalculate.total_tanpa_penyusutan_perjam',2653322,2653322,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 16:19:04');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838626,'all_recalculate.total_tanpa_mtc',724015527,724015526,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 16:19:04'),
 (838627,'all_recalculate.total_tanpa_mtc_perjam',1450417,1450416,3,2,100,2,'Admin',NULL,NULL,'2021-04-09 16:19:04'),
 (838628,'all_recalculate.id_labor',78443946,78443945,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838629,'all_recalculate.id_penyusutan',7790192,7790192,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838630,'all_recalculate.id_mtc',4414819,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838631,'all_recalculate.id_gajilain',12339501,12339500,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838632,'all_recalculate.id_bgoenjualan',2327289,2327289,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838633,'all_recalculate.id_bau',47163783,47163783,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838634,'all_recalculate.total_semua_biaya',550489533,550489532,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:09:59');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838635,'all_recalculate.total_semua_biaya_perjam',1092242,1092241,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838636,'all_recalculate.total_tanpa_penyusutan_n_mtc',538284522,538284522,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838637,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',1068025,1068025,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838638,'all_recalculate.total_tanpa_penyusutan',542699341,542699340,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838639,'all_recalculate.total_tanpa_penyusutan_perjam',1076785,1076784,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838640,'all_recalculate.total_tanpa_mtc',538284522,538284522,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838641,'all_recalculate.total_tanpa_mtc_perjam',1083482,1083482,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838642,'all_recalculate.id',378,379,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:09:59');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838643,'all_recalculate.id_labor',78443946,78443945,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838644,'all_recalculate.id_penyusutan',7790192,6994342,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838645,'all_recalculate.id_mtc',4414819,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838646,'all_recalculate.id_bprodlain_insteadof_mtc',0,10622849,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838647,'all_recalculate.id_gajilain',12339501,12339500,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838648,'all_recalculate.id_bgoenjualan',2327289,2327289,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838649,'all_recalculate.id_bau',47163783,47163783,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838650,'all_recalculate.total_semua_biaya',550489533,1344268437,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838651,'all_recalculate.total_semua_biaya_perjam',1092242,2667199,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:09:59');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838652,'all_recalculate.total_tanpa_penyusutan_n_mtc',538284522,724015526,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838653,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',1068025,1436539,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838654,'all_recalculate.total_tanpa_penyusutan',542699341,1337274096,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838655,'all_recalculate.total_tanpa_penyusutan_perjam',1076785,2653322,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838656,'all_recalculate.total_tanpa_mtc',538284522,724015526,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838657,'all_recalculate.total_tanpa_mtc_perjam',1083482,1450416,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838658,'all_recalculate.id',379,378,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838659,'all_recalculate.id_labor',78443946,78443945,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:09:59');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838660,'all_recalculate.id_penyusutan',6994342,7790192,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838661,'all_recalculate.id_mtc',613258570,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838662,'all_recalculate.id_bprodlain_insteadof_mtc',10622849,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838663,'all_recalculate.id_gajilain',12339501,12339500,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838664,'all_recalculate.id_bgoenjualan',2327289,2327289,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838665,'all_recalculate.id_bau',47163783,47163783,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838666,'all_recalculate.total_semua_biaya',1344268438,550489532,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838667,'all_recalculate.total_semua_biaya_perjam',2667200,1092241,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838668,'all_recalculate.total_tanpa_penyusutan_n_mtc',724015527,538284522,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:09:59');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838669,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',1436539,1068025,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838670,'all_recalculate.total_tanpa_penyusutan',1337274096,542699340,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838671,'all_recalculate.total_tanpa_penyusutan_perjam',2653322,1076784,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838672,'all_recalculate.total_tanpa_mtc',724015527,538284522,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838673,'all_recalculate.total_tanpa_mtc_perjam',1450417,1083482,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838674,'all_recalculate.id_labor',78443946,78443945,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838675,'all_recalculate.id_penyusutan',6994342,6994342,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838676,'all_recalculate.id_mtc',613258570,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:09:59');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838677,'all_recalculate.id_bprodlain_insteadof_mtc',10622849,10622849,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838678,'all_recalculate.id_gajilain',12339501,12339500,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838679,'all_recalculate.id_bgoenjualan',2327289,2327289,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838680,'all_recalculate.id_bau',47163783,47163783,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838681,'all_recalculate.total_semua_biaya',1344268438,1344268437,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838682,'all_recalculate.total_semua_biaya_perjam',2667200,2667199,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838683,'all_recalculate.total_tanpa_penyusutan_n_mtc',724015527,724015526,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838684,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',1436539,1436539,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:09:59');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838685,'all_recalculate.total_tanpa_penyusutan',1337274096,1337274096,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838686,'all_recalculate.total_tanpa_penyusutan_perjam',2653322,2653322,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838687,'all_recalculate.total_tanpa_mtc',724015527,724015526,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838688,'all_recalculate.total_tanpa_mtc_perjam',1450417,1450416,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838689,'all_recalculate.id_labor',78443946,78443945,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838690,'all_recalculate.id_penyusutan',7790192,7790192,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838691,'all_recalculate.id_mtc',4414819,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838692,'all_recalculate.id_gajilain',12339501,12339500,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838693,'all_recalculate.id_bgoenjualan',2327289,2327289,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:09:59');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838694,'all_recalculate.id_bau',47163783,47163783,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838695,'all_recalculate.total_semua_biaya',550489533,550489532,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838696,'all_recalculate.total_semua_biaya_perjam',1092242,1092241,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838697,'all_recalculate.total_tanpa_penyusutan_n_mtc',538284522,538284522,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838698,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',1068025,1068025,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838699,'all_recalculate.total_tanpa_penyusutan',542699341,542699340,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838700,'all_recalculate.total_tanpa_penyusutan_perjam',1076785,1076784,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838701,'all_recalculate.total_tanpa_mtc',538284522,538284522,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:09:59');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838702,'all_recalculate.total_tanpa_mtc_perjam',1083482,1083482,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838703,'all_recalculate.id',378,379,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838704,'all_recalculate.id_labor',78443946,78443945,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838705,'all_recalculate.id_penyusutan',7790192,6994342,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838706,'all_recalculate.id_mtc',4414819,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838707,'all_recalculate.id_bprodlain_insteadof_mtc',0,10622849,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838708,'all_recalculate.id_gajilain',12339501,12339500,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838709,'all_recalculate.id_bgoenjualan',2327289,2327289,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838710,'all_recalculate.id_bau',47163783,47163783,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:09:59');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838711,'all_recalculate.total_semua_biaya',550489533,1344268437,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838712,'all_recalculate.total_semua_biaya_perjam',1092242,2667199,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838713,'all_recalculate.total_tanpa_penyusutan_n_mtc',538284522,724015526,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838714,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',1068025,1436539,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838715,'all_recalculate.total_tanpa_penyusutan',542699341,1337274096,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838716,'all_recalculate.total_tanpa_penyusutan_perjam',1076785,2653322,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838717,'all_recalculate.total_tanpa_mtc',538284522,724015526,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:09:59'),
 (838718,'all_recalculate.total_tanpa_mtc_perjam',1083482,1450416,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:09:59');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838719,'all_recalculate.id',379,378,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:10:00'),
 (838720,'all_recalculate.id_labor',78443946,78443945,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:10:00'),
 (838721,'all_recalculate.id_penyusutan',6994342,7790192,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:10:00'),
 (838722,'all_recalculate.id_mtc',613258570,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:10:00'),
 (838723,'all_recalculate.id_bprodlain_insteadof_mtc',10622849,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:10:00'),
 (838724,'all_recalculate.id_gajilain',12339501,12339500,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:10:00'),
 (838725,'all_recalculate.id_bgoenjualan',2327289,2327289,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:10:00'),
 (838726,'all_recalculate.id_bau',47163783,47163783,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:10:00'),
 (838727,'all_recalculate.total_semua_biaya',1344268438,550489532,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:10:00');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838728,'all_recalculate.total_semua_biaya_perjam',2667200,1092241,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:10:00'),
 (838729,'all_recalculate.total_tanpa_penyusutan_n_mtc',724015527,538284522,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:10:00'),
 (838730,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',1436539,1068025,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:10:00'),
 (838731,'all_recalculate.total_tanpa_penyusutan',1337274096,542699340,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:10:00'),
 (838732,'all_recalculate.total_tanpa_penyusutan_perjam',2653322,1076784,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:10:00'),
 (838733,'all_recalculate.total_tanpa_mtc',724015527,538284522,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:10:00'),
 (838734,'all_recalculate.total_tanpa_mtc_perjam',1450417,1083482,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 08:10:00'),
 (838735,'all_recalculate.id_labor',78443946,78443945,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:10:00');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838736,'all_recalculate.id_penyusutan',6994342,6994342,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:10:00'),
 (838737,'all_recalculate.id_mtc',613258570,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:10:00'),
 (838738,'all_recalculate.id_bprodlain_insteadof_mtc',10622849,10622849,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:10:00'),
 (838739,'all_recalculate.id_gajilain',12339501,12339500,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:10:00'),
 (838740,'all_recalculate.id_bgoenjualan',2327289,2327289,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:10:00'),
 (838741,'all_recalculate.id_bau',47163783,47163783,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:10:00'),
 (838742,'all_recalculate.total_semua_biaya',1344268438,1344268437,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:10:00'),
 (838743,'all_recalculate.total_semua_biaya_perjam',2667200,2667199,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:10:00'),
 (838744,'all_recalculate.total_tanpa_penyusutan_n_mtc',724015527,724015526,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:10:00');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838745,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',1436539,1436539,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:10:00'),
 (838746,'all_recalculate.total_tanpa_penyusutan',1337274096,1337274096,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:10:00'),
 (838747,'all_recalculate.total_tanpa_penyusutan_perjam',2653322,2653322,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:10:00'),
 (838748,'all_recalculate.total_tanpa_mtc',724015527,724015526,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:10:00'),
 (838749,'all_recalculate.total_tanpa_mtc_perjam',1450417,1450416,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 08:10:00'),
 (838750,'all_recalculate.id_labor',78443946,78443945,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 14:19:30'),
 (838751,'all_recalculate.id_penyusutan',7790192,7790192,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 14:19:30'),
 (838752,'all_recalculate.id_mtc',4414819,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 14:19:30');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838753,'all_recalculate.id_gajilain',1410780,12339500,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 14:19:30'),
 (838754,'all_recalculate.id_bgoenjualan',2327289,2327289,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 14:19:30'),
 (838755,'all_recalculate.id_bau',0,47163783,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 14:19:30'),
 (838756,'all_recalculate.total_semua_biaya',492397199,550489532,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 14:19:30'),
 (838757,'all_recalculate.total_semua_biaya_perjam',976979,1092241,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 14:19:30'),
 (838758,'all_recalculate.total_tanpa_penyusutan_n_mtc',480192189,538284522,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 14:19:30'),
 (838759,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',952763,1068025,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 14:19:30'),
 (838760,'all_recalculate.total_tanpa_penyusutan',484607008,542699340,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 14:19:30');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838761,'all_recalculate.total_tanpa_penyusutan_perjam',961522,1076784,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 14:19:30'),
 (838762,'all_recalculate.total_tanpa_mtc',480192189,538284522,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 14:19:30'),
 (838763,'all_recalculate.total_tanpa_mtc_perjam',968220,1083482,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 14:19:30'),
 (838764,'all_recalculate.id',378,379,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 14:19:30'),
 (838765,'all_recalculate.id_labor',78443946,78443945,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 14:19:30'),
 (838766,'all_recalculate.id_penyusutan',7790192,6994342,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 14:19:30'),
 (838767,'all_recalculate.id_mtc',4414819,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 14:19:30'),
 (838768,'all_recalculate.id_bprodlain_insteadof_mtc',0,10622849,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 14:19:30'),
 (838769,'all_recalculate.id_gajilain',1410780,12339500,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 14:19:30');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838770,'all_recalculate.id_bgoenjualan',2327289,2327289,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 14:19:30'),
 (838771,'all_recalculate.id_bau',0,47163783,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 14:19:30'),
 (838772,'all_recalculate.total_semua_biaya',492397199,1344268437,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 14:19:30'),
 (838773,'all_recalculate.total_semua_biaya_perjam',976979,2667199,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 14:19:30'),
 (838774,'all_recalculate.total_tanpa_penyusutan_n_mtc',480192189,724015526,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 14:19:30'),
 (838775,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',952763,1436539,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 14:19:30'),
 (838776,'all_recalculate.total_tanpa_penyusutan',484607008,1337274096,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 14:19:30'),
 (838777,'all_recalculate.total_tanpa_penyusutan_perjam',961522,2653322,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 14:19:30');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838778,'all_recalculate.total_tanpa_mtc',480192189,724015526,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 14:19:30'),
 (838779,'all_recalculate.total_tanpa_mtc_perjam',968220,1450416,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 14:19:30'),
 (838780,'all_recalculate.id',379,378,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 14:19:31'),
 (838781,'all_recalculate.id_labor',78443946,78443945,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 14:19:31'),
 (838782,'all_recalculate.id_penyusutan',6994342,7790192,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 14:19:31'),
 (838783,'all_recalculate.id_mtc',613258570,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 14:19:31'),
 (838784,'all_recalculate.id_bprodlain_insteadof_mtc',10622849,0,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 14:19:31'),
 (838785,'all_recalculate.id_gajilain',1410780,12339500,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 14:19:31'),
 (838786,'all_recalculate.id_bgoenjualan',2327289,2327289,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 14:19:31');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838787,'all_recalculate.id_bau',0,47163783,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 14:19:31'),
 (838788,'all_recalculate.total_semua_biaya',1223434032,550489532,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 14:19:31'),
 (838789,'all_recalculate.total_semua_biaya_perjam',2427449,1092241,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 14:19:31'),
 (838790,'all_recalculate.total_tanpa_penyusutan_n_mtc',603181121,538284522,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 14:19:31'),
 (838791,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',1196788,1068025,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 14:19:31'),
 (838792,'all_recalculate.total_tanpa_penyusutan',1216439690,542699340,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 14:19:31'),
 (838793,'all_recalculate.total_tanpa_penyusutan_perjam',2413571,1076784,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 14:19:31'),
 (838794,'all_recalculate.total_tanpa_mtc',603181121,538284522,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 14:19:31');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838795,'all_recalculate.total_tanpa_mtc_perjam',1210666,1083482,3,2,99,2,'Admin',NULL,NULL,'2021-04-13 14:19:31'),
 (838796,'all_recalculate.id_labor',78443946,78443945,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 14:19:31'),
 (838797,'all_recalculate.id_penyusutan',6994342,6994342,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 14:19:31'),
 (838798,'all_recalculate.id_mtc',613258570,0,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 14:19:31'),
 (838799,'all_recalculate.id_bprodlain_insteadof_mtc',10622849,10622849,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 14:19:31'),
 (838800,'all_recalculate.id_gajilain',1410780,12339500,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 14:19:31'),
 (838801,'all_recalculate.id_bgoenjualan',2327289,2327289,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 14:19:31'),
 (838802,'all_recalculate.id_bau',0,47163783,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 14:19:31'),
 (838803,'all_recalculate.total_semua_biaya',1223434032,1344268437,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 14:19:31');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838804,'all_recalculate.total_semua_biaya_perjam',2427449,2667199,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 14:19:31'),
 (838805,'all_recalculate.total_tanpa_penyusutan_n_mtc',603181121,724015526,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 14:19:31'),
 (838806,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',1196788,1436539,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 14:19:31'),
 (838807,'all_recalculate.total_tanpa_penyusutan',1216439690,1337274096,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 14:19:31'),
 (838808,'all_recalculate.total_tanpa_penyusutan_perjam',2413571,2653322,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 14:19:31'),
 (838809,'all_recalculate.total_tanpa_mtc',603181121,724015526,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 14:19:31'),
 (838810,'all_recalculate.total_tanpa_mtc_perjam',1210666,1450416,3,2,100,2,'Admin',NULL,NULL,'2021-04-13 14:19:31'),
 (838811,'all_recalculate.id_labor',78443946,78443945,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838812,'all_recalculate.id_penyusutan',7790192,0,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08'),
 (838813,'all_recalculate.id_mtc',4414819,0,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08'),
 (838814,'all_recalculate.id_gajilain',1410780,1410780,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08'),
 (838815,'all_recalculate.id_bgoenjualan',2327289,2327289,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08'),
 (838816,'all_recalculate.id_bau',11960,232282,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08'),
 (838817,'all_recalculate.total_semua_biaya',492409159,492397199,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08'),
 (838818,'all_recalculate.total_semua_biaya_perjam',977003,976979,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08'),
 (838819,'all_recalculate.total_tanpa_penyusutan_n_mtc',480204149,480192188,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08'),
 (838820,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',952787,952762,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838821,'all_recalculate.total_tanpa_penyusutan',484618967,484607007,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08'),
 (838822,'all_recalculate.total_tanpa_penyusutan_perjam',961546,961522,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08'),
 (838823,'all_recalculate.total_tanpa_mtc',480204149,480192188,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08'),
 (838824,'all_recalculate.total_tanpa_mtc_perjam',968243,968219,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08'),
 (838825,'all_recalculate.id',378,379,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08'),
 (838826,'all_recalculate.id_labor',78443946,78443945,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08'),
 (838827,'all_recalculate.id_penyusutan',7790192,0,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08'),
 (838828,'all_recalculate.id_mtc',4414819,0,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838829,'all_recalculate.id_bprodlain_insteadof_mtc',0,10622849,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08'),
 (838830,'all_recalculate.id_gajilain',1410780,1410780,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08'),
 (838831,'all_recalculate.id_bgoenjualan',2327289,2327289,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08'),
 (838832,'all_recalculate.id_bau',11960,232282,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08'),
 (838833,'all_recalculate.total_semua_biaya',492409159,1223434031,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08'),
 (838834,'all_recalculate.total_semua_biaya_perjam',977003,2427448,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08'),
 (838835,'all_recalculate.total_tanpa_penyusutan_n_mtc',480204149,603181120,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08'),
 (838836,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',952787,1196788,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838837,'all_recalculate.total_tanpa_penyusutan',484618967,1216439690,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08'),
 (838838,'all_recalculate.total_tanpa_penyusutan_perjam',961546,2413571,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08'),
 (838839,'all_recalculate.total_tanpa_mtc',480204149,603181120,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08'),
 (838840,'all_recalculate.total_tanpa_mtc_perjam',968243,1210666,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08'),
 (838841,'all_recalculate.id',379,378,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08'),
 (838842,'all_recalculate.id_labor',78443946,78443945,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08'),
 (838843,'all_recalculate.id_penyusutan',6994342,0,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08'),
 (838844,'all_recalculate.id_mtc',613258570,0,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838845,'all_recalculate.id_bprodlain_insteadof_mtc',10622849,0,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08'),
 (838846,'all_recalculate.id_gajilain',1410780,1410780,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08'),
 (838847,'all_recalculate.id_bgoenjualan',2327289,2327289,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08'),
 (838848,'all_recalculate.id_bau',11960,232282,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08'),
 (838849,'all_recalculate.total_semua_biaya',1223445991,492397199,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08'),
 (838850,'all_recalculate.total_semua_biaya_perjam',2427473,976979,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08'),
 (838851,'all_recalculate.total_tanpa_penyusutan_n_mtc',603193080,480192188,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08'),
 (838852,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',1196812,952762,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838853,'all_recalculate.total_tanpa_penyusutan',1216451650,484607007,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08'),
 (838854,'all_recalculate.total_tanpa_penyusutan_perjam',2413595,961522,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08'),
 (838855,'all_recalculate.total_tanpa_mtc',603193080,480192188,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08'),
 (838856,'all_recalculate.total_tanpa_mtc_perjam',1210690,968219,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08'),
 (838857,'all_recalculate.id_labor',78443946,78443945,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08'),
 (838858,'all_recalculate.id_penyusutan',6994342,0,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08'),
 (838859,'all_recalculate.id_mtc',613258570,0,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08'),
 (838860,'all_recalculate.id_bprodlain_insteadof_mtc',10622849,10622849,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838861,'all_recalculate.id_gajilain',1410780,1410780,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08'),
 (838862,'all_recalculate.id_bgoenjualan',2327289,2327289,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08'),
 (838863,'all_recalculate.id_bau',11960,232282,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08'),
 (838864,'all_recalculate.total_semua_biaya',1223445991,1223434031,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08'),
 (838865,'all_recalculate.total_semua_biaya_perjam',2427473,2427448,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08'),
 (838866,'all_recalculate.total_tanpa_penyusutan_n_mtc',603193080,603181120,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08'),
 (838867,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',1196812,1196788,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08'),
 (838868,'all_recalculate.total_tanpa_penyusutan',1216451650,1216439690,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838869,'all_recalculate.total_tanpa_penyusutan_perjam',2413595,2413571,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08'),
 (838870,'all_recalculate.total_tanpa_mtc',603193080,603181120,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08'),
 (838871,'all_recalculate.total_tanpa_mtc_perjam',1210690,1210666,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:08'),
 (838872,'all_recalculate.id_labor',78443946,78443945,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838873,'all_recalculate.id_penyusutan',7790192,7790192,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838874,'all_recalculate.id_mtc',4414819,4414819,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838875,'all_recalculate.id_gajilain',1410780,1410780,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838876,'all_recalculate.id_bgoenjualan',2327289,2327289,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838877,'all_recalculate.id_bau',11960,11960,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838878,'all_recalculate.total_semua_biaya',492409159,492409159,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838879,'all_recalculate.total_semua_biaya_perjam',977003,977002,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838880,'all_recalculate.total_tanpa_penyusutan_n_mtc',480204149,480204148,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838881,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',952787,952786,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838882,'all_recalculate.total_tanpa_penyusutan',484618967,484618967,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838883,'all_recalculate.total_tanpa_penyusutan_perjam',961546,961546,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838884,'all_recalculate.total_tanpa_mtc',480204149,480204148,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838885,'all_recalculate.total_tanpa_mtc_perjam',968243,968243,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838886,'all_recalculate.id',378,379,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838887,'all_recalculate.id_labor',78443946,78443945,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838888,'all_recalculate.id_penyusutan',7790192,6994342,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838889,'all_recalculate.id_mtc',4414819,613258569,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838890,'all_recalculate.id_bprodlain_insteadof_mtc',0,10622849,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838891,'all_recalculate.id_gajilain',1410780,1410780,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838892,'all_recalculate.id_bgoenjualan',2327289,2327289,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838893,'all_recalculate.id_bau',11960,11960,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838894,'all_recalculate.total_semua_biaya',492409159,1223445991,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838895,'all_recalculate.total_semua_biaya_perjam',977003,2427472,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838896,'all_recalculate.total_tanpa_penyusutan_n_mtc',480204149,603193080,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838897,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',952787,1196812,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838898,'all_recalculate.total_tanpa_penyusutan',484618967,1216451649,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838899,'all_recalculate.total_tanpa_penyusutan_perjam',961546,2413595,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838900,'all_recalculate.total_tanpa_mtc',480204149,603193080,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838901,'all_recalculate.total_tanpa_mtc_perjam',968243,1210689,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838902,'all_recalculate.id',379,378,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838903,'all_recalculate.id_labor',78443946,78443945,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838904,'all_recalculate.id_penyusutan',6994342,7790192,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838905,'all_recalculate.id_mtc',613258570,4414819,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838906,'all_recalculate.id_bprodlain_insteadof_mtc',10622849,0,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838907,'all_recalculate.id_gajilain',1410780,1410780,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838908,'all_recalculate.id_bgoenjualan',2327289,2327289,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838909,'all_recalculate.id_bau',11960,11960,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838910,'all_recalculate.total_semua_biaya',1223445991,492409159,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838911,'all_recalculate.total_semua_biaya_perjam',2427473,977002,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838912,'all_recalculate.total_tanpa_penyusutan_n_mtc',603193080,480204148,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838913,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',1196812,952786,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838914,'all_recalculate.total_tanpa_penyusutan',1216451650,484618967,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838915,'all_recalculate.total_tanpa_penyusutan_perjam',2413595,961546,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838916,'all_recalculate.total_tanpa_mtc',603193080,480204148,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838917,'all_recalculate.total_tanpa_mtc_perjam',1210690,968243,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838918,'all_recalculate.id_labor',78443946,78443945,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838919,'all_recalculate.id_penyusutan',6994342,6994342,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838920,'all_recalculate.id_mtc',613258570,613258569,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838921,'all_recalculate.id_bprodlain_insteadof_mtc',10622849,10622849,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838922,'all_recalculate.id_gajilain',1410780,1410780,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838923,'all_recalculate.id_bgoenjualan',2327289,2327289,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838924,'all_recalculate.id_bau',11960,11960,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838925,'all_recalculate.total_semua_biaya',1223445991,1223445991,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838926,'all_recalculate.total_semua_biaya_perjam',2427473,2427472,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838927,'all_recalculate.total_tanpa_penyusutan_n_mtc',603193080,603193080,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838928,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',1196812,1196812,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838929,'all_recalculate.total_tanpa_penyusutan',1216451650,1216451649,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838930,'all_recalculate.total_tanpa_penyusutan_perjam',2413595,2413595,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838931,'all_recalculate.total_tanpa_mtc',603193080,603193080,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838932,'all_recalculate.total_tanpa_mtc_perjam',1210690,1210689,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838933,'all_recalculate.id_labor',78443946,78443945,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838934,'all_recalculate.id_penyusutan',7790192,7790192,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838935,'all_recalculate.id_mtc',4414819,4414819,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838936,'all_recalculate.id_gajilain',1410780,1410780,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838937,'all_recalculate.id_bgoenjualan',2327289,2327289,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838938,'all_recalculate.id_bau',11960,11960,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838939,'all_recalculate.total_semua_biaya',492409159,492409159,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838940,'all_recalculate.total_semua_biaya_perjam',977003,977002,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838941,'all_recalculate.total_tanpa_penyusutan_n_mtc',480204149,480204148,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838942,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',952787,952786,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838943,'all_recalculate.total_tanpa_penyusutan',484618967,484618967,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838944,'all_recalculate.total_tanpa_penyusutan_perjam',961546,961546,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838945,'all_recalculate.total_tanpa_mtc',480204149,480204148,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838946,'all_recalculate.total_tanpa_mtc_perjam',968243,968243,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838947,'all_recalculate.id',378,379,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838948,'all_recalculate.id_labor',78443946,78443945,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838949,'all_recalculate.id_penyusutan',7790192,6994342,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838950,'all_recalculate.id_mtc',4414819,613258569,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838951,'all_recalculate.id_bprodlain_insteadof_mtc',0,10622849,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838952,'all_recalculate.id_gajilain',1410780,1410780,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838953,'all_recalculate.id_bgoenjualan',2327289,2327289,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838954,'all_recalculate.id_bau',11960,11960,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838955,'all_recalculate.total_semua_biaya',492409159,1223445991,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838956,'all_recalculate.total_semua_biaya_perjam',977003,2427472,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838957,'all_recalculate.total_tanpa_penyusutan_n_mtc',480204149,603193080,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838958,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',952787,1196812,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838959,'all_recalculate.total_tanpa_penyusutan',484618967,1216451649,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838960,'all_recalculate.total_tanpa_penyusutan_perjam',961546,2413595,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838961,'all_recalculate.total_tanpa_mtc',480204149,603193080,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838962,'all_recalculate.total_tanpa_mtc_perjam',968243,1210689,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:44'),
 (838963,'all_recalculate.id',379,378,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:45'),
 (838964,'all_recalculate.id_labor',78443946,78443945,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:45'),
 (838965,'all_recalculate.id_penyusutan',6994342,7790192,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:45'),
 (838966,'all_recalculate.id_mtc',613258570,4414819,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:45');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838967,'all_recalculate.id_bprodlain_insteadof_mtc',10622849,0,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:45'),
 (838968,'all_recalculate.id_gajilain',1410780,1410780,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:45'),
 (838969,'all_recalculate.id_bgoenjualan',2327289,2327289,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:45'),
 (838970,'all_recalculate.id_bau',11960,11960,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:45'),
 (838971,'all_recalculate.total_semua_biaya',1223445991,492409159,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:45'),
 (838972,'all_recalculate.total_semua_biaya_perjam',2427473,977002,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:45'),
 (838973,'all_recalculate.total_tanpa_penyusutan_n_mtc',603193080,480204148,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:45'),
 (838974,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',1196812,952786,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:45');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838975,'all_recalculate.total_tanpa_penyusutan',1216451650,484618967,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:45'),
 (838976,'all_recalculate.total_tanpa_penyusutan_perjam',2413595,961546,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:45'),
 (838977,'all_recalculate.total_tanpa_mtc',603193080,480204148,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:45'),
 (838978,'all_recalculate.total_tanpa_mtc_perjam',1210690,968243,3,2,99,2,'Accounting',NULL,NULL,'2021-04-13 15:35:45'),
 (838979,'all_recalculate.id_labor',78443946,78443945,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:45'),
 (838980,'all_recalculate.id_penyusutan',6994342,6994342,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:45'),
 (838981,'all_recalculate.id_mtc',613258570,613258569,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:45'),
 (838982,'all_recalculate.id_bprodlain_insteadof_mtc',10622849,10622849,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:45');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838983,'all_recalculate.id_gajilain',1410780,1410780,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:45'),
 (838984,'all_recalculate.id_bgoenjualan',2327289,2327289,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:45'),
 (838985,'all_recalculate.id_bau',11960,11960,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:45'),
 (838986,'all_recalculate.total_semua_biaya',1223445991,1223445991,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:45'),
 (838987,'all_recalculate.total_semua_biaya_perjam',2427473,2427472,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:45'),
 (838988,'all_recalculate.total_tanpa_penyusutan_n_mtc',603193080,603193080,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:45'),
 (838989,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',1196812,1196812,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:45'),
 (838990,'all_recalculate.total_tanpa_penyusutan',1216451650,1216451649,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:45');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838991,'all_recalculate.total_tanpa_penyusutan_perjam',2413595,2413595,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:45'),
 (838992,'all_recalculate.total_tanpa_mtc',603193080,603193080,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:45'),
 (838993,'all_recalculate.total_tanpa_mtc_perjam',1210690,1210689,3,2,100,2,'Accounting',NULL,NULL,'2021-04-13 15:35:45'),
 (838994,'all_recalculate.id_labor',78443946,78443945,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:19'),
 (838995,'all_recalculate.id_penyusutan',7790192,7790192,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:19'),
 (838996,'all_recalculate.id_mtc',4414819,4414819,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:19'),
 (838997,'all_recalculate.id_gajilain',1419578,1410780,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:19'),
 (838998,'all_recalculate.id_bgoenjualan',0,2327289,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:19');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (838999,'all_recalculate.id_bau',11960,11960,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:19'),
 (839000,'all_recalculate.total_semua_biaya',490090669,492409159,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:19'),
 (839001,'all_recalculate.total_semua_biaya_perjam',972403,977002,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:19'),
 (839002,'all_recalculate.total_tanpa_penyusutan_n_mtc',477885658,480204148,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:19'),
 (839003,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',948186,952786,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:19'),
 (839004,'all_recalculate.total_tanpa_penyusutan',482300477,484618967,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:19'),
 (839005,'all_recalculate.total_tanpa_penyusutan_perjam',956946,961546,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:19'),
 (839006,'all_recalculate.total_tanpa_mtc',477885658,480204148,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:19');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839007,'all_recalculate.total_tanpa_mtc_perjam',963643,968243,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:19'),
 (839008,'all_recalculate.id',378,379,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:19'),
 (839009,'all_recalculate.id_labor',78443946,78443945,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:19'),
 (839010,'all_recalculate.id_penyusutan',7790192,6994342,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:19'),
 (839011,'all_recalculate.id_mtc',4414819,613258569,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:19'),
 (839012,'all_recalculate.id_bprodlain_insteadof_mtc',0,10622849,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:19'),
 (839013,'all_recalculate.id_gajilain',1419578,1410780,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:19'),
 (839014,'all_recalculate.id_bgoenjualan',0,2327289,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:19');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839015,'all_recalculate.id_bau',11960,11960,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:19'),
 (839016,'all_recalculate.total_semua_biaya',490090669,1223445991,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:19'),
 (839017,'all_recalculate.total_semua_biaya_perjam',972403,2427472,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:19'),
 (839018,'all_recalculate.total_tanpa_penyusutan_n_mtc',477885658,603193080,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:19'),
 (839019,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',948186,1196812,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:19'),
 (839020,'all_recalculate.total_tanpa_penyusutan',482300477,1216451649,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:19'),
 (839021,'all_recalculate.total_tanpa_penyusutan_perjam',956946,2413595,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:19'),
 (839022,'all_recalculate.total_tanpa_mtc',477885658,603193080,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:19');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839023,'all_recalculate.total_tanpa_mtc_perjam',963643,1210689,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:19'),
 (839024,'all_recalculate.id',379,378,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:20'),
 (839025,'all_recalculate.id_labor',78443946,78443945,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:20'),
 (839026,'all_recalculate.id_penyusutan',6994342,7790192,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:20'),
 (839027,'all_recalculate.id_mtc',613258570,4414819,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:20'),
 (839028,'all_recalculate.id_bprodlain_insteadof_mtc',10622849,0,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:20'),
 (839029,'all_recalculate.id_gajilain',1419578,1410780,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:20'),
 (839030,'all_recalculate.id_bgoenjualan',0,2327289,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:20');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839031,'all_recalculate.id_bau',11960,11960,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:20'),
 (839032,'all_recalculate.total_semua_biaya',1221127501,492409159,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:20'),
 (839033,'all_recalculate.total_semua_biaya_perjam',2422873,977002,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:20'),
 (839034,'all_recalculate.total_tanpa_penyusutan_n_mtc',600874590,480204148,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:20'),
 (839035,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',1192212,952786,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:20'),
 (839036,'all_recalculate.total_tanpa_penyusutan',1214133160,484618967,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:20'),
 (839037,'all_recalculate.total_tanpa_penyusutan_perjam',2408995,961546,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:20'),
 (839038,'all_recalculate.total_tanpa_mtc',600874590,480204148,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:20');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839039,'all_recalculate.total_tanpa_mtc_perjam',1206090,968243,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:20'),
 (839040,'all_recalculate.id_labor',78443946,78443945,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:20'),
 (839041,'all_recalculate.id_penyusutan',6994342,6994342,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:20'),
 (839042,'all_recalculate.id_mtc',613258570,613258569,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:20'),
 (839043,'all_recalculate.id_bprodlain_insteadof_mtc',10622849,10622849,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:20'),
 (839044,'all_recalculate.id_gajilain',1419578,1410780,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:20'),
 (839045,'all_recalculate.id_bgoenjualan',0,2327289,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:20'),
 (839046,'all_recalculate.id_bau',11960,11960,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:20');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839047,'all_recalculate.total_semua_biaya',1221127501,1223445991,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:20'),
 (839048,'all_recalculate.total_semua_biaya_perjam',2422873,2427472,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:20'),
 (839049,'all_recalculate.total_tanpa_penyusutan_n_mtc',600874590,603193080,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:20'),
 (839050,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',1192212,1196812,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:20'),
 (839051,'all_recalculate.total_tanpa_penyusutan',1214133160,1216451649,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:20'),
 (839052,'all_recalculate.total_tanpa_penyusutan_perjam',2408995,2413595,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:20'),
 (839053,'all_recalculate.total_tanpa_mtc',600874590,603193080,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:20');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839054,'all_recalculate.total_tanpa_mtc_perjam',1206090,1210689,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:24:20'),
 (839055,'all_recalculate.id_labor',78443946,78443945,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:25:54'),
 (839056,'all_recalculate.id_penyusutan',7790192,7790192,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:25:54'),
 (839057,'all_recalculate.id_mtc',4414819,4414819,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:25:54'),
 (839058,'all_recalculate.id_gajilain',1419578,1419578,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:25:54'),
 (839059,'all_recalculate.id_bau',11960,11960,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:25:54'),
 (839060,'all_recalculate.total_semua_biaya',490090669,490090668,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:25:54'),
 (839061,'all_recalculate.total_semua_biaya_perjam',972403,972402,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:25:54');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839062,'all_recalculate.total_tanpa_penyusutan_n_mtc',477885658,477885658,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:25:54'),
 (839063,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',948186,948186,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:25:54'),
 (839064,'all_recalculate.total_tanpa_penyusutan',482300477,482300477,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:25:54'),
 (839065,'all_recalculate.total_tanpa_penyusutan_perjam',956946,956945,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:25:54'),
 (839066,'all_recalculate.total_tanpa_mtc',477885658,477885658,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:25:54'),
 (839067,'all_recalculate.total_tanpa_mtc_perjam',963643,963643,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:25:54'),
 (839068,'all_recalculate.id',378,379,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:25:54');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839069,'all_recalculate.id_labor',78443946,78443945,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:25:54'),
 (839070,'all_recalculate.id_penyusutan',7790192,6994342,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:25:54'),
 (839071,'all_recalculate.id_mtc',4414819,613258569,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:25:54'),
 (839072,'all_recalculate.id_bprodlain_insteadof_mtc',0,10622849,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:25:54'),
 (839073,'all_recalculate.id_gajilain',1419578,1419578,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:25:54'),
 (839074,'all_recalculate.id_bau',11960,11960,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:25:54'),
 (839075,'all_recalculate.total_semua_biaya',490090669,1221127501,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:25:54'),
 (839076,'all_recalculate.total_semua_biaya_perjam',972403,2422872,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:25:54');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839077,'all_recalculate.total_tanpa_penyusutan_n_mtc',477885658,600874590,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:25:54'),
 (839078,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',948186,1192211,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:25:54'),
 (839079,'all_recalculate.total_tanpa_penyusutan',482300477,1214133159,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:25:54'),
 (839080,'all_recalculate.total_tanpa_penyusutan_perjam',956946,2408994,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:25:54'),
 (839081,'all_recalculate.total_tanpa_mtc',477885658,600874590,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:25:54'),
 (839082,'all_recalculate.total_tanpa_mtc_perjam',963643,1206089,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:25:54'),
 (839083,'all_recalculate.id',379,378,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:25:54');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839084,'all_recalculate.id_labor',78443946,78443945,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:25:54'),
 (839085,'all_recalculate.id_penyusutan',6994342,7790192,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:25:54'),
 (839086,'all_recalculate.id_mtc',613258570,4414819,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:25:54'),
 (839087,'all_recalculate.id_bprodlain_insteadof_mtc',10622849,0,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:25:54'),
 (839088,'all_recalculate.id_gajilain',1419578,1419578,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:25:54'),
 (839089,'all_recalculate.id_bau',11960,11960,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:25:54'),
 (839090,'all_recalculate.total_semua_biaya',1221127501,490090668,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:25:54'),
 (839091,'all_recalculate.total_semua_biaya_perjam',2422873,972402,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:25:54');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839092,'all_recalculate.total_tanpa_penyusutan_n_mtc',600874590,477885658,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:25:54'),
 (839093,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',1192212,948186,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:25:54'),
 (839094,'all_recalculate.total_tanpa_penyusutan',1214133160,482300477,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:25:54'),
 (839095,'all_recalculate.total_tanpa_penyusutan_perjam',2408995,956945,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:25:54'),
 (839096,'all_recalculate.total_tanpa_mtc',600874590,477885658,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:25:54'),
 (839097,'all_recalculate.total_tanpa_mtc_perjam',1206090,963643,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:25:54'),
 (839098,'all_recalculate.id_labor',78443946,78443945,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:25:54');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839099,'all_recalculate.id_penyusutan',6994342,6994342,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:25:54'),
 (839100,'all_recalculate.id_mtc',613258570,613258569,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:25:54'),
 (839101,'all_recalculate.id_bprodlain_insteadof_mtc',10622849,10622849,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:25:54'),
 (839102,'all_recalculate.id_gajilain',1419578,1419578,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:25:54'),
 (839103,'all_recalculate.id_bau',11960,11960,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:25:54'),
 (839104,'all_recalculate.total_semua_biaya',1221127501,1221127501,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:25:54'),
 (839105,'all_recalculate.total_semua_biaya_perjam',2422873,2422872,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:25:54'),
 (839106,'all_recalculate.total_tanpa_penyusutan_n_mtc',600874590,600874590,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:25:54');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839107,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',1192212,1192211,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:25:54'),
 (839108,'all_recalculate.total_tanpa_penyusutan',1214133160,1214133159,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:25:54'),
 (839109,'all_recalculate.total_tanpa_penyusutan_perjam',2408995,2408994,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:25:54'),
 (839110,'all_recalculate.total_tanpa_mtc',600874590,600874590,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:25:54'),
 (839111,'all_recalculate.total_tanpa_mtc_perjam',1206090,1206089,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:25:54'),
 (839112,'all_recalculate.id_labor',78443946,78443945,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:26:15'),
 (839113,'all_recalculate.id_penyusutan',7790192,7790192,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:26:15'),
 (839114,'all_recalculate.id_mtc',4414819,4414819,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:26:15');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839115,'all_recalculate.id_gajilain',1419578,1419578,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:26:15'),
 (839116,'all_recalculate.id_bau',11960,11960,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:26:15'),
 (839117,'all_recalculate.total_semua_biaya',490090669,490090668,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:26:15'),
 (839118,'all_recalculate.total_semua_biaya_perjam',972403,972402,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:26:15'),
 (839119,'all_recalculate.total_tanpa_penyusutan_n_mtc',477885658,477885658,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:26:15'),
 (839120,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',948186,948186,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:26:15'),
 (839121,'all_recalculate.total_tanpa_penyusutan',482300477,482300477,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:26:15'),
 (839122,'all_recalculate.total_tanpa_penyusutan_perjam',956946,956945,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:26:15');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839123,'all_recalculate.total_tanpa_mtc',477885658,477885658,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:26:15'),
 (839124,'all_recalculate.total_tanpa_mtc_perjam',963643,963643,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:26:15'),
 (839125,'all_recalculate.id',378,379,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:26:15'),
 (839126,'all_recalculate.id_labor',78443946,78443945,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:26:15'),
 (839127,'all_recalculate.id_penyusutan',7790192,6994342,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:26:15'),
 (839128,'all_recalculate.id_mtc',4414819,613258569,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:26:15'),
 (839129,'all_recalculate.id_bprodlain_insteadof_mtc',0,10622849,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:26:15'),
 (839130,'all_recalculate.id_gajilain',1419578,1419578,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:26:15');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839131,'all_recalculate.id_bau',11960,11960,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:26:15'),
 (839132,'all_recalculate.total_semua_biaya',490090669,1221127501,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:26:15'),
 (839133,'all_recalculate.total_semua_biaya_perjam',972403,2422872,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:26:15'),
 (839134,'all_recalculate.total_tanpa_penyusutan_n_mtc',477885658,600874590,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:26:15'),
 (839135,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',948186,1192211,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:26:15'),
 (839136,'all_recalculate.total_tanpa_penyusutan',482300477,1214133159,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:26:15'),
 (839137,'all_recalculate.total_tanpa_penyusutan_perjam',956946,2408994,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:26:15'),
 (839138,'all_recalculate.total_tanpa_mtc',477885658,600874590,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:26:15');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839139,'all_recalculate.total_tanpa_mtc_perjam',963643,1206089,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:26:15'),
 (839140,'all_recalculate.id',379,378,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:26:15'),
 (839141,'all_recalculate.id_labor',78443946,78443945,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:26:15'),
 (839142,'all_recalculate.id_penyusutan',6994342,7790192,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:26:15'),
 (839143,'all_recalculate.id_mtc',613258570,4414819,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:26:15'),
 (839144,'all_recalculate.id_bprodlain_insteadof_mtc',10622849,0,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:26:15'),
 (839145,'all_recalculate.id_gajilain',1419578,1419578,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:26:15'),
 (839146,'all_recalculate.id_bau',11960,11960,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:26:15');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839147,'all_recalculate.total_semua_biaya',1221127501,490090668,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:26:15'),
 (839148,'all_recalculate.total_semua_biaya_perjam',2422873,972402,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:26:15'),
 (839149,'all_recalculate.total_tanpa_penyusutan_n_mtc',600874590,477885658,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:26:15'),
 (839150,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',1192212,948186,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:26:15'),
 (839151,'all_recalculate.total_tanpa_penyusutan',1214133160,482300477,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:26:15'),
 (839152,'all_recalculate.total_tanpa_penyusutan_perjam',2408995,956945,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:26:15'),
 (839153,'all_recalculate.total_tanpa_mtc',600874590,477885658,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:26:15');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839154,'all_recalculate.total_tanpa_mtc_perjam',1206090,963643,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:26:15'),
 (839155,'all_recalculate.id_labor',78443946,78443945,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:26:15'),
 (839156,'all_recalculate.id_penyusutan',6994342,6994342,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:26:15'),
 (839157,'all_recalculate.id_mtc',613258570,613258569,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:26:15'),
 (839158,'all_recalculate.id_bprodlain_insteadof_mtc',10622849,10622849,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:26:15'),
 (839159,'all_recalculate.id_gajilain',1419578,1419578,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:26:15'),
 (839160,'all_recalculate.id_bau',11960,11960,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:26:15'),
 (839161,'all_recalculate.total_semua_biaya',1221127501,1221127501,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:26:15');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839162,'all_recalculate.total_semua_biaya_perjam',2422873,2422872,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:26:15'),
 (839163,'all_recalculate.total_tanpa_penyusutan_n_mtc',600874590,600874590,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:26:15'),
 (839164,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',1192212,1192211,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:26:15'),
 (839165,'all_recalculate.total_tanpa_penyusutan',1214133160,1214133159,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:26:15'),
 (839166,'all_recalculate.total_tanpa_penyusutan_perjam',2408995,2408994,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:26:15'),
 (839167,'all_recalculate.total_tanpa_mtc',600874590,600874590,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:26:15'),
 (839168,'all_recalculate.total_tanpa_mtc_perjam',1206090,1206089,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:26:15');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839169,'all_recalculate.id_labor',78443946,78443945,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:33:45'),
 (839170,'all_recalculate.id_penyusutan',7790192,0,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:33:45'),
 (839171,'all_recalculate.id_mtc',4414819,0,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:33:45'),
 (839172,'all_recalculate.id_gajilain',1419578,1419578,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:33:45'),
 (839173,'all_recalculate.id_bau',11960,11960,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:33:45'),
 (839174,'all_recalculate.total_semua_biaya',490090669,490090668,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:33:45'),
 (839175,'all_recalculate.total_semua_biaya_perjam',972403,972402,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:33:45'),
 (839176,'all_recalculate.total_tanpa_penyusutan_n_mtc',477885658,477885658,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:33:45');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839177,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',948186,948186,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:33:45'),
 (839178,'all_recalculate.total_tanpa_penyusutan',482300477,482300477,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:33:45'),
 (839179,'all_recalculate.total_tanpa_penyusutan_perjam',956946,956945,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:33:45'),
 (839180,'all_recalculate.total_tanpa_mtc',477885658,477885658,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:33:45'),
 (839181,'all_recalculate.total_tanpa_mtc_perjam',963643,963643,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:33:45'),
 (839182,'all_recalculate.id',378,379,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:33:45'),
 (839183,'all_recalculate.id_labor',78443946,78443945,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:33:45'),
 (839184,'all_recalculate.id_penyusutan',7790192,0,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:33:45');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839185,'all_recalculate.id_mtc',4414819,0,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:33:45'),
 (839186,'all_recalculate.id_bprodlain_insteadof_mtc',0,10622849,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:33:45'),
 (839187,'all_recalculate.id_gajilain',1419578,1419578,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:33:45'),
 (839188,'all_recalculate.id_bau',11960,11960,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:33:45'),
 (839189,'all_recalculate.total_semua_biaya',490090669,1221127501,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:33:45'),
 (839190,'all_recalculate.total_semua_biaya_perjam',972403,2422872,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:33:45'),
 (839191,'all_recalculate.total_tanpa_penyusutan_n_mtc',477885658,600874590,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:33:45'),
 (839192,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',948186,1192211,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:33:45');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839193,'all_recalculate.total_tanpa_penyusutan',482300477,1214133159,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:33:45'),
 (839194,'all_recalculate.total_tanpa_penyusutan_perjam',956946,2408994,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:33:45'),
 (839195,'all_recalculate.total_tanpa_mtc',477885658,600874590,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:33:45'),
 (839196,'all_recalculate.total_tanpa_mtc_perjam',963643,1206089,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:33:45'),
 (839197,'all_recalculate.id',379,378,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:33:45'),
 (839198,'all_recalculate.id_labor',78443946,78443945,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:33:45'),
 (839199,'all_recalculate.id_penyusutan',6994342,0,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:33:45'),
 (839200,'all_recalculate.id_mtc',613258570,0,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:33:45');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839201,'all_recalculate.id_bprodlain_insteadof_mtc',10622849,0,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:33:45'),
 (839202,'all_recalculate.id_gajilain',1419578,1419578,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:33:45'),
 (839203,'all_recalculate.id_bau',11960,11960,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:33:45'),
 (839204,'all_recalculate.total_semua_biaya',1221127501,490090668,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:33:45'),
 (839205,'all_recalculate.total_semua_biaya_perjam',2422873,972402,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:33:45'),
 (839206,'all_recalculate.total_tanpa_penyusutan_n_mtc',600874590,477885658,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:33:45'),
 (839207,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',1192212,948186,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:33:45'),
 (839208,'all_recalculate.total_tanpa_penyusutan',1214133160,482300477,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:33:45');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839209,'all_recalculate.total_tanpa_penyusutan_perjam',2408995,956945,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:33:45'),
 (839210,'all_recalculate.total_tanpa_mtc',600874590,477885658,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:33:45'),
 (839211,'all_recalculate.total_tanpa_mtc_perjam',1206090,963643,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:33:45'),
 (839212,'all_recalculate.id_labor',78443946,78443945,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:33:45'),
 (839213,'all_recalculate.id_penyusutan',6994342,0,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:33:45'),
 (839214,'all_recalculate.id_mtc',613258570,0,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:33:45'),
 (839215,'all_recalculate.id_bprodlain_insteadof_mtc',10622849,10622849,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:33:45'),
 (839216,'all_recalculate.id_gajilain',1419578,1419578,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:33:45');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839217,'all_recalculate.id_bau',11960,11960,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:33:45'),
 (839218,'all_recalculate.total_semua_biaya',1221127501,1221127501,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:33:45'),
 (839219,'all_recalculate.total_semua_biaya_perjam',2422873,2422872,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:33:45'),
 (839220,'all_recalculate.total_tanpa_penyusutan_n_mtc',600874590,600874590,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:33:45'),
 (839221,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',1192212,1192211,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:33:45'),
 (839222,'all_recalculate.total_tanpa_penyusutan',1214133160,1214133159,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:33:45'),
 (839223,'all_recalculate.total_tanpa_penyusutan_perjam',2408995,2408994,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:33:45'),
 (839224,'all_recalculate.total_tanpa_mtc',600874590,600874590,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:33:45');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839225,'all_recalculate.total_tanpa_mtc_perjam',1206090,1206089,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:33:45'),
 (839226,'all_recalculate.id_labor',78443946,78443945,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:27'),
 (839227,'all_recalculate.id_penyusutan',7790192,7790192,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:27'),
 (839228,'all_recalculate.id_mtc',4414819,4414819,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:27'),
 (839229,'all_recalculate.id_gajilain',1419578,1419578,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:27'),
 (839230,'all_recalculate.id_bau',11960,11960,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:27'),
 (839231,'all_recalculate.total_semua_biaya',490090015,490090668,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:27'),
 (839232,'all_recalculate.total_semua_biaya_perjam',972401,972402,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:27');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839233,'all_recalculate.total_tanpa_penyusutan_n_mtc',477885004,477885658,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:27'),
 (839234,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',948185,948186,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:27'),
 (839235,'all_recalculate.total_tanpa_penyusutan',482299823,482300477,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:27'),
 (839236,'all_recalculate.total_tanpa_penyusutan_perjam',956945,956945,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:27'),
 (839237,'all_recalculate.total_tanpa_mtc',477885004,477885658,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:27'),
 (839238,'all_recalculate.total_tanpa_mtc_perjam',963642,963643,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:27'),
 (839239,'all_recalculate.id',378,379,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:27');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839240,'all_recalculate.id_labor',78443946,78443945,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:27'),
 (839241,'all_recalculate.id_penyusutan',7790192,6994342,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:27'),
 (839242,'all_recalculate.id_mtc',4414819,613258569,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:27'),
 (839243,'all_recalculate.id_bprodlain_insteadof_mtc',0,10622849,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:27'),
 (839244,'all_recalculate.id_gajilain',1419578,1419578,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:27'),
 (839245,'all_recalculate.id_bau',11960,11960,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:27'),
 (839246,'all_recalculate.total_semua_biaya',490090015,1221127501,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:27'),
 (839247,'all_recalculate.total_semua_biaya_perjam',972401,2422872,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:27');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839248,'all_recalculate.total_tanpa_penyusutan_n_mtc',477885004,600874590,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:27'),
 (839249,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',948185,1192211,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:27'),
 (839250,'all_recalculate.total_tanpa_penyusutan',482299823,1214133159,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:27'),
 (839251,'all_recalculate.total_tanpa_penyusutan_perjam',956945,2408994,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:27'),
 (839252,'all_recalculate.total_tanpa_mtc',477885004,600874590,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:27'),
 (839253,'all_recalculate.total_tanpa_mtc_perjam',963642,1206089,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:27'),
 (839254,'all_recalculate.id',378,380,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:27');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839255,'all_recalculate.id_labor',78443946,0,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:27'),
 (839256,'all_recalculate.id_penyusutan',7790192,0,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:27'),
 (839257,'all_recalculate.id_mtc',4414819,0,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:27'),
 (839258,'all_recalculate.id_gajilain',1419578,0,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:27'),
 (839259,'all_recalculate.id_bau',11960,0,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:27'),
 (839260,'all_recalculate.total_semua_biaya',490090015,0,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:27'),
 (839261,'all_recalculate.total_semua_biaya_perjam',972401,0,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:27'),
 (839262,'all_recalculate.total_tanpa_penyusutan_n_mtc',477885004,0,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:27');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839263,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',948185,0,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:27'),
 (839264,'all_recalculate.total_tanpa_penyusutan',482299823,0,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:27'),
 (839265,'all_recalculate.total_tanpa_penyusutan_perjam',956945,0,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:27'),
 (839266,'all_recalculate.total_tanpa_mtc',477885004,0,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:27'),
 (839267,'all_recalculate.total_tanpa_mtc_perjam',963642,0,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:27'),
 (839268,'all_recalculate.id',379,378,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839269,'all_recalculate.id_labor',78443946,78443945,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839270,'all_recalculate.id_penyusutan',6994342,7790192,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839271,'all_recalculate.id_mtc',613258570,4414819,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839272,'all_recalculate.id_bprodlain_insteadof_mtc',10622849,0,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839273,'all_recalculate.id_gajilain',1419578,1419578,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839274,'all_recalculate.id_bau',11960,11960,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839275,'all_recalculate.total_semua_biaya',1221126663,490090668,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839276,'all_recalculate.total_semua_biaya_perjam',2422871,972402,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839277,'all_recalculate.total_tanpa_penyusutan_n_mtc',600873752,477885658,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839278,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',1192210,948186,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839279,'all_recalculate.total_tanpa_penyusutan',1214132322,482300477,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839280,'all_recalculate.total_tanpa_penyusutan_perjam',2408993,956945,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839281,'all_recalculate.total_tanpa_mtc',600873752,477885658,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839282,'all_recalculate.total_tanpa_mtc_perjam',1206088,963643,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839283,'all_recalculate.id_labor',78443946,78443945,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839284,'all_recalculate.id_penyusutan',6994342,6994342,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839285,'all_recalculate.id_mtc',613258570,613258569,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839286,'all_recalculate.id_bprodlain_insteadof_mtc',10622849,10622849,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839287,'all_recalculate.id_gajilain',1419578,1419578,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839288,'all_recalculate.id_bau',11960,11960,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839289,'all_recalculate.total_semua_biaya',1221126663,1221127501,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839290,'all_recalculate.total_semua_biaya_perjam',2422871,2422872,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839291,'all_recalculate.total_tanpa_penyusutan_n_mtc',600873752,600874590,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839292,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',1192210,1192211,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839293,'all_recalculate.total_tanpa_penyusutan',1214132322,1214133159,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839294,'all_recalculate.total_tanpa_penyusutan_perjam',2408993,2408994,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839295,'all_recalculate.total_tanpa_mtc',600873752,600874590,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839296,'all_recalculate.total_tanpa_mtc_perjam',1206088,1206089,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839297,'all_recalculate.id',379,380,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839298,'all_recalculate.id_labor',78443946,0,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839299,'all_recalculate.id_penyusutan',6994342,0,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839300,'all_recalculate.id_mtc',613258570,0,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839301,'all_recalculate.id_bprodlain_insteadof_mtc',10622849,0,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839302,'all_recalculate.id_gajilain',1419578,0,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839303,'all_recalculate.id_bau',11960,0,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839304,'all_recalculate.total_semua_biaya',1221126663,0,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839305,'all_recalculate.total_semua_biaya_perjam',2422871,0,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839306,'all_recalculate.total_tanpa_penyusutan_n_mtc',600873752,0,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839307,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',1192210,0,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839308,'all_recalculate.total_tanpa_penyusutan',1214132322,0,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839309,'all_recalculate.total_tanpa_penyusutan_perjam',2408993,0,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839310,'all_recalculate.total_tanpa_mtc',600873752,0,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839311,'all_recalculate.total_tanpa_mtc_perjam',1206088,0,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839312,'all_recalculate.id',380,378,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839313,'all_recalculate.id_labor',86949916,78443945,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839314,'all_recalculate.id_penyusutan',20760326,7790192,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839315,'all_recalculate.id_mtc',3250564,4414819,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839316,'all_recalculate.id_bprodlain_insteadof_mtc',366215132498,0,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839317,'all_recalculate.id_gajilain',1419578,1419578,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839318,'all_recalculate.id_bau',11960,11960,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839319,'all_recalculate.total_semua_biaya',366628207311,490090668,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839320,'all_recalculate.total_semua_biaya_perjam',727436920,972402,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839321,'all_recalculate.total_tanpa_penyusutan_n_mtc',366604196422,477885658,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839322,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',727389279,948186,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839323,'all_recalculate.total_tanpa_penyusutan',366607446986,482300477,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839324,'all_recalculate.total_tanpa_penyusutan_perjam',727395729,956945,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839325,'all_recalculate.total_tanpa_mtc',366604196422,477885658,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839326,'all_recalculate.total_tanpa_mtc_perjam',727430470,963643,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839327,'all_recalculate.id',380,379,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839328,'all_recalculate.id_labor',86949916,78443945,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839329,'all_recalculate.id_penyusutan',20760326,6994342,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839330,'all_recalculate.id_mtc',3250564,613258569,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839331,'all_recalculate.id_bprodlain_insteadof_mtc',366215132498,10622849,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839332,'all_recalculate.id_gajilain',1419578,1419578,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839333,'all_recalculate.id_bau',11960,11960,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839334,'all_recalculate.total_semua_biaya',366628207311,1221127501,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839335,'all_recalculate.total_semua_biaya_perjam',727436920,2422872,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839336,'all_recalculate.total_tanpa_penyusutan_n_mtc',366604196422,600874590,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839337,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',727389279,1192211,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839338,'all_recalculate.total_tanpa_penyusutan',366607446986,1214133159,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839339,'all_recalculate.total_tanpa_penyusutan_perjam',727395729,2408994,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839340,'all_recalculate.total_tanpa_mtc',366604196422,600874590,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839341,'all_recalculate.total_tanpa_mtc_perjam',727430470,1206089,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839342,'all_recalculate.id_labor',86949916,0,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839343,'all_recalculate.id_penyusutan',20760326,0,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839344,'all_recalculate.id_mtc',3250564,0,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839345,'all_recalculate.id_bprodlain_insteadof_mtc',366215132498,0,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839346,'all_recalculate.id_gajilain',1419578,0,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839347,'all_recalculate.id_bau',11960,0,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839348,'all_recalculate.total_semua_biaya',366628207311,0,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839349,'all_recalculate.total_semua_biaya_perjam',727436920,0,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839350,'all_recalculate.total_tanpa_penyusutan_n_mtc',366604196422,0,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839351,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',727389279,0,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839352,'all_recalculate.total_tanpa_penyusutan',366607446986,0,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839353,'all_recalculate.total_tanpa_penyusutan_perjam',727395729,0,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839354,'all_recalculate.total_tanpa_mtc',366604196422,0,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839355,'all_recalculate.total_tanpa_mtc_perjam',727430470,0,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:35:28'),
 (839356,'all_recalculate.id_labor',78443946,78443945,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:10');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839357,'all_recalculate.id_penyusutan',7790192,7790192,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:10'),
 (839358,'all_recalculate.id_mtc',4414819,4414819,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:10'),
 (839359,'all_recalculate.id_gajilain',1419578,1419578,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:10'),
 (839360,'all_recalculate.id_bau',11960,11960,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:10'),
 (839361,'all_recalculate.total_semua_biaya',490088505,490090014,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:10'),
 (839362,'all_recalculate.total_semua_biaya_perjam',972398,972401,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:10'),
 (839363,'all_recalculate.total_tanpa_penyusutan_n_mtc',477883494,477885004,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:10'),
 (839364,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',948182,948185,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:10');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839365,'all_recalculate.total_tanpa_penyusutan',482298313,482299823,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:10'),
 (839366,'all_recalculate.total_tanpa_penyusutan_perjam',956942,956944,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:10'),
 (839367,'all_recalculate.total_tanpa_mtc',477883494,477885004,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:10'),
 (839368,'all_recalculate.total_tanpa_mtc_perjam',963639,963641,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:10'),
 (839369,'all_recalculate.id',378,379,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:10'),
 (839370,'all_recalculate.id_labor',78443946,78443945,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:10'),
 (839371,'all_recalculate.id_penyusutan',7790192,6994342,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:10'),
 (839372,'all_recalculate.id_mtc',4414819,613258569,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:10');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839373,'all_recalculate.id_bprodlain_insteadof_mtc',0,10622849,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:10'),
 (839374,'all_recalculate.id_gajilain',1419578,1419578,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:10'),
 (839375,'all_recalculate.id_bau',11960,11960,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:10'),
 (839376,'all_recalculate.total_semua_biaya',490088505,1221126663,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:10'),
 (839377,'all_recalculate.total_semua_biaya_perjam',972398,2422870,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:10'),
 (839378,'all_recalculate.total_tanpa_penyusutan_n_mtc',477883494,600873752,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:10'),
 (839379,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',948182,1192210,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:10'),
 (839380,'all_recalculate.total_tanpa_penyusutan',482298313,1214132321,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:10');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839381,'all_recalculate.total_tanpa_penyusutan_perjam',956942,2408993,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:10'),
 (839382,'all_recalculate.total_tanpa_mtc',477883494,600873752,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:10'),
 (839383,'all_recalculate.total_tanpa_mtc_perjam',963639,1206087,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:10'),
 (839384,'all_recalculate.id',378,380,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:10'),
 (839385,'all_recalculate.id_labor',78443946,86949915,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:10'),
 (839386,'all_recalculate.id_penyusutan',7790192,20760326,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:10'),
 (839387,'all_recalculate.id_mtc',4414819,3250564,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:10'),
 (839388,'all_recalculate.id_bprodlain_insteadof_mtc',0,366215132498,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:10');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839389,'all_recalculate.id_gajilain',1419578,1419578,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:10'),
 (839390,'all_recalculate.id_bau',11960,11960,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:10'),
 (839391,'all_recalculate.total_semua_biaya',490088505,366628207311,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:10'),
 (839392,'all_recalculate.total_semua_biaya_perjam',972398,727436919,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:10'),
 (839393,'all_recalculate.total_tanpa_penyusutan_n_mtc',477883494,366604196421,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:10'),
 (839394,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',948182,727389279,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:10'),
 (839395,'all_recalculate.total_tanpa_penyusutan',482298313,366607446985,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:10'),
 (839396,'all_recalculate.total_tanpa_penyusutan_perjam',956942,727395728,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:10');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839397,'all_recalculate.total_tanpa_mtc',477883494,366604196421,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:10'),
 (839398,'all_recalculate.total_tanpa_mtc_perjam',963639,727430470,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:10'),
 (839399,'all_recalculate.id',379,378,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839400,'all_recalculate.id_labor',78443946,78443945,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839401,'all_recalculate.id_penyusutan',6994342,7790192,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839402,'all_recalculate.id_mtc',613258570,4414819,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839403,'all_recalculate.id_bprodlain_insteadof_mtc',10622849,0,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839404,'all_recalculate.id_gajilain',1419578,1419578,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839405,'all_recalculate.id_bau',11960,11960,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839406,'all_recalculate.total_semua_biaya',1221124727,490090014,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839407,'all_recalculate.total_semua_biaya_perjam',2422867,972401,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839408,'all_recalculate.total_tanpa_penyusutan_n_mtc',600871816,477885004,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839409,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',1192206,948185,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839410,'all_recalculate.total_tanpa_penyusutan',1214130386,482299823,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839411,'all_recalculate.total_tanpa_penyusutan_perjam',2408989,956944,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839412,'all_recalculate.total_tanpa_mtc',600871816,477885004,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839413,'all_recalculate.total_tanpa_mtc_perjam',1206084,963641,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839414,'all_recalculate.id_labor',78443946,78443945,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839415,'all_recalculate.id_penyusutan',6994342,6994342,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839416,'all_recalculate.id_mtc',613258570,613258569,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839417,'all_recalculate.id_bprodlain_insteadof_mtc',10622849,10622849,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839418,'all_recalculate.id_gajilain',1419578,1419578,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839419,'all_recalculate.id_bau',11960,11960,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839420,'all_recalculate.total_semua_biaya',1221124727,1221126663,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839421,'all_recalculate.total_semua_biaya_perjam',2422867,2422870,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839422,'all_recalculate.total_tanpa_penyusutan_n_mtc',600871816,600873752,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839423,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',1192206,1192210,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839424,'all_recalculate.total_tanpa_penyusutan',1214130386,1214132321,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839425,'all_recalculate.total_tanpa_penyusutan_perjam',2408989,2408993,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839426,'all_recalculate.total_tanpa_mtc',600871816,600873752,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839427,'all_recalculate.total_tanpa_mtc_perjam',1206084,1206087,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839428,'all_recalculate.id',379,380,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839429,'all_recalculate.id_labor',78443946,86949915,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839430,'all_recalculate.id_penyusutan',6994342,20760326,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839431,'all_recalculate.id_mtc',613258570,3250564,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839432,'all_recalculate.id_bprodlain_insteadof_mtc',10622849,366215132498,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839433,'all_recalculate.id_gajilain',1419578,1419578,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839434,'all_recalculate.id_bau',11960,11960,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839435,'all_recalculate.total_semua_biaya',1221124727,366628207311,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839436,'all_recalculate.total_semua_biaya_perjam',2422867,727436919,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839437,'all_recalculate.total_tanpa_penyusutan_n_mtc',600871816,366604196421,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839438,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',1192206,727389279,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839439,'all_recalculate.total_tanpa_penyusutan',1214130386,366607446985,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839440,'all_recalculate.total_tanpa_penyusutan_perjam',2408989,727395728,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839441,'all_recalculate.total_tanpa_mtc',600871816,366604196421,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839442,'all_recalculate.total_tanpa_mtc_perjam',1206084,727430470,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839443,'all_recalculate.id',380,378,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839444,'all_recalculate.id_labor',86949916,78443945,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839445,'all_recalculate.id_penyusutan',20760326,7790192,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839446,'all_recalculate.id_mtc',3250564,4414819,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839447,'all_recalculate.id_bprodlain_insteadof_mtc',366215132498,0,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839448,'all_recalculate.id_gajilain',1419578,1419578,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839449,'all_recalculate.id_bau',11960,11960,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839450,'all_recalculate.total_semua_biaya',370548702739,490090014,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839451,'all_recalculate.total_semua_biaya_perjam',735215681,972401,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839452,'all_recalculate.total_tanpa_penyusutan_n_mtc',370524691850,477885004,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839453,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',735168040,948185,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839454,'all_recalculate.total_tanpa_penyusutan',370527942414,482299823,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839455,'all_recalculate.total_tanpa_penyusutan_perjam',735174489,956944,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839456,'all_recalculate.total_tanpa_mtc',370524691850,477885004,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839457,'all_recalculate.total_tanpa_mtc_perjam',735209231,963641,3,2,99,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839458,'all_recalculate.id',380,379,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839459,'all_recalculate.id_labor',86949916,78443945,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839460,'all_recalculate.id_penyusutan',20760326,6994342,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839461,'all_recalculate.id_mtc',3250564,613258569,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839462,'all_recalculate.id_bprodlain_insteadof_mtc',366215132498,10622849,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839463,'all_recalculate.id_gajilain',1419578,1419578,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839464,'all_recalculate.id_bau',11960,11960,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839465,'all_recalculate.total_semua_biaya',370548702739,1221126663,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839466,'all_recalculate.total_semua_biaya_perjam',735215681,2422870,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839467,'all_recalculate.total_tanpa_penyusutan_n_mtc',370524691850,600873752,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839468,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',735168040,1192210,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839469,'all_recalculate.total_tanpa_penyusutan',370527942414,1214132321,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839470,'all_recalculate.total_tanpa_penyusutan_perjam',735174489,2408993,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839471,'all_recalculate.total_tanpa_mtc',370524691850,600873752,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839472,'all_recalculate.total_tanpa_mtc_perjam',735209231,1206087,3,2,100,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839473,'all_recalculate.id_labor',86949916,86949915,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839474,'all_recalculate.id_penyusutan',20760326,20760326,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839475,'all_recalculate.id_mtc',3250564,3250564,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839476,'all_recalculate.id_bprodlain_insteadof_mtc',366215132498,366215132498,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839477,'all_recalculate.id_gajilain',1419578,1419578,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839478,'all_recalculate.id_bau',11960,11960,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839479,'all_recalculate.total_semua_biaya',370548702739,366628207311,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839480,'all_recalculate.total_semua_biaya_perjam',735215681,727436919,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11');
INSERT INTO `history_recalculate_temporary` (`id`,`table_column`,`history_latest`,`before`,`company`,`group_mesin`,`code_mesin`,`category_id`,`changed_by`,`created_by`,`created_at`,`updated_at`) VALUES 
 (839481,'all_recalculate.total_tanpa_penyusutan_n_mtc',370524691850,366604196421,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839482,'all_recalculate.total_tanpa_penyusutan_n_mtc_perjam',735168040,727389279,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839483,'all_recalculate.total_tanpa_penyusutan',370527942414,366607446985,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839484,'all_recalculate.total_tanpa_penyusutan_perjam',735174489,727395728,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839485,'all_recalculate.total_tanpa_mtc',370524691850,366604196421,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11'),
 (839486,'all_recalculate.total_tanpa_mtc_perjam',735209231,727430470,3,3,110,2,'EDP Administrator',NULL,NULL,'2021-04-13 16:37:11');
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
) ENGINE=InnoDB AUTO_INCREMENT=743 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`hlogs_listriks`
--

/*!40000 ALTER TABLE `hlogs_listriks` DISABLE KEYS */;
INSERT INTO `hlogs_listriks` (`id`,`changed_by`,`table_column`,`before`,`history_latest`,`created_at`,`updated_at`,`company_id`,`code_mesin`,`group_mesin`,`category_id`,`created_by`) VALUES 
 (347,'Admin','listrik.ncost_bulan_plus_adm',652756799,652756799,NULL,'2021-03-30 13:39:51',3,63,5,3,NULL),
 (348,'Admin','listrik.ncost_bulan_plus_adm',220279295,220279295,NULL,'2021-03-30 13:39:51',3,10,2,2,NULL),
 (349,'Admin','listrik.ncost_bulan_plus_adm',806658289,806658289,NULL,'2021-03-30 13:39:51',3,64,5,3,NULL),
 (350,'Admin','listrik.ncost_bulan_plus_adm',58335078,58335078,NULL,'2021-03-30 13:39:51',3,57,2,2,NULL),
 (351,'Admin','listrik.nilai_cost_bulan',56635802,73568578,NULL,'2021-03-30 13:41:22',3,57,2,2,NULL),
 (352,'Admin','listrik.WBP_faktorkali',1231,4123,NULL,'2021-03-30 13:41:22',3,57,2,2,NULL),
 (353,'Admin','listrik.total_biaya_listrik',14158951,18392145,NULL,'2021-03-30 13:41:22',3,57,2,2,NULL),
 (354,'Admin','listrik.persen_cost_perbulan',1,0,NULL,'2021-03-30 13:41:22',3,57,2,2,NULL),
 (355,'Admin','listrik.ncost_bulan_plus_adm',58335078,0,NULL,'2021-03-30 13:41:22',3,57,2,2,NULL);
INSERT INTO `hlogs_listriks` (`id`,`changed_by`,`table_column`,`before`,`history_latest`,`created_at`,`updated_at`,`company_id`,`code_mesin`,`group_mesin`,`category_id`,`created_by`) VALUES 
 (356,'Admin','listrik.ncost_bulan_plus_adm',0,652756777,NULL,'2021-03-30 13:41:48',3,63,5,3,NULL),
 (357,'Admin','listrik.ncost_bulan_plus_adm',0,220279288,NULL,'2021-03-30 13:41:48',3,10,2,2,NULL),
 (358,'Admin','listrik.ncost_bulan_plus_adm',0,806658261,NULL,'2021-03-30 13:41:48',3,64,5,3,NULL),
 (359,'Admin','listrik.ncost_bulan_plus_adm',0,75775894,NULL,'2021-03-30 13:41:48',3,57,2,2,NULL),
 (360,NULL,'listrik',5813028849,5813028849,'2021-03-31 08:52:00','2021-03-31 08:52:00',3,64,5,3,'Admin'),
 (361,NULL,'listrik',885870,885870,'2021-04-01 10:55:44','2021-04-01 10:55:44',3,95,2,2,'Admin'),
 (362,'Admin','listrik.ncost_bulan_plus_adm',0,652755125,NULL,'2021-04-01 10:56:13',3,63,5,3,NULL),
 (363,'Admin','listrik.ncost_bulan_plus_adm',0,220278730,NULL,'2021-04-01 10:56:13',3,10,2,2,NULL),
 (364,'Admin','listrik.ncost_bulan_plus_adm',0,5813021944,NULL,'2021-04-01 10:56:13',3,64,5,3,NULL),
 (365,'Admin','listrik.ncost_bulan_plus_adm',0,75775703,NULL,'2021-04-01 10:56:13',3,57,2,2,NULL);
INSERT INTO `hlogs_listriks` (`id`,`changed_by`,`table_column`,`before`,`history_latest`,`created_at`,`updated_at`,`company_id`,`code_mesin`,`group_mesin`,`category_id`,`created_by`) VALUES 
 (366,'Admin','listrik.ncost_bulan_plus_adm',0,885870,NULL,'2021-04-01 10:56:13',3,95,2,2,NULL),
 (367,'Admin','listrik.nilai_cost_bulan',860068,431317664,NULL,'2021-04-01 10:58:52',3,95,2,2,NULL),
 (368,'Admin','listrik.LWBP_faktorkali',12,6666,NULL,'2021-04-01 10:58:52',3,95,2,2,NULL),
 (369,'Admin','listrik.WBP_faktorkali',21,7777,NULL,'2021-04-01 10:58:52',3,95,2,2,NULL),
 (370,'Admin','listrik.total_biaya_listrik',215017,107829416,NULL,'2021-04-01 10:58:52',3,95,2,2,NULL),
 (371,'Admin','listrik.persen_cost_perbulan',1,0,NULL,'2021-04-01 10:58:52',3,95,2,2,NULL),
 (372,'Admin','listrik.ncost_bulan_plus_adm',885870,0,NULL,'2021-04-01 10:58:52',3,95,2,2,NULL),
 (373,'Admin','listrik.ncost_bulan_plus_adm',0,652755089,NULL,'2021-04-01 10:59:02',3,63,5,3,NULL),
 (374,'Admin','listrik.ncost_bulan_plus_adm',0,220278718,NULL,'2021-04-01 10:59:02',3,10,2,2,NULL),
 (375,'Admin','listrik.ncost_bulan_plus_adm',0,5813021626,NULL,'2021-04-01 10:59:02',3,64,5,3,NULL);
INSERT INTO `hlogs_listriks` (`id`,`changed_by`,`table_column`,`before`,`history_latest`,`created_at`,`updated_at`,`company_id`,`code_mesin`,`group_mesin`,`category_id`,`created_by`) VALUES 
 (376,'Admin','listrik.ncost_bulan_plus_adm',0,75775699,NULL,'2021-04-01 10:59:02',3,57,2,2,NULL),
 (377,'Admin','listrik.ncost_bulan_plus_adm',0,444257564,NULL,'2021-04-01 10:59:02',3,95,2,2,NULL),
 (378,NULL,'listrik',218431724,218431724,'2021-04-01 13:19:39','2021-04-01 13:19:39',3,58,2,2,'Admin'),
 (379,'Admin','listrik.ncost_bulan_plus_adm',0,652755073,NULL,'2021-04-01 13:20:02',3,63,5,3,NULL),
 (380,'Admin','listrik.ncost_bulan_plus_adm',0,220278713,NULL,'2021-04-01 13:20:02',3,10,2,2,NULL),
 (381,'Admin','listrik.ncost_bulan_plus_adm',0,5813021484,NULL,'2021-04-01 13:20:02',3,64,5,3,NULL),
 (382,'Admin','listrik.ncost_bulan_plus_adm',0,75775697,NULL,'2021-04-01 13:20:02',3,57,2,2,NULL),
 (383,'Admin','listrik.ncost_bulan_plus_adm',0,444257553,NULL,'2021-04-01 13:20:02',3,95,2,2,NULL),
 (384,'Admin','listrik.ncost_bulan_plus_adm',0,218431718,NULL,'2021-04-01 13:20:02',3,58,2,2,NULL),
 (385,'Admin','listrik.code_mesin',58,48,NULL,'2021-04-01 21:03:38',3,48,2,2,NULL);
INSERT INTO `hlogs_listriks` (`id`,`changed_by`,`table_column`,`before`,`history_latest`,`created_at`,`updated_at`,`company_id`,`code_mesin`,`group_mesin`,`category_id`,`created_by`) VALUES 
 (386,'Admin','listrik.persen_cost_perbulan',1,0,NULL,'2021-04-01 21:03:38',3,48,2,2,NULL),
 (387,'Admin','listrik.ncost_bulan_plus_adm',218431718,0,NULL,'2021-04-01 21:03:38',3,48,2,2,NULL),
 (388,'Admin','listrik.code_mesin',48,47,NULL,'2021-04-05 08:55:34',3,47,2,2,NULL),
 (389,'Admin','listrik.code_mesin',47,46,NULL,'2021-04-05 09:06:16',3,46,2,2,NULL),
 (390,'Admin','listrik.ncost_bulan_plus_adm',0,652755073,NULL,'2021-04-05 10:45:02',3,63,5,3,NULL),
 (391,'Admin','listrik.ncost_bulan_plus_adm',0,220278713,NULL,'2021-04-05 10:45:02',3,10,2,2,NULL),
 (392,'Admin','listrik.ncost_bulan_plus_adm',0,5813021484,NULL,'2021-04-05 10:45:02',3,64,5,3,NULL),
 (393,'Admin','listrik.ncost_bulan_plus_adm',0,75775697,NULL,'2021-04-05 10:45:02',3,57,2,2,NULL),
 (394,'Admin','listrik.ncost_bulan_plus_adm',0,444257553,NULL,'2021-04-05 10:45:02',3,95,2,2,NULL),
 (395,'Admin','listrik.ncost_bulan_plus_adm',0,218431718,NULL,'2021-04-05 10:45:02',3,46,2,2,NULL);
INSERT INTO `hlogs_listriks` (`id`,`changed_by`,`table_column`,`before`,`history_latest`,`created_at`,`updated_at`,`company_id`,`code_mesin`,`group_mesin`,`category_id`,`created_by`) VALUES 
 (396,'Admin','listrik.code_mesin',95,21,NULL,'2021-04-05 10:46:51',3,21,2,2,NULL),
 (397,'Admin','listrik.persen_cost_perbulan',1,0,NULL,'2021-04-05 10:46:51',3,21,2,2,NULL),
 (398,'Admin','listrik.ncost_bulan_plus_adm',444257553,0,NULL,'2021-04-05 10:46:51',3,21,2,2,NULL),
 (399,'Admin','listrik.code_mesin',57,9,NULL,'2021-04-05 10:47:49',3,9,2,2,NULL),
 (400,'Admin','listrik.ncost_bulan_plus_adm',0,652755073,NULL,'2021-04-05 10:49:43',3,63,5,3,NULL),
 (401,'Admin','listrik.ncost_bulan_plus_adm',0,220278713,NULL,'2021-04-05 10:49:43',3,10,2,2,NULL),
 (402,'Admin','listrik.ncost_bulan_plus_adm',0,5813021484,NULL,'2021-04-05 10:49:43',3,64,5,3,NULL),
 (403,'Admin','listrik.ncost_bulan_plus_adm',0,75775697,NULL,'2021-04-05 10:49:43',3,9,2,2,NULL),
 (404,'Admin','listrik.ncost_bulan_plus_adm',0,444257553,NULL,'2021-04-05 10:49:43',3,21,2,2,NULL),
 (405,'Admin','listrik.ncost_bulan_plus_adm',0,218431718,NULL,'2021-04-05 10:49:43',3,46,2,2,NULL);
INSERT INTO `hlogs_listriks` (`id`,`changed_by`,`table_column`,`before`,`history_latest`,`created_at`,`updated_at`,`company_id`,`code_mesin`,`group_mesin`,`category_id`,`created_by`) VALUES 
 (406,'Admin','listrik.ncost_bulan_plus_adm',652755073,652755073,NULL,'2021-04-05 13:42:01',3,63,5,3,NULL),
 (407,'Admin','listrik.ncost_bulan_plus_adm',220278713,220278713,NULL,'2021-04-05 13:42:01',3,10,2,2,NULL),
 (408,'Admin','listrik.ncost_bulan_plus_adm',5813021484,5813021484,NULL,'2021-04-05 13:42:01',3,64,5,3,NULL),
 (409,'Admin','listrik.ncost_bulan_plus_adm',75775697,75775697,NULL,'2021-04-05 13:42:01',3,9,2,2,NULL),
 (410,'Admin','listrik.ncost_bulan_plus_adm',444257553,444257553,NULL,'2021-04-05 13:42:01',3,21,2,2,NULL),
 (411,'Admin','listrik.ncost_bulan_plus_adm',218431718,218431718,NULL,'2021-04-05 13:42:01',3,46,2,2,NULL),
 (412,NULL,'listrik',523718402563,523718402563,'2021-04-05 14:04:04','2021-04-05 14:04:04',3,93,1,4,'Admin'),
 (413,'Admin','listrik.ncost_bulan_plus_adm',0,652754553,NULL,'2021-04-05 14:04:38',3,63,5,3,NULL),
 (414,'Admin','listrik.ncost_bulan_plus_adm',0,220278537,NULL,'2021-04-05 14:04:38',3,10,2,2,NULL);
INSERT INTO `hlogs_listriks` (`id`,`changed_by`,`table_column`,`before`,`history_latest`,`created_at`,`updated_at`,`company_id`,`code_mesin`,`group_mesin`,`category_id`,`created_by`) VALUES 
 (415,'Admin','listrik.ncost_bulan_plus_adm',0,5813016852,NULL,'2021-04-05 14:04:38',3,64,5,3,NULL),
 (416,'Admin','listrik.ncost_bulan_plus_adm',0,75775636,NULL,'2021-04-05 14:04:38',3,9,2,2,NULL),
 (417,'Admin','listrik.ncost_bulan_plus_adm',0,444257199,NULL,'2021-04-05 14:04:38',3,21,2,2,NULL),
 (418,'Admin','listrik.ncost_bulan_plus_adm',0,218431544,NULL,'2021-04-05 14:04:38',3,46,2,2,NULL),
 (419,'Admin','listrik.ncost_bulan_plus_adm',0,523717985245,NULL,'2021-04-05 14:04:38',3,93,1,4,NULL),
 (420,NULL,'listrik',5529512,5529512,'2021-04-05 15:48:02','2021-04-05 15:48:02',3,91,6,4,'Admin'),
 (421,'Admin','listrik.ncost_bulan_plus_adm',0,652754553,NULL,'2021-04-05 15:48:20',3,63,5,3,NULL),
 (422,'Admin','listrik.ncost_bulan_plus_adm',0,220278537,NULL,'2021-04-05 15:48:20',3,10,2,2,NULL),
 (423,'Admin','listrik.ncost_bulan_plus_adm',0,5813016852,NULL,'2021-04-05 15:48:20',3,64,5,3,NULL),
 (424,'Admin','listrik.ncost_bulan_plus_adm',0,75775636,NULL,'2021-04-05 15:48:20',3,9,2,2,NULL);
INSERT INTO `hlogs_listriks` (`id`,`changed_by`,`table_column`,`before`,`history_latest`,`created_at`,`updated_at`,`company_id`,`code_mesin`,`group_mesin`,`category_id`,`created_by`) VALUES 
 (425,'Admin','listrik.ncost_bulan_plus_adm',0,444257199,NULL,'2021-04-05 15:48:20',3,21,2,2,NULL),
 (426,'Admin','listrik.ncost_bulan_plus_adm',0,218431544,NULL,'2021-04-05 15:48:20',3,46,2,2,NULL),
 (427,'Admin','listrik.ncost_bulan_plus_adm',0,523717985245,NULL,'2021-04-05 15:48:20',3,93,1,4,NULL),
 (428,'Admin','listrik.ncost_bulan_plus_adm',0,5529512,NULL,'2021-04-05 15:48:20',3,91,6,4,NULL),
 (429,'Admin','listrik.ampere',12310,2411,NULL,'2021-04-05 15:56:18',3,93,1,4,NULL),
 (430,'Admin','listrik.voltase',10100,124,NULL,'2021-04-05 15:56:18',3,93,1,4,NULL),
 (431,'Admin','listrik.LWBP_perminggu',12681762,30495,NULL,'2021-04-05 15:56:18',3,93,1,4,NULL),
 (432,'Admin','listrik.WBP_perminggu',2983944,7176,NULL,'2021-04-05 15:56:18',3,93,1,4,NULL),
 (433,'Admin','listrik.nilai_cost_bulan',508464057600,670954143,NULL,'2021-04-05 15:56:18',3,93,1,4,NULL),
 (434,'Admin','listrik.LWBP_faktorkali',9320,5211,NULL,'2021-04-05 15:56:18',3,93,1,4,NULL);
INSERT INTO `hlogs_listriks` (`id`,`changed_by`,`table_column`,`before`,`history_latest`,`created_at`,`updated_at`,`company_id`,`code_mesin`,`group_mesin`,`category_id`,`created_by`) VALUES 
 (435,'Admin','listrik.WBP_faktorkali',2990,1231,NULL,'2021-04-05 15:56:18',3,93,1,4,NULL),
 (436,'Admin','listrik.total_biaya_listrik',127116014400,167738536,NULL,'2021-04-05 15:56:18',3,93,1,4,NULL),
 (437,'Admin','listrik.persen_cost_perbulan',1,0,NULL,'2021-04-05 15:56:18',3,93,1,4,NULL),
 (438,'Admin','listrik.ncost_bulan_plus_adm',523717985245,0,NULL,'2021-04-05 15:56:18',3,93,1,4,NULL),
 (439,'Admin','listrik.ncost_bulan_plus_adm',0,652755028,NULL,'2021-04-05 15:56:27',3,63,5,3,NULL),
 (440,'Admin','listrik.ncost_bulan_plus_adm',0,220278698,NULL,'2021-04-05 15:56:27',3,10,2,2,NULL),
 (441,'Admin','listrik.ncost_bulan_plus_adm',0,5813021081,NULL,'2021-04-05 15:56:27',3,64,5,3,NULL),
 (442,'Admin','listrik.ncost_bulan_plus_adm',0,75775691,NULL,'2021-04-05 15:56:27',3,9,2,2,NULL),
 (443,'Admin','listrik.ncost_bulan_plus_adm',0,444257523,NULL,'2021-04-05 15:56:27',3,21,2,2,NULL),
 (444,'Admin','listrik.ncost_bulan_plus_adm',0,218431703,NULL,'2021-04-05 15:56:27',3,46,2,2,NULL);
INSERT INTO `hlogs_listriks` (`id`,`changed_by`,`table_column`,`before`,`history_latest`,`created_at`,`updated_at`,`company_id`,`code_mesin`,`group_mesin`,`category_id`,`created_by`) VALUES 
 (445,'Admin','listrik.ncost_bulan_plus_adm',0,691083278,NULL,'2021-04-05 15:56:27',3,93,1,4,NULL),
 (446,'Admin','listrik.ncost_bulan_plus_adm',0,5529516,NULL,'2021-04-05 15:56:27',3,91,6,4,NULL),
 (447,NULL,'listrik',0,0,'2021-04-06 22:40:56','2021-04-06 22:40:56',3,11,2,2,'Admin'),
 (448,NULL,'listrik',0,0,'2021-04-06 22:43:49','2021-04-06 22:43:49',3,11,2,2,'Admin'),
 (449,'Admin','listrik.ncost_bulan_plus_adm',0,12620571,NULL,'2021-04-06 22:44:36',3,11,2,2,NULL),
 (450,NULL,'listrik',0,0,'2021-04-06 23:27:25','2021-04-06 23:27:25',3,89,1,1,'Admin'),
 (451,NULL,'listrik',12620571,12620571,'2021-04-06 23:35:57','2021-04-06 23:35:57',3,11,2,2,'Admin'),
 (452,NULL,'listrik',1217954900,1217954900,'2021-04-06 23:36:49','2021-04-06 23:36:49',3,89,1,1,'Admin'),
 (453,'Admin','listrik.LWBP_perminggu',29230,12036,NULL,'2021-04-06 23:37:17',3,89,1,1,NULL),
 (454,'Admin','listrik.nilai_cost_bulan',1181918317,1153582869,NULL,'2021-04-06 23:37:17',3,89,1,1,NULL);
INSERT INTO `hlogs_listriks` (`id`,`changed_by`,`table_column`,`before`,`history_latest`,`created_at`,`updated_at`,`company_id`,`code_mesin`,`group_mesin`,`category_id`,`created_by`) VALUES 
 (455,'Admin','listrik.total_biaya_listrik',295479580,288395718,NULL,'2021-04-06 23:37:17',3,89,1,1,NULL),
 (456,'Admin','listrik.assumptionshift_lwbp3',17,7,NULL,'2021-04-06 23:37:17',3,89,1,1,NULL),
 (457,'Admin','listrik.ncost_bulan_plus_adm',0,12614634,NULL,'2021-04-06 23:37:29',3,11,2,2,NULL),
 (458,'Admin','listrik.ncost_bulan_plus_adm',0,1188196292,NULL,'2021-04-06 23:37:29',3,89,1,1,NULL),
 (459,'Admin','listrik.voltase',390,1320,NULL,'2021-04-07 01:54:26',3,11,2,2,NULL),
 (460,'Admin','listrik.LWBP_perminggu',3231,10933,NULL,'2021-04-07 01:54:26',3,11,2,2,NULL),
 (461,'Admin','listrik.WBP_perminggu',761,2573,NULL,'2021-04-07 01:54:26',3,11,2,2,NULL),
 (462,'Admin','listrik.nilai_cost_bulan',12247156,42377982,NULL,'2021-04-07 01:54:26',3,11,2,2,NULL),
 (463,'Admin','listrik.WBP_faktorkali',331,421,NULL,'2021-04-07 01:54:26',3,11,2,2,NULL),
 (464,'Admin','listrik.total_biaya_listrik',3061789,10594496,NULL,'2021-04-07 01:54:26',3,11,2,2,NULL);
INSERT INTO `hlogs_listriks` (`id`,`changed_by`,`table_column`,`before`,`history_latest`,`created_at`,`updated_at`,`company_id`,`code_mesin`,`group_mesin`,`category_id`,`created_by`) VALUES 
 (465,'Admin','listrik.persen_cost_perbulan',1,0,NULL,'2021-04-07 01:54:26',3,11,2,2,NULL),
 (466,'Admin','listrik.ncost_bulan_plus_adm',12614634,0,NULL,'2021-04-07 01:54:26',3,11,2,2,NULL),
 (467,'Admin','listrik.ncost_bulan_plus_adm',0,43649534,NULL,'2021-04-07 01:54:33',3,11,2,2,NULL),
 (468,'Admin','listrik.ncost_bulan_plus_adm',0,1188196142,NULL,'2021-04-07 01:54:33',3,89,1,1,NULL),
 (469,'Admin','listrik.ampere',2311,1123,NULL,'2021-04-07 01:57:25',3,89,1,1,NULL),
 (470,'Admin','listrik.voltase',124,421,NULL,'2021-04-07 01:57:25',3,89,1,1,NULL),
 (471,'Admin','listrik.LWBP_perminggu',12036,19857,NULL,'2021-04-07 01:57:25',3,89,1,1,NULL),
 (472,'Admin','listrik.WBP_perminggu',6878,11347,NULL,'2021-04-07 01:57:25',3,89,1,1,NULL),
 (473,'Admin','listrik.nilai_cost_bulan',1153582869,195947752,NULL,'2021-04-07 01:57:25',3,89,1,1,NULL),
 (474,'Admin','listrik.LWBP_faktorkali',412,111,NULL,'2021-04-07 01:57:25',3,89,1,1,NULL);
INSERT INTO `hlogs_listriks` (`id`,`changed_by`,`table_column`,`before`,`history_latest`,`created_at`,`updated_at`,`company_id`,`code_mesin`,`group_mesin`,`category_id`,`created_by`) VALUES 
 (475,'Admin','listrik.WBP_faktorkali',41212,4123,NULL,'2021-04-07 01:57:25',3,89,1,1,NULL),
 (476,'Admin','listrik.total_biaya_listrik',288395718,48986938,NULL,'2021-04-07 01:57:25',3,89,1,1,NULL),
 (477,'Admin','listrik.persen_cost_perbulan',1,0,NULL,'2021-04-07 01:57:25',3,89,1,1,NULL),
 (478,'Admin','listrik.ncost_bulan_plus_adm',1188196142,0,NULL,'2021-04-07 01:57:25',3,89,1,1,NULL),
 (479,'Admin','listrik.ncost_bulan_plus_adm',0,43650388,NULL,'2021-04-07 01:57:32',3,11,2,2,NULL),
 (480,'Admin','listrik.ncost_bulan_plus_adm',0,201831117,NULL,'2021-04-07 01:57:32',3,89,1,1,NULL),
 (481,'Admin','listrik.ncost_bulan_plus_adm',43650388,43650388,NULL,'2021-04-07 02:00:08',3,11,2,2,NULL),
 (482,'Admin','listrik.ncost_bulan_plus_adm',201831117,201831117,NULL,'2021-04-07 02:00:08',3,89,1,1,NULL),
 (483,'Admin','listrik.ncost_bulan_plus_adm',43650388,43650388,NULL,'2021-04-07 02:04:19',3,11,2,2,NULL),
 (484,'Admin','listrik.ncost_bulan_plus_adm',201831117,201831117,NULL,'2021-04-07 02:04:19',3,89,1,1,NULL);
INSERT INTO `hlogs_listriks` (`id`,`changed_by`,`table_column`,`before`,`history_latest`,`created_at`,`updated_at`,`company_id`,`code_mesin`,`group_mesin`,`category_id`,`created_by`) VALUES 
 (485,NULL,'listrik',1694753233,1694753233,'2021-04-07 02:09:15','2021-04-07 02:09:15',3,92,1,1,'Admin'),
 (486,'Admin','listrik.ncost_bulan_plus_adm',0,43649456,NULL,'2021-04-07 02:09:40',3,11,2,2,NULL),
 (487,'Admin','listrik.ncost_bulan_plus_adm',0,201826808,NULL,'2021-04-07 02:09:40',3,89,1,1,NULL),
 (488,'Admin','listrik.ncost_bulan_plus_adm',0,1694717051,NULL,'2021-04-07 02:09:40',3,92,1,1,NULL),
 (489,NULL,'listrik',0,0,'2021-04-07 08:31:16','2021-04-07 08:31:16',3,88,2,3,'Admin'),
 (490,NULL,'listrik',40850506,40850506,'2021-04-07 08:40:50','2021-04-07 08:40:50',3,88,2,3,'Admin'),
 (491,'Admin','listrik.ncost_bulan_plus_adm',0,40850504,NULL,'2021-04-07 08:45:08',3,88,2,3,NULL),
 (492,'Admin','listrik.ncost_bulan_plus_adm',40850504,40850504,NULL,'2021-04-07 08:46:20',3,88,2,3,NULL),
 (493,'Admin','listrik.ncost_bulan_plus_adm',40850504,40850504,NULL,'2021-04-07 08:48:01',3,88,2,3,NULL),
 (494,'Admin','listrik.ncost_bulan_plus_adm',40850504,40850504,NULL,'2021-04-07 08:49:32',3,88,2,3,NULL);
INSERT INTO `hlogs_listriks` (`id`,`changed_by`,`table_column`,`before`,`history_latest`,`created_at`,`updated_at`,`company_id`,`code_mesin`,`group_mesin`,`category_id`,`created_by`) VALUES 
 (495,'Admin','listrik.ncost_bulan_plus_adm',40850504,40850504,NULL,'2021-04-07 08:49:52',3,88,2,3,NULL),
 (496,'Admin','listrik.ncost_bulan_plus_adm',40850504,40850504,NULL,'2021-04-07 08:51:05',3,88,2,3,NULL),
 (497,'Admin','listrik.ncost_bulan_plus_adm',40850504,40850504,NULL,'2021-04-07 08:52:53',3,88,2,3,NULL),
 (498,'Admin','listrik.ncost_bulan_plus_adm',40850504,40850504,NULL,'2021-04-07 08:54:36',3,88,2,3,NULL),
 (499,'Admin','listrik.ncost_bulan_plus_adm',40850504,40850504,NULL,'2021-04-07 08:55:57',3,88,2,3,NULL),
 (500,NULL,'listrik',40850506,40850506,'2021-04-07 08:56:51','2021-04-07 08:56:51',3,88,2,3,'Admin'),
 (501,'Admin','listrik.ncost_bulan_plus_adm',0,40850504,NULL,'2021-04-07 08:57:09',3,88,2,3,NULL),
 (502,NULL,'listrik',40850506,40850506,'2021-04-07 09:01:24','2021-04-07 09:01:24',3,88,2,3,'Admin'),
 (503,'Admin','listrik.ncost_bulan_plus_adm',0,40850504,NULL,'2021-04-07 09:01:43',3,88,2,3,NULL);
INSERT INTO `hlogs_listriks` (`id`,`changed_by`,`table_column`,`before`,`history_latest`,`created_at`,`updated_at`,`company_id`,`code_mesin`,`group_mesin`,`category_id`,`created_by`) VALUES 
 (504,NULL,'listrik',5237260198113,5237260198113,'2021-04-07 09:04:38','2021-04-07 09:04:38',3,93,1,4,'Admin'),
 (505,'Admin','listrik.ncost_bulan_plus_adm',0,40850380,NULL,'2021-04-07 09:04:51',3,88,2,3,NULL),
 (506,'Admin','listrik.ncost_bulan_plus_adm',0,5237244341987,NULL,'2021-04-07 09:04:51',3,93,1,4,NULL),
 (507,'Admin','listrik.ampere',12310,1235,NULL,'2021-04-07 09:05:31',3,93,1,4,NULL),
 (508,'Admin','listrik.voltase',10100,5123,NULL,'2021-04-07 09:05:31',3,93,1,4,NULL),
 (509,'Admin','listrik.LWBP_perminggu',12681762,645345,NULL,'2021-04-07 09:05:31',3,93,1,4,NULL),
 (510,'Admin','listrik.WBP_perminggu',2983944,151846,NULL,'2021-04-07 09:05:31',3,93,1,4,NULL),
 (511,'Admin','listrik.nilai_cost_bulan',5084703238824,5918186937,NULL,'2021-04-07 09:05:31',3,93,1,4,NULL),
 (512,'Admin','listrik.LWBP_faktorkali',93201,1231,NULL,'2021-04-07 09:05:31',3,93,1,4,NULL),
 (513,'Admin','listrik.WBP_faktorkali',29901,4512,NULL,'2021-04-07 09:05:31',3,93,1,4,NULL);
INSERT INTO `hlogs_listriks` (`id`,`changed_by`,`table_column`,`before`,`history_latest`,`created_at`,`updated_at`,`company_id`,`code_mesin`,`group_mesin`,`category_id`,`created_by`) VALUES 
 (514,'Admin','listrik.total_biaya_listrik',1271175809706,1479546735,NULL,'2021-04-07 09:05:31',3,93,1,4,NULL),
 (515,'Admin','listrik.persen_cost_perbulan',1,0,NULL,'2021-04-07 09:05:31',3,93,1,4,NULL),
 (516,'Admin','listrik.ncost_bulan_plus_adm',5237244341987,0,NULL,'2021-04-07 09:05:31',3,93,1,4,NULL),
 (517,'Admin','listrik.ncost_bulan_plus_adm',0,40850410,NULL,'2021-04-07 09:05:42',3,88,2,3,NULL),
 (518,'Admin','listrik.ncost_bulan_plus_adm',0,6095737074,NULL,'2021-04-07 09:05:42',3,93,1,4,NULL),
 (519,NULL,'listrik',1553113,1553113,'2021-04-07 09:06:28','2021-04-07 09:06:28',3,56,11,2,'Admin'),
 (520,'Admin','listrik.ncost_bulan_plus_adm',0,40850410,NULL,'2021-04-07 09:06:43',3,88,2,3,NULL),
 (521,'Admin','listrik.ncost_bulan_plus_adm',0,6095737073,NULL,'2021-04-07 09:06:43',3,93,1,4,NULL),
 (522,'Admin','listrik.ncost_bulan_plus_adm',0,1553113,NULL,'2021-04-07 09:06:43',3,56,11,2,NULL);
INSERT INTO `hlogs_listriks` (`id`,`changed_by`,`table_column`,`before`,`history_latest`,`created_at`,`updated_at`,`company_id`,`code_mesin`,`group_mesin`,`category_id`,`created_by`) VALUES 
 (523,'Admin','listrik.LWBP_perminggu',388,0,NULL,'2021-04-07 09:09:37',3,56,11,2,NULL),
 (524,'Admin','listrik.WBP_perminggu',0,222,NULL,'2021-04-07 09:09:37',3,56,11,2,NULL),
 (525,'Admin','listrik.nilai_cost_bulan',1507876,1292465,NULL,'2021-04-07 09:09:37',3,56,11,2,NULL),
 (526,'Admin','listrik.total_biaya_listrik',376969,323117,NULL,'2021-04-07 09:09:37',3,56,11,2,NULL),
 (527,'Admin','listrik.persen_cost_perbulan',1,0,NULL,'2021-04-07 09:09:37',3,56,11,2,NULL),
 (528,'Admin','listrik.ncost_bulan_plus_adm',1553113,0,NULL,'2021-04-07 09:09:37',3,56,11,2,NULL),
 (529,'Admin','listrik.ncost_bulan_plus_adm',0,40850410,NULL,'2021-04-07 09:09:54',3,88,2,3,NULL),
 (530,'Admin','listrik.ncost_bulan_plus_adm',0,6095737073,NULL,'2021-04-07 09:09:54',3,93,1,4,NULL),
 (531,'Admin','listrik.ncost_bulan_plus_adm',0,1331240,NULL,'2021-04-07 09:09:54',3,56,11,2,NULL),
 (532,'Admin','listrik.ncost_bulan_plus_adm',40850410,40850410,NULL,'2021-04-07 09:13:30',3,88,2,3,NULL);
INSERT INTO `hlogs_listriks` (`id`,`changed_by`,`table_column`,`before`,`history_latest`,`created_at`,`updated_at`,`company_id`,`code_mesin`,`group_mesin`,`category_id`,`created_by`) VALUES 
 (533,'Admin','listrik.ncost_bulan_plus_adm',6095737073,6095737073,NULL,'2021-04-07 09:13:30',3,93,1,4,NULL),
 (534,'Admin','listrik.ncost_bulan_plus_adm',1331240,1331240,NULL,'2021-04-07 09:13:30',3,56,11,2,NULL),
 (535,'Admin','listrik.ncost_bulan_plus_adm',40850410,40850410,NULL,'2021-04-07 09:14:23',3,88,2,3,NULL),
 (536,'Admin','listrik.ncost_bulan_plus_adm',6095737073,6095737073,NULL,'2021-04-07 09:14:23',3,93,1,4,NULL),
 (537,'Admin','listrik.ncost_bulan_plus_adm',1331240,1331240,NULL,'2021-04-07 09:14:24',3,56,11,2,NULL),
 (538,'Admin','listrik.ncost_bulan_plus_adm',40850410,40850410,NULL,'2021-04-07 09:16:25',3,88,2,3,NULL),
 (539,'Admin','listrik.ncost_bulan_plus_adm',6095737073,6095737073,NULL,'2021-04-07 09:16:25',3,93,1,4,NULL),
 (540,'Admin','listrik.ncost_bulan_plus_adm',1331240,1331240,NULL,'2021-04-07 09:16:26',3,56,11,2,NULL),
 (541,NULL,'listrik',3549972,3549972,'2021-04-07 09:25:34','2021-04-07 09:25:34',3,56,11,2,'Admin');
INSERT INTO `hlogs_listriks` (`id`,`changed_by`,`table_column`,`before`,`history_latest`,`created_at`,`updated_at`,`company_id`,`code_mesin`,`group_mesin`,`category_id`,`created_by`) VALUES 
 (542,'Admin','listrik.ncost_bulan_plus_adm',0,40850410,NULL,'2021-04-07 09:26:21',3,88,2,3,NULL),
 (543,'Admin','listrik.ncost_bulan_plus_adm',0,6095737072,NULL,'2021-04-07 09:26:21',3,93,1,4,NULL),
 (544,'Admin','listrik.ncost_bulan_plus_adm',0,3549972,NULL,'2021-04-07 09:26:21',3,56,11,2,NULL),
 (545,'Admin','listrik.voltase',380,4123,NULL,'2021-04-07 09:27:17',3,56,11,2,NULL),
 (546,'Admin','listrik.LWBP_perminggu',555,6012,NULL,'2021-04-07 09:27:17',3,56,11,2,NULL),
 (547,'Admin','listrik.WBP_perminggu',222,2405,NULL,'2021-04-07 09:27:17',3,56,11,2,NULL),
 (548,'Admin','listrik.nilai_cost_bulan',3446573,113114070,NULL,'2021-04-07 09:27:17',3,56,11,2,NULL),
 (549,'Admin','listrik.LWBP_faktorkali',972,4121,NULL,'2021-04-07 09:27:17',3,56,11,2,NULL),
 (550,'Admin','listrik.total_biaya_listrik',861644,28278518,NULL,'2021-04-07 09:27:17',3,56,11,2,NULL),
 (551,'Admin','listrik.persen_cost_perbulan',1,0,NULL,'2021-04-07 09:27:17',3,56,11,2,NULL);
INSERT INTO `hlogs_listriks` (`id`,`changed_by`,`table_column`,`before`,`history_latest`,`created_at`,`updated_at`,`company_id`,`code_mesin`,`group_mesin`,`category_id`,`created_by`) VALUES 
 (552,'Admin','listrik.ncost_bulan_plus_adm',3549972,0,NULL,'2021-04-07 09:27:17',3,56,11,2,NULL),
 (553,'Admin','listrik.voltase',380,4123,NULL,'2021-04-07 09:27:17',3,56,11,2,NULL),
 (554,'Admin','listrik.LWBP_perminggu',555,6012,NULL,'2021-04-07 09:27:17',3,56,11,2,NULL),
 (555,'Admin','listrik.WBP_perminggu',222,2405,NULL,'2021-04-07 09:27:17',3,56,11,2,NULL),
 (556,'Admin','listrik.nilai_cost_bulan',3446573,113114070,NULL,'2021-04-07 09:27:17',3,56,11,2,NULL),
 (557,'Admin','listrik.LWBP_faktorkali',972,4121,NULL,'2021-04-07 09:27:17',3,56,11,2,NULL),
 (558,'Admin','listrik.total_biaya_listrik',861644,28278518,NULL,'2021-04-07 09:27:17',3,56,11,2,NULL),
 (559,'Admin','listrik.persen_cost_perbulan',1,0,NULL,'2021-04-07 09:27:17',3,56,11,2,NULL),
 (560,'Admin','listrik.ncost_bulan_plus_adm',3549972,0,NULL,'2021-04-07 09:27:17',3,56,11,2,NULL),
 (561,'Admin','listrik.ncost_bulan_plus_adm',0,40850410,NULL,'2021-04-07 09:27:27',3,88,2,3,NULL);
INSERT INTO `hlogs_listriks` (`id`,`changed_by`,`table_column`,`before`,`history_latest`,`created_at`,`updated_at`,`company_id`,`code_mesin`,`group_mesin`,`category_id`,`created_by`) VALUES 
 (562,'Admin','listrik.ncost_bulan_plus_adm',0,6095737010,NULL,'2021-04-07 09:27:27',3,93,1,4,NULL),
 (563,'Admin','listrik.ncost_bulan_plus_adm',0,116507578,NULL,'2021-04-07 09:27:27',3,56,11,2,NULL),
 (564,NULL,'listrik',79483061,79483061,'2021-04-07 09:27:58','2021-04-07 09:27:58',3,10,2,2,'Admin'),
 (565,'Admin','listrik.ncost_bulan_plus_adm',0,40850410,NULL,'2021-04-07 09:28:11',3,88,2,3,NULL),
 (566,'Admin','listrik.ncost_bulan_plus_adm',0,6095736967,NULL,'2021-04-07 09:28:11',3,93,1,4,NULL),
 (567,'Admin','listrik.ncost_bulan_plus_adm',0,116507577,NULL,'2021-04-07 09:28:11',3,56,11,2,NULL),
 (568,'Admin','listrik.ncost_bulan_plus_adm',0,79483060,NULL,'2021-04-07 09:28:11',3,10,2,2,NULL),
 (569,'Admin','listrik.ncost_bulan_plus_adm',0,43649353,NULL,'2021-04-07 09:29:13',3,11,2,2,NULL),
 (570,'Admin','listrik.ncost_bulan_plus_adm',0,201826330,NULL,'2021-04-07 09:29:13',3,89,1,1,NULL),
 (571,'Admin','listrik.ncost_bulan_plus_adm',0,1694713039,NULL,'2021-04-07 09:29:14',3,92,1,1,NULL);
INSERT INTO `hlogs_listriks` (`id`,`changed_by`,`table_column`,`before`,`history_latest`,`created_at`,`updated_at`,`company_id`,`code_mesin`,`group_mesin`,`category_id`,`created_by`) VALUES 
 (572,'Admin','listrik.ncost_bulan_plus_adm',40850410,40850410,NULL,'2021-04-07 09:29:14',3,88,2,3,NULL),
 (573,'Admin','listrik.ncost_bulan_plus_adm',6095736967,6095736967,NULL,'2021-04-07 09:29:14',3,93,1,4,NULL),
 (574,'Admin','listrik.ncost_bulan_plus_adm',116507577,116507577,NULL,'2021-04-07 09:29:14',3,56,11,2,NULL),
 (575,'Admin','listrik.ncost_bulan_plus_adm',79483060,79483060,NULL,'2021-04-07 09:29:14',3,10,2,2,NULL),
 (576,'Admin','listrik.ncost_bulan_plus_adm',40850410,40850410,NULL,'2021-04-07 09:29:56',3,88,2,3,NULL),
 (577,'Admin','listrik.ncost_bulan_plus_adm',6095736967,6095736967,NULL,'2021-04-07 09:29:56',3,93,1,4,NULL),
 (578,'Admin','listrik.ncost_bulan_plus_adm',116507577,116507577,NULL,'2021-04-07 09:29:56',3,56,11,2,NULL),
 (579,'Admin','listrik.ncost_bulan_plus_adm',79483060,79483060,NULL,'2021-04-07 09:29:56',3,10,2,2,NULL),
 (580,'Admin','listrik.ncost_bulan_plus_adm',40850410,40850410,NULL,'2021-04-07 09:32:26',3,88,2,3,NULL);
INSERT INTO `hlogs_listriks` (`id`,`changed_by`,`table_column`,`before`,`history_latest`,`created_at`,`updated_at`,`company_id`,`code_mesin`,`group_mesin`,`category_id`,`created_by`) VALUES 
 (581,'Admin','listrik.ncost_bulan_plus_adm',6095736967,6095736967,NULL,'2021-04-07 09:32:26',3,93,1,4,NULL),
 (582,'Admin','listrik.ncost_bulan_plus_adm',116507577,116507577,NULL,'2021-04-07 09:32:26',3,56,11,2,NULL),
 (583,'Admin','listrik.ncost_bulan_plus_adm',79483060,79483060,NULL,'2021-04-07 09:32:26',3,10,2,2,NULL),
 (584,'Admin','listrik.ncost_bulan_plus_adm',40850410,40850410,NULL,'2021-04-07 09:36:20',3,88,2,3,NULL),
 (585,'Admin','listrik.ncost_bulan_plus_adm',6095736967,6095736967,NULL,'2021-04-07 09:36:20',3,93,1,4,NULL),
 (586,'Admin','listrik.ncost_bulan_plus_adm',116507577,116507577,NULL,'2021-04-07 09:36:20',3,56,11,2,NULL),
 (587,'Admin','listrik.ncost_bulan_plus_adm',79483060,79483060,NULL,'2021-04-07 09:36:20',3,10,2,2,NULL),
 (588,'Admin','listrik.voltase',5123,455,NULL,'2021-04-07 09:36:56',3,93,1,4,NULL),
 (589,'Admin','listrik.LWBP_perminggu',645345,10115,NULL,'2021-04-07 09:36:56',3,93,1,4,NULL);
INSERT INTO `hlogs_listriks` (`id`,`changed_by`,`table_column`,`before`,`history_latest`,`created_at`,`updated_at`,`company_id`,`code_mesin`,`group_mesin`,`category_id`,`created_by`) VALUES 
 (590,'Admin','listrik.WBP_perminggu',151846,13487,NULL,'2021-04-07 09:36:56',3,93,1,4,NULL),
 (591,'Admin','listrik.nilai_cost_bulan',5918186937,24882039,NULL,'2021-04-07 09:36:56',3,93,1,4,NULL),
 (592,'Admin','listrik.LWBP_faktorkali',1231,451,NULL,'2021-04-07 09:36:56',3,93,1,4,NULL),
 (593,'Admin','listrik.WBP_faktorkali',4512,123,NULL,'2021-04-07 09:36:56',3,93,1,4,NULL),
 (594,'Admin','listrik.total_biaya_listrik',1479546735,6220510,NULL,'2021-04-07 09:36:56',3,93,1,4,NULL),
 (595,'Admin','listrik.assumptionshift_lwbp3',17,3,NULL,'2021-04-07 09:36:56',3,93,1,4,NULL),
 (596,'Admin','listrik.persen_cost_perbulan',1,0,NULL,'2021-04-07 09:36:56',3,93,1,4,NULL),
 (597,'Admin','listrik.ncost_bulan_plus_adm',6095736967,0,NULL,'2021-04-07 09:36:56',3,93,1,4,NULL),
 (598,'Admin','listrik.ncost_bulan_plus_adm',0,40850491,NULL,'2021-04-07 09:37:09',3,88,2,3,NULL),
 (599,'Admin','listrik.ncost_bulan_plus_adm',0,25628570,NULL,'2021-04-07 09:37:09',3,93,1,4,NULL);
INSERT INTO `hlogs_listriks` (`id`,`changed_by`,`table_column`,`before`,`history_latest`,`created_at`,`updated_at`,`company_id`,`code_mesin`,`group_mesin`,`category_id`,`created_by`) VALUES 
 (600,'Admin','listrik.ncost_bulan_plus_adm',0,116507810,NULL,'2021-04-07 09:37:09',3,56,11,2,NULL),
 (601,'Admin','listrik.ncost_bulan_plus_adm',0,79483219,NULL,'2021-04-07 09:37:10',3,10,2,2,NULL),
 (602,NULL,'listrik',12614605,12614605,'2021-04-07 09:38:11','2021-04-07 09:38:11',3,11,2,2,'Admin'),
 (603,'Admin','listrik.ncost_bulan_plus_adm',0,40850493,NULL,'2021-04-07 09:38:25',3,88,2,3,NULL),
 (604,'Admin','listrik.ncost_bulan_plus_adm',0,25628571,NULL,'2021-04-07 09:38:25',3,93,1,4,NULL),
 (605,'Admin','listrik.ncost_bulan_plus_adm',0,116507814,NULL,'2021-04-07 09:38:25',3,56,11,2,NULL),
 (606,'Admin','listrik.ncost_bulan_plus_adm',0,79483222,NULL,'2021-04-07 09:38:25',3,10,2,2,NULL),
 (607,NULL,'listrik',12614606,12614606,'2021-04-07 09:39:03','2021-04-07 09:39:03',3,11,2,2,'Admin'),
 (608,NULL,'listrik',24059114132,24059114132,'2021-04-07 09:40:33','2021-04-07 09:40:33',3,61,1,1,'Admin'),
 (609,'Admin','listrik.ncost_bulan_plus_adm',0,40850389,NULL,'2021-04-07 09:40:51',3,88,2,3,NULL);
INSERT INTO `hlogs_listriks` (`id`,`changed_by`,`table_column`,`before`,`history_latest`,`created_at`,`updated_at`,`company_id`,`code_mesin`,`group_mesin`,`category_id`,`created_by`) VALUES 
 (610,'Admin','listrik.ncost_bulan_plus_adm',0,25628507,NULL,'2021-04-07 09:40:51',3,93,1,4,NULL),
 (611,'Admin','listrik.ncost_bulan_plus_adm',0,116507519,NULL,'2021-04-07 09:40:51',3,56,11,2,NULL),
 (612,'Admin','listrik.ncost_bulan_plus_adm',0,79483021,NULL,'2021-04-07 09:40:51',3,10,2,2,NULL),
 (613,'Admin','listrik.ncost_bulan_plus_adm',0,24059053163,NULL,'2021-04-07 09:40:51',3,61,1,1,NULL),
 (614,'Admin','listrik.ampere',3423,2131,NULL,'2021-04-07 09:41:39',3,61,1,1,NULL),
 (615,'Admin','listrik.voltase',42123,1112,NULL,'2021-04-07 09:41:39',3,61,1,1,NULL),
 (616,'Admin','listrik.LWBP_perminggu',14707077,241707,NULL,'2021-04-07 09:41:39',3,61,1,1,NULL),
 (617,'Admin','listrik.WBP_perminggu',3460489,56873,NULL,'2021-04-07 09:41:39',3,61,1,1,NULL),
 (618,'Admin','listrik.nilai_cost_bulan',23358298698,383886864,NULL,'2021-04-07 09:41:39',3,61,1,1,NULL),
 (619,'Admin','listrik.total_biaya_listrik',5839574675,95971716,NULL,'2021-04-07 09:41:39',3,61,1,1,NULL);
INSERT INTO `hlogs_listriks` (`id`,`changed_by`,`table_column`,`before`,`history_latest`,`created_at`,`updated_at`,`company_id`,`code_mesin`,`group_mesin`,`category_id`,`created_by`) VALUES 
 (620,'Admin','listrik.persen_cost_perbulan',1,0,NULL,'2021-04-07 09:41:39',3,61,1,1,NULL),
 (621,'Admin','listrik.ncost_bulan_plus_adm',24059053163,0,NULL,'2021-04-07 09:41:39',3,61,1,1,NULL),
 (622,'Admin','listrik.ncost_bulan_plus_adm',0,40850476,NULL,'2021-04-07 09:41:58',3,88,2,3,NULL),
 (623,'Admin','listrik.ncost_bulan_plus_adm',0,25628561,NULL,'2021-04-07 09:41:58',3,93,1,4,NULL),
 (624,'Admin','listrik.ncost_bulan_plus_adm',0,116507765,NULL,'2021-04-07 09:41:58',3,56,11,2,NULL),
 (625,'Admin','listrik.ncost_bulan_plus_adm',0,79483189,NULL,'2021-04-07 09:41:58',3,10,2,2,NULL),
 (626,'Admin','listrik.ncost_bulan_plus_adm',0,395404395,NULL,'2021-04-07 09:41:58',3,61,1,1,NULL),
 (627,'Admin','listrik.ncost_bulan_plus_adm',40850476,40850476,NULL,'2021-04-07 09:44:35',3,88,2,3,NULL),
 (628,'Admin','listrik.ncost_bulan_plus_adm',25628561,25628561,NULL,'2021-04-07 09:44:35',3,93,1,4,NULL),
 (629,'Admin','listrik.ncost_bulan_plus_adm',116507765,116507765,NULL,'2021-04-07 09:44:35',3,56,11,2,NULL);
INSERT INTO `hlogs_listriks` (`id`,`changed_by`,`table_column`,`before`,`history_latest`,`created_at`,`updated_at`,`company_id`,`code_mesin`,`group_mesin`,`category_id`,`created_by`) VALUES 
 (630,'Admin','listrik.persen_cost_perbulan',1,1,NULL,'2021-04-07 09:44:35',3,10,2,2,NULL),
 (631,'Admin','listrik.ncost_bulan_plus_adm',395404395,395404395,NULL,'2021-04-07 09:44:35',3,61,1,1,NULL),
 (632,'Admin','listrik.ncost_bulan_plus_adm',40850476,40850476,NULL,'2021-04-07 09:44:59',3,88,2,3,NULL),
 (633,'Admin','listrik.ncost_bulan_plus_adm',25628561,25628561,NULL,'2021-04-07 09:45:00',3,93,1,4,NULL),
 (634,'Admin','listrik.ncost_bulan_plus_adm',116507765,116507765,NULL,'2021-04-07 09:45:00',3,56,11,2,NULL),
 (635,'Admin','listrik.persen_cost_perbulan',1,1,NULL,'2021-04-07 09:45:00',3,10,2,2,NULL),
 (636,'Admin','listrik.ncost_bulan_plus_adm',395404395,395404395,NULL,'2021-04-07 09:45:00',3,61,1,1,NULL),
 (637,'Admin','listrik.ncost_bulan_plus_adm',40850476,40850476,NULL,'2021-04-07 09:45:21',3,88,2,3,NULL),
 (638,'Admin','listrik.ncost_bulan_plus_adm',25628561,25628561,NULL,'2021-04-07 09:45:21',3,93,1,4,NULL);
INSERT INTO `hlogs_listriks` (`id`,`changed_by`,`table_column`,`before`,`history_latest`,`created_at`,`updated_at`,`company_id`,`code_mesin`,`group_mesin`,`category_id`,`created_by`) VALUES 
 (639,'Admin','listrik.ncost_bulan_plus_adm',116507765,116507765,NULL,'2021-04-07 09:45:21',3,56,11,2,NULL),
 (640,'Admin','listrik.persen_cost_perbulan',1,1,NULL,'2021-04-07 09:45:21',3,10,2,2,NULL),
 (641,'Admin','listrik.ncost_bulan_plus_adm',395404395,395404395,NULL,'2021-04-07 09:45:21',3,61,1,1,NULL),
 (642,NULL,'listrik',0,0,'2021-04-07 09:53:27','2021-04-07 09:53:27',3,56,11,2,'Admin'),
 (643,'Admin','listrik.ncost_bulan_plus_adm',0,3549981,NULL,'2021-04-07 09:53:41',3,56,11,2,NULL),
 (644,'Admin','listrik.ncost_bulan_plus_adm',3549981,3555970,NULL,'2021-04-07 09:54:29',3,56,11,2,NULL),
 (645,NULL,'listrik',335182353572,335182353572,'2021-04-07 09:57:46','2021-04-07 09:57:46',3,61,1,1,'Admin'),
 (646,'Admin','listrik.voltase',42123,5612,NULL,'2021-04-07 09:58:30',3,61,1,1,NULL),
 (647,'Admin','listrik.LWBP_perminggu',14707077,1959408,NULL,'2021-04-07 09:58:30',3,61,1,1,NULL),
 (648,'Admin','listrik.WBP_perminggu',3460489,461038,NULL,'2021-04-07 09:58:30',3,61,1,1,NULL);
INSERT INTO `hlogs_listriks` (`id`,`changed_by`,`table_column`,`before`,`history_latest`,`created_at`,`updated_at`,`company_id`,`code_mesin`,`group_mesin`,`category_id`,`created_by`) VALUES 
 (649,'Admin','listrik.nilai_cost_bulan',324870678781,11947313440,NULL,'2021-04-07 09:58:30',3,61,1,1,NULL),
 (650,'Admin','listrik.LWBP_faktorkali',5232,1234,NULL,'2021-04-07 09:58:30',3,61,1,1,NULL),
 (651,'Admin','listrik.total_biaya_listrik',81217669696,2986828360,NULL,'2021-04-07 09:58:30',3,61,1,1,NULL),
 (652,'Admin','listrik.ncost_bulan_plus_adm',0,3549971,NULL,'2021-04-07 09:58:43',3,56,11,2,NULL),
 (653,'Admin','listrik.ncost_bulan_plus_adm',0,12305738842,NULL,'2021-04-07 09:58:43',3,61,1,1,NULL),
 (654,'Admin','listrik.ampere',3423,1320,NULL,'2021-04-07 09:59:22',3,61,1,1,NULL),
 (655,'Admin','listrik.voltase',5612,380,NULL,'2021-04-07 09:59:22',3,61,1,1,NULL),
 (656,'Admin','listrik.LWBP_perminggu',1959408,51164,NULL,'2021-04-07 09:59:22',3,61,1,1,NULL),
 (657,'Admin','listrik.WBP_perminggu',461038,12039,NULL,'2021-04-07 09:59:22',3,61,1,1,NULL),
 (658,'Admin','listrik.nilai_cost_bulan',11947313440,311963098,NULL,'2021-04-07 09:59:22',3,61,1,1,NULL);
INSERT INTO `hlogs_listriks` (`id`,`changed_by`,`table_column`,`before`,`history_latest`,`created_at`,`updated_at`,`company_id`,`code_mesin`,`group_mesin`,`category_id`,`created_by`) VALUES 
 (659,'Admin','listrik.total_biaya_listrik',2986828360,77990775,NULL,'2021-04-07 09:59:22',3,61,1,1,NULL),
 (660,'Admin','listrik.persen_cost_perbulan',1,0,NULL,'2021-04-07 09:59:22',3,61,1,1,NULL),
 (661,'Admin','listrik.ncost_bulan_plus_adm',12305738842,0,NULL,'2021-04-07 09:59:22',3,61,1,1,NULL),
 (662,'Admin','listrik.ncost_bulan_plus_adm',0,3550035,NULL,'2021-04-07 09:59:32',3,56,11,2,NULL),
 (663,'Admin','listrik.ncost_bulan_plus_adm',0,321327925,NULL,'2021-04-07 09:59:32',3,61,1,1,NULL),
 (664,NULL,'listrik',0,0,'2021-04-07 10:30:32','2021-04-07 10:30:32',3,99,2,1,'Admin'),
 (665,NULL,'listrik',573118489,573118489,'2021-04-07 10:33:26','2021-04-07 10:33:26',3,100,2,2,'Admin'),
 (666,'Admin','listrik.ncost_bulan_plus_adm',0,889058281,NULL,'2021-04-07 10:33:42',3,99,2,1,NULL),
 (667,'Admin','listrik.ncost_bulan_plus_adm',0,573116973,NULL,'2021-04-07 10:33:42',3,100,2,2,NULL),
 (668,'Admin','listrik.ncost_bulan_plus_adm',889058281,889058281,NULL,'2021-04-07 11:15:10',3,99,2,1,NULL);
INSERT INTO `hlogs_listriks` (`id`,`changed_by`,`table_column`,`before`,`history_latest`,`created_at`,`updated_at`,`company_id`,`code_mesin`,`group_mesin`,`category_id`,`created_by`) VALUES 
 (669,'Admin','listrik.ncost_bulan_plus_adm',573116973,573116973,NULL,'2021-04-07 11:15:10',3,100,2,2,NULL),
 (670,'Admin','listrik.LWBP_perminggu',53761,53761,NULL,'2021-04-07 11:15:30',3,99,2,2,NULL),
 (671,'Admin','listrik.WBP_perminggu',12650,12650,NULL,'2021-04-07 11:15:30',3,99,2,2,NULL),
 (672,'Admin','listrik.persen_cost_perbulan',1,0,NULL,'2021-04-07 11:15:30',3,99,2,2,NULL),
 (673,'Admin','listrik.ncost_bulan_plus_adm',889058281,0,NULL,'2021-04-07 11:15:30',3,99,2,2,NULL),
 (674,'Admin','listrik.ncost_bulan_plus_adm',0,889058281,NULL,'2021-04-07 11:15:48',3,99,2,1,NULL),
 (675,'Admin','listrik.ncost_bulan_plus_adm',0,573116973,NULL,'2021-04-07 11:15:49',3,100,2,2,NULL),
 (676,'Admin','listrik.LWBP_perminggu',53761,53761,NULL,'2021-04-07 11:16:35',3,99,2,2,NULL),
 (677,'Admin','listrik.WBP_perminggu',12650,12650,NULL,'2021-04-07 11:16:35',3,99,2,2,NULL),
 (678,'Admin','listrik.persen_cost_perbulan',1,0,NULL,'2021-04-07 11:16:35',3,99,2,2,NULL);
INSERT INTO `hlogs_listriks` (`id`,`changed_by`,`table_column`,`before`,`history_latest`,`created_at`,`updated_at`,`company_id`,`code_mesin`,`group_mesin`,`category_id`,`created_by`) VALUES 
 (679,'Admin','listrik.ncost_bulan_plus_adm',889058281,0,NULL,'2021-04-07 11:16:35',3,99,2,2,NULL),
 (680,'Admin','listrik.LWBP_perminggu',53761,53761,NULL,'2021-04-07 11:17:18',3,99,2,2,NULL),
 (681,'Admin','listrik.WBP_perminggu',12650,12650,NULL,'2021-04-07 11:17:18',3,99,2,2,NULL),
 (682,'Admin','listrik.ncost_bulan_plus_adm',0,889058281,NULL,'2021-04-07 11:17:32',3,99,2,2,NULL),
 (683,'Admin','listrik.ncost_bulan_plus_adm',0,573116973,NULL,'2021-04-07 11:17:32',3,100,2,2,NULL),
 (684,NULL,'listrik',18817150221,18817150221,'2021-04-08 10:43:00','2021-04-08 10:43:00',3,63,5,3,'Admin'),
 (685,'Admin','listrik.ncost_bulan_plus_adm',0,889054896,NULL,'2021-04-08 10:45:49',3,99,2,2,NULL),
 (686,'Admin','listrik.ncost_bulan_plus_adm',0,573114791,NULL,'2021-04-08 10:45:49',3,100,2,2,NULL),
 (687,'Admin','listrik.ncost_bulan_plus_adm',0,18817078572,NULL,'2021-04-08 10:45:49',3,63,5,3,NULL),
 (688,NULL,'listrik',5813018506,5813018506,'2021-04-08 11:47:23','2021-04-08 11:47:23',3,64,5,3,'Admin');
INSERT INTO `hlogs_listriks` (`id`,`changed_by`,`table_column`,`before`,`history_latest`,`created_at`,`updated_at`,`company_id`,`code_mesin`,`group_mesin`,`category_id`,`created_by`) VALUES 
 (689,'Admin','listrik.ncost_bulan_plus_adm',0,889054837,NULL,'2021-04-08 11:47:38',3,99,2,2,NULL),
 (690,'Admin','listrik.ncost_bulan_plus_adm',0,573114753,NULL,'2021-04-08 11:47:38',3,100,2,2,NULL),
 (691,'Admin','listrik.ncost_bulan_plus_adm',0,18817077332,NULL,'2021-04-08 11:47:38',3,63,5,3,NULL),
 (692,'Admin','listrik.ncost_bulan_plus_adm',0,5813018123,NULL,'2021-04-08 11:47:38',3,64,5,3,NULL),
 (693,NULL,'listrik',5529513,5529513,'2021-04-08 13:38:58','2021-04-08 13:38:58',3,91,6,4,'Admin'),
 (694,'Admin','listrik.ncost_bulan_plus_adm',0,889054837,NULL,'2021-04-08 13:39:19',3,99,2,2,NULL),
 (695,'Admin','listrik.ncost_bulan_plus_adm',0,573114753,NULL,'2021-04-08 13:39:19',3,100,2,2,NULL),
 (696,'Admin','listrik.ncost_bulan_plus_adm',0,18817077331,NULL,'2021-04-08 13:39:20',3,63,5,3,NULL),
 (697,'Admin','listrik.ncost_bulan_plus_adm',0,5813018123,NULL,'2021-04-08 13:39:20',3,64,5,3,NULL),
 (698,'Admin','listrik.ncost_bulan_plus_adm',0,5529513,NULL,'2021-04-08 13:39:20',3,91,6,4,NULL);
INSERT INTO `hlogs_listriks` (`id`,`changed_by`,`table_column`,`before`,`history_latest`,`created_at`,`updated_at`,`company_id`,`code_mesin`,`group_mesin`,`category_id`,`created_by`) VALUES 
 (699,NULL,'listrik',0,0,'2021-04-08 14:12:38','2021-04-08 14:12:38',3,63,5,3,'Admin'),
 (700,NULL,'listrik',5813018640,5813018640,'2021-04-08 14:13:02','2021-04-08 14:13:02',3,64,5,3,'Admin'),
 (701,NULL,'listrik',889054849,889054849,'2021-04-08 14:13:24','2021-04-08 14:13:24',3,99,2,2,'Admin'),
 (702,NULL,'listrik',573114756,573114756,'2021-04-08 14:13:45','2021-04-08 14:13:45',3,100,2,2,'Admin'),
 (703,'Admin','listrik.ncost_bulan_plus_adm',0,18817077332,NULL,'2021-04-08 14:14:02',3,63,5,3,NULL),
 (704,'Admin','listrik.ncost_bulan_plus_adm',0,5813018123,NULL,'2021-04-08 14:14:02',3,64,5,3,NULL),
 (705,'Admin','listrik.ncost_bulan_plus_adm',0,889054837,NULL,'2021-04-08 14:14:02',3,99,2,2,NULL),
 (706,'Admin','listrik.ncost_bulan_plus_adm',0,573114753,NULL,'2021-04-08 14:14:02',3,100,2,2,NULL),
 (707,'Admin','listrik.ncost_bulan_plus_adm',18817077332,18817077332,NULL,'2021-04-09 14:07:41',3,63,5,3,NULL),
 (708,'Admin','listrik.ncost_bulan_plus_adm',5813018123,5813018123,NULL,'2021-04-09 14:07:42',3,64,5,3,NULL);
INSERT INTO `hlogs_listriks` (`id`,`changed_by`,`table_column`,`before`,`history_latest`,`created_at`,`updated_at`,`company_id`,`code_mesin`,`group_mesin`,`category_id`,`created_by`) VALUES 
 (709,'Admin','listrik.ncost_bulan_plus_adm',889054837,889054837,NULL,'2021-04-09 14:07:42',3,99,2,2,NULL),
 (710,'Admin','listrik.ncost_bulan_plus_adm',573114753,573114753,NULL,'2021-04-09 14:07:42',3,100,2,2,NULL),
 (711,NULL,'listrik',0,0,'2021-04-09 14:12:37','2021-04-09 14:12:37',3,99,2,2,'Admin'),
 (712,'Admin','listrik.ncost_bulan_plus_adm',0,889060633,NULL,'2021-04-09 14:12:54',3,99,2,2,NULL),
 (713,NULL,'listrik',889060633,889060633,'2021-04-09 15:27:52','2021-04-09 15:27:52',3,99,2,2,'Admin'),
 (714,NULL,'listrik',398010232,398010232,'2021-04-09 15:28:56','2021-04-09 15:28:56',3,99,2,2,'Admin'),
 (715,'Admin','listrik.ncost_bulan_plus_adm',0,398013546,NULL,'2021-04-09 15:30:54',3,99,2,2,NULL),
 (716,NULL,'listrik',573123261,573123261,'2021-04-09 15:31:53','2021-04-09 15:31:53',3,100,2,2,'Admin'),
 (717,'Admin','listrik.ncost_bulan_plus_adm',0,398010005,NULL,'2021-04-09 15:32:21',3,99,2,2,NULL);
INSERT INTO `hlogs_listriks` (`id`,`changed_by`,`table_column`,`before`,`history_latest`,`created_at`,`updated_at`,`company_id`,`code_mesin`,`group_mesin`,`category_id`,`created_by`) VALUES 
 (718,'Admin','listrik.ncost_bulan_plus_adm',0,573118162,NULL,'2021-04-09 15:32:21',3,100,2,2,NULL),
 (719,'Admin','listrik.LWBP_perminggu',53489,53489,NULL,'2021-04-13 08:19:34',3,100,2,2,NULL),
 (720,'Admin','listrik.WBP_perminggu',12586,12586,NULL,'2021-04-13 08:19:34',3,100,2,2,NULL),
 (721,'Admin','listrik.nilai_cost_bulan',556421962,495507658,NULL,'2021-04-13 08:19:34',3,100,2,2,NULL),
 (722,'Admin','listrik.WBP_faktorkali',1231,21,NULL,'2021-04-13 08:19:34',3,100,2,2,NULL),
 (723,'Admin','listrik.total_biaya_listrik',139105491,123876915,NULL,'2021-04-13 08:19:34',3,100,2,2,NULL),
 (724,'Admin','listrik.persen_cost_perbulan',1,0,NULL,'2021-04-13 08:19:34',3,100,2,2,NULL),
 (725,'Admin','listrik.ncost_bulan_plus_adm',573118162,0,NULL,'2021-04-13 08:19:34',3,100,2,2,NULL),
 (726,'Admin','listrik.ncost_bulan_plus_adm',0,398010175,NULL,'2021-04-13 14:18:49',3,99,2,2,NULL),
 (727,'Admin','listrik.ncost_bulan_plus_adm',0,510376259,NULL,'2021-04-13 14:18:50',3,100,2,2,NULL);
INSERT INTO `hlogs_listriks` (`id`,`changed_by`,`table_column`,`before`,`history_latest`,`created_at`,`updated_at`,`company_id`,`code_mesin`,`group_mesin`,`category_id`,`created_by`) VALUES 
 (728,NULL,'listrik',300682965,300682965,'2021-04-13 16:34:35','2021-04-13 16:34:35',3,110,3,2,'EDP Administrator'),
 (729,'EDP Administrator','listrik.ncost_bulan_plus_adm',0,398009522,NULL,'2021-04-13 16:34:49',3,99,2,2,NULL),
 (730,'EDP Administrator','listrik.ncost_bulan_plus_adm',0,510375421,NULL,'2021-04-13 16:34:49',3,100,2,2,NULL),
 (731,'EDP Administrator','listrik.ncost_bulan_plus_adm',0,300682471,NULL,'2021-04-13 16:34:49',3,110,3,2,NULL),
 (732,'EDP Administrator','listrik.listrikperjam',2130,0,NULL,'2021-04-13 16:36:42',3,110,3,2,NULL),
 (733,'EDP Administrator','listrik.voltase',310,4352,NULL,'2021-04-13 16:36:42',3,110,3,2,NULL),
 (734,'EDP Administrator','listrik.LWBP_perminggu',38893,546002,NULL,'2021-04-13 16:36:42',3,110,3,2,NULL),
 (735,'EDP Administrator','listrik.WBP_perminggu',9152,128472,NULL,'2021-04-13 16:36:42',3,110,3,2,NULL),
 (736,'EDP Administrator','listrik.nilai_cost_bulan',291923280,4098226177,NULL,'2021-04-13 16:36:42',3,110,3,2,NULL);
INSERT INTO `hlogs_listriks` (`id`,`changed_by`,`table_column`,`before`,`history_latest`,`created_at`,`updated_at`,`company_id`,`code_mesin`,`group_mesin`,`category_id`,`created_by`) VALUES 
 (737,'EDP Administrator','listrik.total_biaya_listrik',72980820,1024556545,NULL,'2021-04-13 16:36:42',3,110,3,2,NULL),
 (738,'EDP Administrator','listrik.persen_cost_perbulan',1,0,NULL,'2021-04-13 16:36:42',3,110,3,2,NULL),
 (739,'EDP Administrator','listrik.ncost_bulan_plus_adm',300682471,0,NULL,'2021-04-13 16:36:42',3,110,3,2,NULL),
 (740,'EDP Administrator','listrik.ncost_bulan_plus_adm',0,398008012,NULL,'2021-04-13 16:36:50',3,99,2,2,NULL),
 (741,'EDP Administrator','listrik.ncost_bulan_plus_adm',0,510373485,NULL,'2021-04-13 16:36:50',3,100,2,2,NULL),
 (742,'EDP Administrator','listrik.ncost_bulan_plus_adm',0,4221177899,NULL,'2021-04-13 16:36:50',3,110,3,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`job_level`
--

/*!40000 ALTER TABLE `job_level` DISABLE KEYS */;
INSERT INTO `job_level` (`id`,`code_job_level`,`jabatan`,`LV`,`upah_terkecil`,`upah_tengah`,`updah_atas`,`created_at`,`updated_at`,`ut_view1`,`ua_view2`,`uptkcl_view3`) VALUES 
 (1,'jb-lvl-001','supervisor',3,34234234,5670646.65,6066273,'2021-01-20 08:43:18','2021-01-20 08:43:18',NULL,NULL,NULL),
 (2,'jb-lvl-002','operator',2,4600525,4830550.85,5060577,'2021-01-20 08:44:43','2021-01-20 08:44:43',NULL,NULL,NULL),
 (3,'jb-lvl-003','helper',1,4200479,4410502.95,4620527,'2021-01-20 08:46:24','2021-01-20 08:46:24',NULL,NULL,NULL),
 (4,'jb-lvl-004','supporting',0,4200479,4200479,4200479,'2021-01-20 08:47:00','2021-03-27 00:21:26',NULL,NULL,NULL),
 (5,NULL,'GGF',2,34252,234234,23424,'2021-03-31 14:46:17','2021-03-31 14:46:17',NULL,NULL,NULL),
 (6,NULL,'GGF',2,34252,234234,23424,'2021-03-31 14:46:43','2021-03-31 14:46:43',NULL,NULL,NULL),
 (7,NULL,'GHHH',31,31231,512313,51231,'2021-03-31 14:48:28','2021-03-31 14:55:53',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`kategoribagian_logs`
--

/*!40000 ALTER TABLE `kategoribagian_logs` DISABLE KEYS */;
INSERT INTO `kategoribagian_logs` (`id`,`table_column`,`before_bagian`,`history_bagian`,`created_at`,`updated_at`,`created_by`,`changed_by`) VALUES 
 (1,'kategori_bagian.nama_bagian','PREPRESS','PREPRESSs','2021-03-31 14:28:11','2021-03-31 14:28:11','Admin',NULL),
 (2,'kategori_bagian.nama_bagian','PREPRESSs','PREPRESS','2021-03-31 14:30:01','2021-03-31 14:30:01','Admin',NULL),
 (3,'kategori_bagian.nama_bagian','PREPRESS','PREPRESSS','2021-03-31 14:30:54','2021-03-31 14:30:54',NULL,'Admin'),
 (4,'kategori_bagian.nama_bagian','PREPRESSS','PREPRESSSs','2021-03-31 16:22:18','2021-03-31 16:22:18',NULL,'Admin'),
 (5,'kategori_bagian.nama_bagian','PREPRESSSs','PREPRESS','2021-04-13 16:13:25','2021-04-13 16:13:25',NULL,'Accounting');
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`labor`
--

/*!40000 ALTER TABLE `labor` DISABLE KEYS */;
INSERT INTO `labor` (`id`,`company_parent_id`,`code_mesin`,`category_bagian`,`supervisor`,`operator`,`helper`,`supporting`,`supervisor_level3`,`operator_level2`,`helper_level0`,`support_level0`,`total_biaya`,`created_at`,`updated_at`,`shift`,`spvlv3_view1`,`spvlv2_view1`,`spvlv1_view1`,`spvlv1_view0`,`total_biaya_views1`,`jumlah_mesin_ditanggani`,`ended_at`,`TRANSACTION_DATE_V`) VALUES 
 (56,3,10,2,1,3,1,1,4252984.9875,43474957.65,13231508.85,0,60959451.4875,'2021-03-07 22:15:37','2021-04-13 12:06:18',3,NULL,NULL,NULL,NULL,NULL,1,'2021-04-13 12:06:18',NULL),
 (57,3,25,1,1,1,1,1,0,0,0,0,0,'2021-03-09 09:19:50','2021-04-13 12:06:18',0,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 12:06:18',NULL),
 (58,3,27,1,1,1,1,1,0,0,0,0,0,'2021-03-09 09:20:47','2021-04-13 12:06:18',0,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 12:06:18',NULL),
 (61,3,11,2,1,2,2,1,3402387.99,28983305.1,26463017.7,0,58848710.79,'2021-03-09 09:22:57','2021-04-13 12:06:18',3,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 12:06:18',NULL),
 (62,3,40,2,1,2,2,1,3402387.99,28983305.1,26463017.7,0,58848710.79,'2021-03-09 09:23:29','2021-04-13 12:06:18',3,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 12:06:18',NULL);
INSERT INTO `labor` (`id`,`company_parent_id`,`code_mesin`,`category_bagian`,`supervisor`,`operator`,`helper`,`supporting`,`supervisor_level3`,`operator_level2`,`helper_level0`,`support_level0`,`total_biaya`,`created_at`,`updated_at`,`shift`,`spvlv3_view1`,`spvlv2_view1`,`spvlv1_view1`,`spvlv1_view0`,`total_biaya_views1`,`jumlah_mesin_ditanggani`,`ended_at`,`TRANSACTION_DATE_V`) VALUES 
 (63,3,41,2,1,1,1,1,3402387.99,4830550.85,4410502.95,0,12643441.79,'2021-03-09 09:24:04','2021-04-13 12:06:18',1,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 12:06:18',NULL),
 (64,3,21,2,1,1,1,1,3402387.99,14491652.55,13231508.85,0,31125549.39,'2021-03-09 09:24:36','2021-04-13 12:06:18',3,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 12:06:18',NULL),
 (68,3,55,3,1,1,1,1,2430277.1357143,14491652.55,13231508.85,0,30153438.535714,'2021-03-09 09:26:55','2021-04-13 12:06:18',3,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 12:06:18',NULL),
 (69,3,4,4,1,1,1,1,2430277.1357143,14491652.55,13231508.85,0,30153438.535714,'2021-03-09 09:27:27','2021-04-13 12:06:18',3,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 12:06:18',NULL),
 (70,3,5,4,1,1,1,1,2430277.1357143,14491652.55,13231508.85,0,30153438.535714,'2021-03-09 09:27:46','2021-04-13 12:06:18',3,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 12:06:18',NULL);
INSERT INTO `labor` (`id`,`company_parent_id`,`code_mesin`,`category_bagian`,`supervisor`,`operator`,`helper`,`supporting`,`supervisor_level3`,`operator_level2`,`helper_level0`,`support_level0`,`total_biaya`,`created_at`,`updated_at`,`shift`,`spvlv3_view1`,`spvlv2_view1`,`spvlv1_view1`,`spvlv1_view0`,`total_biaya_views1`,`jumlah_mesin_ditanggani`,`ended_at`,`TRANSACTION_DATE_V`) VALUES 
 (71,3,6,4,1,1,1,1,2430277.1357143,14491652.55,13231508.85,0,30153438.535714,'2021-03-09 09:28:11','2021-04-13 12:06:18',3,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 12:06:18',NULL),
 (72,3,8,4,1,1,0,1,0,0,0,0,0,'2021-03-09 09:29:33','2021-04-13 12:06:18',0,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 12:06:18',NULL),
 (75,3,43,5,1,1,1,1,810092.37857143,4830550.85,4410502.95,0,10051146.178571,'2021-03-09 09:38:19','2021-04-13 12:06:18',1,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 12:06:18',NULL),
 (76,3,22,6,2,1,4,NULL,2835323.325,9661101.7,35284023.6,0,47780448.625,'2021-03-09 09:39:27','2021-04-13 12:06:18',2,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 12:06:18',NULL),
 (77,3,37,6,1,1,4,1,2835323.325,9661101.7,35284023.6,0,47780448.625,'2021-03-09 09:41:02','2021-04-13 12:06:18',2,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 12:06:18',NULL);
INSERT INTO `labor` (`id`,`company_parent_id`,`code_mesin`,`category_bagian`,`supervisor`,`operator`,`helper`,`supporting`,`supervisor_level3`,`operator_level2`,`helper_level0`,`support_level0`,`total_biaya`,`created_at`,`updated_at`,`shift`,`spvlv3_view1`,`spvlv2_view1`,`spvlv1_view1`,`spvlv1_view0`,`total_biaya_views1`,`jumlah_mesin_ditanggani`,`ended_at`,`TRANSACTION_DATE_V`) VALUES 
 (78,3,38,6,1,1,4,1,2835323.325,9661101.7,35284023.6,0,47780448.625,'2021-03-09 09:42:20','2021-04-13 12:06:18',2,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 12:06:18',NULL),
 (79,3,44,6,1,1,1,1,2835323.325,9661101.7,8821005.9,0,21317430.925,'2021-03-09 09:43:00','2021-04-13 12:06:18',2,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 12:06:18',NULL),
 (81,3,44,6,1,1,1,1,1417661.6625,4830550.85,4410502.95,0,10658715.4625,'2021-03-09 09:45:48','2021-04-13 12:06:18',1,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 12:06:18',NULL),
 (84,3,24,2,1,2,3,1,17011939.95,28983305.1,39694526.55,0,85689771.6,'2021-03-16 14:12:34','2021-04-13 12:06:18',3,NULL,NULL,NULL,NULL,NULL,1,'2021-04-13 12:06:18',NULL),
 (85,3,19,2,1,3,1,1,17011939.95,43474957.65,13231508.85,0,73718406.45,'2021-03-16 16:57:16','2021-04-13 12:06:18',3,NULL,NULL,NULL,NULL,NULL,1,'2021-04-13 12:06:18',NULL);
INSERT INTO `labor` (`id`,`company_parent_id`,`code_mesin`,`category_bagian`,`supervisor`,`operator`,`helper`,`supporting`,`supervisor_level3`,`operator_level2`,`helper_level0`,`support_level0`,`total_biaya`,`created_at`,`updated_at`,`shift`,`spvlv3_view1`,`spvlv2_view1`,`spvlv1_view1`,`spvlv1_view0`,`total_biaya_views1`,`jumlah_mesin_ditanggani`,`ended_at`,`TRANSACTION_DATE_V`) VALUES 
 (86,3,63,3,1,4,2,1,1134129.33,19322203.4,8821005.9,0,29277338.63,'2021-03-22 16:02:11','2021-04-13 12:06:18',1,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 12:06:18',NULL),
 (87,3,64,3,1,4,3,1,8505969.975,57966610.2,39694526.55,0,106167106.725,'2021-03-22 16:03:11','2021-04-13 12:06:18',3,NULL,NULL,NULL,NULL,NULL,1,'2021-04-13 12:06:18',NULL),
 (105,3,88,2,1,3,1,1,4252984.9875,43474957.65,13231508.85,0,60959451.4875,'2021-03-31 09:23:06','2021-04-13 12:06:18',3,NULL,NULL,NULL,NULL,NULL,1,'2021-04-13 12:06:18',NULL),
 (106,3,56,2,1,2,3,1,3402387.99,28983305.1,39694526.55,0,72080219.64,'2021-03-31 09:23:59','2021-04-13 12:06:18',3,NULL,NULL,NULL,NULL,NULL,1,'2021-04-13 12:06:18',NULL),
 (107,3,7,2,1,3,1,1,17011939.95,43474957.65,13231508.85,0,73718406.45,'2021-04-01 11:16:39','2021-04-13 12:06:18',3,NULL,NULL,NULL,NULL,NULL,1,'2021-04-13 12:06:18',NULL);
INSERT INTO `labor` (`id`,`company_parent_id`,`code_mesin`,`category_bagian`,`supervisor`,`operator`,`helper`,`supporting`,`supervisor_level3`,`operator_level2`,`helper_level0`,`support_level0`,`total_biaya`,`created_at`,`updated_at`,`shift`,`spvlv3_view1`,`spvlv2_view1`,`spvlv1_view1`,`spvlv1_view0`,`total_biaya_views1`,`jumlah_mesin_ditanggani`,`ended_at`,`TRANSACTION_DATE_V`) VALUES 
 (108,3,6,3,1,3,1,2,17011939.95,43474957.65,13231508.85,0,73718406.45,'2021-04-05 08:24:58','2021-04-13 12:06:18',3,NULL,NULL,NULL,NULL,NULL,1,'2021-04-13 12:06:18',NULL),
 (109,3,46,2,1,3,2,4,17011939.95,43474957.65,26463017.7,0,86949915.3,'2021-04-05 13:31:13','2021-04-13 15:51:29',3,NULL,NULL,NULL,NULL,NULL,1,'2021-04-13 12:06:18',NULL),
 (110,3,9,3,1,2,3,1,17011939.95,28983305.1,39694526.55,0,85689771.6,'2021-04-05 13:37:00','2021-04-13 12:06:18',3,NULL,NULL,NULL,NULL,NULL,1,'2021-04-13 12:06:18',NULL),
 (111,3,93,4,1,3,2,1,17011939.95,43474957.65,26463017.7,0,86949915.3,'2021-04-05 14:31:07','2021-04-13 12:06:18',3,NULL,NULL,NULL,NULL,NULL,1,'2021-04-13 12:06:18',NULL),
 (112,3,91,4,1,3,1,1,17011939.95,43474957.65,13231508.85,0,73718406.45,'2021-04-05 15:55:22','2021-04-13 12:06:18',3,NULL,NULL,NULL,NULL,NULL,1,'2021-04-13 12:06:18',NULL);
INSERT INTO `labor` (`id`,`company_parent_id`,`code_mesin`,`category_bagian`,`supervisor`,`operator`,`helper`,`supporting`,`supervisor_level3`,`operator_level2`,`helper_level0`,`support_level0`,`total_biaya`,`created_at`,`updated_at`,`shift`,`spvlv3_view1`,`spvlv2_view1`,`spvlv1_view1`,`spvlv1_view0`,`total_biaya_views1`,`jumlah_mesin_ditanggani`,`ended_at`,`TRANSACTION_DATE_V`) VALUES 
 (113,3,89,4,1,2,1,1,17011939.95,28983305.1,13231508.85,0,59226753.9,'2021-04-07 00:05:44','2021-04-13 12:06:18',3,NULL,NULL,NULL,NULL,NULL,1,'2021-04-13 12:06:18',NULL),
 (114,3,92,4,1,5,3,2,17011939.95,72458262.75,39694526.55,0,129164729.25,'2021-04-07 02:11:07','2021-04-13 12:06:18',3,NULL,NULL,NULL,NULL,NULL,1,'2021-04-13 12:06:18',NULL),
 (115,3,61,4,1,2,1,4,17011939.95,28983305.1,13231508.85,0,59226753.9,'2021-04-07 10:07:36','2021-04-13 12:06:18',3,NULL,NULL,NULL,NULL,NULL,1,'2021-04-13 12:06:18',NULL),
 (116,3,99,2,1,3,2,1,8505969.975,43474957.65,26463017.7,0,78443945.325,'2021-04-07 10:52:16','2021-04-13 12:06:18',3,NULL,NULL,NULL,NULL,NULL,1,'2021-04-13 12:06:18',NULL),
 (117,3,100,2,1,3,2,1,8505969.975,43474957.65,26463017.7,0,78443945.325,'2021-04-07 10:52:16','2021-04-13 12:06:18',3,NULL,NULL,NULL,NULL,NULL,1,'2021-04-13 12:06:18',NULL);
INSERT INTO `labor` (`id`,`company_parent_id`,`code_mesin`,`category_bagian`,`supervisor`,`operator`,`helper`,`supporting`,`supervisor_level3`,`operator_level2`,`helper_level0`,`support_level0`,`total_biaya`,`created_at`,`updated_at`,`shift`,`spvlv3_view1`,`spvlv2_view1`,`spvlv1_view1`,`spvlv1_view0`,`total_biaya_views1`,`jumlah_mesin_ditanggani`,`ended_at`,`TRANSACTION_DATE_V`) VALUES 
 (118,3,110,2,1,3,2,4,17011939.95,43474957.65,26463017.7,0,86949915.3,'2021-04-13 15:52:14','2021-04-13 15:52:14',3,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`laborttals`
--

/*!40000 ALTER TABLE `laborttals` DISABLE KEYS */;
INSERT INTO `laborttals` (`id`,`history_latest`,`company_id`,`before`,`table_column`,`created_at`,`updated_at`,`changed_by`,`category_id`,`code_mesin`,`created_by`) VALUES 
 (14,17011940,3,17011940,'labor.supervisor_level3',NULL,'2021-03-29 14:39:46','Admin',3,64,NULL),
 (15,28983306,3,28983306,'labor.operator_level2',NULL,'2021-03-29 14:39:46','Admin',3,64,NULL),
 (16,13231509,3,13231509,'labor.helper_level0',NULL,'2021-03-29 14:39:46','Admin',3,64,NULL),
 (17,106167107,3,106167107,'labor.added.event','2021-03-31 09:23:05','2021-03-31 09:23:05',NULL,3,64,'Admin'),
 (18,106167107,3,106167107,'labor.added.event','2021-03-31 09:23:05','2021-03-31 09:23:05',NULL,3,64,'Admin'),
 (19,106167107,3,106167107,'labor.added.event','2021-03-31 09:23:06','2021-03-31 09:23:06',NULL,3,88,'Admin'),
 (20,8505970,3,8505970,'labor.added.event','2021-03-31 09:24:11','2021-03-31 09:24:11',NULL,2,56,'Admin'),
 (21,8505970,3,8505970,'labor.added.event','2021-03-31 09:24:11','2021-03-31 09:24:11',NULL,2,56,'Admin'),
 (22,8505970,3,8505970,'labor.added.event','2021-03-31 09:24:11','2021-03-31 09:24:11',NULL,2,57,'Admin');
INSERT INTO `laborttals` (`id`,`history_latest`,`company_id`,`before`,`table_column`,`created_at`,`updated_at`,`changed_by`,`category_id`,`code_mesin`,`created_by`) VALUES 
 (23,8505970,3,8505970,'labor.added.event','2021-03-31 09:25:08','2021-03-31 09:25:08',NULL,2,56,'Admin'),
 (24,8505970,3,8505970,'labor.added.event','2021-03-31 09:25:08','2021-03-31 09:25:08',NULL,2,57,'Admin'),
 (25,72080220,3,72080220,'labor.added.event','2021-04-01 11:19:19','2021-04-01 11:19:19',NULL,2,10,'Admin'),
 (26,72080220,3,72080220,'labor.added.event','2021-04-01 11:19:19','2021-04-01 11:19:19',NULL,2,56,'Admin'),
 (27,72080220,3,72080220,'labor.added.event','2021-04-01 11:19:19','2021-04-01 11:19:19',NULL,2,57,'Admin'),
 (28,72080220,3,72080220,'labor.added.event','2021-04-01 11:19:19','2021-04-01 11:19:19',NULL,2,58,'Admin'),
 (29,72080220,3,72080220,'labor.added.event','2021-04-01 11:19:19','2021-04-01 11:19:19',NULL,2,95,'Admin'),
 (30,60959452,3,60959452,'labor.added.event','2021-04-01 14:44:28','2021-04-01 14:44:28',NULL,2,10,'Admin'),
 (31,60959452,3,60959452,'labor.added.event','2021-04-01 14:44:28','2021-04-01 14:44:28',NULL,2,58,'Admin');
INSERT INTO `laborttals` (`id`,`history_latest`,`company_id`,`before`,`table_column`,`created_at`,`updated_at`,`changed_by`,`category_id`,`code_mesin`,`created_by`) VALUES 
 (32,60959452,3,60959452,'labor.added.event','2021-04-01 14:44:28','2021-04-01 14:44:28',NULL,2,88,'Admin'),
 (33,60959452,3,60959452,'labor.added.event','2021-04-01 14:44:28','2021-04-01 14:44:28',NULL,2,95,'Admin'),
 (34,73718407,3,73718407,'labor.added.event','2021-04-05 08:24:57','2021-04-05 08:24:57',NULL,3,48,'Admin'),
 (35,17011940,3,17011940,'labor.supervisor_level3',NULL,'2021-04-05 08:30:44','Admin',3,46,NULL),
 (36,13231509,3,13231509,'labor.helper_level0',NULL,'2021-04-05 08:30:44','Admin',3,46,NULL),
 (37,17011940,3,17011940,'labor.supervisor_level3',NULL,'2021-04-05 08:34:53','Admin',3,46,NULL),
 (38,13231509,3,13231509,'labor.helper_level0',NULL,'2021-04-05 08:34:53','Admin',3,46,NULL),
 (39,17011940,3,17011940,'labor.supervisor_level3',NULL,'2021-04-05 09:03:43','Admin',3,47,NULL),
 (40,13231509,3,13231509,'labor.helper_level0',NULL,'2021-04-05 09:03:43','Admin',3,47,NULL),
 (41,17011940,3,4252985,'labor.supervisor_level3',NULL,'2021-04-05 09:22:38','Admin',2,97,NULL);
INSERT INTO `laborttals` (`id`,`history_latest`,`company_id`,`before`,`table_column`,`created_at`,`updated_at`,`changed_by`,`category_id`,`code_mesin`,`created_by`) VALUES 
 (42,13231509,3,13231509,'labor.helper_level0',NULL,'2021-04-05 09:22:38','Admin',2,97,NULL),
 (43,73718407,3,60959452,'labor.total_biaya',NULL,'2021-04-05 09:22:38','Admin',2,97,NULL),
 (44,17011940,3,17011940,'labor.supervisor_level3',NULL,'2021-04-05 09:23:12','Admin',2,97,NULL),
 (45,13231509,3,13231509,'labor.helper_level0',NULL,'2021-04-05 09:23:12','Admin',2,97,NULL),
 (46,17011940,3,17011940,'labor.supervisor_level3',NULL,'2021-04-05 09:29:55','Admin',3,98,NULL),
 (47,13231509,3,13231509,'labor.helper_level0',NULL,'2021-04-05 09:29:55','Admin',3,98,NULL),
 (48,17011940,3,17011940,'labor.supervisor_level3',NULL,'2021-04-05 09:31:48','Admin',3,6,NULL),
 (49,13231509,3,13231509,'labor.helper_level0',NULL,'2021-04-05 09:31:48','Admin',3,6,NULL),
 (50,17011940,3,17011940,'labor.supervisor_level3',NULL,'2021-04-05 09:32:30','Admin',2,98,NULL),
 (51,13231509,3,13231509,'labor.helper_level0',NULL,'2021-04-05 09:32:30','Admin',2,98,NULL);
INSERT INTO `laborttals` (`id`,`history_latest`,`company_id`,`before`,`table_column`,`created_at`,`updated_at`,`changed_by`,`category_id`,`code_mesin`,`created_by`) VALUES 
 (52,17011940,3,17011940,'labor.supervisor_level3',NULL,'2021-04-05 09:35:58','Admin',2,98,NULL),
 (53,13231509,3,13231509,'labor.helper_level0',NULL,'2021-04-05 09:35:58','Admin',2,98,NULL),
 (54,17011940,3,17011940,'labor.supervisor_level3',NULL,'2021-04-05 09:36:40','Admin',2,91,NULL),
 (55,13231509,3,13231509,'labor.helper_level0',NULL,'2021-04-05 09:36:40','Admin',2,91,NULL),
 (56,17011940,3,17011940,'labor.supervisor_level3',NULL,'2021-04-05 09:36:58','Admin',2,98,NULL),
 (57,13231509,3,13231509,'labor.helper_level0',NULL,'2021-04-05 09:36:58','Admin',2,98,NULL),
 (58,17011940,3,4252985,'labor.supervisor_level3',NULL,'2021-04-05 09:37:21','Admin',2,19,NULL),
 (59,13231509,3,13231509,'labor.helper_level0',NULL,'2021-04-05 09:37:21','Admin',2,19,NULL),
 (60,73718407,3,60959452,'labor.total_biaya',NULL,'2021-04-05 09:37:21','Admin',2,19,NULL),
 (61,17011940,3,3402388,'labor.supervisor_level3',NULL,'2021-04-05 09:42:21','Admin',2,24,NULL);
INSERT INTO `laborttals` (`id`,`history_latest`,`company_id`,`before`,`table_column`,`created_at`,`updated_at`,`changed_by`,`category_id`,`code_mesin`,`created_by`) VALUES 
 (62,28983306,3,28983306,'labor.operator_level2',NULL,'2021-04-05 09:42:21','Admin',2,24,NULL),
 (63,39694527,3,39694527,'labor.helper_level0',NULL,'2021-04-05 09:42:21','Admin',2,24,NULL),
 (64,85689772,3,72080220,'labor.total_biaya',NULL,'2021-04-05 09:42:21','Admin',2,24,NULL),
 (65,17011940,3,17011940,'labor.supervisor_level3',NULL,'2021-04-05 10:31:29','Admin',2,18,NULL),
 (66,13231509,3,13231509,'labor.helper_level0',NULL,'2021-04-05 10:31:29','Admin',2,18,NULL),
 (67,17011940,3,17011940,'labor.supervisor_level3',NULL,'2021-04-05 10:33:18','Admin',2,98,NULL),
 (68,13231509,3,13231509,'labor.helper_level0',NULL,'2021-04-05 10:33:18','Admin',2,98,NULL),
 (69,17011940,3,17011940,'labor.supervisor_level3',NULL,'2021-04-05 10:36:10','Admin',2,7,NULL),
 (70,13231509,3,13231509,'labor.helper_level0',NULL,'2021-04-05 10:36:10','Admin',2,7,NULL),
 (71,59226754,3,59226754,'labor.added.event','2021-04-05 13:31:12','2021-04-05 13:31:12',NULL,3,46,'Admin');
INSERT INTO `laborttals` (`id`,`history_latest`,`company_id`,`before`,`table_column`,`created_at`,`updated_at`,`changed_by`,`category_id`,`code_mesin`,`created_by`) VALUES 
 (72,85689772,3,85689772,'labor.added.event','2021-04-05 13:36:59','2021-04-05 13:36:59',NULL,3,9,'Admin'),
 (73,86949916,3,86949916,'labor.added.event','2021-04-05 14:31:06','2021-04-05 14:31:06',NULL,4,93,'Admin'),
 (74,73718407,3,73718407,'labor.added.event','2021-04-05 15:55:22','2021-04-05 15:55:22',NULL,4,91,'Admin'),
 (75,59226754,3,59226754,'labor.added.event','2021-04-07 00:05:44','2021-04-07 00:05:44',NULL,4,89,'Admin'),
 (76,17011940,3,17011940,'labor.supervisor_level3',NULL,'2021-04-07 00:14:10','Admin',4,7,NULL),
 (77,28983306,3,28983306,'labor.operator_level2',NULL,'2021-04-07 00:14:10','Admin',4,7,NULL),
 (78,13231509,3,13231509,'labor.helper_level0',NULL,'2021-04-07 00:14:10','Admin',4,7,NULL),
 (79,17011940,3,17011940,'labor.supervisor_level3',NULL,'2021-04-07 00:47:29','Admin',4,89,NULL),
 (80,28983306,3,28983306,'labor.operator_level2',NULL,'2021-04-07 00:47:29','Admin',4,89,NULL),
 (81,13231509,3,13231509,'labor.helper_level0',NULL,'2021-04-07 00:47:29','Admin',4,89,NULL);
INSERT INTO `laborttals` (`id`,`history_latest`,`company_id`,`before`,`table_column`,`created_at`,`updated_at`,`changed_by`,`category_id`,`code_mesin`,`created_by`) VALUES 
 (82,17011940,3,17011940,'labor.supervisor_level3',NULL,'2021-04-07 00:48:08','Admin',4,7,NULL),
 (83,28983306,3,28983306,'labor.operator_level2',NULL,'2021-04-07 00:48:08','Admin',4,7,NULL),
 (84,13231509,3,13231509,'labor.helper_level0',NULL,'2021-04-07 00:48:08','Admin',4,7,NULL),
 (85,17011940,3,17011940,'labor.supervisor_level3',NULL,'2021-04-07 01:06:01','Admin',4,89,NULL),
 (86,28983306,3,28983306,'labor.operator_level2',NULL,'2021-04-07 01:06:01','Admin',4,89,NULL),
 (87,13231509,3,13231509,'labor.helper_level0',NULL,'2021-04-07 01:06:01','Admin',4,89,NULL),
 (88,129164730,3,129164730,'labor.added.event','2021-04-07 02:11:07','2021-04-07 02:11:07',NULL,4,92,'Admin'),
 (89,59226754,3,59226754,'labor.added.event','2021-04-07 10:07:36','2021-04-07 10:07:36',NULL,4,61,'Admin'),
 (90,78443946,3,78443946,'labor.added.event','2021-04-07 10:52:16','2021-04-07 10:52:16',NULL,2,99,'Admin'),
 (91,78443946,3,78443946,'labor.added.event','2021-04-07 10:52:16','2021-04-07 10:52:16',NULL,2,100,'Admin');
INSERT INTO `laborttals` (`id`,`history_latest`,`company_id`,`before`,`table_column`,`created_at`,`updated_at`,`changed_by`,`category_id`,`code_mesin`,`created_by`) VALUES 
 (92,86949916,3,86949916,'labor.added.event','2021-04-13 15:51:29','2021-04-13 15:51:29',NULL,2,46,'Accounting'),
 (93,86949916,3,86949916,'labor.added.event','2021-04-13 15:52:14','2021-04-13 15:52:14',NULL,2,110,'Accounting');
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`laporan_bagian_penjualan`
--

/*!40000 ALTER TABLE `laporan_bagian_penjualan` DISABLE KEYS */;
INSERT INTO `laporan_bagian_penjualan` (`id`,`code_laporan_penjualan`,`nama_biaya`,`tahun1`,`biaya_perbulan_bag_penjualan`,`created_at`,`updated_at`,`tahun2`,`tahun3`,`tahun1_view0`,`tahun2_view0`,`tahun3_view0`,`biaya_perbulan_bag_penjualan_view0`,`company_parent_id`,`ended_at`,`TRANSACTION_DATE_V`) VALUES 
 (28,'LPBPFLTR0321001','MARKETING-TUNJANGAN TETAP',204928896,16000301.694444,'2021-03-07 21:33:24','2021-04-13 14:00:17',188854124,182227841,NULL,NULL,NULL,NULL,3,'2021-04-13 14:00:17',NULL),
 (29,'LPBPthTR03210029','IKLAN & PROMOSI',24647509,901319.69444444,'2021-03-08 00:06:46','2021-04-13 14:00:17',3900000,3900000,NULL,NULL,NULL,NULL,3,'2021-04-13 14:00:17',NULL),
 (30,'LPBPaQTR03210030','MARKETING-GAJI & UPAH',615553236,50135321.333333,'2021-03-08 00:07:33','2021-04-13 14:00:17',616368232,572950100,NULL,NULL,NULL,NULL,3,'2021-04-13 14:00:17',NULL),
 (31,'LPBPysTR03210031','MARKETING-TUNJANGAN TIDAK TETAP',8266617.56,765531.15333333,'2021-03-08 00:08:23','2021-04-13 14:00:17',5750084.98,13542418.98,NULL,NULL,NULL,NULL,3,'2021-04-13 14:00:17',NULL),
 (32,'LPBPFWTR03210032','MARKETING-LEMBUR',36205251.4,1931487.5616667,'2021-03-08 00:09:01','2021-04-13 14:00:17',31606848.82,1721452,NULL,NULL,NULL,NULL,3,'2021-04-13 14:00:17',NULL);
INSERT INTO `laporan_bagian_penjualan` (`id`,`code_laporan_penjualan`,`nama_biaya`,`tahun1`,`biaya_perbulan_bag_penjualan`,`created_at`,`updated_at`,`tahun2`,`tahun3`,`tahun1_view0`,`tahun2_view0`,`tahun3_view0`,`biaya_perbulan_bag_penjualan_view0`,`company_parent_id`,`ended_at`,`TRANSACTION_DATE_V`) VALUES 
 (33,'LPBP8LTR03210033','MARKETING-PREMI',NULL,0,'2021-03-08 00:09:09','2021-04-13 14:00:17',NULL,NULL,NULL,NULL,NULL,NULL,3,'2021-04-13 14:00:17',NULL),
 (34,'LPBPBOTR03210034','MARKETING-TUNJANGAN ASURANSI',92045601.58,7117954.1530556,'2021-03-08 00:09:38','2021-04-13 14:00:17',77295809.23,86904938.7,NULL,NULL,NULL,NULL,3,'2021-04-13 14:00:17',NULL),
 (35,'LPBPQKTR03210035','MARKETING-TUNJANGAN HARI RAYA',66589881,5535445,'2021-03-08 00:10:05','2021-04-13 14:00:17',69678954,63007185,NULL,NULL,NULL,NULL,3,'2021-04-13 14:00:17',NULL),
 (36,'LPBPiiTR03210036','MARKETING-LAIN',36897427,2901539.6388889,'2021-03-08 00:10:53','2021-04-13 14:00:17',55518000,12040000,NULL,NULL,NULL,NULL,3,'2021-04-13 14:00:17',NULL),
 (37,'LPBPO1TR03210037','MARKETING-PESANGON',NULL,3095050.25,'2021-03-08 00:11:08','2021-04-13 14:00:17',111421809,NULL,NULL,NULL,NULL,NULL,3,'2021-04-13 14:00:17',NULL);
INSERT INTO `laporan_bagian_penjualan` (`id`,`code_laporan_penjualan`,`nama_biaya`,`tahun1`,`biaya_perbulan_bag_penjualan`,`created_at`,`updated_at`,`tahun2`,`tahun3`,`tahun1_view0`,`tahun2_view0`,`tahun3_view0`,`biaya_perbulan_bag_penjualan_view0`,`company_parent_id`,`ended_at`,`TRANSACTION_DATE_V`) VALUES 
 (38,'LPBPyVTR03210038','BIAYA PERJALANAN PEMASARAN',31515335,2205727.6666667,'2021-03-08 00:11:40','2021-04-13 14:00:17',38946870,8943991,NULL,NULL,NULL,NULL,3,'2021-04-13 14:00:17',NULL),
 (39,'LPBPpeTR03210039','MARKETING-PAJAK / PERIJINAN / RETRIBUSI',183885500,7643763.8888889,'2021-03-08 00:12:08','2021-04-13 14:00:17',57314900,33975100,NULL,NULL,NULL,NULL,3,'2021-04-13 14:00:17',NULL),
 (40,'LPBPMeTR03210040','MARKETING-BBM / PELUMAS / PARKIR DAN TOL',58000,17569.444444444,'2021-03-08 00:12:34','2021-04-13 14:00:17',NULL,574500,NULL,NULL,NULL,NULL,3,'2021-04-13 14:00:17',NULL),
 (41,'LPBPHXTR03210041','MARKETING-PEMELIHARAAN & PERBAIKAN KENDARAAN',9150000,747222.22222222,'2021-03-08 00:13:04','2021-04-13 14:00:17',8250000,9500000,NULL,NULL,NULL,NULL,3,'2021-04-13 14:00:17',NULL),
 (42,'LPBPdjTR03210042','MARKETING-SPAREPARTS KENDARAAN',2225000,81333.333333333,'2021-03-08 00:13:26','2021-04-13 14:00:17',NULL,703000,NULL,NULL,NULL,NULL,3,'2021-04-13 14:00:17',NULL);
INSERT INTO `laporan_bagian_penjualan` (`id`,`code_laporan_penjualan`,`nama_biaya`,`tahun1`,`biaya_perbulan_bag_penjualan`,`created_at`,`updated_at`,`tahun2`,`tahun3`,`tahun1_view0`,`tahun2_view0`,`tahun3_view0`,`biaya_perbulan_bag_penjualan_view0`,`company_parent_id`,`ended_at`,`TRANSACTION_DATE_V`) VALUES 
 (43,'LPBPUiTR03210043','MARKETING-KIRIM BARANG KE CUSTOMER',NULL,13888.888888889,'2021-03-08 00:13:44','2021-04-13 14:00:17',NULL,500000,NULL,NULL,NULL,NULL,3,'2021-04-13 14:00:17',NULL),
 (44,'LPBPHpTR03210044','MARKETING-TRANSPORTASI PENJUALAN',661106110,NULL,'2021-03-08 00:14:00','2021-04-13 14:00:17',971225682,854088500,NULL,NULL,NULL,NULL,3,'2021-04-13 14:00:17',NULL),
 (45,'LPBPn4TR03210045','MARKETING-ASURANSI TRANSPORTASI PENJUALAN',NULL,0,'2021-03-08 00:14:23','2021-04-13 14:00:17',NULL,NULL,NULL,NULL,NULL,NULL,3,'2021-04-13 14:00:17',NULL),
 (46,'LPBPqJTR03210046','MARKETING-LAIN-LAIN',1698400,1792183.4572222,'2021-03-08 00:14:56','2021-04-13 14:00:17',44303465.09,18516739.37,NULL,NULL,NULL,NULL,3,'2021-04-13 14:00:17',NULL),
 (47,'LPBPjUTR03210047','MARKETING-SAMPLE CUSTOMER',122336192.5472,155344.50498611,'2021-03-08 00:15:24','2021-04-13 14:00:17',NULL,5592402.1795,NULL,NULL,NULL,NULL,3,'2021-04-13 14:00:17',NULL);
INSERT INTO `laporan_bagian_penjualan` (`id`,`code_laporan_penjualan`,`nama_biaya`,`tahun1`,`biaya_perbulan_bag_penjualan`,`created_at`,`updated_at`,`tahun2`,`tahun3`,`tahun1_view0`,`tahun2_view0`,`tahun3_view0`,`biaya_perbulan_bag_penjualan_view0`,`company_parent_id`,`ended_at`,`TRANSACTION_DATE_V`) VALUES 
 (48,'LPBPiwTR03210048','TESC',4123151,124079.88888889,'2021-03-16 14:33:48','2021-04-13 14:00:17',112313,231412,NULL,NULL,NULL,NULL,3,'2021-04-13 14:00:17',NULL),
 (49,'LPBP4aTR03210049','DKASKD',9834893,575525.38888889,'2021-03-31 09:34:32','2021-04-13 14:00:17',9894829,989192,NULL,NULL,NULL,NULL,3,'2021-04-13 14:00:17',NULL);
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`laporan_biaya_administrasi_umum`
--

/*!40000 ALTER TABLE `laporan_biaya_administrasi_umum` DISABLE KEYS */;
INSERT INTO `laporan_biaya_administrasi_umum` (`id`,`code_adm_umum`,`nama_biaya`,`tahun1`,`created_at`,`updated_at`,`company_parent_id`,`tahun2`,`tahun3`,`total_biaya_lp_adm`,`th_view1`,`th_view2`,`th_view3`,`total_biaya_lp_adm_view0`,`ended_at`,`TRANSACTION_DATE_V`) VALUES 
 (49,'LBAUtDTR0321001','GAJI & UPAH STAFF',5350968268,'2021-03-08 00:30:04','2021-04-13 12:14:34',3,6450553541.13,6574298895.25,510439464.01056,NULL,NULL,NULL,NULL,'2021-04-13 12:14:34',NULL),
 (50,'LBAU1lTR03210050','TUNJANGAN TETAP',367879891.4,'2021-03-08 00:30:42','2021-04-13 12:14:34',3,329537090.48,313275241.75,28074783.989722,NULL,NULL,NULL,NULL,'2021-04-13 12:14:34',NULL),
 (51,'LBAUBDTR03210051','TUNJANGAN TIDAK TETAP',30181557.85,'2021-03-08 00:31:20','2021-04-13 12:14:34',3,161184070.12,41081217.75,6456856.8255556,NULL,NULL,NULL,NULL,'2021-04-13 12:14:34',NULL),
 (52,'LBAUlYTR03210052','LEMBUR',78876301.5,'2021-03-08 00:31:54','2021-04-13 12:14:34',3,58254404,34583292.4,4769833.275,NULL,NULL,NULL,NULL,'2021-04-13 12:14:34',NULL),
 (53,'LBAU4VTR03210053','PREMI',NULL,'2021-03-08 00:32:00','2021-04-13 12:14:34',3,NULL,NULL,0,NULL,NULL,NULL,NULL,'2021-04-13 12:14:34',NULL);
INSERT INTO `laporan_biaya_administrasi_umum` (`id`,`code_adm_umum`,`nama_biaya`,`tahun1`,`created_at`,`updated_at`,`company_parent_id`,`tahun2`,`tahun3`,`total_biaya_lp_adm`,`th_view1`,`th_view2`,`th_view3`,`total_biaya_lp_adm_view0`,`ended_at`,`TRANSACTION_DATE_V`) VALUES 
 (54,'LBAUYhTR03210054','TUNJANGAN ASURANSI',478519511.5,'2021-03-08 00:32:29','2021-04-13 12:14:34',3,544044753.9,505496930.91,42446144.341944,NULL,NULL,NULL,NULL,'2021-04-13 12:14:34',NULL),
 (55,'LBAUgmTR03210055','TUNJANGAN HARI RAYA',418598047,'2021-03-08 00:32:55','2021-04-13 12:14:34',3,321595470.83,372978523.3,30921445.586944,NULL,NULL,NULL,NULL,'2021-04-13 12:14:34',NULL),
 (56,'LBAUGBTR03210056','LAIN',NULL,'2021-03-08 00:33:07','2021-04-13 12:14:34',3,NULL,NULL,0,NULL,NULL,NULL,NULL,'2021-04-13 12:14:34',NULL),
 (57,'LBAUapTR03210057','PESANGON',628895556,'2021-03-08 00:33:30','2021-04-13 12:14:34',3,15677719,NULL,17904813.194444,NULL,NULL,NULL,NULL,'2021-04-13 12:14:34',NULL),
 (58,'LBAU5rTR03210058','PERLENGKAPAN KANTOR',98414401.0521,'2021-03-08 00:34:05','2021-04-13 12:14:34',3,131430128.9076,123262042.9163,9808515.9132222,NULL,NULL,NULL,NULL,'2021-04-13 12:14:34',NULL),
 (59,'LBAUs8TR03210059','RUMAH TANGGA KANTOR',17624200,'2021-03-08 00:34:34','2021-04-13 12:14:34',3,24001400,15331300.06,1582136.1127778,NULL,NULL,NULL,NULL,'2021-04-13 12:14:34',NULL);
INSERT INTO `laporan_biaya_administrasi_umum` (`id`,`code_adm_umum`,`nama_biaya`,`tahun1`,`created_at`,`updated_at`,`company_parent_id`,`tahun2`,`tahun3`,`total_biaya_lp_adm`,`th_view1`,`th_view2`,`th_view3`,`total_biaya_lp_adm_view0`,`ended_at`,`TRANSACTION_DATE_V`) VALUES 
 (60,'LBAUkjTR03210060','IKLAN',NULL,'2021-03-08 00:34:44','2021-04-13 12:14:34',3,NULL,NULL,0,NULL,NULL,NULL,NULL,'2021-04-13 12:14:34',NULL),
 (61,'LBAUyPTR03210061','BEBAN PERJALANAN KARYAWAN',149818683,'2021-03-08 00:35:11','2021-04-13 12:14:34',3,202966064,6876700,9990595.75,NULL,NULL,NULL,NULL,'2021-04-13 12:14:34',NULL),
 (62,'LBAUnoTR03210062','BEBAN MAKANAN & MINUMAN',18114590,'2021-03-08 00:35:38','2021-04-13 12:14:34',3,23303400,39446677,2246240.75,NULL,NULL,NULL,NULL,'2021-04-13 12:14:34',NULL),
 (63,'LBAUOuTR03210063','PAJAK / PERIJINAN / RETRIBUSI',115020951,'2021-03-08 00:36:02','2021-04-13 12:14:34',3,90092951,73104993,7728302.6388889,NULL,NULL,NULL,NULL,'2021-04-13 12:14:34',NULL),
 (64,'LBAUOITR03210064','ASURANSI',294800,'2021-03-08 00:36:14','2021-04-13 12:14:34',3,NULL,NULL,8188.8888888889,NULL,NULL,NULL,NULL,'2021-04-13 12:14:34',NULL),
 (65,'LBAUBiTR03210065','IURAN',4700000,'2021-03-08 00:36:37','2021-04-13 12:14:34',3,12385000,10520000,766805.55555556,NULL,NULL,NULL,NULL,'2021-04-13 12:14:34',NULL);
INSERT INTO `laporan_biaya_administrasi_umum` (`id`,`code_adm_umum`,`nama_biaya`,`tahun1`,`created_at`,`updated_at`,`company_parent_id`,`tahun2`,`tahun3`,`total_biaya_lp_adm`,`th_view1`,`th_view2`,`th_view3`,`total_biaya_lp_adm_view0`,`ended_at`,`TRANSACTION_DATE_V`) VALUES 
 (66,'LBAUe9TR03210066','PEMELIHARAAN & PERBAIKAN KENDARAAN',3429000,'2021-03-08 00:37:07','2021-04-13 12:14:34',3,7298894,705000,317580.38888889,NULL,NULL,NULL,NULL,'2021-04-13 12:14:34',NULL),
 (67,'LBAUMdTR03210067','SEWA KENDARAAN',950000,'2021-03-08 00:37:29','2021-04-13 12:14:34',3,3550000,6400000,302777.77777778,NULL,NULL,NULL,NULL,'2021-04-13 12:14:34',NULL),
 (68,'LBAUPKTR03210068','SPAREPARTS KENDARAAN',91534799.4728,'2021-03-08 00:38:02','2021-04-13 12:14:34',3,110737869.2727,58337458.49,1809792.5502465,NULL,NULL,NULL,NULL,'2021-04-13 12:14:34',NULL),
 (69,'LBAUDUTR03210069','PARKIR & TOL',36523500,'2021-03-08 00:38:30','2021-04-13 12:14:34',3,76141500,57301500,4721291.6666667,NULL,NULL,NULL,NULL,'2021-04-13 12:14:34',NULL),
 (70,'LBAU5LTR03210070','PEMELIHARAAN DAN PERBAIKAN GEDUNG',265118000,'2021-03-08 00:38:53','2021-04-13 12:14:34',3,171710750,2586364,12205975.388889,NULL,NULL,NULL,NULL,'2021-04-13 12:14:34',NULL);
INSERT INTO `laporan_biaya_administrasi_umum` (`id`,`code_adm_umum`,`nama_biaya`,`tahun1`,`created_at`,`updated_at`,`company_parent_id`,`tahun2`,`tahun3`,`total_biaya_lp_adm`,`th_view1`,`th_view2`,`th_view3`,`total_biaya_lp_adm_view0`,`ended_at`,`TRANSACTION_DATE_V`) VALUES 
 (71,'LBAUuATR03210071','PEMELIHARAAN & PERBAIKAN INVENTARIS KANTOR',3429000,'2021-03-08 00:39:19','2021-04-13 12:14:34',3,102641000,15534000,3377888.8888889,NULL,NULL,NULL,NULL,'2021-04-13 12:14:34',NULL),
 (72,'LBAUMPTR03210072','PENYUSUTAN INVENTARIS KENDARAAN',NULL,'2021-03-08 00:39:49','2021-04-13 12:14:34',3,196818179.9996,58465909.0908,7091224.6969556,NULL,NULL,NULL,NULL,'2021-04-13 12:14:34',NULL),
 (73,'LBAUOzTR03210073','PENYUSUTAN INVENTARIS KANTOR',169905975.5983,'2021-03-08 00:40:20','2021-04-13 12:14:34',3,100365427.7056,14912400.0171,7921772.3144722,NULL,NULL,NULL,NULL,'2021-04-13 12:14:34',NULL),
 (74,'LBAUqLTR03210074','PENYUSUTAN AKTIVA TETAP TAK BERWUJUD',47487023.8576,'2021-03-08 00:40:57','2021-04-13 12:14:34',3,9467689.5,1376755.1666,1620318.5701167,NULL,NULL,NULL,NULL,'2021-04-13 12:14:34',NULL),
 (75,'LBAUEbTR03210075','FOTOCOPY & STENSIL',26281800,'2021-03-08 00:41:24','2021-04-13 12:14:34',3,44187348,27536751,2722386.0833333,NULL,NULL,NULL,NULL,'2021-04-13 12:14:34',NULL);
INSERT INTO `laporan_biaya_administrasi_umum` (`id`,`code_adm_umum`,`nama_biaya`,`tahun1`,`created_at`,`updated_at`,`company_parent_id`,`tahun2`,`tahun3`,`total_biaya_lp_adm`,`th_view1`,`th_view2`,`th_view3`,`total_biaya_lp_adm_view0`,`ended_at`,`TRANSACTION_DATE_V`) VALUES 
 (76,'LBAUqQTR03210076','SPAREPARTS GEDUNG/INVENTARIS/INSTALASI',941264800,'2021-03-08 00:42:11','2021-04-13 12:14:34',3,121227843.0909,88321595,7991765.5422979,NULL,NULL,NULL,NULL,'2021-04-13 12:14:34',NULL),
 (77,'LBAUxLTR03210077','LAIN-LAIN',14587939,'2021-03-08 00:42:47','2021-04-13 12:14:34',3,39674500,3631110.92,1608154.1644444,NULL,NULL,NULL,NULL,'2021-04-13 12:14:34',NULL),
 (78,'LBAUP9TR03210078','PELATIHAN / TRAINING',NULL,'2021-03-08 00:43:53','2021-04-13 12:14:34',3,3500000,NULL,97222.222222222,NULL,NULL,NULL,NULL,'2021-04-13 12:14:34',NULL),
 (79,'LBAUSFTR03210079','KONSULTA / NOTARIS',223500000,'2021-03-08 00:44:23','2021-04-13 12:14:34',3,191650000,395489500,22517763.888889,NULL,NULL,NULL,NULL,'2021-04-13 12:14:34',NULL),
 (80,'LBAU94TR03210080','OUT SOURCE TENAGA KERJA',169000000,'2021-03-08 00:44:50','2021-04-13 12:14:34',3,151000000,215000000,14861111.111111,NULL,NULL,NULL,NULL,'2021-04-13 12:14:34',NULL);
INSERT INTO `laporan_biaya_administrasi_umum` (`id`,`code_adm_umum`,`nama_biaya`,`tahun1`,`created_at`,`updated_at`,`company_parent_id`,`tahun2`,`tahun3`,`total_biaya_lp_adm`,`th_view1`,`th_view2`,`th_view3`,`total_biaya_lp_adm_view0`,`ended_at`,`TRANSACTION_DATE_V`) VALUES 
 (81,'LBAUtkTR03210081','PDAM',5124241231,'2021-03-08 00:45:20','2021-04-13 12:14:34',3,18820300,16464300,143320161.97222,NULL,NULL,NULL,NULL,'2021-04-13 12:14:34',NULL),
 (82,'LBAUTPTR03210082','TELEPON/FAX/INTERNET',43966559,'2021-03-08 00:46:03','2021-04-13 12:14:34',3,49711968,57749140,4206324.0833333,NULL,NULL,NULL,NULL,'2021-04-13 12:14:34',NULL),
 (83,'LBAUQHTR03210083','POS & PAKET',47747851,'2021-03-08 00:46:48','2021-04-13 12:14:34',3,40782401,29518604,3279134.8888889,NULL,NULL,NULL,NULL,'2021-04-13 12:14:34',NULL),
 (84,'LBAUDsTR03210084','MATERAI',23337000,'2021-03-08 00:47:46','2021-04-13 12:14:34',3,28752000,20112000,2005583.3333333,NULL,NULL,NULL,NULL,'2021-04-13 12:14:34',NULL),
 (90,'LBAU5UTR03210085','kaJDK',41231,'2021-03-16 14:41:23','2021-04-13 12:14:34',3,31231231,42352,869855.94444444,NULL,NULL,NULL,NULL,'2021-04-13 12:14:34',NULL),
 (91,'LBAUQ0TR03210091','GASD',938492,'2021-03-31 09:39:00','2021-04-13 12:14:34',3,9492,98239,29061.75,NULL,NULL,NULL,NULL,'2021-04-13 12:14:34',NULL);
INSERT INTO `laporan_biaya_administrasi_umum` (`id`,`code_adm_umum`,`nama_biaya`,`tahun1`,`created_at`,`updated_at`,`company_parent_id`,`tahun2`,`tahun3`,`total_biaya_lp_adm`,`th_view1`,`th_view2`,`th_view3`,`total_biaya_lp_adm_view0`,`ended_at`,`TRANSACTION_DATE_V`) VALUES 
 (92,'LBAUnLTR04210092','KDOAP',39299293,'2021-04-13 10:33:24','2021-04-13 12:14:34',3,29139141,24193191,2573100.6944444,NULL,NULL,NULL,NULL,'2021-04-13 12:14:34',NULL),
 (93,'LBAUocTR04210093','432000',2399100,'2021-04-13 13:19:01','2021-04-13 15:22:42',3,3932942,2030123,232282.36111111,NULL,NULL,NULL,NULL,NULL,NULL);
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`laporan_gaji_lain`
--

/*!40000 ALTER TABLE `laporan_gaji_lain` DISABLE KEYS */;
INSERT INTO `laporan_gaji_lain` (`id`,`code_rpt_gaji_lain`,`category_bagian`,`created_at`,`updated_at`,`tahun1`,`tahun2`,`tahun3`,`total_biaya_laporan_periode`,`company_parent_id`,`code_account`,`lgj_lain_view1`,`lgj_lain_view2`,`lgj_lain_view3`,`total_lain_view0`,`ended_at`,`TRANSACTION_DATE_V`) VALUES 
 (91,'GJLfITR03210032',9,'2021-03-07 22:33:06','2021-04-13 12:16:13',185436396,184197621,214409943,16223443.333333,3,'GAJI & UPAH',NULL,NULL,NULL,NULL,'2021-04-13 12:16:13',NULL),
 (92,'GJLKaTR03210032',9,'2021-03-07 23:44:46','2021-04-13 12:16:13',61089502.92,58283402,57836511.5,4922483.7894444,3,'TUNJANGAN TETAP',NULL,NULL,NULL,NULL,'2021-04-13 12:16:13',NULL),
 (93,'GJLOnTR03210032',9,'2021-03-07 23:45:21','2021-04-13 12:16:13',10358359.03,11422743.56,19319890.88,1141694.2630556,3,'TUNJANGAN TIDAK TETAP',NULL,NULL,NULL,NULL,'2021-04-13 12:16:13',NULL),
 (94,'GJLXUTR03210032',9,'2021-03-07 23:45:54','2021-04-13 12:16:13',11047261.9,2937968.8,NULL,388478.63055556,3,'LEMBUR',NULL,NULL,NULL,NULL,'2021-04-13 12:16:13',NULL),
 (95,'GJL9XTR03210032',9,'2021-03-07 23:46:04','2021-04-13 12:16:13',NULL,NULL,NULL,0,3,'PREMI',NULL,NULL,NULL,NULL,'2021-04-13 12:16:13',NULL);
INSERT INTO `laporan_gaji_lain` (`id`,`code_rpt_gaji_lain`,`category_bagian`,`created_at`,`updated_at`,`tahun1`,`tahun2`,`tahun3`,`total_biaya_laporan_periode`,`company_parent_id`,`code_account`,`lgj_lain_view1`,`lgj_lain_view2`,`lgj_lain_view3`,`total_lain_view0`,`ended_at`,`TRANSACTION_DATE_V`) VALUES 
 (96,'GJLzOTR03210032',9,'2021-03-07 23:46:37','2021-04-13 12:16:13',40194313.66,28048964.41,34259505.25,2847299.5366667,3,'TUNJANGAN ASURANSI',NULL,NULL,NULL,NULL,'2021-04-13 12:16:13',NULL),
 (97,'GJLZxTR03210032',9,'2021-03-07 23:47:07','2021-04-13 12:16:13',21499872,19355265,26323000.84,1866059.3844444,3,'TUNJANGAN HARI RAYA',NULL,NULL,NULL,NULL,'2021-04-13 12:16:13',NULL),
 (98,'GJLldTR03210032',9,'2021-03-07 23:47:20','2021-04-13 12:16:13',NULL,NULL,NULL,0,3,'LAIN',NULL,NULL,NULL,NULL,'2021-04-13 12:16:13',NULL),
 (99,'GJLTVTR03210032',9,'2021-03-07 23:47:43','2021-04-13 12:16:13',294000,98000,NULL,10888.888888889,3,'BIAYA MAKAN',NULL,NULL,NULL,NULL,'2021-04-13 12:16:13',NULL),
 (100,'GJL3gTR03210032',11,'2021-03-07 23:48:41','2021-04-13 12:16:13',453567428,512579965.67,477946777.1,40113726.965833,3,'GAJI & UPAH',NULL,NULL,NULL,NULL,'2021-04-13 12:16:13',NULL),
 (101,'GJLKFTR03210032',11,'2021-03-07 23:49:15','2021-04-13 12:16:13',151345486.4,156582206,142159554.5,12502423.525,3,'TUNJANGAN TETAP',NULL,NULL,NULL,NULL,'2021-04-13 12:16:13',NULL);
INSERT INTO `laporan_gaji_lain` (`id`,`code_rpt_gaji_lain`,`category_bagian`,`created_at`,`updated_at`,`tahun1`,`tahun2`,`tahun3`,`total_biaya_laporan_periode`,`company_parent_id`,`code_account`,`lgj_lain_view1`,`lgj_lain_view2`,`lgj_lain_view3`,`total_lain_view0`,`ended_at`,`TRANSACTION_DATE_V`) VALUES 
 (102,'GJL2ETR03210032',11,'2021-03-07 23:49:58','2021-04-13 12:16:13',26325370,24967605.35,35007460.3,2397234.3236111,3,'TUNJANGAN TIDAK TETAP',NULL,NULL,NULL,NULL,'2021-04-13 12:16:13',NULL),
 (103,'GJLDWTR03210032',11,'2021-03-07 23:50:28','2021-04-13 12:16:13',101865846.68,92508609.64,31760667.6,6281531.22,3,'LEMBUR',NULL,NULL,NULL,NULL,'2021-04-13 12:16:13',NULL),
 (104,'GJL80TR03210032',11,'2021-03-07 23:50:49','2021-04-13 12:16:13',NULL,NULL,NULL,0,3,'PREMI',NULL,NULL,NULL,NULL,'2021-04-13 12:16:13',NULL),
 (105,'GJL95TR03210032',11,'2021-03-07 23:51:21','2021-04-13 12:16:13',99109993.83,87033064.52,80162067.24,7397364.5997222,3,'TUNJANGAN ASURANSI',NULL,NULL,NULL,NULL,'2021-04-13 12:16:13',NULL),
 (106,'GJLO0TR03210032',11,'2021-03-07 23:51:48','2021-04-13 12:16:13',47777493,53872154.25,46905348.84,4126527.6691667,3,'TUNJANGAN HARI RAYA',NULL,NULL,NULL,NULL,'2021-04-13 12:16:13',NULL);
INSERT INTO `laporan_gaji_lain` (`id`,`code_rpt_gaji_lain`,`category_bagian`,`created_at`,`updated_at`,`tahun1`,`tahun2`,`tahun3`,`total_biaya_laporan_periode`,`company_parent_id`,`code_account`,`lgj_lain_view1`,`lgj_lain_view2`,`lgj_lain_view3`,`total_lain_view0`,`ended_at`,`TRANSACTION_DATE_V`) VALUES 
 (107,'GJL4bTR03210032',11,'2021-03-07 23:52:00','2021-04-13 12:16:13',NULL,NULL,NULL,0,3,'LAIN',NULL,NULL,NULL,NULL,'2021-04-13 12:16:13',NULL),
 (108,'GJLdsTR03210032',11,'2021-03-07 23:52:29','2021-04-13 12:16:13',2310000,2100000,784000,144277.77777778,3,'BIAYA MAKAN',NULL,NULL,NULL,NULL,'2021-04-13 12:16:13',NULL),
 (109,'GJLhETR03210032',12,'2021-03-07 23:53:08','2021-04-13 12:16:13',193498848,217746750,245419395,18240694.25,3,'GAJI & UPAH',NULL,NULL,NULL,NULL,'2021-04-13 12:16:13',NULL),
 (110,'GJLGDTR03210032',12,'2021-03-07 23:53:37','2021-04-13 12:16:13',66008831,71486143,84027039.25,6153389.2569444,3,'TUNJANGAN TETAP',NULL,NULL,NULL,NULL,'2021-04-13 12:16:13',NULL),
 (111,'GJLlTTR03210032',12,'2021-03-07 23:54:08','2021-04-13 12:16:13',3541168.75,3105863.44,11060676.29,491880.79111111,3,'TUNJANGAN TIDAK TETAP',NULL,NULL,NULL,NULL,'2021-04-13 12:16:13',NULL),
 (112,'GJLIwTR03210032',12,'2021-03-07 23:54:29','2021-04-13 12:16:13',6998891,5039544.9,NULL,334400.99722222,3,'LEMBUR',NULL,NULL,NULL,NULL,'2021-04-13 12:16:13',NULL);
INSERT INTO `laporan_gaji_lain` (`id`,`code_rpt_gaji_lain`,`category_bagian`,`created_at`,`updated_at`,`tahun1`,`tahun2`,`tahun3`,`total_biaya_laporan_periode`,`company_parent_id`,`code_account`,`lgj_lain_view1`,`lgj_lain_view2`,`lgj_lain_view3`,`total_lain_view0`,`ended_at`,`TRANSACTION_DATE_V`) VALUES 
 (113,'GJLXJTR03210032',12,'2021-03-07 23:54:39','2021-04-13 12:16:13',NULL,NULL,NULL,0,3,'PREMI',NULL,NULL,NULL,NULL,'2021-04-13 12:16:13',NULL),
 (114,'GJLffTR03210032',12,'2021-03-07 23:55:14','2021-04-13 12:16:13',39110620.05,31485884.8,35466980.32,2946207.9213889,3,'TUNJANGAN ASURANSI',NULL,NULL,NULL,NULL,'2021-04-13 12:16:13',NULL),
 (115,'GJLu9TR03210032',12,'2021-03-07 23:55:44','2021-04-13 12:16:13',21499872,23226318,28003193.34,2020260.6483333,3,'TUNJANGAN HARI RAYA',NULL,NULL,NULL,NULL,'2021-04-13 12:16:13',NULL),
 (116,'GJL9DTR03210032',12,'2021-03-07 23:56:15','2021-04-13 12:16:13',4304900,10501024,1501500,452984,3,'LAIN',NULL,NULL,NULL,NULL,'2021-04-13 12:16:13',NULL),
 (117,'GJLWyTR03210032',12,'2021-03-07 23:56:41','2021-04-13 12:16:13',NULL,259200,4555000,133727.77777778,3,'BIAYA MAKAN',NULL,NULL,NULL,NULL,'2021-04-13 12:16:13',NULL),
 (118,'GJL9sTR03210032',12,'2021-03-07 23:57:15','2021-04-13 12:16:13',200740407,1096772486,455696513,48700261.277778,3,'PESANGON',NULL,NULL,NULL,NULL,'2021-04-13 12:16:13',NULL);
INSERT INTO `laporan_gaji_lain` (`id`,`code_rpt_gaji_lain`,`category_bagian`,`created_at`,`updated_at`,`tahun1`,`tahun2`,`tahun3`,`total_biaya_laporan_periode`,`company_parent_id`,`code_account`,`lgj_lain_view1`,`lgj_lain_view2`,`lgj_lain_view3`,`total_lain_view0`,`ended_at`,`TRANSACTION_DATE_V`) VALUES 
 (119,'GJLinTR03210032',13,'2021-03-07 23:57:56','2021-04-13 12:16:13',241985960,507422541.9,526894417,35452858.858333,3,'GAJI & UPAH',NULL,NULL,NULL,NULL,'2021-04-13 12:16:13',NULL),
 (120,'GJLHyTR03210032',13,'2021-03-07 23:58:29','2021-04-13 12:16:13',78911633.38,144746088.32,160947225.5,10683470.755556,3,'TUNJANGAN TETAP',NULL,NULL,NULL,NULL,'2021-04-13 12:16:13',NULL),
 (121,'GJLrbTR03210032',13,'2021-03-07 23:59:07','2021-04-13 12:16:13',28037946.76,39202918.36,26101096.84,2592832.2766667,3,'TUNJANGAN TIDAK TETAP',NULL,NULL,NULL,NULL,'2021-04-13 12:16:13',NULL),
 (122,'GJLqmTR03210032',13,'2021-03-07 23:59:47','2021-04-13 12:16:13',37635521,46604592.5,2412825,2407026.0694444,3,'LEMBUR',NULL,NULL,NULL,NULL,'2021-04-13 12:16:13',NULL),
 (123,'GJLALTR03210032',13,'2021-03-07 23:59:56','2021-04-13 12:16:13',NULL,NULL,NULL,0,3,'PREMI',NULL,NULL,NULL,NULL,'2021-04-13 12:16:13',NULL);
INSERT INTO `laporan_gaji_lain` (`id`,`code_rpt_gaji_lain`,`category_bagian`,`created_at`,`updated_at`,`tahun1`,`tahun2`,`tahun3`,`total_biaya_laporan_periode`,`company_parent_id`,`code_account`,`lgj_lain_view1`,`lgj_lain_view2`,`lgj_lain_view3`,`total_lain_view0`,`ended_at`,`TRANSACTION_DATE_V`) VALUES 
 (124,'GJLnoTR03210032',13,'2021-03-08 00:00:26','2021-04-13 12:16:13',46027817.14,65315655.03,76785521.33,5225805.375,3,'TUNJANGAN ASURANSI',NULL,NULL,NULL,NULL,'2021-04-13 12:16:13',NULL),
 (125,'GJLMjTR03210032',13,'2021-03-08 00:00:59','2021-04-13 12:16:13',25083184,45017109.5,49355628.26,3318220.0488889,3,'TUNJANGAN HARI RAYA',NULL,NULL,NULL,NULL,'2021-04-13 12:16:13',NULL),
 (126,'GJLh8TR03210032',13,'2021-03-08 00:01:31','2021-04-13 12:16:13',246700,945200,529700,47822.222222222,3,'UMUM',NULL,NULL,NULL,NULL,'2021-04-13 12:16:13',NULL),
 (127,'GJL5bTR03210032',13,'2021-03-08 00:01:53','2021-04-13 12:16:13',1919000,1470000,NULL,94138.888888889,3,'BIAYA MAKAN',NULL,NULL,NULL,NULL,'2021-04-13 12:16:13',NULL),
 (128,'GJLSFTR03210032',2,'2021-03-16 14:26:18','2021-04-13 12:16:13',123415,512312,23451,18310.5,3,'AKT',NULL,NULL,NULL,NULL,'2021-04-13 12:16:13',NULL);
INSERT INTO `laporan_gaji_lain` (`id`,`code_rpt_gaji_lain`,`category_bagian`,`created_at`,`updated_at`,`tahun1`,`tahun2`,`tahun3`,`total_biaya_laporan_periode`,`company_parent_id`,`code_account`,`lgj_lain_view1`,`lgj_lain_view2`,`lgj_lain_view3`,`total_lain_view0`,`ended_at`,`TRANSACTION_DATE_V`) VALUES 
 (129,'GJLLjTR03210035',3,'2021-03-31 09:29:48','2021-04-13 12:16:13',89,991,98,32.722222222222,3,'ODKAOSKD',NULL,NULL,NULL,NULL,'2021-04-13 12:16:13',NULL),
 (130,'GJLUgTR03210035',3,'2021-03-31 09:31:21','2021-04-13 12:16:13',89,991,98,32.722222222222,3,'ODKAOSKD',NULL,NULL,NULL,NULL,'2021-04-13 12:16:13',NULL),
 (131,'GJLIITR04210036',13,'2021-04-13 10:11:30','2021-04-13 12:16:13',342300,4939200,42939420,1339470,3,'LEMBUR',NULL,NULL,NULL,NULL,'2021-04-13 12:16:13',NULL),
 (132,'GJLiXTR04210036',13,'2021-04-13 15:54:32','2021-04-13 15:54:32',2919391,293199,2939192,170882.83333333,3,'DACO',NULL,NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
 (29,'Mesin Gluing Trosobo','2021-02-24 13:42:00','2021-02-24 14:08:14',NULL,1),
 (30,'TEST REC MESIN','2021-03-31 13:31:07','2021-03-31 13:31:07',NULL,3),
 (31,'JES','2021-03-31 13:32:57','2021-03-31 13:32:57',NULL,3),
 (32,'TEST REC MESIN LMKS','2021-03-31 13:36:00','2021-03-31 13:59:32',NULL,2),
 (33,'HBUH MACHINE','2021-03-31 13:37:06','2021-03-31 13:37:06',NULL,3),
 (34,'JTEST','2021-03-31 13:38:20','2021-03-31 13:38:20',NULL,3),
 (35,'KOPS','2021-03-31 13:39:00','2021-03-31 14:05:34',NULL,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=269 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`listrik`
--

/*!40000 ALTER TABLE `listrik` DISABLE KEYS */;
INSERT INTO `listrik` (`id`,`code_listrik`,`company_parent_id`,`code_mesin`,`shift`,`ampere`,`voltase`,`LWBP_perminggu`,`WBP_perminggu`,`total_biaya_listrik`,`nilai_cost_bulan`,`persen_cost_perbulan`,`ncost_bulan_plus_adm`,`output_perjam`,`persen_output_perjam`,`created_at`,`updated_at`,`category_bagian`,`LWBP_faktorkali`,`WBP_faktorkali`,`total_insteadofLISTRIK`,`nilai_cost_perbulan_insteadofLISTRIK`,`nilai_cost_perbualan_adm_insteadOfListrik`,`persen_cost_perbulan_insteadOfListrik`,`listrikperjam`,`assumptionshift_lwbp1`,`assumption_itval_perminggu`,`assumption_wbp`,`assumptionshift_lwbp2`,`assumptionshift_lwbp3`,`group_mesin`,`begin_at`,`ended_at`,`slugprefixstatus`) VALUES 
 (266,'LTKPrTR042100267',3,99,3,1387,380,53760.12,12649.44,96603773.28,386415093.12,0.077591071834572,398008011.46003,NULL,NULL,'2021-04-09 14:12:37','2021-04-13 16:36:50',2,1112,2911,NULL,NULL,NULL,NULL,0,NULL,6,4,NULL,17,2,'2021-04-09 15:28:56',NULL,NULL),
 (267,'LTKeWTR042100267',3,100,3,1380,380,53488.8,12585.6,123876914.4,495507657.6,0.099496554197697,510373484.30733,NULL,NULL,'2021-04-09 15:31:53','2021-04-13 16:36:50',2,2311,21,NULL,NULL,NULL,NULL,NULL,NULL,6,4,NULL,17,2,'2021-04-09 15:31:53',NULL,NULL),
 (268,'LTKKcTR042100268',3,110,3,1230,4352,546001.92,128471.04,1024556544,4098226176,0.82291237396773,4221177898.7542,NULL,NULL,'2021-04-13 16:34:34','2021-04-13 16:36:50',2,1500,1600,NULL,NULL,NULL,NULL,NULL,NULL,6,4,NULL,17,3,'2021-04-13 16:34:34',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`listrik_total`
--

/*!40000 ALTER TABLE `listrik_total` DISABLE KEYS */;
INSERT INTO `listrik_total` (`id`,`before_total_listrik`,`total_listrik`,`created_at`,`updated_at`,`changed_by`,`status`,`id_listrik`,`before`,`table_column`,`history_latest`,`company_id`,`create_by_with`) VALUES 
 (142,NULL,NULL,'2021-03-31 08:18:23','2021-03-31 08:18:23',NULL,NULL,NULL,0.0169017,'listrik_output.added.event',0.0169017,3,'Admin');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`location_machine`
--

/*!40000 ALTER TABLE `location_machine` DISABLE KEYS */;
INSERT INTO `location_machine` (`id`,`faktor_lwbp`,`faktor_wbp`,`created_at`,`updated_at`,`status_periode`,`begin_at`,`ended_at`,`company_name`) VALUES 
 (1,1200,1235,'2021-04-12 15:07:09','2021-04-12 15:07:09',NULL,'2021-04-12 15:03:00',NULL,'KOP 19'),
 (2,1500,1600,'2021-04-12 15:10:16','2021-04-12 15:10:16',NULL,NULL,NULL,'KOP 23'),
 (3,1250,950,'2021-04-12 15:10:55','2021-04-12 15:10:55',NULL,NULL,NULL,'GEMILANG'),
 (4,1500,4560,'2021-04-12 15:11:16','2021-04-12 15:11:16',NULL,NULL,NULL,'IMPERIAL');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`lwbp_master`
--

/*!40000 ALTER TABLE `lwbp_master` DISABLE KEYS */;
INSERT INTO `lwbp_master` (`id`,`lwbp`,`wbp`,`Intervalmingguan`,`created_at`,`updated_at`,`shift`) VALUES 
 (1,17,4,6,'2021-03-08 08:49:50','2021-03-16 10:00:26',3),
 (2,10,4,6,'2021-03-08 09:20:35','2021-03-16 10:02:13',2),
 (3,7,4,6,'2021-03-08 09:20:54','2021-03-16 10:02:27',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`menu_items`
--

/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` (`id`,`menu_id`,`title`,`url`,`target`,`icon_class`,`color`,`parent_id`,`order`,`created_at`,`updated_at`,`route`,`parameters`) VALUES 
 (3,1,'Users','','_self','voyager-group','#000000',NULL,3,'2021-01-19 08:01:48','2021-03-09 13:53:16','voyager.users.index','null'),
 (4,1,'Roles','','_self','voyager-lock',NULL,NULL,2,'2021-01-19 08:01:48','2021-03-02 04:12:57','voyager.roles.index',NULL),
 (5,1,'Tools','','_self','voyager-tools',NULL,NULL,17,'2021-01-19 08:01:48','2021-04-09 17:27:56',NULL,NULL),
 (7,1,'Database','','_self','voyager-data',NULL,5,2,'2021-01-19 08:01:48','2021-03-07 13:21:51','voyager.database.index',NULL),
 (8,1,'Compass','','_self','voyager-compass',NULL,5,4,'2021-01-19 08:01:48','2021-03-07 13:22:24','voyager.compass.index',NULL),
 (9,1,'Core','','_self','voyager-dot-3','#000000',5,5,'2021-01-19 08:01:48','2021-03-07 13:22:24','voyager.bread.index','null'),
 (10,1,'Settings','','_self','voyager-settings',NULL,5,1,'2021-01-19 08:01:48','2021-03-07 13:21:51','voyager.settings.index',NULL),
 (11,1,'Hooks','','_self','voyager-hook',NULL,5,6,'2021-01-19 08:01:48','2021-03-07 13:22:24','voyager.hooks',NULL);
INSERT INTO `menu_items` (`id`,`menu_id`,`title`,`url`,`target`,`icon_class`,`color`,`parent_id`,`order`,`created_at`,`updated_at`,`route`,`parameters`) VALUES 
 (16,1,'Companies','','_self','voyager-company','#000000',44,1,'2021-01-20 02:11:14','2021-03-07 13:26:22','voyager.company.index','null'),
 (17,1,'Gaji jabatan','/admin/job-level','_self','voyager-tag','#000000',49,1,'2021-01-20 02:18:50','2021-03-22 10:48:03',NULL,''),
 (18,1,'Biaya BAU','','_self','voyager-categories','#000000',NULL,11,'2021-01-20 02:26:16','2021-03-07 13:26:42',NULL,''),
 (19,1,'Penyusutan','','_self','voyager-double-down','#000000',50,1,'2021-01-20 02:38:51','2021-03-07 13:22:45','voyager.penyusutan.index','null'),
 (20,1,'Listrik','','_self','voyager-wand','#000000',42,1,'2021-01-20 03:25:15','2021-01-29 07:30:22','voyager.listrik.index','null'),
 (22,1,'Account MTC','','_self','voyager-book','#000000',43,3,'2021-01-20 03:48:09','2021-03-07 13:23:39','voyager.account-mtc.index','null'),
 (23,1,'Labor','','_self','voyager-documentation','#000000',45,1,'2021-01-20 04:15:08','2021-03-07 13:23:06','voyager.labor.index','null'),
 (25,1,'Gaji lainnya','','_self','voyager-documentation','#000000',39,1,'2021-01-20 04:51:27','2021-03-22 10:47:46','voyager.laporan-gaji-lain.index','null');
INSERT INTO `menu_items` (`id`,`menu_id`,`title`,`url`,`target`,`icon_class`,`color`,`parent_id`,`order`,`created_at`,`updated_at`,`route`,`parameters`) VALUES 
 (29,1,'Bagian penjualan','','_self','voyager-receipt','#000000',46,1,'2021-01-20 06:17:55','2021-03-22 10:47:46','voyager.laporan-bagian-penjualan.index','null'),
 (31,1,'Biaya Administrasi Umum','','_self','voyager-book','#000000',18,1,'2021-01-20 06:39:36','2021-03-22 10:47:46','voyager.laporan-biaya-administrasi-umum.index','null'),
 (34,1,'Mesin','/admin/mesin','_self','voyager-harddrive','#000000',47,1,'2021-01-20 08:29:29','2021-01-29 07:37:10',NULL,''),
 (35,1,'Kategori Bagians','','_self','voyager-categories',NULL,48,3,'2021-01-20 08:33:54','2021-03-31 14:10:54','voyager.kategori-bagian.index',NULL),
 (37,1,'KOP kalkulasi','','_self','voyager-documentation','#000000',NULL,15,'2021-01-22 05:46:36','2021-03-07 13:26:42',NULL,''),
 (39,1,'Gaji Lain','','_self','voyager-double-down','#000000',NULL,9,'2021-01-28 09:31:15','2021-03-07 13:24:30',NULL,''),
 (40,1,'Transaksi MTC','','_self','voyager-file-text','#000000',43,1,'2021-01-29 01:18:08','2021-03-05 06:42:58','voyager.rpt-mtc.index','null');
INSERT INTO `menu_items` (`id`,`menu_id`,`title`,`url`,`target`,`icon_class`,`color`,`parent_id`,`order`,`created_at`,`updated_at`,`route`,`parameters`) VALUES 
 (41,1,'Listrik Outputs','','_self','voyager-dashboard','#000000',42,3,'2021-01-29 06:19:39','2021-03-30 09:13:40','voyager.listrik-output.index','null'),
 (42,1,'Listrik','','_self','voyager-cannon','#000000',NULL,5,'2021-01-29 07:29:59','2021-03-02 09:36:25',NULL,''),
 (43,1,'Maintenance','','_self','voyager-polaroid','#000000',NULL,7,'2021-01-29 07:31:28','2021-03-02 09:38:30',NULL,''),
 (44,1,'Company','','_self','voyager-company','#000000',NULL,16,'2021-01-29 07:34:38','2021-04-09 17:27:55',NULL,''),
 (45,1,'Labor','','_self','voyager-news','#000000',NULL,8,'2021-01-29 07:35:22','2021-03-26 15:46:52',NULL,''),
 (46,1,'Penjualan','','_self','voyager-shop','#000000',NULL,10,'2021-01-29 07:36:12','2021-03-07 13:24:30',NULL,''),
 (47,1,'Mesin','','_self','voyager-harddrive','#000000',NULL,12,'2021-01-29 07:37:01','2021-03-07 13:26:42',NULL,''),
 (48,1,'Kategori','','_self','voyager-params','#000000',NULL,13,'2021-01-29 07:38:22','2021-03-07 13:26:42',NULL,'');
INSERT INTO `menu_items` (`id`,`menu_id`,`title`,`url`,`target`,`icon_class`,`color`,`parent_id`,`order`,`created_at`,`updated_at`,`route`,`parameters`) VALUES 
 (49,1,'Karyawan','','_self','voyager-treasure','#000000',NULL,14,'2021-01-29 07:39:27','2021-03-22 10:47:35',NULL,''),
 (50,1,'Mesin Penyusutan','','_self','voyager-crop','#000000',NULL,6,'2021-01-29 07:40:24','2021-03-02 09:38:30',NULL,''),
 (51,1,'Kalkulasi mesin','','_self','voyager-treasure-open','#000000',37,1,'2021-02-01 08:00:48','2021-03-03 23:21:58','tr.total.kalkulasi','null'),
 (58,1,'voyager::seeders.menu_items.database','','_self','voyager-data',NULL,56,11,'2021-02-23 08:20:07','2021-02-23 08:20:07','voyager.database.index',NULL),
 (59,1,'voyager::seeders.menu_items.compass','','_self','voyager-compass',NULL,56,12,'2021-02-23 08:20:07','2021-02-23 08:20:07','voyager.compass.index',NULL),
 (60,1,'voyager::seeders.menu_items.bread','','_self','voyager-bread',NULL,56,13,'2021-02-23 08:20:07','2021-02-23 08:20:07','voyager.bread.index',NULL),
 (63,1,'Group mesin','','_self','voyager-harddrive','#000000',48,1,'2021-02-24 11:55:45','2021-03-09 10:48:11','voyager.lb8-kategori-mesin.index','null');
INSERT INTO `menu_items` (`id`,`menu_id`,`title`,`url`,`target`,`icon_class`,`color`,`parent_id`,`order`,`created_at`,`updated_at`,`route`,`parameters`) VALUES 
 (64,1,'Dashboard','/admin/dashboard','_self','voyager-github-icon','#000000',NULL,1,'2021-02-25 10:57:56','2021-02-25 12:40:21',NULL,''),
 (75,1,'Document','','_self','voyager-folder','#000000',NULL,4,'2021-02-26 12:51:41','2021-03-10 08:46:24','voyager.media.index','null'),
 (78,1,'Menus','','_self','voyager-helm',NULL,5,3,'2021-03-05 06:42:15','2021-03-07 13:21:51','voyager.menus.index',NULL),
 (80,1,'Listrik Totals','','_self','voyager-forward','#000000',42,4,'2021-03-06 23:51:01','2021-03-30 09:13:40','voyager.listrik-total.index','null'),
 (81,1,'Penyusutan Totals','','_self','voyager-forward','#000000',50,2,'2021-03-07 02:31:44','2021-03-08 11:19:32','voyager.penyusutan-total.index','null'),
 (82,1,'Transaksi Mtc Totals','','_self','voyager-forward','#000000',43,2,'2021-03-07 11:14:28','2021-03-29 10:43:44','voyager.rpt-mtc-total.index','null'),
 (84,1,'Account Mtc Totals','','_self','voyager-forward','#000000',43,4,'2021-03-07 11:58:11','2021-03-08 11:19:54','voyager.account-mtc-total.index','null');
INSERT INTO `menu_items` (`id`,`menu_id`,`title`,`url`,`target`,`icon_class`,`color`,`parent_id`,`order`,`created_at`,`updated_at`,`route`,`parameters`) VALUES 
 (86,1,'Gji Lain Totals','','_self','voyager-forward','#000000',39,2,'2021-03-07 12:35:01','2021-03-22 10:47:46','voyager.gji-lain-total.index','null'),
 (87,1,'Bagian penjualan total','','_self','voyager-forward','#000000',46,2,'2021-03-07 12:51:15','2021-03-22 10:47:46','voyager.b-penjualan-total.index','null'),
 (88,1,'Biaya Administrasi Umum Total','','_self','voyager-forward','#000000',18,2,'2021-03-07 13:15:43','2021-03-22 10:47:46','voyager.bau-total.index','null'),
 (89,1,'Temporary Kalkulasi','','_self','voyager-refresh','#000000',37,2,'2021-03-07 13:42:20','2021-03-19 10:10:00','voyager.all-recalculate.index','null'),
 (90,1,'Asumsi','','_self','voyager-browser','#000000',42,5,'2021-03-08 08:47:59','2021-03-30 09:13:40','voyager.lwbp-master.index','null'),
 (93,1,'Log Labor Total','','_self','voyager-forward','#000000',45,2,'2021-03-29 14:26:13','2021-03-29 14:26:54','voyager.laborttals.index','null'),
 (95,1,'Recalulate history Listrik','','_self','voyager-forward','#000000',42,2,'2021-03-30 08:51:12','2021-03-30 09:15:14','voyager.hlogs-listriks.index','null');
INSERT INTO `menu_items` (`id`,`menu_id`,`title`,`url`,`target`,`icon_class`,`color`,`parent_id`,`order`,`created_at`,`updated_at`,`route`,`parameters`) VALUES 
 (96,1,'History Recalculate Temporaries','','_self','voyager-bar-chart','#000000',77,1,'2021-03-30 13:52:36','2021-03-30 16:37:50','voyager.history-recalculate-temporary.index','null'),
 (97,1,'Mesin Totals','','_self','voyager-forward','#000000',47,3,'2021-03-31 09:51:58','2021-04-13 08:08:34','voyager.mesin-total.index','null'),
 (98,1,'Group Mesin Logs','','_self','voyager-forward',NULL,48,2,'2021-03-31 13:22:01','2021-03-31 14:10:54','voyager.group-mesin-logs.index',NULL),
 (99,1,'Kategoribagian Logs','','_self','voyager-forward','#000000',48,4,'2021-03-31 14:19:03','2021-03-31 14:31:45','voyager.kategoribagian-logs.index','null'),
 (100,1,'Gaji Karyawan Logs','','_self','voyager-forward','#000000',49,2,'2021-03-31 14:40:40','2021-03-31 15:00:17','voyager.gaji-karyawan-logs.index','null'),
 (101,1,'Log history calc','/admin/history-recalculate-temporary','_self','voyager-thumb-tack','#000000',37,3,'2021-04-09 17:26:50','2021-04-09 17:27:55',NULL,''),
 (102,1,'Lokasi mesin','','_self','voyager-location','#000000',47,2,'2021-04-12 15:06:12','2021-04-13 08:08:34','voyager.location-machine.index','null');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`mesin`
--

/*!40000 ALTER TABLE `mesin` DISABLE KEYS */;
INSERT INTO `mesin` (`id`,`code_mesin`,`deskripsi`,`fungsi_mesin`,`ampere`,`voltase`,`created_at`,`updated_at`,`group_mesin_id`,`listrik_perjam_id`,`category_bagian_id`,`company_id`,`asumsi_id`,`on_off`,`display_on_off_machine`,`faktor_kali_lwbp`,`faktor_kali_wbp`,`lokasi_mesin`,`location_mch_id`,`capacity_mch`) VALUES 
 (3,'BMA3','EXPERT FOIL UNIT 19','Hot Stamp',46,400,'2021-01-20 09:09:47','2021-01-20 09:09:47',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (4,'BOB1','BOBST 1 UNIT 19','Plong',46,380,'2021-01-20 09:10:18','2021-01-20 09:10:18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (5,'BOB2','BOBST 2 UNIT 19','Plong',46,380,'2021-01-20 09:10:40','2021-01-20 09:10:40',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (6,'BOB3','BOBST 3 UNIT 19','Plong',42,415,'2021-01-20 09:11:23','2021-01-20 09:11:23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (7,'BOB_GLUE','BOBST GLUEING UNIT 23',NULL,NULL,NULL,'2021-01-20 09:11:43','2021-01-20 09:11:43',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (8,'BUSCH','BUSCH UNIT 19','Plong',46,380,'2021-01-20 09:12:12','2021-01-20 09:12:12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `mesin` (`id`,`code_mesin`,`deskripsi`,`fungsi_mesin`,`ampere`,`voltase`,`created_at`,`updated_at`,`group_mesin_id`,`listrik_perjam_id`,`category_bagian_id`,`company_id`,`asumsi_id`,`on_off`,`display_on_off_machine`,`faktor_kali_lwbp`,`faktor_kali_wbp`,`lokasi_mesin`,`location_mch_id`,`capacity_mch`) VALUES 
 (9,'CD4','CD 4 UNIT 19','Cetak',70,380,'2021-01-20 09:12:42','2021-04-07 10:46:40',5,19,2,3,1,0,NULL,1341,1251,NULL,NULL,NULL),
 (10,'CD6','CD6 UNIT 19','Cetak',160.5,380,'2021-01-20 09:13:10','2021-04-07 10:46:00',2,18,2,3,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
 (11,'CD6-2','CD6-2 UNIT 19','Cetak',81.2,390,'2021-01-20 09:14:00','2021-04-07 10:47:16',2,20,2,3,1,0,NULL,870,331,NULL,NULL,NULL),
 (12,'CIM','CIM UNIT 23','Lem',NULL,NULL,'2021-01-20 09:17:20','2021-01-20 09:17:20',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (13,'GFJ','GFJ UNIT BERBEK',NULL,NULL,NULL,'2021-01-20 09:17:42','2021-01-20 09:17:42',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (14,'GMG','EPSON STYLUS PRO 9900','Printer',1,230,'2021-01-20 09:18:02','2021-01-20 09:18:02',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `mesin` (`id`,`code_mesin`,`deskripsi`,`fungsi_mesin`,`ampere`,`voltase`,`created_at`,`updated_at`,`group_mesin_id`,`listrik_perjam_id`,`category_bagian_id`,`company_id`,`asumsi_id`,`on_off`,`display_on_off_machine`,`faktor_kali_lwbp`,`faktor_kali_wbp`,`lokasi_mesin`,`location_mch_id`,`capacity_mch`) VALUES 
 (15,'GTO1','GTO 1 UNIT BERBEK',NULL,NULL,NULL,'2021-01-20 09:18:15','2021-01-20 09:18:15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (16,'GTO2','GTO 2 UNIT BERBEK',NULL,NULL,NULL,'2021-01-20 09:18:29','2021-01-20 09:18:29',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (17,'GTP1','GTP 1 UNIT BERBEK',NULL,NULL,NULL,'2021-01-20 09:18:42','2021-01-20 09:18:42',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (18,'GTP2','GTP 2 UNIT BERBEK',NULL,NULL,NULL,'2021-01-20 09:18:54','2021-01-20 09:18:54',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (19,'GTP3','GTP 3 UNIT BERBEK',NULL,NULL,NULL,'2021-01-20 09:19:09','2021-01-20 09:19:09',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (20,'GTP5','GTP 5 UNIT BERBEK',NULL,NULL,NULL,'2021-01-20 09:19:23','2021-01-20 09:19:23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `mesin` (`id`,`code_mesin`,`deskripsi`,`fungsi_mesin`,`ampere`,`voltase`,`created_at`,`updated_at`,`group_mesin_id`,`listrik_perjam_id`,`category_bagian_id`,`company_id`,`asumsi_id`,`on_off`,`display_on_off_machine`,`faktor_kali_lwbp`,`faktor_kali_wbp`,`lokasi_mesin`,`location_mch_id`,`capacity_mch`) VALUES 
 (21,'HOCK','HOCK UNIT 19','Coating',43,400,'2021-01-20 09:19:50','2021-04-07 10:51:38',2,19,4,3,1,1,NULL,1231,4220,NULL,NULL,NULL),
 (22,'JINNYEU','JINNYEU UNIT 23','Lem',4.8,380,'2021-01-20 09:20:19','2021-01-20 09:20:19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (23,'KERMA','KERMA UNIT 19','Plong',16,380,'2021-01-20 09:20:53','2021-01-20 09:20:53',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (24,'KOM','KOMORI UNIT TROSOBO',NULL,NULL,NULL,'2021-01-20 09:21:06','2021-01-20 09:21:06',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (25,'POL1','POLAR 1 UNIT 19','Potong',13.1,400,'2021-01-20 09:21:32','2021-01-20 09:21:32',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (26,'POL2','POLAR 2 UNIT 19','Potong',NULL,400,'2021-01-20 09:21:50','2021-01-20 09:21:50',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `mesin` (`id`,`code_mesin`,`deskripsi`,`fungsi_mesin`,`ampere`,`voltase`,`created_at`,`updated_at`,`group_mesin_id`,`listrik_perjam_id`,`category_bagian_id`,`company_id`,`asumsi_id`,`on_off`,`display_on_off_machine`,`faktor_kali_lwbp`,`faktor_kali_wbp`,`lokasi_mesin`,`location_mch_id`,`capacity_mch`) VALUES 
 (27,'POL3','POLAR 3 UNIT 19','Potong',10.3,400,'2021-01-20 09:22:13','2021-01-20 09:22:13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (28,'POL4','POLAR 4 UNIT 23',NULL,NULL,NULL,'2021-01-20 09:22:30','2021-01-20 09:22:30',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (29,'POL5','POLAR 5 UNIT BERBEK',NULL,NULL,NULL,'2021-01-20 09:22:50','2021-01-20 09:22:50',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (30,'POL6','POLAR 6 UNIT BERBEK',NULL,NULL,NULL,'2021-01-20 09:23:07','2021-01-20 09:23:07',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (31,'SBB','SBB UNIT BERBEK',NULL,NULL,NULL,'2021-01-20 09:23:15','2021-01-20 09:23:15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (32,'SBD','SBD UNIT BERBEK',NULL,NULL,NULL,'2021-01-20 09:23:28','2021-01-20 09:23:28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `mesin` (`id`,`code_mesin`,`deskripsi`,`fungsi_mesin`,`ampere`,`voltase`,`created_at`,`updated_at`,`group_mesin_id`,`listrik_perjam_id`,`category_bagian_id`,`company_id`,`asumsi_id`,`on_off`,`display_on_off_machine`,`faktor_kali_lwbp`,`faktor_kali_wbp`,`lokasi_mesin`,`location_mch_id`,`capacity_mch`) VALUES 
 (34,'SOR2','SORS2 UNIT 19',NULL,NULL,NULL,'2021-01-20 09:23:53','2021-01-20 09:23:53',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (35,'SOR3','SORS3 UNIT 19','Cetak',19,400,'2021-01-20 09:24:10','2021-01-20 09:24:10',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (36,'SORM','SORM UNIT BERBEK',NULL,NULL,NULL,'2021-01-20 09:24:25','2021-01-20 09:24:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (37,'VEG1','VEGA 1 UNIT 23','Lem',14.8,380,'2021-01-20 09:24:57','2021-01-20 09:24:57',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (38,'VEG2','VEGA 2 UNIT 23','Lem',15.2,380,'2021-01-20 09:25:25','2021-01-20 09:25:25',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (39,'VEG3','VEGA 3 UNIT 23','Lem',NULL,380,'2021-01-20 09:25:44','2021-01-20 09:25:44',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `mesin` (`id`,`code_mesin`,`deskripsi`,`fungsi_mesin`,`ampere`,`voltase`,`created_at`,`updated_at`,`group_mesin_id`,`listrik_perjam_id`,`category_bagian_id`,`company_id`,`asumsi_id`,`on_off`,`display_on_off_machine`,`faktor_kali_lwbp`,`faktor_kali_wbp`,`lokasi_mesin`,`location_mch_id`,`capacity_mch`) VALUES 
 (40,'CD6-3','CD6-3 UNIT 19','Cetak',NULL,NULL,'2021-01-21 01:06:06','2021-01-21 01:06:06',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (41,'SOR1','SORS1 UNIT 19','cetak',NULL,NULL,'2021-01-21 01:13:01','2021-01-21 01:13:01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (43,'FOCUS SIGHT',NULL,NULL,NULL,NULL,'2021-01-21 01:46:21','2021-01-21 01:46:21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (44,'RITO','RITO',NULL,NULL,NULL,'2021-01-21 01:59:22','2021-01-29 09:47:41',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (45,'Pol 702272',NULL,NULL,NULL,NULL,'2021-01-21 02:00:33','2021-01-21 02:00:33',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (46,'Pol 420200',NULL,NULL,2310,1231,'2021-01-21 02:02:49','2021-04-05 13:47:07',2,27,1,3,2,1,NULL,1244,2141,NULL,NULL,NULL);
INSERT INTO `mesin` (`id`,`code_mesin`,`deskripsi`,`fungsi_mesin`,`ampere`,`voltase`,`created_at`,`updated_at`,`group_mesin_id`,`listrik_perjam_id`,`category_bagian_id`,`company_id`,`asumsi_id`,`on_off`,`display_on_off_machine`,`faktor_kali_lwbp`,`faktor_kali_wbp`,`lokasi_mesin`,`location_mch_id`,`capacity_mch`) VALUES 
 (49,'Indigo',NULL,NULL,NULL,NULL,'2021-01-21 02:16:50','2021-01-21 02:16:50',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (50,'HP Latex',NULL,NULL,NULL,NULL,'2021-01-21 02:18:29','2021-01-21 02:18:29',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (51,'Zund G3',NULL,NULL,NULL,NULL,'2021-01-21 02:19:29','2021-01-21 02:19:29',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (52,'Plotter',NULL,NULL,NULL,NULL,'2021-01-21 02:20:45','2021-01-21 02:20:45',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (53,'Epson',NULL,NULL,NULL,NULL,'2021-01-21 02:22:56','2021-01-21 02:22:56',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (54,'Pertinax',NULL,NULL,NULL,NULL,'2021-01-21 02:24:39','2021-01-21 02:24:39',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `mesin` (`id`,`code_mesin`,`deskripsi`,`fungsi_mesin`,`ampere`,`voltase`,`created_at`,`updated_at`,`group_mesin_id`,`listrik_perjam_id`,`category_bagian_id`,`company_id`,`asumsi_id`,`on_off`,`display_on_off_machine`,`faktor_kali_lwbp`,`faktor_kali_wbp`,`lokasi_mesin`,`location_mch_id`,`capacity_mch`) VALUES 
 (55,'EXPFOIL','EXPFOIL',NULL,NULL,NULL,'2021-01-21 04:15:23','2021-01-29 09:34:45',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (56,'SM 72','SM 72 UNIT BERBEK',NULL,24.3,380,'2021-01-21 06:43:02','2021-04-07 09:23:01',11,33,2,3,2,1,NULL,972,1458,NULL,NULL,NULL),
 (61,'sadasd','asdas',NULL,3423,42123,'2021-03-22 09:45:15','2021-03-22 10:40:01',1,18,1,3,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
 (62,'machine-tr-23','mesin rajang KOP',NULL,239,93,'2021-03-22 10:59:50','2021-03-22 10:59:50',1,18,1,3,1,NULL,NULL,9932.12,3141.23,NULL,NULL,NULL),
 (63,'BMA 1',NULL,NULL,4125,4141,'2021-03-22 15:50:59','2021-04-08 13:57:01',5,18,3,3,1,1,NULL,2311,1319,NULL,NULL,NULL),
 (64,'BMA 2',NULL,NULL,2343,1231,'2021-03-22 15:51:53','2021-04-08 13:57:19',5,19,3,3,1,1,NULL,4511,1211,NULL,NULL,NULL);
INSERT INTO `mesin` (`id`,`code_mesin`,`deskripsi`,`fungsi_mesin`,`ampere`,`voltase`,`created_at`,`updated_at`,`group_mesin_id`,`listrik_perjam_id`,`category_bagian_id`,`company_id`,`asumsi_id`,`on_off`,`display_on_off_machine`,`faktor_kali_lwbp`,`faktor_kali_wbp`,`lokasi_mesin`,`location_mch_id`,`capacity_mch`) VALUES 
 (88,'OPPP','sadasd',NULL,1321,234,'2021-03-25 08:05:53','2021-04-07 08:40:17',2,18,3,3,1,1,NULL,234,342,NULL,NULL,NULL),
 (89,'FGAS','asd',NULL,2311,124,'2021-03-25 08:06:42','2021-04-06 23:35:15',1,18,1,3,1,1,NULL,412,41212,NULL,NULL,NULL),
 (91,'MESIN EDP','COBA EDP',NULL,42,211,'2021-03-25 13:47:43','2021-03-25 13:49:08',6,18,4,3,1,1,NULL,1221,1121,NULL,NULL,NULL),
 (92,'SORT MESIN','HDSFSDF',NULL,1231,2131,'2021-03-25 22:54:25','2021-04-07 02:07:32',1,22,1,3,2,1,NULL,2121,1231,NULL,NULL,NULL),
 (93,'MN REC 1','DK',NULL,12310,10100,'2021-03-31 11:54:40','2021-03-31 11:54:40',1,18,4,3,1,1,NULL,9320,2990,NULL,NULL,NULL),
 (99,'CD 6','Test CD 6',NULL,1387,380,'2021-04-07 10:29:24','2021-04-07 11:13:44',2,22,2,3,1,1,NULL,3329,2911,NULL,NULL,NULL),
 (100,'CD 4','Test CD 4',NULL,1380,380,'2021-04-07 10:31:51','2021-04-07 10:33:00',2,33,2,3,1,1,NULL,2311,1231,NULL,NULL,NULL);
INSERT INTO `mesin` (`id`,`code_mesin`,`deskripsi`,`fungsi_mesin`,`ampere`,`voltase`,`created_at`,`updated_at`,`group_mesin_id`,`listrik_perjam_id`,`category_bagian_id`,`company_id`,`asumsi_id`,`on_off`,`display_on_off_machine`,`faktor_kali_lwbp`,`faktor_kali_wbp`,`lokasi_mesin`,`location_mch_id`,`capacity_mch`) VALUES 
 (102,'GL-100','TEST',NULL,1000,1200,'2021-04-12 13:23:23','2021-04-12 13:23:23',1,1200,2,3,1,1,NULL,1200,801,NULL,NULL,NULL),
 (104,'GLKL',NULL,NULL,380,1200,'2021-04-12 15:55:38','2021-04-12 15:55:38',1,1230,1,1,1,1,NULL,1500,1600,NULL,NULL,NULL),
 (105,NULL,'TEST',NULL,2319,129,'2021-04-12 16:00:27','2021-04-12 16:00:27',1,13,4,3,1,1,NULL,1500,1600,NULL,NULL,NULL),
 (106,'HIOU','test loop',NULL,3100,210,'2021-04-12 16:10:06','2021-04-12 16:10:06',1,2340,2,3,1,1,NULL,1500,1600,NULL,NULL,NULL),
 (107,'BG-210','T-G',NULL,312,131,'2021-04-12 16:13:22','2021-04-12 16:37:32',1,18,4,3,1,1,NULL,1500,1600,NULL,2,NULL),
 (108,'GHJ','TSD',NULL,3421,121,'2021-04-12 16:49:09','2021-04-12 16:49:09',1,4533,2,3,1,1,NULL,1200,1235,NULL,1,NULL),
 (109,'LMN-200','sdasd',NULL,2131,1231,'2021-04-12 16:54:21','2021-04-12 16:56:37',1,51,1,3,1,1,NULL,1500,4560,NULL,4,NULL);
INSERT INTO `mesin` (`id`,`code_mesin`,`deskripsi`,`fungsi_mesin`,`ampere`,`voltase`,`created_at`,`updated_at`,`group_mesin_id`,`listrik_perjam_id`,`category_bagian_id`,`company_id`,`asumsi_id`,`on_off`,`display_on_off_machine`,`faktor_kali_lwbp`,`faktor_kali_wbp`,`lokasi_mesin`,`location_mch_id`,`capacity_mch`) VALUES 
 (110,'RDL-120','Test RDL-120',NULL,1230,310,'2021-04-13 08:38:37','2021-04-13 08:38:37',3,NULL,2,3,1,1,NULL,1500,1600,NULL,2,2130);
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
) ENGINE=InnoDB AUTO_INCREMENT=270 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`mesin_total`
--

/*!40000 ALTER TABLE `mesin_total` DISABLE KEYS */;
INSERT INTO `mesin_total` (`id`,`table_column`,`before`,`history_latest`,`changed_by`,`created_by`,`created_at`,`updated_at`,`company_id`,`group_mesin`,`code_mesin`,`history_group_mesin`,`before_group_mesin`) VALUES 
 (112,'mesin.added.event','','first event',NULL,'Admin','2021-03-31 11:54:40','2021-03-31 11:54:40',3,1,NULL,0,0),
 (113,'mesin.added.event','','first event',NULL,'Admin','2021-03-31 11:57:05','2021-03-31 11:57:05',3,1,94,0,0),
 (114,'mesin.added.event','','first event',NULL,'Admin','2021-04-01 10:54:17','2021-04-01 10:54:17',3,2,95,0,0),
 (115,'mesin.faktor_kali_lwbp','12','6666','Admin',NULL,'2021-04-01 10:57:56','2021-04-01 10:57:56',3,2,95,6666,12),
 (116,'mesin.faktor_kali_wbp','21','7777','Admin',NULL,'2021-04-01 10:57:56','2021-04-01 10:57:56',3,2,95,7777,21),
 (117,'mesin.on_off','1','on','Admin',NULL,'2021-04-01 10:57:56','2021-04-01 10:57:56',3,2,95,0,1),
 (118,'mesin.group_mesin',NULL,'2','Admin',NULL,'2021-04-01 10:57:56','2021-04-01 10:57:56',3,2,95,2,NULL),
 (119,'mesin.category_bagian',NULL,'2','Admin',NULL,'2021-04-01 10:57:56','2021-04-01 10:57:56',3,2,95,2,NULL),
 (120,'mesin.on_off','1',NULL,'Admin',NULL,'2021-04-01 11:26:42','2021-04-01 11:26:42',3,2,95,NULL,1);
INSERT INTO `mesin_total` (`id`,`table_column`,`before`,`history_latest`,`changed_by`,`created_by`,`created_at`,`updated_at`,`company_id`,`group_mesin`,`code_mesin`,`history_group_mesin`,`before_group_mesin`) VALUES 
 (121,'mesin.group_mesin',NULL,'2','Admin',NULL,'2021-04-01 11:26:42','2021-04-01 11:26:42',3,2,95,2,NULL),
 (122,'mesin.category_bagian',NULL,'2','Admin',NULL,'2021-04-01 11:26:42','2021-04-01 11:26:42',3,2,95,2,NULL),
 (123,'mesin.group_mesin',NULL,'2','Admin',NULL,'2021-04-01 11:45:56','2021-04-01 11:45:56',3,2,95,2,NULL),
 (124,'mesin.category_bagian',NULL,'2','Admin',NULL,'2021-04-01 11:45:56','2021-04-01 11:45:56',3,2,95,2,NULL),
 (125,'mesin.faktor_kali_lwbp',NULL,'6666','Admin',NULL,'2021-04-01 13:18:35','2021-04-01 13:18:35',3,2,58,6666,NULL),
 (126,'mesin.faktor_kali_wbp',NULL,'7777','Admin',NULL,'2021-04-01 13:18:35','2021-04-01 13:18:35',3,2,58,7777,NULL),
 (127,'mesin.on_off','1','on','Admin',NULL,'2021-04-01 13:18:35','2021-04-01 13:18:35',3,2,58,0,1),
 (128,'mesin.group_mesin',NULL,'2','Admin',NULL,'2021-04-01 13:18:35','2021-04-01 13:18:35',3,2,58,2,NULL),
 (129,'mesin.category_bagian',NULL,'2','Admin',NULL,'2021-04-01 13:18:35','2021-04-01 13:18:35',3,2,58,2,NULL);
INSERT INTO `mesin_total` (`id`,`table_column`,`before`,`history_latest`,`changed_by`,`created_by`,`created_at`,`updated_at`,`company_id`,`group_mesin`,`code_mesin`,`history_group_mesin`,`before_group_mesin`) VALUES 
 (130,'mesin.on_off',NULL,'on','Admin',NULL,'2021-04-01 21:03:49','2021-04-01 21:03:49',NULL,NULL,48,0,NULL),
 (131,'mesin.ampere',NULL,'1231','Admin',NULL,'2021-04-05 08:23:29','2021-04-05 08:23:29',3,5,48,1231,NULL),
 (132,'mesin.faktor_kali_lwbp',NULL,'123','Admin',NULL,'2021-04-05 08:23:29','2021-04-05 08:23:29',3,5,48,123,NULL),
 (133,'mesin.faktor_kali_wbp',NULL,'134','Admin',NULL,'2021-04-05 08:23:29','2021-04-05 08:23:29',3,5,48,134,NULL),
 (134,'mesin.voltase',NULL,'3211','Admin',NULL,'2021-04-05 08:23:29','2021-04-05 08:23:29',3,5,48,3211,NULL),
 (135,'mesin.deskripsi',NULL,'GHS','Admin',NULL,'2021-04-05 08:23:29','2021-04-05 08:23:29',3,5,48,0,NULL),
 (136,'mesin.asumsi_id',NULL,'2','Admin',NULL,'2021-04-05 08:23:29','2021-04-05 08:23:29',3,5,48,2,NULL),
 (137,'mesin.on_off','1','on','Admin',NULL,'2021-04-05 08:23:29','2021-04-05 08:23:29',3,5,48,0,1),
 (138,'mesin.group_mesin',NULL,'5','Admin',NULL,'2021-04-05 08:23:29','2021-04-05 08:23:29',3,5,48,5,NULL);
INSERT INTO `mesin_total` (`id`,`table_column`,`before`,`history_latest`,`changed_by`,`created_by`,`created_at`,`updated_at`,`company_id`,`group_mesin`,`code_mesin`,`history_group_mesin`,`before_group_mesin`) VALUES 
 (139,'mesin.company_id',NULL,'3','Admin',NULL,'2021-04-05 08:23:29','2021-04-05 08:23:29',3,5,48,3,NULL),
 (140,'mesin.category_bagian',NULL,'1','Admin',NULL,'2021-04-05 08:23:29','2021-04-05 08:23:29',3,5,48,1,NULL),
 (141,'mesin.listrik_perjam_id',NULL,'20','Admin',NULL,'2021-04-05 08:23:29','2021-04-05 08:23:29',3,5,48,20,NULL),
 (142,'mesin.ampere',NULL,'2313','Admin',NULL,'2021-04-05 09:01:25','2021-04-05 09:01:25',NULL,4,47,2313,NULL),
 (143,'mesin.faktor_kali_lwbp',NULL,'423','Admin',NULL,'2021-04-05 09:01:25','2021-04-05 09:01:25',NULL,4,47,423,NULL),
 (144,'mesin.faktor_kali_wbp',NULL,'21','Admin',NULL,'2021-04-05 09:01:25','2021-04-05 09:01:25',NULL,4,47,21,NULL),
 (145,'mesin.voltase',NULL,'231','Admin',NULL,'2021-04-05 09:01:25','2021-04-05 09:01:25',NULL,4,47,231,NULL),
 (146,'mesin.asumsi_id',NULL,'2','Admin',NULL,'2021-04-05 09:01:25','2021-04-05 09:01:25',NULL,4,47,2,NULL);
INSERT INTO `mesin_total` (`id`,`table_column`,`before`,`history_latest`,`changed_by`,`created_by`,`created_at`,`updated_at`,`company_id`,`group_mesin`,`code_mesin`,`history_group_mesin`,`before_group_mesin`) VALUES 
 (147,'mesin.on_off',NULL,'on','Admin',NULL,'2021-04-05 09:01:25','2021-04-05 09:01:25',NULL,4,47,0,NULL),
 (148,'mesin.group_mesin',NULL,'4','Admin',NULL,'2021-04-05 09:01:25','2021-04-05 09:01:25',NULL,4,47,4,NULL),
 (149,'mesin.category_bagian',NULL,'1','Admin',NULL,'2021-04-05 09:01:25','2021-04-05 09:01:25',NULL,4,47,1,NULL),
 (150,'mesin.listrik_perjam_id',NULL,'18','Admin',NULL,'2021-04-05 09:01:25','2021-04-05 09:01:25',NULL,4,47,18,NULL),
 (151,'mesin.on_off','1','on','Admin',NULL,'2021-04-05 09:01:50','2021-04-05 09:01:50',3,4,47,0,1),
 (152,'mesin.group_mesin',NULL,'4','Admin',NULL,'2021-04-05 09:01:50','2021-04-05 09:01:50',3,4,47,4,NULL),
 (153,'mesin.company_id',NULL,'3','Admin',NULL,'2021-04-05 09:01:50','2021-04-05 09:01:50',3,4,47,3,NULL),
 (154,'mesin.category_bagian',NULL,'1','Admin',NULL,'2021-04-05 09:01:50','2021-04-05 09:01:50',3,4,47,1,NULL),
 (155,'mesin.added.event','','first event',NULL,'Admin','2021-04-05 09:10:29','2021-04-05 09:10:29',3,1,96,0,0);
INSERT INTO `mesin_total` (`id`,`table_column`,`before`,`history_latest`,`changed_by`,`created_by`,`created_at`,`updated_at`,`company_id`,`group_mesin`,`code_mesin`,`history_group_mesin`,`before_group_mesin`) VALUES 
 (156,'mesin.added.event','','first event',NULL,'Admin','2021-04-05 09:19:41','2021-04-05 09:19:41',3,1,97,0,0),
 (157,'mesin.added.event','','first event',NULL,'Admin','2021-04-05 09:28:45','2021-04-05 09:28:45',3,4,98,0,0),
 (158,'mesin.on_off',NULL,'on','Admin',NULL,'2021-04-05 13:25:38','2021-04-05 13:25:38',NULL,NULL,46,0,NULL),
 (159,'mesin.ampere',NULL,'2310','Admin',NULL,'2021-04-05 13:26:33','2021-04-05 13:26:33',3,5,46,2310,NULL),
 (160,'mesin.faktor_kali_lwbp',NULL,'1244','Admin',NULL,'2021-04-05 13:26:33','2021-04-05 13:26:33',3,5,46,1244,NULL),
 (161,'mesin.faktor_kali_wbp',NULL,'2141','Admin',NULL,'2021-04-05 13:26:33','2021-04-05 13:26:33',3,5,46,2141,NULL),
 (162,'mesin.voltase',NULL,'1231','Admin',NULL,'2021-04-05 13:26:33','2021-04-05 13:26:33',3,5,46,1231,NULL),
 (163,'mesin.on_off','1','on','Admin',NULL,'2021-04-05 13:26:33','2021-04-05 13:26:33',3,5,46,0,1);
INSERT INTO `mesin_total` (`id`,`table_column`,`before`,`history_latest`,`changed_by`,`created_by`,`created_at`,`updated_at`,`company_id`,`group_mesin`,`code_mesin`,`history_group_mesin`,`before_group_mesin`) VALUES 
 (164,'mesin.group_mesin',NULL,'5','Admin',NULL,'2021-04-05 13:26:33','2021-04-05 13:26:33',3,5,46,5,NULL),
 (165,'mesin.company_id',NULL,'3','Admin',NULL,'2021-04-05 13:26:33','2021-04-05 13:26:33',3,5,46,3,NULL),
 (166,'mesin.category_bagian',NULL,'1','Admin',NULL,'2021-04-05 13:26:33','2021-04-05 13:26:33',3,5,46,1,NULL),
 (167,'mesin.listrik_perjam_id',NULL,'27','Admin',NULL,'2021-04-05 13:26:33','2021-04-05 13:26:33',3,5,46,27,NULL),
 (168,'mesin.asumsi_id',NULL,'2','Admin',NULL,'2021-04-05 13:29:25','2021-04-05 13:29:25',3,5,46,2,NULL),
 (169,'mesin.on_off','1','on','Admin',NULL,'2021-04-05 13:29:25','2021-04-05 13:29:25',3,5,46,0,1),
 (170,'mesin.group_mesin',NULL,'5','Admin',NULL,'2021-04-05 13:29:25','2021-04-05 13:29:25',3,5,46,5,NULL),
 (171,'mesin.category_bagian',NULL,'1','Admin',NULL,'2021-04-05 13:29:25','2021-04-05 13:29:25',3,5,46,1,NULL),
 (172,'mesin.on_off','1','on','Admin',NULL,'2021-04-05 13:47:07','2021-04-05 13:47:07',3,2,46,0,1);
INSERT INTO `mesin_total` (`id`,`table_column`,`before`,`history_latest`,`changed_by`,`created_by`,`created_at`,`updated_at`,`company_id`,`group_mesin`,`code_mesin`,`history_group_mesin`,`before_group_mesin`) VALUES 
 (173,'mesin.group_mesin',NULL,'2','Admin',NULL,'2021-04-05 13:47:07','2021-04-05 13:47:07',3,2,46,2,NULL),
 (174,'mesin.category_bagian',NULL,'1','Admin',NULL,'2021-04-05 13:47:07','2021-04-05 13:47:07',3,2,46,1,NULL),
 (175,'mesin.on_off',NULL,'on','Admin',NULL,'2021-04-05 13:54:14','2021-04-05 13:54:14',3,5,63,0,NULL),
 (176,'mesin.group_mesin',NULL,'5','Admin',NULL,'2021-04-05 13:54:14','2021-04-05 13:54:14',3,5,63,5,NULL),
 (177,'mesin.category_bagian',NULL,'3','Admin',NULL,'2021-04-05 13:54:14','2021-04-05 13:54:14',3,5,63,3,NULL),
 (178,'mesin.faktor_kali_lwbp',NULL,'1231','Admin',NULL,'2021-04-05 13:56:03','2021-04-05 13:56:03',NULL,2,21,1231,NULL),
 (179,'mesin.faktor_kali_wbp',NULL,'4220','Admin',NULL,'2021-04-05 13:56:03','2021-04-05 13:56:03',NULL,2,21,4220,NULL),
 (180,'mesin.asumsi_id',NULL,'1','Admin',NULL,'2021-04-05 13:56:03','2021-04-05 13:56:03',NULL,2,21,1,NULL);
INSERT INTO `mesin_total` (`id`,`table_column`,`before`,`history_latest`,`changed_by`,`created_by`,`created_at`,`updated_at`,`company_id`,`group_mesin`,`code_mesin`,`history_group_mesin`,`before_group_mesin`) VALUES 
 (181,'mesin.on_off',NULL,'on','Admin',NULL,'2021-04-05 13:56:03','2021-04-05 13:56:03',NULL,2,21,0,NULL),
 (182,'mesin.group_mesin',NULL,'2','Admin',NULL,'2021-04-05 13:56:03','2021-04-05 13:56:03',NULL,2,21,2,NULL),
 (183,'mesin.category_bagian',NULL,'4','Admin',NULL,'2021-04-05 13:56:03','2021-04-05 13:56:03',NULL,2,21,4,NULL),
 (184,'mesin.listrik_perjam_id',NULL,'19','Admin',NULL,'2021-04-05 13:56:03','2021-04-05 13:56:03',NULL,2,21,19,NULL),
 (185,'mesin.on_off','1','on','Admin',NULL,'2021-04-05 15:57:35','2021-04-05 15:57:35',3,6,91,0,1),
 (186,'mesin.group_mesin',NULL,'6','Admin',NULL,'2021-04-05 15:57:35','2021-04-05 15:57:35',3,6,91,6,NULL),
 (187,'mesin.category_bagian',NULL,'4','Admin',NULL,'2021-04-05 15:57:35','2021-04-05 15:57:35',3,6,91,4,NULL),
 (188,'mesin.faktor_kali_lwbp',NULL,'870','Admin',NULL,'2021-04-06 22:38:46','2021-04-06 22:38:46',3,2,11,870,NULL),
 (189,'mesin.faktor_kali_wbp',NULL,'331','Admin',NULL,'2021-04-06 22:38:46','2021-04-06 22:38:46',3,2,11,331,NULL);
INSERT INTO `mesin_total` (`id`,`table_column`,`before`,`history_latest`,`changed_by`,`created_by`,`created_at`,`updated_at`,`company_id`,`group_mesin`,`code_mesin`,`history_group_mesin`,`before_group_mesin`) VALUES 
 (190,'mesin.asumsi_id',NULL,'1','Admin',NULL,'2021-04-06 22:38:46','2021-04-06 22:38:46',3,2,11,1,NULL),
 (191,'mesin.on_off',NULL,'on','Admin',NULL,'2021-04-06 22:38:46','2021-04-06 22:38:46',3,2,11,0,NULL),
 (192,'mesin.group_mesin',NULL,'2','Admin',NULL,'2021-04-06 22:38:46','2021-04-06 22:38:46',3,2,11,2,NULL),
 (193,'mesin.company_id',NULL,'3','Admin',NULL,'2021-04-06 22:38:46','2021-04-06 22:38:46',3,2,11,3,NULL),
 (194,'mesin.category_bagian',NULL,'2','Admin',NULL,'2021-04-06 22:38:46','2021-04-06 22:38:46',3,2,11,2,NULL),
 (195,'mesin.listrik_perjam_id',NULL,'20','Admin',NULL,'2021-04-06 22:38:46','2021-04-06 22:38:46',3,2,11,20,NULL),
 (196,'mesin.ampere',NULL,'2311','Admin',NULL,'2021-04-06 23:35:15','2021-04-06 23:35:15',3,1,89,2311,NULL),
 (197,'mesin.on_off','1','on','Admin',NULL,'2021-04-06 23:35:15','2021-04-06 23:35:15',3,1,89,0,1),
 (198,'mesin.group_mesin',NULL,'1','Admin',NULL,'2021-04-06 23:35:15','2021-04-06 23:35:15',3,1,89,1,NULL);
INSERT INTO `mesin_total` (`id`,`table_column`,`before`,`history_latest`,`changed_by`,`created_by`,`created_at`,`updated_at`,`company_id`,`group_mesin`,`code_mesin`,`history_group_mesin`,`before_group_mesin`) VALUES 
 (199,'mesin.category_bagian',NULL,'1','Admin',NULL,'2021-04-06 23:35:15','2021-04-06 23:35:15',3,1,89,1,NULL),
 (200,'mesin.on_off','1','on','Admin',NULL,'2021-04-07 02:07:32','2021-04-07 02:07:32',3,1,92,0,1),
 (201,'mesin.group_mesin',NULL,'1','Admin',NULL,'2021-04-07 02:07:32','2021-04-07 02:07:32',3,1,92,1,NULL),
 (202,'mesin.category_bagian',NULL,'1','Admin',NULL,'2021-04-07 02:07:32','2021-04-07 02:07:32',3,1,92,1,NULL),
 (203,'mesin.listrik_perjam_id',NULL,'22','Admin',NULL,'2021-04-07 02:07:32','2021-04-07 02:07:32',3,1,92,22,NULL),
 (204,'mesin.ampere',NULL,'1321','Admin',NULL,'2021-04-07 08:40:17','2021-04-07 08:40:17',3,2,88,1321,NULL),
 (205,'mesin.on_off','1','on','Admin',NULL,'2021-04-07 08:40:17','2021-04-07 08:40:17',3,2,88,0,1),
 (206,'mesin.group_mesin',NULL,'2','Admin',NULL,'2021-04-07 08:40:17','2021-04-07 08:40:17',3,2,88,2,NULL),
 (207,'mesin.category_bagian',NULL,'3','Admin',NULL,'2021-04-07 08:40:17','2021-04-07 08:40:17',3,2,88,3,NULL);
INSERT INTO `mesin_total` (`id`,`table_column`,`before`,`history_latest`,`changed_by`,`created_by`,`created_at`,`updated_at`,`company_id`,`group_mesin`,`code_mesin`,`history_group_mesin`,`before_group_mesin`) VALUES 
 (208,'mesin.asumsi_id','3','2','Admin',NULL,'2021-04-07 09:23:01','2021-04-07 09:23:01',3,11,56,2,3),
 (209,'mesin.on_off','1','on','Admin',NULL,'2021-04-07 09:23:01','2021-04-07 09:23:01',3,11,56,0,1),
 (210,'mesin.group_mesin',NULL,'11','Admin',NULL,'2021-04-07 09:23:01','2021-04-07 09:23:01',3,11,56,11,NULL),
 (211,'mesin.category_bagian',NULL,'2','Admin',NULL,'2021-04-07 09:23:01','2021-04-07 09:23:01',3,11,56,2,NULL),
 (212,'mesin.added.event','','first event',NULL,'Admin','2021-04-07 10:29:24','2021-04-07 10:29:24',3,2,99,0,0),
 (213,'mesin.on_off','1','on','Admin',NULL,'2021-04-07 10:29:55','2021-04-07 10:29:55',3,2,99,0,1),
 (214,'mesin.group_mesin',NULL,'2','Admin',NULL,'2021-04-07 10:29:55','2021-04-07 10:29:55',3,2,99,2,NULL),
 (215,'mesin.category_bagian',NULL,'1','Admin',NULL,'2021-04-07 10:29:55','2021-04-07 10:29:55',3,2,99,1,NULL),
 (216,'mesin.listrik_perjam_id','5467','22','Admin',NULL,'2021-04-07 10:29:55','2021-04-07 10:29:55',3,2,99,22,5467);
INSERT INTO `mesin_total` (`id`,`table_column`,`before`,`history_latest`,`changed_by`,`created_by`,`created_at`,`updated_at`,`company_id`,`group_mesin`,`code_mesin`,`history_group_mesin`,`before_group_mesin`) VALUES 
 (217,'mesin.added.event','','first event',NULL,'Admin','2021-04-07 10:31:51','2021-04-07 10:31:51',3,2,100,0,0),
 (218,'mesin.on_off','1','on','Admin',NULL,'2021-04-07 10:33:00','2021-04-07 10:33:00',3,2,100,0,1),
 (219,'mesin.group_mesin',NULL,'2','Admin',NULL,'2021-04-07 10:33:00','2021-04-07 10:33:00',3,2,100,2,NULL),
 (220,'mesin.category_bagian',NULL,'2','Admin',NULL,'2021-04-07 10:33:00','2021-04-07 10:33:00',3,2,100,2,NULL),
 (221,'mesin.listrik_perjam_id','3400','33','Admin',NULL,'2021-04-07 10:33:00','2021-04-07 10:33:00',3,2,100,33,3400),
 (222,'mesin.on_off','1',NULL,'Admin',NULL,'2021-04-07 10:46:00','2021-04-07 10:46:00',3,2,10,NULL,1),
 (223,'mesin.group_mesin',NULL,'2','Admin',NULL,'2021-04-07 10:46:00','2021-04-07 10:46:00',3,2,10,2,NULL),
 (224,'mesin.category_bagian',NULL,'2','Admin',NULL,'2021-04-07 10:46:00','2021-04-07 10:46:00',3,2,10,2,NULL),
 (225,'mesin.on_off','1',NULL,'Admin',NULL,'2021-04-07 10:46:40','2021-04-07 10:46:40',3,5,9,NULL,1);
INSERT INTO `mesin_total` (`id`,`table_column`,`before`,`history_latest`,`changed_by`,`created_by`,`created_at`,`updated_at`,`company_id`,`group_mesin`,`code_mesin`,`history_group_mesin`,`before_group_mesin`) VALUES 
 (226,'mesin.group_mesin',NULL,'5','Admin',NULL,'2021-04-07 10:46:40','2021-04-07 10:46:40',3,5,9,5,NULL),
 (227,'mesin.category_bagian',NULL,'2','Admin',NULL,'2021-04-07 10:46:40','2021-04-07 10:46:40',3,5,9,2,NULL),
 (228,'mesin.on_off','1',NULL,'Admin',NULL,'2021-04-07 10:47:16','2021-04-07 10:47:16',3,2,11,NULL,1),
 (229,'mesin.group_mesin',NULL,'2','Admin',NULL,'2021-04-07 10:47:16','2021-04-07 10:47:16',3,2,11,2,NULL),
 (230,'mesin.category_bagian',NULL,'2','Admin',NULL,'2021-04-07 10:47:16','2021-04-07 10:47:16',3,2,11,2,NULL),
 (231,'mesin.on_off','1','on','Admin',NULL,'2021-04-07 10:50:25','2021-04-07 10:50:25',3,2,100,0,1),
 (232,'mesin.group_mesin',NULL,'2','Admin',NULL,'2021-04-07 10:50:25','2021-04-07 10:50:25',3,2,100,2,NULL),
 (233,'mesin.category_bagian',NULL,'2','Admin',NULL,'2021-04-07 10:50:25','2021-04-07 10:50:25',3,2,100,2,NULL),
 (234,'mesin.on_off','1','on','Admin',NULL,'2021-04-07 10:51:38','2021-04-07 10:51:38',3,2,21,0,1);
INSERT INTO `mesin_total` (`id`,`table_column`,`before`,`history_latest`,`changed_by`,`created_by`,`created_at`,`updated_at`,`company_id`,`group_mesin`,`code_mesin`,`history_group_mesin`,`before_group_mesin`) VALUES 
 (235,'mesin.group_mesin',NULL,'2','Admin',NULL,'2021-04-07 10:51:38','2021-04-07 10:51:38',3,2,21,2,NULL),
 (236,'mesin.company_id',NULL,'3','Admin',NULL,'2021-04-07 10:51:38','2021-04-07 10:51:38',3,2,21,3,NULL),
 (237,'mesin.category_bagian',NULL,'4','Admin',NULL,'2021-04-07 10:51:38','2021-04-07 10:51:38',3,2,21,4,NULL),
 (238,'mesin.on_off','1','on','Admin',NULL,'2021-04-07 11:13:44','2021-04-07 11:13:44',3,2,99,0,1),
 (239,'mesin.group_mesin',NULL,'2','Admin',NULL,'2021-04-07 11:13:44','2021-04-07 11:13:44',3,2,99,2,NULL),
 (240,'mesin.category_bagian',NULL,'2','Admin',NULL,'2021-04-07 11:13:44','2021-04-07 11:13:44',3,2,99,2,NULL),
 (241,'mesin.code_mesin','BMA1','BMA 1','Admin',NULL,'2021-04-08 13:57:01','2021-04-08 13:57:01',3,5,63,0,0),
 (242,'mesin.on_off','1','on','Admin',NULL,'2021-04-08 13:57:01','2021-04-08 13:57:01',3,5,63,0,1),
 (243,'mesin.group_mesin',NULL,'5','Admin',NULL,'2021-04-08 13:57:01','2021-04-08 13:57:01',3,5,63,5,NULL);
INSERT INTO `mesin_total` (`id`,`table_column`,`before`,`history_latest`,`changed_by`,`created_by`,`created_at`,`updated_at`,`company_id`,`group_mesin`,`code_mesin`,`history_group_mesin`,`before_group_mesin`) VALUES 
 (244,'mesin.category_bagian',NULL,'3','Admin',NULL,'2021-04-08 13:57:01','2021-04-08 13:57:01',3,5,63,3,NULL),
 (245,'mesin.code_mesin','BMA2','BMA 2','Admin',NULL,'2021-04-08 13:57:19','2021-04-08 13:57:19',3,5,64,0,0),
 (246,'mesin.on_off','1','on','Admin',NULL,'2021-04-08 13:57:19','2021-04-08 13:57:19',3,5,64,0,1),
 (247,'mesin.group_mesin',NULL,'5','Admin',NULL,'2021-04-08 13:57:19','2021-04-08 13:57:19',3,5,64,5,NULL),
 (248,'mesin.category_bagian',NULL,'3','Admin',NULL,'2021-04-08 13:57:19','2021-04-08 13:57:19',3,5,64,3,NULL),
 (249,'mesin.added.event','','first event',NULL,'Admin','2021-04-09 10:41:17','2021-04-09 10:41:17',3,2,101,0,0),
 (250,'mesin.on_off','1','on','Admin',NULL,'2021-04-09 12:59:38','2021-04-09 12:59:38',3,2,101,0,1),
 (251,'mesin.group_mesin',NULL,'2','Admin',NULL,'2021-04-09 12:59:38','2021-04-09 12:59:38',3,2,101,2,NULL),
 (252,'mesin.category_bagian',NULL,'2','Admin',NULL,'2021-04-09 12:59:38','2021-04-09 12:59:38',3,2,101,2,NULL);
INSERT INTO `mesin_total` (`id`,`table_column`,`before`,`history_latest`,`changed_by`,`created_by`,`created_at`,`updated_at`,`company_id`,`group_mesin`,`code_mesin`,`history_group_mesin`,`before_group_mesin`) VALUES 
 (253,'mesin.listrik_perjam_id','3000','22','Admin',NULL,'2021-04-09 12:59:38','2021-04-09 12:59:38',3,2,101,22,3000),
 (254,'mesin.added.event','','first event',NULL,'Admin','2021-04-12 13:23:23','2021-04-12 13:23:23',3,1,102,0,0),
 (255,'mesin.added.event','','first event',NULL,'Admin','2021-04-12 15:55:38','2021-04-12 15:55:38',1,1,104,0,0),
 (256,'mesin.added.event','','first event',NULL,'Admin','2021-04-12 16:00:27','2021-04-12 16:00:27',3,1,105,0,0),
 (257,'mesin.added.event','','first event',NULL,'Admin','2021-04-12 16:10:06','2021-04-12 16:10:06',3,1,106,0,0),
 (258,'mesin.added.event','','first event',NULL,'Admin','2021-04-12 16:13:22','2021-04-12 16:13:22',3,1,107,0,0),
 (259,'mesin.on_off','1','on','Admin',NULL,'2021-04-12 16:37:32','2021-04-12 16:37:32',3,1,107,0,1),
 (260,'mesin.group_mesin',NULL,'1','Admin',NULL,'2021-04-12 16:37:32','2021-04-12 16:37:32',3,1,107,1,NULL);
INSERT INTO `mesin_total` (`id`,`table_column`,`before`,`history_latest`,`changed_by`,`created_by`,`created_at`,`updated_at`,`company_id`,`group_mesin`,`code_mesin`,`history_group_mesin`,`before_group_mesin`) VALUES 
 (261,'mesin.category_bagian',NULL,'4','Admin',NULL,'2021-04-12 16:37:32','2021-04-12 16:37:32',3,1,107,4,NULL),
 (262,'mesin.listrik_perjam_id','3121','18','Admin',NULL,'2021-04-12 16:37:32','2021-04-12 16:37:32',3,1,107,18,3121),
 (263,'mesin.added.event','','first event',NULL,'Admin','2021-04-12 16:49:09','2021-04-12 16:49:09',3,1,108,0,0),
 (264,'mesin.added.event','','first event',NULL,'Admin','2021-04-12 16:54:21','2021-04-12 16:54:21',3,1,109,0,0),
 (265,'mesin.on_off','1','on','Admin',NULL,'2021-04-12 16:56:37','2021-04-12 16:56:37',3,1,109,0,1),
 (266,'mesin.group_mesin',NULL,'1','Admin',NULL,'2021-04-12 16:56:37','2021-04-12 16:56:37',3,1,109,1,NULL),
 (267,'mesin.category_bagian',NULL,'1','Admin',NULL,'2021-04-12 16:56:37','2021-04-12 16:56:37',3,1,109,1,NULL),
 (268,'mesin.listrik_perjam_id','23123','51','Admin',NULL,'2021-04-12 16:56:37','2021-04-12 16:56:37',3,1,109,51,23123);
INSERT INTO `mesin_total` (`id`,`table_column`,`before`,`history_latest`,`changed_by`,`created_by`,`created_at`,`updated_at`,`company_id`,`group_mesin`,`code_mesin`,`history_group_mesin`,`before_group_mesin`) VALUES 
 (269,'mesin.added.event','','first event',NULL,'Admin','2021-04-13 08:38:37','2021-04-13 08:38:37',3,3,110,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`penyusutan`
--

/*!40000 ALTER TABLE `penyusutan` DISABLE KEYS */;
INSERT INTO `penyusutan` (`id`,`code_penyusutan`,`company_parent_id`,`nama_sim`,`purchaseorder_value`,`umur`,`penyusutan_perbulan`,`created_at`,`updated_at`,`category_bagian`,`code_mesin`,`peny_perbulan_view`,`p_value_view`,`ended_at`,`view_transaction_ended`) VALUES 
 (95,'PYTvXTR0321001',3,'CD 102-6',2663627232,'32',83238351,'2021-03-07 22:13:54','2021-04-13 13:29:30',2,10,NULL,NULL,'2021-04-13 13:29:30',NULL),
 (96,'PYTtnTR03210096',3,'MESIN POLAR (CUTTING MACHINE) 150 CE',250000000,'192',1302083.3333333,'2021-03-09 08:39:20','2021-04-13 13:29:30',1,25,NULL,NULL,'2021-04-13 13:29:30',NULL),
 (97,'PYTO3TR03210097',3,'MESIN POLAR (CUTTING MACHINE) 150 CE',270000000,'192',1406250,'2021-03-09 08:39:51','2021-04-13 13:29:30',1,27,NULL,NULL,'2021-04-13 13:29:30',NULL),
 (99,'PYTtCTR03210098',3,'HEIDELBERG CD 102-6-LX NO 543090 TH 2000',4545454550,'96',47348484.895833,'2021-03-09 08:42:41','2021-04-13 13:29:30',1,11,NULL,NULL,'2021-04-13 13:29:30',NULL),
 (101,'PYTvsTR032100100',3,'Heidelberg Speedmaster',11900000000,'96',123958333.33333,'2021-03-09 08:44:25','2021-04-13 13:29:30',2,40,NULL,NULL,'2021-04-13 13:29:30',NULL),
 (102,'PYTr1TR032100102',3,'SORS',250000000,'96',2604166.6666667,'2021-03-09 08:45:08','2021-04-13 13:29:30',2,41,NULL,NULL,'2021-04-13 13:29:30',NULL);
INSERT INTO `penyusutan` (`id`,`code_penyusutan`,`company_parent_id`,`nama_sim`,`purchaseorder_value`,`umur`,`penyusutan_perbulan`,`created_at`,`updated_at`,`category_bagian`,`code_mesin`,`peny_perbulan_view`,`p_value_view`,`ended_at`,`view_transaction_ended`) VALUES 
 (103,'PYT5dTR032100103',3,'HOCK MODEL KMAUW-D1060',2250000000,'192',11718750,'2021-03-09 08:45:59','2021-04-13 13:29:30',2,21,NULL,NULL,'2021-04-13 13:29:30',NULL),
 (105,'PYTpDTR032100105',3,'BOBST 102 BMA Foil Stampler',2451212411.2,'192',12766731.308333,'2021-03-09 08:48:12','2021-04-13 13:29:30',3,63,NULL,NULL,'2021-04-13 13:29:30',NULL),
 (106,'PYTbWTR032100106',3,'EXPERTFOIL 104 FR AUTOPLATEN PRESS',15768630500,'192',82128283.854167,'2021-03-09 08:48:54','2021-04-13 13:29:30',3,3,NULL,NULL,'2021-04-13 13:29:30',NULL),
 (107,'PYTYJTR032100107',3,'BOBST 104',5586125458,'96',58188806.854167,'2021-03-09 08:49:45','2021-04-13 13:29:30',4,4,NULL,NULL,'2021-04-13 13:29:30',NULL),
 (108,'PYTuwTR032100108',3,'BOBST SP 102-SE',2712061800,'96',28250643.75,'2021-03-09 08:50:18','2021-04-13 13:29:30',4,5,NULL,NULL,'2021-04-13 13:29:30',NULL),
 (109,'PYTfnTR032100109',3,'BOBST SP 102-SE',2200793000,'96',22924927.083333,'2021-03-09 08:52:19','2021-04-13 13:29:30',4,6,NULL,NULL,'2021-04-13 13:29:30',NULL);
INSERT INTO `penyusutan` (`id`,`code_penyusutan`,`company_parent_id`,`nama_sim`,`purchaseorder_value`,`umur`,`penyusutan_perbulan`,`created_at`,`updated_at`,`category_bagian`,`code_mesin`,`peny_perbulan_view`,`p_value_view`,`ended_at`,`view_transaction_ended`) VALUES 
 (110,'PYTWsTR032100110',3,NULL,NULL,NULL,0,'2021-03-09 08:52:47','2021-04-13 13:29:30',4,8,NULL,NULL,'2021-04-13 13:29:30',NULL),
 (111,'PYTJcTR032100111',3,NULL,NULL,NULL,0,'2021-03-09 08:53:03','2021-04-13 13:29:30',5,43,NULL,NULL,'2021-04-13 13:29:30',NULL),
 (112,'PYTc8TR032100112',3,NULL,NULL,NULL,0,'2021-03-09 08:53:20','2021-04-13 13:29:30',6,22,NULL,NULL,'2021-04-13 13:29:30',NULL),
 (113,'PYTrCTR032100113',3,'Vega 100S Gluing Machine',516004920,'192',2687525.625,'2021-03-09 08:53:41','2021-04-13 13:29:30',6,37,NULL,NULL,'2021-04-13 13:29:30',NULL),
 (114,'PYTO7TR032100114',3,'Folder Gluer Vega 80 S',1051627000,'192',5477223.9583333,'2021-03-09 08:54:49','2021-04-13 13:29:30',6,38,NULL,NULL,'2021-04-13 13:29:30',NULL),
 (115,'PYTLrTR032100115',3,NULL,NULL,NULL,0,'2021-03-09 08:55:45','2021-04-13 13:29:30',6,44,NULL,NULL,'2021-04-13 13:29:30',NULL);
INSERT INTO `penyusutan` (`id`,`code_penyusutan`,`company_parent_id`,`nama_sim`,`purchaseorder_value`,`umur`,`penyusutan_perbulan`,`created_at`,`updated_at`,`category_bagian`,`code_mesin`,`peny_perbulan_view`,`p_value_view`,`ended_at`,`view_transaction_ended`) VALUES 
 (126,'PYTmpTR032100126',3,'GASDOKAOSKD',83294923429,'11',7572265766.2727,NULL,'2021-04-13 13:29:30',1,83,NULL,NULL,'2021-04-13 13:29:30',NULL),
 (131,'PYTlRTR032100127',3,'FGTR',452362342,'23',19667927.913043,'2021-03-25 08:05:53','2021-04-13 13:29:30',3,88,NULL,NULL,'2021-04-13 13:29:30',NULL),
 (132,'PYTmgTR032100132',3,'FG',5132312,'12',427692.66666667,'2021-03-25 08:06:42','2021-04-13 13:29:30',1,89,NULL,NULL,'2021-04-13 13:29:30',NULL),
 (134,'PYTSkTR032100134',3,'SDSDSDSD',210000000,'192',1093750,'2021-03-25 13:47:43','2021-04-13 13:29:30',4,91,NULL,NULL,'2021-04-13 13:29:30',NULL),
 (135,'PYTD9TR032100135',3,'HJIKJJI',9923892348293,'123',80682051612.138,'2021-03-25 22:54:25','2021-04-13 13:29:30',1,92,NULL,NULL,'2021-04-13 13:29:30',NULL),
 (136,'PYTrQTR032100136',3,'KODPSD NEW',34234111,'123',278326.10569106,'2021-03-26 15:10:21','2021-04-13 13:29:30',2,57,NULL,NULL,'2021-04-13 13:29:30',NULL);
INSERT INTO `penyusutan` (`id`,`code_penyusutan`,`company_parent_id`,`nama_sim`,`purchaseorder_value`,`umur`,`penyusutan_perbulan`,`created_at`,`updated_at`,`category_bagian`,`code_mesin`,`peny_perbulan_view`,`p_value_view`,`ended_at`,`view_transaction_ended`) VALUES 
 (137,'PYTnLTR032100137',NULL,'DGASDAS',1231000,'12',102583.33333333,'2021-03-31 08:59:41','2021-04-13 13:29:30',NULL,NULL,NULL,NULL,'2021-04-13 13:29:30',NULL),
 (138,'PYT1sTR032100138',3,'fasgasdasda',14151231231,'23',615270923.08696,'2021-03-31 09:00:38','2021-04-13 13:29:30',3,64,NULL,NULL,'2021-04-13 13:29:30',NULL),
 (140,'PYTOjTR032100140',3,'GKOP',3429000,'12',285750,'2021-03-31 11:54:40','2021-04-13 13:29:30',4,93,NULL,NULL,'2021-04-13 13:29:30',NULL),
 (141,'PYTKVTR032100141',3,'GASDAJJ',329990,'12',27499.166666667,'2021-03-31 11:57:05','2021-04-13 13:29:30',1,94,NULL,NULL,'2021-04-13 13:29:30',NULL),
 (142,'PYTKxTR042100142',3,'WWWWWW',123000000,'192',640625,'2021-04-01 10:54:17','2021-04-13 13:29:30',2,95,NULL,NULL,'2021-04-13 13:29:30',NULL),
 (144,'PYTyATR042100143',3,'jshakjshakjshak',121212121,'192',631313.13020833,'2021-04-01 13:24:21','2021-04-13 13:29:30',2,58,NULL,NULL,'2021-04-13 13:29:30',NULL);
INSERT INTO `penyusutan` (`id`,`code_penyusutan`,`company_parent_id`,`nama_sim`,`purchaseorder_value`,`umur`,`penyusutan_perbulan`,`created_at`,`updated_at`,`category_bagian`,`code_mesin`,`peny_perbulan_view`,`p_value_view`,`ended_at`,`view_transaction_ended`) VALUES 
 (147,'PYTxqTR042100145',3,'GHK',832929000,'12',69410750,'2021-04-05 09:19:41','2021-04-13 13:29:30',1,20,NULL,NULL,'2021-04-13 13:29:30',NULL),
 (149,'PYTKiTR042100148',3,'DASKOP',29919900,'12',2493325,'2021-04-05 13:27:43','2021-04-13 13:29:30',1,46,NULL,NULL,'2021-04-13 13:29:30',NULL),
 (150,'PYTiKTR042100150',3,'HJKK',883929300,'12',73660775,'2021-04-05 13:35:24','2021-04-13 13:29:30',2,9,NULL,NULL,'2021-04-13 13:29:30',NULL),
 (151,'PYT6OTR042100151',3,'GAKO',29429300,'12',2452441.6666667,'2021-04-07 10:03:39','2021-04-13 13:29:30',1,61,NULL,NULL,'2021-04-13 13:29:30',NULL),
 (152,'PYTDnTR042100152',3,'SMJ 7 KAL',3423990,'12',285332.5,'2021-04-07 10:05:03','2021-04-13 13:29:30',2,56,NULL,NULL,'2021-04-13 13:29:30',NULL),
 (153,'PYTHETR042100153',3,'TEST CD 6 penyusutan',93482300,'12',7790191.6666667,'2021-04-07 10:29:24','2021-04-13 13:29:30',1,99,NULL,NULL,'2021-04-13 13:29:30',NULL);
INSERT INTO `penyusutan` (`id`,`code_penyusutan`,`company_parent_id`,`nama_sim`,`purchaseorder_value`,`umur`,`penyusutan_perbulan`,`created_at`,`updated_at`,`category_bagian`,`code_mesin`,`peny_perbulan_view`,`p_value_view`,`ended_at`,`view_transaction_ended`) VALUES 
 (154,'PYTc7TR042100154',3,'TEST CD 4',83932100,'12',6994341.6666667,'2021-04-07 10:31:51','2021-04-13 13:29:30',2,100,NULL,NULL,'2021-04-13 13:29:30',NULL),
 (157,'PYT2gTR042100155',1,'DASDKL',342938942,'12',28578245.166667,'2021-04-12 15:55:38','2021-04-13 13:29:30',1,104,NULL,NULL,'2021-04-13 13:29:30',NULL),
 (158,'PYTYqTR042100158',3,'kop sim tes 1',8492392,'23',369234.43478261,'2021-04-12 16:00:27','2021-04-13 13:29:30',4,105,NULL,NULL,'2021-04-13 13:29:30',NULL),
 (159,'PYTxoTR042100159',3,'HJ',384928,'2',192464,'2021-04-12 16:10:06','2021-04-13 13:29:30',2,106,NULL,NULL,'2021-04-13 13:29:30',NULL),
 (160,'PYTTkTR042100160',3,'HJJ',523429,'12',43619.083333333,'2021-04-12 16:13:23','2021-04-13 13:29:30',4,107,NULL,NULL,'2021-04-13 13:29:30',NULL),
 (161,'PYTQZTR042100161',3,'DAJKSDJ',934298492,'12',77858207.666667,'2021-04-12 16:49:09','2021-04-13 13:29:30',2,108,NULL,NULL,'2021-04-13 13:29:30',NULL);
INSERT INTO `penyusutan` (`id`,`code_penyusutan`,`company_parent_id`,`nama_sim`,`purchaseorder_value`,`umur`,`penyusutan_perbulan`,`created_at`,`updated_at`,`category_bagian`,`code_mesin`,`peny_perbulan_view`,`p_value_view`,`ended_at`,`view_transaction_ended`) VALUES 
 (162,'PYT1GTR042100162',3,'DAGG',4293429,'12',357785.75,'2021-04-12 16:54:21','2021-04-13 13:29:30',1,109,NULL,NULL,'2021-04-13 13:29:30',NULL),
 (163,'PYTgFTR042100163',3,'RDL-120',249123910,'12',20760325.833333,'2021-04-13 08:38:37','2021-04-13 13:29:30',2,110,NULL,NULL,'2021-04-13 13:29:30',NULL),
 (164,'PYTgTTR042100164',3,'dasdfaslp',3924299,'12',327024.91666667,'2021-04-13 13:31:32','2021-04-13 13:31:32',4,107,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
 (83,NULL,NULL,'2021-04-13 13:31:32','2021-04-13 13:31:32',NULL,89639637567,89639637567,'penyusutan.added.event',107,4,3,'Admin');
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
 (43,1),
 (44,1),
 (45,1),
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
 (56,5),
 (57,1),
 (57,5),
 (58,1),
 (58,5),
 (59,1),
 (59,5),
 (60,1),
 (60,5),
 (61,1),
 (61,5),
 (62,1),
 (62,5),
 (63,1),
 (63,5),
 (64,1),
 (64,5),
 (65,1),
 (65,5),
 (66,1),
 (66,5),
 (67,1),
 (67,5),
 (68,1),
 (68,5),
 (69,1),
 (69,5),
 (70,1),
 (70,5),
 (71,1),
 (71,5),
 (72,1),
 (72,5),
 (73,1),
 (73,5),
 (74,1),
 (74,5),
 (75,1),
 (75,5),
 (76,1),
 (76,5),
 (77,1),
 (77,5),
 (78,1),
 (78,5),
 (79,1),
 (79,5),
 (80,1),
 (80,5),
 (81,1);
INSERT INTO `permission_role` (`permission_id`,`role_id`) VALUES 
 (81,5),
 (82,1),
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
 (91,5),
 (92,1),
 (93,1),
 (94,1),
 (95,1),
 (96,1),
 (97,1),
 (98,1),
 (99,1),
 (100,1),
 (101,1),
 (102,1),
 (102,5),
 (103,1),
 (103,5),
 (104,1),
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
 (118,1),
 (119,1),
 (120,1),
 (121,1),
 (122,1),
 (123,1),
 (124,1),
 (125,1),
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
 (131,5),
 (132,1),
 (132,5),
 (133,1),
 (133,5),
 (134,1),
 (134,5),
 (135,1),
 (135,5),
 (136,1),
 (136,5),
 (137,1),
 (137,5),
 (138,1),
 (138,5),
 (139,1),
 (139,5),
 (140,1),
 (140,5),
 (141,1),
 (141,5),
 (142,1),
 (143,1),
 (144,1),
 (145,1),
 (146,1),
 (147,1),
 (147,5),
 (148,1);
INSERT INTO `permission_role` (`permission_id`,`role_id`) VALUES 
 (148,5),
 (149,1),
 (149,5),
 (150,1),
 (150,5),
 (151,1),
 (151,5),
 (152,1),
 (152,5),
 (153,1),
 (153,5),
 (154,1),
 (154,5),
 (155,1),
 (155,5),
 (156,1),
 (156,5),
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
 (217,5),
 (218,1),
 (219,1),
 (220,1),
 (221,1),
 (227,1),
 (228,1),
 (229,1),
 (230,1),
 (231,1);
INSERT INTO `permission_role` (`permission_id`,`role_id`) VALUES 
 (237,1),
 (238,1),
 (239,1),
 (240,1),
 (241,1),
 (242,1),
 (243,1),
 (244,1),
 (245,1),
 (246,1),
 (247,1),
 (248,1),
 (249,1),
 (250,1),
 (251,1),
 (252,1),
 (253,1),
 (254,1),
 (255,1),
 (256,1),
 (257,1),
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
 (268,1),
 (269,1),
 (270,1),
 (271,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=272 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
 (271,'delete_location_machine','location_machine','2021-04-12 15:06:12','2021-04-12 15:06:12');
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`rpt_mtc`
--

/*!40000 ALTER TABLE `rpt_mtc` DISABLE KEYS */;
INSERT INTO `rpt_mtc` (`id`,`code_mesin`,`company_parent_id`,`perbaikan_tahun1`,`perbaikan_tahun2`,`perbaikan_tahun3`,`rata_rata_perbaikan_perbulan`,`sparepart_tahun1`,`sparepart_tahun2`,`sparepart_tahun3`,`rata_rata_sparepart_perbulan`,`biaya_produksi_lain`,`total_biaya_perbulan`,`created_at`,`updated_at`,`deleted_at`,`category_bagian`,`code_rpt_mtc`,`perbaikanthn1_view`,`perbaikanthn2_view`,`perbaikanthn3_view`,`rtrt_perbaikan_bln_view`,`sprprt_view1`,`sprprt_view2`,`sprprt_view3`,`rtrt_sparepart_bln_view`,`biaya_produksi_lain_view`,`total_biaya_perbulan_view`,`ended_at`,`TRANSACTION_DATE_V`) VALUES 
 (31,25,3,1750000,0,0,12152.777777778,15503500,192600,571956.8273,112972.61685625,0,125125.39463403,'2021-03-09 01:54:06','2021-04-13 15:43:53',NULL,1,'RPTMTCCHTR03210031',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 15:43:53',NULL),
 (32,26,3,0,3145000,0,21840.277777778,0,20000,358118.1673,2625.82060625,0,24466.098384028,'2021-03-09 01:56:57','2021-04-13 15:43:53',NULL,1,'RPTMTCJZTR03210032',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 15:43:53',NULL),
 (33,11,3,0,0,0,0,0,0,44109995.4296,306319.41270556,14148179.744919,306319.41270556,'2021-03-09 01:59:23','2021-04-13 15:43:53',NULL,2,'RPTMTCy0TR03210033',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 15:43:53',NULL);
INSERT INTO `rpt_mtc` (`id`,`code_mesin`,`company_parent_id`,`perbaikan_tahun1`,`perbaikan_tahun2`,`perbaikan_tahun3`,`rata_rata_perbaikan_perbulan`,`sparepart_tahun1`,`sparepart_tahun2`,`sparepart_tahun3`,`rata_rata_sparepart_perbulan`,`biaya_produksi_lain`,`total_biaya_perbulan`,`created_at`,`updated_at`,`deleted_at`,`category_bagian`,`code_rpt_mtc`,`perbaikanthn1_view`,`perbaikanthn2_view`,`perbaikanthn3_view`,`rtrt_perbaikan_bln_view`,`sprprt_view1`,`sprprt_view2`,`sprprt_view3`,`rtrt_sparepart_bln_view`,`biaya_produksi_lain_view`,`total_biaya_perbulan_view`,`ended_at`,`TRANSACTION_DATE_V`) VALUES 
 (34,40,3,0,0,0,0,0,0,20585850.7,142957.29652778,14148179.744919,142957.29652778,'2021-03-09 02:00:53','2021-04-13 15:43:53',NULL,2,'RPTMTCroTR03210034',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 15:43:53',NULL),
 (35,41,3,4345000,1433000,10012500,109656.25,88148000,0,958724.2414,618796.69612083,14148179.744919,728452.94612083,'2021-03-09 02:02:10','2021-04-13 15:43:53',NULL,2,'RPTMTCkATR03210035',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 15:43:53',NULL),
 (36,21,3,0,0,0,0,0,31485700,42700452.3273,515181.61338403,14148179.744919,515181.61338403,'2021-03-09 02:04:56','2021-04-13 15:43:53',NULL,2,'RPTMTCqPTR03210036',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 15:43:53',NULL);
INSERT INTO `rpt_mtc` (`id`,`code_mesin`,`company_parent_id`,`perbaikan_tahun1`,`perbaikan_tahun2`,`perbaikan_tahun3`,`rata_rata_perbaikan_perbulan`,`sparepart_tahun1`,`sparepart_tahun2`,`sparepart_tahun3`,`rata_rata_sparepart_perbulan`,`biaya_produksi_lain`,`total_biaya_perbulan`,`created_at`,`updated_at`,`deleted_at`,`category_bagian`,`code_rpt_mtc`,`perbaikanthn1_view`,`perbaikanthn2_view`,`perbaikanthn3_view`,`rtrt_perbaikan_bln_view`,`sprprt_view1`,`sprprt_view2`,`sprprt_view3`,`rtrt_sparepart_bln_view`,`biaya_produksi_lain_view`,`total_biaya_perbulan_view`,`ended_at`,`TRANSACTION_DATE_V`) VALUES 
 (37,1,3,13250000,2550000,20000000,248611.11111111,24151231231,124123,1256234234,176441594.36111,16053511.204102,176690205.47222,'2021-03-09 02:07:11','2021-04-13 15:43:53',NULL,3,'RPTMTCFCTR03210037',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 15:43:53',NULL),
 (38,2,3,0,0,0,0,0,0,352352352352,2446891335.7778,16053511.204102,2446891335.7778,'2021-03-09 02:09:02','2021-04-13 15:43:53',NULL,3,'RPTMTCOZTR03210038',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 15:43:53',NULL),
 (40,55,3,0,0,0,0,214500,214500,7429565.9073,54573.37435625,14148179.744919,54573.37435625,'2021-03-09 02:24:50','2021-04-13 15:43:53',NULL,3,'RPTMTCKuTR03210039',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 15:43:53',NULL);
INSERT INTO `rpt_mtc` (`id`,`code_mesin`,`company_parent_id`,`perbaikan_tahun1`,`perbaikan_tahun2`,`perbaikan_tahun3`,`rata_rata_perbaikan_perbulan`,`sparepart_tahun1`,`sparepart_tahun2`,`sparepart_tahun3`,`rata_rata_sparepart_perbulan`,`biaya_produksi_lain`,`total_biaya_perbulan`,`created_at`,`updated_at`,`deleted_at`,`category_bagian`,`code_rpt_mtc`,`perbaikanthn1_view`,`perbaikanthn2_view`,`perbaikanthn3_view`,`rtrt_perbaikan_bln_view`,`sprprt_view1`,`sprprt_view2`,`sprprt_view3`,`rtrt_sparepart_bln_view`,`biaya_produksi_lain_view`,`total_biaya_perbulan_view`,`ended_at`,`TRANSACTION_DATE_V`) VALUES 
 (41,4,3,13500000,7715000,10000000,216770.83333333,16254250,7159100,58367088.0273,567919.70852292,14148179.744919,784690.54185625,'2021-03-09 08:07:00','2021-04-13 15:43:53',NULL,4,'RPTMTCwqTR03210041',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 15:43:53',NULL),
 (42,5,3,12500000,7700000,10000000,209722.22222222,182500,2098000,8564195,75310.381944444,14148179.744919,285032.60416667,'2021-03-09 08:08:22','2021-04-13 15:43:53',NULL,4,'RPTMTCftTR03210042',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 15:43:53',NULL),
 (43,6,3,21625000,93256000,12500000,884590.27777778,3965000,388196130.9801,6612492.573,2769261.2746743,14148179.744919,3653851.5524521,'2021-03-09 08:09:26','2021-04-13 15:43:53',NULL,4,'RPTMTCGnTR03210043',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 15:43:53',NULL);
INSERT INTO `rpt_mtc` (`id`,`code_mesin`,`company_parent_id`,`perbaikan_tahun1`,`perbaikan_tahun2`,`perbaikan_tahun3`,`rata_rata_perbaikan_perbulan`,`sparepart_tahun1`,`sparepart_tahun2`,`sparepart_tahun3`,`rata_rata_sparepart_perbulan`,`biaya_produksi_lain`,`total_biaya_perbulan`,`created_at`,`updated_at`,`deleted_at`,`category_bagian`,`code_rpt_mtc`,`perbaikanthn1_view`,`perbaikanthn2_view`,`perbaikanthn3_view`,`rtrt_perbaikan_bln_view`,`sprprt_view1`,`sprprt_view2`,`sprprt_view3`,`rtrt_sparepart_bln_view`,`biaya_produksi_lain_view`,`total_biaya_perbulan_view`,`ended_at`,`TRANSACTION_DATE_V`) VALUES 
 (44,8,3,0,0,0,0,0,0,0,0,14148179.744919,0,'2021-03-09 08:09:58','2021-04-13 15:43:53',NULL,4,'RPTMTC9KTR03210044',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 15:43:53',NULL),
 (45,43,3,0,0,0,0,0,0,0,0,7859313.8483024,0,'2021-03-09 08:21:02','2021-04-13 15:43:53',NULL,5,'RPTMTC3QTR03210045',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 15:43:53',NULL),
 (46,22,3,1125000,1033000,0,14986.111111111,2921000,5867600,5979950,102559.375,10611134.808689,117545.48611111,'2021-03-09 08:26:16','2021-04-13 15:43:53',NULL,6,'RPTMTCXATR03210046',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 15:43:53',NULL),
 (47,37,3,3295000,1425000,0,32777.777777778,6565000,15259900,12946050,241464.93055556,10611134.808689,274242.70833333,'2021-03-09 08:27:57','2021-04-13 15:43:53',NULL,6,'RPTMTCZUTR03210047',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 15:43:53',NULL);
INSERT INTO `rpt_mtc` (`id`,`code_mesin`,`company_parent_id`,`perbaikan_tahun1`,`perbaikan_tahun2`,`perbaikan_tahun3`,`rata_rata_perbaikan_perbulan`,`sparepart_tahun1`,`sparepart_tahun2`,`sparepart_tahun3`,`rata_rata_sparepart_perbulan`,`biaya_produksi_lain`,`total_biaya_perbulan`,`created_at`,`updated_at`,`deleted_at`,`category_bagian`,`code_rpt_mtc`,`perbaikanthn1_view`,`perbaikanthn2_view`,`perbaikanthn3_view`,`rtrt_perbaikan_bln_view`,`sprprt_view1`,`sprprt_view2`,`sprprt_view3`,`rtrt_sparepart_bln_view`,`biaya_produksi_lain_view`,`total_biaya_perbulan_view`,`ended_at`,`TRANSACTION_DATE_V`) VALUES 
 (48,38,3,875000,4975000,NULL,40625,7780000,10425200,19867291.3639,264392.30113819,10611134.808689,305017.30113819,'2021-03-09 08:29:34','2021-04-13 15:43:53',NULL,6,'RPTMTCLkTR03210048',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 15:43:53',NULL),
 (49,44,3,0,0,NULL,0,0,0,0,0,14148179.744919,0,'2021-03-09 08:30:43','2021-04-13 15:43:53',NULL,6,'RPTMTCU2TR03210049',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 15:43:53',NULL),
 (52,57,3,8790,7879,82734892,574663.61805556,34234,82739817,39489289,849050.97222222,14148179.744919,1423714.5902778,'2021-03-16 12:31:37','2021-04-13 15:43:53',NULL,2,'RPTMTCGHTR03210050',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 15:43:53',NULL);
INSERT INTO `rpt_mtc` (`id`,`code_mesin`,`company_parent_id`,`perbaikan_tahun1`,`perbaikan_tahun2`,`perbaikan_tahun3`,`rata_rata_perbaikan_perbulan`,`sparepart_tahun1`,`sparepart_tahun2`,`sparepart_tahun3`,`rata_rata_sparepart_perbulan`,`biaya_produksi_lain`,`total_biaya_perbulan`,`created_at`,`updated_at`,`deleted_at`,`category_bagian`,`code_rpt_mtc`,`perbaikanthn1_view`,`perbaikanthn2_view`,`perbaikanthn3_view`,`rtrt_perbaikan_bln_view`,`sprprt_view1`,`sprprt_view2`,`sprprt_view3`,`rtrt_sparepart_bln_view`,`biaya_produksi_lain_view`,`total_biaya_perbulan_view`,`ended_at`,`TRANSACTION_DATE_V`) VALUES 
 (53,58,3,312,123,1241,11.638888888889,523423423,600000000,2351125,7817878.8055556,16053511.204102,7817890.4444444,'2021-03-16 16:56:34','2021-04-13 15:43:53',NULL,2,'RPTMTCMYTR03210053',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 15:43:53',NULL),
 (54,63,3,4123512,138923,9289842,94113.034722222,198211,3199912,19839191,161370.23611111,6688963.0017092,255483.27083333,'2021-03-22 16:04:39','2021-04-13 15:43:53',NULL,3,'RPTMTCgVTR03210054',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 15:43:53',NULL),
 (56,64,3,124213,4123,51231,1246.9930555556,5123,5123123,1231254123,8585988.6736111,14151004.391714,8587235.6666667,'2021-03-30 14:47:14','2021-04-13 15:43:53',NULL,3,'RPTMTCbWTR03210055',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 15:43:53',NULL);
INSERT INTO `rpt_mtc` (`id`,`code_mesin`,`company_parent_id`,`perbaikan_tahun1`,`perbaikan_tahun2`,`perbaikan_tahun3`,`rata_rata_perbaikan_perbulan`,`sparepart_tahun1`,`sparepart_tahun2`,`sparepart_tahun3`,`rata_rata_sparepart_perbulan`,`biaya_produksi_lain`,`total_biaya_perbulan`,`created_at`,`updated_at`,`deleted_at`,`category_bagian`,`code_rpt_mtc`,`perbaikanthn1_view`,`perbaikanthn2_view`,`perbaikanthn3_view`,`rtrt_perbaikan_bln_view`,`sprprt_view1`,`sprprt_view2`,`sprprt_view3`,`rtrt_sparepart_bln_view`,`biaya_produksi_lain_view`,`total_biaya_perbulan_view`,`ended_at`,`TRANSACTION_DATE_V`) VALUES 
 (57,10,3,3235298,97074,8798,23202.569444444,798749,879187,998,11659.263888889,14151004.391714,34861.833333333,'2021-03-31 09:07:29','2021-04-13 15:43:53',NULL,2,'RPTMTCTKTR03210057',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 15:43:53',NULL),
 (59,95,3,590000,250000,250000,7569.4444444444,200000,200000,200000,4166.6666666667,14163798.312967,11736.111111111,'2021-04-01 11:13:16','2021-04-13 15:43:53',NULL,2,'RPTMTCIOTR04210059',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 15:43:53',NULL),
 (60,46,3,20000000,20000000,20000000,416666.66666667,1500000,1500000,1500000,31250,14163798.312967,447916.66666667,'2021-04-01 13:59:51','2021-04-13 15:43:53',NULL,2,'RPTMTCqXTR04210060',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 15:43:53',NULL);
INSERT INTO `rpt_mtc` (`id`,`code_mesin`,`company_parent_id`,`perbaikan_tahun1`,`perbaikan_tahun2`,`perbaikan_tahun3`,`rata_rata_perbaikan_perbulan`,`sparepart_tahun1`,`sparepart_tahun2`,`sparepart_tahun3`,`rata_rata_sparepart_perbulan`,`biaya_produksi_lain`,`total_biaya_perbulan`,`created_at`,`updated_at`,`deleted_at`,`category_bagian`,`code_rpt_mtc`,`perbaikanthn1_view`,`perbaikanthn2_view`,`perbaikanthn3_view`,`rtrt_perbaikan_bln_view`,`sprprt_view1`,`sprprt_view2`,`sprprt_view3`,`rtrt_sparepart_bln_view`,`biaya_produksi_lain_view`,`total_biaya_perbulan_view`,`ended_at`,`TRANSACTION_DATE_V`) VALUES 
 (61,89,3,231000,129993,319999,4729.1111111111,2100000,3100000,34328800,274505.55555556,0,279234.66666667,'2021-04-05 08:24:08','2021-04-13 15:43:53',NULL,1,'RPTMTCGQTR04210061',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 15:43:53',NULL),
 (62,9,3,1313124123,3123123,11231251,9218600.6736111,12351231,51231231,512312311,3999269.2569444,14163798.312967,13217869.930556,'2021-04-05 13:34:31','2021-04-13 15:43:53',NULL,2,'RPTMTCaaTR04210062',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 15:43:53',NULL),
 (63,93,3,2341000,14329423,298492,117839.6875,2931299,29849999,92192919,867876.50694444,14163798.312967,985716.19444444,'2021-04-05 14:29:29','2021-04-13 15:43:53',NULL,4,'RPTMTCqjTR04210063',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 15:43:53',NULL);
INSERT INTO `rpt_mtc` (`id`,`code_mesin`,`company_parent_id`,`perbaikan_tahun1`,`perbaikan_tahun2`,`perbaikan_tahun3`,`rata_rata_perbaikan_perbulan`,`sparepart_tahun1`,`sparepart_tahun2`,`sparepart_tahun3`,`rata_rata_sparepart_perbulan`,`biaya_produksi_lain`,`total_biaya_perbulan`,`created_at`,`updated_at`,`deleted_at`,`category_bagian`,`code_rpt_mtc`,`perbaikanthn1_view`,`perbaikanthn2_view`,`perbaikanthn3_view`,`rtrt_perbaikan_bln_view`,`sprprt_view1`,`sprprt_view2`,`sprprt_view3`,`rtrt_sparepart_bln_view`,`biaya_produksi_lain_view`,`total_biaya_perbulan_view`,`ended_at`,`TRANSACTION_DATE_V`) VALUES 
 (64,91,3,342,98,982498,6825.9583333333,9482938,979323,2938,72674.993055556,14163798.312967,79500.951388889,'2021-04-05 15:53:57','2021-04-13 15:43:53',NULL,4,'RPTMTCk0TR04210064',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 15:43:53',NULL),
 (65,92,3,78988988,43254343,325542543,3109624.125,32454365,4343536,636476476,4675516.5069444,0,7785140.6319444,'2021-04-07 02:11:58','2021-04-13 15:43:53',NULL,1,'RPTMTCPuTR04210065',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 15:43:53',NULL),
 (66,56,3,4239000,1239999,12319900,123603.46527778,12942999,942911,1210000,104832.70833333,10622848.734725,228436.17361111,'2021-04-07 10:06:09','2021-04-13 15:43:53',NULL,2,'RPTMTCtTTR04210066',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 15:43:53',NULL);
INSERT INTO `rpt_mtc` (`id`,`code_mesin`,`company_parent_id`,`perbaikan_tahun1`,`perbaikan_tahun2`,`perbaikan_tahun3`,`rata_rata_perbaikan_perbulan`,`sparepart_tahun1`,`sparepart_tahun2`,`sparepart_tahun3`,`rata_rata_sparepart_perbulan`,`biaya_produksi_lain`,`total_biaya_perbulan`,`created_at`,`updated_at`,`deleted_at`,`category_bagian`,`code_rpt_mtc`,`perbaikanthn1_view`,`perbaikanthn2_view`,`perbaikanthn3_view`,`rtrt_perbaikan_bln_view`,`sprprt_view1`,`sprprt_view2`,`sprprt_view3`,`rtrt_sparepart_bln_view`,`biaya_produksi_lain_view`,`total_biaya_perbulan_view`,`ended_at`,`TRANSACTION_DATE_V`) VALUES 
 (67,61,3,2341239,12429129,42103012,394954.02777778,2312941,23919231,1208419,190559.65972222,0,585513.6875,'2021-04-07 10:08:32','2021-04-13 15:43:53',NULL,1,'RPTMTCtETR04210067',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 15:43:53',NULL),
 (68,99,3,28931000,2199991,93180000,863270.77083333,19492992,NULL,491929919,3551547.9930556,0,4414818.7638889,'2021-04-07 10:53:36','2021-04-13 15:43:53',NULL,1,'RPTMTCpRTR04210068',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 15:43:53',NULL),
 (69,100,3,43928900,9238092893,293898230,66499444.604167,219831090,49193292392,29320190491,546759124.8125,10622848.734725,613258569.41667,'2021-04-07 10:55:41','2021-04-13 15:43:53',NULL,2,'RPTMTC4TTR04210069',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 15:43:53',NULL);
INSERT INTO `rpt_mtc` (`id`,`code_mesin`,`company_parent_id`,`perbaikan_tahun1`,`perbaikan_tahun2`,`perbaikan_tahun3`,`rata_rata_perbaikan_perbulan`,`sparepart_tahun1`,`sparepart_tahun2`,`sparepart_tahun3`,`rata_rata_sparepart_perbulan`,`biaya_produksi_lain`,`total_biaya_perbulan`,`created_at`,`updated_at`,`deleted_at`,`category_bagian`,`code_rpt_mtc`,`perbaikanthn1_view`,`perbaikanthn2_view`,`perbaikanthn3_view`,`rtrt_perbaikan_bln_view`,`sprprt_view1`,`sprprt_view2`,`sprprt_view3`,`rtrt_sparepart_bln_view`,`biaya_produksi_lain_view`,`total_biaya_perbulan_view`,`ended_at`,`TRANSACTION_DATE_V`) VALUES 
 (70,102,3,41231999,1232109842,2093029,8857186.5972222,93091203,19294192,29391,780658.23611111,206318384505.67,9637844.8333333,'2021-04-12 13:23:23','2021-04-13 15:43:53',NULL,2,'RPTMTC4RTR04210070',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 15:43:53',NULL),
 (71,104,1,312412,28318231,839821,204656,1321123,NULL,3145512111,21853008.569444,211476344118.31,22057664.569444,'2021-04-12 15:55:39','2021-04-13 15:43:53',NULL,1,'RPTMTCsoTR04210071',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 15:43:53',NULL),
 (72,105,3,32991,93892813,2984923894,21380900.680556,293819,928493,38928948292,270348406.97222,2235115832.1448,291729307.65278,'2021-04-12 16:00:27','2021-04-13 15:43:53',NULL,4,'RPTMTC3wTR04210072',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 15:43:53',NULL);
INSERT INTO `rpt_mtc` (`id`,`code_mesin`,`company_parent_id`,`perbaikan_tahun1`,`perbaikan_tahun2`,`perbaikan_tahun3`,`rata_rata_perbaikan_perbulan`,`sparepart_tahun1`,`sparepart_tahun2`,`sparepart_tahun3`,`rata_rata_sparepart_perbulan`,`biaya_produksi_lain`,`total_biaya_perbulan`,`created_at`,`updated_at`,`deleted_at`,`category_bagian`,`code_rpt_mtc`,`perbaikanthn1_view`,`perbaikanthn2_view`,`perbaikanthn3_view`,`rtrt_perbaikan_bln_view`,`sprprt_view1`,`sprprt_view2`,`sprprt_view3`,`rtrt_sparepart_bln_view`,`biaya_produksi_lain_view`,`total_biaya_perbulan_view`,`ended_at`,`TRANSACTION_DATE_V`) VALUES 
 (73,106,3,321491,1231412,284823842,1988727.3958333,31231,4512,31231,465.09722222222,402320849786.06,1989192.4930556,'2021-04-12 16:10:06','2021-04-13 15:43:53',NULL,2,'RPTMTCnUTR04210073',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 15:43:53',NULL),
 (74,107,3,383274982,879387,97,2667739.3472222,9879,87,87878,679.47222222222,536599731701.83,2668418.8194444,'2021-04-12 16:13:23','2021-04-13 15:43:53',NULL,4,'RPTMTCwGTR04210074',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 15:43:53',NULL),
 (75,108,3,384280,8797,98313,3412.4305555556,123141,24,12313123,86363.111111111,779367697470.17,89775.541666667,'2021-04-12 16:49:09','2021-04-13 15:43:53',NULL,2,'RPTMTCj6TR04210075',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 15:43:53',NULL);
INSERT INTO `rpt_mtc` (`id`,`code_mesin`,`company_parent_id`,`perbaikan_tahun1`,`perbaikan_tahun2`,`perbaikan_tahun3`,`rata_rata_perbaikan_perbulan`,`sparepart_tahun1`,`sparepart_tahun2`,`sparepart_tahun3`,`rata_rata_sparepart_perbulan`,`biaya_produksi_lain`,`total_biaya_perbulan`,`created_at`,`updated_at`,`deleted_at`,`category_bagian`,`code_rpt_mtc`,`perbaikanthn1_view`,`perbaikanthn2_view`,`perbaikanthn3_view`,`rtrt_perbaikan_bln_view`,`sprprt_view1`,`sprprt_view2`,`sprprt_view3`,`rtrt_sparepart_bln_view`,`biaya_produksi_lain_view`,`total_biaya_perbulan_view`,`ended_at`,`TRANSACTION_DATE_V`) VALUES 
 (76,109,3,41293819,874823792,87328178,6968373.5347222,8278739,83712812,41241231,925227.65277778,3975583337437.2,7893601.1875,'2021-04-12 16:54:21','2021-04-13 15:43:53',NULL,1,'RPTMTCoZTR04210076',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 15:43:53',NULL),
 (77,110,3,424123132,141231,341231,2948649.9583333,42131231,3121,1341231,301913.77083333,366215132497.56,3250563.7291667,'2021-04-13 08:38:37','2021-04-13 15:43:53',NULL,2,'RPTMTCJrTR04210077',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-04-13 15:43:53',NULL),
 (78,91,3,34234,53242,523423,4242.3541666667,4523523,241312,3523623,57558.736111111,14163798.312967,61801.090277778,'2021-04-13 15:49:09','2021-04-13 15:49:09',NULL,4,'RPTMTCcKTR04210078',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
 (225,NULL,NULL,'2021-04-13 15:49:09','2021-04-13 15:49:09',NULL,'rpt_mtc.added.event',61802,61802,4,3,91,NULL,'Accounting');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
 (12,'admin.voyager.voyager_assets','','/vendor/tcg/voyager/assets',NULL,'text',1,'Admin');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;


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
 (8,NULL,3,1,25,35918347.30402,1302083.3333333,0,16050,83808170.105391,30438877.600833,225371964.36455,376855492.70812,0,0.095310664164417,490697256130360,0,6048530657965.4,3.1583569238033e16,1.1471058215744e16,8.4932662673199e16,1.2848403591376e17,'2021-02-03 03:07:37','2021-02-03 03:07:37','CALC-EDPNoTR0221001'),
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`total_kalkulasi_tanpa_penyusutan`
--

/*!40000 ALTER TABLE `total_kalkulasi_tanpa_penyusutan` DISABLE KEYS */;
INSERT INTO `total_kalkulasi_tanpa_penyusutan` (`id`,`code_calc_tnp_penyusutan`,`company_parent_id`,`code_mesin`,`group_mesin`,`category_bagian`,`listrik`,`penyusutan`,`labor`,`mtc`,`gaji_lainnya`,`bagian_penjualan`,`bau`,`semua_total_biaya`,`semua_total_biaya_perjam`,`tanpa_penyusutan_plus_mtc_total`,`tanpa_penyusutan_plus_mtc_perjam`,`tanpa_penyusutan_total`,`tanpa_penyusutan_total_perjam`,`tanpa_mtc_total`,`tanpa_mtc_total_perjam`,`created_at`,`updated_at`,`deleted_at`,`b_prod_lain`,`code_account`) VALUES 
 (3,'CALC-EDPU7TR0221001',3,25,1,1,NULL,423624322312312,0,125125.39463403,0,0,0,1427208.7279673,0,0,0,125125.39463403,0,1302083.3333333,0,'2021-02-04 07:33:02','2021-02-04 07:33:02',NULL,0,NULL),
 (4,'CALC-EDPJWTR0221004',3,27,1,1,NULL,1406250,0,24466.098384028,0,0,0,1430716.098384,0,0,0,24466.098384028,0,1406250,0,'2021-02-05 06:28:04','2021-02-05 06:28:04',NULL,0,NULL),
 (6,'CALC-EDPONTR0221005',3,10,2,2,NULL,47348484.895833,58848710.79,12906695.039215,19743200.085882,3666028.168074,63707850.375044,256287496.40299,508506.93730751,196032316.46794,388953.00886496,208939011.50715,388953.00886496,243380801.36377,482898.41540431,'2021-02-05 06:34:27','2021-02-05 06:34:27',NULL,14148179.744919,NULL),
 (7,'CALC-EDPyhTR0221007',3,11,2,2,NULL,33333333.333333,58848710.79,306319.41270556,19743200.085882,3666028.168074,63707850.375044,229671969.21398,455698.35161503,196032316.46794,388953.00886496,196338635.88064,388953.00886496,229365649.80127,455090.57500252,'2021-02-08 08:08:28','2021-02-08 08:08:28',NULL,14148179.744919,NULL);
INSERT INTO `total_kalkulasi_tanpa_penyusutan` (`id`,`code_calc_tnp_penyusutan`,`company_parent_id`,`code_mesin`,`group_mesin`,`category_bagian`,`listrik`,`penyusutan`,`labor`,`mtc`,`gaji_lainnya`,`bagian_penjualan`,`bau`,`semua_total_biaya`,`semua_total_biaya_perjam`,`tanpa_penyusutan_plus_mtc_total`,`tanpa_penyusutan_plus_mtc_perjam`,`tanpa_penyusutan_total`,`tanpa_penyusutan_total_perjam`,`tanpa_mtc_total`,`tanpa_mtc_total_perjam`,`created_at`,`updated_at`,`deleted_at`,`b_prod_lain`,`code_account`) VALUES 
 (8,'CALC-EDP3MTR0221008',3,40,2,2,NULL,123958333.33333,58848710.79,142957.29652778,32905333.476468,6110046.9467898,106179750.62507,387643779.34707,769134.48283149,263542488.71721,522901.7633278,263685446.01374,522901.7633278,387500822.05054,768850.83740187,'2021-02-08 08:14:13','2021-02-08 08:14:13',NULL,23580299.574865,NULL),
 (9,'CALC-EDPtITR0221009',3,41,3,2,1294091.8844466,2604166.6666667,12643441.79,728452.94612083,8226333.3691173,1527511.7366975,26544937.656268,59464010.943034,353952.44608949,56131391.330246,334115.4245848,56859844.276367,334115.4245848,58735557.996913,349616.41664829,'2021-02-08 08:25:11','2021-02-08 08:25:11',NULL,5895074.8937162,NULL),
 (10,'CALC-EDPShTR02210010',3,21,4,2,5347346346,11718750,31125549.39,515181.61338403,12339500.053675853,2291267.6050462,39817406.484402,117839783.78117,233809.09480391,105605852.16779,209535.42096783,106121033.78117,209535.42096783,117324602.16779,232786.90906307,'2021-02-08 08:27:12','2021-02-08 08:27:12',NULL,8842612.3405744,NULL);
INSERT INTO `total_kalkulasi_tanpa_penyusutan` (`id`,`code_calc_tnp_penyusutan`,`company_parent_id`,`code_mesin`,`group_mesin`,`category_bagian`,`listrik`,`penyusutan`,`labor`,`mtc`,`gaji_lainnya`,`bagian_penjualan`,`bau`,`semua_total_biaya`,`semua_total_biaya_perjam`,`tanpa_penyusutan_plus_mtc_total`,`tanpa_penyusutan_plus_mtc_perjam`,`tanpa_penyusutan_total`,`tanpa_penyusutan_total_perjam`,`tanpa_mtc_total`,`tanpa_mtc_total_perjam`,`created_at`,`updated_at`,`deleted_at`,`b_prod_lain`,`code_account`) VALUES 
 (11,'CALC-EDP6ZTR02210011',3,NULL,5,3,9452098.2368771,6315379.8828125,30153438.535714,1843754.2439396,8226333.3691173,1527511.7366975,26544937.656268,89958528.555143,178489.14395862,81799394.428391,162300.38577062,83643148.67233,162300.38577062,88114774.311203,174830.90141112,'2021-02-08 08:32:43','2021-02-08 08:32:43',NULL,5895074.8937162,NULL),
 (12,'CALC-EDPy2TR02210012',3,NULL,5,3,9452098.2368771,6315379.8828125,30153438.535714,51594.207689583,8226333.3691173,1527511.7366975,26544937.656268,88166368.518893,174933.27087082,81799394.428391,162300.38577062,81850988.63608,162300.38577062,88114774.311203,174830.90141112,'2021-02-08 08:36:53','2021-02-08 08:36:53',NULL,5895074.8937162,NULL),
 (13,'CALC-EDPzzTR02210013',3,55,5,3,10294354.99056,82128283.854167,30153438.535714,33177.293990278,23033733.433528,4277032.8627529,74325825.437551,240752056.11067,477682.65101323,158590594.96251,314663.87889387,158623772.2565,314663.87889387,240718878.81668,477616.82304896,'2021-02-08 08:45:44','2021-02-08 08:45:44',NULL,16506209.702405,NULL);
INSERT INTO `total_kalkulasi_tanpa_penyusutan` (`id`,`code_calc_tnp_penyusutan`,`company_parent_id`,`code_mesin`,`group_mesin`,`category_bagian`,`listrik`,`penyusutan`,`labor`,`mtc`,`gaji_lainnya`,`bagian_penjualan`,`bau`,`semua_total_biaya`,`semua_total_biaya_perjam`,`tanpa_penyusutan_plus_mtc_total`,`tanpa_penyusutan_plus_mtc_perjam`,`tanpa_penyusutan_total`,`tanpa_penyusutan_total_perjam`,`tanpa_mtc_total`,`tanpa_mtc_total_perjam`,`created_at`,`updated_at`,`deleted_at`,`b_prod_lain`,`code_account`) VALUES 
 (14,'CALC-EDPI7TR02210014',3,4,6,4,10294354.99056,58188806.854167,30153438.535714,784690.54185625,NULL,2291267.6050462,39817406.484402,162712077.406,322841.4234246,103738580.00997,205830.5158928,104523270.55183,205830.5158928,161927386.86414,321284.49774631,'2021-02-08 08:50:42','2021-02-08 08:50:42',NULL,8842612.3405744,NULL),
 (15,'CALC-EDPX1TR02210015',3,5,6,4,10294354.99056,28250643.75,30153438.535714,285032.60416667,NULL,2291267.6050462,39817406.484402,132274256.36414,262448.92135742,103738580.00997,205830.5158928,104023612.61414,205830.5158928,131989223.75997,261883.38047614,'2021-02-08 08:52:55','2021-02-08 08:52:55',NULL,8842612.3405744,NULL),
 (16,'CALC-EDPvkTR02210016',3,6,6,4,9399193.6870333,22924927.083333,30153438.535714,3653851.5524521,NULL,2291267.6050462,39817406.484402,129422197.34223,256790.07409173,102843418.70645,204054.40219533,106497270.2589,204054.40219533,125768345.78978,249540.36863051,'2021-02-08 08:56:03','2021-02-08 08:56:03',NULL,8842612.3405744,NULL);
INSERT INTO `total_kalkulasi_tanpa_penyusutan` (`id`,`code_calc_tnp_penyusutan`,`company_parent_id`,`code_mesin`,`group_mesin`,`category_bagian`,`listrik`,`penyusutan`,`labor`,`mtc`,`gaji_lainnya`,`bagian_penjualan`,`bau`,`semua_total_biaya`,`semua_total_biaya_perjam`,`tanpa_penyusutan_plus_mtc_total`,`tanpa_penyusutan_plus_mtc_perjam`,`tanpa_penyusutan_total`,`tanpa_penyusutan_total_perjam`,`tanpa_mtc_total`,`tanpa_mtc_total_perjam`,`created_at`,`updated_at`,`deleted_at`,`b_prod_lain`,`code_account`) VALUES 
 (17,'CALC-EDPiSTR02210017',3,8,6,4,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'2021-02-08 08:58:23','2021-02-08 08:58:23',NULL,0,NULL),
 (18,'CALC-EDPPTTR02210018',3,43,7,1,3133064.5623444,0,10051146.178571,0,10967347.647707,2036478.6473651,35389710.883336,69437061.767626,413315.84385492,69437061.767626,413315.84385492,69437061.767626,413315.84385492,69437061.767626,413315.84385492,'2021-02-08 09:05:31','2021-02-08 09:05:31',NULL,7859313.8483024,NULL),
 (19,'CALC-EDP4VTR02210019',3,22,8,6,1351368.9376729,0,47780448.625,117545.48611111,14807400.064411,2749521.1260555,47780887.781282,125198306.82922,372614.0084203,125080761.34311,372264.17066402,125198306.82922,372264.17066402,125080761.34311,372264.17066402,'2021-02-08 09:12:02','2021-02-08 09:12:02',NULL,10611134.808689,NULL),
 (20,'CALC-EDPO6TR02210020',3,37,8,6,1351368.9376729,2687525.625,47780448.625,274242.70833333,14807400.064411,2749521.1260555,47780887.781282,128042529.67644,381078.95737037,125080761.34311,372264.17066402,125355004.05144,372264.17066402,127768286.96811,380262.75883366,'2021-02-08 09:15:21','2021-02-08 09:15:21',NULL,10611134.808689,NULL);
INSERT INTO `total_kalkulasi_tanpa_penyusutan` (`id`,`code_calc_tnp_penyusutan`,`company_parent_id`,`code_mesin`,`group_mesin`,`category_bagian`,`listrik`,`penyusutan`,`labor`,`mtc`,`gaji_lainnya`,`bagian_penjualan`,`bau`,`semua_total_biaya`,`semua_total_biaya_perjam`,`tanpa_penyusutan_plus_mtc_total`,`tanpa_penyusutan_plus_mtc_perjam`,`tanpa_penyusutan_total`,`tanpa_penyusutan_total_perjam`,`tanpa_mtc_total`,`tanpa_mtc_total_perjam`,`created_at`,`updated_at`,`deleted_at`,`b_prod_lain`,`code_account`) VALUES 
 (21,'CALC-EDPSzTR02210021',3,38,8,6,1387892.4224748,5477223.9583333,47780448.625,305017.30113819,14807400.064411,2749521.1260555,47780887.781282,130899526.08738,389581.92287912,125117284.82791,372372.87151164,125422302.12905,372372.87151164,130594508.78625,388674.1332924,'2021-02-08 09:20:36','2021-02-08 09:20:36',NULL,10611134.808689,NULL),
 (22,'CALC-EDPnTTR02210022',3,44,9,6,NULL,0,12076377.125,0,14807400.064411,2749521.1260555,47780887.781282,88996845.60117,529743.12857839,88996845.60117,529743.12857839,88996845.60117,529743.12857839,88996845.60117,529743.12857839,'2021-02-08 09:25:36','2021-03-02 05:25:11',NULL,10611134.808689,NULL),
 (23,'CALC-EDPxqTR03210023',1,NULL,NULL,1,NULL,423624322312310,0,24466.098384028,NULL,2291267.6050462,39817406.484402,423624426851480,1260786984677,104514701.25,311055.65848214,104539167.375,311055.65848214,423624426827010,1260786984604.2,'2021-03-03 08:39:46','2021-03-03 08:39:46',NULL,14148179.744919,NULL);
INSERT INTO `total_kalkulasi_tanpa_penyusutan` (`id`,`code_calc_tnp_penyusutan`,`company_parent_id`,`code_mesin`,`group_mesin`,`category_bagian`,`listrik`,`penyusutan`,`labor`,`mtc`,`gaji_lainnya`,`bagian_penjualan`,`bau`,`semua_total_biaya`,`semua_total_biaya_perjam`,`tanpa_penyusutan_plus_mtc_total`,`tanpa_penyusutan_plus_mtc_perjam`,`tanpa_penyusutan_total`,`tanpa_penyusutan_total_perjam`,`tanpa_mtc_total`,`tanpa_mtc_total_perjam`,`created_at`,`updated_at`,`deleted_at`,`b_prod_lain`,`code_account`) VALUES 
 (24,'CALC-EDPSUTR03210024',1,4,NULL,3,NULL,33333333.333333,58848710.79,24466.098384028,NULL,2291267.6050462,39817406.484402,196721211.41378,390319.86391623,163363411.98206,324133.75393267,163387878.08045,324133.75393267,196696745.3154,390271.32007023,'2021-03-03 08:44:34','2021-03-03 08:44:34',NULL,14148179.744919,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`transaksi_mtc_total`
--

/*!40000 ALTER TABLE `transaksi_mtc_total` DISABLE KEYS */;
INSERT INTO `transaksi_mtc_total` (`id`,`total_tr_mtc_total`,`created_at`,`updated_at`,`id_tr_mtc`,`changed_by`) VALUES 
 (8,12906695,'2021-03-08 02:50:59','2021-03-08 02:50:59',30,'Admin'),
 (9,13031820,'2021-03-09 01:54:06','2021-03-09 01:54:06',31,'Admin'),
 (10,13056287,'2021-03-09 01:56:58','2021-03-09 01:56:58',32,'Admin'),
 (11,13362606,'2021-03-09 01:59:23','2021-03-09 01:59:23',33,'Admin'),
 (12,13505563,'2021-03-09 02:00:53','2021-03-09 02:00:53',34,'Admin'),
 (13,14234016,'2021-03-09 02:02:10','2021-03-09 02:02:10',35,'Admin'),
 (14,14749198,'2021-03-09 02:04:56','2021-03-09 02:04:56',36,'Admin'),
 (15,16592952,'2021-03-09 02:07:11','2021-03-09 02:07:11',37,'Admin'),
 (16,16644546,'2021-03-09 02:09:02','2021-03-09 02:09:02',38,'Admin'),
 (17,16697630,'2021-03-09 02:22:13','2021-03-09 02:22:13',39,'Admin'),
 (18,16699120,'2021-03-09 02:24:50','2021-03-09 02:24:50',40,'Admin'),
 (19,17483810,'2021-03-09 08:07:00','2021-03-09 08:07:00',41,'Admin'),
 (20,17768843,'2021-03-09 08:08:22','2021-03-09 08:08:22',42,'Admin'),
 (21,21422694,'2021-03-09 08:09:27','2021-03-09 08:09:27',43,'Admin');
INSERT INTO `transaksi_mtc_total` (`id`,`total_tr_mtc_total`,`created_at`,`updated_at`,`id_tr_mtc`,`changed_by`) VALUES 
 (22,21422694,'2021-03-09 08:09:58','2021-03-09 08:09:58',44,'Admin'),
 (23,21422694,'2021-03-09 08:21:02','2021-03-09 08:21:02',45,'Admin'),
 (24,21540240,'2021-03-09 08:26:16','2021-03-09 08:26:16',46,'Admin'),
 (25,21814483,'2021-03-09 08:27:57','2021-03-09 08:27:57',47,'Admin'),
 (26,22119500,'2021-03-09 08:29:35','2021-03-09 08:29:35',48,'Admin'),
 (27,22119500,'2021-03-09 08:30:43','2021-03-09 08:30:43',49,'Admin'),
 (28,22651796,'2021-03-16 12:12:38','2021-03-16 12:12:38',50,'Admin'),
 (29,79274853,'2021-03-16 12:25:01','2021-03-16 12:25:01',51,'Admin'),
 (30,91423413,'2021-03-16 12:31:38','2021-03-16 12:31:38',52,'Admin'),
 (31,27230787,'2021-03-16 16:56:34','2021-03-16 16:56:34',53,'Admin'),
 (32,2699468872,'2021-03-30 14:47:14','2021-03-30 14:47:14',56,'Admin');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_kalkulasi_mesin`.`users`
--

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`,`role_id`,`name`,`email`,`avatar`,`email_verified_at`,`password`,`remember_token`,`settings`,`created_at`,`updated_at`,`alias_roles`) VALUES 
 (1,1,'EDP Administrator','edp@admin.com','users/April2021/ev0CSyX3stEnevGWrsg7.jpg',NULL,'$2y$10$.4TEjRx84yA6BQhiI9b.SOCGDwWouQBww8tu5hOv6eGfuFzbKClly','G3MjsRjZeosL8R0Vj7v9N7nTHGtbDChIZpaYRn1jKbwhy8FHd7adIgHli4sE','{\"locale\":\"id\"}','2021-01-19 08:02:15','2021-04-13 14:44:07',NULL),
 (2,2,'daniel','d@dev.id','users/March2021/PSrky2nOL7fmuFv7CHKa.png',NULL,'$2y$10$ppc7Qn4O57OAPupLosTUJu.NoN6AqvUHqaKdesZdbg7PtkAbijBPC',NULL,'{\"locale\":\"id\"}','2021-02-09 09:49:01','2021-03-05 07:36:53',NULL),
 (3,5,'Accounting','guest@secret.co','users/March2021/VJmjjsAEG0xgj4Dz1Zd2.png',NULL,'$2y$10$Qu9ocFstCW33xsSeKkSZ5.hDGb7Z3f7PKdkz2mUNLU7IDslT6JLba','O2nCWBjt9qs96qGMVGuviz1M52LLM5sKVDmXLelDIUPApUOJxiKBXcehsr95','{\"locale\":\"id\"}','2021-03-05 06:07:48','2021-04-13 15:33:14',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
