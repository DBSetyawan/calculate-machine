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
-- Table structure for table `lb8_kategori_mesin`
--

DROP TABLE IF EXISTS `lb8_kategori_mesin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lb8_kategori_mesin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama_kategori_mesin` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `changed_by` timestamp NULL DEFAULT NULL,
  `company_parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lb8_kategori_mesin`
--

LOCK TABLES `lb8_kategori_mesin` WRITE;
/*!40000 ALTER TABLE `lb8_kategori_mesin` DISABLE KEYS */;
INSERT INTO `lb8_kategori_mesin` VALUES (1,'Mesin Rajang KOP','2021-02-24 04:57:00','2021-02-24 07:02:53',NULL,3),(2,'Mesin Cetak 6 Warna','2021-02-24 04:58:00','2021-02-24 07:22:09',NULL,3),(3,'Mesin Cetak 1 Warna','2021-02-24 04:58:00','2021-02-24 07:21:25',NULL,3),(4,'Mesin Coating','2021-02-24 04:58:00','2021-02-24 07:20:45',NULL,3),(5,'Mesin Hotstamp KOP','2021-02-24 04:59:00','2021-02-24 07:03:07',NULL,3),(6,'Mesin Plong KOP','2021-02-24 05:26:00','2021-02-24 07:03:00',NULL,3),(7,'Mesin Sortir KOP','2021-02-24 05:27:00','2021-02-24 07:02:30',NULL,3),(8,'Mesin Gluing KOP','2021-02-24 05:27:00','2021-02-24 07:03:24',NULL,3),(9,'Mesin Window Patching KOP','2021-02-24 06:33:00','2021-02-24 07:02:22',NULL,3),(10,'Mesin Rajang Berbek','2021-02-24 06:33:00','2021-02-24 07:05:03',NULL,2),(11,'Mesin Cetak 2 Warna SM 72 Berbek','2021-02-24 06:34:00','2021-02-24 07:13:46',NULL,2),(12,'Mesin Cetak 1 Warna SORM Berbek','2021-02-24 06:34:00','2021-02-24 07:15:08',NULL,2),(13,'Mesin Cetak 1 Warna GTO 1 Berbek','2021-02-24 06:35:00','2021-02-24 07:15:34',NULL,2),(14,'Mesin Cetak 2 Warna GTO 2 Berbek','2021-02-24 06:35:00','2021-02-24 07:14:28',NULL,2),(15,'Mesin Hotprint Berbek','2021-02-24 06:37:00','2021-02-24 07:07:29',NULL,2),(16,'Mesin Plong Berbek','2021-02-24 06:37:00','2021-02-24 07:23:50',NULL,2),(17,'Mesin Coating Berbek','2021-02-24 06:38:00','2021-02-24 07:09:22',NULL,2),(18,'Mesin Cetak Digital Berbek','2021-02-24 06:38:00','2021-02-24 07:10:43',NULL,2),(19,'Mesin Rajang Trosobo','2021-02-24 06:38:00','2021-02-24 07:04:01',NULL,1),(20,'Mesin Cetak 6 Warna Trosobo','2021-02-24 06:39:00','2021-02-24 07:10:59',NULL,1),(21,'Mesin Cetak 3 Warna Trosobo','2021-02-24 06:39:00','2021-02-24 07:12:42',NULL,1),(22,'Mesin Cetak 1 Warna Trosobo','2021-02-24 06:39:00','2021-02-24 07:14:44',NULL,1),(24,'Mesin Coating Trosobo','2021-02-24 06:40:00','2021-02-24 07:08:40',NULL,1),(25,'Mesin Cetak 4 Warna Trosobo','2021-02-24 06:40:00','2021-02-24 07:12:26',NULL,1),(26,'Mesin Plong Trosobo','2021-02-24 06:41:00','2021-02-24 07:05:41',NULL,1),(27,'Mesin Hotprint Trosobo','2021-02-24 06:42:00','2021-02-24 07:07:11',NULL,1),(28,'Mesin Laminating Trosobo','2021-02-24 06:42:00','2021-02-24 07:06:29',NULL,1),(29,'Mesin Gluing Trosobo','2021-02-24 06:42:00','2021-02-24 07:08:14',NULL,1);
/*!40000 ALTER TABLE `lb8_kategori_mesin` ENABLE KEYS */;
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
