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
-- Table structure for table `labor`
--

DROP TABLE IF EXISTS `labor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=785 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `labor`
--

LOCK TABLES `labor` WRITE;
/*!40000 ALTER TABLE `labor` DISABLE KEYS */;
INSERT INTO `labor` VALUES (783,3,141,2,1,2,3,1,17011939.95,28983305.1,39694526.55,0,85689771.6,'2021-04-30 09:50:30','2021-04-30 09:50:30',3,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,16),(784,3,142,2,1,1,1,1,17011939.95,14491652.55,13231508.85,0,44735101.35,'2021-09-06 02:20:43','2021-09-06 02:20:43',3,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,16);
/*!40000 ALTER TABLE `labor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-30 11:54:05
