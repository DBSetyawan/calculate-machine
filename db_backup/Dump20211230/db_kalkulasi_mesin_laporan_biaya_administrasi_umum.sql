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
-- Table structure for table `laporan_biaya_administrasi_umum`
--

DROP TABLE IF EXISTS `laporan_biaya_administrasi_umum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laporan_biaya_administrasi_umum`
--

LOCK TABLES `laporan_biaya_administrasi_umum` WRITE;
/*!40000 ALTER TABLE `laporan_biaya_administrasi_umum` DISABLE KEYS */;
INSERT INTO `laporan_biaya_administrasi_umum` VALUES (97,'LBAUd0TR04210097','GHSA',634534,'2021-04-19 08:56:08','2021-04-20 02:23:44',1,423623,NULL,11022.46875,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021','2021','2021',NULL,NULL,NULL),(98,'LBAUv3TR04210098','TEST B 1112',41232,'2021-04-20 03:25:59','2021-04-26 09:07:38',3,3123412,3124123,174687.97222222,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017','2022','2022',NULL,NULL,NULL),(99,'LBAUKXTR04210099','ADMINISTRASI UMUM',34235234,'2021-04-28 03:23:11','2021-04-28 03:25:33',3,52363532,423623623424,11769728394.167,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021','2025','2025',NULL,NULL,NULL),(100,'LBAUozTR042100100','B ACC',34982,'2021-04-28 08:46:11','2021-04-28 08:46:11',3,NULL,NULL,364.39583333333,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023','2021','2021',NULL,NULL,NULL);
/*!40000 ALTER TABLE `laporan_biaya_administrasi_umum` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-30 11:53:59
