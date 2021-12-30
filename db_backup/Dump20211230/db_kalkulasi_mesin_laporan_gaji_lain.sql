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
-- Table structure for table `laporan_gaji_lain`
--

DROP TABLE IF EXISTS `laporan_gaji_lain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laporan_gaji_lain`
--

LOCK TABLES `laporan_gaji_lain` WRITE;
/*!40000 ALTER TABLE `laporan_gaji_lain` DISABLE KEYS */;
INSERT INTO `laporan_gaji_lain` VALUES (140,'GJLMBTR04210036',14,'2021-04-28 03:43:01','2021-04-28 03:43:01',342523,432423,NULL,32289.416666667,3,'HR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023','2027','2027',NULL,NULL,NULL),(141,'GJLqWTR04210036',11,'2021-04-28 08:41:10','2021-04-28 08:41:10',8932832,NULL,NULL,372201.33333333,3,'test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023','2024','2024',NULL,NULL,NULL);
/*!40000 ALTER TABLE `laporan_gaji_lain` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-30 11:54:14
