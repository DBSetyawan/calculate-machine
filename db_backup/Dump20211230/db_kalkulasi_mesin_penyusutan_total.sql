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
-- Table structure for table `penyusutan_total`
--

DROP TABLE IF EXISTS `penyusutan_total`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `penyusutan_total`
--

LOCK TABLES `penyusutan_total` WRITE;
/*!40000 ALTER TABLE `penyusutan_total` DISABLE KEYS */;
INSERT INTO `penyusutan_total` VALUES (45,NULL,'Admin',NULL,'2021-03-29 05:32:29',NULL,286458,286458,'penyusutan.penyusutan_perbulan',57,2,3,NULL),(46,NULL,'Admin',NULL,'2021-03-29 05:33:28',NULL,278327,286458,'penyusutan.penyusutan_perbulan',57,2,3,NULL),(47,NULL,'Admin',NULL,'2021-03-29 05:33:28',NULL,34234111,35234234,'penyusutan.purchaseorder_value',57,2,3,NULL),(48,NULL,NULL,'2021-03-31 02:01:38','2021-03-31 02:01:38',NULL,89990392918,89990392918,'penyusutan.added.event',64,3,3,'Admin'),(49,NULL,NULL,'2021-03-31 04:54:40','2021-03-31 04:54:40',NULL,285750,285750,'penyusutan.added.event',93,4,3,'Admin'),(50,NULL,NULL,'2021-03-31 04:57:05','2021-03-31 04:57:05',NULL,27500,27500,'penyusutan.added.event',94,1,3,'Admin'),(51,NULL,NULL,'2021-04-01 03:54:17','2021-04-01 03:54:17',NULL,640625,640625,'penyusutan.added.event',95,2,3,'Admin'),(52,NULL,NULL,'2021-04-01 04:00:54','2021-04-01 04:00:54',NULL,89996571452,89996571452,'penyusutan.added.event',95,2,3,'Admin'),(53,NULL,NULL,'2021-04-01 06:24:21','2021-04-01 06:24:21',NULL,721304478105,721304478105,'penyusutan.added.event',58,2,3,'Admin'),(54,NULL,'Admin',NULL,'2021-04-01 06:25:15',NULL,631314,631313131314,'penyusutan.penyusutan_perbulan',58,2,3,NULL),(55,NULL,'Admin',NULL,'2021-04-01 06:25:15',NULL,121212121,121212121212120,'penyusutan.purchaseorder_value',58,2,3,NULL),(56,NULL,NULL,'2021-04-04 12:49:22','2021-04-04 12:49:22',NULL,89999822264,89999822264,'penyusutan.added.event',48,2,3,'Admin'),(57,NULL,'Admin',NULL,'2021-04-05 02:04:38',NULL,47,48,'penyusutan.code_mesin',47,2,3,NULL),(58,NULL,'Admin',NULL,'2021-04-05 02:04:38',NULL,7844159,7844159,'penyusutan.penyusutan_perbulan',47,2,3,NULL),(59,NULL,NULL,'2021-04-05 02:10:29','2021-04-05 02:10:29',NULL,32707500,32707500,'penyusutan.added.event',96,1,3,'Admin'),(60,NULL,NULL,'2021-04-05 02:19:41','2021-04-05 02:19:41',NULL,69410750,69410750,'penyusutan.added.event',97,1,3,'Admin'),(61,NULL,'Admin',NULL,'2021-04-05 02:21:36',NULL,20,97,'penyusutan.code_mesin',20,1,3,NULL),(62,NULL,NULL,'2021-04-05 02:28:45','2021-04-05 02:28:45',NULL,777417,777417,'penyusutan.added.event',98,2,3,'Admin'),(63,NULL,NULL,'2021-04-05 06:27:43','2021-04-05 06:27:43',NULL,90063882180,90063882180,'penyusutan.added.event',46,1,3,'Admin'),(64,NULL,NULL,'2021-04-05 06:35:24','2021-04-05 06:35:24',NULL,90137542955,90137542955,'penyusutan.added.event',9,2,3,'Admin'),(65,NULL,'Admin',NULL,'2021-04-06 16:54:59',NULL,427693,427693,'penyusutan.penyusutan_perbulan',89,1,3,NULL),(66,NULL,'Admin',NULL,'2021-04-06 18:06:44',NULL,7,89,'penyusutan.code_mesin',7,1,3,NULL),(67,NULL,'Admin',NULL,'2021-04-06 18:06:44',NULL,427693,427693,'penyusutan.penyusutan_perbulan',7,1,3,NULL),(68,NULL,'Admin',NULL,'2021-04-06 18:11:37',NULL,89,7,'penyusutan.code_mesin',89,1,3,NULL),(69,NULL,'Admin',NULL,'2021-04-06 18:11:37',NULL,427693,427693,'penyusutan.penyusutan_perbulan',89,1,3,NULL),(70,NULL,NULL,'2021-04-07 03:03:39','2021-04-07 03:03:39',NULL,89524659039,89524659039,'penyusutan.added.event',61,1,3,'Admin'),(71,NULL,NULL,'2021-04-07 03:05:03','2021-04-07 03:05:03',NULL,89524944372,89524944372,'penyusutan.added.event',56,2,3,'Admin'),(72,NULL,NULL,'2021-04-07 03:29:24','2021-04-07 03:29:24',NULL,7790192,7790192,'penyusutan.added.event',99,1,3,'Admin'),(73,NULL,NULL,'2021-04-07 03:31:51','2021-04-07 03:31:51',NULL,6994342,6994342,'penyusutan.added.event',100,2,3,'Admin'),(74,NULL,NULL,'2021-04-09 03:41:18','2021-04-09 03:41:18',NULL,25000000,25000000,'penyusutan.added.event',101,2,3,'Admin'),(75,NULL,NULL,'2021-04-12 06:23:23','2021-04-12 06:23:23',NULL,329100,329100,'penyusutan.added.event',102,2,3,'Admin'),(76,NULL,NULL,'2021-04-12 08:55:38','2021-04-12 08:55:38',NULL,28578246,28578246,'penyusutan.added.event',104,1,1,'Admin'),(77,NULL,NULL,'2021-04-12 09:00:27','2021-04-12 09:00:27',NULL,369235,369235,'penyusutan.added.event',105,4,3,'Admin'),(78,NULL,NULL,'2021-04-12 09:10:06','2021-04-12 09:10:06',NULL,192464,192464,'penyusutan.added.event',106,2,3,'Admin'),(79,NULL,NULL,'2021-04-12 09:13:23','2021-04-12 09:13:23',NULL,43620,43620,'penyusutan.added.event',107,4,3,'Admin'),(80,NULL,NULL,'2021-04-12 09:49:09','2021-04-12 09:49:09',NULL,77858208,77858208,'penyusutan.added.event',108,2,3,'Admin'),(81,NULL,NULL,'2021-04-12 09:54:21','2021-04-12 09:54:21',NULL,357786,357786,'penyusutan.added.event',109,1,3,'Admin'),(82,NULL,NULL,'2021-04-13 01:38:37','2021-04-13 01:38:37',NULL,20760326,20760326,'penyusutan.added.event',110,2,3,'Admin'),(83,NULL,NULL,'2021-04-13 06:31:32','2021-04-13 06:31:32',NULL,89639637567,89639637567,'penyusutan.added.event',107,4,3,'Admin'),(84,NULL,NULL,'2021-04-14 02:35:48','2021-04-14 02:35:48',NULL,245769517,245769517,'penyusutan.added.event',111,3,3,'EDP Administrator'),(85,NULL,NULL,'2021-04-14 02:42:45','2021-04-14 02:42:45',NULL,56327643,56327643,'penyusutan.added.event',112,3,3,'EDP Administrator'),(86,NULL,NULL,'2021-04-14 06:34:39','2021-04-14 06:34:39',NULL,246813440,246813440,'penyusutan.added.event',108,2,3,'Accounting'),(87,NULL,NULL,'2021-04-14 06:49:17','2021-04-14 06:49:17',NULL,249074520,249074520,'penyusutan.added.event',106,2,3,'Accounting'),(88,NULL,NULL,'2021-04-14 06:51:50','2021-04-14 06:51:50',NULL,250384284,250384284,'penyusutan.added.event',46,1,3,'Accounting'),(89,NULL,NULL,'2021-04-15 03:15:19','2021-04-15 03:15:19',NULL,11661654,11661654,'penyusutan.added.event',113,1,3,'EDP Administrator'),(90,NULL,NULL,'2021-04-15 03:17:09','2021-04-15 03:17:09',NULL,27457700,27457700,'penyusutan.added.event',114,2,3,'EDP Administrator'),(91,NULL,NULL,'2021-04-15 03:19:18','2021-04-15 03:19:18',NULL,329103,329103,'penyusutan.added.event',115,2,3,'EDP Administrator'),(92,NULL,NULL,'2021-04-15 08:32:53','2021-04-15 08:32:53',NULL,2852750,2852750,'penyusutan.added.event',116,3,3,'EDP Administrator'),(93,NULL,NULL,'2021-04-15 08:34:42','2021-04-15 08:34:42',NULL,7774500,7774500,'penyusutan.added.event',117,3,3,'EDP Administrator'),(94,NULL,NULL,'2021-04-15 08:46:06','2021-04-15 08:46:06',NULL,7774525,7774525,'penyusutan.added.event',118,3,3,'EDP Administrator'),(95,NULL,NULL,'2021-04-15 08:59:30','2021-04-15 08:59:30',NULL,1161540,1161540,'penyusutan.added.event',119,3,3,'EDP Administrator'),(96,NULL,NULL,'2021-04-16 02:14:43','2021-04-16 02:14:43',NULL,196246,196246,'penyusutan.added.event',120,1,3,'EDP Administrator'),(97,NULL,NULL,'2021-04-16 02:15:54','2021-04-16 02:15:54',NULL,3291078,3291078,'penyusutan.added.event',121,1,3,'EDP Administrator'),(98,NULL,NULL,'2021-04-16 02:28:57','2021-04-16 02:28:57',NULL,873235,873235,'penyusutan.added.event',122,2,3,'EDP Administrator'),(99,NULL,NULL,'2021-04-16 02:30:50','2021-04-16 02:30:50',NULL,79774,79774,'penyusutan.added.event',123,2,3,'EDP Administrator'),(100,NULL,NULL,'2021-04-16 03:00:21','2021-04-16 03:00:21',NULL,2745200,2745200,'penyusutan.added.event',124,5,3,'EDP Administrator'),(101,NULL,NULL,'2021-04-16 03:02:32','2021-04-16 03:02:32',NULL,2857833,2857833,'penyusutan.added.event',125,6,3,'EDP Administrator'),(102,NULL,NULL,'2021-04-16 03:03:54','2021-04-16 03:03:54',NULL,285334,285334,'penyusutan.added.event',126,6,3,'EDP Administrator'),(103,NULL,NULL,'2021-04-16 03:04:48','2021-04-16 03:04:48',NULL,357786,357786,'penyusutan.added.event',127,6,3,'EDP Administrator'),(104,NULL,NULL,'2021-04-16 03:06:09','2021-04-16 03:06:09',NULL,3270769875,3270769875,'penyusutan.added.event',128,6,3,'EDP Administrator'),(105,NULL,NULL,'2021-04-20 02:54:18','2021-04-20 02:54:18',NULL,328532517,328532517,'penyusutan.added.event',129,2,3,'EDP Administrator'),(106,NULL,NULL,'2021-04-20 03:34:26','2021-04-20 03:34:26',NULL,7791034,7791034,'penyusutan.added.event',130,1,3,'EDP Administrator'),(107,NULL,'EDP Administrator',NULL,'2021-04-21 01:11:05',NULL,113,114,'penyusutan.code_mesin',113,2,3,NULL),(108,NULL,'EDP Administrator',NULL,'2021-04-21 01:11:05',NULL,27457700,27457700,'penyusutan.penyusutan_perbulan',113,2,3,NULL),(109,NULL,'EDP Administrator',NULL,'2021-04-21 01:14:27',NULL,114,113,'penyusutan.code_mesin',114,2,3,NULL),(110,NULL,'EDP Administrator',NULL,'2021-04-21 01:14:27',NULL,27457700,27457700,'penyusutan.penyusutan_perbulan',114,2,3,NULL),(111,NULL,NULL,'2021-04-27 04:27:34','2021-04-27 04:27:34',NULL,2737441591,2737441591,'penyusutan.added.event',131,3,3,'EDP Administrator'),(112,NULL,NULL,'2021-04-27 07:35:44','2021-04-27 07:35:44',NULL,3270017,3270017,'penyusutan.added.event',132,2,3,'EDP Administrator'),(113,NULL,NULL,'2021-04-27 08:24:35','2021-04-27 08:24:35',NULL,161040936,161040936,'penyusutan.added.event',133,2,3,'EDP Administrator'),(114,NULL,NULL,'2021-04-28 03:07:55','2021-04-28 03:07:55',NULL,27432760,27432760,'penyusutan.added.event',134,2,3,'EDP Administrator'),(115,NULL,'EDP Administrator',NULL,'2021-04-28 03:45:56',NULL,1025,293627,'penyusutan.penyusutan_perbulan',133,2,3,NULL),(116,NULL,'EDP Administrator',NULL,'2021-04-28 03:45:56',NULL,12300,3523523,'penyusutan.purchaseorder_value',133,2,3,NULL),(117,NULL,NULL,'2021-04-28 08:14:50','2021-04-28 08:14:50',NULL,327444,327444,'penyusutan.added.event',135,4,3,'EDP Administrator'),(118,NULL,NULL,'2021-04-30 08:40:32','2021-04-30 08:40:32',NULL,78207736,78207736,'penyusutan.added.event',136,5,3,'EDP Administrator'),(119,NULL,NULL,'2021-04-30 08:48:20','2021-04-30 08:48:20',NULL,2494350,2494350,'penyusutan.added.event',137,1,3,'EDP Administrator'),(120,NULL,NULL,'2021-04-30 09:27:04','2021-04-30 09:27:04',NULL,4024870000,4024870000,'penyusutan.added.event',138,1,3,'EDP Administrator'),(121,NULL,NULL,'2021-04-30 09:38:34','2021-04-30 09:38:34',NULL,353325,353325,'penyusutan.added.event',139,2,3,'EDP Administrator'),(122,NULL,NULL,'2021-04-30 09:47:06','2021-04-30 09:47:06',NULL,0,0,'penyusutan.added.event',140,2,3,'EDP Administrator'),(123,NULL,NULL,'2021-04-30 09:49:41','2021-04-30 09:49:41',NULL,245769952,245769952,'penyusutan.added.event',141,2,3,'EDP Administrator'),(124,NULL,NULL,'2021-09-06 02:15:26','2021-09-06 02:15:26',NULL,41666667,41666667,'penyusutan.added.event',142,2,3,'admin edp'),(125,NULL,NULL,'2021-09-07 01:18:04','2021-09-07 01:18:04',NULL,1232216,1232216,'penyusutan.added.event',143,2,3,'admin edp');
/*!40000 ALTER TABLE `penyusutan_total` ENABLE KEYS */;
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
