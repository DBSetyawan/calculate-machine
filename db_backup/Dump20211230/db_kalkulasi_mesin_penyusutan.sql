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
-- Table structure for table `penyusutan`
--

DROP TABLE IF EXISTS `penyusutan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `penyusutan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code_penyusutan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_parent_id` int(11) DEFAULT NULL,
  `nama_sim` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `purchaseorder_value` double DEFAULT NULL,
  `umur` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `penyusutan_perbulan` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_bagian` int(11) DEFAULT NULL,
  `code_mesin` int(11) DEFAULT NULL,
  `peny_perbulan_view` int(11) DEFAULT NULL,
  `p_value_view` int(11) DEFAULT NULL,
  `ended_at` timestamp NULL DEFAULT NULL,
  `view_transaction_ended` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `penyusutan`
--

LOCK TABLES `penyusutan` WRITE;
/*!40000 ALTER TABLE `penyusutan` DISABLE KEYS */;
INSERT INTO `penyusutan` VALUES (201,'PYTUZTR0421001',3,'CD 4',2949239420,'12',245769951.66667,'2021-04-30 09:49:41','2021-04-30 09:49:41',2,141,NULL,NULL,NULL,NULL),(202,'PYT9HTR092100203',3,'Mesin Cetak CD6',500000000,'12',41666666.666667,'2021-09-06 02:15:26','2021-09-06 02:16:35',2,142,NULL,NULL,NULL,NULL),(203,'PYTngTR092100203',3,'P1-test',23412100,'19',1232215.7894737,'2021-09-07 01:18:04','2021-09-07 01:18:04',2,143,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `penyusutan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-30 11:54:00
