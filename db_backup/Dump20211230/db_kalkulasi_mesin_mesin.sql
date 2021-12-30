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
-- Table structure for table `mesin`
--

DROP TABLE IF EXISTS `mesin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mesin`
--

LOCK TABLES `mesin` WRITE;
/*!40000 ALTER TABLE `mesin` DISABLE KEYS */;
INSERT INTO `mesin` VALUES (141,'CD 4','MACH 4',NULL,380,1230,'2021-04-30 09:49:41','2021-04-30 09:49:41',2,NULL,2,3,1,1,NULL,1500,1600,NULL,2,5340,2),(142,'CD 6','Mesin KOP',NULL,1111,1212,'2021-09-06 02:15:25','2021-09-06 02:15:25',2,NULL,2,3,1,1,NULL,NULL,NULL,NULL,1,10000,1),(143,'MESIN CETAK 6 WARNA',NULL,NULL,1230,1230,'2021-09-07 01:18:04','2021-09-07 01:18:04',2,NULL,2,3,1,1,NULL,1500,1600,NULL,2,1230,42);
/*!40000 ALTER TABLE `mesin` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-30 11:54:12
