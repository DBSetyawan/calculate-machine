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
-- Table structure for table `gaji_karyawan_logs`
--

DROP TABLE IF EXISTS `gaji_karyawan_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gaji_karyawan_logs`
--

LOCK TABLES `gaji_karyawan_logs` WRITE;
/*!40000 ALTER TABLE `gaji_karyawan_logs` DISABLE KEYS */;
INSERT INTO `gaji_karyawan_logs` VALUES (1,'0','0','0','0',NULL,'2021-03-31 07:46:43','2021-03-31 07:46:43'),(2,'gaji_karyawan.added.event','JK','JK','Admin',NULL,'2021-03-31 07:48:28','2021-03-31 07:48:28'),(3,'job_level.upah_terkecil','738278','231231',NULL,'Admin','2021-03-31 07:54:51','2021-03-31 07:54:51'),(4,'job_level.jabatan','JK','GHHH',NULL,'Admin','2021-03-31 07:55:53','2021-03-31 07:55:53'),(5,'job_level.LV','82','31',NULL,'Admin','2021-03-31 07:55:53','2021-03-31 07:55:53'),(6,'job_level.upah_terkecil','231231','31231',NULL,'Admin','2021-03-31 07:55:53','2021-03-31 07:55:53'),(7,'job_level.upah_tengah','87817387','512313',NULL,'Admin','2021-03-31 07:55:53','2021-03-31 07:55:53'),(8,'job_level.updah_atas','8718','51231',NULL,'Admin','2021-03-31 07:55:53','2021-03-31 07:55:53'),(9,'job_level.upah_tengah','4200479','4201000',NULL,'EDP Administrator','2021-04-28 03:14:32','2021-04-28 03:14:32');
/*!40000 ALTER TABLE `gaji_karyawan_logs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-30 11:54:09
