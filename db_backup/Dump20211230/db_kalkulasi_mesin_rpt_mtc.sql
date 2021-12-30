CREATE DATABASE  IF NOT EXISTS `db_kalkulasi_mesin` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `db_kalkulasi_mesin`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: 192.168.88.99    Database: db_kalkulasi_mesin
-- ------------------------------------------------------
-- Server version	5.5.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `rpt_mtc`
--

DROP TABLE IF EXISTS `rpt_mtc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rpt_mtc`
--

LOCK TABLES `rpt_mtc` WRITE;
/*!40000 ALTER TABLE `rpt_mtc` DISABLE KEYS */;
INSERT INTO `rpt_mtc` VALUES (113,141,3,3489293429,NULL,NULL,290774452.41667,42131000,NULL,NULL,3510916.6666667,735179160,294285369.08333,'2021-04-30 09:49:41','2021-04-30 09:49:41',NULL,2,'RPTMTCyYTR0421001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2023,2021,2021,2300,2021,2021),(114,142,3,15000000,15000000,NULL,1250000,10000000,NULL,NULL,833333.33333333,1376740000,2083333.3333333,'2021-09-06 02:15:26','2021-09-06 02:15:26',NULL,2,'RPTMTCSpTR092100114',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2021,2021,2021,2021,2021,2021),(115,143,3,1203000,28329329,NULL,1230513.7083333,12939100,NULL,NULL,1078258.3333333,169339020,2308772.0416667,'2021-09-07 01:18:04','2021-09-07 01:18:04',NULL,2,'RPTMTCWWTR092100115',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2021,2021,2021,2021,2021,2021);
/*!40000 ALTER TABLE `rpt_mtc` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-30 11:54:03
