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
-- Table structure for table `kategori_bagian`
--

DROP TABLE IF EXISTS `kategori_bagian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kategori_bagian` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code_ctgry_bgn` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nama_bagian` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategori_bagian`
--

LOCK TABLES `kategori_bagian` WRITE;
/*!40000 ALTER TABLE `kategori_bagian` DISABLE KEYS */;
INSERT INTO `kategori_bagian` VALUES (1,'ctg-b-001','potong','2021-01-20 01:34:38','2021-01-20 01:34:38'),(2,'ctg-b-002','cetak','2021-01-20 01:34:58','2021-01-20 01:34:58'),(3,'ctg-b-003','hotprint','2021-01-20 01:35:14','2021-01-20 01:35:14'),(4,'ctg-b-004','plong','2021-01-20 01:35:22','2021-01-20 01:35:22'),(5,'ctg-b-005','sortir','2021-01-20 01:35:40','2021-01-20 01:35:40'),(6,'ctg-b-006','lem','2021-01-20 01:35:49','2021-01-20 01:35:49'),(7,'ctg-b-007','offset','2021-01-20 01:36:18','2021-01-20 01:36:18'),(8,'ctg-b-008','digital','2021-01-20 01:36:26','2021-01-20 01:36:26'),(9,'ctg-b-009','REPRO','2021-01-27 23:50:10','2021-01-27 23:50:10'),(10,'ctg-b-010','FINISHING','2021-01-28 00:12:24','2021-01-28 00:12:24'),(11,'ctg-b-011','MTC','2021-01-28 00:18:29','2021-01-28 00:18:29'),(12,'ctg-b-012','UMUM (Hanya Kary KOP)','2021-01-28 00:22:33','2021-01-28 00:22:33'),(13,'ctg-b-013','QC','2021-01-28 00:26:00','2021-01-28 00:27:02'),(14,'ctg-b-014','PREPRESS','2021-02-10 20:00:00','2021-04-13 09:13:25');
/*!40000 ALTER TABLE `kategori_bagian` ENABLE KEYS */;
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
