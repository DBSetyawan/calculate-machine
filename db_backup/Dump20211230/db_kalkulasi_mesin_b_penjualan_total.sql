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
-- Table structure for table `b_penjualan_total`
--

DROP TABLE IF EXISTS `b_penjualan_total`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_penjualan_total`
--

LOCK TABLES `b_penjualan_total` WRITE;
/*!40000 ALTER TABLE `b_penjualan_total` DISABLE KEYS */;
INSERT INTO `b_penjualan_total` VALUES (44,NULL,NULL,NULL,'2021-04-28 03:27:42','2021-04-28 03:27:42',1490917207,1490917207,'laporan_bagian_penjualan.added.event',3,'EDP Administrator'),(45,NULL,NULL,'EDP Administrator',NULL,'2021-04-28 03:28:31',4500,463647345,'laporan_bagian_penjualan.tahun2',3,NULL),(46,NULL,NULL,'EDP Administrator',NULL,'2021-04-28 03:28:31',1478038239,0,'laporan_bagian_penjualan.biaya_perbulan_bag_penjualan',3,NULL),(47,NULL,NULL,NULL,'2021-04-28 08:43:25','2021-04-28 08:43:25',145533,145533,'laporan_bagian_penjualan.added.event',3,'EDP Administrator');
/*!40000 ALTER TABLE `b_penjualan_total` ENABLE KEYS */;
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
