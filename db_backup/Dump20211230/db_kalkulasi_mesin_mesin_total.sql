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
-- Table structure for table `mesin_total`
--

DROP TABLE IF EXISTS `mesin_total`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=340 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mesin_total`
--

LOCK TABLES `mesin_total` WRITE;
/*!40000 ALTER TABLE `mesin_total` DISABLE KEYS */;
INSERT INTO `mesin_total` VALUES (326,'mesin.added.event','','first event',NULL,'EDP Administrator','2021-04-27 07:35:44','2021-04-27 07:35:44',3,2,132,0,0),(327,'mesin.added.event','','first event',NULL,'EDP Administrator','2021-04-27 08:24:35','2021-04-27 08:24:35',3,2,133,0,0),(328,'mesin.added.event','','first event',NULL,'EDP Administrator','2021-04-28 03:07:55','2021-04-28 03:07:55',3,1,134,0,0),(329,'mesin.added.event','','first event',NULL,'EDP Administrator','2021-04-28 08:14:50','2021-04-28 08:14:50',3,6,135,0,0),(330,'mesin.asumsi_id','1','5','EDP Administrator',NULL,'2021-04-28 09:06:20','2021-04-28 09:06:20',3,6,135,5,1),(331,'mesin.asumsi_id','5','1','EDP Administrator',NULL,'2021-04-28 17:51:24','2021-04-28 17:51:24',3,6,135,1,5),(332,'mesin.added.event','','first event',NULL,'EDP Administrator','2021-04-30 08:40:32','2021-04-30 08:40:32',3,1,136,0,0),(333,'mesin.added.event','','first event',NULL,'EDP Administrator','2021-04-30 08:48:20','2021-04-30 08:48:20',3,1,137,0,0),(334,'mesin.added.event','','first event',NULL,'EDP Administrator','2021-04-30 09:27:04','2021-04-30 09:27:04',3,2,138,0,0),(335,'mesin.added.event','','first event',NULL,'EDP Administrator','2021-04-30 09:38:34','2021-04-30 09:38:34',3,2,139,0,0),(336,'mesin.added.event','','first event',NULL,'EDP Administrator','2021-04-30 09:47:06','2021-04-30 09:47:06',3,2,140,0,0),(337,'mesin.added.event','','first event',NULL,'EDP Administrator','2021-04-30 09:49:41','2021-04-30 09:49:41',3,2,141,0,0),(338,'mesin.added.event','','first event',NULL,'admin edp','2021-09-06 02:15:25','2021-09-06 02:15:25',3,2,142,0,0),(339,'mesin.added.event','','first event',NULL,'admin edp','2021-09-07 01:18:04','2021-09-07 01:18:04',3,2,143,0,0);
/*!40000 ALTER TABLE `mesin_total` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-30 11:54:01
