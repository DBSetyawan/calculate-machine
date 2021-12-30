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
-- Table structure for table `laporan_bagian_penjualan`
--

DROP TABLE IF EXISTS `laporan_bagian_penjualan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laporan_bagian_penjualan`
--

LOCK TABLES `laporan_bagian_penjualan` WRITE;
/*!40000 ALTER TABLE `laporan_bagian_penjualan` DISABLE KEYS */;
INSERT INTO `laporan_bagian_penjualan` VALUES (55,'LPBPEiTR04210054','fhjajs',231412,44057.083333333,'2021-04-19 08:36:01','2021-04-20 02:23:00',1231231,123412,NULL,NULL,NULL,NULL,3,NULL,NULL,NULL,NULL,NULL,'2025','2025','2021',NULL,NULL,NULL),(56,'LPBPHrTR04210056','TEST BP 1543',423000,11716565.888889,'2021-04-20 03:28:18','2021-04-26 09:32:06',32141,421341231,NULL,NULL,NULL,NULL,3,NULL,NULL,NULL,NULL,NULL,'2042','2042','2018',NULL,NULL,NULL),(57,'LPBPuwTR04210057','PENJUALAN P3',534637456,1478038238.6111,'2021-04-28 03:27:42','2021-04-28 03:28:31',4500,52674734634,NULL,NULL,NULL,NULL,3,NULL,NULL,NULL,NULL,NULL,'2026','2026','2025',NULL,NULL,NULL),(58,'LPBPawTR04210058','NTEST',3492789,145532.875,'2021-04-28 08:43:25','2021-04-28 08:43:25',NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,NULL,NULL,NULL,NULL,'2021','2021','2011',NULL,NULL,NULL);
/*!40000 ALTER TABLE `laporan_bagian_penjualan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-30 11:54:02
